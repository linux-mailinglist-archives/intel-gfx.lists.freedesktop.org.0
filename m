Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA90172BD4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 00:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E2966ED79;
	Thu, 27 Feb 2020 23:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF9F6ED79
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 23:03:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 15:03:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="385321641"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.163])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 15:03:38 -0800
Date: Thu, 27 Feb 2020 15:03:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20200227230338.kepflucacdd57ek3@ldmartin-desk1.jf.intel.com>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
 <157687987582.18690.3380544218828835709@skylake-alporthouse-com>
 <20191223205955.nv2qi6aztzaokjdg@ldmartin-desk1>
 <20200107163655.GF1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107163655.GF1208@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 07, 2020 at 06:36:55PM +0200, Ville Syrj=E4l=E4 wrote:
>On Mon, Dec 23, 2019 at 12:59:55PM -0800, Lucas De Marchi wrote:
>> On Fri, Dec 20, 2019 at 10:11:15PM +0000, Chris Wilson wrote:
>> >Quoting Lucas De Marchi (2019-12-20 22:06:50)
>> >> According to intel_detect_preproduction_hw(), the SKL steeping D0 is
>> >> still pre-preproduction so we can nuke the additional workaround.
>> >>
>> >> While at it, nuke dangling new line.
>> >>
>> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> >
>> >Ville and Jani are more likely to know if the pre-production comment is
>> >telling porkies.
>>
>> Bspec 7534 says "The DDIA port presence strap is not connected on the SK=
L A-C steppings."
>>
>> I would expect to catch a failure in CI if the spec was wrong. I can add
>> the bspec # to the commit message while fixing up the typos there.
>
>IIRC the w/a db has this listed as "forever". So not really sure what
>the truth is on this one. But easy enough to revert if it doesn't work

yep, just checked that as well.

>out I supoose. Maybe toss in a note about the w/a db thing into the
>commit message?

Humn.. I add a comment on the spec to give them a chance to chime in.
Let's see if we receive a response before commiting this.

thanks
Lucas De Marchi

>
>>
>>
>> Lucas De Marchi
>>
>> >-Chris
>> >
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
>> >>  1 file changed, 1 insertion(+), 8 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
>> >> index e6702b9b9117..4aa7dfa88c7c 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >> @@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct drm_i=
915_private *dev_priv)
>> >>                 if (intel_ddi_crt_present(dev_priv))
>> >>                         intel_crt_init(dev_priv);
>> >>
>> >> -               /*
>> >> -                * Haswell uses DDI functions to detect digital outpu=
ts.
>> >> -                * On SKL pre-D0 the strap isn't connected, so we ass=
ume
>> >> -                * it's there.
>> >> -                */
>> >>                 found =3D I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_D=
ISPLAY_DETECTED;
>> >> -               /* WaIgnoreDDIAStrap: skl */
>> >> -               if (found || IS_GEN9_BC(dev_priv))
>> >> +               if (found)
>> >>                         intel_ddi_init(dev_priv, PORT_A);
>> >>
>> >>                 /* DDI B, C, D, and F detection is indicated by the S=
FUSE_STRAP
>> >> @@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct drm_i9=
15_private *dev_priv)
>> >>                 if (IS_GEN9_BC(dev_priv) &&
>> >>                     intel_bios_is_port_present(dev_priv, PORT_E))
>> >>                         intel_ddi_init(dev_priv, PORT_E);
>> >> -
>> >>         } else if (HAS_PCH_SPLIT(dev_priv)) {
>> >>                 int found;
>> >>
>> >> --
>> >> 2.24.0
>> >>
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
