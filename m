Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iG3rAGXW1GnuxwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:03:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAB43AC7A8
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A738510E3AE;
	Tue,  7 Apr 2026 10:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CqAG6si0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425FD10E3B4;
 Tue,  7 Apr 2026 10:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775556193; x=1807092193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Kyl3kDC0EPr4MjVHvnZj5EQNN4SkexA7h3YQSh1c53o=;
 b=CqAG6si0cP8G/01PmF9A7cyNDBqWijBhHv+fsVblWvfFX/LipYZXp2Mw
 aQHP8CzzlgvqU3tqqN5ouT78E8WMRwh8JLAc/qtQ1Ww7rMT7STv41RQf4
 6Bu9/e6mOGKsrIYY43AJsJGJJUCf8ToJmOMDWFP9T43JqWoe84F1LAXAm
 VTW7QC02pCeQr31BP2jaSROzZdvpwRK/BVT1SXHfslyJ++LiJOALiFi8A
 Tap6gZIeHLiUAoqm/t1xDwIYPdbIq+C5mag1MZHsrKxF6oXAsEucwVbWL
 kLWpBsU4K4VEyL7nIzlFjrj71EIKM1a65wId6AqVN3y42zw3GTayFK+gi Q==;
X-CSE-ConnectionGUID: Il4HLD+HS/GzOcEx2RBGhw==
X-CSE-MsgGUID: AbJtmdaERAColoD5lW7RWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76587312"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76587312"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:03:13 -0700
X-CSE-ConnectionGUID: ys/88ox/QIOWpMtmauEPyw==
X-CSE-MsgGUID: shUkFYFIRa2MULu0CamkTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="227292235"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.84])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:03:11 -0700
Date: Tue, 7 Apr 2026 13:03:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Cc: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
Message-ID: <adTWXEKa_KOsxprS@intel.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-2-animesh.manna@intel.com>
 <DM4PR11MB636036CB7922982F875E3C91F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <41346fec-0935-4be3-8069-924aded3e650@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <41346fec-0935-4be3-8069-924aded3e650@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5EAB43AC7A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 02:29:46PM +0530, Dibin Moolakadan Subrahmanian wrote:
> On 07-04-2026 00:18, Shankar, Uma wrote:
> >
> >> -----Original Message-----
> >> From: Manna, Animesh <animesh.manna@intel.com>
> >> Sent: Friday, March 13, 2026 9:03 PM
> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> >> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> >> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> >> <animesh.manna@intel.com>
> >> Subject: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
> > Nit: Name here in subject doesn't match the actual function. Better to use exact same name.
> >
> >> Introduce a flag for DC3co. CMTG will be enabled only with DC3co so add a
> >> separate function is_allowed() for cmtg. DC3co flag will be enabled in a separate
> >> patch.
> >>
> >> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_cmtg.c          | 14 ++++++++++++++
> >>   drivers/gpu/drm/i915/display/intel_cmtg.h          |  2 ++
> >>   .../gpu/drm/i915/display/intel_display_device.h    |  1 +
> >>   drivers/gpu/drm/i915/display/intel_display_types.h |  4 ++++
> >>   4 files changed, 21 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> >> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> >> index e1fdc6fe9762..024d753eca55 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> >> @@ -16,6 +16,7 @@
> >>   #include "intel_display_device.h"
> >>   #include "intel_display_power.h"
> >>   #include "intel_display_regs.h"
> >> +#include "intel_display_types.h"
> >>
> >>   /**
> >>    * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +186,16 @@
> >> void intel_cmtg_sanitize(struct intel_display *display)
> >>
> >>   	intel_cmtg_disable(display, &cmtg_config);  }
> >> +
> >> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) {
> >> +	struct intel_display *display = to_intel_display(crtc_state);
> >> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >> +
> >> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder ==
> >> TRANSCODER_B) &&
> >> +	    HAS_DC3CO(display) && intel_crtc_has_type(crtc_state,
> >> INTEL_OUTPUT_EDP) &&
> >> +	    crtc_state->dc3co.enable)
> > Don't think we need both HAS_DC3CO and dc3co.enable here. Later should never be set if HAS_DC3CO
> > not true.
> >
> >> +		return true;
> >> +
> >> +	return false;
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> >> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> >> index ba62199adaa2..7692cc98cf87 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> >> @@ -7,7 +7,9 @@
> >>   #define __INTEL_CMTG_H__
> >>
> >>   struct intel_display;
> >> +struct intel_crtc_state;
> >>
> >>   void intel_cmtg_sanitize(struct intel_display *display);
> >> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> >>
> >>   #endif /* __INTEL_CMTG_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> >> b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> index e84c190dcc4f..35e06fcf794d 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> @@ -189,6 +189,7 @@ struct intel_display_platforms {
> >>   #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
> >>   #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9,
> >> 10))
> >>   #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
> >> +#define HAS_DC3CO(__display)		((__display)->platform.novalake)
> >>   #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p
> >> || DISPLAY_VER(__display) >= 14)
> >>   #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
> >>   #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >>> has_overlay)
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index e189f8c39ccb..8a92ea4f1438 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1434,6 +1434,10 @@ struct intel_crtc_state {
> >>
> >>   	/* to track changes in plane color blocks */
> >>   	bool plane_color_changed;
> >> +
> >> +	struct {
> >> +		bool enable;
> >> +	} dc3co;
> >>   };
> 
> DC3CO shouldn’t be part of struct intel_crtc_state.
> It’s a global display power feature, not per-CRTC state.
> struct intel_atomic_state would be a more appropriate place to track this.

intel_atomic_state isn't actually a state, and so should not be used
to track anything. To better reflect its role drm_atomic_state will
soon be renamed to drm_atomic_commit, and we need to follow up with
the corresponding intel_atomic_* rename.

-- 
Ville Syrjälä
Intel
