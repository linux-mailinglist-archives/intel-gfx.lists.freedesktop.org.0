Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B96AA6F94
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 12:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4D010E8E4;
	Fri,  2 May 2025 10:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nOTGsMj2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2D710E8E4;
 Fri,  2 May 2025 10:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746181752; x=1777717752;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ImVqyUl1+C/uIW4yI3MFcgUW3BgP4HRAJlO17xhHkEw=;
 b=nOTGsMj27Uge8Fz6otnoKDmsq3Zjp7Ei1oFk9EgG18Rj+4m7uiNwqZ+N
 I4DT8+BB7gvOOQtUyJsu6vHY+H/mslr1Q0pO+C8lj+gHKIVsUlDpFZWz2
 cGHfxAjyfVwt/zpVTkyUdaACEZKeRfXHI+eooZh7XPPMA/QOgt2EKX3F8
 mVvGBmDx0HLmD1C8vUS1FpXYRgpE2WmZa0ILqcll8ZER1eOH3Bmn/8Lzj
 4+g6ICGJAuus6ppV0wRk9Of+dQTDRjB49YvEl+Zp/91/5fJ4aL7P5Tix8
 tr5V/+oE2wt0E5FcidrQLeX4iAZejx9pvkL3ZiFRHtqRynw5BsXsdU1fj Q==;
X-CSE-ConnectionGUID: XI4Uo8x4Qw6kwtoTyoPqKg==
X-CSE-MsgGUID: S4ndKcOuRIagY6wq10CdBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="46972178"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="46972178"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:29:12 -0700
X-CSE-ConnectionGUID: WgYwCifzREmfvD/93JOzpw==
X-CSE-MsgGUID: evLUZY3jQz6K6gj37eRJ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134360230"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:29:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
In-Reply-To: <SN7PR11MB6750FAB2F21D4D866220418DE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1745524803.git.jani.nikula@intel.com>
 <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
 <SN7PR11MB67506BAD789777010E86BFAFE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87r017wen0.fsf@intel.com>
 <SN7PR11MB6750FAB2F21D4D866220418DE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 02 May 2025 13:29:06 +0300
Message-ID: <87ikmjwbkd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 02 May 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, May 2, 2025 2:53 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org;
>> intel-xe@lists.freedesktop.org
>> Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
>> specific HDCP GSC code
>> 
>> On Fri, 02 May 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Nikula, Jani <jani.nikula@intel.com>
>> >> Sent: Friday, April 25, 2025 1:32 AM
>> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
>> >> <suraj.kandpal@intel.com>
>> >> Subject: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to
>> >> driver specific HDCP GSC code
>> >>
>> >> The driver specific HDCP GSC code will eventually be part of the
>> >> driver cores rather than display. Remove the struct intel_display
>> >> references from them, and pass struct drm_device instead.
>> >>
>> >> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_hdcp.c        |  2 +-
>> >>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    | 12 ++++++------
>> >>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h    |  6 +++---
>> >>  .../drm/i915/display/intel_hdcp_gsc_message.c    |  2 +-
>> >>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c         | 16 ++++++++--------
>> >>  5 files changed, 19 insertions(+), 19 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> index 39bcf8f3d810..3e3038f4ee1f 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> @@ -254,7 +254,7 @@ static bool intel_hdcp2_prerequisite(struct
>> >> intel_connector *connector)
>> >>
>> >>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
>> >>  	if (USE_HDCP_GSC(display)) {
>> >> -		if (!intel_hdcp_gsc_check_status(display))
>> >> +		if (!intel_hdcp_gsc_check_status(display->drm))
>> >>  			return false;
>> >>  	}
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> >> index 4194ef77f7c3..6a22862d6be1 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> >> @@ -19,14 +19,14 @@ struct intel_hdcp_gsc_context {
>> >>  	void *hdcp_cmd_out;
>> >>  };
>> >>
>> >> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
>> >> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
>> >>  {
>> >
>> > So the thing is this particular function won't be a part of the drm
>> > core seeing this actually is a intel specific Check to see if gsc cs is present or
>> not.
>> 
>> Not *drm* core, but i915 or xe "driver core", after display has been split out.
>> 
>> With that clarification, does the patch make more sense? :)
>
> Ahh ohkay
>
> In that case
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the reviews, much appreciated. Series pushed to din now.

BR,
Jani.


-- 
Jani Nikula, Intel
