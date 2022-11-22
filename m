Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A285B633C87
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022CB10E3D0;
	Tue, 22 Nov 2022 12:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C7A10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120367; x=1700656367;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rrdgx15v5Sw7yBCWNsN66EvJkBeAQaGifIVSMSogZIs=;
 b=mT0ypYzA+Y3lUnqbgqfqkeXpV7axIXTiOWAOAJBaQdqIZ0S1U3DLLx7Q
 /xRElYYxqstjOiF/xWZjs/xnbfTtADCIqAwSOi7LDtmKFaav/a+Y1LhhE
 GvJqvxoWJaDAXW5ZDqb09ZWAtnzPntQd+p/usb2DrEwefek7BmYcx+nlU
 Q1p8bOevt2y4sce1fo35aQFkKa5MrODRQ5mwg2zodMq1A0cCszx0/crZQ
 DcfFKAjnF+qwwMBxhpMjHF649Xp3nxYfz1VhLqmn1DC+dSHofv9n4R5Ya
 2MHWNxLEeM9XTM6HBs4hE9JOABVsHc4zKfjCMelLUEIuPyGukQEOWdcNc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="297158593"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="297158593"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:32:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="672469004"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="672469004"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:32:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-4-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:32:38 +0200
Message-ID: <87y1s3xj89.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/dvo/sil164: Fix
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
> Poke a few more bits into the SiI164 to make it
> recover after S3. HEN/VEN are the important bits,
> the rest PLL filter/HPD detection I just did
> for good measure to match the BIOS programming.
>
> Note that the spec recommended SCNT bit in REGC
> isn't set by the BIOS at least for me, so I left
> it out.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/dvo_sil164.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/=
i915/display/dvo_sil164.c
> index 32dd3b969946..4acc8ce29c0b 100644
> --- a/drivers/gpu/drm/i915/display/dvo_sil164.c
> +++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
> @@ -58,6 +58,10 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>  #define SIL164_9_MDI (1<<0)
>=20=20
>  #define SIL164_REGC 0x0c
> +#define SIL164_C_SCNT (1<<7)
> +#define SIL164_C_PLLF_MASK (0xf<<1)
> +#define SIL164_C_PLLF_REC (4<<1)
> +#define SIL164_C_PFEN (1<<0)
>=20=20
>  struct sil164_priv {
>  	//I2CDevRec d;
> @@ -205,6 +209,13 @@ static void sil164_mode_set(struct intel_dvo_device =
*dvo,
>  	  sil164_writeb(sil, 0x0c, 0x89);
>  	  sil164_writeb(sil, 0x08, 0x31);*/
>  	/* don't do much */
> +
> +	sil164_writeb(dvo, SIL164_REG8,
> +		      SIL164_8_VEN | SIL164_8_HEN);
> +	sil164_writeb(dvo, SIL164_REG9,
> +		      SIL164_9_TSEL);
> +	sil164_writeb(dvo, SIL164_REGC,
> +		      SIL164_C_PLLF_REC | SIL164_C_PFEN);
>  }
>=20=20
>  /* set the SIL164 power state */

--=20
Jani Nikula, Intel Open Source Graphics Center
