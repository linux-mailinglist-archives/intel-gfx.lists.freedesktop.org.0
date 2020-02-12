Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4318C15AFE6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 19:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77AF66E0DE;
	Wed, 12 Feb 2020 18:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8465D6E0DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 18:34:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 10:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="222372311"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 12 Feb 2020 10:33:59 -0800
Date: Wed, 12 Feb 2020 10:33:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200212183359.GD1969683@mdroper-desk1.amr.corp.intel.com>
References: <20200211185008.30806-1-jose.souza@intel.com>
 <20200211185008.30806-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211185008.30806-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display/tgl: Enable hotplug
 detection in TC5 and TC6
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 10:50:08AM -0800, Jos=E9 Roberto de Souza wrote:
> The hotplug interruption detection was not being enabled for TC5 and
> TC6 in the north detection side.

TC5 and TC6 would be ports H & I.  We're lacking handling in a few other
places as well (e.g., aux channels).  I sent patches to update some of
those areas a few months back, but Lucas suggested that we just remove
these ports completely since all TGL SKU's don't actually pin them out
for use.

For reference:
  https://lists.freedesktop.org/archives/intel-gfx/2019-October/217820.html

I don't have strong feelings either way, but we should probably all
agree on a direction and then handle it consistently everywhere in the
code.


Matt


> =

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 3d0cd0960bd2..abd979ef75ec 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3051,6 +3051,9 @@ static void gen11_hpd_detection_setup(struct drm_i9=
15_private *dev_priv)
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(PORT_TC5) |
> +			   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC6);
>  	I915_WRITE(GEN11_TC_HOTPLUG_CTL, hotplug);
>  =

>  	hotplug =3D I915_READ(GEN11_TBT_HOTPLUG_CTL);
> @@ -3058,6 +3061,9 @@ static void gen11_hpd_detection_setup(struct drm_i9=
15_private *dev_priv)
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC2) |
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC3) |
>  		   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC4);
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		hotplug |=3D GEN11_HOTPLUG_CTL_ENABLE(PORT_TC5) |
> +			   GEN11_HOTPLUG_CTL_ENABLE(PORT_TC6);
>  	I915_WRITE(GEN11_TBT_HOTPLUG_CTL, hotplug);
>  }
>  =

> -- =

> 2.25.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
