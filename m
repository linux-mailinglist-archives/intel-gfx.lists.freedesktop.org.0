Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8937556BB93
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5178010E5C2;
	Fri,  8 Jul 2022 14:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D89B10E1DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290023; x=1688826023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PVumLgavp4r0b6KF64z2BjkXTbv1xkECw2SZXUJkj18=;
 b=FDUfWevcvCOMav0JIyjEtAE94XkySGZFGpzlW1conGl/LnUfRmjBDBi2
 pr1btFjvNeGJkF2qMQGd7Xj+nAxzewvFnO9VO47cAgctgz+2wB6fnb8nv
 Rqh0QHPovYapLvdCHlf89Q/KaeiPkzvVBGgAWtZq4LEWRXkXL+53xkiJg
 9Jt7I4NN/pMLyQ1HTSs7N5lwnWgrLk2qhNZC/nKxTzFi60SxlWQR91TK7
 N5k7ivpnagH25LY1rNMqQMBvcvxRairQuuPfHjfP6CREPfKo5kzbtWeR1
 FcF4wcRaRx1Yj5+UoTQiiAVa+mSOGa04OYtf5XF2OqqnHFY03+I7Uv4jx w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267321182"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267321182"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="621232056"
Received: from dgrynia-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.5.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:17 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 16:20:10 +0200
Message-Id: <cover.1657289332.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915: Apply waitboosting before
 fence wait
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Waitboost is a heuristic that detects latency sensitive workloads waiting for
the results from previous execution. The wait can be seen as GPU
under-utilisation by RPS, Render Power State management, which might lower the
GPU frequency to save power. Limiting the frequency means more waiting for
results, which is undesirable for submissions with tight time constraints.
To circumvent this, with waitboost we iteratively check the list of fences
during gem_wait to see if any of them is stalled waiting for GPU. If such is
found, and the request hasn't yet started its execution, we temporarily bump up
the GPU frequency, so we get the required results as soon as possible.

Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround") changes
the fences order and how they are iterated. Under this new scheme, we would wait
on each fence that starts executing, rendering them not suitable for waitboost.

To avoid situation like this, inspect the entire list of fences dma-resv
earlier, before gem_wait, instead of sequentially waiting for each of them,
applying the boost when needed.

v2:
  - Fixed a style issue in i915_gem_object_boost

Chris Wilson (3):
  drm/i915/gem: Look for waitboosting across the whole object prior to
    individual waits
  drm/i915: Bump GT idling delay to 2 jiffies
  drm/i915/gt: Only kick the signal worker if there's been an update

 drivers/gpu/drm/i915/gem/i915_gem_wait.c    | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c |  3 +-
 drivers/gpu/drm/i915/i915_active.c          |  2 +-
 3 files changed, 37 insertions(+), 2 deletions(-)

--
2.25.1
