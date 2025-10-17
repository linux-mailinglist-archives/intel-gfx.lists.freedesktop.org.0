Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D576BE7B9E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED9910E012;
	Fri, 17 Oct 2025 09:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TrL+G1rp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A3610E041;
 Fri, 17 Oct 2025 09:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760693405; x=1792229405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wCCVyF+jWoqKq4qUxQejPH+JM4qudQNYJeDcJnVY2uY=;
 b=TrL+G1rpPrywqEp12M95GlEjbZuVf9aqIbqy+RI3IrePl/OPK/ShjlXd
 oejf4/SbZNZ7p2Co9HMHIm3gt1Ej+W6abNI5fRwAWhnTq0z7Yf7+bQaI8
 OWt6oZel83BRE1zJBcI8zYYgwWilFYVhclX8Y/rulAR4CoLbtjaFMA6N0
 0fVqpkN3SxWaJvckRJfj0Btf1ilhhSV18GwZ3IRXwK32pfnaOsDs7A/Sn
 3YqbveOIc29TK4bIf/lgZUYdCEdv4TfX3a+SxoMnKcuTnmaxuxQM75ECI
 yLMtsX2qGs/ihcfMbyO9Qa/336rUALy2JKqkBmA6tBql8+CERDfM9jq1C Q==;
X-CSE-ConnectionGUID: yTL0NonoS6eHUvpxMoCH2g==
X-CSE-MsgGUID: ZRiuCnK4QsyFRoSNoWP4yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74015412"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74015412"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:30:04 -0700
X-CSE-ConnectionGUID: CfAlgm7ES9C3Vc6eZWSAPg==
X-CSE-MsgGUID: BJ0aE0drQjexgLPQEFyPPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187086184"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:30:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:30:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:30:03 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:30:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J7F2pK1fxyXmNI46VYqh+pnFWaiRfWuT2tDyr+AVfJT+9NgiAV54rmBO59JO03aCpwa0iSa2ukH9Q4bKtbQo8NgeYPJHq/4enN3z8ujz3g6TJrgtXHMr/8LPGm8og2m+qnHfhE8tgDAkdFjp5lKD0iI/y+YMxibKUI7VbXwyzVcCsmSnhiGU4yrxI/rkqlwrzBCwfxIBWu6UMTpt5n3hnkU6Nh/lhRE0L2i1JtVu+HbTu0jSd96NnZ9Kvm2E3fVXxX4VTh/9ME/Hbt3nt1lwhrkilSeYpoX6rIt5SCZhOKpMrCVq5xaUmTDslQSKsnQhLfYNqquICBzdS5oZFXDpvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCCVyF+jWoqKq4qUxQejPH+JM4qudQNYJeDcJnVY2uY=;
 b=yU0xsfsQStBGCvPgyrjIgyD3PecER56D+RBBqFRfmRWzGz206ZjAES34FhXw6O+xr9PcS+/5Bh4zcqyoQdZ+lpNYM2GHNSNj7HxHz/Hrxb7VEvy5rS0+gRMSvlahZPBCNw6l+cHJbaj/elnIOPplx/Sr4/7bCwhVVxj7O47gTfbCyktG6vADvL8s2smLlOplkC4Qy8un/AdUBZxjJPV/VG4v9EoUGDV2Y0sEiSko89kais/w7kn/e0gqCIG7/8rRLGxGvxbPpTIfM5/CVCVrzR2t9eMsR+W1W1PZk7LdMSXigZBjs26BettsjD5GGJiuNQl3G0GsZlK3Use9FQPDBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB9473.namprd11.prod.outlook.com (2603:10b6:8:258::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Fri, 17 Oct 2025 09:30:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:30:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuAgAAGYgA=
Date: Fri, 17 Oct 2025 09:30:01 +0000
Message-ID: <aa62098194dbdd413ac97479f5c9a4913078fa4e.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
In-Reply-To: <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB9473:EE_
x-ms-office365-filtering-correlation-id: a5cbac1f-2590-4798-8624-08de0d5fbf51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?M0VpZWc2YUk2MFVLU0xDaG1hd1d2VDBTMEJHMVR5dXZYUUJlVC84YzFjNVJH?=
 =?utf-8?B?SGJ2OXpjNjlJQkR6cnZiQktPT0Vva0RPK3lmVTlScGZBdy9VUnl1M1Z2cE94?=
 =?utf-8?B?MkY5aWM0RVlKSWQwQTZPSjJDR3RlSzBVUElLUGdnT1hleW5YN2lQQ2lCbzBV?=
 =?utf-8?B?Yk1zUzdiQXBkWG80YUxYd2lMTzZJZHB1bXRDY2RPUzhQQWlacEN3azJwOTg3?=
 =?utf-8?B?ZkhWbGxvMTFHaWsrZndCOGQ4QTA1QzZObEhYVy94ck1iUWlIN0dLOFN3YnNp?=
 =?utf-8?B?aXc5aXNpOGNGWnR1Wjk5WFNLT01abW9BZDJBUG1yeThZVFMrTmIwSXJpUTZV?=
 =?utf-8?B?QnljQ2lnU1ViK3NraUd0cEVZMnB2MWllSGJ2VWoweVZCTjZKbUNvdjkrMUdU?=
 =?utf-8?B?WUtmT2VNVXJBWVFSWElvMjJBaVlXMGZsZmN2RGM1MERtRGVab1JLSU40eS9p?=
 =?utf-8?B?anRqN2dzMTdTTVlqc1VmT2FubzRrNEVwWDUwbFRPL1FLczlRUUFyR3g5WUVG?=
 =?utf-8?B?VEgvUUcwalBsTzdZQ0hVRkthRWVweFNkL09Ici9IcVJhTFNwWFdKU0FuaGs2?=
 =?utf-8?B?UGFqUWsyRDVRLzk1bzlWbUpZY0pmRFlMMi9Lb0dSbk1FVGRVS1RNdXJsMjdm?=
 =?utf-8?B?K1JnK29uenVmTHlDQVBhbjFMNXcraE1LcXFubnEzQnRRczNVTGlyTnNpMTlz?=
 =?utf-8?B?Sm9Gb0tKY3k3bExyTU5aNEZmaFhEVW50UTdDeURYSlBLWllCdThha2RoSStF?=
 =?utf-8?B?dGtWODJ4K1VoRjN6VHkwZkVLNVJyT1JKUHNSV3UwYXI3UHdJTW1PZU84V1pr?=
 =?utf-8?B?emxuUDVZdm44cUUrRmhmdGY0bmNuUFRFNG8xeEt3UG5YbDE2WDNYeEU5RThn?=
 =?utf-8?B?MzlYY2czWG1aUitIMER6SllCR3haMm5ZeEZoT2FUczNMb3J5d3IwdkJMMTBE?=
 =?utf-8?B?RmtJYXh6eUFRQlNKZUFqOWs5aWNjN010bk81OVNzUW92Z3B2cG9XZW5FdE0z?=
 =?utf-8?B?cHZqUzBsbFUxTVl3dnJJMWRMazE2anNUMVBSckhZV1cydmNVWG1Wc2lyUWNY?=
 =?utf-8?B?RzNIcytaNkExWFJTK1RKbFBCUkQ5UjBFajhjYktFQjFnYitiTXdpK1RMU0tv?=
 =?utf-8?B?Vkd1ZVFjNXlVakhLNGdwQkxGbWpUVHhuYkMxT09rMmZNK2ZzMWduSVdpbXBV?=
 =?utf-8?B?QkFQckRRN25QVElPSEdQbCtFOEpKUTY2cVBJUkxhc3JUcXBRRmJkRUNJVlhr?=
 =?utf-8?B?UHNvSE45SVBpOVpGWUkzMUQwUFVUL3hIZENSLzJLM3k4NEpKRmhrY0hPMDZD?=
 =?utf-8?B?UmFYM0I0TUlGcXE0WUxHTEd5TjJHNnY4Z1p5OXVtREQ5Mm9BSlZ1KzBreG9m?=
 =?utf-8?B?S2ErRURzQi82TU9VL1BGbUtLMGpPTlJtbEpVZG4zZXE2dGZHR0wzNjhXblZH?=
 =?utf-8?B?czk1VUxjOWt4VGtkY2UxWGRSbkQvZWxXWFJJOHlkQ1MzNUpBN0QzeUQ1VmdN?=
 =?utf-8?B?RW1sV0pRUEVtNDQwN3d0UDdackJjUlpNdWpvSWszaXhnRUx0ZVJoa21DVFZs?=
 =?utf-8?B?ekVZNmNpa0lXUkFLN3pudVBiU3VmQTBPUEgxb1hIZWoyN3ZyNmV2WStJNmdk?=
 =?utf-8?B?aDNITmlCMzZFdDFZbDJWaXlWN0lJMGp4SEM1dDFCMVg4UlZGR2pxdmd3djJQ?=
 =?utf-8?B?SjBjenlFOUlwdzNsaGt5Z1NQQkhIMmFUSzYxR0ROR09aNzlXdXZEbFREU3k0?=
 =?utf-8?B?RjFUdzR4cDF2ckhlUXpzeHM3VHprMXZWSXc5QkdTYnRGNy9hOXFYVTlCT2ky?=
 =?utf-8?B?QklTTEdEMEJBcFFoSkhqdUlBUGJ4VzdCZUM3WjlaYnAweVprRk5SdExtZ0xo?=
 =?utf-8?B?d1lXWHl0RXhoVXlHa1UvZjluZzBHYktDa3pTbzhDMVZrU0RLQVZ0RWd4Ulhi?=
 =?utf-8?B?V1NYVjVqbHR6QlZpbnE3KzcyUDdUeVZ6ckg3L2xLNGtwblkvMWVFeUpmbHJH?=
 =?utf-8?B?SXB1eFhORUN2RE5DbFc0aWFqT1UzanlUenN0WVhUWEpNamFURzRvdGFUZU85?=
 =?utf-8?Q?aii/r7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFFMWHNQS0JaaGY0cnQ2WDNMUEUxRHN4NmJ3dFJmd3ZVSFRkVVdxV2R6MUJE?=
 =?utf-8?B?cldpT2pmeCtoTmtHY2p0UTMvNDJYN2IxdVl3UkJyNlVYREVCSjBsZVNBaDBD?=
 =?utf-8?B?Y0cvVU1PbFV5RTBNc1F2dVNTS0NYZU9sVXJyL0ZLY2RqQkFoTmRVa2s5TFJk?=
 =?utf-8?B?QkJnQ05ndHhoYkZxdzZWWm5qQmU1bHZpQWoxUjAraFd5UmpOcXVBa2UrK1pW?=
 =?utf-8?B?RTNxOFBSQ0k1VzJHdVpwUUthdmxyRkVEbk55aDF5Wi9sZ2hqcytEN2VqQlc3?=
 =?utf-8?B?SEY0TkRVOTdHR3ZaVDdDSWo1V1FBK1hyUnpUeWFNQ3BxMVY5MUErWE1vV2JB?=
 =?utf-8?B?cnY2MHhkYnkyakp1dnoxcXNnQ1lDM04vL293Q2NZTUVtNFl3Ny9ZUmxtNEd1?=
 =?utf-8?B?UEVvYkJLOXptcGVsTjVkTytIcGkxVFVTcEM3dGt0R0dTdGZPYUYzS01rRXdL?=
 =?utf-8?B?NkpzUFhwZzc5NGN3Nk1pS2pjdmQxMmxsRWc0TnJObERvdnpGUUNiN012TVQ4?=
 =?utf-8?B?bjMwUFFXZStNWC9MbTVpVzUvTjRYMmRNb1pzU2lTWnJpRHB5VFArdkI1NnZr?=
 =?utf-8?B?Q1FhUjcrK1JwQlNSRkNxSE1GYnJBc2Y0TXY2YngxWkVpNnYyWC9nd1Fmcm1Q?=
 =?utf-8?B?dzQ4MDR1TFh2bDUvcVF1UjhlQkcyMEFUWnRwelRzQkViR2ZYS1NJd3YyVUox?=
 =?utf-8?B?YnJ1b21ZbUhtMzV4bVdKTC9ETzBtUE1UZnlRMEp5T2ZCWlRnbmJ0bzUyOXNv?=
 =?utf-8?B?dTBhMnU2a0tOVHFmQjM3NUdJQlY4TUtUbmplcitFbVdMTlUwVTAwSlBBZ2M0?=
 =?utf-8?B?VGd2Uityblk4L3RDaEoxRGs0VUoyWVZDZk4zYnpEZVpzbFBPY1A2NEhMUWZ5?=
 =?utf-8?B?RCtVWVladFFFYy9vL294UTMwTEtKSTdCQjVGWVZKb2x4RGFjcnRYd0N3cGZ5?=
 =?utf-8?B?a0hhVWowbWE1aEF2WmN3QUN4aHVIcHhKVEd0RGpacjVmdlVlVnhsTkV3NnNj?=
 =?utf-8?B?OUlSVXEwbHk2UVJEUkJrM045ZVZ1cnhhUnRqRmI5UnFFOVdwRDlrTXNmZlBX?=
 =?utf-8?B?NlhYeXRmVHBtVzBiN1kvL0RqVllvaVpUWmJya1h4dmlVRWpESk5qWmlKZWxl?=
 =?utf-8?B?bmlhQ0RDRzRWY0pnS0lGVytTQmdza2p1UmdkVTJPK3FDaFZZREp0ckJiMnMv?=
 =?utf-8?B?OElBREx0MWpBdmlWZ3lkeXdpRm11aVZWbW1Za3VITU1YVGdDRkd3ZUp2T2Zu?=
 =?utf-8?B?WVhRR1FGNFVBRkxoUjhhYXBMNkJkSmFzbkhBWUFaOVRZRTUxOFM3MlJ5bHlr?=
 =?utf-8?B?cHU5QXZucEhuS01qeWxMVmovS1pnMU1kbW9SeGxQQTNvUENaQlErakcxVTNO?=
 =?utf-8?B?ZEV3cERVRHFpUStERGcyM0lCUnA2Y1VhWHBkSTJtSzFNejhiM3hxM1cxaXE5?=
 =?utf-8?B?dGt2RExzcndpMGNJQWIreCsxRllTZjMvZEdwUFJnSzFoanY4U0kvb2t6Nm1Y?=
 =?utf-8?B?ZkNlZ2k0bXVUY1hrYVpQVFdLZGxpQ0RreXc1NTI1MktEc0NQY1ZNTTVKNnNs?=
 =?utf-8?B?UUpNR1dXQlBTTUpYZDhnUkVoK0Yxc1kybU8ybmRnN3Z1UElHYXlkVmdud2c1?=
 =?utf-8?B?TitBUjlhZzBhN2g1Y2pKUUl6M2NQRmlRV0IvNzliQXRXSlVqN3ZpY0wyb3VV?=
 =?utf-8?B?RkdxUlljWjdCbVNxYTRpMHFQWnB5dUpLN0JJa0UrbWdDLzJRUVZQdEpDOGJp?=
 =?utf-8?B?cGVuWEU0a2lyd2ZWUXZlcFRBSEpVY252bVVwbW1mbEFYSzI1RFlnNC9BWWlz?=
 =?utf-8?B?UlB6Yjg1TGVQRFFSMnlCWnZESVA1K3NuU0IxNDV2TjRhZnVPcUVtMnBDUitD?=
 =?utf-8?B?clo4dHF5WXBIOE8zWWtlY1VSb0hseHRmOC81RnJUYVdCdjBCTld6U3ZHNGF3?=
 =?utf-8?B?TGZTWWJ3RzVkUStVNUczeHRmUm5IdVVEWW9DeEN6RlNPKzB4YTlsZU9WejYz?=
 =?utf-8?B?Y0dYM051SzNRS1dmNlFuUUxxNytJVU5CODFGQ2piR1JCcE05emdqMmFDZ216?=
 =?utf-8?B?RHZxeERsMDBGWnZOaUkvTHo0YS9mNlJOd2Z5WmJNa2lIOVpmSmJJeWsvRFF5?=
 =?utf-8?B?OGRCWTkvN2drbzB3RklORVR6N0JwNkhzSUM3UEI1cWJtU082MnlFOUUrUis5?=
 =?utf-8?B?UjVRSCtOTEY4cVU3N1hYa1I5ODh2Q2t1MkdsTjY3dDUzRXhxTlRwbGNLVUlz?=
 =?utf-8?B?dVFYZEtoZkIzYVhJTklmckpCWTRnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <348DDBD7EB34874D9AB5D7C00FEB59B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5cbac1f-2590-4798-8624-08de0d5fbf51
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 09:30:01.5718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t9ZC0sx9Yoi+VdmUUhX38ziJTfc9u3WSHN7C9o0hoVWwoDcPfweH5jV0orMwDxImM/H0nz/vBNyY33W2BhdEDG/fDcjCV6JTCdHY/qbp03k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9473
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDA5OjA3ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNS0xMC0xNyBhdCAxMDozMSArMDUzMCwgQW5raXQgTmF1dGl5YWwgd3Jv
dGU6DQo+ID4gSW50cm9kdWNlIGEgaGVscGVyIHRvIGNvbXB1dGUgdGhlIG1heCBsaW5rIHdha2Ug
bGF0ZW5jeSB3aGVuIHVzaW5nDQo+ID4gQXV4bGVzcy9BdXggd2FrZSBtZWNoYW5pc20gZm9yIFBT
Ui9QYW5lbCBSZXBsYXkvTE9CRiBmZWF0dXJlcy4NCj4gPiANCj4gPiBUaGlzIHdpbGwgYmUgdXNl
ZCB0byBjb21wdXRlIHRoZSBtaW5pbXVtIGd1YXJkYmFuZCBzbyB0aGF0IHRoZSBsaW5rDQo+ID4g
d2FrZQ0KPiA+IGxhdGVuY2llcyBhcmUgYWNjb3VudGVkIGFuZCB0aGVzZSBmZWF0dXJlcyB3b3Jr
IHNtb290aGx5IGZvciBoaWdoZXINCj4gPiByZWZyZXNoIHJhdGUgcGFuZWxzLg0KPiA+IA0KPiA+
IEJzcGVjOiA3MDE1MSwgNzE0NzcNCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8
YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTIgKysrKysrKysrKysrDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHzCoCAxICsNCj4gPiDCoDIgZmls
ZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNzAzZTVmNmFmMDRjLi5hODMw
M2I2Njk4NTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtNDQxNiwzICs0NDE2LDE1IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVf
Y29uZmlnX2xhdGUoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgDQo+ID4g
wqAJaW50ZWxfcHNyX3NldF9ub25fcHNyX3BpcGVzKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4g
PiDCoH0NCj4gPiArDQo+ID4gK2ludCBpbnRlbF9wc3JfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4g
KwlpbnQgYXV4bGVzc193YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPiA+IGFscG1fc3RhdGUu
YXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gPiArCWludCB3YWtlX2xpbmVzID0gRElTUExBWV9WRVIo
ZGlzcGxheSkgPCAyMCA/DQo+ID4gKwkJCSBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKGNydGNfc3Rh
dGUtDQo+ID4gPiBhbHBtX3N0YXRlLmlvX3dha2VfbGluZXMsDQo+ID4gKwkJCQkJCWNydGNfc3Rh
dGUtDQo+ID4gPiBhbHBtX3N0YXRlLmZhc3Rfd2FrZV9saW5lcykgOg0KPiA+ICsJCQkgY3J0Y19z
dGF0ZS0+YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzOw0KPiA+ICsNCj4gPiArCXJldHVybiBtYXgo
YXV4bGVzc193YWtlX2xpbmVzLCB3YWtlX2xpbmVzKTsNCj4gDQo+IGhtbSwgbm93IGlmIHlvdSBh
ZGQ6DQo+IA0KPiBpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0K
PiAJCXBzcl9taW5fZ3VhcmRiYW5kKys7DQo+IA0KPiBXaGF0ZXZlciBpcyB0aGUgUFNSIG1vZGUg
aXQgY2FuIGJlIGVuYWJsZWQgd2hhdCBjb21lcyB0byB2YmxhbmsNCj4gcmVzdHJpY3Rpb25zIGFu
ZCB5b3UgY2FuIGRyb3AgcHNyX2NvbXB1dGVfY29uZmlnX2xhdGU/DQoNCmFsc28gdGhpcyBzaG91
bGQgYmUgYWRkZWQgdG8gcmVtb3ZlIHBzcl9jb21wdXRlX2NvbmZpZ19sYXRlOg0KDQogICAgICAg
IHBzcl9taW5fZ3VhcmRiYW5kICs9IF9pbnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3ko
Y3J0Y19zdGF0ZSwNCgkJCQkJCSAgICAgY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSwNCgkJ
CQkJCSAgICAgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOw0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+ICt9DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBpbmRl
eCBiMTdjZTMxMmRjMzcuLjYyMGIzNTkyODgzMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+IEBAIC04NSw1ICs4NSw2IEBAIGJvb2wgaW50
ZWxfcHNyX25lZWRzX2FscG1fYXV4X2xlc3Moc3RydWN0DQo+ID4gaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHAsDQo+ID4gwqAJCQkJwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+
ICpjcnRjX3N0YXRlKTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnX2xhdGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAkJCQnCoMKgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+ICtpbnQgaW50ZWxfcHNyX21pbl9ndWFy
ZGJhbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+IMKgDQo+ID4g
wqAjZW5kaWYgLyogX19JTlRFTF9QU1JfSF9fICovDQo+IA0KDQo=
