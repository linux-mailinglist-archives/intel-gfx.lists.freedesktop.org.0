Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3015E4630A6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 11:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08236E546;
	Tue, 30 Nov 2021 10:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45356E546
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 10:06:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="236413941"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="236413941"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 02:06:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="609076803"
Received: from dmeldon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.12.174])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 02:06:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YaX2hVZsu/apAFev@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-3-uma.shankar@intel.com>
 <87ee6zj5nb.fsf@intel.com> <YaX2hVZsu/apAFev@intel.com>
Date: Tue, 30 Nov 2021 12:06:09 +0200
Message-ID: <874k7uj6um.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 30 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 29, 2021 at 06:19:52PM +0200, Jani Nikula wrote:
>> On Fri, 26 Nov 2021, Uma Shankar <uma.shankar@intel.com> wrote:
>> > Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
>> > to incorparate the extended lut size for XE_LPD.
>> >
>> > v2: Added a helper for degamma lut size (Ville)
>> >
>> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_color.c | 14 +++++++++++---
>> >  1 file changed, 11 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/=
drm/i915/display/intel_color.c
>> > index 42fe549ef6fe..de3ded1e327a 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_color.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> > @@ -808,6 +808,14 @@ static void bdw_load_luts(const struct intel_crtc=
_state *crtc_state)
>> >  	}
>> >  }
>> >=20=20
>> > +static int glk_degamma_lut_size(struct drm_i915_private *i915)
>> > +{
>> > +	if (DISPLAY_VER(i915) >=3D 13)
>> > +		return 131;
>> > +	else
>> > +		return 35;
>> > +}
>> > +
>>=20
>> Why do we have both a function with hardcoded values and device info
>> members for this?
>
> The device info stuff just needs to get nuked. The size of the LUTs
> depends on the gamma mode which we already select dynamically (and
> if/when we get thre new uapi ironed out it'll become even more
> dynamic), so trying to represent it with a single number in device=20
> info is futile.

Works for me, I just like to have the single point of truth instead of
split all over the place. Not against adding this now, but let's not
forget to follow up with the cleanup.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
