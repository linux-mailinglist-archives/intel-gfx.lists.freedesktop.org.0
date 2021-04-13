Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C935E4E9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 19:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6651B6E841;
	Tue, 13 Apr 2021 17:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF36F6E841
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 17:22:25 +0000 (UTC)
IronPort-SDR: MWvaes1/1o0AWWDZE/b9S1qlvDW5lEEiVbwNGXqAFxScqd1ZET30/kHlnsq0GGfeKfLZuYFUNs
 EtPnrgWaZcBg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174564838"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="174564838"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:22:25 -0700
IronPort-SDR: 5NzfpSYWx9KY/Q6b+wK1n99K2Q1p2qz/5EBTt/sxeUbUpczG+BziI3JKDj4OQ4+xVzTNTwS9Y+
 X80ib9EpxYJg==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="420863464"
Received: from jchunter-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.120.106])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:22:24 -0700
Date: Tue, 13 Apr 2021 10:22:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20210413172224.oqlnqqxgpqy6ifty@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210413060927.114342-1-lucas.demarchi@intel.com>
 <20210413060927.114342-4-lucas.demarchi@intel.com>
 <YHW8jE1Z3DLPxlXs@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHW8jE1Z3DLPxlXs@intel.com>
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

On Tue, Apr 13, 2021 at 06:45:16PM +0300, Ville Syrj=E4l=E4 wrote:
>On Mon, Apr 12, 2021 at 11:09:27PM -0700, Lucas De Marchi wrote:
>> Direction on gen9+ was to stop reading the straps and only rely on the
>> VBT for marking the port presence. This happened while dealing with
>> WaIgnoreDDIAStrap and instead of using it as a WA, it should now be the
>> normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment on
>> skl straps").
>>
>> For gen 10 it's hard to say if this will work or not since I can't test
>> it, so leave it with the same behavior as before.
>>
>> For PCH_TGP we should still rely on the VBT to make ports E and F not
>> available.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++--------------
>>  1 file changed, 11 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index d62ce9c87748..5a03cbba0280 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -10883,34 +10883,25 @@ static void intel_setup_outputs(struct drm_i91=
5_private *dev_priv)
>>  		intel_ddi_init(dev_priv, PORT_B);
>>  		intel_ddi_init(dev_priv, PORT_C);
>>  		vlv_dsi_init(dev_priv);
>> +	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
>
>Should be >=3D10 I presume? Or did we want ot handle cnl along with

why >=3D 10? The only DISPLAY_VER() =3D=3D 10 platforms out there are handl=
ed
in the branch above. I can make it >=3D 9, but not >=3D 10. Intention was to
handle skl/kbl here.


>icl perhaps? Doesn't really matter I suppose, but it's surely
>going to consfuse the me the next time I read this.
>
>> +		intel_ddi_init(dev_priv, PORT_A);
>> +		intel_ddi_init(dev_priv, PORT_B);
>> +		intel_ddi_init(dev_priv, PORT_C);
>> +		intel_ddi_init(dev_priv, PORT_D);
>> +		intel_ddi_init(dev_priv, PORT_E);
>> +		intel_ddi_init(dev_priv, PORT_F);
>
>DDI F isn't a thing on skl/derivatives, so I'd probably skip it on
>those. Could just use IS_CNL_WITH_PORT_F() to match the looks of
>the icl stuff.

I was actually looking at ICL and thinking "shouldn't this hack for
broken VBT be hidden in intel_bios.c?"  I think we should trust what we
parse from VBT everywhere  except of course in intel_bios.c where we
fixup when the VBT is wrong. Thoughts?

Thanks
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
