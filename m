Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJn7OCZEoGmrhAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 14:01:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCB31A603F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 14:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F02D10E10B;
	Thu, 26 Feb 2026 13:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DPnRiYGt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3ED510E043;
 Thu, 26 Feb 2026 13:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772110878; x=1803646878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bCUy62H765lLG+ZCPWRziW8hDXRlEfu0fwIKbXOZ2Uk=;
 b=DPnRiYGtTQnTvNxUmuDQJF421QjvP/M+t02sWIz70GUSEi19hpe5xFID
 960loxgeqn8C2Z/cob6AN8BHlpG2fF3oGT+m2FLvYGpP+pCx8MHKanHwT
 tZTlhUtypGdk6NJhrFCpYfkL45AUvW54HHERs/1NCHUf+nmTpc4wdjR3G
 iiaBVTRBmc0fxyTWIWz1HlhFRcM4JJPKeOVTVvZRC2bR+eL7b8qdhlbml
 BfnGl03s23o0GDdrpAfM1Uc4ciDOaRY0yjLr73w7igJ4QrX/jmNEhIYPY
 QUB9kJ370Z+ztqzEM2U9rVF3b4IrREi/QiFqPafAvoayR+d4byJWemgIq g==;
X-CSE-ConnectionGUID: HA/qGjIeQF2bFfM7uRKZKQ==
X-CSE-MsgGUID: 7tyviFwPSn2ODXkWc5dzXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73082131"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73082131"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:01:17 -0800
X-CSE-ConnectionGUID: mZWWK+UmQ+uqCY2q4MiVvA==
X-CSE-MsgGUID: eo+C5zlfQau9Sm/ZkBNU5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="215676365"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:01:15 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 17/19] drm/i915/overlay: Don't use fetch_and_zero() in
 display code
Date: Thu, 26 Feb 2026 15:01:13 +0200
Message-ID: <20260226130113.16714-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-18-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-18-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[jani.nikula.intel.com:query timed out,ville.syrjala.linux.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: ADCB31A603F
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't generally want fetch_and_zero() on the display side, so
stop using it in the display side intel_overlay_cleanup().
Fortunately we don't really have anything to do here apart from
freeing the data. And we'll keep on clearing the pointer, just
in case something somewhere cares about it.

Note that once i915_overlay_cleanup() is converted to the parent
interface we can't call it unconditionally (as xe won't have it).
So we need to keep the early bailout for overlay==NULL.

v2: Adjust the commit message since we do apparently
    have fetch_and_zero() in display code as well (Jani)
v3: Skip i915_overlay_cleanup() if the overlay wasn't initialized

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 10a235ce608e..37c60c08dd56 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1554,13 +1554,11 @@ static void i915_overlay_cleanup(struct drm_device *drm)
 
 void intel_overlay_cleanup(struct intel_display *display)
 {
-	struct intel_overlay *overlay;
-
-	overlay = fetch_and_zero(&display->overlay);
-	if (!overlay)
+	if (!display->overlay)
 		return;
 
 	i915_overlay_cleanup(display->drm);
 
-	kfree(overlay);
+	kfree(display->overlay);
+	display->overlay = NULL;
 }
-- 
2.52.0

