Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F12C4B901
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775AB10E4DF;
	Tue, 11 Nov 2025 05:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZ4OdpyY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE79110E4DA;
 Tue, 11 Nov 2025 05:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762839838; x=1794375838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BYpE/m35LGgYwl0E2+55gTT9NPMzu3+0Eyeccizfskg=;
 b=KZ4OdpyYYh/gRzFpy3k59dkFdeeJUaba08ZUfcS6lgu0/DWkTfWQhNNq
 ivylfcT67qRdsXBHV9QMjnrJsmiIZjG9/TRwmZ/TrW3IEj8D0wN8lO9nd
 8rptnAQOS1lAzLMpIIgRLVcUPRbERidL0FgU59Hc8TRgg6hw1fUSUOnhn
 7On3XRTyT/L7sj4S45L+hl8ouqlmXwuJFmWTNakW0QxONIW/WfMVJMgyQ
 DG++JqSuQZ/m6ZeuJC5n+s2oXO7bP9pH32uCUJiuxN50/m7zwFe73HoI0
 u0I+S53kFzYuzO3+e1Nr36h93N1oqbizMKcRb7lRylfE/NGXWYS5zVV+K w==;
X-CSE-ConnectionGUID: 8bLiaNt3TPCLEWay/pzhIw==
X-CSE-MsgGUID: 08oZTQkHQguAJLlkhvFr7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82524743"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="82524743"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:43:57 -0800
X-CSE-ConnectionGUID: CSsi+Id6QnOYJBTid9MTSw==
X-CSE-MsgGUID: OWbVJtAXTQO8qDBgwLo6Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="194058088"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:43:57 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:43:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:43:56 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:43:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cQp9R/NFDmTrFGoYnrkvn0mXGt+hEAOqB6CcdiNpU7SpzvaVK1M3VyhP2AQHFpHx2dRwTtIWTDoMYWAQ1uIqq7WZzJ59yQ9+hA/ZU1YHf7sJDkhwb3mDqaWsxhM9gkv/ISNwqXiYGhoyAeYEfwQ/oUicZRdCHsxOS2bYqOlbookUrUIVE27YXgr6puoxs+LQ6FGYRGPPwBQVpi7gtSxrS9urbHE95HMfUQ4RPT7q29VcXhndeqrW8Udk6Sw1iTFcxVyfbFISnfKsmtH6LPc1RNhI4IIgLM7wokZmoSBGsrlnSg0sS/1ntneMo2junUu85Q7zRPzTv1/yuUm3fMUBsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ne8BPdcTSoR53F+KZD+4mwVInDr2PIg3ofeK7dNM2/A=;
 b=a/MElu2oK6344+WIkB6INObEGyxkQAGmn0OSrt9Azh7woW0ScUjynN3UB578oq+cDPMA2fnTxZiSDg2q1UKwE9UfKdeeQ6o6xS1qm6tjgWy0Z83uNcYQ+PqD+I7l/atDuGkHMcXp9A2HScDCxLGkLlLh9WKROKMXPURbW8wte8MbKwN5aCkYyQ3vVi6Rp87vrfYnbA6sMkp6UvBcInM6GbuRVjnFsGA55q4KAHQ8Al2ZmHY2/hAktuIDqy6yIBTdhrJsnfcT8PHQLrIYoCyVZk9BhHLp7wMIfQ3rd8kUSsYtpnzctHPoUsCCkARvmBicvc8QMWpwJZfm93DHHiZAAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB6672.namprd11.prod.outlook.com (2603:10b6:a03:44c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:43:49 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:43:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 05/32] drm/i915/display: Track the C20 PHY VDR state in the
 PLL state
Thread-Topic: [CI 05/32] drm/i915/display: Track the C20 PHY VDR state in the
 PLL state
Thread-Index: AQHcSl7m3NpZWILVNUKRoBLTrIQXcbTtByHg
Date: Tue, 11 Nov 2025 05:43:49 +0000
Message-ID: <IA3PR11MB893703926EA8302EA9489F3EE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-6-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB6672:EE_
x-ms-office365-filtering-correlation-id: 2572aee8-bc43-4631-210a-08de20e54a19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?tngy1+Tt6lpwbGRHUHJgCgN219UdCX+ojujMVtQMdyrimMefB86xNJoNcDEQ?=
 =?us-ascii?Q?BpIXVI65jjY4nVGeC4u9U6M2rSugk1bZfeGEnhRrr327uPMro56Ppbo7gWP/?=
 =?us-ascii?Q?CJRCIEO1qjDrdpmw/cCECToQcHJrDpExQv/x7yIyqIf8KC7rCKy6bJJDLP3c?=
 =?us-ascii?Q?hkcjI52KsWQN7OZ+Ri/oKVTUTiv5dRhB7C8SQdPLaQNNUV68rdZmPo7V6tQE?=
 =?us-ascii?Q?ru5mT0/WKl9NlwHko4HXsTHvaYs1dBIO8Gsx7mfNtMwIg3aR+p1wLTTgtwuE?=
 =?us-ascii?Q?hS8Gh2/80Kccc3IA7xX8L6dUOwgCskAV5eSLmQxVfG/IoGetIGqc2U9D/Afl?=
 =?us-ascii?Q?6ddxibGHTwccmi3cpxSul4+tVpaglhwbsplM5b/huJ3fFmS6hT9p7hxI3CRc?=
 =?us-ascii?Q?wI7GKpM+DNfKI28PK0S7YYsGyBN1FweT4SdP8eSnJd8fS3PodEKlOvqmgvxW?=
 =?us-ascii?Q?MIlfSWDUdfJgh8IDLFe+JN/7HqYI9+2YgZeqdpKuaMdB+utANa/HIT18VmaH?=
 =?us-ascii?Q?sc67bHmh+PEtocFCF4+YhPR7CtjMPOmOhgagPGEL826HqVkaCNGWLmmOG8Ws?=
 =?us-ascii?Q?1g71rjsa+kXOQA6rhdEE9zzMUeDxGEXUxjpxCmjNzW4leezmbDpNgYwU72Zh?=
 =?us-ascii?Q?jDG5u7YCVsP479NxcQnjbcpctB0v0o0323vrBBU3ZnC9I45Cv0wFOetIgdK8?=
 =?us-ascii?Q?b5MuVwmuO5znfzbBC8tKR0uExZu6daYDu05DMKKeGBP1o6TQnpasnWVgkERU?=
 =?us-ascii?Q?3/B8yfoX15mWM8u8FfvSmTmvX3FRsPmYQNA/n+AGwiXhj9J+ukrx2bObLAIU?=
 =?us-ascii?Q?8FuDW7AF3tcLn3eDir6ZbyjIvtJ7eYLcntimqcGP7FwfcAeVqEF/nVY7U7e7?=
 =?us-ascii?Q?I7xi1EpMtDmib88YEdZptk8QJC92WfjShE9z+CrA/UrOVP54nJqKFGWuLk6k?=
 =?us-ascii?Q?5WrY+hd8EoPg7uTf2g+lpC9YqLM27B5b7ZDqfWDwIxoNzoxZb1DzpqeMr45x?=
 =?us-ascii?Q?ZdsWC0x4P+JZ1576q0tWNEBLAmzyBmP32XwSK4OWxVbDICUHm5reahNSB60F?=
 =?us-ascii?Q?aiV1giL7+TqSNb8WYg5gtHxa0k8TtR16ApyM0/RgrfrCXxJyYF8/Z66Zzz0t?=
 =?us-ascii?Q?snY426zBvxXh6jL6+l0yxB8H2ixHqHClqLJ6vlTjBWHfT8/GYwaBDg6Sx1qu?=
 =?us-ascii?Q?IUCH0xGPUJk4jAje9UO9/pB+Up76iIHsCZLEvY/gxV53SaavBKdq57Twr0db?=
 =?us-ascii?Q?WC+DZleHiLqCIz42q3beeofRM9g8QHpxQkNvDkqMF5A07SRVfK5B3yAY/FoH?=
 =?us-ascii?Q?a8H2TEWjjdN2FR2daCB840GnZvTHRdib/lWzuodsZ/N1XjulWTCohuS81/SB?=
 =?us-ascii?Q?lNLWqbYYkYdcqaoAxGFV/orMnI9cNkHZN2hu9seNFqvAIR/bnHtQ4z+hfpLF?=
 =?us-ascii?Q?b8a05cwXv4BO2rH/COkBcv4D29SERX6u0wbN927pYLCT6PuQToVXkVvCP+lg?=
 =?us-ascii?Q?DFjthWc5+FHNiyb4hrn4V6zq3Hs7DpNjeLCl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fE0ypvre6JiFAVNsa309AHx5TRFtrIQm9fHTwwOjKLUvL5RCUBFhjZwdalia?=
 =?us-ascii?Q?Du/CEitqNlBU11Jrxg1fylvImQ+8YYfh4bfsxXXmA+nNI6ZlGVP7RNag6pYV?=
 =?us-ascii?Q?ich1i1FckF6TRSPzukFGs61pq6eEvXLXmDDgjVgAav1fRd82TkuGYFKH4gFm?=
 =?us-ascii?Q?dKN4PMaAmO5VlJjUw96pcYlJoYK9Aqj+qJuH/vD8XbB0Yam4ygpAjfb5ZSpj?=
 =?us-ascii?Q?b47tTMvbfMTpnABaDGy/BpObKvsZiKUVgNmy/CUjLZHNSQEG5Dc3FUTuT8Pj?=
 =?us-ascii?Q?MNeTncG5RpV7l1f2UpoSa5fJLf/kqE+gy5dPLp+LAFRk/xVH2N/paLCMBi/z?=
 =?us-ascii?Q?js0YMbjfKToAD4+ozQK6x1N3b5LCA+FN5xS9OeNYPt5invjq47eEgiRgCZwy?=
 =?us-ascii?Q?z81TGnrJBx7gTda2MkP1WoS9cf/Lt5ukduZZBWYu0y1EZSL7i43pAtMtx6Vr?=
 =?us-ascii?Q?crJ2//E/BTMoelGK3amG5oKeHWJMHdMsKqKzI6XxPm/AYXiA3GXy0P+/Z1Fs?=
 =?us-ascii?Q?aZw9KHgDrtYaMNFJiESF21ZI1rWB68OO4Og4VDGG90AlW0fwQlry61uPCNTO?=
 =?us-ascii?Q?7CRj9MudrsXN8KIqdLaIvGLTPsyHrDRusgJP6u6SXEQyzvzURlAszmIgoigx?=
 =?us-ascii?Q?PRMZW7DUDicw7UPQOJZf8z51T1H2COsalK+CNmyhpsp8DHpkk6dnzWoxYnYN?=
 =?us-ascii?Q?bZNKHJlJZ5MgT+frFtRPd0zJQT10Jxiso79AazsQ4XD4Wj+fRTQFaEgkbxtm?=
 =?us-ascii?Q?fY8EecmUESnY6Z4T2EvZIofUUdH7I1tdiWguQW5ujS3NdmF20C/MSUG8deI3?=
 =?us-ascii?Q?WdQgN7EM2Cf1jJeuMjeLeAsXJ6lijGB6f4b2Nw9D1fbyucZd23si/sHjB3fm?=
 =?us-ascii?Q?8W1pAqUriUhnpzQsPz71gi6nhDCQTYvtLt3fJQ6BhleVkRIR1A0lgWQol5XR?=
 =?us-ascii?Q?76ncD+8ukq/vAt6KRARcD0ZCsWUexTuFuirxVV4BWra1ycfqIRoWqk0M8Li1?=
 =?us-ascii?Q?kRAF64DOPYrSjkbNwyvBSZLc06gJVciYyr6GRxRe0kxdh1Z72ezyt2fLJkpe?=
 =?us-ascii?Q?XyXtU9bnjEv2WoCrWo/zRZtj5lfVVB7WrGF3kUGSzizyit0cPkFqNqkDYs4Q?=
 =?us-ascii?Q?ulTupHno9dtCw/CT5bbp0+HPsTEMikqF6olyIHdEe3hy/4wlWbxib/vskehs?=
 =?us-ascii?Q?VsvKt6rwtORstMjJDIuRK2tPbBMoZLlQaot/avL5aou0+E8GbiZIOiZhogXX?=
 =?us-ascii?Q?yywIj4dKsbfNCgkUmGGCJYkcZTNe9cyw8Z/c7QKTunUN9nGdH76V6KgzM8Th?=
 =?us-ascii?Q?yaU9sMf51kWj31xRf5LU7Wr5YVX0uPURJT/tTgdlh36zcE0TOG1jAAXsSSiX?=
 =?us-ascii?Q?MnaRtBdSTJa4K3rvEOvfy5lB9KqPU2CI8gSuXP1GwAb2wsrLUiJ/fy1cwvCO?=
 =?us-ascii?Q?x+bT47eKlOXXOtufunbjRdGc8A3P/F6fIp2OI0tJOTthP7Gf+RRIm0LfWzmf?=
 =?us-ascii?Q?LIErLJKZ1TM9C6p1KXH4ysjOBTF2rntBo1JS9pFXqQWCd3SxPdxnQFlJKrZk?=
 =?us-ascii?Q?BEut+B83InqvyzM7zpxwr6+F88hiXeZXjDphppaY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2572aee8-bc43-4631-210a-08de20e54a19
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:43:49.5890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceWmQ+Di7k07AhmMbzV8YLJpq9y/EZoKXqcw+3NqAcQSZZxeYs9/DtNVuzIvcpobT5M6338Uq9eXUGdnCknohg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6672
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

> Subject: [CI 05/32] drm/i915/display: Track the C20 PHY VDR state in the =
PLL
> state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
> mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
> enable hook, so prepare here for the conversion to use the PLL manager fo=
r
> Cx0 PHY PLLs by tracking the DP/HDMI mode in the PLL state.
>=20
> This change has the advantage, that the VDR HW/SW state can be verified
> now.
>=20
> A follow up change will convert the PLL enable function to retrieve the
> DP/HDMI mode parameter from the PLL state.
>=20
> This also allows dropping the is_dp and port clock params from the
> intel_c20_pll_program() function, since it can retrieve these now from th=
e PLL
> state.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 115 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +
>  2 files changed, 89 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0dd367457f93..0ea9c33e4ce3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2362,6 +2362,76 @@ intel_c20_pll_tables_get(const struct
> intel_crtc_state *crtc_state,
>  	return NULL;
>  }
>=20
> +static u8 intel_c20_get_dp_rate(u32 clock); static u8
> +intel_c20_get_hdmi_rate(u32 clock); static bool is_hdmi_frl(u32 clock);
> +static int intel_get_c20_custom_width(u32 clock, bool dp);
> +
> +static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr=
,
> bool is_dp,
> +				      int port_clock)
> +{
> +	vdr->custom_width =3D intel_get_c20_custom_width(port_clock,
> is_dp);
> +
> +	vdr->serdes_rate =3D 0;
> +	vdr->hdmi_rate =3D 0;
> +
> +	if (is_dp) {
> +		vdr->serdes_rate =3D PHY_C20_IS_DP |
> +
> PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> +	} else {
> +		if (is_hdmi_frl(port_clock))
> +			vdr->serdes_rate =3D PHY_C20_IS_HDMI_FRL;
> +
> +		vdr->hdmi_rate =3D intel_c20_get_hdmi_rate(port_clock);
> +	}
> +}
> +
> +#define PHY_C20_SERDES_RATE_MASK	(PHY_C20_IS_DP |
> PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL)
> +
> +static void intel_c20_readout_vdr_params(struct intel_encoder *encoder,
> +					 struct intel_c20pll_vdr_state *vdr,
> bool *cntx) {
> +	u8 serdes;
> +
> +	serdes =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_SERDES_RATE);
> +	*cntx =3D serdes & PHY_C20_CONTEXT_TOGGLE;
> +
> +	vdr->custom_width =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_WIDTH) &
> +			    PHY_C20_CUSTOM_WIDTH_MASK;
> +
> +	vdr->serdes_rate =3D serdes & PHY_C20_SERDES_RATE_MASK;
> +	if (!(vdr->serdes_rate & PHY_C20_IS_DP))
> +		vdr->hdmi_rate =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_HDMI_RATE) &
> +				 PHY_C20_HDMI_RATE_MASK;
> +	else
> +		vdr->hdmi_rate =3D 0;
> +}
> +
> +static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
> +					 const struct intel_c20pll_vdr_state
> *vdr,
> +					 u8 owned_lane_mask)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	drm_WARN_ON(display->drm, vdr->custom_width &
> ~PHY_C20_CUSTOM_WIDTH_MASK);
> +	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_WIDTH,
> +		      PHY_C20_CUSTOM_WIDTH_MASK, vdr->custom_width,
> +		      MB_WRITE_COMMITTED);
> +
> +	drm_WARN_ON(display->drm, vdr->serdes_rate &
> ~PHY_C20_SERDES_RATE_MASK);
> +	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		      PHY_C20_SERDES_RATE_MASK, vdr->serdes_rate,
> +		      MB_WRITE_COMMITTED);
> +
> +	if (vdr->serdes_rate & PHY_C20_IS_DP)
> +		return;
> +
> +	drm_WARN_ON(display->drm, vdr->hdmi_rate &
> ~PHY_C20_HDMI_RATE_MASK);
> +	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C20_VDR_HDMI_RATE,
> +		      PHY_C20_HDMI_RATE_MASK, vdr->hdmi_rate,
> +		      MB_WRITE_COMMITTED);
> +}
> +
>  static const struct intel_c20pll_state *  intel_c20_pll_find_table(const=
 struct
> intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
> @@ -2400,19 +2470,26 @@ static int
> intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_stat  st=
atic int
> intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
>  		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
>=20
>  	if (err)
>  		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
>=20
> -	return err;
> +	if (err)
> +		return err;
> +
> +	intel_c20_calc_vdr_params(&crtc_state-
> >dpll_hw_state.cx0pll.c20.vdr,
> +				  is_dp, crtc_state->port_clock);
> +
> +	return 0;
>  }
>=20
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, @@ -248=
6,8
> +2563,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder
> *encoder,
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> -	/* 1. Read current context selection */
> -	cntx =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +	/* 1. Read VDR params and current context selection */
> +	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
>=20
>  	/* Read Tx configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) { @@ -2676,11 +2753,9
> @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
>=20
>  static void intel_c20_pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_c20pll_state *pll_state,
> -				  bool is_dp, int port_clock)
> +				  const struct intel_c20pll_state *pll_state)
>  {
>  	u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
> -	u8 serdes;
>  	bool cntx;
>  	int i;
>=20
> @@ -2750,30 +2825,8 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>  	}
>=20
>  	/* 4. Program custom width to match the link protocol */
> -	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_WIDTH,
> -		      PHY_C20_CUSTOM_WIDTH_MASK,
> -
> PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(port_clock, is_dp)),
> -		      MB_WRITE_COMMITTED);
> -
>  	/* 5. For DP or 6. For HDMI */
> -	serdes =3D 0;

With this 4,5 can be under the same multi comment now

Regards,
Suraj Kandpal

> -
> -	if (is_dp)
> -		serdes =3D PHY_C20_IS_DP |
> -
> PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> -	else if (is_hdmi_frl(port_clock))
> -		serdes =3D PHY_C20_IS_HDMI_FRL;
> -
> -	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK |
> PHY_C20_IS_HDMI_FRL,
> -		      serdes,
> -		      MB_WRITE_COMMITTED);
> -
> -	if (!is_dp)
> -		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C20_VDR_HDMI_RATE,
> -			      PHY_C20_HDMI_RATE_MASK,
> -			      intel_c20_get_hdmi_rate(port_clock),
> -			      MB_WRITE_COMMITTED);
> +	intel_c20_program_vdr_params(encoder, &pll_state->vdr,
> +owned_lane_mask);
>=20
>  	/*
>  	 * 7. Write Vendor specific registers to toggle context setting to load
> @@ -3098,7 +3151,7 @@ static void __intel_cx0pll_enable(struct
> intel_encoder *encoder,
>  	if (intel_encoder_is_c10phy(encoder))
>  		intel_c10_pll_program(display, encoder, &pll_state->c10);
>  	else
> -		intel_c20_pll_program(display, encoder, &pll_state->c20,
> is_dp, port_clock);
> +		intel_c20_pll_program(display, encoder, &pll_state->c20);
>=20
>  	/*
>  	 * 6. Program the enabled and disabled owned PHY lane diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index f131bdd1c975..43c7200050e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -255,6 +255,11 @@ struct intel_c20pll_state {
>  		u16 mplla[10];
>  		u16 mpllb[11];
>  	};
> +	struct intel_c20pll_vdr_state {
> +		u8 custom_width;
> +		u8 serdes_rate;
> +		u8 hdmi_rate;
> +	} vdr;
>  };
>=20
>  struct intel_cx0pll_state {
> --
> 2.34.1

