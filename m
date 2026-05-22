Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePXDKFhgEGpAWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788A25B59C5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC2310F719;
	Fri, 22 May 2026 13:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4RWHRHp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E620E10F77B;
 Fri, 22 May 2026 13:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779458131; x=1810994131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TeYRv6//ki3XtJSi3FCdBTQ9zri9hdzTziBNEM2uFRc=;
 b=n4RWHRHpMHBbruDWR1fUplOJwUHJkc+jUqLSYi4Fq7ZRtEy2YWFYrty3
 BKMYma2o4jcRgSKd0s0WtrJyt4FtSRlcGnMk9Ekuranfw1cLkBd4PunXN
 C+WbbGPNsGga0zNRipb8cULI7r0D4yOkhkad76r37YDyDeeHUhVCO5+hX
 AgE8xPvvNYV3HEPsWqZSUn10vS/yfHoO/gqIBV2uar0E94feL3nFSGfua
 ADD/9kiPTezRESOKJCfoaxX0WqSNn/tAO+ubsXHUYn4mMs8Jjq/FqWome
 d3E3AirIFdM2reOh6oOq30SUasun8SDLpwTapF7zHJgqSEpApIJ1PH0C9 A==;
X-CSE-ConnectionGUID: hCviZGcJSJOamnLLBYAxjQ==
X-CSE-MsgGUID: Fmn3jBP+Soi18uPJnDmUVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="97809514"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="97809514"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:55:31 -0700
X-CSE-ConnectionGUID: VYbRZRaUTdOn4VdXEug3Vw==
X-CSE-MsgGUID: WrsDxV0PR46+0rospii1bg==
X-ExtLoop1: 1
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa003.fm.intel.com with ESMTP; 22 May 2026 06:55:29 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 2/2] drm/managed: fix drmm_add_action() kernel-doc
Date: Fri, 22 May 2026 15:55:20 +0200
Message-ID: <20260522135520.1862848-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522135520.1862848-1-michal.grzelak@intel.com>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,gabe.freedesktop.org:server fail];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 788A25B59C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Kernel-doc of drmm_add_action() references @releases which is not
on argument list. Swap '@' between 'releases' and 'action' words to fix
the documentation.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 include/drm/drm_managed.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 72bfac002c06..72d0d68be226 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
  * @action: function which should be called when @dev is released
  * @data: opaque pointer, passed to @action
  *
- * This function adds the @release action with optional parameter @data to the
+ * This function adds the release @action with optional parameter @data to the
  * list of cleanup actions for @dev. The cleanup actions will be run in reverse
  * order in the final drm_dev_put() call for @dev.
  */
-- 
2.45.2

