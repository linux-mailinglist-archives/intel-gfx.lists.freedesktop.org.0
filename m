Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74AA63E6CC
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54CF10E555;
	Thu,  1 Dec 2022 00:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741D910E520
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 00:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856365; x=1701392365;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bJjwgmj9sxmNc2GRmG2hJ1SEgMPULWEMbp9pgEqoPNU=;
 b=BiFDoqmVVlx7tU1B+7NH8Mn3fqYAgLtfLBBFu+GdnzC3CJ6IxGzQTImN
 fv3BldhtEgu0aHN5v8daWZu2Hwel4Eq8cSk7E84Y8aSRyVjcrKtKphVMk
 2GWGJVt36waGvYtWih6Ww0HFbXrOfA/xbsYQZip8JOXeygvPzHhv97F7t
 pGNevyodiaXFlLdpZP1SkTISIcFcz+1aOpgsVQVeQbQtz6k2NX2KmNeUL
 c+2aUQZjuPQZl/IWnAZDxd3RjG2qwVhCrbxWu2zWWxOK7ZQchuikdym0i
 nrqVbKEYn1bPRzbP4OmJPPPYjro64uqQVgVc4pVtT1+DmXkBzVVVAPZb1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313180792"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313180792"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="769035748"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="769035748"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:13 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 16:59:04 -0800
Message-Id: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/mtl: Add OAG 32 bit format
 support for MTL
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

Enable OA for MTL by adding 32-bit OA format support and relevant fixes.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (4):
  drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs
  drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
  drm/i915/mtl: Update OA mux whitelist for MTL
  drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL

 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
 drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
 2 files changed, 38 insertions(+), 17 deletions(-)

-- 
2.36.1

