Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA18B5669AF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467081131EC;
	Tue,  5 Jul 2022 11:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7508510E021
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 10:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657018651; x=1688554651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0T1aY2HM491B0t9AxDUPxSRT15VpjlENe25r0NOfaT0=;
 b=dwcLz4qBiUTFCQhimCHcxbct2wSw8gIjvkD0TNmA+7EcgpTcTYRjii2s
 38oVC2vPfIvVdkye4jGqNy6PpVFk/et+bzldSxCACswuLlrteV+o+doUp
 te1Yr/Ck/53s9B8uinVO77bby3cOuxkIBU1sBUeTvEJj6sRHi0QbvK4bG
 ERG63QIWnjLybZZWP6GIHXhD9wSfADtsMRWApYu78bEC5LUuBHdOQtRNk
 FTdat8mjZThWmNWXmiuboajq4A1gRBgckATGeTbNqvHedQKVoAr4QQyjN
 zDb1zmcSgb1Q42BsBhWeX5BMDmqdtdbFNkNc7slUqTlusdQ3srFTWbD/y w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308861250"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308861250"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:31 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="650076202"
Received: from mtyszka-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.16.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:29 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 12:57:16 +0200
Message-Id: <cover.1656911806.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Apply waitboosting before fence
 wait
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

Test-with: 20220705103551.3720180-1-karolina.drobnik@intel.com

Chris Wilson (3):
  drm/i915/gem: Look for waitboosting across the whole object prior to
    individual waits
  drm/i915: Bump GT idling delay to 2 jiffies
  drm/i915/gt: Only kick the signal worker if there's been an update

 drivers/gpu/drm/i915/gem/i915_gem_wait.c    | 35 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c |  3 +-
 drivers/gpu/drm/i915/i915_active.c          |  2 +-
 3 files changed, 38 insertions(+), 2 deletions(-)

--
2.25.1
