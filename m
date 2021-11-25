Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D22AC45D8B9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 12:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921C16E847;
	Thu, 25 Nov 2021 11:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B356E83E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 11:03:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235738610"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="235738610"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 03:03:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="741730668"
Received: from dshe-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.10.64])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 03:03:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YZ9m3J8XOq++2V+q@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1637588831.git.jani.nikula@intel.com>
 <0afc1d559c463fb5f9fc74b768df6a4e6bfcd2c6.1637588831.git.jani.nikula@intel.com>
 <YZ9kGqXSDTnTqeoG@intel.com> <YZ9m3J8XOq++2V+q@intel.com>
Date: Thu, 25 Nov 2021 13:03:31 +0200
Message-ID: <878rxclcos.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: remove
 intel_wait_for_vblank()
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

On Thu, 25 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 25, 2021 at 12:23:22PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, Nov 22, 2021 at 03:51:03PM +0200, Jani Nikula wrote:
>> > There are only three call sites remaining for
>> > intel_wait_for_vblank(). Remove the function, and open code it to avoid
>> > new users from showing up.
>> >=20
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
>> >  drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
>> >  4 files changed, 8 insertions(+), 12 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/=
drm/i915/display/intel_cdclk.c
>> > index 91c19e0a98d7..e3b863ee0bbb 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -1690,7 +1690,7 @@ static void bxt_set_cdclk(struct drm_i915_privat=
e *dev_priv,
>> >  	intel_de_write(dev_priv, CDCLK_CTL, val);
>> >=20=20
>> >  	if (pipe !=3D INVALID_PIPE)
>> > -		intel_wait_for_vblank(dev_priv, pipe);
>> > +		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->=
base);
>>=20
>> That looks rather hideuous. I think I'd prefer to keep the wrapper.
>
> I guess if we had an intel_crtc based version of the vblank wait
> function it might not look so terrible.

That's what I had initially, actually, and was divided between the
approaches. Ended up on this on the general principle of not adding
local no-op wrappers.

In any case, I think I do want to ditch the pipe-based wrapper because I
don't want to encourage people to use that instead of the direct crtc
version. If adding an intel_crtc based wrapper is good enough to make
that happen, let's do that?

> We could also s/intel_get_crtc_for_pipe/intel_crtc_for_pipe/ to make it
> a bit more succinct and look less like some refcounted thing.

Yeah, thought about that too but left it out of this series.


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
