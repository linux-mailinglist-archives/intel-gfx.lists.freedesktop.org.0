Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3425B83947
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5328C10E0DD;
	Thu, 18 Sep 2025 08:46:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iU4iyoDx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD44F10E0DD;
 Thu, 18 Sep 2025 08:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758185203; x=1789721203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FHpgrHBhyj4GRtu/48PM71eYU5pf7tWDwzFlLVv4t18=;
 b=iU4iyoDxs4LlQSP63WNMhWSQK6ScUjZF1QgEfP8y80OcvJ1njxhhdzuJ
 KPJT4E3gy/IgjbMW1rss+wemze6ly7BxzFTNiEqHESgbqkRKhHLg3zQ4R
 SzLTBwzaBNAGTQNtRp3MJyAOOmzjoy/GC1+XWyqvy65vpCdV6HjY6hexo
 7dZpHCqc5j1Rx6JX3M8UXjFuXa1OG5/zH5IarlMU+4OcM7YSxQeleojMe
 ulDMlMH1ncYgKGog9h/M8H1SuWvRqcWz9+yzLkYhcgpxoOA0i/XBQG/WM
 vuPKbgxtisfmIS9arew1AiCvb3yH+z4veZP1IKam8AIwnMXwtpVmOtZnA Q==;
X-CSE-ConnectionGUID: ViAmcne8S6e+bDrnalMdgw==
X-CSE-MsgGUID: IVzEAwYORG2bworzb0pZIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71189239"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71189239"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:46:43 -0700
X-CSE-ConnectionGUID: hV+6axKMTKuW5MhbTcH8eg==
X-CSE-MsgGUID: eiv4AwohR7WQ6i8+PmIpCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175079282"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:46:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
In-Reply-To: <aMrApoD9mHeiOPoV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756931441.git.jani.nikula@intel.com>
 <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
 <aLmkNu6AJ6LGVt6q@intel.com>
 <4e4d1bc04de69092cdb3ecc16bda81764d2b9b16@intel.com>
 <aMrApoD9mHeiOPoV@intel.com>
Date: Thu, 18 Sep 2025 11:46:38 +0300
Message-ID: <fc618f57ade30d1e3560ad68eea07d4333bc97f4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 17 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 17, 2025 at 03:33:31PM +0300, Jani Nikula wrote:
>> On Thu, 04 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Wed, Sep 03, 2025 at 11:32:03PM +0300, Jani Nikula wrote:
>> >> xe does xe_bo_unpin_map_no_vm() on the failure path. Add a common hel=
per
>> >> to enable further refactoring.
>> >>=20
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
>> >>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
>> >>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
>> >>  3 files changed, 12 insertions(+), 1 deletion(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/=
gpu/drm/i915/display/intel_fbdev_fb.c
>> >> index 3837973b0d25..6b70823ce5ef 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> >> @@ -51,6 +51,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(st=
ruct drm_device *drm, int size
>> >>  	return &obj->base;
>> >>  }
>> >>=20=20
>> >> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
>> >> +{
>> >> +	/* nop? */
>> >
>> > gem_object_put() is what destroys the bo on i915, so I think you're
>> > introducing a leak in the next patch with this nop implementation.
>> >
>> > xe seems to be riddled with footguns here since it conflates
>> > creation+pinning+whatever in the same thing (and I guess it
>> > doesn't know how to clean all that up when the last reference
>> > to the object disappears?) and you have to use that horribly
>> > misnamed function instead...
>>=20
>> Hmm, can we just slap i915_gem_object_put(obj) in there?
>
> That would at least match how it behaves currently. Though I
> didn't look too deeply whether that is 100% sufficient to clean
> up properly.

I'm doing just that in [1].

[1] https://lore.kernel.org/r/22bc3c3158f5a22ab258ada8684766fdf75fefec.1758=
184771.git.jani.nikula@intel.com

>>=20
>> The i915 variant of intel_fbdev_fb_alloc() ignores errors from
>> intel_framebuffer_create() and just unconditionally does
>> i915_gem_object_put() afterwards:
>>=20
>> 	fb =3D intel_framebuffer_create(intel_bo_to_drm_bo(obj),
>> 				      drm_get_format_info(display->drm,
>> 							  mode_cmd.pixel_format,
>> 							  mode_cmd.modifier[0]),
>> 				      &mode_cmd);
>> 	i915_gem_object_put(obj);
>>=20
>> 	return to_intel_framebuffer(fb);
>>=20
>> Presumably the refcounts are handled correctly either way.
>>=20
>> It's just a bit fishy that the potential error pointer from
>> intel_framebuffer_create() goes through to_intel_framebuffer() to the
>> caller.
>
> Yeah, would be less confusing to just check for the error
> explicitly.

Added a new patch for that [2].

[2] https://lore.kernel.org/r/17631db227d527d6c67f5d6b67adec1ff8dc6f8d.1758=
184771.git.jani.nikula@intel.com

Together, I believe [1] and [2] keep the current behaviour
intact. Whether that's 100% correct or not, I couldn't say, but at least
I'm shouldn't be introducing any new issues.

BR,
Jani.


--=20
Jani Nikula, Intel
