Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C995B969A62
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 12:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957DC10E32C;
	Tue,  3 Sep 2024 10:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDZpwnBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA7410E32C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 10:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725360110; x=1756896110;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9LuVfsjYhppnaUeJvMjRy25bkhH4cTPwKnZtsF4G9pE=;
 b=SDZpwnBgZnPnfqa0kJ5kxaFKoqd/tEF+bMmoDM3nAEuk49L9o74vGINu
 ubCk0lYwziRgqs0uSfPua42552jMRbQ2JxOSgXbHGtRQ246riD7glEZbW
 ws8eCV7T30/fSJUdkZLOpZe2RHnpHoR6VX5H0UdXeDzQmUX7pweOAJF3b
 c2BLkYXE4Rcghe9l5nO/LRr3EJFukEui1R+/gRIZclHF83Cuv3R7D0DuV
 G+TLO8xd4g8siBKtnFtvrP4DwXFvhgMdR7Yr8PyJXLmF+ggSzlt0IUvLW
 lKfOqdaBaDjf8Srn4PjtnEfpXYCEjRjwYmH9UVb+9XtatDa9pz5vRfZcV Q==;
X-CSE-ConnectionGUID: 5ADcvId+TVeyZFbAXZ1ujg==
X-CSE-MsgGUID: ktk3iooUR9K+M4a61aklLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23463606"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="23463606"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 03:41:49 -0700
X-CSE-ConnectionGUID: VKHf+ahyQ/KT2Yk1ATUtAQ==
X-CSE-MsgGUID: 4NA+rUZFRnuw1Um2BZceFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="95664577"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 03:41:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 03:41:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 03:41:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 03:41:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sqXV9GSZI/AG7LAXsxwl3rJLRppwwgaMDh7Ms7ihEYf5pw/KczSVBHeBnkzY9c2TFVZEn4WNfLWozShKeZrPxpjlkosSFFDD5a8Iihk6IrCGViMNPkbN+x9kdAXmXIMFZdG3IYyVvg0IKROhp/mIgcvY6deFep1LSMASK9P6S19blt7lNPtgwBn2i1a0Oag76pC+77bfH7R2zCvkn2/HWozYZ/U8St+WR0OkkZyLCGrpRaLUGPuc1jCk08tEriA2FCDiluBf+7hILGEA38V7ZaTf6Henwqrs2BK9dZATFyXHcz8nBY+i/nNo607BzXNunErOWI3Uit7CGThI5ROKZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rHvetYP8i647/0doIMi/4QkL6/QT3Up960kdVUg1Rs8=;
 b=qCMSJe3b5sZvjajGmlBganIETxVeANc1uM6gVRPI6wjZr9asflh9iSmb8Nozz4o/JzhH0qtTze7E49JBb+fL9NEGZKKzEfiq9A3s4FF63pGF9gOY1Mk/4VT8j/cNYXC/rD5XSLO3GHJ1nIfuc2NwyDF6n8OnKPUmkmPo0o+x8nSusMlUBGLhx997yS54iPVr3Mce2szluQpXTcSZk4HCt7UX3SRNJ5nd66oJx3538lerywdht7uvKdPN4ENp+8CQXmumdAl8gruDzr7fscHGLvpzymTD5j/66gx2nyHdRZ41BY+HYH9hcMkGEG8hjbPZp4j4Pu19ps/mJ7OoW0dt9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7)
 by DS0PR11MB7733.namprd11.prod.outlook.com (2603:10b6:8:dc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 10:41:46 +0000
Received: from CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a]) by CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a%7]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 10:41:46 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dmc: Hardcode path to MTL DMC v2.23
Thread-Topic: [PATCH] drm/i915/dmc: Hardcode path to MTL DMC v2.23
Thread-Index: AQHa+InWvv7OrP7ZhkO7gbtYSDMdQ7I+PqIg
Date: Tue, 3 Sep 2024 10:41:46 +0000
Message-ID: <CY5PR11MB62826EDE758FF2D19425D073E2932@CY5PR11MB6282.namprd11.prod.outlook.com>
References: <20240827140353.3022432-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240827140353.3022432-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6282:EE_|DS0PR11MB7733:EE_
x-ms-office365-filtering-correlation-id: 5cf785ef-c5e4-4a4b-1814-08dccc050284
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?18YzDEFBjF68lcDG+l6SI9jTIRHX/zzqP71NaVW/2X2jVaqNJpe6MGW1vJNQ?=
 =?us-ascii?Q?c6qG5HLAjj6he6PiT2pYhX4uPPzRq5iPSQB2A/FlshwikZqlxTFAZdTpjg0j?=
 =?us-ascii?Q?RgdHPdzEh5fZRA0OCtwFTMnIWnOl+GO4SE5Qxw0uwwpZRtLtKrsRC+7gMhMx?=
 =?us-ascii?Q?act1jwrY3UMEb2/beBPbFXzoq07JohbKwnBjeen4jmYtR8/jf+4KMDtYUkM4?=
 =?us-ascii?Q?9fL9sBZ9NQvTgnTUOZrexMg+FBeuiq5j+LkcqtkSTqAdzDSUM2tEmgnJLWMb?=
 =?us-ascii?Q?7T0gR8cyS2nZAGzx+b3BG0AeImUwpN47ls7OTLkZ2b7vs5/uRMEsq1qQjBwa?=
 =?us-ascii?Q?pi9PtJpwyTdKHzulC+YVjFVE0X++eF+73na8vNu4JoKrA/dh9IKd83yjSOr9?=
 =?us-ascii?Q?WvRs0rqmscKVBlhddNRoA6cZKqVTHrdypuej10Uc4WcBpP5cuLdl5HC0BgU2?=
 =?us-ascii?Q?rAWJsjbi0u+sp0RAky9gAwn+73+9Ihu3J5L/6t+WSyisNs1qnUkolHmeDc7G?=
 =?us-ascii?Q?stM/Bbi75mtAs75iEz/VyWL2CXR1N+wgAW9wO7h+/co1qtwpnRWdm/3f1pFz?=
 =?us-ascii?Q?lFja+xSlgiVvyhmUe3KGXM4uvA8YvnspFeL6Q/W+jdd+WcMasYpP275OT2YB?=
 =?us-ascii?Q?SXH0hTCO5TxElARcPjRbhR/zSrOXNjjjwB/P5lqmmgLYjkpyiNHWS2OR/WK9?=
 =?us-ascii?Q?bb57p0oAP6OLibuZO1coLjv1mo6sbVy7N3DKwYLn3JV7OrNfmjKKZ9hFXTGg?=
 =?us-ascii?Q?sx1qQVwLfAd2RzeDDy1Aml33xxKVLCQmHlGGFbprD4Gad6ZaMICwoADzp9BR?=
 =?us-ascii?Q?jMyrquKb326UDNgF4IIF04qITcFXqd0nbh5M4yjAXW6Kz8iQRR0LN/4HfHr8?=
 =?us-ascii?Q?dkl6nswyMbAJN/Qx2Mhln/RhW9WUayBKisRAV68gBsr6qtTHcdVwEUkAwb7j?=
 =?us-ascii?Q?STntErSn3wX5WJrDh4IYKjOdQorJgTvz/pgYZjMZa0HaOtKhOTRa1SC4zpD7?=
 =?us-ascii?Q?vOhGgnyWoVF8UW5sNepZgonuxjpddY9GC0PrDEZYo3E17+aKrVkc2YT4YZOo?=
 =?us-ascii?Q?dxc9bmSvGNah8CxGklWmXu0DI/qV3Ke0Ls3YVVFzs2K7mmgVdjrLMfJGanDD?=
 =?us-ascii?Q?owfUa7y67kKLEhbdIR4thiSILyapYcGbtZsznD8rsfmhegGWCKq//a5ox1zP?=
 =?us-ascii?Q?tMlmv/PY3ehbP2a5o2f9advjOkWOEOQESe+Maec2/Bh5KhOGtL+yWAdT8E+Y?=
 =?us-ascii?Q?GL7hBGwpwVrIs2mKNjSPo2F90FAbGcaBUt0W8FAeRTHZ2JUWUSR3sX5Z1U7L?=
 =?us-ascii?Q?yYJE3Ekn4srLJbv+xwBBcuHdBW8AKZg/oKQ7KKfeZ5RlS1XpwPPNByf7abGN?=
 =?us-ascii?Q?DnrIDfU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C+26143kLrGNu/Xm5VL1dXzQcIPHE9V1QUF3vW91AmimonMW8X+RmZjBzwQD?=
 =?us-ascii?Q?T0pgLhhD8jTF7w4QR94a1jbpl7QkoDW/79TRazVcRXygy/JkyNDt+ey2U+0h?=
 =?us-ascii?Q?OSZ9mJwRblKJkCC5y4sERyeJz0WO/ej0hrRW1PdSTJG/9XfEk3LHE/ojaWVf?=
 =?us-ascii?Q?1+y0Bb4BLD7fD9DTpd7WgUXGHn4xbNLo2ZLKwy/u6cIk1SHA2R0NQyEGByWN?=
 =?us-ascii?Q?CHjqBghOQDIg1fUGcbQZOw0tGxLLE2QwY5vC4dbc8Z3r5ChEK6gzcQjXjPuc?=
 =?us-ascii?Q?UDSB2wTZEVCBRqk2JlYY8+SUTX63SQG3Z2D0bYxSJO+oLTuODogKVnnp4aEm?=
 =?us-ascii?Q?fz75ajfPOgbOOwBNDdLSeFUhV5Fesmr9laz+lIIqcam79l+iWmkJqsqkwYYo?=
 =?us-ascii?Q?B1auptbe639/ZuNLiJ1IeVagqK6iXo6l39TtE0DUDngmrLz3W26lbqvOGjrV?=
 =?us-ascii?Q?lHjfQbKpOXAN2v+d2quN4TZCWw2mQSwuFZHPXnjgRYgxs7MEy//N6/3Sc/MV?=
 =?us-ascii?Q?Y5SWRvvxpoB4iKDTiCyDuRypO4myQdgWcbCYjnblt7Qw+dEfzwrl7YSxWosI?=
 =?us-ascii?Q?P/Yvovl2aFJq5+pkianl3RmiVDM/vngR+aHsUL9E3IWBV4e6QZdbDFHImWrx?=
 =?us-ascii?Q?NF2CMgmLKX2wBuLElULfI64v6nB4qqD7zvqTVvHuI5h1C9XRhuyaqwSRqmRb?=
 =?us-ascii?Q?WGZ0qvOAXnyxySukH3XTH/ya8k+fDcr7QfFJLsZ+nckgWkRZwzAcxUCSlcHI?=
 =?us-ascii?Q?vM1XoXoTipDjxAUDc4e5MOZpyGZ2DmwD+kcnancgcknLUpNDA0RRA63LC5N+?=
 =?us-ascii?Q?yUbGsvZnZVd2n6Nqnaq0x7llc+rihO4dfZJnjfg93fy4rrOL+Hyjh5g86ncD?=
 =?us-ascii?Q?Y+3se1WN48qklzDmnGni3tfLSP2G6wEwuNmO2EAr8p6nYWWttZREZ5GQ812k?=
 =?us-ascii?Q?ybzJqW2cecMSJtgigQAWOSWO16PgLbu7JuJT7R0nnNV/gdxK5HQRspiHhyqb?=
 =?us-ascii?Q?fpxNGBXTx131E+9d1UcYczyVIPsjs1TNh/x8x/c2QyZuBzPkiGlvA44P1/4h?=
 =?us-ascii?Q?rlrrgXEnyVokFhYQ/gV+JlPwY9468zATUvnUkg7vtVdC0cmQoKexOIfSW8Ci?=
 =?us-ascii?Q?AVnLG9GhbB6ttlX6YqyKRj9QaMuyv73wTpDVnHd89Pmk6qpXx13az0Yj/HKJ?=
 =?us-ascii?Q?NbcDTgGzeKJY9bxUAcs8op5XH2uYUtWymhnDf+N7RAI1aYZVwjRKGWkjFqsC?=
 =?us-ascii?Q?sQK3pzeU4dWb1VQXPBrXf+p3bMGANb0DDRksaVwW3pv72VboR4PxqSsQOeMp?=
 =?us-ascii?Q?Hely/NwpUGB3yoaMeiN0AG8uCfL4BunYCWqICmDRfRmCTZlEr2t361Q8JjA4?=
 =?us-ascii?Q?EJfKu70KHu/U0AhA4edqg7W8bKnLsFxFDpCwhgGwA0iaGMrBG7csPRqRLmiA?=
 =?us-ascii?Q?wlZ2X+5oMiT9r2Sz5zTJFHGepSBIjFaajUi/RxI7qACCAGaxVAOX/9pZz4wz?=
 =?us-ascii?Q?a/W068PGYgv7a3ntdePz6Bey1okbKjv+BvO/oCQ8evUHXUG4lkNACzKkxZwB?=
 =?us-ascii?Q?9IJbkvWWGdzy/59VrsYK7lol14I7eYmEk/Xb4uiYwD7NYNXzaZ/i02ck4OD/?=
 =?us-ascii?Q?Mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cf785ef-c5e4-4a4b-1814-08dccc050284
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 10:41:46.8766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BLMU1AXkBUqHdNOGop3e49ZD1fvS1iBBJwA520PXdWe0MCgHJr428SaPzB13RlfzhyFTqvvUIoWfcXdUGL9tLs+6loxat93ud3x0MS6+HkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7733
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Tuesday, August 27, 2024 7:34 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH] drm/i915/dmc: Hardcode path to MTL DMC v2.23
>=20
> NOT TO BE REVIEWED/MERGED
> Hardcode path to DMC firmware for CI purposes only.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

The regression issue kms_psr2_sf test failure observed in mtl dmc v2.22 is =
now passed with mtl dmc v2.23.
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137842v1/shards-all.html=
?testfilter=3Dkms_psr2_sf

DMC FW loaded successfully :=20
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137842v1/index.html?test=
filter=3Dmodule_load

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7c756d5ba2a2..723743cbe8e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>  #define BMG_DMC_PATH			DMC_PATH(bmg)
>  MODULE_FIRMWARE(BMG_DMC_PATH);
>=20
> -#define MTL_DMC_PATH			DMC_PATH(mtl)
> +#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_23.bin"
>  MODULE_FIRMWARE(MTL_DMC_PATH);
>=20
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
> --
> 2.34.1

