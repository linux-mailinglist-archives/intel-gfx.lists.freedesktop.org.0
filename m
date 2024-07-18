Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDDC93477A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 07:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1B610E529;
	Thu, 18 Jul 2024 05:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eMsglsLt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22D610E529
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 05:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721279904; x=1752815904;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iZDg3k5QE1xrTmK+YW2unO7W8q3dJeShkzv0wM6EquE=;
 b=eMsglsLtDczqDtDVnfVmg0jjo+T3pHi1tdyH1ITnL3vBtaTczIlE/1Fe
 e2Lt8FvF0NFccXjzzlXU8eEJhcYeGJ5URQvJSRMNgKnIUQx5vZ7L+9cWx
 Fyby1vs5KuwnJkt+VvF2imQTmEfwFmaHgo5Ez9EeguSCgZDrp5Vw7EVSS
 yYyt4dnTkDyVKMDmv4uCXixuVAiiLnftJMffYvPXV7oNJJaZFlTwAPE8v
 Awfc/nd61WKE+zO9FjxSQfyTM6wphPxoYTcPSO5EsbF8BCMQBGl5IL0lt
 umufD1jGzw0jgNVqBN86fdq9HjIVhEF6+MQy2Yb0sXzeG1/5XKibBn7xD Q==;
X-CSE-ConnectionGUID: XcpImyn+Soa9wzNpUGL36w==
X-CSE-MsgGUID: 8z899AIDTECyPHmvAr2CYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="22629539"
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="22629539"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 22:18:24 -0700
X-CSE-ConnectionGUID: qeCpe6DjTtGhSQ9nJRitdA==
X-CSE-MsgGUID: 0srO+5/nTRGg864YRSeGiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="50509079"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 22:18:23 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:18:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 22:18:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 22:18:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPFwmARKpOuYLYWEN4iYbnnkxdiKUMINO07upVYha0tSl0FEqANSP4U6b94CTLmO0XEGlAE5Sx6bzwDcVb6fU5oUCvWYzrd+iqVMg5B1e95ao90Ki25x/Cz++BvCVTgcIH4I0/ozx6/gCYvCQOAHIDR8YankLdayFlvY5lLmoRJ27to40jE2Yz6RTwIXIEkvz6ucEimlGkCyr9AHsrwI1OEqJ/EYNCKwuy/Rsl2NOU5E8Sboh1Nm1pscVd5T6qgt2v3cpdluvVNSiio9V1Uba3B+DvXLq3Wg4qh7ffXPg+EYQHYV6ITQXsoT0iATotTh9up8lnFfMJ8boROtYRL5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qem3eNb0JwPqo33glFF3oYvo6FCuE8BBCkFtf7SXFY=;
 b=GuUM3eGgqGELKZT5YYBWSI3G1DPKQB2+DGRShW3HIVJGpuC4UVOBa2Kx3cycFn0EOpdzL7arjy74BkehQQ0FTkSI0uuLZ8CiLYnuyOOgdzSKgLVfIPmFZ2Z0Kn2dGoig4yyi/ovF770JAotnGkO/qcdOwPBK7IlmyGLpDT0RCnCTdljD6WmPZvVJoxU/VA1LWVAtJWInppIiamNAinekH98JkvG9rSpgW6+oi2stTWBusm41ZbpS9GxO4RaEsmnLPqZcBad+UllmPPpeB0sOYAwEJAl2wIxomOycPt56Wbfhw58rXsjdMBwDNtZE6TRrL1YrBgjZSxlkUirZ7V7Ckw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Thu, 18 Jul
 2024 05:18:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 05:18:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/dp: Require a valid atomic state for SST
 link training
Thread-Topic: [PATCH 2/3] drm/i915/dp: Require a valid atomic state for SST
 link training
Thread-Index: AQHa1GN+rfrK6jF16U+NBvN7mJY2Y7H7+uPg
Date: Thu, 18 Jul 2024 05:18:20 +0000
Message-ID: <SN7PR11MB6750D9AF501A0EF8CEF17319E3AC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
 <20240712135724.660399-2-imre.deak@intel.com>
In-Reply-To: <20240712135724.660399-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7945:EE_
x-ms-office365-filtering-correlation-id: 69441dd7-b7e8-4975-188d-08dca6e909f6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?I49mQA8kLsx3Ie7jD1Ww+DIRKS3f+YAtbv7zqHygG20IJZchUQ4EAlLmJprh?=
 =?us-ascii?Q?OKk6AxlAKZvsaemn4nvohwyiKDW1wNc/msLWNAgYMBj6xNmg41Che07bYD4k?=
 =?us-ascii?Q?PyoOquHu592AQxunAW/+hGkz4o7Q4e68iIOslUjxLAv8ZxFeCZfJj/y5WOWN?=
 =?us-ascii?Q?2VsKYjXTWU3TM9axjhQF4OsKwINMfTJyvaYTG+SvijOhh6ZSG2n186Q55clv?=
 =?us-ascii?Q?gqAfFmOVRc/j6KIkbBgAMhCmgwMjmJNThm4NzZjMcnB3RsFmJ7xokZl4DbVB?=
 =?us-ascii?Q?YJ0wjhAxvZEp7lf2ym7JUV9yQJSV7Stwe6byxKyOvqYaIFCzpvrj9vr98we/?=
 =?us-ascii?Q?B9FLCyN8wus+U5FwojfBf9s1fRM2mppzITIgvbp0JJRsimCF4UkDsFSyB2FR?=
 =?us-ascii?Q?DfaWmY9tybtOb4l2L9oOwzZfvlqRlY7sESCaU2VE5x+7+66eTstOowHwrDeX?=
 =?us-ascii?Q?ug1FMaZ8jeSYAGhRLxYnIwZIf+eVZvIt0/zhu3o6RQOv/9ocRMly0UmE73h5?=
 =?us-ascii?Q?rSchGFCdOvVnEEMZXHcCMfUftRT3uRRzLnJkMvzeuj/tmkx4MGyLXBiZGXZ4?=
 =?us-ascii?Q?ph6WQSul5pf8misHWeH/LXhoi09067qaHwBcQLYqY/0cU6V5fb46TQNiHVg/?=
 =?us-ascii?Q?eLL+LkJzg7khwWsi2xfZrKQVvQbgKYyZmQ/F5ixNFL+DsK8CFW6X8s7M3T16?=
 =?us-ascii?Q?/fsPfJ0HWfyE6tdf2jAKqG92ImCFzWFbDBZvpIwGMHFmmn2fcO/Ufz9PmUw+?=
 =?us-ascii?Q?ilSYKw6RPfoyFBwgOZyzMxHWrNUjxLD8r8FPaI04qpnCJGxn3alOnWi0mSVf?=
 =?us-ascii?Q?4Qge2WIThxcJZ0csTWeVGs1m6sE8VDi/Av0WR/fEsg1+yPpumlTny13cU/l8?=
 =?us-ascii?Q?w9LIyN4f8l4d3Qd4uvavOus1RxOY5Qi7nwR3C6w2LQHsxCWmh0ESdXDGVkGg?=
 =?us-ascii?Q?JYBJJbO1KFKC39ceG25bTy/VeTT2nitUTBID0xhdVVv40XLw19mv3oonH4U3?=
 =?us-ascii?Q?U7GTQCzDMOuMxxoRmD0G/4AnR9odCWmRE21EAqGE2S0GuJ3+Otrq68dx0n21?=
 =?us-ascii?Q?3OeHNsUaHWFAY4eISUYs9orHQP8pveqdGLGHaZm4Vv7sJ86CECVpRDR0EFcc?=
 =?us-ascii?Q?NufKvCrwkRnfdqCkY1fmpbp+NR5nQT0FFzDkS8U6DF/1mBc6Q/DxrKimX9s9?=
 =?us-ascii?Q?JuGaKs3rczLNoZJcBGGJaP3XNbhKHkx2E9xWPG09be/jFAf8LJuszOkpMp1K?=
 =?us-ascii?Q?O84gL0PqPbTju3Rn2UeuD1ipDYXHX1W6hN/5gohE8DHEDKaG7popxCZcPZ0J?=
 =?us-ascii?Q?9HyKdkwf8o7SN/xbYYVGHI4S7mU2YpCmddn2dqWW18A0OX+8jtOL+qUqWOeR?=
 =?us-ascii?Q?XCj5phHJotVjyLksWcy9oFiQO57/iH07YSUdJZJgOo+zQqzWOw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zgsBg0HgUjI3OSB0/LpdichEMQig1Fl2SLQeaatqXaXgqrlqeLDDd7XjkaTS?=
 =?us-ascii?Q?3TO+c6bvqrwGM8AHYvzxFrxGJ3jeG5MieLBbgTe3GIYaOADsbbrU1Zq1Jv29?=
 =?us-ascii?Q?p/6GxgaVkduiwltcyOqCeJHuHSLSdIBNVnZE34aU9eWJukjzEXR1mRWZClbO?=
 =?us-ascii?Q?EwHXEwv8TQvjIXObS/BWDRj6Y3pkScfDlyqk0IEZGZW8HzwPntofA1PoTP7c?=
 =?us-ascii?Q?0S4wGWmUYe2JSzmvFH73WZ/PtIptPnFKsY8eDrKO9wh2TITJfA+KKhVmH6Mi?=
 =?us-ascii?Q?x6ZwQUggl6PO2XzzZjU93MI+BmexQD2qijRNHG2ntYivxaumc9+pPzi/KwrK?=
 =?us-ascii?Q?gwrDAvC+RGKzQnExkniMo1H5sNCPaIM0dEwzm/VKlV38zWvf5t+AkgDlTSTp?=
 =?us-ascii?Q?WuqNcdGXughnddKA7NXk4/r6FNgOz8LvHmhqJSVN7r1NDUf+a1MgI3wbXQSu?=
 =?us-ascii?Q?x6A9t1yKej5HUcDXEiPX+Zg5ckyoOChZHzXahXMiE+aqv+QSL7IKkMcaNGXe?=
 =?us-ascii?Q?kHXxgVgymXFt5GqbwFJep/tAEOEu8GEf2OrGkjxE/xxt7DtnVssatfQ+vGRl?=
 =?us-ascii?Q?UKjclqqta+/YOQBMINySjxIwgZenClyWuQmfcXAwbIYK9W+lPGAfhsAAFrTw?=
 =?us-ascii?Q?IVeHeNV8sWDjJMlwlwiluiwe1olxMe9tRuRsVfTVs+jK7dhTlS2oN4N3dPa1?=
 =?us-ascii?Q?OX2evrCvVdvtWfihG7ATLbKVJ0UAqa8mItXP1wkNwR+lZmtHyL81es6DZJqL?=
 =?us-ascii?Q?hlY4/Q/1x6+3tbzpafHr1tbIcZBEcGvNL7aOmgzau84kUC4hA1HRo1OiSU0F?=
 =?us-ascii?Q?1QLKt5PEkHZbN0JkBGslQjjzYQEnU0gSdkeJXjsvpP1ijZRRzj7iQ2W9yKol?=
 =?us-ascii?Q?hz98rv2oUTC6ihVNCN6HKSMyyPW39FaZoZv72eGvsWbC/lThvm45LzSInejf?=
 =?us-ascii?Q?lIjnkeniFs7PhznCa2s6aoPboRWQYf8XcxHHEzdOoCv/LURYs2IV3pYGCbQj?=
 =?us-ascii?Q?l+5rJgAJF3E6qmJ+BTK3J4iYG3R9iWJJWWa3cnL9pqMI1bWfWI6YxZADbKKX?=
 =?us-ascii?Q?xywap+nSnX+TCxLJQtFXTNuOTPURipLXQbIBS68CD3MtzXAecV5J6OCnBgR/?=
 =?us-ascii?Q?7dqMFHmKSL2rQUyfQlaSvayacysK+rN0o89iijGBEvhcfubYnnSRPSEtczVJ?=
 =?us-ascii?Q?YVut+yHa/IlUFUlka4Sn6RUPCHDqGGurKeGV9lIYueYTENP87tW63gpQqhE7?=
 =?us-ascii?Q?fYOTOOv5XVsi/qukE9VZiebcz6jgCBkIgdX/DRdAt2D0Rxg2+rXtBGuSCeP9?=
 =?us-ascii?Q?aJH2j8x62hdJJ1uHkE5TN3AbVGipSORCJOneoESbEbSXDmI7+QeTcaham0uX?=
 =?us-ascii?Q?V2sSOG1kODHmy3qjHl6w3DV+5FeNj080RlTxpnqE99yxAB80u8XpFrMi+BL/?=
 =?us-ascii?Q?3/TGS4THm68qhgAvjE35T/ymKxnFl498sKy99mhRIzmQMjZgF680YWezoQCx?=
 =?us-ascii?Q?Xo7gYjXCDvkihiB986rjDtKLXxE86yRY7lUHqeWMCasxaStgxaye8gwO00eS?=
 =?us-ascii?Q?C/axrU0TVJ4nA8vFkteC7qeo9jO9prWyynJcEyXb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69441dd7-b7e8-4975-188d-08dca6e909f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 05:18:20.3901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TzaxQk9KAjcXrJlrhnEAQXX84MEOdWwyphNQiosDfQMnTp/YvGrL3A+Q/mp9cmZ055JXeUPFx8dLQEkMOn63ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Friday, July 12, 2024 7:27 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 2/3] drm/i915/dp: Require a valid atomic state for SST li=
nk
> training
>=20
> After the previous patch link training happens always with a valid atomic
> state, so remove the NOTE comments and asserts which required a valid
> state only for DP-MST and allowed for a NULL state for DP-SST.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,=20
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c            |  5 -----
>  .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 --------------
>  2 files changed, 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f83128ac60756..0365fb1e77eae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2866,7 +2866,6 @@ static void
> intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
>  		drm_connector_put(&connector->base);
>  }
>=20
> -/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
> void  intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state
> *state,
>  				      struct intel_encoder *encoder, @@ -
> 2875,7 +2874,6 @@ intel_dp_queue_modeset_retry_for_link(struct
> intel_atomic_state *state,
>  	struct intel_connector *connector;
>  	struct intel_digital_connector_state *conn_state;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	int i;
>=20
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) { @@ -
> 2884,9 +2882,6 @@ intel_dp_queue_modeset_retry_for_link(struct
> intel_atomic_state *state,
>  		return;
>  	}
>=20
> -	if (drm_WARN_ON(&i915->drm, !state))
> -		return;
> -
>  	for_each_new_intel_connector_in_state(state, connector,
> conn_state, i) {
>  		if (!conn_state->base.crtc)
>  			continue;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index af0b71bdf1fcf..58dea87a9fa28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1234,12 +1234,10 @@ static int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  	return 0;
>  }
>=20
> -/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
> static bool intel_dp_schedule_fallback_link_training(struct
> intel_atomic_state *state,
>  						     struct intel_dp *intel_dp,
>  						     const struct
> intel_crtc_state *crtc_state)  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>=20
>  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base))
> { @@ -1255,11 +1253,6 @@ static bool
> intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
>  		return false;
>  	}
>=20
> -	if (drm_WARN_ON(&i915->drm,
> -			intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_DP_MST) &&
> -			!state))
> -		return false;
> -
>  	/* Schedule a Hotplug Uevent to userspace to start modeset */
>  	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
>=20
> @@ -1518,8 +1511,6 @@ intel_dp_128b132b_link_train(struct intel_dp
> *intel_dp,
>   * retraining with reduced link rate/lane parameters if the link trainin=
g
>   * fails.
>   * After calling this function intel_dp_stop_link_train() must be called=
.
> - *
> - * NOTE: @state is only valid for MST links and can be %NULL for SST.
>   */
>  void intel_dp_start_link_train(struct intel_atomic_state *state,
>  			       struct intel_dp *intel_dp,
> @@ -1536,11 +1527,6 @@ void intel_dp_start_link_train(struct
> intel_atomic_state *state,
>  	 */
>  	int lttpr_count =3D intel_dp_init_lttpr_and_dprx_caps(intel_dp);
>=20
> -	if (drm_WARN_ON(&i915->drm,
> -			intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_DP_MST) &&
> -			!state))
> -		return;
> -
>  	if (lttpr_count < 0)
>  		/* Still continue with enabling the port and link training. */
>  		lttpr_count =3D 0;
> --
> 2.44.2

