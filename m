Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91B2A87651
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 05:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D4A10E450;
	Mon, 14 Apr 2025 03:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NeNVw0Iz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DCC10E240;
 Mon, 14 Apr 2025 03:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744602552; x=1776138552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x+p9jblJoXomcMmTkoo9ykKilG9y1UjvOFzHxsemQvs=;
 b=NeNVw0IzL6Zp2uz55l4URkVtGW4wIXQe8VVyWxoC2VU5/vgtD4/3XVZz
 S/iRz6DAh2iTsEZ01idp1TH9Jc6tXhfha75B8zWQffHICQUOajzcgNMPV
 LxPArk6HfkPerCV+DNyfhAoydUE3lDuYfdZZGj0hWNDBalBXQ/tscpwOu
 ILVtBVZqcaKS3Qohusf3kAgtjYBAKARLCd8NWvDjrEGMkmbhXuWDqfV8B
 noftIYN4e0YvtGm7j3BIqZM/ig7P7XIFsP+6Xycp6ECvIv0cSHzFfFefp
 bDP9ms1+VpVI+xNjZ+Gpo1muv7mAflUU4yNTES0jaVHMrPRTz7LP7yt5F w==;
X-CSE-ConnectionGUID: oYba7u7LSOG4MvqGD35gFA==
X-CSE-MsgGUID: c0Iijr7eSNqkQej/SGGSnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="49862198"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="49862198"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 20:49:12 -0700
X-CSE-ConnectionGUID: julZHoIIQpO+nV4cdaIvzw==
X-CSE-MsgGUID: ed5ErQGKQ6+L7FCIoXyi3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130677751"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 20:49:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 20:49:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 20:49:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 20:49:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iBRRfzhK/zbCvRZa0Mn/9wWtnieIjSKwsCi41lD4z9OmKx866GXjjU6PLTNwVPSDT6XF9IgY0UB1p9A0H/j+jKChQJ/jm4nPMwSZSviV5+CNFgTcNIfvrfFeIysVyem7hoMVEhrtiNnSfEKvAnQW73JBG3P0vMWyXyxW5QsKEHE/SrSTZ6S29YHz4dlb9YGdFxqlUUTckZ4jAY43dWD1LslJhWJCtNEf23k889NXy4SIGtCqd6rt4zGgugbyh2RaxL8qNdR+ocLMVDTuS0mJoRaZuB0RG2XybcIPYgnpsOLnN/DHGHC7Y5T/eZvnwk+Hsedp6iIYyoTp7Kos84phWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhWd2T49BxzvA8dHoZQcimMvkSRRcBn5ZlRxx6l3vcs=;
 b=lH6m2Fd69OIhyh/HRPohmLgTaukQ64lXZSqahQih0H6vTX7jLflHBzxDQUqLlsSwo70nTMOTD3t+ug2Hb7GFamLg1lggVgjRnCJUirG+6vwSa8D41ElqVgPMVbrtRHKHdRX4Q3iTngYCncQ9AeBR5JcZVOG7hBrIRhGn145HPNq0pwM2IsYeoBFgWwGVg4PsM3/Eab2JNIuy/JygFpA7627APqbaSihc5B5eBL8H/dDAxw2UKr1ob71FMKhnzR3LdnGltXApHv4gsw9N/vbgOEVagvaJ0RFJuWlU1mEEqgWsQAIohLd+IbCb7iHQ78Mas7dElBSURJ01iJZrU9+o/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Mon, 14 Apr
 2025 03:48:54 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 03:48:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
Thread-Topic: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC
 engines
Thread-Index: AQHbrOiOx+o/Xxf1GUWf3BCA7GoKMLOihcAg
Date: Mon, 14 Apr 2025 03:48:54 +0000
Message-ID: <SN7PR11MB675077FC1AD909171A753B24E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
 <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB8333:EE_
x-ms-office365-filtering-correlation-id: 7c929a6e-f855-43be-9710-08dd7b074729
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rAl4ZWxlYYZtif5KOYE2R5vOBHQr1aYVM+0IRihS9X9eLwsOuCptG4wz6Xs6?=
 =?us-ascii?Q?M79ImCE9D4aJuin484MsOh6yEe94P5gixGR4DCYX72ngjwpg/TrtOPZtTYaW?=
 =?us-ascii?Q?VClg4rHqubLdfBLStScUg361k1eabkN4AEkpRcbGQjQtAvEGZ+zA+7RxhSHp?=
 =?us-ascii?Q?6sbuVKCfykKeMu44zjWwgP6vIYZ+TjVJ2nam+rEBlau1GsTXts5U+lTFeAcE?=
 =?us-ascii?Q?D4je/ecvkH13kvOblS/ACZJ3I5EPgtz2D/3SR/IDAT6revNPPBmiTi46q7cA?=
 =?us-ascii?Q?EUU6d+Ok6H0Gx4SsR6mdUY5Mxefv+im8uzI+cMNHPy83mC63ZVOH/Be6HDsl?=
 =?us-ascii?Q?hOU4Lylk9oyVez25DuZfilj7CXenRqnKz2JtQfy7D4zYp1iw3uvsh+JMsvxm?=
 =?us-ascii?Q?x8oSVbZ/ZiRkMquowM8KMB9G/pua01bmhpUudfHB/l9cFhm1BKU43WvlMSGU?=
 =?us-ascii?Q?8exUYz/iPfMouR57t8YU2bdkZn/ILsdVSWb2jm/Ivm72hdvrys1kX/rOFqdR?=
 =?us-ascii?Q?b5YQ/jlub5HlHHEiEGvY8/mkwlXhhkaPgm/0pS4OuEKG9m/lWK3QN7rbAkYb?=
 =?us-ascii?Q?Sx/e0bhnK9Qk7Jb5CfKbe/jFg8ALPLgysUVXE6g59dYB7K8fd1jkA++IThfW?=
 =?us-ascii?Q?3xpihDubffQThKNU52wE+VVqUAgmP53gttooZFKd2ETepyFUNYnmkmtRtAuf?=
 =?us-ascii?Q?aLQGi1oz3yAhEWArc4xnS2vI4Hu77L2bWGDpe4fS4IvQxDkfHIFJVnJCqpNj?=
 =?us-ascii?Q?1oxryl1E8Zv9hEw5IChNa1lxT/NIhV/drPvLFLigW/BwJ8Unu8+HMh2UloAS?=
 =?us-ascii?Q?+7lorOxYeme3fyfX0k0O/RzLIpdJZ6C0THc7dBpWDq2uqJGTYlmkj5aNhWm2?=
 =?us-ascii?Q?MGUwD6onLp48XVv1AbWioioRFsvoY8UJJf81BuRf+etlk82602Lb47Saq6Su?=
 =?us-ascii?Q?UGRyz3snIOuOLUfFnOrrpXu/SLA41N8p7eJy7YlQzkELdh68MXM2UGmhEKOH?=
 =?us-ascii?Q?Aa3jtpmr+/VC2rlpH9ChLVxkx3C1ISIaPwt0+mzjsYpU30dPFQCcuWYcgqNN?=
 =?us-ascii?Q?rmMCqiMa+4LC+wPDQf4TayC6uPv1VknCOJFJSkyaLgWzDrFXiexWfky+hRF8?=
 =?us-ascii?Q?jKVrtIxCjjEE1UARVmZ90SFykjlKEcFdIuIv1vv4pJFRqzJPDPWq1ud1L/ny?=
 =?us-ascii?Q?ujfQ843hpgwSQ6uSeK+kJb+SLmvfQyAbMKAXzd3rFF09+X1aEtQMIrNm4xtT?=
 =?us-ascii?Q?eWCvEnALiiSMx12KSlASO4IoJJa72idzliAMPyB9xoPldXVVxQkycy4470zC?=
 =?us-ascii?Q?wBgfTWoycyUPLkt6McI8X937L0JBVhl1lzJSxatrrOWUe25otNr8AtFhojm8?=
 =?us-ascii?Q?dkg5BhE1aPwxRW6fxqrlg/WIKjfZhGYZrchuXNrRsBHbtcQwoy3fn5n3xXF9?=
 =?us-ascii?Q?/li+was78r5XxOdl8kJ8wcdxuUI0hnINQGX6Jm4oKAwzxV4Gao99Ug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1AOjQfJvbC2PAJWrCgRchubcIgaz8s9KVLK88j0aJDtjfxScOUoCrgv4TTCt?=
 =?us-ascii?Q?/KrwfZ9AXEnarL46T5KgMoqhTHn2HdDs/dZINE6yP7iQX+0uXV4jLosTGyCs?=
 =?us-ascii?Q?nS5to476Da9EpZWLlD7kAz1TjDfWiThtsE2h2MP7duFpIiv420G0lZKgd1FY?=
 =?us-ascii?Q?nfee/7Jx3Wy89ylnhxA1d2rvy7wW5I7s6z/7EsU20zIf141feyscZdELS9xE?=
 =?us-ascii?Q?xhLCT6qLbaiCjjeJQ/ZcSslht9Tmak6/0srWLn9vO8Se+mtfEDCBFtYKKlx4?=
 =?us-ascii?Q?0JGSXnd736LWKu7gI8RAiO1XBB70gsR6Qd2lG1flteXtgOPLXgUkrdjTm8Wo?=
 =?us-ascii?Q?Ub2FlnC78d2JRybZIjiQ/pYrE+ZXRqlJRqH28nnJ866tVFw4TcKjSdFz9x7e?=
 =?us-ascii?Q?eFK/a4q4iOpxRBq7lWNsSkrMKsuJJhVpPBPGcIVRoB5RpYWenkNM8Yktckh/?=
 =?us-ascii?Q?Q8bQM1Me6IAVolqll7QXE6G6uhpiI/LDRPd18tplmWVLUhjLSI0fAyshQzc3?=
 =?us-ascii?Q?lN/mQaW/0xbR9IpD2h0odVv2dggmx+I1WT6seXQTpfheyI94rW0CZbAvx7P+?=
 =?us-ascii?Q?ls/IkOdzcmTOaUIQ+MoTQpg8BpGI3ENzcE+QBh+KyowJZbglqAWhs9Gl0FDe?=
 =?us-ascii?Q?Yln0+Bpp2quTy4lwU5sAY9g8ZSJanL+7Ej4HFjEaxzt1Jitx+MKeZtpDIm85?=
 =?us-ascii?Q?dABH+tUAuTzBSSn4LJtRsd4/DqxnlDS1MoNNEMtAkMsSimBrAN/DKnN+D34i?=
 =?us-ascii?Q?Bbu9fIaY56ya4ehQXha1fONpiSLxJmgplHq+gy8gSEL53K2K+/lQwYr178LF?=
 =?us-ascii?Q?oeUixhoUgmw7hZbxALeOFblGQPDGBfyNfvNGAfc9oaWLZ1fyerm1MaVhrMWP?=
 =?us-ascii?Q?wzPtwsoZjkmhoka66Mrmnd8sCvmWwVEoFBFHR4mPY75wsYXnE4rX3GQQrEzR?=
 =?us-ascii?Q?UwjPyF7Zi9R+v+upWXDNgS2ZJOpw3T/fz0PyzIVt0fa6E00cHYglQhMANmtI?=
 =?us-ascii?Q?gG0AXzUXWQ3oR1A0dFSR5vBuGir9o3xOsvpPbouvVVpaicUDzoPZdd7A5Hsq?=
 =?us-ascii?Q?A3REeC9kzqukZNnQROvhY07bou3/KFKsqSMcrKdIj/ymz03/ySNe3LuVdLyM?=
 =?us-ascii?Q?mvBQpB+bug5S+gnRsB3ag0dd4IAxEH73XIpiJx+F3Q1lirHWjcPl1As/8iFx?=
 =?us-ascii?Q?8dLoYzOqSnvkJWAK+G6YV9k7hlhJUse/JiL7BZYG9DROb2QfzTrZvBOJO6Qf?=
 =?us-ascii?Q?D8EpNgmTfuPSs1nN5H9o0BhV4QEi0Way+6a3u901QWk/49qhpKHj9CWnStqt?=
 =?us-ascii?Q?opbnLAUQy7Zq58VAowyuPdkY/IpPA0y378st/+6GGfb//pSlDR/2qw1AEmb7?=
 =?us-ascii?Q?jqkCsjTqSjQ9n7C4WPF6F62PHBQOqi3T9mEtPq338K2NX7mt4pA9+3NO98p2?=
 =?us-ascii?Q?0nROek8C2+97IulmROiAdiuiDATq2TuYJWG47SsloagKsiRXDLargapi/cSJ?=
 =?us-ascii?Q?aXm1K2Ay3RFOeFz1y97ygijzyLlggDRm/x7UXmZ7WIAMGPwy4eniH8Z+En7z?=
 =?us-ascii?Q?boLNFOffqoofpSO+S44r0rRIff1UfAu6DELzcBQE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c929a6e-f855-43be-9710-08dd7b074729
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 03:48:54.5066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cA95TzsPOD6E3uRayhfltZ+xrojUknOiV8DJUfKUVRvxDLT3megXvsS0JBEalljJaVaFvGWgjvbJIZi7QkFKaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, April 14, 2025 8:13 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; stable@vger.kernel.org;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engin=
es
>=20
> 3 DSC engines per pipe is currently supported only for BMG.

Would it be better to have a function here which can be modified later to a=
dd more
platforms in future if they decide to add 3 DSC engine elsewhere too?

> Add a macro to check whether a platform supports 3 DSC engines per pipe.
>=20
> Bspec: 50175
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 368b0d3417c2..1a215791d0ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>  #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)-
> >has_dp_mst)
>  #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dsc)
> +#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(display) =3D=3D 140=
1

Shouldn't this be __display instead of just display

Regards,
Suraj Kandpal

> && HAS_DSC(__display))
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D 12
> && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >fbc_mask !=3D 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D
> 30)
> --
> 2.34.1

