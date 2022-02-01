Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 900084A60AF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 16:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F5B10E6B4;
	Tue,  1 Feb 2022 15:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC25310E6D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 15:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643730564; x=1675266564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=s66KOaZEsPjWaa4pP0lMr676DAiPObNZ6mwUpa9pBeQ=;
 b=DIVGOqVkeB+wk1BeHGcMjYUuuRGvmsHMvPbZvmQgZ0znpaQ+IytDVJL7
 bfQN45Psg4eYSSdysOcYoHN/7Bi3uxnKKAmwwB4JsApjgljdR07IZQnTg
 EHUA2uTUfWgEd74y4c6ktHtwxb5Hm9tnzr9zswtWEDKlINrlgtC/DJ5t3
 vY68+PkF8DM2AiNwJxylUlcmBCe7fslycMvcWfUxHT9Bkn/ioYDaKO9Ob
 yk9dnD9pwcUgeghmbPWyZjGdOtkCqLSIIUwCplvOMgOGIsM8cCmVxwSqO
 Ohzo5BPKC8w1MRtSa3u5HzonKRk1IT0zKgFZY8JquybRWTQ510jzkcVV5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247669352"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="247669352"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 07:49:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="479732428"
Received: from ehanosko-mobl.ger.corp.intel.com (HELO localhost) ([10.252.6.3])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 07:49:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lukasz Bartosik <lb@semihalf.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
Date: Tue, 01 Feb 2022 17:49:16 +0200
Message-ID: <87r18mtwn7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: upstream@semihalf.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Thanks for the patch, adding some Cc's from the commit that regressed.

BR,
Jani.

On Tue, 01 Feb 2022, Lukasz Bartosik <lb@semihalf.com> wrote:
> From: =C5=81ukasz Bartosik <lb@semihalf.com>
>
> Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
> The root cause is null pointer defeference of bi_next
> in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.
>
> BUG: kernel NULL pointer dereference, address: 000000000000002e
> PGD 0 P4D 0
> Oops: 0002 [#1] PREEMPT SMP NOPTI
> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-rc1
> Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156.3 05/14=
/2021
> RIP: 0010:tgl_get_bw_info+0x2de/0x510
> ...
> [    2.554467] Call Trace:
> [    2.554467]  <TASK>
> [    2.554467]  intel_bw_init_hw+0x14a/0x434
> [    2.554467]  ? _printk+0x59/0x73
> [    2.554467]  ? _dev_err+0x77/0x91
> [    2.554467]  i915_driver_hw_probe+0x329/0x33e
> [    2.554467]  i915_driver_probe+0x4c8/0x638
> [    2.554467]  i915_pci_probe+0xf8/0x14e
> [    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
> [    2.554467]  pci_device_probe+0xaa/0x142
> [    2.554467]  really_probe+0x13f/0x2f4
> [    2.554467]  __driver_probe_device+0x9e/0xd3
> [    2.554467]  driver_probe_device+0x24/0x7c
> [    2.554467]  __driver_attach+0xba/0xcf
> [    2.554467]  ? driver_attach+0x1f/0x1f
> [    2.554467]  bus_for_each_dev+0x8c/0xc0
> [    2.554467]  bus_add_driver+0x11b/0x1f7
> [    2.554467]  driver_register+0x60/0xea
> [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> [    2.554467]  i915_init+0x2c/0xb9
> [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> [    2.554467]  do_one_initcall+0x12e/0x2b3
> [    2.554467]  do_initcall_level+0xd6/0xf3
> [    2.554467]  do_initcalls+0x4e/0x79
> [    2.554467]  kernel_init_freeable+0xed/0x14d
> [    2.554467]  ? rest_init+0xc1/0xc1
> [    2.554467]  kernel_init+0x1a/0x120
> [    2.554467]  ret_from_fork+0x1f/0x30
> [    2.554467]  </TASK>
> ...
> Kernel panic - not syncing: Fatal exception
>
> Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae")
> Signed-off-by: =C5=81ukasz Bartosik <lb@semihalf.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 2da4aacc956b..bd0ed68b7faa 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct drm_i915_private =
*dev_priv, const struct intel
>  		int clpchgroup;
>  		int j;
>=20=20
> -		if (i < num_groups - 1)
> -			bi_next =3D &dev_priv->max_bw[i + 1];
> -
>  		clpchgroup =3D (sa->deburst * qi.deinterleave / num_channels) << i;
>=20=20
> -		if (i < num_groups - 1 && clpchgroup < clperchgroup)
> -			bi_next->num_planes =3D (ipqdepth - clpchgroup) / clpchgroup + 1;
> -		else
> -			bi_next->num_planes =3D 0;
> +		if (i < num_groups - 1) {
> +			bi_next =3D &dev_priv->max_bw[i + 1];
> +
> +			if (clpchgroup < clperchgroup)
> +				bi_next->num_planes =3D (ipqdepth - clpchgroup) /
> +						       clpchgroup + 1;
> +			else
> +				bi_next->num_planes =3D 0;
> +		}
>=20=20
>  		bi->num_qgv_points =3D qi.num_points;
>  		bi->num_psf_gv_points =3D qi.num_psf_points;

--=20
Jani Nikula, Intel Open Source Graphics Center
