Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 928A8633C7F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E64C10E3D2;
	Tue, 22 Nov 2022 12:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00AA910E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120321; x=1700656321;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=h4gCAtAiGYUOM8LBJjOFO4Xiwy6mFJk80jZg1/oNlAM=;
 b=dyP01EN/Toyy41wUth0sRxXYvys5Q/cSaN3Ov0jvC/m0+rro93k3auig
 jv6gkH9SEyVN/29/Is/VUAqr+RU4C4/pePtMVxQeM15SrNW+fBtItHwXZ
 o6iZxjOZAEXDIRZq7MbDuuLT46pMBpHaaF1eTWBs7iI87C/0g/w4GW9am
 armlXDxcoN0lHzLlwJIuaFowzWaWHBkvlKgRroSsqYDhTjlDMCm1BSneW
 MQVbm45sgLjTF3y56P9g+GoLX7FZs/gFVigcAAE3ntnGnIJFYyoHmNkr+
 e32P0cydSkaZyjLu9Qbco7KALDS93FnIIhmeQKkmpdJ9Y0IWgo3RK3e/J g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="312504694"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="312504694"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:31:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="816087274"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="816087274"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:31:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-2-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:31:55 +0200
Message-ID: <874juryxtw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dvo/ch7xxx: Fix
 suspend/resume
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Poke a few more bits into the ch7xxx to make
> it output a picture after being reset during S3.
>
> In particular we need to set the input buffer select (IBS),
> and enable VGA vsync output on the BCO pin. Selecting
> VGA hsync on the c/h sync pin doesn't actually seem necessary
> on my ADD card at least, but the BIOS selects it so why not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

First things first.

I'll r-b anything that I've actually reviewed in the series, although
the subject matter being what it is, I may not have reviewed it as
thoroughly as I would other code that I review.

If r-b would require me to look stuff up in the specs, I really couldn't
be bothered, so I'll just a-b that stuff if it looks reasonable. I don't
think anyone else is going to show up for review either, and if you end
up breaking something, I think you're the only one to show up to fix it
anyway.

Fair enough?

With that, this patch is

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/dvo_ch7xxx.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/=
i915/display/dvo_ch7xxx.c
> index 54f58ba44b9f..6d948520e9a6 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> @@ -50,15 +50,26 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>  #define CH7xxx_INPUT_CLOCK	0x1d
>  #define CH7xxx_GPIO		0x1e
>  #define CH7xxx_GPIO_HPIR	(1<<3)
> +
>  #define CH7xxx_IDF		0x1f
> -
> +#define CH7xxx_IDF_IBS		(1<<7)
> +#define CH7xxx_IDF_DES		(1<<6)
>  #define CH7xxx_IDF_HSP		(1<<3)
>  #define CH7xxx_IDF_VSP		(1<<4)
>=20=20
>  #define CH7xxx_CONNECTION_DETECT 0x20
>  #define CH7xxx_CDET_DVI		(1<<5)
>=20=20
> -#define CH7301_DAC_CNTL		0x21
> +#define CH7xxx_DAC_CNTL		0x21
> +#define CH7xxx_SYNCO_MASK	(3 << 3)
> +#define CH7xxx_SYNCO_VGA_HSYNC	(1 << 3)
> +
> +#define CH7xxx_CLOCK_OUTPUT	0x22
> +#define CH7xxx_BCOEN		(1 << 4)
> +#define CH7xxx_BCOP		(1 << 3)
> +#define CH7xxx_BCO_MASK		(7 << 0)
> +#define CH7xxx_BCO_VGA_VSYNC	(6 << 0)
> +
>  #define CH7301_HOTPLUG		0x23
>  #define CH7xxx_TCTL		0x31
>  #define CH7xxx_TVCO		0x32
> @@ -301,6 +312,8 @@ static void ch7xxx_mode_set(struct intel_dvo_device *=
dvo,
>=20=20
>  	ch7xxx_readb(dvo, CH7xxx_IDF, &idf);
>=20=20
> +	idf |=3D CH7xxx_IDF_IBS;
> +
>  	idf &=3D ~(CH7xxx_IDF_HSP | CH7xxx_IDF_VSP);
>  	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
>  		idf |=3D CH7xxx_IDF_HSP;
> @@ -309,6 +322,11 @@ static void ch7xxx_mode_set(struct intel_dvo_device =
*dvo,
>  		idf |=3D CH7xxx_IDF_VSP;
>=20=20
>  	ch7xxx_writeb(dvo, CH7xxx_IDF, idf);
> +
> +	ch7xxx_writeb(dvo, CH7xxx_DAC_CNTL,
> +		      CH7xxx_SYNCO_VGA_HSYNC);
> +	ch7xxx_writeb(dvo, CH7xxx_CLOCK_OUTPUT,
> +		      CH7xxx_BCOEN | CH7xxx_BCO_VGA_VSYNC);
>  }
>=20=20
>  /* set the CH7xxx power state */

--=20
Jani Nikula, Intel Open Source Graphics Center
