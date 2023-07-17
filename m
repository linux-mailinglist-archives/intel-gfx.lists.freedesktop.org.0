Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8560755B78
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 08:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031CC10E1E0;
	Mon, 17 Jul 2023 06:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3464E10E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 06:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689575055; x=1721111055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rO7bgk5u2QWNo6KXeZNkLUT5ScGA4FsD4B34/8Lw8Uo=;
 b=TiVGGzn9pRvxhwmYjSPJ/7eeJmPPRSeBPz8dv4yV5cu3blQofmrnMtTp
 cn7ucWwXrrThyLsepufUcRKMC6SML8N8iguTbNgZbtUdLEcI/VSWnQLus
 +1vfwjKidTe91LqH2HVZ3Kzw0dA1McuHOfIq9j0c65DvZxpIPKvVauBSY
 wsshZkvuo8GkmB9UzB1W3Xp/1NZgkNoOwtzpvdePoLr2tCX+KC8DQDZlA
 TfcVd5GmWot+eDIioMlo830B6hNpE1l55TcE01jLobRIq5FBPueqGrfnS
 MYNeLoOPFqgTBcbQigdCVAbz5+eNd5US6LMq5/6SsQl0sHCldinm8AIvs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="429614273"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="429614273"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 23:24:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="723090035"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="723090035"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2023 23:24:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 23:24:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 23:24:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 16 Jul 2023 23:24:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 16 Jul 2023 23:24:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2q2amxqWv/Itd7eFcvLVinqdAQdolfjgbTXpn73/uE4boTVsPmfP4fXQYYGGbDIqeYBvOL4OTRrbPmHV5cQB+VSry+qcV1X05hm6oxbUCEljgTP0vYBvuqSasmXqYmR5XMqy3AoffqYNe546G/3sNg7H1b1ZY/+YsNs44IgP63Z8Ev0nwcQY2X/TnibVNX5MTs2nR1pBY2sd9hJr0kEt7HiTdWcIdMGcUe5jwMz5lqHCHnJPAShtE4Z6erfy9/ZxYzIYUD/v8Xd4yUKhTe9JJ6BTn2m06b3BOvxa+592nwsrsZHp0Ii/NQ6iOVmkysjHQX5AM6D2wqjUnxkA9BizA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5oeHXrJFqNx74bGJNemID4ViinJ5bRQxX9ZznVAgDE=;
 b=VqbIDZ7gLmDOqZ2QpiLGVelf5wltlMUs3UwN1tKlu218PzgOOriuVVHLaEuV3y/rl1myqgE7M2s61qOwyHEvb7y9vkUDQR7ypwV39TcnRni6uVvzH55V0G5qvq3ABi6Na7ePaye/GML7AgEO6MLC8d62dwnUlAQCGNzikBm38TBwUJ2JRbFi0VFlacduAv8dfUHDEFVE7hsnIK47lNsB9YZD4tGJ85xVqofdp0tWUnB/SwqvWKywSLTf82TyN8x7vp2LpN6WdMT1+BUNrM+z3AKO7ktVzDFUqYezE8RiR1W7H0V2J7HfIB18W9eENiUWBHBabYXfa9EGNp+V+2K5qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6420.namprd11.prod.outlook.com (2603:10b6:208:3a8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Mon, 17 Jul 2023 06:24:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::9495:a404:de8b:cad3]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::9495:a404:de8b:cad3%7]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 06:24:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
Thread-Index: AQHZthqWtp8s7mUqE06m+OTqfa839K+9ggig
Date: Mon, 17 Jul 2023 06:24:09 +0000
Message-ID: <DM4PR11MB6360E5965E2A1D0A671BF90FF43BA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
In-Reply-To: <20230714061339.2897609-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6420:EE_
x-ms-office365-filtering-correlation-id: 96799951-0eec-40f1-bb30-08db868e6e63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s+95iQ7Z3KEPMzS76Myx+hbhRtZLmUsHoXc67AIJS2iYkyR+lZG/KiWD6tH47hBcLP8dMvnGoYpQaKQSWNDIOSZQXVcxrFibzezwCTBT7U/S1Ivx1lGaUU00LfMo+w4aveY8XPKqPNK9H+IcT85XZrTT4y9EmKL8mCdv7ocznBvmpBhMwK1YgvCrwswJMPHlYcj2a2SfFIUsp78ehMSbk2NTJZPDL/r2uG74ZQAoxnKOEJtsXXmQGgaTbQvQalTKOpKa51d2d0qsoGaH7cPxUK/pxE6v4MNRLuTvRNPSblTScz6FYEvqEIhMoQkbdWDzzKP6ZVUJziMo67ZKU0xoBXhyewD5hqV15mT55X5hiFolaCx6UCCrGZFI6S2KzUpxRP6XAXMqJsfQ2oHCKeTOW4uwas6RjZRPTuoapWrHZ1UJDgfbS6lGrWh7vAafcrBgslICdGXLBB061itzPD+W9+dVD8X6KlgBdlEK4CgVtzWr3qQlXDpc+IoeqEYjEE3sC23qlyj7EDjFxMoPtosGxfb6Nx1eXts5g5wKFdBhbFqsRG57Y3DuAxVgm70ejOIHsMHXgQAGZpkswaoYAyFCM+fkUJxVVub/dtBS7UQTNWI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199021)(478600001)(71200400001)(7696005)(110136005)(186003)(53546011)(6506007)(26005)(9686003)(2906002)(76116006)(41300700001)(316002)(66556008)(66476007)(66446008)(64756008)(4326008)(5660300002)(52536014)(8936002)(8676002)(66946007)(38100700002)(122000001)(82960400001)(86362001)(33656002)(38070700005)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UblSVNewrKog3+X3HR1Sf6OT91ikue3T1pWTOeL4kILZ4lI6B4RD4OxhuVqj?=
 =?us-ascii?Q?U6wOQ2lqPiwvHJMgWIJXQPoAeEyFwKDB0KR/NhU388wiKv/gUs6Mp4dF8JEi?=
 =?us-ascii?Q?yovPAHqzbTixLwnWVXXSCYhRyeTjh8zAGxvrXMPHqz//sKK7n1S2IGqZ9GBU?=
 =?us-ascii?Q?QlNoY+cmNXS5yfDWuAFbxPIKo9yp5MC7iWQp6B8KukeW8cUjgFA39QHglJJU?=
 =?us-ascii?Q?UhuV0kVqBrHjiE4lrtQmoyAzz9ejhdv6SF1bvtYE9P/0B22q3fh53Zj0L5H4?=
 =?us-ascii?Q?Reio6iiUicMiO42wsSFK1CfXR2HZksjW0LNHPzh3SbiD3h4C9S28CdygGnAV?=
 =?us-ascii?Q?D1P6M+BjO8Ov2lJTPFodddeFz8YY0hq4BHdUA6UVvj1z5Nmj7MiyHpcYcVw9?=
 =?us-ascii?Q?Ck4MNgRFQqRjRceZNR52+Qs0c3fyveBsV4WQ/c7Z1F26NR7q5S1fKLCKMksQ?=
 =?us-ascii?Q?L5MP4PAnv9I/mOXBOR1Ebpho+vn/r9FI8Mjt+kjxun+WAXR9jL0Eqq3nQu/f?=
 =?us-ascii?Q?2emYHTB27Z7mmGxTMmkPnPupVBTfREOZxGDISFiqK745SoE6Jq3QZrWxO0Ny?=
 =?us-ascii?Q?09IaxaAbN/rOfRUz4pIVndfOhvjmz2DpdxUIeXHPqDXir9augmA31eyg0g3n?=
 =?us-ascii?Q?s5SjKPAWYH4kwirkXEQQlg1RobLH+u4wH5FKIsGgP4OoCA5fNoPHW/1qm0uY?=
 =?us-ascii?Q?1sBeRb/kBz7IZL7rH5R4l4L5yk9q5UG1pawy9uWqAeIGg+4wl2PDMxUCZyF5?=
 =?us-ascii?Q?mnsL7Kk4/FdES1edowOFMN3b8ekJKG7JQUZQP1JqspXzfo155Vmeq/e7qXV4?=
 =?us-ascii?Q?GVmJFUtNrj0AxixPiQuIRNkAjEK0VvgXeJhv6RpQ8IWJ2d2HjXXDA3t+GYUY?=
 =?us-ascii?Q?2jGjNlk2dP1Kx8rJrrYA3/QdjHH5ZVCJWOKQupCA02ZlTbyUkOD4OAjEpX1E?=
 =?us-ascii?Q?7x0zx8TMDIR7C6AuXnV/C0qvPCWfnul9gW39h8t7qSQ/bwevYPV4xBtJ/4z3?=
 =?us-ascii?Q?GxCKU2OOWueMCPDG3AiUC4LqBeGe/PCR4GweqNBVx3nwO8zFEQ2hl/UgN7hy?=
 =?us-ascii?Q?n4OhWwhAyonYSZPihUct9aSkMHyJtCy661SSvFtcCdLjj0thF6mf6Mr8CgGm?=
 =?us-ascii?Q?HuMWQI3C7s2kTrxD8XQS2oo4GZmIn6gBBQqGwYVQKRcL/rGvKTfZ4xZ7XFAe?=
 =?us-ascii?Q?6JP6AfnqN6PU0v9aw7Rvojf0QMtYxSLJu2e5WMYl6lPhP6VZvWZEPRzsk7Ti?=
 =?us-ascii?Q?J3tmypArLxnpAenxjTi5VJOA2h6qoEUdB98eZxiaRWdKNtbhQtYNJwDmbFgy?=
 =?us-ascii?Q?kRF4An7LrOHAHcTnw6g+rnOj1twnOVqGEy/raozNz6hKmHkEOWv++tKYbiZ4?=
 =?us-ascii?Q?Fr42/6i8tQy2JhWaSXWWsdyAhYnyjnv9xUrkF7897r9Z9yDvK72w90+ghEk8?=
 =?us-ascii?Q?3iSX3YrXvlFlCj5zk0A8qxTP2RWsiuXvbS4a2g2B5hum/DNrSiN4c3BWLVGC?=
 =?us-ascii?Q?fqjlIy327MS0ucaO4nfej7Mw6mhLwRtHLgfKhHb3Mml3pk0sgRMsYl3I5AxB?=
 =?us-ascii?Q?gl+oq605cp9nfkgmR0B98FHFYi9bEhpB0HFdjy/Z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96799951-0eec-40f1-bb30-08db868e6e63
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2023 06:24:09.7977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ej7Bje6sqjye2K7n8sKr0eY6r+M0aNsMFUYTewGaN3ZNc62jP6nSSpgIgtbHItjfxzX0HVYWbySGcBfZw/D9ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6420
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to
 250us
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Friday, July 14, 2023 11:44 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
> Subject: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
>=20
> Reduce SHPD_FILTER to 250us for ADL and above. This solution was derived =
when
> the below patch was floated.
> [1]https://patchwork.freedesktop.org/patch/532187
> and after some internal discussion Ville's suggestion made sense.

You can give the exact reasoning why this change is required.
Be specific on the issue and the fix.

Regards,
Uma Shankar

> Bspec: 68970
>=20
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 +++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 1 +
>  2 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index f95fa793fabb..95a7ea94f417 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -842,6 +842,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private
> *dev_priv)
>=20
>  	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> +	else
> +		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> +SHPD_FILTER_CNT_250);
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> @@ -1049,7 +1051,7 @@ static void mtp_hpd_irq_setup(struct drm_i915_priva=
te
> *i915)
>  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch=
_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch=
_hpd);
>=20
> -	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> +	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
>  	mtp_hpd_invert(i915);
>  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs); diff --=
git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> dcf64e32cd54..aefad14ab27a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4939,6 +4939,7 @@
>=20
>  #define SHPD_FILTER_CNT				_MMIO(0xc4038)
>  #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
> +#define   SHPD_FILTER_CNT_250			0x000F8
>=20
>  #define _PCH_DPLL_A              0xc6014
>  #define _PCH_DPLL_B              0xc6018
> --
> 2.25.1

