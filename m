Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A8D9B5A52
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 04:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC3610E73C;
	Wed, 30 Oct 2024 03:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4PT4xLX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A3410E0CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730258634; x=1761794634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vYNUNApaY3YI6cXiIi0sckr9uxk5jXqFUJEk9Lohink=;
 b=d4PT4xLX44j7kXhGGqFbP31ucP5Hm56njbkDfCjk2SOGnGq4JrTA/stP
 qwbs90Gm/qZt5lpw9jH7ibGJtHz3aNW6lmfGROmEXNZKt5lZOmZTh7ABS
 sNIRl7wmHQj4PQoPAVbIeKD9ixj+wkuwjkxU+20zmDQ9wlHVTjv5tl+aB
 t3GeV0WYLCUQvqHHZZ3180/bOLJ21ai2fa8sF2DuzFc4DKxaYlTzjDYMw
 fBgjOClUqp6sKtcvV52s82/VWOS8wZgYP4e8++o9/s+ZdFocY9NtDankH
 8fZ16Xps/0w+LJfyhUV3qU7aBgvHu8lhSpUWr1RAhy8Efz4zNlZ4SfBx7 g==;
X-CSE-ConnectionGUID: SWXSD6UXQQOz12EcIqonPw==
X-CSE-MsgGUID: /0a6+Ck2ThGt+64fetoH0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29842702"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="29842702"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 20:23:53 -0700
X-CSE-ConnectionGUID: t6No7bSjSIO0TFNYuzeGog==
X-CSE-MsgGUID: hYewh0BzSoq7wZBhY7Qlzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82588700"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 20:23:53 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 20:23:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 20:23:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 20:23:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3Z12tE/kh4HbJ/UpbmuLj3lmrZqU4MBbyOx1EdQCk5+L9yyGaRddxzIGA9e0x5qbIOdaH4asXqBbaiLY9F6mLZfNEXBq0OVFaue6xqRlNLJwHPL1wmIjI520WAPH0Ihvv+0IGEZ3fITM8Fb8TI0FXolcZQJK9k8DdXko8j0mAxJhp9tnPQX934bRz4JK+eXTQ3CxYvgHv21328inMJRPPCzAufY5L9i+L8haNx0y2VKnQPpqzV8otumgPR4eWJ3H0kZEnKlKgb2cFn7gdnj8AyI1XZzSh38eW6lzBaHqUWcKmXN0T7QwC3x0ooefo81PkO+7ZauZf8K6GaLKyQN0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d52rbgk5CLEEk82KJ0UGz2cbbKEDw16xE25GFMlhzl0=;
 b=YmwSGev9SSahV6Lzth5SwunR9Mp6LXtLttasxcAW7w/1wMdEND3hhRQgs//Yz3/UCHcY4V9ATRxS0sKF+aZ9m4IJFeXcv+1mr9Dq9JXjfDDR+wRRTij88nX4yn0B7rzrQeOL/fgs8e+ghDIxwa/md1pdXOVoan8q/ndMHPUNxPmLpMDgkt0pW4b+SI4uid/zxpmwfI9fB3RTdvulKV+XM8fCHC78j1iRJhyQJ37Mc9G5Wq0M5AhqJx3gPESi9ZswqIfrg49NSh4MZK3Dfeo3mRr9zTpLxHD+o2jnJbwYboccx36XP5E+XKlXb95LfJKFfGtJTuO8hI00SfyFWjsP4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 03:23:46 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8093.025; Wed, 30 Oct 2024
 03:23:46 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: RE: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Topic: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Index: AQHbKcIzOczWSUrn+0yR+ewIDUzWv7KeoU0Q
Date: Wed, 30 Oct 2024 03:23:46 +0000
Message-ID: <IA1PR11MB6467E6D650DF17F011373692E3542@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241029050030.1413662-1-animesh.manna@intel.com>
In-Reply-To: <20241029050030.1413662-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6473:EE_
x-ms-office365-filtering-correlation-id: 0b952be6-b4c0-4157-2801-08dcf8924394
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iGF7oLAVtr+u3B5I80Uy5g69CZowX87RO4+dwYSpJLVXfRidSHLEvllLbPI8?=
 =?us-ascii?Q?w/lOnYzGIQUpl09IYX6ZQKJNu0R2ufSesAQ25Cd5NNjZjnuKl+F2GMOY+Zs3?=
 =?us-ascii?Q?FSuvj1j8RgdgumtqoWlqz5GPgkFnJyfbjc6A6RnxD/rj5vUk1fc4bLPYmRWf?=
 =?us-ascii?Q?9THQd+6TA0IsWn6FwYw9Yyo/GG+svnlmZbuunDiKL4EsxASy/DFSbrybjfzh?=
 =?us-ascii?Q?1WrMEm4COVuLROW0pZELDGNUE0cgl25ebLogkAdYUbuG1yTuNw/RUrrm/nW8?=
 =?us-ascii?Q?3JVnwl8U5FftdcJ9dzTERn6eMHiiDb7ZhWQ/RLKf6j1AeV1YLz9ZnYBWZTrV?=
 =?us-ascii?Q?rS2aq36k3FrJTCJ3P0m5+o1HAoUEE97ev7Mq0UH8QGcBw1tc6ffRm0OTgebU?=
 =?us-ascii?Q?9jOl//OJjEVTrPES+rgRP7c1CIXvXwF7aPztmm3o4aMtZkaWz4cnu9pu88nl?=
 =?us-ascii?Q?UZOsu0wX7gnsE2O7HRPCkYdNHXUohDim5iaSRImDsNzpTvghH9NjG8SOGuw8?=
 =?us-ascii?Q?HQhBbvJrXWA2BlK40uVZulj7qY9zY7hOCTR7bBms/YDJJhEUmhZgGdUgBxtP?=
 =?us-ascii?Q?F7g4ZAAaRLMdFSdSc6T83lFT+CU577t14xkSpdO9hRX5LRHVvvvLlJ6lGD+w?=
 =?us-ascii?Q?S48j+nVJBUPAW8/nz7Bc5ORCIV4rjbNT77agmLZhbn6WFoglpmL/FHl4Sos9?=
 =?us-ascii?Q?6aXtQZjEim1X0nleucGc1PVM8ep2XBcL9DUdw7abU4HkhzBy91aSjgqcTjxD?=
 =?us-ascii?Q?DBxpawQkuJfum+ICfR2Uc/hzDa+N4DeDIUuUUXILRg2npWwkedJVNS/JmTCq?=
 =?us-ascii?Q?aJO1iz6MGIjdxNhFO13VuE+bUOQmnWI/CWaGALOEVdz2wedcC9j/j64PMcrV?=
 =?us-ascii?Q?ibFD5nxtOoyIJWx1hIP1WaNZTyqN+VOqnVB/lK3gTimwFGhmM3uEr5MXh/Vs?=
 =?us-ascii?Q?/8tj5hasVdXoYsw5y1maQi6VYYACERC52aubRHWBHVDKom5eVueMwdISKK7y?=
 =?us-ascii?Q?8Xm1juwT49k0bbpTCBSw0IUIId96MO676FhsFTRH/3qZ4uLpQzC5BJCsyf6u?=
 =?us-ascii?Q?5vukpKzLCOzjg5rG7+QfqSsm7+scOb2uMTxX5Vybxde/jPd2L2twfVv3xmx6?=
 =?us-ascii?Q?wsxXqZ/wYUpNry0lZBZJ/mxqWtgi9w/ApDwG4E7dWgjEizavO8A1X2S2oEQH?=
 =?us-ascii?Q?ODyVQjNV5FM8iM+ZQ37CwWmAE8HJtBR7sxf/Z2puCfI0+Niw0cJf98OXhLQW?=
 =?us-ascii?Q?1z4aOSTLeBqCHdIqIEfaqdIIpm0y8bt+qSO1goF4wIWO0WJ0GVGXvxTnQZAI?=
 =?us-ascii?Q?Wy3lDl1HYHRFLFRtyGzaZNLujgwdgPkaL2G0FdMnvdQR0sWb8pgYMHGQd7jK?=
 =?us-ascii?Q?sFM0REg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4Y9dwuNVxBtdY/05k2skR7cvFoFviIOGXmZzLT9d8JJ1qE2vCU3MInkscfmZ?=
 =?us-ascii?Q?LQu5g7KEK/h78u8podSAvm3/ZahX2Ccx+l9IFOVhihQpiz4K76zbEN2DVEwI?=
 =?us-ascii?Q?lQ9gGS3XR3Hvmw2iJ4M0lgdBRHblt/MHkVyAm2j/RWBBkOgapaAB/kCj+47m?=
 =?us-ascii?Q?xIDdYxuxDhrEa3ZG7/X/a2IJyUYH7FvPnRKeEUZpywciDELM1TslK+fgoCi0?=
 =?us-ascii?Q?539XjNy9qbFypF/uOayatXD4YD8O5s4n17yTIfHUM8L73SxQBQcHW5qU2VtI?=
 =?us-ascii?Q?cvw6Gp2FGkwuL/knLnf+AJ9Af4WKbnqA1S/udd2G0H8Eqjp3wzf2Mb1+SwK9?=
 =?us-ascii?Q?O1RObCroKwH7j49uj406rDNKQRBDHiLnr7xmlhaoZH0ajV0GNA0O9OIZLEQz?=
 =?us-ascii?Q?dqd0Q6uVkwbrfhOCR1clBy1h39uIZyMWaCzdUgeWJiqOphO35h3HkSMR502M?=
 =?us-ascii?Q?3Sl4hEjGoSD7m2Ewn7JJrvpv/btYYrxef7DiKUjX8BdlgyFEXU4chxdi4VE6?=
 =?us-ascii?Q?fWgS/LHcqI8Ve5GNlsc4jIS58Ccs5klH2KZdIb8g4GLSPILeYFiYAF59PO3K?=
 =?us-ascii?Q?CeEkYayA8V2pxatVYdTppFLmi70FP/9OHtCgAWdyzE+RGTTSqTF2UIVhIe9J?=
 =?us-ascii?Q?rerMpkfDntIEELRE9HXPgvNmulYKOMcb7pUY+bA6vm1QACaiWPI9EGWBWePn?=
 =?us-ascii?Q?KCrYqUGqJLSjxp3+ejkPUWcOuaWwW8ybJCafwulCrXZiz6yNzDjclXccsOyC?=
 =?us-ascii?Q?Ho9kJA+FiZ7Q6ocKNq4+TmO4ACXXOxV9YJcKkpkDnjL3ZlKJhU/3BwSAkOQU?=
 =?us-ascii?Q?tZVAVILQqdcYANEEbrJ823wwwVsNqA1Z/DD+XLocCrIk+lHKYu8QYPPMBrKI?=
 =?us-ascii?Q?LFbcE6TUuRVq7y68sf2V0LqNrWsAjxIHnDKvZwXMuesVXRonVhwNorHtckuO?=
 =?us-ascii?Q?qIQr713EUPwwUB55j2GzXc4QNDX9hzFuGbKAtCM5FcUeG6u6N3rHRRr4xYFv?=
 =?us-ascii?Q?JtqVdvkLtqOs0RZw4p9RotC5bsJKWEuFylmPwajA0VxbvzOoyqo++gbR/lzp?=
 =?us-ascii?Q?qVyqlsI4MjAIyS+QgiiPyGFt9P9HvZaZZ+98tCvk/L6zHN/K4ZFPGgwwtGkj?=
 =?us-ascii?Q?AHBjO/2/EMzR8GWEO0UCi5h98fLJ3ade5kaed90eWjfPCMDeU0hSqjYSHcdA?=
 =?us-ascii?Q?5Hc4jGPyVah/JNWeW4GI+bnhup5Y0KKXBL//nkmevN4Rg7tXsPH+cKQbXlo9?=
 =?us-ascii?Q?vysEw3RdwY12Ut0vO6EpzxokJOJIRQMfLDp2at648trqZcdwb0RqzJh0RTa4?=
 =?us-ascii?Q?HXFEX0Pdir9HB5UzYE/thd2MUkperR8wyqvYimi1JfhtOUP4mHB9jOqqbif2?=
 =?us-ascii?Q?EAKCuWcrbftCf0Z1FuEOH/V3y1jZ5VjJdZBFschQgZKMSv306g+lwE7+0t4l?=
 =?us-ascii?Q?anueCvxVg8L2rcVPq8wPUzww4oem+2srG3xIGH4y+PoNgvlAJtLSYZqiCTKm?=
 =?us-ascii?Q?G0ZNnsK3/pkJNnBeEMiOEoEp7vxBiSZ7MOnvGp2mE1xjiqU3sN+SXMPCwMIn?=
 =?us-ascii?Q?854Z5yY04vBpEJaxiUQuJd7GYm/mjuVguui6e2jl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b952be6-b4c0-4157-2801-08dcf8924394
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 03:23:46.1849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVW7RGeB+9HPIAqOJbHWOnh/sZWNveL29eQdvYMGbXljpUrksAkndwncg+hhYnm5dc/gndC6XYGnK8/qL5myYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
imesh
> Manna
> Sent: Tuesday, October 29, 2024 10:31 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
>=20
> Issue is seen when PSR enabled with setup frames and when try to disable =
PSR at
> SRDONACK State (0x1). PSR FSM is stuck at SRDONACK(0x1) for more than 5
> seconds. Issue not seen with Setup frames disabled. Currently disable psr=
1 if
> setuptime > vblank to workaround the above issue.
>=20
> HSD: 16024594674
In the commit message also mention the wa number instead of HSD number.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..887fa8a8f878 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1640,6 +1640,15 @@ _panel_replay_compute_config(struct intel_dp
> *intel_dp,
>  	return true;
>  }
>=20
> +static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
> +					   struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	return ((DISPLAY_VER(display) =3D=3D 20) && intel_dp-
> >psr.entry_setup_frames > 0 &&
> +		!crtc_state->has_sel_update);
> +}
> +
As this WA is applicable for LNL platform only so does it make sense to use=
 DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)=20
instead of  DISPLAY_VER(display) =3D=3D 20.

Thanks and Regards,
Nemesa
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state) @@ -
> 1686,6 +1695,10 @@ void intel_psr_compute_config(struct intel_dp *intel_d=
p,
>  		return;
>=20
>  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp,
> crtc_state);
> +
> +	/* Wa_18037818876 */
> +	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state))
> +		crtc_state->has_psr =3D false;
>  }
>=20
>  void intel_psr_get_config(struct intel_encoder *encoder,
> --
> 2.29.0

