Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1179DA61407
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 15:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A211410EA06;
	Fri, 14 Mar 2025 14:49:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJ5LBMlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB5710E9FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 14:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741963744; x=1773499744;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=q75na8/4i2qvosToqGeooQ/hFcoV81eFyxpsiUZ3oSQ=;
 b=gJ5LBMlY/eANFP1o9rTf0uEUqnN1+htOJr/drZhfTmCvO3kDqZSz+KBM
 6eUzCfQ/PPjzGr+6e8xs8rmtcXu2I00c7lD68sPBwIEQzttL69KzXr709
 DBNnTz14Z6be8YaCYoaKGDlVmr0xLltIiYDyuGCrP78UcqLVDzaHYBqVP
 YKngxBcXdXWZl+2RDJa/AyX1GXm/k1vk1ojukhwcjpMHpATLcFcxM1yN2
 VsDlfpiWp4D6ikuna52d/rDc8wmEM5QNIj3V5Vc0QFaPMnAJbMUHGzZNq
 mzkySCqdXSCUatENLSvehjDfrYMfg5gAnRzNMu7wDAdY1JxSWka9/T28q Q==;
X-CSE-ConnectionGUID: Z7XUFl/5TbmvaxVieWqyAQ==
X-CSE-MsgGUID: g/pjyldeSomnnt/0stkDeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="42981726"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42981726"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:49:04 -0700
X-CSE-ConnectionGUID: OdSC7LV/SlipQKiYjnU9dg==
X-CSE-MsgGUID: 1Bk6OUSmQsWvsdOCcyxs2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="158453340"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:49:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 07:49:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 07:49:03 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 07:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DZkSCX0Wi1PHxe2Z1HM26kVrp+5waOYV9jjCbyY3w/PQq8iq8oSl/F9OF4fgLXSLAua+C4kRvjRr0fWWQ7sd/qMGHour/Wrc4gjZYkDA3CzfCPuvmEzyjfT6N3rUqczO4rUwphcaWwNVoEujEJUAoHF03Jh0QtTikeskJQ7CECkn4Ch/eKixWKeBnt3Kj9P4rX5mOf11VWVefDNA5n/sKBbFPeW2C/i+ur1qMVsGwQqRVPK/q0TXWy+XdcLu2QY1HjiY5KbZTZNQfLAlcEkVLjYuoLTbxoN/8nukjMoO1OBnoPMZe5TLr9x8HZeBEQeH8YtadNYnG8D1T7Sk3Ftjng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcuVj9PK02QHIddqPgz3lQM2JMZGo0rW1ZmBPWPQ1Sc=;
 b=PwL5MdRftqNbOOQ5QAzTfjhYngclKpG66hX7TDzV6syCrD909HfrI71WZEHRLpVFyUnnfg1G+USjJzlG66ocgFbH6WqYkvHdYpfmgSTFnCEIKuxwGLFcdgcrt76OCwU2jQ9vfoAYUCpD0IXP8dfH9kxxzkL2zKx5iB/Cd/g6t450uH8DJ/aBlz01+dFCXiMNLBT0vJQv9wwvkO0+DYZv8T1EncAfEQm/7h4Crd3R2ep1d0uVg6n3EYFl/q6oJZG0uhn5R1U0Qrfi8JbOpjQU76B51SL+wep1F1mdQoeqvZNmgjH3Xl7YPKHGJdS/+83rxR1idZjAd8MZu2YbDDykhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by DS0PR11MB8667.namprd11.prod.outlook.com (2603:10b6:8:1b3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 14:49:01 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 14:49:00 +0000
Date: Fri, 14 Mar 2025 15:48:56 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3] i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <4ab6iscrkdxchtbxvnkpg3dbfrb2dboxkemiktjme6uyijjuxc@ldjwoc7qoyor>
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
 <rtote75hb3xv4kdtjahyeihtkypsoadbearwtkdj27e7xdgevx@dbi5u5itevpw>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rtote75hb3xv4kdtjahyeihtkypsoadbearwtkdj27e7xdgevx@dbi5u5itevpw>
X-ClientProxiedBy: MI1P293CA0001.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:2::8)
 To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|DS0PR11MB8667:EE_
X-MS-Office365-Filtering-Correlation-Id: b38d3659-837a-4ea0-51cf-08dd63075b83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlZLdForb2czcmxEU0FadGJXYnlrTCtJOEtWY3JpRjZzR24veEc0eGRxTnlM?=
 =?utf-8?B?S21GT3dGbGdyTUNEZ1RhMUxwL2M1K0dyTVp1RlNNbWZyRnNKSmJXemd1UnFJ?=
 =?utf-8?B?NURKWnZBRi80WEdJQmg2eFh6MUJMU0x6ZHJsNjNjenVUUHQ4RkNTUXZBc3pq?=
 =?utf-8?B?NldRNnZGaUUxeTNSYTRRL1lKcXkyL3htMTZ0MWRkRTltS29lVnlxbWYrRXIx?=
 =?utf-8?B?dDhLZGZDNksyS1dpQzBZT2h1MTZwRHZEQkhqTnFvd0I5dUhCR1ZucHBTbnE2?=
 =?utf-8?B?dXc1MmlkcWFHR1lZbHIzTzZtNGxmZ3dmcDdQeUtRbEJINEtCdFBhUXB6MzhW?=
 =?utf-8?B?MGNwU0xxNnBpc3F4TldhcWovRHZCUThqRHBqSGdxc2ZtMGdFUkxleDhSamh2?=
 =?utf-8?B?a0NZL1JiWlQvekc2M3pjUnJyV3hiT0J6MEE0RXhtcXNRMCsxUlZYTWlQWHBR?=
 =?utf-8?B?aXFJTXBWaVJNUHlLQXYxSk1WdEdDVUlLUG1FR2dEV1VYUVY0K2VOYVZHd213?=
 =?utf-8?B?R1pwczlJOG9WcUVmMlI4dEhQNzNRUzdNSEh3aWxkTGFLbmdOdFRIOG5yTWdK?=
 =?utf-8?B?dUFsT1QrMjZLUzZnNGRpLzZUNWRTemc1V0NXbGRyb0R2NGFIVG9nUExsN05v?=
 =?utf-8?B?VzA4TFByRjUyTGRpbFluV0UvU29EVVgrdk93d1cyNVltTng0TFdJMkJQcWM2?=
 =?utf-8?B?OWZ2SjRtNmxNcXN0WW1ndzQ3RmVTZTJTL2F6MzlhUG10ZnVjTTUvTjV3LzFU?=
 =?utf-8?B?anNkY3hUK21oTEFjYTdPNGFaUlc1SnhOOVlmZ0c2N3BnSFMvOHRPcEtJRkFN?=
 =?utf-8?B?QnpZNFlRanAwS1l5NVNvVHNnUWo2bEJyR2g3UnEwMHJDdUFlNFJZd3FvRHFu?=
 =?utf-8?B?RGswOTlFOWdmeGhjR29NMlJyWU1WVXp1UHFLcnBzbHZxU3pzMmdwYm5CaCtx?=
 =?utf-8?B?MHJtOTZjZ3ZBSXFzTlYxWTRLQTJ4M3lyWUtxaWJZbFY5OUpSTWRzMFJKV2hO?=
 =?utf-8?B?T09DUVVYR2dySFVuamxJQVFqbENINUVDc1VDYkJqTVJaYmsydzUwazhHZ3lC?=
 =?utf-8?B?OEpURVlqZXBSQjV0SGVCSnlCdTlLNklMb29vTi8xWUlXd0JZSWZ6WHR2YURr?=
 =?utf-8?B?MElwekZNK2JFMTRIVFFpQ0J2b1Nzd2V6ZTlaa1JZZUlzb2hUUnBlZjFkWlZF?=
 =?utf-8?B?WnU5R3lxbjJacXRVSmtuUmsvWW5lUzR4U21WOE14Nnp5VW1jYThsRkpXNHow?=
 =?utf-8?B?V2tFUTVCbENHVnFib3ZOZG1NTUczWkpZb21Kek5vdTlWY1poNzdNOE1VaTg2?=
 =?utf-8?B?MldzTVB1NDRxd1JsRC8zUERuZzk5ZktNVGE4UG12dHMzcTBYNk9jMSt4ODcz?=
 =?utf-8?B?cVRnTlRDai95bkI0ZVRvQzBKS09XLzJhTVUvRXFaSmIvSmp0NGRiT2s1aFZ1?=
 =?utf-8?B?V3VsVVR3Zzh4eHp2SkU3WnozcTM3RWRyb3VGRFJ1WUcxQWcxTisxSGEwRDV5?=
 =?utf-8?B?MlRITm1WMWw1V1JkamRJNGY4SmsyN2xPWUpyT1hvVDRQNnZjcmRqN3ZXbGdR?=
 =?utf-8?B?WVphUWNBZnVGTVlENHF4ditlMEk5RTdmcUFtMzRTWmtCVTc3cEZMdzk4V0xP?=
 =?utf-8?B?SkxTV2VmOWRMdXZBRFg4Qk1SdzROdVhCSGNlZlpoUzJzNmZpVTZ3bFh3UFVZ?=
 =?utf-8?B?KzdaTlUxY1JJaEZvWFRkemlQN2NpYW91bHNOS3V1Y0tRTzRqNDJuU3dPMi91?=
 =?utf-8?B?dWJROXlINENzZzdnYlZKeHhPQU1OejV3bDZ4U09wWXlsWXJPa2thWTZma1ly?=
 =?utf-8?B?dXpVYUtRRjJjZDFINTVWdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anpGQWVKNnhiK1BYT2UvcEpGcmhEYldJcWhQekl6VE42YzU3WXNBSlpON0VR?=
 =?utf-8?B?anVyaUs2MTIzWHhVc09xenpmQWdMdGd0UUd0YVZyOVNXNVJWNS9OdmJQOHpI?=
 =?utf-8?B?UDhPMHA4WFRFQVNYREd5c0NBRWgzOFk5M1pITXovUXFFLzQvLzVUaEVTd01C?=
 =?utf-8?B?UTN0THMwUUxYcWUwWUtNZ0w1MC9OUTljWTByeTQzRmMwa3hEYlp6ajg4a2di?=
 =?utf-8?B?UHdHZklUbWgzdnNJc29LcXd1ckp3SGdCdGhHc3RGYnZJTFhlSDRZL3JWNDRT?=
 =?utf-8?B?SGo5TVg0L0tJWG1ZTGNYUC9NR1BOb1dNczlDUjhLRkRWR3E1RlhqU0g1SHQy?=
 =?utf-8?B?R2pDOGdLdzljM2x3RXNnWlNpU3VyZjNTemRSVHhQV3JTUDdhcEpxRUNsaHJF?=
 =?utf-8?B?ZjlzRGcvQzF1SXN5M2tpRE5SNTdnRE9IczdHZEs4MlMzdDZPK2VzOGNTdkVJ?=
 =?utf-8?B?N3RjQ0lBMEYyOVhaWHlROER5bDVvUkx6emFSOUxXQjdndGNLL1RhVnU4c2tS?=
 =?utf-8?B?bmdqM3FwTzF6WklzQXZ4Wnh4UXI1SEpUazFZK3B1QUFqbmhVOUliOS9mMDcw?=
 =?utf-8?B?OTNYQUMyNjl3aVkwbG5VVFhJN2hVSzZmOW1qVWx6bFJxZGs0eU1pK09JdGNQ?=
 =?utf-8?B?a2xTUFVpYUlLS1lFSmIwOXo2Z0FKMjFUNUZWVjBxMThNZDJ1Z2dmY2hDVFp0?=
 =?utf-8?B?SmtBbnc4Vk5TT1pFQ3ZSR1NFUDN3MmRFWldnUTBUOXhTc2pqY2xoMFo2R1ZY?=
 =?utf-8?B?YmorMnhLTEk4Vm90d0hOazAzaWE2bnVaV1FCMHdUL3MzT3JxSXhNbzhCWm14?=
 =?utf-8?B?OFpzTERRZTh2TS9VMFpaOWJRaXltV04rWURkcmNNUm9qVlZtMlVNaG9TSmc0?=
 =?utf-8?B?cjlhdkFoSXJTTDdPZGR3SnFvWmpHUG4xQkM1bWdJVDdXVm1Yd2dKR2pLZ3lR?=
 =?utf-8?B?UTRmb0NNTXNQeC8vcGNNeWRhdXJGdmE5YzFZT2hLTFNncC84ZkNDRHNXemYz?=
 =?utf-8?B?anlTWHlqTVFrQjI3Q05Fc3pZN3FKRjFsR0hCR0NSS3QvUmlPdWloZG9nbVFW?=
 =?utf-8?B?Si9OUmkvNlZCdTNqam5uSXBDZEVvWnNGc0tpVENMcndPODF0THZZalZZY2dH?=
 =?utf-8?B?bW1kUEtrSnBpWnpUazczWHJDQmVwVURkTXIrNU1KeWx6a1hjazVvcTQ5aW1i?=
 =?utf-8?B?ZTIrdnBuSytaUUd0YkNDZGo0RzhGMHVacHh1cFN6bUIwS0xicnFpZ1dMUS90?=
 =?utf-8?B?QS9RWGdvN2NmQTJuL2ROeUhSOGNES3NFRHJiN3NjcFNKbGtsY3kxdkYvaFpq?=
 =?utf-8?B?WkZ0cnkvdmRzajBoVnVHeXh6VFNOaVdWVG5mODMzQ0Z6aWxjWWpSUVJKWVRU?=
 =?utf-8?B?RFR4SWRMcFhjeVNlMmIzaFE3T09Va3V5aisvL0l0UG9XZ1czYXRndnVzRmVy?=
 =?utf-8?B?anZvQkhHemNNK3REdlNOS0hlNnVsOUFwNnJRUWxrazU3eExMZEw3ZHM3NUVn?=
 =?utf-8?B?NHhOempGcTRiRWU5VFlrUHp1S2ZnakxGS0lIR1dpTmhmdktBS3NIV05lZjhs?=
 =?utf-8?B?Y0FZVEg2VzduQVF1dTZSaDlBOXlEd01OOG80Y1VnUElxRm9sU3EwUWZsN1V3?=
 =?utf-8?B?Tm9uYXZFQmpOb2JucEtkMTZGWmxxcmVUZ2M0Tmg3WjNXK0FNVnBsN2xESTJV?=
 =?utf-8?B?QVN4ZTFTZkpCc05paEtZcXBvTHIrTXVOMTA4bEk2MFhYYVdiYi9zbyswaUNN?=
 =?utf-8?B?M1FXamVWdk9CSmZCdDNaZzZKUzgza2xEby9QaHpwaTR2cHh4UkNzQmZtcC9v?=
 =?utf-8?B?eWNmTkZOTVFMc1VCTDZ1cm5BMnZiMjArbTdRQmdTRkVvOHRXTG5QMmJtNGtU?=
 =?utf-8?B?T2k4WXZNZk9nbkFOa1hISG9TWG1rSmFwaFptMUNtK3pjaWoyT0Y1Z3oxaHc3?=
 =?utf-8?B?dENFTmhtc0oxYklRdUR1RE9OTlh3WS9ZeTVuUWcyVVRqVDh1R0cvdlhyblhx?=
 =?utf-8?B?Ulp2N1JYb0hMWlRTam1vcU1xT1I3ZTNaYnRnWjdLT1VTaG12L3czYW5NQUJG?=
 =?utf-8?B?TCtGc2lvS2RpeG90aEUrd1E4Rzd5bDhkZGZ1a003eStCVjI3U0JOMlBlcHFa?=
 =?utf-8?B?aEdlR3VReEJieGJtUmxtUnhMYTd4N1oxMzM1TjQ3b0Q4SWFXZk15SzE5M3M4?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b38d3659-837a-4ea0-51cf-08dd63075b83
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 14:49:00.8899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: db6wQryqp+khUP/ce0MUAnIn44V2i7HtEGMkQDMUtCUlanppfdzYVzPPKI0fOM9RLULynchgTq+nUOMZDP0cVztmh0OxnOAkcfNGIjIl6ko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8667
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

Hi,

On 2025-03-14 at 15:43:02 +0100, Andi Shyti wrote:
> > 
> > Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> > 
> 
> Please don't make it as tag. Fixes has a specific meaning that
> means that the patch is fixing a bug introduced by a specific
> commit and it needs to be backported to stable kernels.
> 
> You can use a discursive form, saying, e.g. that the issue has
> been reported here[*]. I can fix it, no need to resend.
> 

Ok, I'll remember that.

> > +	 *
> > +	 * https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> 
> Please, no links in comments. If you want to refer to something
> specific in the link you can summarize it rather than adding the
> link.
> 
> Is there anything you want to add from the link? Otherwise I am
> going to remove it.
> 

No, I have nothing to add from the link, I just wasn't sure how to
properly document the change. I'll remember to not include any links in
future patches.

> > +	 */
> > +	if (GRAPHICS_VER(gt->i915) == 12)
> > +		return 0;
> 
> yes, much cleaner than the first version. With the changes above:
> 
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> 
> Thanks,
> Andi
> 

Thanks, Mikołaj
