Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1334286B57
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 01:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393756E03D;
	Wed,  7 Oct 2020 23:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E4E6E03D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 23:01:55 +0000 (UTC)
IronPort-SDR: ZyZcHQxvY1lv7nbtorGFrKD7eaQPIaIFJrsRq6FGoU2krWgLLIVzzwsDLO+vwf9jcbHwtZsj/8
 JMo3BC6mM8kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="152091560"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="152091560"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:01:54 -0700
IronPort-SDR: mB7s/AezM3FilqrNIO1VtZDRgXi0zcd4n2S9TKiaQlwxvOtV/CpIodxJKHE4VmQnfz96aFXf9J
 X3xIl2hH3+yw==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="297819977"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:01:53 -0700
Date: Wed, 7 Oct 2020 16:01:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007230136.uzssth4wvjxwmf5a@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-7-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/20] drm/i915: Pimp AUX CH names
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

On Tue, Oct 06, 2020 at 05:33:35PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Let's make the AUX CH names match the spec (AUX A-F for pre-tgl,
>AUX A-C or AUX USBC1-6 for tgl+). And while at it let's include
>the full encoder name in the AUX CH name as well (as opposed to
>just using port_name() which wouldn't give us the right thing on
>tgl+).
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++++++---
> 1 file changed, 10 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i91=
5/display/intel_dp.c
>index a73c354c920e..299dc444a777 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -1877,6 +1877,7 @@ intel_dp_aux_init(struct intel_dp *intel_dp)
> 	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> 	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> 	struct intel_encoder *encoder =3D &dig_port->base;
>+	enum aux_ch aux_ch =3D dig_port->aux_ch;
>
> 	if (INTEL_GEN(dev_priv) >=3D 12) {
> 		intel_dp->aux_ch_ctl_reg =3D tgl_aux_ctl_reg;
>@@ -1909,9 +1910,15 @@ intel_dp_aux_init(struct intel_dp *intel_dp)
> 	drm_dp_aux_init(&intel_dp->aux);
>
> 	/* Failure to allocate our preferred name is not critical */
>-	intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/port %c",
>-				       aux_ch_name(dig_port->aux_ch),
>-				       port_name(encoder->port));
>+	if (INTEL_GEN(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
>+		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
>+					       aux_ch - AUX_CH_USBC1 + '1',
>+					       encoder->base.name);
>+	else
>+		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
>+					       aux_ch_name(aux_ch),
>+					       encoder->base.name);
>+
> 	intel_dp->aux.transfer =3D intel_dp_aux_transfer;
> }
>
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
