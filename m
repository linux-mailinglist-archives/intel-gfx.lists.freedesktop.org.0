Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 682B14089A0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 12:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A106E15F;
	Mon, 13 Sep 2021 10:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB176E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:58:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="201147222"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="201147222"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 03:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="451529421"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 13 Sep 2021 03:58:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 03:58:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 03:57:58 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 16:27:56 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Daniel Vetter <daniel.vetter@ffwll.ch>, David Weinehall
 <david.weinehall@linux.intel.com>, "Tangudu, Tilak"
 <tilak.tangudu@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 3/3] drm/i915: Enable runtime pm autosuspend by default
Thread-Index: AQHXpmuSG8o9SgdSHkyWa50bn75Zwquhztxw
Date: Mon, 13 Sep 2021 10:57:56 +0000
Message-ID: <24b529f8a179488cbc62bb89306b1abd@intel.com>
References: <20210910174447.289750-1-rodrigo.vivi@intel.com>
 <20210910174447.289750-3-rodrigo.vivi@intel.com>
In-Reply-To: <20210910174447.289750-3-rodrigo.vivi@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Enable runtime pm autosuspend
 by default
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
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, September 10, 2021 11:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Daniel Vetter
> <daniel.vetter@ffwll.ch>; David Weinehall <david.weinehall@linux.intel.co=
m>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Deak, Imre <imre.deak@intel.com=
>;
> Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH 3/3] drm/i915: Enable runtime pm autosuspend by default
>=20
> Let's enable runtime pm autosuspend by default everywhere.
>=20
> But at this time let's not touch the autosuspend_delay time, what caused =
some
> regression on our previous attempt.
>=20
> v2: CI on some gen9 platforms was not clean. But it came
>     pretty clean on newer generations. For now, let's
>     pick gen12 and newer. We will return later to extend
>     that to older platforms.
>=20
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: David Weinehall <david.weinehall@linux.intel.com>
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com> #v1
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index f28b5bab61b4..f91a04c3ef14 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -605,6 +605,10 @@ void intel_runtime_pm_enable(struct
> intel_runtime_pm *rpm)
>  		pm_runtime_use_autosuspend(kdev);
>  	}
>=20
> +	/* XXX: Enable by default only for newer platforms for now */
> +	if (GRAPHICS_VER(i915) >=3D 12)
> +		pm_runtime_allow(kdev);
	Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
	Looks good to me.
	Br,
	Anshuman Gupta.
> +
>  	/*
>  	 * The core calls the driver load handler with an RPM reference held.
>  	 * We drop that here and will reacquire it during unloading in
> --
> 2.31.1

