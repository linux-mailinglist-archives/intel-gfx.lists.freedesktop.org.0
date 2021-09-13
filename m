Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C98740896B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 12:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DEF6E0A6;
	Mon, 13 Sep 2021 10:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523BB6E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:53:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="201146520"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="201146520"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 03:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="551562107"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2021 03:53:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 03:53:11 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 03:52:53 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 16:22:51 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Tangudu, Tilak"
 <tilak.tangudu@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Disallow D3Cold.
Thread-Index: AQHXpmuZx07Xjd5UKEyn7LmA3U8dH6uhyd8g
Date: Mon, 13 Sep 2021 10:52:51 +0000
Message-ID: <05c65f7e1cf04fdea37d2914beb0fe7c@intel.com>
References: <20210910174447.289750-1-rodrigo.vivi@intel.com>
 <20210910174447.289750-2-rodrigo.vivi@intel.com>
In-Reply-To: <20210910174447.289750-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Disallow D3Cold.
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ro=
drigo
> Vivi
> Sent: Friday, September 10, 2021 11:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Tangudu, Tilak
> <tilak.tangudu@intel.com>; Deak, Imre <imre.deak@intel.com>
> Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Disallow D3Cold.
>=20
> During runtime or s2idle suspend and resume cases on discrete cards, if D=
3Cold
> is really achieved, we will blow everything up and freeze the machine bec=
ause
> we are not yet handling the pci states properly.
>=20
> On Integrated it simply doesn't matter because D3hot is the maximum that =
we
> will get anyway, unless the system is on S3/S4 and our power is cut.
>=20
> Let's put this hammer for now everywhere. So we can work to enable the au=
to-
> suspend by default without blowing up the world.
>=20
> Then, this should be removed when we finally fix the D3Cold flow.
>=20
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index a40b5d806321..086a9a475ce8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -301,6 +301,7 @@ static void sanitize_gpu(struct drm_i915_private *i91=
5)
>   */
>  static int i915_driver_early_probe(struct drm_i915_private *dev_priv)  {
> +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>  	int ret =3D 0;
>=20
>  	if (i915_inject_probe_failure(dev_priv))
> @@ -331,6 +332,13 @@ static int i915_driver_early_probe(struct
> drm_i915_private *dev_priv)
>  	if (ret < 0)
>  		return ret;
>=20
> +	/*
> +	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> +	 * This should be totally removed when we handle the pci states
> properly
> +	 * on runtime PM and on s2idle cases.
> +	 */
> +	pci_d3cold_disable(pdev);
	This still doesn't protect, if user space enables d3cold via sys-fs.
	d3cold_allowed_store() may call pci_d3cold_enable()
	Is it possible to disable it via PCI PM Caps at early probe?
	Otherwise it should done in respective suspend callback to make sure
	d3cold is disabled.

Thanks,
Anshuman Gupta.
> +
>  	ret =3D vlv_suspend_init(dev_priv);
>  	if (ret < 0)
>  		goto err_workqueues;
> --
> 2.31.1

