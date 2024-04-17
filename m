Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8F88A7BA0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 06:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B191710E364;
	Wed, 17 Apr 2024 04:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ks6HB1gC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B51F10E12E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 04:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713329895; x=1744865895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LlFE6Qi+xQ5C2bf0dG9RPM1jbaUAU/WQs7ecqAbmz9M=;
 b=Ks6HB1gCDZDfJEzULCk7O0860rC9TndRIQ43/El/U+2t/+Pbwlwp297L
 Z4P9q2klLVd/drkyk1P+U+C3/s31nxT678dABrkvorER5rCAv6K0JC40F
 9IrdpICnG+iEmkyLs/Z0N6prHqzzLjBbYqbCLsCp99jSRz1tKOi2nG9J/
 C5LXGjuUC5R1gSJUQCV4XfJsnD4zCBATm6A5s5at9bhhu6R+spjphbT5H
 rkp8cZXd9XzJmzull/tDv2k7HWdEKS7bry3Hriz21y6hD0iqElSUC5xgC
 y131Qzqoh2UdidpPLpB1VuNXkijEi8YH5K1eePmuNtBoVBQnvslICdAk+ w==;
X-CSE-ConnectionGUID: ngdbMS4iTAaLJPDCX5Z6yw==
X-CSE-MsgGUID: i3fE8/wcTEaLCS7BFbimRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8664958"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; 
   d="scan'208";a="8664958"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 21:58:14 -0700
X-CSE-ConnectionGUID: OoS2fmdZRWSnySm7vq1Q4g==
X-CSE-MsgGUID: P/011CxHRRGHDp8HQ9KU1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="45789279"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 21:58:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 21:58:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 21:58:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 21:58:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUtgnba90qz2iR4qcPNdJNuBVDeHS8VI6yZwa6sfsQRVDA0m0eQA9Ph0YJ+3Mv0jJgKiBIT3zSkC25h/J43NIDsX/jNVhZyye0Outvuotq8d50C5PoVqgXpu8Bk1RWvNXyJ1ir6cr/nPmjVV53cgNkOtnNQahgVIVTn2UUJvJDZticQYTnBvUiyCjS+4lBaFEKCQlVta49cyBr+oGZ45DcLV7v14syFtAMApae/RYz/gR0szh8+UItYlBT4EHw+8XLGXw0lh96akZe6jole2/j5akgRT45cfUgDy2AeE1uBKsyfqDGqHvqnereRyqvSCnmvw9Rz3WFZmscF/avmzUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkUO02iE31lM7BfKFKJtnX6wmFbfB50NcWWSA4U/XSU=;
 b=G1+RUbdGJ/cfjJpzt/DKhYME5tNYT762jQ9b/AK5B8r595T/pL6DUIHklCuxE7nT0Tvw1cai1NMtkRvtGBKLQydKksoeRaNeQSJjVBzWQSBeGfIiNb+o4DAsGS+sItf8J7Q6gYLIkQ/0TDG58Xp7A8vLy3qAJGFjFVX7uun/qBniF/tK+v/duegn2X+wm7zHzGCKDdMpgAgct8RE+e893vm58FAI/aajJNxyKB8zlOhDJYKBeNq5tZ5jr4qa2Fop5ZUjGQpzvXQHteGew02Y6NyH/E8GzfQMzfG3+xGCKLlSOSj5DFhyudUuNNnHppN5rTmMXSkAdS5KKP2zV9o4Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6095.namprd11.prod.outlook.com (2603:10b6:8:aa::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Wed, 17 Apr
 2024 04:58:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 17 Apr 2024
 04:58:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHakAOt5xDanHgllEC9r7RqC2+JhrFr5M0g
Date: Wed, 17 Apr 2024 04:58:06 +0000
Message-ID: <SN7PR11MB67502235E26E82CDA36A1847E30F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240411060925.475456-6-suraj.kandpal@intel.com>
 <20240416134022.GA40393@toolbox>
In-Reply-To: <20240416134022.GA40393@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6095:EE_
x-ms-office365-filtering-correlation-id: a7cf820a-96bb-4464-cab1-08dc5e9af848
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3lxusBmKTKGv9QzVrigblCXbnBup29zyKVatZycuFhZ1pIoXTrGjlnUlXyGpgGN/Sx79q856b6ziNZ34ZAopJtjQThsucofVDucrBml6kzXBEmchobZ1YD8BpqMwmA3Y+HVPGO4WxiZfJsecS666amwVhi+hRH5hZOANwbcCYz2czO11f04hiVRgHa/fG9nmCKuem4p8Bxd5wxuy4rfoQZSF1sD36xMQb2FXZz4w8t1jcfEU1fv18VEFs7ogPfN/SxTaaSSirLbeUQetAPp3QSVhevHP78ig2/UQUWqljC6H61lsX1A4UcekdN+4O7S2o5VmAO6bSmpFplu7oYr/ak/CHbEQ41OdzxpsLdSPi96D2jZp1mOFshMpTytvtoxZYif/XluHNywZZSJ2pQuUKSaLBNlPgRIbc9oJH9zlWj6z9hVyPASp8OZI60+bB9ZcC7pnTZUuEkePlCWjwkk13cfDPTZ8V5PECzSiv4XO5BA0p+fMWOlXseve2uPoA5yK7efvvmifN+IsG5mQO/MZ1DoVmWIlhQG5Y+gCGtbn45EhBadQoAPzrOyl41Bzw1lDIKShjs8IDqUQLGdXEQ8nF7LZCZeAK7+OQ+sobksVPNYUZvWfwyrCXi0LndgVb/NcQ0WTqZiBQ4Gim1tbyXO+L7faRYAF6ZwJVsPMUpB/dm1ILJV1MUiiewzfsPrfFUqNpfrDi0DolYss7BQL3ywk70UgaOQaMRzwMz2d3oNXlX4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZvyuWEGk4aaSNfTVwohDvb8pIn0ie5QEuaOatGqYSCayL3vegaFPRK6ufOzt?=
 =?us-ascii?Q?MVNDoNv7uxSzsn5aAiq2SqYWpjzROBobeyRzpMpaPMnqOsXA3lanKgjHcLzD?=
 =?us-ascii?Q?BfRW/PCdXlSwfoEVqnhkZeHccdFJkrbVsB68cN7QLkFTOvw+sk8NRbiC6rLV?=
 =?us-ascii?Q?y1IkUiTtgt9uBTl9aJR2DAMEwF/WwPBVdsETBtogagrvpRuD8G0u16Vcc5el?=
 =?us-ascii?Q?xwxDxoMTBE0G1v7Ml5h5qFrzwF3VdMTVrpYQp3uAkcEwIFwf/sksXs204+E4?=
 =?us-ascii?Q?UYekGcwahN0yysjPdXE03r1e3naj/1ed9TM8cHuTXBgspCJpSecCfpK0WtsO?=
 =?us-ascii?Q?FCqJX8g0J8jOyqOTxXioq3LMsaJXbu57EPUxTXPFXcF26+Ye+K+x3A0Xwkzd?=
 =?us-ascii?Q?vZdpbLl3DmhJxe9cqWOyeBGUJvUOLWyVwadUH0DWyyNsRvVAw7C3Z/KtZLBG?=
 =?us-ascii?Q?7huCZScQ45Z1BXOPHVzBOOaVAQmQAP2CxoMu8yvRPUJAE9os9nQdceoo9OaU?=
 =?us-ascii?Q?VRJ86TMGqXCTzc/xMWMpInENLNSszZDm8iIQTCvPYVOVXRhUo7IbcwSaucmI?=
 =?us-ascii?Q?P6UOL0jieIsiuxZRdSEhcHC7/BJFT2q/E0nZvINkJAnSXpHBAQ08b9ckpBza?=
 =?us-ascii?Q?IdGkEjasX00MA/TJqxcO/RodcAx93hEFCJSoC6q48vZPbqPuX2icjTb5CcU2?=
 =?us-ascii?Q?vuRtunLSWB6EHMLeiP62Hcyt+1KU7fK/MgjqxMlHovcetWnhZ3m/JdvOPtgx?=
 =?us-ascii?Q?tGt5tPpBxnPincmefTaur9kHkJGDaxachNoL4oJ+7YQ2IgQmX+h4qEWGGJ5Y?=
 =?us-ascii?Q?XlOVoCDEQavg0p/vyLGZ9bI2wY9113MiMq0WnWVWJp82FGOk0ayCT4LCMPRM?=
 =?us-ascii?Q?cI9mzyHENMDm/AT+d3mKpb40v2+3b6QzOQ9O3N+C4gUG/c//wWa98LtIPRJX?=
 =?us-ascii?Q?KvROXc+KQglnxfH7LVejZIb1MGV7ftSwAlkjWkkaHhDIH0T7iECgI1SJfBNT?=
 =?us-ascii?Q?4zKJbhvv6k4ETXzunpRdwUTpAFDsU0ChcY4+69qZbuY5Rse7Jwi6TkKJMRMw?=
 =?us-ascii?Q?u34XfpTPoPkvANPPEg4S1gmWsrEJUmHcFib5kEgaN2KVwhG3Qyq4/3J5NtIY?=
 =?us-ascii?Q?azw4TkrxwJsE6RCfaArAAs690SKKpwWnGYVIHXPo5Dl5da9Aavdc4T7V+q86?=
 =?us-ascii?Q?kEqTxNO3wbm2v8ouw09c03lfdjvCJPRagSNNnt0G+yh2XbbMNEt1G6o4pc6k?=
 =?us-ascii?Q?rh8sELLhISP0DSpK6+MUNCx5NnKHC7jLJikkBIk44sJZgouBpaAdL1MKtS2g?=
 =?us-ascii?Q?e1QXbQgLHSxFng+BzbYMGU6OFNJHK/lw2EWA0VAz5qj+Trr9CIH0qGIu7ucJ?=
 =?us-ascii?Q?RC7WXOUntXX4L3cb8Slvo0IT8r8eSXomrvZMzPrenV/jlBmhyQoBHUTHKIZg?=
 =?us-ascii?Q?XYNf6GMqDyRzUzAN88/l/8+jKhjrd9SsbMHUcnH7Q3EcURdfTd4HD5yrk2NZ?=
 =?us-ascii?Q?JWxJ3GZgPQd6iKXZ0nhtqYHkMv3YWI6LQZF5L7WWjT9jYVaw/dqZFa0XzNAZ?=
 =?us-ascii?Q?YZ+u4te3lmd+mmgukIvQ2VqSgAHHpFKwUNX9Sr9E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7cf820a-96bb-4464-cab1-08dc5e9af848
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 04:58:06.3148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnADdcj+A/BSjavfZJw+M6nhuszG7ZFVetHoHhMVkMHzPgFkiT81cpTBEQYWtYn6IWhFP7lC4aDiCifWxls/Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6095
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Tuesday, April 16, 2024 7:10 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> On Thu, Apr 11, 2024 at 11:39:24AM +0530, Suraj Kandpal wrote:
> > As of now whenerver HDR is switched on we use the PWM to change the
> > backlight as opposed to AUX based backlight changes in terms of nits.
> > This patch writes to the appropriate DPCD registers to enable aux
> > based backlight using values in nits.
> >
> > --v2
> > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > drm_dpcd_write [Jani]
> >
> > --v3
> > -Content Luminance needs to be sent only for pre-ICL after that it is
> > directly picked up from hdr metadata [Ville]
> >
> > --v4
> > -Add checks for HDR TCON cap bits [Ville] -Check eotf of
> > hdr_output_data and sets bits base of that value.
> >
> > --v5
> > -Fix capability check bits.
> > -Check colorspace before setting BT2020
> >
> > --v6
> > -Use intel_dp_has_gamut_dip to check if we have capability to send sdp
> > [Ville] -Seprate filling of all hdr tcon related bits into it's own
> > function.
> > -Check eotf data to make sure we are in HDR mode [Sebastian]
> >
> > --v7
> > -Fix confusion function name for hdr mode check [Jani] -Fix the
> > condition which tells us if we are in HDR mode or not [Sebastian]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 105
> > ++++++++++++++++--
> >  1 file changed, 94 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index b61bad218994..b13eee250dc4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -40,11 +40,6 @@
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux_backlight.h"
> >
> > -/* TODO:
> > - * Implement HDR, right now we just implement the bare minimum to
> > bring us back into SDR mode so we
> > - * can make people's backlights work in the mean time
> > - */
> > -
> >  /*
> >   * DP AUX registers for Intel's proprietary HDR backlight interface. W=
e define
> >   * them here since we'll likely be the only driver to ever use these.
> > @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct
> intel_connector *connector)
> >  	if (ret !=3D sizeof(tcon_cap))
> >  		return false;
> >
> > -	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > -		return false;
> > -
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR
> backlight interface version %d\n",
> >  		    connector->base.base.id, connector->base.name,
> >  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported",
> > tcon_cap[0]); @@ -137,6 +129,9 @@
> intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> >  	if (!is_intel_tcon_cap(tcon_cap))
> >  		return false;
> >
> > +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > +		return false;
> > +
> >  	/*
> >  	 * If we don't have HDR static metadata there is no way to
> >  	 * runtime detect used range for nits based control. For now @@
> > -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
> >  			connector->base.base.id, connector->base.name);  }
> >
> > +static bool
> > +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
> > +	struct hdr_output_metadata *hdr_metadata;
> > +
> > +	if (!conn_state->hdr_output_metadata)
> > +		return false;
> > +
> > +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +
> > +	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > +HDMI_EOTF_SMPTE_ST2084; }
> > +
> >  static void
> >  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> > *conn_state, u32 level)  {
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> >
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		const u32 pwm_level =3D
> intel_backlight_level_to_pwm(connector,
> > level); @@ -240,6 +249,70 @@ intel_dp_aux_hdr_set_backlight(const
> struct drm_connector_state *conn_state, u32
> >  	}
> >  }
> >
> > +static void
> > +intel_dp_aux_write_content_luminance(struct intel_connector *connector=
,
> > +				     struct hdr_output_metadata
> *hdr_metadata) {
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	int ret;
> > +	u8 buf[4];
> > +
> > +	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		return;
> > +
> > +	buf[0] =3D hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> > +	buf[1] =3D (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00)
> >> 8;
> > +	buf[2] =3D hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> > +	buf[3] =3D (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00)
> >> 8;
> > +
> > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > +				INTEL_EDP_HDR_CONTENT_LUMINANCE,
> > +				buf, sizeof(buf));
> > +	if (ret < 0)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Content Luminance DPCD reg write failed, err:-
> %d\n",
> > +			    ret);
> > +}
> > +
> > +static void
> > +intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state
> > +*conn_state, u8 *ctrl) {
> > +	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> > +	struct intel_panel *panel =3D &connector->panel;
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	struct hdr_output_metadata *hdr_metadata =3D
> > +conn_state->hdr_output_metadata->data;
> > +
> > +	/* According to spec segmented backlight needs to be set whenever
> panel is in
> > +	 * HDR mode.
> > +	 */
> > +	*ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > +
> > +	/* 2084 decode needs to set if eotf suggests so or in case of pre-ICL
> we disable
> > +	 * tone mapping and set 2084 decode.
> > +	 */
> > +	if (hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > +	    HDMI_EOTF_SMPTE_ST2084 || DISPLAY_VER(i915) < 11) {
>=20
> this function only gets called when eotf =3D=3D HDMI_EOTF_SMPTE_ST2084 wh=
ich
> means all of this is qeuivalent to
>=20
> *ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> *ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> *ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
>=20

Right will drop the SMPTE check altogether

> The comment about pre-ICL is also really confusing to me, especially beca=
use it
> doesn't actually change the semantics. Can you explain what you're trying=
 to
> achieve here?
>=20

Spec states that we need to disable Tone mapping pre-ICL and after that it =
will
Be TCON's decision to enable TM based on panel override values

> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > +	} else {
> > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] TCON:
> Cannot decode requested EOTF\n",
> > +			    connector->base.base.id, connector->base.name);
> > +	}
> > +
> > +	if (panel->backlight.edp.intel.supports_2020_gamut &&
> > +	    (conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_RGB ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_YCC ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_CYCC))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
>=20
> The Colorspace prop can be set independently of the
> HDR_OUTPUT_METADATA prop but this only enables the bt2020 gamut when
> in HDR mode
> (intel_dp_in_hdr_mode() =3D=3D true).
>=20

there's only two states in the DPCD register Standard gamma and bt2020
now this case here is specific to when we are in HDR mode and do not want t=
o write
in this register when not in HDR mode.=20

> > +
> > +	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> > +	    intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +	else
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +}
> > +
> >  static void
> >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_=
state,
> >  				  const struct drm_connector_state
> *conn_state, u32 level) @@
> > -248,6 +321,7 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct hdr_output_metadata *hdr_metadata;
> >  	int ret;
> >  	u8 old_ctrl, ctrl;
> >
> > @@ -261,8 +335,10 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	}
> >
> >  	ctrl =3D old_ctrl;
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > +
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> level); @@
> > -272,10 +348,18 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  		ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> >  	}
> >
> > +	if (intel_dp_in_hdr_mode(conn_state))
> > +		intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> > +
>=20
> I think you should call intel_dp_aux_fill_hdr_tcon_params unconditionally=
 and
> in there have the logic like this:
>=20
> if (hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> HDMI_EOTF_SMPTE_ST2084) {
>   *ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
>   *ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
>   *ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> }
> if (conn_state->colorspace =3D=3D DRM_MODE_COLORIMETRY_BT2020_RGB ...) {
>   *ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> }
>=20

I'll be dropping the condition inside the intel_dp_aux_fill_hdr_tcon_params
As writing to DPCD and filling in the params does not make sense until we a=
re in HDR mode.

Regards,
Suraj Kandpal

> >  	if (ctrl !=3D old_ctrl &&
> >  	    drm_dp_dpcd_writeb(&intel_dp->aux,
> INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) !=3D 1)
> >  		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to
> configure DPCD brightness controls\n",
> >  			connector->base.base.id, connector->base.name);
> > +
> > +	if (intel_dp_in_hdr_mode(conn_state)) {
> > +		hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +		intel_dp_aux_write_content_luminance(connector,
> hdr_metadata);
> > +	}
> >  }
> >
> >  static void
> > @@ -332,7 +416,6 @@ intel_dp_aux_hdr_setup_backlight(struct
> intel_connector *connector, enum pipe pi
> >  		    connector->base.base.id, connector->base.name,
> >  		    panel->backlight.min, panel->backlight.max);
> >
> > -
> >  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector,
> pipe);
> >  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >

