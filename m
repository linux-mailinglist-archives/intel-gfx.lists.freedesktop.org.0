Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A2C985221
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 06:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0642810E786;
	Wed, 25 Sep 2024 04:51:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tddo5gN3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0366010E78F;
 Wed, 25 Sep 2024 04:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727239861; x=1758775861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vg5IvSwy4dv317LZZtutCMFqjck+g9ClPPlRRnUtvmU=;
 b=Tddo5gN3JMmOwBM8aJ5PRK6bp0QrLOODqDp8kXN725KrehTY+JftVif0
 h4dPOfWF1n1Ked9L0+IahjgBqbHAAExXyexfF0VzQyvAPgSyM9OuXFd8C
 r1sFYWSA9TO74RXBRO/31RutWLRoCq5WIV87AN2mt6VJLmUNzHyXGWuxN
 PgcCcqKTh5uPUypIb3+7iEcoyGg4+XdR39So53CLY/ob8AiY/+Vf1BQbF
 1gyZNHSEH6A+Rwt01o1yyyLkHf4M/mzBcK0j4z3CSljsO4MTgkoPoJIat
 F9XkyM99VrsZpvyOO0oufe+KQdBBGE/JrLQqmcEFr0oEp/ShI6rnADeXL A==;
X-CSE-ConnectionGUID: WjRCXksnRCq38BBDCP/0ew==
X-CSE-MsgGUID: pGpSlXKWSPGq7Ds1K3sl8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26138031"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="26138031"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 21:51:00 -0700
X-CSE-ConnectionGUID: Z1C9ccPeQCCHA0AbYqoENQ==
X-CSE-MsgGUID: PctuiBIIR42t4suK3KhVxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="76038554"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 21:51:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 21:50:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 21:50:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 21:50:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 21:50:59 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 21:50:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uO6nsXkRpU7t18xSgNxSI0IFwgTEam2LT3Il05N8tU0DcBqreADHq22fHEwB/S2yNJ9w3gvdUpcKHnUtJABDHKpfIJzi1Mahc6G2DQHz4GlHj68hNYlMQ4MjP5otlUvvTdVKSQwC5Ky+Vvbi4DCf5Etw+w4oeYjDC4Y3fzblspFcjLtOKTywBGo0A6TJDGLB53wW5P4VM30QoJIzbQafzMsYAYmA1RxgjfPXiPmHIVEnA7Vzq9Hdjs//C4Ia/2GwI6XRB1Yjd0pzy/X2knrQnSeqbx8FDOqYwVD3iZsmvnmcHXxykHd/1yyuZ+2U1V4JsQQdcQYai2HAjuohVkfJ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vg5IvSwy4dv317LZZtutCMFqjck+g9ClPPlRRnUtvmU=;
 b=NNAeyn6zly0zYCrM8N4ORfQUx+hrcUSwVfJrUE12pkMff3NgAU9jRuiESWp4KpRSE6EImFg0I1fY+Kxr8Be6NJ7dtJd0VCTwzBnXYkyVWzDp/zx9/AyObfRxOiFE4iyHGNls7bHOP0YAOWnDk0zwIbkxbLMGeZuk6XtaL+64jvHpUVpY1uTRKRgeohJpMhAR0FcHaDOH82ICjjP+VUfRagTvYqQhRfk14G7TuCTiKDAQYeA4cc2AOZNR1NcPEG9709TLOtP9aWWzPuaMCYvGeGPIpWvjVVpHOOV2UZTZsK76rhXp3qg2VXMhUp7rBA6HeTzYD6F0Uir9DdL/jdnulg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7329.namprd11.prod.outlook.com (2603:10b6:208:437::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Wed, 25 Sep
 2024 04:50:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 04:50:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Sean Paul <seanpaul@chromium.org>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/hdcp: fix connector refcounting
Thread-Topic: [PATCH] drm/i915/hdcp: fix connector refcounting
Thread-Index: AQHbDpbGBSzBGpp3SkmGIhDcPHqh5rJn76ng
Date: Wed, 25 Sep 2024 04:50:56 +0000
Message-ID: <SN7PR11MB67501A1D6B33A563DE5935D0E3692@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240924153022.2255299-1-jani.nikula@intel.com>
In-Reply-To: <20240924153022.2255299-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7329:EE_
x-ms-office365-filtering-correlation-id: cc1f9839-1c5b-4c5d-f42d-08dcdd1da4c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VTZrUHMxMTY0dk9DVjRmNVd5dW1KdWtFY0xxc0hTbTFwS00ycitmVzViN1NV?=
 =?utf-8?B?bzEza29sUTEwSnd6bWFNTHU1WGt2S2hmaUZTdENDK2JhL1YxQTJmbEtoTFJ3?=
 =?utf-8?B?elJlTmxtTVNzZjRBWmltc0sybjJJMktuTERaMzArL0VJaU9EZ0VRTDFzL29l?=
 =?utf-8?B?WFRNaFJyLzZueUQ1STVoc3ZzMXh4clloNkk4OVhKZE91K1l5Tzh1NnZTeWJp?=
 =?utf-8?B?UVB2ZmV3NFQ2OTF2ZXp0UnI3M3RZWDJ2WUdlOVQ1dG1HVWV6Z2x2SUJka3Q3?=
 =?utf-8?B?WUMvQVBzYzBYdm5xL0pTd1BnblJYZFlYZituKzZ2N0Y4QzQ1QllVaXRDN0c3?=
 =?utf-8?B?MjBaNE5RQU51QVJvZlZHbjRwZzRMeHFWSm1USk5BSENvMnpmSkhOSDM3YTNM?=
 =?utf-8?B?ZHo0WDVZM0Y2eC9pcE5xQmRjQVNUdzhVZGMra0Y1aWJxY0pTRVdaMUxrL2Za?=
 =?utf-8?B?U1pXYmZwM0gzL0FnK0tvYXdvWEFnWkJodEpEWW5oZzRkZ3lZcEtnME5QbGgr?=
 =?utf-8?B?WkNOTkFySk9rNmxMRERob3BuMzIra3RlZ1BSVk15UmR6VzBGY1EzYXBjazRW?=
 =?utf-8?B?RnVzN1NwdVJ2Q04wM1BxVkxPQVZBaG94WkxxR05DcDF6TDFzK2xxdy9xbitJ?=
 =?utf-8?B?d3BibThIWHlrZ3VndnVPS1B4T3hvUUF0V0pqdzRTYU9MQnJFK3o2bWVDUVdC?=
 =?utf-8?B?TURoN0FYY1RJbXpZbm5ITU51VFZTL0NEek1zM2ZBOXE2eXlHK1M0emVjSlVY?=
 =?utf-8?B?dWwwN2toT1ZXMkJ4WjFTN0NadktKY0Rxbm1USWdNT2JpUHJiUmFwek55M3lz?=
 =?utf-8?B?aDFKSFVlYUxkVXdNVWNiNFM3eGtJN2JZVC9mKzZuL1RNakJibThCUklRUVhz?=
 =?utf-8?B?blRzN2ExbEx0RklDK0UxUHBqQUYzU0xCbkVxd1dsZ0k4TW9EY1pOeUtqcTI5?=
 =?utf-8?B?Zm8xT0JtRFBwZ3NnQ1I4V2xDMWhDT1RTQitNUFBSRUVlTGlJVjMrY2Z5MlBW?=
 =?utf-8?B?THo0MDZ1QmcxT0F4SEVZK1Y2SXZmNExFRzVyTGN6QVR3NVMvYTFZVFdwbFdy?=
 =?utf-8?B?eFI1Yjk1cnNGSC9rV2hoek1LcmI2UkxyTHFpTnROQ2gwdXE2YmQrUzlHUHBG?=
 =?utf-8?B?R0FyVVFLcURvdG9FMUcrZ1lNWTNpQjhGN2NRUFRuTHJNSnVPejVIc1ZOd2J4?=
 =?utf-8?B?aXE4TjdOazQrNEk2clV2djNOa2V4RlI4Rk1jYTNWMWxzTWlvUkhrMEh1SHFs?=
 =?utf-8?B?VjVXcG1lbjZINnB4UWFza2JHTFVxY3NxSjlCQldhYUREYTJFRUowWDJuLzU2?=
 =?utf-8?B?UVJKcVh2NnNCNVZPaTh2OEExaHNLTVIvNU52RVkrMGZvbU05cDZ3WjNhOTJ6?=
 =?utf-8?B?YnlFNFIvdzJjbmgwYjNMVzJoczE4Q0x2K0d0Nng0RGluTU5DZ2tjL2VjcWRV?=
 =?utf-8?B?UnZwaUhySFFWTEdQKzRWa3VOWkR6S0tiYTZkTnZoVTVkSG81YzlQa29ZVXFz?=
 =?utf-8?B?aHkxUmt0NC9uelM1anRJSjJyeUd6bERXUFZvZXl1Nm5HWUMwTjdlRzcwYVdn?=
 =?utf-8?B?MGFURjFhaDdQSVY4VDZQQkVZODZkSGgwSGZNeUZ4cW56dk5JOEVYS003MlJO?=
 =?utf-8?B?NEhVay9iS0NNc1p2cU5GUWdyZ3ZJZ1lIS2ZrR2FOdnB1QWV1Ry9IbHVpRHl0?=
 =?utf-8?B?YVdPcjd2dXVyU1poc05HUWxjTnlLakQrTjFIaUt4R0Zqc1ZXZU9IMFZEWUlu?=
 =?utf-8?B?MHZkZ1ZLN2JReFV6NXZvVmRjMC9zUTZiTWVOM1FpUjZtclJsM3RJWnJaMXlL?=
 =?utf-8?B?RGlxc25pWXd1SDVOaVRUUU5DODZUeUFERnNlZXhkYnFaNXBOQ08xYzVVSHF6?=
 =?utf-8?B?S0FsSWlkRG4xMnNZLy9jMXZucllJbDRaN3d4aXlqLzQ4K3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TU5lMTVyc2U2UUJCbjdRTlc4bVdLaExBRmhBOG4yM1E5anhRcEJVSDltam5H?=
 =?utf-8?B?dDlIOHJaY3dNVHJKb0xrZmZSczR0OVZqOGtLWFBEaDQyNlp3L3M0MURoZExj?=
 =?utf-8?B?TzZsM2tpYWV5L3FRT252MTZaenM1TkNYTEFtblo2WE8yMGFlcFRtL2dyZnBP?=
 =?utf-8?B?S00vNXNVM2d5Mk51UkNZQTVHSXE5YkJCTTM4MmRDSHF3UHdZOFFhY1F3SjR3?=
 =?utf-8?B?bmVMSlQ0SUQ3anI0bThpZDhhWWlFMFVyc0xJWFhMb2FGSVhJMUZXR01URDZk?=
 =?utf-8?B?aWgwOTgzMGRZeFcrdlhtczRkTVVJSG1hbE42TklxdGhJMWtvNU92bWRWbjdy?=
 =?utf-8?B?T1N2enhwM0MrcTlaNHJTQVNjbVcvdzI0TlJNL283ZWhDR011T3RhNnR1ZVBw?=
 =?utf-8?B?NnErd25odVpKeExVNkp5QnVHck9yT25wUWNzbzdzejZjZEo2SE9LVHlpK3pD?=
 =?utf-8?B?UEptckx0alB6eDlncU05SWV6WHhVdkNybkRFN2FadHpYSnVFTDF6MEE2a3Fu?=
 =?utf-8?B?aWt5SDNmUTNlOVJVUlcwR3pFZEZFaW45UElzYVZsMmR1d2ZwYmFmM1RIQ3pN?=
 =?utf-8?B?eGFOQjZGU213T2E4bG5tWFJpRFovZ2J6M2kzS2Q4K3VwekxxaGFMbTJxaHRR?=
 =?utf-8?B?VnRlWXJGWk9jcFZnSHhwYWppTnBQWWtKaXZsNjJjenBQWGhraEprL3hHMEhB?=
 =?utf-8?B?NnhJOEdNOXkwYXE5VnhIdU9YN3BGQ2NJSUYxR3VidGhHZnc4U0NKYVAxc3RC?=
 =?utf-8?B?RzlWVktvVVNuN0o4SHJqZEpaZytKazIzcWYwaGRVaGJ0Vm05UzVNK0VpZWVu?=
 =?utf-8?B?dURuUU5rOFZ2T0lSNlpDa1FFWFZIZ2ZPNHZxSkJCaFF6Vnl4eUpieFF4ZlRj?=
 =?utf-8?B?VytQZ09ORjBISVp4TDUvWFV3dC9ka3JqTUh4QU9ITkJuczZ6ZUpYUDA4RHcw?=
 =?utf-8?B?SW9KbE5Ia21xdERQc2tic1FXOW5QMFU0NkpxTkdRaUtZOEJOMGg4WjU2Tmto?=
 =?utf-8?B?cmJkMzNXQlFWSWQwY2ZlYzhWcU56OTZvT0VQZnR4aEdweEZwY0ZudVBBUzQx?=
 =?utf-8?B?UlQ4SGFGK0R1SUhRN0VzY1BERm8yVHVkUXF2SGltOFVjek8rbGMwNysrdXJN?=
 =?utf-8?B?eFFDOGVxbFB2WmYyYXJOY0VGdVFsREt3N2xFU3ZaQm5QOFdGemJqMW1RbVNL?=
 =?utf-8?B?c29xcHNKS0NvQkFaZ3NwZU9HdUVlV2pBUDdHNjNZUFVmWlBlSUQwMlZDRUFu?=
 =?utf-8?B?QlBlRWhJTW44Um9YeDhaMHpZMUZjb1RtUzJJMTNrS0ZGbHh3NWJzUTU4Y1lp?=
 =?utf-8?B?ZGk5M1dsK0lYMXVCQy9uYXkvZjNuYWVDM0hsUS9CQzhjbXNORnZGK0JpNTNS?=
 =?utf-8?B?Zm5xV3BPajN0WGRsY1NUeGNGa01PQTZuWEhHdmhWZW1UYldGU2k2bStlQ0Rs?=
 =?utf-8?B?bCtZTmt6b0ZHMVhCcEhZUEV1ZHpmejllYjQwQ1dmcXZwN25SZlNRU0c0emxL?=
 =?utf-8?B?MVlsaWFwbnZSSVYvTWM4R1NMd3VzbkpQUXJtUStxdUxNOTloVVpGM0FuNlV2?=
 =?utf-8?B?SVJxbi8vZit2K2pkV0tSemM2MjBpNXlPcnRrWE8ybVJsaERFMTdxQ25uTlg5?=
 =?utf-8?B?Y1FyQUVsR0xlSnRIQlB0UHc0elJONkJMbVhma0dobEhMbTBvRmsyanl6K25D?=
 =?utf-8?B?eFdTT0cvcVBEaEYyUzZRMW9idER6RUswWEQ4NUdEYjVtZzltcTdwOVpDMjUx?=
 =?utf-8?B?TVNHb2hmOHJHbWZrck5LcTZBRm1hSTduMzRKbFZhTzRUbGhIbDY1Nkg0Z2dy?=
 =?utf-8?B?OUg1VlVCRlVmUDY5R1p0U2FPTzZsWStBSHlmdHltYlpsbDhlaC9lOWZlbFlh?=
 =?utf-8?B?QmNVWUl5SDNUaTNVd2dmSXZsSmIvYXA2L0t6ZXEzdVVXTEJJRHhFRWozaktv?=
 =?utf-8?B?S2FwQmFDc2JTbDhPOXFrMC9yaTBlbzJmRFo0eFpDaGhoSGNXYng1bEdCbjdG?=
 =?utf-8?B?dUM4UWErbkNYZmoxcEd5L3FlWUViN2tpSDFTREtQTVQrakhWRWRzMWZlN1Ri?=
 =?utf-8?B?MnkxcEI3cjdYcWQ4ZEx6ZTRwdEZFMmpoZlZmZEdZd1ZYMStsWEhuQytUZzFY?=
 =?utf-8?Q?BnaaDNwSWRgo9xP5lcclfZPov?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc1f9839-1c5b-4c5d-f42d-08dcdd1da4c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 04:50:56.7706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egT89QBUJVzyiBLlya5D2H5l/CtWR2eSDpyqFoLbWOiJqaHsAolqxD1S5MJOQ5XCzNb1GLoU/Lyyru/5LiZZVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7329
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyNCwgMjAy
NCA5OjAwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPjsgU2VhbiBQYXVsDQo+IDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+OyBLYW5kcGFs
LCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+Ow0KPiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBT
dWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2hkY3A6IGZpeCBjb25uZWN0b3IgcmVmY291bnRpbmcN
Cj4gDQo+IFdlIGFjcXVpcmUgYSBjb25uZWN0b3IgcmVmZXJlbmNlIGJlZm9yZSBzY2hlZHVsaW5n
IGFuIEhEQ1AgcHJvcCB3b3JrLA0KPiBhbmQgZXhwZWN0IHRoZSB3b3JrIGZ1bmN0aW9uIHRvIHJl
bGVhc2UgdGhlIHJlZmVyZW5jZS4NCj4gDQo+IEhvd2V2ZXIsIGlmIHRoZSB3b3JrIHdhcyBhbHJl
YWR5IHF1ZXVlZCwgaXQgd29uJ3QgYmUgcXVldWVkIG11bHRpcGxlDQo+IHRpbWVzLCBhbmQgdGhl
IHJlZmVyZW5jZSBpcyBub3QgZHJvcHBlZC4NCj4gDQo+IFJlbGVhc2UgdGhlIHJlZmVyZW5jZSBp
bW1lZGlhdGVseSBpZiB0aGUgd29yayB3YXMgYWxyZWFkeSBxdWV1ZWQuDQo+IA0KDQpMR1RNLA0K
UmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+
IEZpeGVzOiBhNjU5N2ZhYTJkNTkgKCJkcm0vaTkxNTogUHJvdGVjdCB3b3JrZXJzIGFnYWluc3Qg
ZGlzYXBwZWFyaW5nDQo+IGNvbm5lY3RvcnMiKQ0KPiBDYzogU2VhbiBQYXVsIDxzZWFucGF1bEBj
aHJvbWl1bS5vcmc+DQo+IENjOiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNv
bT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS4xMCsNCj4gU2lnbmVkLW9mZi1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gDQo+IC0tLQ0KPiANCj4g
SSBkb24ndCBrbm93IHRoYXQgd2UgaGF2ZSBhbnkgYnVncyBvcGVuIGFib3V0IHRoaXMuIE9yIGhv
dyBpdCB3b3VsZA0KPiBtYW5pZmVzdCBpdHNlbGYuIE1lbW9yeSBsZWFrIG9uIGRyaXZlciB1bmxv
YWQ/IEkganVzdCBzcG90dGVkIHRoaXMgd2hpbGUNCj4gcmVhZGluZyB0aGUgY29kZSBmb3Igb3Ro
ZXIgcmVhc29ucy4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkY3AuYyB8IDEwICsrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuYw0KPiBpbmRleCAyYWZhOTIzMjFiMDguLmNhZDMwOTYwMjYxNyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gQEAgLTEwOTcs
NyArMTA5Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2hkY3BfdXBkYXRlX3ZhbHVlKHN0cnVjdA0K
PiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gIAloZGNwLT52YWx1ZSA9IHZhbHVlOw0K
PiAgCWlmICh1cGRhdGVfcHJvcGVydHkpIHsNCj4gIAkJZHJtX2Nvbm5lY3Rvcl9nZXQoJmNvbm5l
Y3Rvci0+YmFzZSk7DQo+IC0JCXF1ZXVlX3dvcmsoaTkxNS0+dW5vcmRlcmVkX3dxLCAmaGRjcC0+
cHJvcF93b3JrKTsNCj4gKwkJaWYgKCFxdWV1ZV93b3JrKGk5MTUtPnVub3JkZXJlZF93cSwgJmhk
Y3AtPnByb3Bfd29yaykpDQo+ICsJCQlkcm1fY29ubmVjdG9yX3B1dCgmY29ubmVjdG9yLT5iYXNl
KTsNCj4gIAl9DQo+ICB9DQo+IA0KPiBAQCAtMjUzMSw3ICsyNTMyLDggQEAgdm9pZCBpbnRlbF9o
ZGNwX3VwZGF0ZV9waXBlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CQltdXRleF9sb2NrKCZoZGNwLT5tdXRleCk7DQo+ICAJCWhkY3AtPnZhbHVlID0NCj4gRFJNX01P
REVfQ09OVEVOVF9QUk9URUNUSU9OX0RFU0lSRUQ7DQo+ICAJCWRybV9jb25uZWN0b3JfZ2V0KCZj
b25uZWN0b3ItPmJhc2UpOw0KPiAtCQlxdWV1ZV93b3JrKGk5MTUtPnVub3JkZXJlZF93cSwgJmhk
Y3AtPnByb3Bfd29yayk7DQo+ICsJCWlmICghcXVldWVfd29yayhpOTE1LT51bm9yZGVyZWRfd3Es
ICZoZGNwLT5wcm9wX3dvcmspKQ0KPiArCQkJZHJtX2Nvbm5lY3Rvcl9wdXQoJmNvbm5lY3Rvci0+
YmFzZSk7DQo+ICAJCW11dGV4X3VubG9jaygmaGRjcC0+bXV0ZXgpOw0KPiAgCX0NCj4gDQo+IEBA
IC0yNTQ4LDcgKzI1NTAsOSBAQCB2b2lkIGludGVsX2hkY3BfdXBkYXRlX3BpcGUoc3RydWN0DQo+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCSAqLw0KPiAgCQlpZiAoIWRlc2lyZWRf
YW5kX25vdF9lbmFibGVkICYmDQo+ICFjb250ZW50X3Byb3RlY3Rpb25fdHlwZV9jaGFuZ2VkKSB7
DQo+ICAJCQlkcm1fY29ubmVjdG9yX2dldCgmY29ubmVjdG9yLT5iYXNlKTsNCj4gLQkJCXF1ZXVl
X3dvcmsoaTkxNS0+dW5vcmRlcmVkX3dxLCAmaGRjcC0NCj4gPnByb3Bfd29yayk7DQo+ICsJCQlp
ZiAoIXF1ZXVlX3dvcmsoaTkxNS0+dW5vcmRlcmVkX3dxLCAmaGRjcC0NCj4gPnByb3Bfd29yaykp
DQo+ICsJCQkJZHJtX2Nvbm5lY3Rvcl9wdXQoJmNvbm5lY3Rvci0+YmFzZSk7DQo+ICsNCj4gIAkJ
fQ0KPiAgCX0NCj4gDQo+IC0tDQo+IDIuMzkuMg0KDQo=
