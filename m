Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16169A1DC7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 11:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2452C10E30C;
	Thu, 17 Oct 2024 09:04:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hL81Vw9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AAC10E206;
 Thu, 17 Oct 2024 09:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729155861; x=1760691861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jMDbEYo/3K3uuEpIS2tENMNH5X8F61RJLerCmHUmzwA=;
 b=hL81Vw9x0J+aMGluqQrX3cw1qEK6CkpQX90yOiCz4aXdd6g25g+I3g+1
 cUqaokPOocQKDr7LW52GiXgxoikwCsmG/7KHOl0VsEKsbloDaOfNb57Hz
 2e40q6OILgr29JRmtd9LPSCRzoIDZm+uYxmWqOdg3pHyHGR63b+rB4o+d
 W4O6k4JG3WIs0fzKX76GJv9y0YJJqnf0XXwYASRHUtptOEdQVV65D687E
 azd+cWzdzfVh785wwP/dA62M86HebQhrDShn6P+bA3YSfqYH8WPO7usN8
 HPDRifyBFi3Oq1Ccbdaq8agV+JnF3xF0tJFeBcqjt+/ZCmf5SUVyp6SeS g==;
X-CSE-ConnectionGUID: mU5kdogORSSqHNQrqcVuOQ==
X-CSE-MsgGUID: 6Foaj+vLTTGhEGhlAeDC4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51176826"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51176826"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 02:04:21 -0700
X-CSE-ConnectionGUID: t8bU65fESuu9E0UvlN8SHg==
X-CSE-MsgGUID: J8H7z4W5SKatvM/0elrxuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78919610"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 02:04:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:04:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 02:04:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 02:04:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K/NLm9ASeCbhn91z89MXwLAcbgo/UfNr3UXoThJomBz3oZiCZKEwJ/FteV7wimnDoz26Fr8T3D+CFTicQ80jLr4GRyajSyJTwhQH7GTSUBqG1uW2u6eh6ChlPFlFs7vAHNOuCIhgBMoFuQaPmCCO7M3rFfPj50Oe++1HyP+xi/U+fVeNhjruVe4cRVffGBlUPFIXtCW6KfIc/F6/1PW23LQTaXAJBpz2pzI+VEjO5kMtl3erpAe55D/dQ8Mps0MMR3641PpmWL7sxR/L4lsw7Hn3BWSLpYrDdkCVIH8jCoTYmSqBaTQO7Fb/QvF2kB/yMrzppfrFdyR6Jtfh5CJ15A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miH0ka7+8TNoapqRa+3MNEE/aIEojrbgLn7uhy5hqCc=;
 b=wqdqDa4HwoRcJJL4rdQDiRLyYYF1ynw0GE1SeMDLLFeEDbJ6IUY+WnhPZK6eB1H8QIEk8MNyT39lGQskNuvAVavJau1v/xrJNS+LvE/E7OYahvCEtM/0bSUOMw73LlnCUw2VpvFzmvXgvD99TWuIZRXpUwGg24fV2xIUKG5xauG9GY3dBJSZaj4nERaWc2Zv4driLO15sWsx1nhZf4kzR23CsV3dSXz3sNVRgKX5FNsYKVIqTWWfSs7l3QDoriSbnE+kobVyR1ZZnfb2JncgJD8CnAy1EvChrFattO5XEVdg/qtOfhE68lUYBXhWXzps+k/3BPvDF9VMjRBOgNApFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Thu, 17 Oct
 2024 09:04:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 09:04:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/10] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC
 engine
Thread-Topic: [PATCH 02/10] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC
 engine
Thread-Index: AQHbIG2oyaBz4SVntkS2kc+CUI2aJbKKpRhw
Date: Thu, 17 Oct 2024 09:04:11 +0000
Message-ID: <SN7PR11MB6750D0D9AA54653ACA143CA6E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB7700:EE_
x-ms-office365-filtering-correlation-id: 0345006e-a1e2-4621-49a1-08dcee8aaa66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?btWec81YNERIiY8vxxy76mF7WcwvJ9j+bet+0KqrsUtLxD5vFoMZOHK2RIhE?=
 =?us-ascii?Q?D9+LIORwZy2yLKwmEzftrJxeaZ0AQuJ0Iz3in+PObSBA08w59Wsc0j6mhape?=
 =?us-ascii?Q?9ntlzD1kckA/mC88mMJY1UJ2RHDQJVOS9MS1LHT1P7aPR/L2ApDous5/FA20?=
 =?us-ascii?Q?OomH3juHj9VknFX5wxQthVG58yQljFAjiiXvOz0k+kQ0vXz8WeC1SNY7xJzF?=
 =?us-ascii?Q?H2Ofj0OVu4JTYW0BViJHkXIih6Jk5VqWChKGiBkaav9VQSEkXic1e6VGdPtZ?=
 =?us-ascii?Q?byH7eDz0engWIpU52OGRMHALxiwGAP570ZPWb/XNiMduoVXPPvw8ssTdeDue?=
 =?us-ascii?Q?Lc4IUI3AEayKlusF4D6Smgu35QYOLD/jTkPP5sRWwGe9qcvNFBY6xfF2zcm9?=
 =?us-ascii?Q?WsG+D205bZHtOhffvv7O904P5JtC1J8BmTYK9eHQgXQ6GVnTQkfsTx+bksrz?=
 =?us-ascii?Q?JVCjmF11IkJilglJmsK/G/Zhi9ll6TRonmnSs36/mpfTy7gunlsFGsxA2EMB?=
 =?us-ascii?Q?gKLRKxImuwpmKZvWvQ8Bsbm8uo99sBTTHr0NkFNncTbgwt/P+yXM4cftkRAe?=
 =?us-ascii?Q?Kr5X9+/wSJbVgR0Ji6ruZB9Wa1meMNQ+d78x4/qlIrK/VHvUPzDbjLGrTnSa?=
 =?us-ascii?Q?2t1+JIw85c7v6DhV4Ws6y2cTON87yKHy7EEVkMNRnXarW6MJ+ESRs5ZoQtL+?=
 =?us-ascii?Q?CVE4svoDj+jvj/92KK20+3rwiP/h2Znv4i/SkI8rGkJh3cb+Yo5wcMjZVwO2?=
 =?us-ascii?Q?c+Qmodq4bnJsf0dnZ7HFYqqbbXtKinOdNFPIHDbBZjLEu7d6GyIu9WDp8hNk?=
 =?us-ascii?Q?WF7v00WAKhMNs0sRrapWfSRkFK7tl3gCIPVSLOpMOEMtTcJFgqOfBzMaH3kq?=
 =?us-ascii?Q?kWFfZMJiDhknh8nVkJq2xMq4HbP1x7NSrg0wV6atcNLPXTb5a/axP9/BmstT?=
 =?us-ascii?Q?IOtg/d4Sed9k5RrQbvyCNKAAdQ+c2FyZ7a7OOeboGahup3VWrhtll+Th/F4w?=
 =?us-ascii?Q?WQ5omPOoO3jA8ypMAwcstm8gDg6u+sdgMYj5/w3RgRIvof78lAl/ttbR0gCU?=
 =?us-ascii?Q?G53HTxPQOE54LzwbKaWIaSa091y6m450E2imdRYldly5nv2zkPDYkhfe7Rxn?=
 =?us-ascii?Q?PKnv7bJEsPmuEdWCq27Wpo8a0ymmZzxI4rwvDBs928/GiS+xHK8wigpJc11V?=
 =?us-ascii?Q?UYisCi7TUsmgmN30b8k7T/BMoiu1cfKbvX3vs+Had3oE7z6zosIuYqVgG4OM?=
 =?us-ascii?Q?efDUFSKpmTFecgFa8GSLhyzAap6MYEJoSDGhQtoQ6tSMsgS/ejUgd22/pWW/?=
 =?us-ascii?Q?rAzYIIG1Vf/wllVLcVLflzMZYkLSRI/MycEi/zoAOiXTr0h5iEL3Ge4G/sa2?=
 =?us-ascii?Q?OO1h6Zo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vqdhYhad2bFDlNDoLtwVyLQMP9SHLoGWey/VAL1QrqNFrUh0yoYC7YhnfBcJ?=
 =?us-ascii?Q?dY+VeFmYFVjDWFFyd40IloT4iYtsvRA29I1+BUOR/VpLQBU4nRwuVdzxCG0q?=
 =?us-ascii?Q?ROUCU6gXh+XmdODlD8sYveI2wbyUdYhW0mIOUWZMq1ZDNVLKnzsYqP0s9cFe?=
 =?us-ascii?Q?/IQpIdnqnNythdbK1X2xZPVe2wSzx1tQ6NxYqFPrRYQWVYLC9y547zjbPByE?=
 =?us-ascii?Q?K23NNn74BKRfy7Regz96S+7tWzx0P4qMSpPx/GZHej3YxJTn5BFueSfa1Jsm?=
 =?us-ascii?Q?UKiMnQ7gMakBekshCgn3sD32PHWS5UawMQqIF8rqWxlGs/YfyP16BV/oMqpa?=
 =?us-ascii?Q?ykf2WZukxjlSP3207VqbiCRqehrM84JyD9ypjrJWBMvnqPt/LXkiZHzpl1EL?=
 =?us-ascii?Q?z/c590XaWRgQQ453EqZ/QEe+1uKordaVEA75C+8Wa9Qn0DqW5jkostfKDJl7?=
 =?us-ascii?Q?FEduws+oxYhnAunc81j6JDe60f+VOLS5tnNwq5xSnb/RVFdwi0+4M0XLjdMg?=
 =?us-ascii?Q?g6ideu2evsDAutzliI+H6BCVdcnwQ7ecC3M9LRae+Vl9THCEK1D1IaAPIcT6?=
 =?us-ascii?Q?MdS98J/O5uHGa9ZZ91XEh+xsavjl7eru1EFD6N0Q8+9OnHuUxRKe0QkVhHs+?=
 =?us-ascii?Q?tNfFLBKWXjjPr03mz94Yk7ttCN1LOJiohrFJaCfBV+JW4t6SXfUEBE2efxSA?=
 =?us-ascii?Q?WFwJXKS8Tj3MPa95IvhRtClH7zrPiV7LumftGUlkUjESQZ74wv7JMCf2ZL8f?=
 =?us-ascii?Q?ZiD3LzscMvO/8csImIPceQ4gMWanXvBSjMbLAN6fWPrwc3pAENC9Hy1iAt0o?=
 =?us-ascii?Q?2d9Eoqe6FoX/de17mL/5vkU+sEoZTa+AYEgunl2T9M5pQ8nSy3w/79nRHb3b?=
 =?us-ascii?Q?NUrV53nd35Eiwp+eqrfHNXkqV/cEA3tiWfF96YgBOi0KNQilZcYj5CukKg8n?=
 =?us-ascii?Q?QUGf00BYKPYGZPGga+U7tgxSuvmKsGIOBulfkjFzNMNQlMnxznN+hYxGk+Ec?=
 =?us-ascii?Q?lGJy5uwR2MMQ9sZ9LMJjBDeFkkYAXEuZrSE2lP5QSW7KtsEe/WBnScGDgSvr?=
 =?us-ascii?Q?A+5ykxqDoCWzErn7ZWENthuOJG18pOLWGvr1yNY9OSWDQf5sAmXTsk4pAOQ5?=
 =?us-ascii?Q?PG76NO6zzvOGSk/32logqXotQaj8hf2UIo8HBFSuQzmyqqg7k1vJzU0/tQWq?=
 =?us-ascii?Q?cjgt2+tHMAsdstj13+sy6rsLZre0R9DH4k2iOp3aovzldo74QjqbTYwGwy0u?=
 =?us-ascii?Q?ADgfLmrQzFCZv6fW3rC+uDyXjCwTXgSK1E4tu+AvBAhNkplt49JEojHCiNEv?=
 =?us-ascii?Q?dWgIoO34zhshB9V5d/WOPeVh7QEMhDAnTRjamZ5Mi0S23MbgQ6eMVUoAQv4k?=
 =?us-ascii?Q?OBkOcXs5BQMC2Ghx2C/QRpePHXb/afX0jnqfj8x9plfDd8jhbHvIsUv40QWg?=
 =?us-ascii?Q?v3b9tWjjfM42sziDYWVSoP9wqWPchiw6hhHzOu8i+FeamZC0/pQ9JYLN4Euq?=
 =?us-ascii?Q?ekYkDC+deGwrJ/MpqX964ne+MruRpC/zpWRNX0WTYTl5Le+LbqI4k7QfWu78?=
 =?us-ascii?Q?KUAh4FhLfRkhOKEE+0cRPWp42pF013Z3brWc8QU0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0345006e-a1e2-4621-49a1-08dcee8aaa66
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 09:04:11.0927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ANKfQ6wwIys13u52UCyc4gXiRqUv0Jh+Ys2Y88uriGx6s+dFg+KWimMAIBskeCgWW3onCk8t0/Ergaz8fQ1KRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
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
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 02/10] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT
> VDSC engine
>=20
> Drop use of LEFT/RIGHT VDSC engine and use VDSC0/VDSC1 instead.

You are introducing the use of REG_BIT macro here so add that in the commit=
 message too.
The rest LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 65c884b4f064..bc5f8c5cb1d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -777,9 +777,9 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>=20
>  	intel_dsc_pps_configure(crtc_state);
>=20
> -	dss_ctl2_val |=3D LEFT_BRANCH_VDSC_ENABLE;
> +	dss_ctl2_val |=3D VDSC0_ENABLE;
>  	if (vdsc_instances_per_pipe > 1) {
> -		dss_ctl2_val |=3D RIGHT_BRANCH_VDSC_ENABLE;
> +		dss_ctl2_val |=3D VDSC1_ENABLE;
>  		dss_ctl1_val |=3D JOINER_ENABLE;
>  	}
>  	if (crtc_state->joiner_pipes) {
> @@ -979,12 +979,12 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
>  	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc,
> cpu_transcoder));
>  	dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc,
> cpu_transcoder));
>=20
> -	crtc_state->dsc.compression_enable =3D dss_ctl2 &
> LEFT_BRANCH_VDSC_ENABLE;
> +	crtc_state->dsc.compression_enable =3D dss_ctl2 & VDSC0_ENABLE;
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>=20
>  	if ((dss_ctl1 & JOINER_ENABLE) &&
> -	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
> +	    (dss_ctl2 & VDSC1_ENABLE))
>  		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_2_STREAMS;
>  	else
>  		crtc_state->dsc.dsc_split =3D INTEL_DSC_SPLIT_DISABLED; diff --
> git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index bf32a3b46fb1..d7a72b95ee7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -21,8 +21,8 @@
>  #define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
>=20
>  #define DSS_CTL2				_MMIO(0x67404)
> -#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
> -#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
> +#define  VDSC0_ENABLE				REG_BIT(31)
> +#define  VDSC1_ENABLE				REG_BIT(15)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
>=20
> --
> 2.45.2

