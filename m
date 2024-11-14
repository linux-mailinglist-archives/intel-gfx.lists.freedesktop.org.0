Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DDA9C8658
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 10:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0F110E7C7;
	Thu, 14 Nov 2024 09:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="brGo/pYM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C68E10E7C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2024 09:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731577239; x=1763113239;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=danmLjs1MrClxRgIrKllDc4oEzcamGabGjC2ErCGzsc=;
 b=brGo/pYMguJmdj5seV9C3Tf0JESsBno6f8DgCgK05MHYmOr3SXlLJbin
 XYaFchZEAlLgjuEcNNo9RXoQSQuhkGfB0uftelqw/aHRldBDftXUkuXGC
 6LkH87ghJi2cLK2SMreu4N4VBWX8aOmhoWTJ9GWc3OtCvs/S/UurPsa/0
 a+sKQKHwchDOaipLvgIlofXm0C+DSydb3lgNC2s+OC+/IiEVjF9HCGvc+
 bUvaXzVLh/fgQoc2bfextZIxdlpqG8NqbLNL2PU+CyE0tL4NgrqrQUtJ+
 XOG0SG6wlhnXGGJfgK5k9Pid1DOkZMPhVFrg9yGdmJHVyNb1RKpq0n//i Q==;
X-CSE-ConnectionGUID: F549CWvDRoulrcEaq/6TWQ==
X-CSE-MsgGUID: eGCRfh+9R/O/AH5Wu31tzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="30913158"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="30913158"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 01:40:38 -0800
X-CSE-ConnectionGUID: UTqDaG4bQhGt053DLR+Cmw==
X-CSE-MsgGUID: NP0CmI11Qh2Ix6xe123vxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="119080770"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 01:40:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 01:40:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 01:40:38 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 01:40:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qe5zPMgiM8O2rn71ZDDsuLenqDirZ8Bc9B5xu2OI0y9iN9BFH7j/DSH5jCP+cw9Ga8SUBl9/rl00KV/SqTPIVQt2s/SZ1/NLXirBYiOzt7ZIfsMrMI6252gi+00vIzGW7O8mNN3/CsAheA3P8Qx6SGKmVWcnIhf4NP2VR/VxrC8UsyBgGWJAbsO5zTqEEDfiJHEtVhCg3UFU3DLAZ5skanJ5ErIqcCmqXY8YSFbytS/WgOXzlQ1EIT/FwC5mO1Gj5vzfXD+OsRno4oOsWyQpODnVZOnoeZCrIYGprgeNwuSxCWf7tMEPFm1XII1LF/eIOq9fvWPBfBxn8O0Dnmwhzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=danmLjs1MrClxRgIrKllDc4oEzcamGabGjC2ErCGzsc=;
 b=JzQ+WGBkiThdxN3K76tgJLuhfWC/B+b4jIUQatp7u0/CRYWDsBp3Srcg0SYgfTrCxs6yI/8zD/gw/t4pHxdDR7IIn8Bs7uGYszZDB15MEmmUmgUa60jSkbqRewGwCmIBH+Yu/Gkqm8yqJw2Y4WhPm6cmLZmaVCYiicTFWuFisEF7M7MnS7sk1mgEblnaH5Dt4SUlP3Df/N8PJH6M0D1+pSE/jj7LTpZ7uyMBZfYSPT6KZn3D5oL/VcuvQhyXqLUuvSFyBnc2lmHKFh4aFVM3O6clTZ+NHkH452uQ1fJje+u5uYqLvEp4UnY3QTJ3dlGatZTSKcopWc3lE/JE5JXNSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6610.namprd11.prod.outlook.com (2603:10b6:510:1cd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 09:40:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 09:40:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Garg, Nemesa"
 <nemesa.garg@intel.com>
Subject: Re: [PATCH v2] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Topic: [PATCH v2] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Index: AQHbL3G8VPyyUd7VX0ap17NX4aq2ArK2k5eA
Date: Thu, 14 Nov 2024 09:40:30 +0000
Message-ID: <bade2dc028aa9decb75a99d5bd3dd9a99ce6b3aa.camel@intel.com>
References: <20241105103916.1857731-1-animesh.manna@intel.com>
In-Reply-To: <20241105103916.1857731-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6610:EE_
x-ms-office365-filtering-correlation-id: d07edf8f-b26b-41cc-7598-08dd04906127
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?V2tnUnJxRTRVa05GVTlEcVN6alAwRlFOSG9Nb0EvU2xxWkVvLzJuY3RnU3BK?=
 =?utf-8?B?QnFsWmsxSXI3RkgzMXh4dHJuazg5cWdMTytQeGF3YkNtT1pwdHJ0UkFzWHp3?=
 =?utf-8?B?Z0VBbTJaWU5Qc3o3WHAxaU1BakhwcVFBSHNnZVlqMVYyb2pwcHVadi9JcXFY?=
 =?utf-8?B?cTN2eXdwM1h0WmZSRS8vRkkyNk81R3MxSklXRDhucXhJNDRNWU5ZemFzZXI5?=
 =?utf-8?B?ZzlhY21tRnhOM1FuSFlXNFB6TW9rR0ZONXlLRTh0ejhBczlYZGdpQWpIeTQy?=
 =?utf-8?B?R01hdko5cmNzZFJOZFdhMzB1Rm5OMng4WWJMZlkzSHVQbXV4azYxTnFLNEZm?=
 =?utf-8?B?MzNWMjlCZ1R5dXdhbkdvY2ZhOFJvUlJKTThjVUFjN0l0dGxGVVY2REplbkFB?=
 =?utf-8?B?R09jZFZMYk9QL0ZhSW5tSUpsdHFKVmhkSW5kMnFpeFRITTd6dFVic3RmVm92?=
 =?utf-8?B?U01XUHBUOGV1WERSd3VyR0F6aFYvUnM3OVdFM2s1Yk50UjhncTZ5RDNwTlF2?=
 =?utf-8?B?Rk5hdU9CSEEvUTlIY05PK0RpcGdOcy8wdVA3ais0M1NQOGtIOUQwSURsenRr?=
 =?utf-8?B?WCtldDh4U1U1SURMR3V2WU9YUFE3SkVMenI2aCsvM1R5MDVTMzRFcm5tYjQy?=
 =?utf-8?B?ZTN5T2p0cXZTenBYU1kxL3VCcm1BZHhIVTBhMnBKaEpXMnJSS0NUdXJHeitY?=
 =?utf-8?B?Mkllazd5U3d3ckNaYTVOVDNUNVpFRTFJT1VZQVB6UC83bTVrMEpVZWRsSnZ1?=
 =?utf-8?B?eVh3QkErOXhJN09XOFVCd3N2bnFZUXJqbFNaZS9HT2RTVUFpVjJseWw1T0Vi?=
 =?utf-8?B?eUF0ekNFekV4WFhjRkM0Z2YyZFpFMDlVT09pVWZBbUdqU0IrZE1ySEVwd2dm?=
 =?utf-8?B?aGlpTTdaWU0rd2ZuNk9hYUc5TGFOM0laQVhFRUVwUWNOT0tqSnJVcnZkRFgw?=
 =?utf-8?B?Mkh5M3lyakR2SDQvdSs5MWhjdFhGWVBqc3RrdFVIaVhucVBwVXBHckUxQm5I?=
 =?utf-8?B?YzFvUUpmT0hjSkVtNTNGTTVCSnJhYjA5WTI0MExrMGxYdGVKVGRKQzE1K1J0?=
 =?utf-8?B?b1pjbHNpNXRRTWVsaVRxYWtzZkQ0Qk9CUG9rRy9TOHM0K05QNzQreEFjUWhC?=
 =?utf-8?B?Y0x1YTFxZ1hPdHo4VmdHTlhRbUFzZnRTNVJQdXl2eW1HbmcrV0V1N2RTUStH?=
 =?utf-8?B?YitvYTRqZEtCTlQrb2h5ajRjS1ZzYUIvdVJZYUVqaFVwUU1RVGllWTFzNUM2?=
 =?utf-8?B?VzJaOTltV2lqSHduMVZGejJkWnF3WVM3TytEYUd1SVMxZ09LTm53S1lLL3ln?=
 =?utf-8?B?WXhoUTNDRC9FZkZzNkJSRld4NGZuODJ3Z0NoQjZ1MTRVSVVVK1JOWm04ck5n?=
 =?utf-8?B?bURubjdpMGR2eG5rbDNOc0hhNjR1K0hrWEhPdHlsRHhTaWROaEQ5SXRhaUox?=
 =?utf-8?B?aWk0bFRBeTJabEdlTjJwaHZzVld3WHRhRHFBNXQxM3FMUEZ3RXAvZDhrZnM1?=
 =?utf-8?B?SFBXTTJyT2s0OUxTdzdEZkhDOFlWNWJaMjdtNTlDdm4wRXdmQkIwMitFa1ov?=
 =?utf-8?B?NkNGSW4wdkdhWXFQSWtBTGV6eU10djd3ZjA4T1FUZzJTSUM4UWRUTGtVdU1R?=
 =?utf-8?B?RTdPa2s0NTU1V2QxRml6dGRzeU9XVG83cDNYMGNYeVlsTndRamtmTFNXSGZO?=
 =?utf-8?B?U29KcGhYa0x6RmVUUUpCUnlveDBybEpROHlET0pETmpJNVJacEJkVU5ubGll?=
 =?utf-8?B?b09icG42R3BVeXZxbHNBKzJyaFFMWnFDc3dST1Roa2dMYldJK2dGc2FQYzI0?=
 =?utf-8?Q?XjDe9vBVvt09fpCcA42hTkEL/HoeaQAOS/aqI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXV2YXFhSkhXbm43WUlJUmc3cE4yLzJFMmZmRndaZjJnSm56L2I5RTRPNEVh?=
 =?utf-8?B?REhyU015M0lDRlF5bXY5a1JMWng4NGVRZUk2S0NKL1BWNFVnb1o4ODZRV1U1?=
 =?utf-8?B?M2hTMWxBWVRIQ0ZGQ3lXaHRoMGhoME4yVjgydDBaYzE1TUpGRXVETTkrbi96?=
 =?utf-8?B?aStqUStrMXJsbVIvQ0o2ajhMakVieUFGS3BzQzdwc2tJZHNLSXFvQmpMb0FT?=
 =?utf-8?B?ZzFUa29NQ1hrZDN2bEZoWHoxc1QrRDNaM3FKSXhObUE2T2J4Z0llOHlnZWIr?=
 =?utf-8?B?a2RRWkVpMUhyR3ovaWNGSitud3dUeGIyYnVuV015ZktGL2gwMk15azE5c1FG?=
 =?utf-8?B?SGUvcUxzQW1qWkIzOVJlV1pNU1RKeThDek5HWHFLU1UrZC9UbnhZWmNYT1dr?=
 =?utf-8?B?SFZxOWlKZ0gwdDVYTEcwMkNnYWJKcExhaE50T1hld21yRjdyUzdMK1FlS2hO?=
 =?utf-8?B?NkNBakE0RDJqVk14TVFpRHVYY0pzTlMyVE5saEo4c3QwUzZ1QjFTZHpoMEh1?=
 =?utf-8?B?S25MMWFUdkRDMGJWYnZYL3ZITCtRWTdjeURKekZNSFJVajRUVTVjQ08zSVZJ?=
 =?utf-8?B?ekROT1ZNMjF1MWZ1dGxxRzNOYjhyWGFRNDRaakg2NHZVTWl5RENtVC9nRnNB?=
 =?utf-8?B?dldZck1mTERjUW10bmpXRWw0U1dzaE95cllvOVgyY3FiWUNSaDZPdG9qVTR5?=
 =?utf-8?B?OWpLQ3BNSFpVZ3pmRW8zai9KcmhLTkVFRzVRZzgzRkNRcmdWbWNzSWJHbFhQ?=
 =?utf-8?B?Z3cvN1Qwb2t6bFh0UE5hTThMNU9jS0hiaG16d2lIK0VaeWlETVZmcXU0MlpV?=
 =?utf-8?B?L3dQNXAxazA5VE1iQ2FLL0JmK1BxK0dGblR0NW9mRHBvQkhwMlJSNWovb0Mv?=
 =?utf-8?B?OCtLU0N3MG1hUUUrejNJbUtXTE9XWUJoUERoYkdNcDkxZDRMUjlzNmRGOTdm?=
 =?utf-8?B?dVdxODQ2ZHFQa0paYW5Ob05NaTYzV3luaDNYTGtaYldlWWg0UTBBVW53c0RM?=
 =?utf-8?B?SDVaRWtUcnoxbCtFSFMzOXFETVNRYzJzRlFLbnRVZnBFbkdFTEVuamdxWERo?=
 =?utf-8?B?NmhLNjdRTVZEM1lVMUZzWkV4eUo3M045ZUlYemdYKzY3V3dRcEtGQmVTTUFU?=
 =?utf-8?B?Njc1emlOUlhXUTZNQ3ZpZmJwSnl0VUlRR3ZXU0JuM3d4TmtZamZJcDJZSGVR?=
 =?utf-8?B?cnphWkg4cnd1WXJCSi8vMENoT0xtTytZcGVJRUFHRkJRcHNPT1pKcjFPaTE1?=
 =?utf-8?B?aE5vckRvM2h6V2Y1V2lFZTBpTy9nSW50WjhHcWF3UUh3T1NhTjlZdVlXQnUr?=
 =?utf-8?B?NUk4WlpyVG1jaDlwbDFwWXpMNnlJYXdVTmoyV3ZFQVdlejdIeUtWTVJXYUZl?=
 =?utf-8?B?ZTZhdWNRaDc2Sm04aENnMzZMVlR6dE4zbW1HeHBhRFdGdm9vN1k0Z1FhVjdr?=
 =?utf-8?B?Z3ByZVVZbkhldmc3RmtNdGozbGdhcGEwVmU1WXdlZ2xJeVFUbTJwR1N4aTNB?=
 =?utf-8?B?bHBFOFB6aDZZRkZHbllLZStmZGw5aisrR0JrdTV3RFpTVU51VzhHY2lacVU3?=
 =?utf-8?B?UU9wcXNCWWtlWlJaOHNkQmczZlE4bHFtNEVFOGpVOERDR2lXYXNrdjdzZ3JL?=
 =?utf-8?B?bkxwRUswa2d0SjM2YUljU0QxdUdLdmtjZHp6QVNDRXBkU1ZKY2NFejVxc2sy?=
 =?utf-8?B?Zjg1WDB0Y0tvWklESXpPaXNiRWc0TUs1QmZiNGFsY3JWYU0wU3hycS8wMW80?=
 =?utf-8?B?dmtSZzJGY0Fta1dheGpsdE5mck91a3FxMFlFMVBtTlJwbkwwUVpiekJac1FO?=
 =?utf-8?B?SFNvcG1KbVFVcGtJaHlVQmMxd0VoaXo4K1E1bXpTNlpwOVVtRW1lTVVTM0xT?=
 =?utf-8?B?WjIrTVovMGt4VG9ucjRqeTRZN0J6Zmk0RUdYZTZSb2pKYkoxVms2UDNxQVlx?=
 =?utf-8?B?cUVTa0FMb0dTK3h3TFJmYWUxOFJQcXZERnM2V1loUVVXc3Y4czl1TWlaQ0to?=
 =?utf-8?B?OHlkYnBJend0VlJ0amRacExXSGV6UFFzYWxhSTlNbXpIVHdhMzd4VjEzSkUr?=
 =?utf-8?B?Y0JmSGVOYldDT0pWZTkvRWtRNXZMa1E2MmI0UnJvaEg2ejRseXFDeGZqdm44?=
 =?utf-8?B?cU91b01XcWY3NUIyVytWNk1EUEJ5L0F5VTd4dnJoUGhFcHRmcjRXYUV0WGFx?=
 =?utf-8?B?VHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C024FB41913BD84C93EB0E1FB9EE2279@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d07edf8f-b26b-41cc-7598-08dd04906127
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 09:40:30.7654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KE3bbna+GPkN1sGb4eYq9u4fT6K1BdbZ7ElG9DR/d0P3eib3XBhucabZJpboQtWD3zbwWS5ZW8pRTNNTP3ek0DnqM/p6vIqw12faM50V3xM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6610
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

T24gVHVlLCAyMDI0LTExLTA1IGF0IDE2OjA5ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IElzc3VlIGlzIHNlZW4gd2hlbiBQU1IgZW5hYmxlZCB3aXRoIHNldHVwIGZyYW1lcyBhbmQgd2hl
biB0cnkgdG8KPiBkaXNhYmxlCj4gUFNSIGF0IFNSRE9OQUNLIFN0YXRlICgweDEpLiBQU1IgRlNN
IGlzIHN0dWNrIGF0IFNSRE9OQUNLKDB4MSkgZm9yCj4gbW9yZQo+IHRoYW4gNSBzZWNvbmRzLiBJ
c3N1ZSBub3Qgc2VlbiB3aXRoIFNldHVwIGZyYW1lcyBkaXNhYmxlZC4gQ3VycmVudGx5Cj4gZGlz
YWJsZSBwc3IxIGlmIHNldHVwdGltZSA+IHZibGFuayB0byB3b3JrYXJvdW5kIHRoZSBhYm92ZSBp
c3N1ZS4KPiAKPiBIU0Q6IDE2MDI0NTk0Njc0Cj4gV0E6IDE4MDM3ODE4ODc2Cj4gCj4gdjE6IElu
aXRpYWwgdmVyc2lvbgo+IHYyOiBBZGQgZGVidWcgbG9nIGFuZCBzb21lIGNvc21ldGljIGNoYW5n
ZXMuIFtKb3VuaSwgSmFuaSwgTmVtZXNhXQo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoKPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNiArKysrKysrKysrKysrKysrCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gaW5kZXggNDE3NjE2M2VjMTlhLi5kOGViMGQ0MjdkOGMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMTY0MCw2ICsx
NjQwLDE1IEBAIF9wYW5lbF9yZXBsYXlfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwCj4g
KmludGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiDCoH0KPiDCoAo+ICtz
dGF0aWMgYm9vbCBpbnRlbF9wc3JfbmVlZHNfd2FfMTgwMzc4MTg4NzYoc3RydWN0IGludGVsX2Rw
Cj4gKmludGVsX2RwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlCj4gKmNydGNfc3RhdGUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOwo+ICsKPiAr
wqDCoMKgwqDCoMKgwqByZXR1cm4gKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIwICYmIGludGVs
X2RwLQo+ID5wc3IuZW50cnlfc2V0dXBfZnJhbWVzID4gMCAmJgo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAhY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOwo+ICt9Cj4gKwo+IMKg
dm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4gQEAgLTE2ODYsNiArMTY5NSwxMyBAQCB2b2lk
IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPQo+IGludGVsX3NlbF91cGRhdGVfY29u
ZmlnX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgLyog
V2FfMTgwMzc4MTg4NzYgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfcHNyX25lZWRzX3dh
XzE4MDM3ODE4ODc2KGludGVsX2RwLCBjcnRjX3N0YXRlKSkgewo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcHNyID0gZmFsc2U7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKGRpc3BsYXktPmRybSwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSIGRpc2FibGVk
IHRvIHdvcmthcm91bmQgUFNSIEZTTSBoYW5nCj4gaXNzdWVcbiIpOwo+ICvCoMKgwqDCoMKgwqDC
oH0KPiDCoH0KPiDCoAo+IMKgdm9pZCBpbnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKCg==
