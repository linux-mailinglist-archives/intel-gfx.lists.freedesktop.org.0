Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCB92870E1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 10:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A6B6EA57;
	Thu,  8 Oct 2020 08:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E09006EA57
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 08:43:56 +0000 (UTC)
IronPort-SDR: EQZsDWS5O7HgaHlBVyl4zZeGQluCQgWsH27Nku7RXP/1fq8oRCNZwZ40fjB0KWWgtEX5AEe7Q9
 Plq5dt1vCepw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164514571"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="164514571"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 01:43:55 -0700
IronPort-SDR: Mk45M7tIzRFa43hTRlC0qAqa4bUNCJS2tAGNMVzf3nPiTXd/WTPcfuT/uFTt/O4ZJlLrYwVJ2A
 6qQk/u+BMO2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="344671660"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 08 Oct 2020 01:43:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 11:43:52 +0300
Date: Thu, 8 Oct 2020 11:43:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201008084352.GH6112@intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-8-ville.syrjala@linux.intel.com>
 <20201007231145.ufu23osa6minqeyl@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007231145.ufu23osa6minqeyl@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 07/20] drm/i915: Use AUX_CH_USBCn for the
 RKL VBT AUX CH setup
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 07, 2020 at 04:11:45PM -0700, Lucas De Marchi wrote:
> On Tue, Oct 06, 2020 at 05:33:36PM +0300, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >As with the VBT DVO port, RKL uses PHY based mapping for the
> >VBT AUX CH. Adjust the code to use the new AUX_USBCn names
> >and add a comment to explain the situation.
> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
> > 1 file changed, 6 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
> >index 179029c3d3d5..77c86f51c36d 100644
> >--- a/drivers/gpu/drm/i915/display/intel_bios.c
> >+++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >@@ -2636,10 +2636,14 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i9=
15_private *dev_priv,
> > 		aux_ch =3D AUX_CH_B;
> > 		break;
> > 	case DP_AUX_C:
> >-		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_D : AUX_CH_C;
> >+		/*
> >+		 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
> >+		 * map to DDI A,B,TC1,TC2 respectively.
> =

> This will conflict with DG1 that was just merged and use the same
> mapping as RKL. Change here LGTM.

Aye. I'm still pondering how to make this VBT port stuf not
suck so badly. I guess some kind of platform dependent
i915->VBT enum mapping function(s) could work, but not sure.

> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Lucas De Marchi
> =

> >+		 */
> >+		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_USBC1 : AUX_CH_C;
> > 		break;
> > 	case DP_AUX_D:
> >-		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_E : AUX_CH_D;
> >+		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_USBC2 : AUX_CH_D;
> > 		break;
> > 	case DP_AUX_E:
> > 		aux_ch =3D AUX_CH_E;
> >-- =

> >2.26.2
> >
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
