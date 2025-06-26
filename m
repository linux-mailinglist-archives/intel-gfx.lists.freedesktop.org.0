Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C57DAE9C3A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 13:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FBA10E89F;
	Thu, 26 Jun 2025 11:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmiNgSkr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE5010E89F;
 Thu, 26 Jun 2025 11:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750936203; x=1782472203;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2rguBp50AVcz9pvMOreJzrU9T1Jhy/V3959mkT3cs3g=;
 b=XmiNgSkrrKOhJ5oOfE051+1QqIpliVEAsI7wzRICc9RKmG5LsCz9R2+z
 0fvsak60mAxEP8B2OSj7Vf4DhPelbA9eA4YiMDuOFTe3yxuvxxd7ENuE6
 Uxhn/W+lA8bUYPui+jpEhvmoDlB1DGwNUP1HtVwlxyopkxEpv/A8dfkli
 8ufgsaLN37XI8rzetaGirl8ZxOsa+QRfZDqvw0qfBuF6/XwaHxrXXdQZp
 xHGBj+YO4haTqWTjx9gpteumIUC2sGDWslu9Bz7xp7Wy7I4pmXBSOrOq5
 gZKMOOP4ar43c9PdttchOMZ0ZWst/+TO7NjtWRaU5bBR5AFyhfK2xYKxy g==;
X-CSE-ConnectionGUID: 1ER/AD1bTdWB4/hFVS6t8A==
X-CSE-MsgGUID: uKAxoH/KRsGHwsSN6GELng==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="64290485"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="64290485"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 04:10:02 -0700
X-CSE-ConnectionGUID: DjlUyDArQsOLkFc8xeALnQ==
X-CSE-MsgGUID: tTOaLAUvSeiax3y8mHn3XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152990704"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 04:10:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 04:10:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 04:10:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 04:10:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lpqfbvc8o50AFxqKlRfY96Ot5TpkLC8Mwi38qf7Wz5e0DFla2sLAla3QBwjVgYhkQlDHwPYYnIV0hptSuYHLd9Qz0ZFzkYXEvYL9RKhg7hUbBX+wlVY0qzk/Lzl6JTKZYVn2PvM0htOuXPNmq8Ph2EYdY2FizXq3QlMwm5/ByLaMSjamp4xyM9wU7Jq9FFBWko3ysPU2SlOQcAki/pFcRYSKwD60Fw0jDKMMQHr8e69hAmv6dC93zvqpwKSWmm0vw9V8I1He4AXeXJOlm9SPGL/ii+6yU24S6W/S4QJ+naPCWBPWAtQg3YpnM7kYjMebzPLCiDHNxU83dauj0xM4gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DOyb7ch2ExfwPGipM+wwTI9GctQNyCH0WKQUK6tHkSo=;
 b=QfOkfx/wogHRpUo+MF/8gDSk0e1smDRq/AKUHEuEJdeVQeQZ6zssVljRw8GECN5VUnjoN5m2BBvqO9QVoxFtkT2Ebm3b0sdMdvGmgSKzCeii/mvgCPuwrICt2ZZrn3Sa5eVQEUas6YIpW57F+CmlxmL8pCzuNDaMFRkpLA+32RfYcp9NZm5F1odKosHckmxDUd/3yJt0meWiBvZHFwzbkjH+pJvkl6TzuAjQVu8AhAsvPFlzEVQFZZ7QCPpWjs8cj0Q/uT/uWgzJ3gUC1R3CGC+QHqAxTkny7NKQr+Zclgqq1x9zDgXhRjJZ6jExJ6w0odEzR5A6cDxM2ba/UiRiSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB7938.namprd11.prod.outlook.com
 (2603:10b6:610:12f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Thu, 26 Jun
 2025 11:09:45 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 11:09:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/fb: use struct intel_display for DISPLAY_VER()
Thread-Topic: [PATCH] drm/i915/fb: use struct intel_display for DISPLAY_VER()
Thread-Index: AQHb5oOLJRbZHabBzE62/YVPOTX3UbQVSHkQ
Date: Thu, 26 Jun 2025 11:09:44 +0000
Message-ID: <DM3PPF208195D8D9F6EC478D135D32524AAE37AA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250626101712.1898434-1-jani.nikula@intel.com>
In-Reply-To: <20250626101712.1898434-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB7938:EE_
x-ms-office365-filtering-correlation-id: 6b475390-fef7-47eb-0d14-08ddb4a1f50a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hUrvf05d38SVuiGhvY4WEugOczUxD+MsYzpXlOdi/95VxtBTtblXygFpSGhE?=
 =?us-ascii?Q?06lMZqk54BshZB34ntY/JDhILl4VzCdMJprMUKx6H1ZdxTAeiaVyBFKlCGPB?=
 =?us-ascii?Q?bJ8rRBbdtBsNyj95VeOCo+rMF06Tk3K4u/jh4GxHULysDKyVzNsFjo2a7qAx?=
 =?us-ascii?Q?IMA3Opx+dryreY5wz3rVzXxEWS3DpCMbANKFa1zasjG/tWtnjbaIqk1+34L9?=
 =?us-ascii?Q?JgbXuouXAqE7uSq1O+H7I2VK/fRgkn4YODdBROCqlICr7khQllPfQ/wV086D?=
 =?us-ascii?Q?GGcvmHIPs/3n4WQXlMC/mtOXzqNOhUI0YsnIImkmgbJWR3tuN/wqnA4pPTQ3?=
 =?us-ascii?Q?yS/eC8QcLb6wIKajoeBQJ2a2hBobZRL+G9n3wnJOeTdhNyhE9Sz0F5H41NCj?=
 =?us-ascii?Q?o7t7dNtTX0Yu0EvyueDhR+1gw7oqH14eQBMvq9oNk5qOSw5iaEALlpT0t/xL?=
 =?us-ascii?Q?mLG2evxR704FJrWPcRGwqZbJytWl0S5IfiLHvr5UZMCIaL00948FVqJSla8L?=
 =?us-ascii?Q?MtQ9nBDawjk7GJgh8RPLQbrAFFcoom9/vLztRQGynLiViK3h7rMY/v7vPLkR?=
 =?us-ascii?Q?BqHMnXyY6sZP+i0ZeQA0DrP/1BVqOA6HC295aDYFoxP4WgTwygynuSYGD2Df?=
 =?us-ascii?Q?LmI0hRyqSHXhoR/kskckGzQVfCsGNiCk0pmJTfooGxrVmW7+n7983dWYGvb7?=
 =?us-ascii?Q?G2FwAbTQOAtMj0HGIgyMIu66oadIEthxukW/wO9hlKibd2H/etzkVkTp+OsZ?=
 =?us-ascii?Q?s9/otcHTfqq77bDJYkyCHwf0b4I45zSoSrwotuYnIntyhrqM5/aFT56CBYMw?=
 =?us-ascii?Q?A6Mbqb1JPU+AqFtnwBbifDFj/iy1OYxw/1ZYOF/Sd3Lk6FlVZ4ktj7bxOz2L?=
 =?us-ascii?Q?BTHE2felBNMGaPFJGl88cMGXLVOTqbTNm6NRPRuUD+nFo8ay20LegVWexH+l?=
 =?us-ascii?Q?I4pzHD/gLLsOocUvHmmTy78m42SRW2fdUlm9wq3h0gEFYpmDsJBHnTBuMa5K?=
 =?us-ascii?Q?5ISI9WJ06IZu/eM/3iSocfRPusVfEN6KtJbYxk+Mw7RpjbwyuRmd82pH5vSe?=
 =?us-ascii?Q?QPY2Aw3hzQFy2zoxlJxHKn9DXYYicUYtdaGb7TswkkMAgP6MJIctZ5lPYgKL?=
 =?us-ascii?Q?toJKi9/HH/flIBnohb1oVBGnRJBYYdGwzPZ21jWooiZ3RSaBnmqfWK0KKImf?=
 =?us-ascii?Q?uuf2arqaXyuAlxISI8UcM5VhLeY0BHxoMEph0Owzh6wSjcIdqcRfeJEorzCf?=
 =?us-ascii?Q?TM7U63VyML0Rjk+kvexoco+D0XVWBsus8L0sApqu4wuqobXtVcfZZMaRKXds?=
 =?us-ascii?Q?KrKeRSGJv3oUF+I2ianLPlW8CiZXDIvdKuuBxwWcK05dcrnu6/YRsg2h86lQ?=
 =?us-ascii?Q?qkd5sCqTMCzrjV77LNU/DObE4NB4g5UAy8WY+hYtr92bOs2SYO/LosRNMqXo?=
 =?us-ascii?Q?q8lQM0CWkDcuwkJGqikvfqdtM6HOeG/3je6Dp2B0tvhaMneC7lqvww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GJriYJeqhPbOGCtjWNldL0qgKSuZAToljo+gautakcQImmcgicB18SQLm90O?=
 =?us-ascii?Q?mOSFfWnFuXJ+L4eGScE/B2rISGf947tCuWB0iyy2wwnaFNm8Gaa9iwUhnFOU?=
 =?us-ascii?Q?/jQhuyeOEHeKx+tezpPzwEQiODXXoEYWQTCX0GJNw/huIWZ26LneVBf+jgbY?=
 =?us-ascii?Q?UU46wBPstxQbVwsPmv7TJtdblDNW0WQRBx7K07/UtGUzdXVmcwAzX0/jxNGI?=
 =?us-ascii?Q?U10J7uSvmcP6AvnOB53Imq1X8qWx+CSbBzKknzYHI3V+lXxLek7DkBeevFB6?=
 =?us-ascii?Q?RLGOH+YXou5c90RnH9U8YVlgLE25EQHOx6XPCpAHHfNif90qZ7vy68A1EBhE?=
 =?us-ascii?Q?5vmoGIxuFnLt8OqDeae3i9kTPn2FbOyFEzn+te5WMwKXXUOUE1aIownBtOJl?=
 =?us-ascii?Q?4EMMBV+4mqbEGNdZUYPcIYUfnPAblHtoRJv1W2vMikVbcDa+QqkKKM2feNDH?=
 =?us-ascii?Q?ShxsesWlJdO6Asrz16eS14RSSUc+jWJZoZ/AJ9RmUBjySI3jwEXNZkdEDqoL?=
 =?us-ascii?Q?JyBclqbsKubYEbFJLQ+3F1iDxNL6wsYUHjjHkTGULGvuwrBeo1Xhx1Mq0P3L?=
 =?us-ascii?Q?OxGDKxtoLkiw8/1Sdx9YqI29hfQdEy8GMN3uP4i7YKnFY2iGusDTHJixcGzv?=
 =?us-ascii?Q?VvS2oYiyfYBbxRtKYwOxhDnTe8M8B8U1IC5UvfGz8TLA3ucnE3TE5gf88+6P?=
 =?us-ascii?Q?pVTjq9xNvFAl6v7HCuqY+Ws/8JLdOmg9AjyEwvP2FwCoychtpsWLkysDwiB/?=
 =?us-ascii?Q?GEuWeEkHHB672WlLi0o2TWX6DHwVIym70QawxhJxqL0h8CiEaUtuacRWWUeQ?=
 =?us-ascii?Q?PCO49/BlYMrqJJ2CKII2qXwZPTWMiItt4dl5JjvP51ZXGtq1RTWZuvYz7yfL?=
 =?us-ascii?Q?mrbIC9ghZuf5MAhzsUSVBJYm29qS4gS4THbQ6UpkupszUtpgSV0BnDHk6bFF?=
 =?us-ascii?Q?EoB/Th0GikZD5ygKyr8N0n9/VOII/oMvznaqEzC6c9uK8RgBKEjR3U8+iK4x?=
 =?us-ascii?Q?CmQziFgYiYym30mlD4LzQjI3g4IJW3wXqSBnTOAqLB8T39IPlHUWexx8jFp6?=
 =?us-ascii?Q?wjchbH9dSyFaSj6mDAFk5dAeRnKzoso2Piq8E7ZdIZRoQ30CTtD3woaSqSm6?=
 =?us-ascii?Q?Vzqkgidl6lC2mhz4xG38W7+CxIbxO1KFQNHGX+UnyQCzGaAVpchZV3DLz/rC?=
 =?us-ascii?Q?3PEynzBmEWIR5BVWzdC0LSVpUjl6uSDzrYVCAz2MnPnPKauQkjaZzelkNM/7?=
 =?us-ascii?Q?ICZBZ0vx3IoaJAO7IP95Cgx0Ve6pIDXXT8Dq36wMQpHs3jCQy8rDDUv1n9oR?=
 =?us-ascii?Q?ty+Nc9bhRJEEqYFPR3oJmJd4GgmJCwMuF4gmRscCcF6kjemgt8xgnH6KbHqT?=
 =?us-ascii?Q?lIxzHK5vw3I9QN1O6omyFyZWZmfuGcCvLc/pJDOqeNQCx/XCtO8Ut7f0JjC9?=
 =?us-ascii?Q?4J4fgzfgQx0GumGcCfFHopB3uF+8ID1k7AnTXP4vgWIOvlOIqhovUcHQ83yo?=
 =?us-ascii?Q?2p1cu2N+L/ro3Nv+oFnX009LckjP4/aE8X2miX5IaM1NX+295uBzwzinQvNv?=
 =?us-ascii?Q?Mk8x+LmLIsUjLNTC7geSGJNDgFdCbLnVGAifBO3K?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b475390-fef7-47eb-0d14-08ddb4a1f50a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2025 11:09:44.9730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WA9z3E9KZrsmpP3cQ4Zwj02YSW4gjBQt/ZxN87L1tSXf1BhD+2XLYBK/4CcSTeDXCnWTAH9gqDjvN9Ic2HeiVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, June 26, 2025 3:47 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/fb: use struct intel_display for DISPLAY_VER()
>=20
> Convert a leftover struct drm_i915_private use to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> b/drivers/gpu/drm/i915/display/intel_fb.c
> index 763b36c4de10..13cb9588ee3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1286,10 +1286,10 @@ bool intel_fb_needs_pot_stride_remap(const
> struct intel_framebuffer *fb)
>=20
>  bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)=
  {
> +	struct intel_display *display =3D to_intel_display(plane_state);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>=20
> -	return DISPLAY_VER(dev_priv) < 4 ||
> +	return DISPLAY_VER(display) < 4 ||
>  		(plane->fbc && !plane_state->no_fbc_reason &&
>  		 plane_state->view.gtt.type =3D=3D I915_GTT_VIEW_NORMAL);  }
> --
> 2.39.5

