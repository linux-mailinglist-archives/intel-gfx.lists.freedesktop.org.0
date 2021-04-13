Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F410235E5AB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 19:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778936E0D6;
	Tue, 13 Apr 2021 17:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E9C89893
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 17:54:04 +0000 (UTC)
IronPort-SDR: SnpG0zL7Z31Q5GbJ0oeuBj9DrukOmaW9+IGinUsnUG5Nwty+Bfhja6YYY47pViXyDWmiV7favD
 qbrfERH5ShEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="258440387"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="258440387"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:53:58 -0700
IronPort-SDR: qFV0bs7iOLnv27OzAvEaofXDR1wyEpGvSFG2b0VI+WfecZ+Rp1JNEI0VkxpstXKXFsLLYWAOSo
 mtRVJnx/829A==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="398855003"
Received: from jchunter-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.120.106])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:53:58 -0700
Date: Tue, 13 Apr 2021 10:53:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20210413175358.pa5c6lmnyivmmdz6@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210413060927.114342-1-lucas.demarchi@intel.com>
 <20210413060927.114342-4-lucas.demarchi@intel.com>
 <YHW8jE1Z3DLPxlXs@intel.com>
 <20210413172224.oqlnqqxgpqy6ifty@ldmartin-desk2>
 <YHXXO3PoqLlLYVrP@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHXXO3PoqLlLYVrP@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: remove strap checks
 from gen 9
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 08:39:07PM +0300, Ville Syrj=E4l=E4 wrote:
>On Tue, Apr 13, 2021 at 10:22:24AM -0700, Lucas De Marchi wrote:
>> On Tue, Apr 13, 2021 at 06:45:16PM +0300, Ville Syrj=E4l=E4 wrote:
>> >On Mon, Apr 12, 2021 at 11:09:27PM -0700, Lucas De Marchi wrote:
>> >> Direction on gen9+ was to stop reading the straps and only rely on the
>> >> VBT for marking the port presence. This happened while dealing with
>> >> WaIgnoreDDIAStrap and instead of using it as a WA, it should now be t=
he
>> >> normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment =
on
>> >> skl straps").
>> >>
>> >> For gen 10 it's hard to say if this will work or not since I can't te=
st
>> >> it, so leave it with the same behavior as before.
>> >>
>> >> For PCH_TGP we should still rely on the VBT to make ports E and F not
>> >> available.
>> >>
>> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++------------=
--
>> >>  1 file changed, 11 insertions(+), 25 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
>> >> index d62ce9c87748..5a03cbba0280 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >> @@ -10883,34 +10883,25 @@ static void intel_setup_outputs(struct drm_=
i915_private *dev_priv)
>> >>  		intel_ddi_init(dev_priv, PORT_B);
>> >>  		intel_ddi_init(dev_priv, PORT_C);
>> >>  		vlv_dsi_init(dev_priv);
>> >> +	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
>> >
>> >Should be >=3D10 I presume? Or did we want ot handle cnl along with
>>
>> why >=3D 10? The only DISPLAY_VER() =3D=3D 10 platforms out there are ha=
ndled
>> in the branch above. I can make it >=3D 9, but not >=3D 10. Intention wa=
s to
>> handle skl/kbl here.
>
>Yeah, meant to write >=3D9. Cnl not really a thing, but I would get
>confused if we started skipping it in some places while still
>handling it in others. I guess we may want to consider just nuking
>cnl totally everywhere, but until that time I think we should keep
>things consistent.

considering mesa already did that, then yes. And agreed about being
consistent while that doesn't happen.

thanks
Lucas De Marchi

>
>>
>>
>> >icl perhaps? Doesn't really matter I suppose, but it's surely
>> >going to consfuse the me the next time I read this.
>> >
>> >> +		intel_ddi_init(dev_priv, PORT_A);
>> >> +		intel_ddi_init(dev_priv, PORT_B);
>> >> +		intel_ddi_init(dev_priv, PORT_C);
>> >> +		intel_ddi_init(dev_priv, PORT_D);
>> >> +		intel_ddi_init(dev_priv, PORT_E);
>> >> +		intel_ddi_init(dev_priv, PORT_F);
>> >
>> >DDI F isn't a thing on skl/derivatives, so I'd probably skip it on
>> >those. Could just use IS_CNL_WITH_PORT_F() to match the looks of
>> >the icl stuff.
>>
>> I was actually looking at ICL and thinking "shouldn't this hack for
>> broken VBT be hidden in intel_bios.c?"  I think we should trust what we
>> parse from VBT everywhere  except of course in intel_bios.c where we
>> fixup when the VBT is wrong. Thoughts?
>
>I guess we could stuff it all in there somehow. Not sure.
>Maybe Jani has thoughts on this?
>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
