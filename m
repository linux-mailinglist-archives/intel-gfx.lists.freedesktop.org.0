Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIacLmQqD2q3HQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 17:53:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 929B45A8B25
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 17:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46AF10F348;
	Thu, 21 May 2026 15:53:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQyoZS+0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47C710E51C;
 Thu, 21 May 2026 15:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779378784; x=1810914784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yHRhR2TJOChw8083q4zSkIhMewJbIxlu9qd9ztRGQuk=;
 b=hQyoZS+0URxaztUkoCvujhLVbqrowJSrqdMEpDeg9/hgdFlkMESw9cCZ
 6QASK9cNn2eeogywkfSig0PTrFQPy/xxlbblLUUPY5YAGPBmloNOBY5Lb
 knIfNTuQE3OB49JWUPWE3ZqanRJ7Jtm2OV72BTcabSWpBMRzZdytbWqNh
 pvycQCYEnAvW+H0skWDFK+tWhChklPz2GNEpryFmJfexZ7ZjNS/GL1QU/
 bMcfnIe6d0BOBOyrLGe3jfqUpoPm4oYCxKYyxo9sRaoiiNdcjjU9C+Qra
 Z/7j4mETMzRRBA+Kgc2iq42v1dRISb7qSUrAsCSQqFTHPOlSGcgKqGRcl w==;
X-CSE-ConnectionGUID: pkDlrkjDS1mMVMePlQ0t8A==
X-CSE-MsgGUID: c8Y7LaJWRcu2QZXxnfhq7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80200369"
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="80200369"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 08:53:04 -0700
X-CSE-ConnectionGUID: G1SDnTi6RoKTtD8J3ueKnw==
X-CSE-MsgGUID: v8/TtyGbRAqP8f4tfbXdbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="244837737"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP; 21 May 2026 08:53:01 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 2/2] drm/managed: fix drmm_add_mod_or_reset() kernel-doc
Date: Thu, 21 May 2026 17:52:31 +0200
Message-ID: <20260521155231.1821935-3-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260521155231.1821935-1-michal.grzelak@intel.com>
References: <20260521155231.1821935-1-michal.grzelak@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 929B45A8B25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Kernel-doc of drmm_add_mode_or_reset() references @releases which is not
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

