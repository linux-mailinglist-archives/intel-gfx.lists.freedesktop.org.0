Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB88704F70
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 15:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A4810E0A6;
	Tue, 16 May 2023 13:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D6F10E1F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 13:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684244229; x=1715780229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uz6YIaNyB+fYCh+lUUEW6P5dck2NxSSuWA4OPb4+s4Y=;
 b=f4Q4hJ9zRulEQUav59gCSAuHHFGs1aNrrWFxThIsiey/5N2wYiys6RRW
 YCnzdcMuOfv2vpIECZEf2nY5m6mLtIUDeAL7oPjvR3A1j5HOVE3yK2Mjc
 R9CIq0nxJP9kacRPkg0sUijzrSguxTWGs/QmGKmxGc8eaoVrS+GT0FLxk
 JIYb0yXZvARHFdggOwSnVCLebHAL73IBcboGc3CVN7/Kgm6navMi42I7T
 lxOnJIajHdMrPgeq4Sa0Jcv/QgFDXtvfKWRN/O+ePBqoz0aN5GVRldCIW
 9HCsvd1TiH5kx5yqW14fK7LN5hNS4XSFs3Bf9HVEyvkyCibBTr8FW8suB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="350317303"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="350317303"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678848104"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="678848104"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:37:07 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 15:36:45 +0200
Message-Id: <20230516133646.3708898-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230516133646.3708898-1-andrzej.hajda@intel.com>
References: <20230516133646.3708898-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 2/3] drm/i915/gt: do not enable render
 and media power-gating on RPL-S
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple CI tests fails with forcewake timeouts. Disabling power
gating for render and media solves the issue.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 0819576ffeb5df..c405b209e47922 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -126,6 +126,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
+	/* Testing */
+	else if (IS_ADLS_RPLS(gt->i915))
+		pg_enable = 0;
 	else
 		pg_enable =
 			GEN9_RENDER_PG_ENABLE |
-- 
2.34.1

