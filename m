Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7C516AC20
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E566E5BF;
	Mon, 24 Feb 2020 16:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BC16E5BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:50:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 08:49:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="437765685"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with ESMTP; 24 Feb 2020 08:49:52 -0800
Date: Mon, 24 Feb 2020 08:49:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200224164952.GM3112363@mdroper-desk1.amr.corp.intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
 <20200222020815.50599-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222020815.50599-8-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/tgl: Extend Wa_1409767108 to B0
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

On Fri, Feb 21, 2020 at 06:08:15PM -0800, Jos=E9 Roberto de Souza wrote:
> This Wa will also be needed by B0 stepping.
> =

> BSpec: 52890
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Same question as patch #1 --- does the bspec's stepping for display
workarounds reflect the CPU+GT stepping or the display stepping?  If
it's the display stepping, then I believe we should already be covered.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 8ba68ec6dc24..e9af21c08ff6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4982,7 +4982,7 @@ static void tgl_bw_buddy_init(struct drm_i915_priva=
te *dev_priv)
>  	const struct buddy_page_mask *table;
>  	int i;
>  =

> -	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>  		/* Wa_1409767108: tgl */
>  		table =3D wa_1409767108_buddy_page_masks;
>  	else
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
