Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 846DC5B2D0D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 05:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD8C10E3AD;
	Fri,  9 Sep 2022 03:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3CE10E3AD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 03:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662695205; x=1694231205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kTseNXpDRipjsb+U8NiQ4cwnmY2BgGT25/BSr6f1kEk=;
 b=EqAyQhsejOE/oxnvEQIsIph6Mmeo+mJ4a1rmbtdNgPWpducyogdEz6eS
 oAAp/1bDH7cpxVqgMfXaeWAsNx+Z8fc1moTNKRwBTezl7Cp/q4/2Li3so
 GfrXCUfEsV8avBvMHc6OX9yW7/H+O4F2j3Drv0tbfD3CHyxhDjiYFWNzy
 DWFHZPlctBxKe+KEdFqzayMj4/ZxJpQnJpvO/2T3qQ+3mz87NkAB+JIZ7
 g2uY3VcbSY+4YteCwmhQhtChKR0OlFtCm7lqjg9KJ7MxrY/1wwTaa1rXf
 TBjKZgdpCzgd92ly/xcHZjwrsiXLMCNml0Wt2kvFxaojydc3D7cqlqzeO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="296125432"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="296125432"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 20:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="566222958"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2022 20:46:44 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 20:46:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 20:46:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 8 Sep 2022 20:46:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 8 Sep 2022 20:46:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lfNwKFrODBmFGtsEP2e/8Q4OSqtVyV9IUiamZPij3zxWyFxhjjq1RW5Rf5PhE2CvoIc9/ZEdOeAofZ71SXZ/zZo+BbphBU1oXHkRS18eYKtlqOIqrzoD/9n4EwT5GbWQ6+/WvQVLRwXkrUorFWRRSjJjplsmaTa7l+1Y04/vvI96pzEe847AEFT5zCO2HSSbcSqiGIvWSvjqaj++ua68QE0zPcoqD4c3G2T4hBdrpwAhP+tXB6d1HxA+fA/6yGGgdv1amnrfQU9ibehJndmHXis9WAhskntNaaZv8PRbdZG8JBgovtVk9PLKu/dUJZPuDjb7Y6h6w1qgbq3m7PCiYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E8c+z2WmA0KmnWak18QKBYavouIQNIUwDE0EylVvUIo=;
 b=AxYbVosjRjNZJjjAABWZUgKbVvSu4iDh8QZMV5zAADWv/Z4zmsT/yuNqdQZ74rSWvBJyFBQpHOZlNK1Kk/Ns7li9Vb1TNGSjLXZlf0I4JHwV733Ok9IsNpTdQlUHdAdOVrIwO+3ZUKQvuCILbbTdqIkedq0Wa443KufV8ZXq3e9hph2rd/nxy+ugFqpCBszg5sKePkVOsIUvpgwhSjOTM9cT58RAIzClhHPwZHnZBlQnxpsFVsQ3Is7l+32q63XXDgN6uWwl0IQO3XTorSic84BFEmpsZp7XzPgF5TdqXSbfF6fYJ0LS64NBAP8NQKbDkM2Q4vMhaSC01LHSBuN8xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Fri, 9 Sep
 2022 03:46:42 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5588.018; Fri, 9 Sep 2022
 03:46:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyA
Date: Fri, 9 Sep 2022 03:46:42 +0000
Message-ID: <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
In-Reply-To: <20220906034803.4094252-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7d54d01-cf30-47a6-249f-08da9215e8a7
x-ms-traffictypediagnostic: BL1PR11MB6049:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RwprINeAxV74+NTu2RKh3jqz5RAmZtBYpp2FlouN0pxqhff66ZRIX0ibdQebTOm+55hs1Yqrm5v5FrUGpo8wwj61v2b8rB18LwALXO2+/u9hSzKqjuP8GxrSf4cnsdfBKoC75+3ikoSFjzQ1bNJMYzfO8SrLOEIpGY/JxC06yPsS0Sk2hfqjkxan2Gm8NTCYR7vevpIQvchICqDYlWkvWwDlmgLOTDPEVW0CXL+7C60jfShV51DiqJRaV21Da0gA6o5E0S5pivhkTscLntVfITagltjMNMPhwRe/zGEuw1Dtq2vGMTpDQCzZ2vFsbbC1XcOehGP+hFNGakL2Nx3efGmKQRtUjsjW865rReNhhKm0lR59Si1s0dE/m+Kc4zIbPvv3m9ZarTalGDEqZRAMx2UkajG48BCgdMN6ExCiXgesjT3/Txqv5tTwHytzdYZFhfI1e56vinKBoz5gFTOWoZuauN+2+SKRcKqAY3wMiSxAHXkmMLt9P6vt8EK6Br9QwWBMkjAuHOtypL/HkK0JjJ1MPeiNQGJdF2p5i2ZOl+jTYQL2n1Lb3i9wQKMz7HaLxfHNzoI87BgCdczAQhfgWyjLaLx/RQVZoWoA3uJABxP6JFfXi9k0IsGhtk7IndMtqH5uV68/dka1SkqQ3WtFPr0e/t2yfKaK9Z/GhXu30iQ7PaIxKv4B+lqY0+R7OKO5GYKGVnvaEdGNoJSgs631CPlsa4BHTqXLc4O6zwM6eMLtXwjkEzEoF2sTS1J8JC2QE/eq1cHbskOJTC0qzrb0LA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(366004)(136003)(346002)(39860400002)(66946007)(54906003)(76116006)(66556008)(66446008)(66476007)(6916009)(82960400001)(122000001)(33656002)(38100700002)(38070700005)(86362001)(478600001)(316002)(53546011)(9686003)(6506007)(4326008)(71200400001)(83380400001)(52536014)(7696005)(26005)(41300700001)(55236004)(2906002)(8676002)(186003)(55016003)(5660300002)(64756008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?or8no2//sMI2L1Nl44/2zjib94Tbg9wX8FDg6uj9/e3/DBMtqTJmhRkea8I5?=
 =?us-ascii?Q?KYQSwuFD0N0h/3jFJYBdI301Td/PVjJnHPJHCCFvkRGZtcnFX1HDRWD4ozZD?=
 =?us-ascii?Q?3F3kNWxVnpxlbwLfrbDXAYvNPQ4Ien4yKJLvVbPVQVzDzmnAriya/pbiRU4c?=
 =?us-ascii?Q?xOJHK5Aop5mcowc9qGw3JwBD5OcwOmM8krerOSPZbxrrXN9DOVnrouUSyURO?=
 =?us-ascii?Q?6bDoPECrDB1UZKEUoOYMpMT+XwRVubGQbvuAsZk3wH1EqkjjOZ+zBvqEqjE+?=
 =?us-ascii?Q?4usfznTxKjQyh2M4TCwv281If/n+DwUjCQf0w6tXjBH/xbuew86Zo9Lnk5jK?=
 =?us-ascii?Q?V2z7dhlYWGba2Nd7oU4XgxOhs/GiaNCswv2f0FVa3p60v1s141j5jaPXCiiC?=
 =?us-ascii?Q?eP+VZFFsk8qUxo2qJGmRV9Fuj4S3GA6HQI+5RtXjqb5babQCmlrh9L8EsoKT?=
 =?us-ascii?Q?S2NQMeRNLOdRGJJiPyWthLoh+HjWVE15sS5F4abQgzw0lIpjfW4Mc5VyaFds?=
 =?us-ascii?Q?WVgCfyyMvQJ748LTn8lRJmOYkNyOd9RyvyZEmGv18idh+aOKpESPbKxhDAli?=
 =?us-ascii?Q?lqjjw/oXGZhG/kN7EYqAWUVoRcNyv/mHvwTXcgrSgL5IjUMyn89ElXv/7h/L?=
 =?us-ascii?Q?0MHqNHIWU8Wwmuq1bcRhbGNmlokgTpxu2OcsdatXp1KtEKKtKmUVfgk1JM0A?=
 =?us-ascii?Q?6dfjDohI8Ww9GlnM0uj6N4eLapMcbZ+fO/LKETnkCeU7qV3IuHVn/H5SETzl?=
 =?us-ascii?Q?iUf6JlkNUWdRDu0DVMf7O0qdYE+pMtfDAJI5E2FO0+s/SWSvS70N/hxfpsV4?=
 =?us-ascii?Q?8NQ2d3Ouu87C+UtlGGWg6SyJHe4YWmAU9nEYg758UPZRnQCrRFtaGpEseeAM?=
 =?us-ascii?Q?2wlysMO8h+ZxSaEt6RGyJ1QPSrD1DqJ7qxl7zwOJ5dUwm0J7+G+5/S7Eim4h?=
 =?us-ascii?Q?2J/zWim1WnDQvUn70VeyqLw9W5G8ASP4LFUVgYwv3pSdyAh29lf5a5ZZs0d4?=
 =?us-ascii?Q?D1sUPRxxTbrjgKdtHVQOX1vZXMGvO5IhcXMko0IAniuRI9734gFInqW1xOZv?=
 =?us-ascii?Q?gGJATy8L7Jg3/BBPHKHJJ2XhZHAODCRoAPPkSu3CVCrGPg+f/s/ia1H+PTVZ?=
 =?us-ascii?Q?iEw8kJW32JWMl9tmRiy8PzQ4EIZPSSHrlGyd6I4wp1+fPE6jKW5jblJIKQV3?=
 =?us-ascii?Q?dThmoOf8hn3WfChrazGPp5WyuBkMxMW4Ur1Bj/Y5CPvEFCrDRWMRavLKAunv?=
 =?us-ascii?Q?dx5QRZwBoNM3Mexw2E5rvFEDu0MU4u9x7PY9cHlnm5PSxlWRHLhLVkzZ9IC3?=
 =?us-ascii?Q?Dt/9FZkjK9m6T2Huwejv1UC8Xs5/LrV/+LVUH1bmfJXqeldEIAcPRZuHGUcM?=
 =?us-ascii?Q?1O2dDoPCpfnw+oF9DpfkeiNZkxts2rFwmcFA14A0pAGeCnHpanCiulZkdiIL?=
 =?us-ascii?Q?OkExTtjJuSHeplNaF9p8Q6oarLpseiuWbVfs3WAb4g0JYzaHpXQjFSHFZo4Y?=
 =?us-ascii?Q?CNEodZSFzVLA6rXdoj6d7jJwvE7W5y73SjgeQP3almZt3nW7Ho47KUbUULm6?=
 =?us-ascii?Q?R0uM9WPLamUoX7Disl8bXhqiXEHxIUl7n4QsyKtz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7d54d01-cf30-47a6-249f-08da9215e8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 03:46:42.0958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2kWvCsPInGftcUDU2z53td426FU/NsyAXf95rGhjRKl/h34X67H6yuo2gKUPGP/tpPa1u/DPEh0F+7ZfFTg22g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Tuesday, September 6, 2022 9:18 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Murthy, Arun R <arun.r.murthy@intel.co=
m>
> Subject: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> Starting from Gen12 Async Flip is supported on linear buffers.
> This patch enables support for async on linear buffer.
>=20
> UseCase: In Hybrid graphics, for hardware unsupported pixel formats it wi=
ll
> be converted to linear memory and then composed.
>=20
> v2: Added use case
> v3: Added FIXME for ICL indicating the restrictions
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index be7cff722196..1880cfe70a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct
> intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
> +			/*
> +			 * FIXME: Async on Linear buffer is supported on ICL
> as
> +			 * but with additional alignment and fbc restrictions
> +			 * need to be taken care of. These aren't applicable
> for
> +			 * gen12+.
> +			 */
> +			if (DISPLAY_VER(i915) < 12) {
> +				drm_dbg_kms(&i915->drm,
> +					"[PLANE:%d:%s] Modifier does not
> support async flips\n",
> +					plane->base.base.id, plane-
> >base.name);
> +				return -EINVAL;
> +			}
> +
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> --
> 2.25.1

