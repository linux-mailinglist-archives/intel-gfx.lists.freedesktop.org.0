Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE17A35A68
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 10:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C9110E296;
	Fri, 14 Feb 2025 09:31:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXt4Ix8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C824D10E296;
 Fri, 14 Feb 2025 09:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739525484; x=1771061484;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9vt1PIJNXYSNm8J+jmDPw80kFI2Dp8aLIpO6Kj+0jeQ=;
 b=JXt4Ix8EvIsAgssGBF0Dg3QuDuD2BGCxdm2S4kRDgiSdJu0NXp6SKYfJ
 9k48L5zEK4u0z9AkwvFzV4VZ4z2IvEDpUBzI67MObhAxb/OYqqqDlnbF6
 4fIAatrU6f5+WpjGy8N9zsdN2vQiAf3QCmIf3bkIqH+Gt36sw0YXSMR/b
 yVrkCFxegMIudtZTtSHQC5BxtcwFKPzDDxlTrvRZkr1KHGl3+NfAiz9wv
 ogzEPNscs/G8D540zsUeZnpo03oVnH62+Eukb6mnkwWKAov1nTmWSaVDu
 cqJjVpG6WqNYkoRSAqj4nd9QldupbKtCc1U9x/SPnWd79CkrmJNdbvTpo g==;
X-CSE-ConnectionGUID: SJAjAEeRTrqNGJE1yobJPQ==
X-CSE-MsgGUID: PMg4J93YSUqB34PTBmea7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40413548"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="40413548"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:31:24 -0800
X-CSE-ConnectionGUID: v79+n9kPT7+StBSwMZMucg==
X-CSE-MsgGUID: yTgbR3OZTHGMPK+rnbQRug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113271701"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 01:31:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 01:31:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 01:31:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 01:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXl4gLWmXuvgZ2RdZbJYYKTUcutDfr7t63qSe8sNVOHrOLlrkCO6wQOCITcJP6YvVgisNQ4B88bPvrumSmWLSdrVEaMvkyTZSEf/SqA/cBB1CytzmrA8Bf8ot5r7qrcaY0TC6fW/jOVt+//MJ0evTHSc/mVBbNGuFjdh+/yfickrTlQ/Btl2oVp81wZ4dB2j3U2uzLU474offLszLzS/a0ot5bud9SyqOZ23He4Q/a6xL1A+k/3NajGTW8UPanTn6qe9M6YOjq4TR3vS1fXg7xcYEUEYFHKTRXSII1dD+YyExWBRSxKkW1FIt9Atzdu8z1UwpPpL902lSQGKuGt3OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vt1PIJNXYSNm8J+jmDPw80kFI2Dp8aLIpO6Kj+0jeQ=;
 b=CxbIbIahIsgmheqHY3tjow9hdo/LpiQmvAOc7YJOCnYpUOCT309JOMkAObIlIf8zHMQ09w7MqwsL5ksFKSHIdJhoyyx7aW/FCvPNqaR58n+OGbFezZ2qv5ynTopMYU/peMUZvN0C49IRYHuuCq7h7zbYRgoG55cZSKLiOTLbWPbB1GScizA0FjmDA04aCCAyPazXiLWfRCw3irJgkMGko/pQ3Q5zMGreXOGJDdjAcrpLJPTPFthsQTL1gouWXEU8NOAACgI4RMLBGoWBJrSUwkrQunMayceHhbyzPVVoOnnqOJ92Sxjf1gMXbQmhqCtoI9R9c+8iRstenLvGAL40GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.12; Fri, 14 Feb
 2025 09:30:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8445.015; Fri, 14 Feb 2025
 09:30:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Topic: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Index: AQHbdvSR6jDQc2yYr0WV00RvuTGE7rNDyauAgAAC1gCAAsuL4A==
Date: Fri, 14 Feb 2025 09:30:38 +0000
Message-ID: <MW4PR11MB7054E20A7EA80CED05B12113EFFE2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
 <20250204105358.284687-3-mika.kahola@intel.com>
 <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
 <Z6y0yl57reBtvk7l@ideak-desk.fi.intel.com>
In-Reply-To: <Z6y0yl57reBtvk7l@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY8PR11MB7196:EE_
x-ms-office365-filtering-correlation-id: cad59ab3-ee75-4a58-a89e-08dd4cda3e6e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?aHl0OTZUUmR0bHhlM2NRaThKbDVZZXE2SktWdFBuSjR2RHYrQmRlNDMzbHBJ?=
 =?utf-8?B?YnVyMWdFTXg2MWhiclRjWWhjN2ZUMFVjckVaWGRzY0lGN1V0OTEwcEVxZlk3?=
 =?utf-8?B?SlBoYVRaQ1hKLzF1Y3lSbGV1ZlhremF1VGpZbVY5ZkU1N2I3T3FjQ2ZEMDRB?=
 =?utf-8?B?YlF3NERTTW5HdGdaSk1ldGx2clFyZWZLbjArVXhyT3hEUU1RbytJdTBGb2Vo?=
 =?utf-8?B?ZmRSUS8xVkZ6K29qMW1wR0ZTajBIVWFrMDRrL3FFUmgvK1JZSG9xNks0U1NM?=
 =?utf-8?B?Y2wxMjZ3eGZVK0p6ZnY2UE0zRTJ1RnVVdjgyc2wvVDNFWnFnMXgrU3VyOFlm?=
 =?utf-8?B?cmVXczQ2Rmx5aDBoYzlKL3ZuOGZZdlYxR3JrUUZZL1JBZDNmT3NsUytlU284?=
 =?utf-8?B?bnhoTUZxa29iSndHazJKaC9VOHJxYTVtbml0WTRtcU5VSlc5UkFENTI0NWRY?=
 =?utf-8?B?dWtHZXc3OWp3ejBONUVSZ1hYZWU4amFyQW14QU16Ykl5UTA0TWY5TXBvZ3R2?=
 =?utf-8?B?QWNuWUFXOG9OaU9RTXF5QVBqOTcxK3ZOU2d4cFBhQUVvTTVZdHRpcDlwcTRh?=
 =?utf-8?B?Q2tPUEpvVWpZelU3UFg3akhVVDZQREIvM1lKNXJFODd6cW15QW03c1kxOVhJ?=
 =?utf-8?B?aU5kNGpxc3Z6b0VBSGw3bDRXOGlHcnEzZXQxZUsxODE0SmsvQ05ickRkbk96?=
 =?utf-8?B?eVZBa3hwcUtFc2xYQmVjMTRvVzZ3V293MVBHaHlNQWdkYWw5Rzl3clBza3I3?=
 =?utf-8?B?Wk15b3hOWTJTekU4N3Yzdk1CTDAyaDZNUEo1THR2ZkNxazRHU0Fzclp3UW0y?=
 =?utf-8?B?MGRGSjcwK3hHc2N5cWlFYlhKanpCeWNod2tYNjhqUkhiOFBFRWtpazBuTkgw?=
 =?utf-8?B?TUxOTVpMQy80d3ppMXR1MkNxUTNoSk1XbkJvdGJnbUdyTGM4UVJkV0IrT21N?=
 =?utf-8?B?SXN2ak9SempLWjdhUVRqM3NUcVN4K09Za3F3b2crUGU1Vkx4K2hCb2M4Q2JW?=
 =?utf-8?B?bVY4aklJYjZkVWNzMGdaZ2NrZlhKdHdvUUtUQVJlYmZieExFOS9zOGdRemFF?=
 =?utf-8?B?andUWUpMVHRkVE1mNjJNc1NaRXNHRkZWVDZwejlqMmVTUDVMTS9nNGZpZWlC?=
 =?utf-8?B?RnV1RmUrV20yeWhPcDI4dWFBR3krSjRXZXNyakxmdHE4czBIQ3FFQXNMSkht?=
 =?utf-8?B?N2IxMm1LT2hyNHIzRWpsclBUa09RUG1hS3lkRk1WSTc3U3Y5QXpkaUdwZlJ4?=
 =?utf-8?B?S1hrZTMzeDhLc0xjem5sZ0ZDd2dyaWRoOURxKzFMWXEvS20vd0gwUUJvZDQ3?=
 =?utf-8?B?YXBxVUVZWGhMbnBYektzYi8vR1ByOEpSSTA5MG5leTQ0b2J5bUwzcDZ1NTda?=
 =?utf-8?B?MGpWTHpvK1Q1LzJ5c0Z2STgzakIyamVlcEJDbXhKV2JTdkVYdk5JOCt4QkpH?=
 =?utf-8?B?UWVZeXUvUU52UE1tb0ptcmwreFJUTGpPZEFLOTN5VTVXeTVheWE2UEpkT0lY?=
 =?utf-8?B?Y0NrbUJ1bm9sRUo3M1ovT3lleWNXZUhWZmdZRTBzUHJMTU9NTmdVQ05jeUJE?=
 =?utf-8?B?TFhnQU03QU1NNjd3dCt3OFd0ZWhvcHRPTjRiUTN5RFJraFZPL2NBb2orR3ZP?=
 =?utf-8?B?aDJjcWN2U3czUkV1MkxEc3hiYkd5SWFrWkJQNXpSL09sNmVHTjdMUU1iM3Vw?=
 =?utf-8?B?Qnp2NjgxQ3JTay92eUptamlycnlIcFNxZndNUkh1dHhWbjRuT2IxRzlhSUh2?=
 =?utf-8?B?Y0xsZUtOaDJKVVRXTTkrZ05qekliUUZnNGF4b0dCcTA2eVV2azFWa3dqWm9u?=
 =?utf-8?B?S1B2c0RLem9EQkRDV3VheC9lWGZZbE16YmVLNyttSUVjV0sxV3RyK1lMVGNq?=
 =?utf-8?B?TmR4K1VCRDlEOUppTmt0U0RTVVgxT01hb2g3OGNSWUNvcGdybkVWMU44VUNH?=
 =?utf-8?Q?txTpGF0R2HLsUKW+iSEA7UdEMmncdkdk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2s1MWxFbE5BRjF4UkcxK2NiNlJiKytteE9mTFhnNVRKSGZhM2R6ZHVkR0lK?=
 =?utf-8?B?YWVXbjVnK0pwZUUwU1N0TXRRSVAvOCs5U0JzUnJ4b25FdmdTUXFVSTQwZER2?=
 =?utf-8?B?NTI2N3Yyc1R1bWpiVjlaYjNhajhoOTB0TFZ0cm1zTWNXZHk5Tm84a1R3OWFu?=
 =?utf-8?B?SDFRY3VLWXMxSEUxcFBpNURtdW1kZXZ5RE9UR2xLY0VzUUlqck1qSHBNMXVE?=
 =?utf-8?B?N3hJdm8wdVdVSWpGeDQwY3p1MkxJdUtrVUI0NnBQTFZDRmlTQlBsYXQvTjJF?=
 =?utf-8?B?TGUzTFhoc2g3UUhKQ2I0QjVJajZnQ25hY29BNHNJYVVRZUFvNXArRHhzc20v?=
 =?utf-8?B?ZkxrWFBSb01YODV2QXFuV3lVQ0VybEI4KzlpQWdOTjVOMnp1NHBna044UktJ?=
 =?utf-8?B?Yjd6Z0NZdmFEaTRrSW56aHc4MnJiU2QrY0ErZEkybWVHS3U1MWNPbG1YUGJQ?=
 =?utf-8?B?dVo0TCt1VWxuNTFZc29mMUpjYTBKSXJYOG8vbUZLV2xLYjBEK0VocEJLSVBI?=
 =?utf-8?B?c1B4N0JKT2hPYkVQbUQ5RklYVEhFRy82TlRLVitwRzNEVEVTNzloRkxCMVZn?=
 =?utf-8?B?eUJvb0l3QkhwSythT3dmL2gxYndLblloTWU2c0VUYjlvU1Y0Vk1jaVBzeEVY?=
 =?utf-8?B?MFZUSzkvSDFMS2pnZ2lYV09Gd0YrdG1DTnc1SjZXSEh4cm9pK2lnUG1sQ2s2?=
 =?utf-8?B?VHhLazM1K2RjTXJFWVkxL1FNdW5uMXNzYzF6SUt1M0F6UWRPQmQ0V3k0UFBH?=
 =?utf-8?B?N3lEcWg1OHJZNHRhK2RkNXlEdVpuWXpMRGJVQktKdDZJNDhHUm94QzRtYktw?=
 =?utf-8?B?MTUxOGFUOC9DOG9ORUUvc05sMkZrKzZDT2hVR1I3TUVaaGZmYWd0OTZFVGJz?=
 =?utf-8?B?YytQaWMrcUF1ZFFhNHUyMVVyT2pUSk1Fd1A4UzRqZHpoNjNEYk1xSGVXaXFl?=
 =?utf-8?B?Sk15Y0ZjVCs3RmVvWnMvcmVhT3JWakpQWXJ5WEtIWVBSK0l1OFZmcWNlbDRE?=
 =?utf-8?B?MWRUSWZNWFJHcFYzdERKUHUyV1E3UDNCTzQrWUNUbnhjRkRtUmU2ZTRkbTBa?=
 =?utf-8?B?QklPalFBSHhQZlB6MTFHT0xwYmJvMkRTdjBZSEVMbUFxYURuTFRuQTlwaXND?=
 =?utf-8?B?dkloMUR3U1JYL2JRZFF1bVhVemwzcjRSMFdob1RyUURZUUhybWdQZVloMExJ?=
 =?utf-8?B?YkhRRWdpa3FEWDU2MDV2eXhjV0VKQ1JhdldaNXVvRnhBTWVLQ3czVUFlR09r?=
 =?utf-8?B?dXYvbzhqOTU5TUhoK2N6YlFtMll4SE5uM0kxbE5MeWdZem9NTGRPeEhDVHhV?=
 =?utf-8?B?bDJJclVGR1Q2Z3p5elNYbS9FN0ZwQTJjQWd4cHc3azJCREI2MklkMHJnbjd1?=
 =?utf-8?B?UktHNzM3V1hZN2RxRjlyd3VOZmdxc05HVngwbVU3K3pNbjk4OVU1YkJWVE1C?=
 =?utf-8?B?bHVUV0FOWkxRVFFsNWphaE1FSytpc2htT1BGSWMyYURiTXRDREVkQ2VEY2xM?=
 =?utf-8?B?VDFGMzRVTDlMZE1ndWpnbkIxeDZ6cmtSalphSTFHVUtMeTFMU0R2TEtYNHgv?=
 =?utf-8?B?bTRCQ0JJVWk2WXI4NDNZSy9lSVB3SkdENXBTTktGYllyTDdFK1NqTmhEcnpP?=
 =?utf-8?B?NVJyNCszVWcwR0NaUHdvVVR0cytNTms1TzgvbVg2aWoyMUNrcjlJN2NZL0ly?=
 =?utf-8?B?eDRMa051TXROVnIzdUk5cWFieWhMVDYvTWF3MWd3aFEyY0FnL21EQmtJakha?=
 =?utf-8?B?ajRxeGd6UWwxU2lpb21hTUE0Q3paY2NaOWxuWDRNSGVqZHcrUGRmTTNScEd2?=
 =?utf-8?B?QnJkWllOL01tYit1Vk85Rk5YV3NHcm5HZnNKSFJSY0o5N2xLMkwvangvczlZ?=
 =?utf-8?B?b2RRSTVjUjVhcXlFOHQvdFZiR1FLRkQ4ejQrSk1udWQ2VThMWUlRbEQ2U3Fp?=
 =?utf-8?B?S2VMT1JTSE5QZlN2eXhXT1lDUkVVSmlJalA2WUFGc3hqUWhEZjVFTEVXdHNN?=
 =?utf-8?B?aXFaM2FJVzVtNU5hNzRaOGdGRWVMRVpVWXJ6YXNoREtINk5JZkJsU1hrR3lq?=
 =?utf-8?B?RkY3eTZSU1NUanpVVElDcHB4MFRnNElOTjRtWEdicURGYW9IdktRMDZJS01L?=
 =?utf-8?Q?Gudv7HiBCpGavnRy0fQ0DD3p+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cad59ab3-ee75-4a58-a89e-08dd4cda3e6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 09:30:39.0155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6OjJcnNzxw+olVfU2l4uN9ZMtLQNIW0qCXZVwGYnlC6Q9DvtEecx+nSgbHfT19VhuKAHTiRkfmgezCxiUAwTbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGVhaywgSW1yZSA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCAxMiBGZWJydWFyeSAyMDI1IDE2
LjQ5DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYy
IDIvMl0gZHJtL2k5MTUvZGlzcGxheTogQWxsb3cgZGlzcGxheSBQSFlzIHRvIHJlc2V0IHBvd2Vy
DQo+IHN0YXRlDQo+IA0KPiBPbiBXZWQsIEZlYiAxMiwgMjAyNSBhdCAwNDozODozM1BNICswMjAw
LCBJbXJlIERlYWsgd3JvdGU6DQo+ID4gT24gVHVlLCBGZWIgMDQsIDIwMjUgYXQgMTI6NTM6NThQ
TSArMDIwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4gPiBUaGUgZGVkaWNhdGVkIGRpc3BsYXkg
UEhZcyByZXNldCB0byBhIHBvd2VyIHN0YXRlIHRoYXQgYmxvY2tzIFMwaXgsDQo+ID4gPiBpbmNy
ZWFzaW5nIGlkbGUgc3lzdGVtIHBvd2VyLiBBZnRlciBhIHN5c3RlbSByZXNldCAoY29sZCBib290
LA0KPiA+ID4gUzMvNC81LCB3YXJtIHJlc2V0KSBpZiBhIGRlZGljYXRlZCBQSFkgaXMgbm90IGJl
aW5nIGJyb3VnaHQgdXANCj4gPiA+IHNob3J0bHksIHVzZSB0aGVzZSBzdGVwcyB0byBtb3ZlIHRo
ZSBQSFkgdG8gdGhlIGxvd2VzdCBwb3dlciBzdGF0ZQ0KPiA+ID4gdG8gc2F2ZSBwb3dlci4NCj4g
PiA+DQo+ID4gPiAxLiBGb2xsb3cgdGhlIFBMTCBFbmFibGUgU2VxdWVuY2UsIHVzaW5nIGFueSB2
YWxpZCBmcmVxdWVuY3kgc3VjaCBhcyBEUCAxLjYyDQo+IEdIei4NCj4gPiA+ICAgIFRoaXMgYnJp
bmdzIGxhbmVzIG91dCBvZiByZXNldCBhbmQgZW5hYmxlcyB0aGUgUExMIHRvIGFsbG93IHBvd2Vy
ZG93biB0byBiZQ0KPiBtb3ZlZA0KPiA+ID4gICAgdG8gdGhlIERpc2FibGUgc3RhdGUuDQo+ID4g
PiAyLiBGb2xsb3cgUExMIERpc2FibGUgU2VxdWVuY2UuIFRoaXMgbW92ZXMgcG93ZXJkb3duIHRv
IHRoZSBEaXNhYmxlIHN0YXRlDQo+IGFuZCBkaXNhYmxlcyB0aGUgUExMLg0KPiA+ID4NCj4gPiA+
IHYyOiBSZW5hbWUgV0EgZnVuY3Rpb24gdG8gbW9yZSBkZXNjcmlwdGl2ZSAoSmFuaSkNCj4gPiA+
ICAgICBGb3IgUFRMLCBvbmx5IHBvcnQgQSBuZWVkcyB0aGlzIHdhDQo+ID4gPiAgICAgQWRkIGhl
bHBlcnMgdG8gY2hlY2sgcHJlc2VuY2Ugb2YgQzEwIHBoeSBhbmQgcGxsIGVuYWJsaW5nIChJbXJl
KQ0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYyAgfCA0NQ0KPiA+ID4gKysrKysrKysrKysrKysrKysrKyAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggIHwgIDEgKw0KPiA+ID4gIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYyAgICB8ICAyICsNCj4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgMiArDQo+
ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4g
PiBpbmRleCBiZmZlM2Q0YmJlOGIuLmJkMzNlYmI4YzcxZSAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gQEAgLTM1
NTksMyArMzU1OSw0OCBAQCB2b2lkIGludGVsX2N4MHBsbF9zdGF0ZV92ZXJpZnkoc3RydWN0DQo+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiAgCWVsc2UNCj4gPiA+ICAJCWludGVs
X2MyMHBsbF9zdGF0ZV92ZXJpZnkobmV3X2NydGNfc3RhdGUsIGNydGMsIGVuY29kZXIsDQo+ID4g
PiAmbXBsbF9od19zdGF0ZS5jMjApOyAgfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBib29sIGlu
dGVsX2N4MF9wbGxfaXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4g
PiA+ICtlbnVtIHBvcnQgcG9ydCkgew0KPiA+ID4gKwl1MzIgdmFsID0gaW50ZWxfZGVfcmVhZChk
aXNwbGF5LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwoZGlzcGxheSwNCj4gPiA+ICtwb3J0KSk7DQo+
ID4gPiArDQo+ID4gPiArCWlmIChSRUdfRklFTERfR0VUKFhFTFBEUF9ERElfQ0xPQ0tfU0VMRUNU
X01BU0ssIHZhbCkgPT0NCj4gWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTk9ORSkNCj4gPiA+ICsJ
CXJldHVybiBmYWxzZTsNCj4gPg0KPiA+IFNob3VsZG4ndCB0aGlzIGNoZWNrIGlmIHRoZSBQTEwg
cmVxdWVzdCBmb3IgZWl0aGVyIGxhbmUgaXMgc2V0IGluDQo+ID4gWEVMUERQX1BPUlRfQ0xPQ0tf
Q1RMPyBBRkFJQ1MgdGhhdCdzIHdoYXQgYWN0dWFsbHkgZW5hYmxlcyB0aGUgUExMLA0KPiA+IHdo
aWxlIHRoZSBhYm92ZSBpcyBqdXN0IHNvbWUgY29uZmlndXJhdGlvbi4NCj4gPg0KPiA+ID4gKw0K
PiA+ID4gKwlyZXR1cm4gdHJ1ZTsNCj4gPiA+ICt9DQo+ID4gPiArLyoNCj4gPiA+ICsgKiBXQSAx
NDAyMjA4MTE1NA0KPiA+ID4gKyAqIFRoZSBkZWRpY2F0ZWQgZGlzcGxheSBQSFlzIHJlc2V0IHRv
IGEgcG93ZXIgc3RhdGUgdGhhdCBibG9ja3MNCj4gPiA+ICtTMGl4LCBpbmNyZWFzaW5nIGlkbGUN
Cj4gPiA+ICsgKiBzeXN0ZW0gcG93ZXIuIEFmdGVyIGEgc3lzdGVtIHJlc2V0IChjb2xkIGJvb3Qs
IFMzLzQvNSwgd2FybQ0KPiA+ID4gK3Jlc2V0KSBpZiBhIGRlZGljYXRlZA0KPiA+ID4gKyAqIFBI
WSBpcyBub3QgYmVpbmcgYnJvdWdodCB1cCBzaG9ydGx5LCB1c2UgdGhlc2Ugc3RlcHMgdG8gbW92
ZSB0aGUNCj4gPiA+ICtQSFkgdG8gdGhlIGxvd2VzdA0KPiA+ID4gKyAqIHBvd2VyIHN0YXRlIHRv
IHNhdmUgcG93ZXIuIEZvciBQVEwgdGhlIHdvcmthcm91bmQgaXMgbmVlZGVkIG9ubHkNCj4gPiA+
ICtmb3IgcG9ydCBBLiBQb3J0IEINCj4gPiA+ICsgKiBpcyBub3QgY29ubmVjdGVkLg0KPiA+ID4g
KyAqDQo+ID4gPiArICogMS4gRm9sbG93IHRoZSBQTEwgRW5hYmxlIFNlcXVlbmNlLCB1c2luZyBh
bnkgdmFsaWQgZnJlcXVlbmN5IHN1Y2ggYXMgRFANCj4gMS42MiBHSHouDQo+ID4gPiArICogICAg
VGhpcyBicmluZ3MgbGFuZXMgb3V0IG9mIHJlc2V0IGFuZCBlbmFibGVzIHRoZSBQTEwgdG8gYWxs
b3cgcG93ZXJkb3duIHRvDQo+IGJlIG1vdmVkDQo+ID4gPiArICogICAgdG8gdGhlIERpc2FibGUg
c3RhdGUuDQo+ID4gPiArICogMi4gRm9sbG93IFBMTCBEaXNhYmxlIFNlcXVlbmNlLiBUaGlzIG1v
dmVzIHBvd2VyZG93biB0byB0aGUgRGlzYWJsZQ0KPiBzdGF0ZSBhbmQgZGlzYWJsZXMgdGhlIFBM
TC4NCj4gPiA+ICsgKi8NCj4gPiA+ICt2b2lkIHB0bF9wb3dlcl9zYXZlX3dhKHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+DQo+ID4gSSdkIGNhbGwgaXQgaW50ZWxfY3gwX3BsbF9w
b3dlcl9zYXZlX3dhKCkgZm9sbG93aW5nIHRoZSBuYW1pbmcgcnVsZQ0KPiA+IGZvciBleHBvcnRl
ZCBmdW5jdGlvbnMuDQo+ID4NCj4gPiA+ICt7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgIT0g
MzApDQo+ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiArCWZvcl9lYWNoX2ludGVsX2Vu
Y29kZXIoZGlzcGxheS0+ZHJtLCBlbmNvZGVyKSB7DQo+ID4gPiArCQlzdHJ1Y3QgaW50ZWxfY3gw
cGxsX3N0YXRlIHBsbF9zdGF0ZSA9IHt9Ow0KPiA+ID4gKwkJaW50IHBvcnRfY2xvY2sgPSAxNjIw
MDA7DQo+ID4gPiArDQo+ID4gPiArCQlpZiAoIWludGVsX2VuY29kZXJfaXNfYzEwcGh5KGVuY29k
ZXIpKQ0KPiA+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ID4gKw0KPiA+ID4gKwkJaWYgKGludGVsX2N4
MF9wbGxfaXNfZW5hYmxlZChkaXNwbGF5LCBlbmNvZGVyLT5wb3J0KSkNCj4gPiA+ICsJCQljb250
aW51ZTsNCj4gPiA+ICsNCj4gPiA+ICsJCWludGVsX2MxMHBsbF9jYWxjX3N0YXRlX2Zyb21fdGFi
bGUoZW5jb2RlciwNCj4gbXRsX2MxMF9lZHBfdGFibGVzLCBwb3J0X2Nsb2NrLCB0cnVlLCAmcGxs
X3N0YXRlKTsNCj4gPiA+ICsJCV9faW50ZWxfY3gwcGxsX2VuYWJsZShlbmNvZGVyLCAmcGxsX3N0
YXRlLCB0cnVlLCBwb3J0X2Nsb2NrLCA0KTsNCj4gPiA+ICsJCWludGVsX2N4MHBsbF9kaXNhYmxl
KGVuY29kZXIpOw0KPiA+ID4gKwl9DQo+ID4gPiArfQ0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gPiBpbmRleCA1NzNmYTdk
M2U4OGYuLjA2MzQ2ZTRjNTA3OSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+ID4gQEAgLTQyLDUgKzQyLDYgQEAgYm9v
bCBpbnRlbF9jeDBwbGxfY29tcGFyZV9od19zdGF0ZShjb25zdCBzdHJ1Y3QNCj4gPiA+IGludGVs
X2N4MHBsbF9zdGF0ZSAqYSwgIHZvaWQgaW50ZWxfY3gwX3BoeV9zZXRfc2lnbmFsX2xldmVscyhz
dHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ICAJCQkJICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICBpbnQNCj4gPiA+IGludGVsX210
bF90YnRfY2FsY19wb3J0X2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsNCj4g
PiA+ICt2b2lkIHB0bF9wb3dlcl9zYXZlX3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KTsNCj4gPiA+DQo+ID4gPiAgI2VuZGlmIC8qIF9fSU5URUxfQ1gwX1BIWV9IX18gKi8NCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cmVzZXQuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcmVzZXQuYw0KPiA+ID4gaW5kZXggMDkzYjM4NmM5NWU4Li5iNzU4MjdmZjljN2UgMTAwNjQ0
DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cmVzZXQuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Jlc2V0LmMNCj4gPiA+IEBAIC03LDYgKzcsNyBAQA0KPiA+ID4NCj4gPiA+ICAjaW5j
bHVkZSAiaTkxNV9kcnYuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfY2xvY2tfZ2F0aW5nLmgi
DQo+ID4gPiArI2luY2x1ZGUgImludGVsX2N4MF9waHkuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheV9kcml2ZXIuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZXNl
dC5oIg0KPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gPiBAQCAt
MTE2LDYgKzExNyw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9yZXNldF9maW5pc2goc3RydWN0DQo+
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiAgCQlpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nf
d2EoZGlzcGxheSk7DQo+ID4gPiAgCQlpbnRlbF9kaXNwbGF5X2RyaXZlcl9pbml0X2h3KGRpc3Bs
YXkpOw0KPiA+ID4gIAkJaW50ZWxfY2xvY2tfZ2F0aW5nX2luaXQoaTkxNSk7DQo+ID4gPiArCQlw
dGxfcG93ZXJfc2F2ZV93YShkaXNwbGF5KTsNCj4gPiA+ICAJCWludGVsX2hwZF9pbml0KGk5MTUp
Ow0KPiA+ID4NCj4gPiA+ICAJCXJldCA9IF9faW50ZWxfZGlzcGxheV9kcml2ZXJfcmVzdW1lKGRp
c3BsYXksIHN0YXRlLCBjdHgpOyBkaWZmDQo+ID4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiA+IGluZGV4IGI4ZmEwNGQzY2Q1Yy4uMjQ4
OTNkMmY3OWUzIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiA+IEBAIC0yNyw2ICsyNyw3IEBADQo+ID4gPiAgI2lu
Y2x1ZGUgImJ4dF9kcGlvX3BoeV9yZWdzLmgiDQo+ID4gPiAgI2luY2x1ZGUgImk5MTVfZHJ2Lmgi
DQo+ID4gPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ID4gPiArI2luY2x1ZGUgImludGVsX2N4
MF9waHkuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiA+ICAjaW5jbHVkZSAi
aW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+ID4gICNpbmNsdWRlICJpbnRlbF9ka2xfcGh5Lmgi
DQo+ID4gPiBAQCAtNDU1Miw2ICs0NTUzLDcgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfZHBsbF9z
dGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+ICAJCXJldHVybjsN
Cj4gPiA+DQo+ID4gPiAgCWFkbHBfY210Z19jbG9ja19nYXRpbmdfd2EoaTkxNSwgcGxsKTsNCj4g
PiA+ICsJcHRsX3Bvd2VyX3NhdmVfd2EoJmk5MTUtPmRpc3BsYXkpOw0KPiA+DQo+ID4gVGhlIFdB
IGlzIGFwcGxpZWQgaWYgdGhlIFBMTCBpcyBub3Qgb24sIHNvIGF0IGxlYXN0IGxvZ2ljYWxseSBp
dA0KPiA+IHNob3VsZCBiZSBhcHBsaWVkIGJlZm9yZSB0aGUgIXBsbC0+b24gY2hlY2sgYWJvdmUu
DQo+IA0KPiBBbHNvLCBzYW5pdGl6ZV9kcGxsX3N0YXRlKCkgaXMgY2FsbGVkIGZvciBlYWNoIHNo
YXJlZCBQTExzLCB3aGljaCBpcyBub3QgeWV0DQo+IGltcGxlbWVudGVkIG9uIFBUTCwgc28gdGhl
IFdBIHNob3VsZCBiZSBjYWxsZWQgZnJvbSBpbnRlbF9kcGxsX3Nhbml0aXplX3N0YXRlKCkuDQpU
aGlzIGlzIGEgYmV0dGVyIHBsYWNlIHRvIGNhbGwgd2EgYXMgd2UgaGF2ZW4ndCByZWZhY3RvcmVk
IHRoZSBwbGwgaGFuZGxpbmcgZm9yIE1UTCsgcGxhdGZvcm1zIHlldC4NCg0KPiANCj4gPg0KPiA+
ID4NCj4gPiA+ICAJaWYgKHBsbC0+YWN0aXZlX21hc2spDQo+ID4gPiAgCQlyZXR1cm47DQo+ID4g
PiAtLQ0KPiA+ID4gMi40My4wDQo+ID4gPg0K
