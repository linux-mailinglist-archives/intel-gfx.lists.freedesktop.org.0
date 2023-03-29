Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8556CF46C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 22:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE5910EC4B;
	Wed, 29 Mar 2023 20:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F3210EC4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 20:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680121530; x=1711657530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F6V/YyXSatup6mrRhU7TjvIlS2UOJ8+0/MaOLMtveUI=;
 b=IZ2DKAxeO/gmD2nlJ2Sa8L5zqfagwtQEkIbbGXKmYAoI2kcSioRoRkCO
 YYyMyXHs7tV/PKt8cq38c5K2EZWfJQSuI8q5Rs+RLoS3HFhlgJ9i1+hS/
 HKNTnJzQjbTree4EO+uNhi3Nt98cFHsB6c8RRr89VfWEPqMfx+quezmRg
 qeWDnfDu7z7eIWXVU7GR4CtB1YdbeAuiOAGD7We1gzvqwyIwImN8KxGeW
 z66bUKNzEqOpxbjx9C6BjF0AZTqvNilr6g88vhqiWgQETiL0A9diGSD+f
 knrR4n4wBs5veauZIwMHS3+/kDbUW9QUcLIta0dm3xZHiY9EGavcJkiW9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="405946053"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="405946053"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748907166"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748907166"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:28 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:24:49 -0300
Message-Id: <20230329202451.98364-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add MTL Wa_14017066071,
 Wa_14017654203 and Wa_22015279794
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some GT workarounds for MTL. Note that Wa_14017066071 and Wa_14017654203
require the same implementation and have the same platform and stepping bounds,
so there is a single patch for them.

Radhakrishna Sripada (2):
  drm/i915/mtl: Add workarounds Wa_14017066071 and Wa_14017654203
  drm/i915/mtl: Add Wa_22015279794

 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  7 +++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 17 +++++++++++++++--
 2 files changed, 22 insertions(+), 2 deletions(-)

-- 
2.40.0

