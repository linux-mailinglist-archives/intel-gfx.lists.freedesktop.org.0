Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNLtDr8R2Wl+lggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB43D8ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2E910E975;
	Fri, 10 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+F5ha+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1C610E975;
 Fri, 10 Apr 2026 15:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833533; x=1807369533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C9ugfJgZzkyYn3GGXylG6HzE3Ten7yseYbr7zpHPAtc=;
 b=i+F5ha+oWh3JwmveH1mVPqN/d6yH+2ivIDHC6h8g/RZqBNGOB4xmQDl8
 5F+QVIOjEANuvbY8pVql/8HmS5cwMR6xXPUHqvYZo0OrVOLmfz6YIMPaa
 gU2GWHTp3DZTxFZOVqSepHsmOlfIoX2qehNd1r4Rh/OIAbamY3MENFNct
 RlppVK2AjNorIppcETTDoSXpDtRK7Mw1GYVv9Tya/xypBRmIvsNjkNQqD
 evBAKGXzuWv0KXrjpfKdyG5r6jFz4jrAICgm1P4fV8moKp+QU4L51omNY
 T7soydi5+bZ+QVr2M+/GRUxvu+UxASxxZ/adpQnFPT15YUIkWomrdOu6W A==;
X-CSE-ConnectionGUID: JUQbpua9QuK/Ad6d7dFPcw==
X-CSE-MsgGUID: 0e5AJfi9RIeomYZGgUxHzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76743753"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76743753"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:23 -0700
X-CSE-ConnectionGUID: 0+T0sGk4SmWfM9Dc1CpzZg==
X-CSE-MsgGUID: iB32H/l8SEeeFhumQk4WZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224802725"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/10] drm/i915: Reject X/Y tiled BIOS FB if we don't have
 fenced regions
Date: Fri, 10 Apr 2026 18:04:47 +0300
Message-ID: <20260410150449.9699-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: E1BB43D8ED9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The CPU always needs linear view into the BIOS FB, and for X/Y tiled
buffers that is achieved by the use of a fenced region. If the
underlying driver doesn't support fenced regions then we can't keep
the X/Y tiled BIOS FB. i915 has fenced regions, xe does not.

Probably not a big deal since I don't think we've seen tiled BIOS
FBs outside of some MacBooks. See eg. commit d9a515867bdb
("drm/i915/gen9+: Fix initial readout for Y tiled framebuffers").

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 5a5adf738d4a..55b6cdded126 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -79,9 +79,13 @@ intel_alloc_initial_plane_obj(struct intel_display *display,
 
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
+		break;
 	case I915_FORMAT_MOD_X_TILED:
 	case I915_FORMAT_MOD_Y_TILED:
-		break;
+		/* fenced region needed for linear CPU access to tiled FB */
+		if (intel_parent_has_fenced_regions(display))
+			break;
+		fallthrough;
 	default:
 		drm_dbg_kms(display->drm, "Unsupported modifier for initial FB: 0x%llx\n",
 			    fb->modifier);
-- 
2.52.0

