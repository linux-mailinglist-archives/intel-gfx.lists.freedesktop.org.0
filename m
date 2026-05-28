Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGsnHxcnGGqZeQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 13:29:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106EB5F14DA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 13:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E08B10F050;
	Thu, 28 May 2026 11:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gz2gSvIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6EC10F050;
 Thu, 28 May 2026 11:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779967765; x=1811503765;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a82Lnz5rxx+Y8Fm/peupnN9whtt9F0NGOsXCfJfRSXs=;
 b=gz2gSvIHP9tvn2qEgDkGFQcsuxBqMcJgclwO47v7haz5/RrBY1Normej
 lQypIPi4uJ5DZTFSUw+bWXVT8gIsXqMkKXbH7CsGxhWT8od01A4pY+rud
 wtz+HKlGBiMXNZRbl7RxR5DKgwV4v8q5DHjhy8OGt3dAwy5QPxug/JHcv
 fDwkg8cY5lpVlhfX2oLlwJ8fZnjhwPai+j+t45QvgoSRAdXdN++u9QDn6
 ULmXnuI/oJT6Va9krZWwMQpYqKi1AaY0Msb5lEzJSE8SApjfyLd7oHl8g
 tkXvs9NIsjfUoMYNZ5S8/mE0A3+0HcFjgODRffAL33OwTl5Eldm4d8qMo Q==;
X-CSE-ConnectionGUID: x7m6FeM9SYSTmbgMcr5pKw==
X-CSE-MsgGUID: NH1LwkGjRUSbYhwldBbpjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80868399"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80868399"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 04:29:24 -0700
X-CSE-ConnectionGUID: ChM/kht1RjqDoBhe88wBGA==
X-CSE-MsgGUID: 0yK09AloTTWMGCok+7nTrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="239951485"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 04:29:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 04:29:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 04:29:23 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 04:29:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VDK7Tv23eriZsblRf5Kxxdd+nJUs/RYJm0dYFh+Rprp+DFfqZZDd190kZEQ5wFYBWb85futzmN4Tqus84YV8EYQX9lDjecB8d199vTBwgeiL4OA9RwbGywU1HZFd+t3i10BC98bg5orlr0jTvWx3S5lekh24VSWp844Xn/08e7hJI4fDMB8oxq4EEPHhDnVb0WZ6XDkMCb4hU8muOAUdCz6O1N4xEarb7ey02JtlP/pcKzqgwaihJCadLY9P0GGOpjlwGQwlyf+Iy/sf6SCfAVkzLO/wsz7C5ByAiOQj7n9+9MuxeHxKDGGa37jcmZP3VplRwUckkompeq6iKFO/Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AWEm514SyxAjrTJPNS1nR3ZF8+Ihc4cH9JYC8+8GBac=;
 b=zEXzoj1bmJSY+mS+f64ndOoOelYj5ZHUN7D24T/VAmTkGKjMcfilvSjmzAN3GEI81QmhBGKi/YGLKaxTF0tceMe2hVU1QyHOG0OWIczwbagRwE8sPQ00FBuRLWqAVs59xwlK9UcUfCelV7N7IaUNaf1Jh0SxdytBVKKBWNT+OF1vI+z8xw/lMWMMmrRIW6PPMvbJQcsXTlD12TZtyGzCJKphz+NSGsh7kASq4W58KCTorb1XqdS9IxvmruYiPI4iXUv1H7owcBxXKw5VUf5upwiR83CQkv7mzut8G3LP/nDXUM5ZK2WsFuiap64tCf+zdw241bgxFP6RFUr9UEQ3Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SJ5PPF2E3E6CCA8.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::81b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 11:29:21 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 11:29:21 +0000
Message-ID: <457f6b58-3e56-4c45-9736-905de8fa513c@intel.com>
Date: Thu, 28 May 2026 16:59:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/13] drm/i915/display: Add DC3CO eligibility
 computation
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>, <imre.deak@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-8-dibin.moolakadan.subrahmanian@intel.com>
 <2d54511166d5e97b5476dc0422d7f583a2543cf6@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <2d54511166d5e97b5476dc0422d7f583a2543cf6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0188.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::15) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SJ5PPF2E3E6CCA8:EE_
X-MS-Office365-Filtering-Correlation-Id: 3124b896-fb2e-4a65-d8ba-08debcac5ce4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|11063799006|5023799004|6133799003|56012099006|4143699003|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: YSHzDxepUv2UZjyQxq6KmvXFVzLNYybRYVyTQi31Oe/y3VuJrwakMkW1/wrQIB8KaTpbe+0Jev40HUUZ7BWwAPzcVpqrUNEDRu453iUU1PSt1MM6SsIjWQRMkzQ/8g1EFSJJ55U97Yl9gdZ8ir4OKDXiMdkDzCkE3xdHTwU//900voccFhcu6PlkiXIe7qkH2FpMSMUkNnj/3c/UykzMrpGBg2Di0MQfoV0AlD4nEtZoYP6pdyARIpRvMwYU2rTlr8VEpjy+y8NAhzcTjuaH2PF+34AwZQ2Q7Dv0QYJB4735bkuMlWIre/kf6hul/Tove0cscTSSYwolpxhzdHTZUhCYIbERMdm1EQWuwkihHrPicPhJDaf2pJHyhShDF4x1JBQUWMI/Vxw5tMpuO39D68swSccxoBSpOnSCyC1Dt2KYasyjXPInrftZ3+vsn8qlhDhH1V7o2nHao+b5XoBSrHmWIrbYpvt1YnvLJh6lHECwPc/EJLUej6L5tQLTAhp/i/dUHOMk8bjWeN+RcKqv/k1kD7dJeNdmvc7oc4iYn7VfyNEXfeTNaFQig10sl4tV6IvRRN0Tn8rYSWuSEgPmLA9vdjmNR6TYoIMxa9YtKhrUbuEOpmO/D2IMt12HT6uqGpnQNcRrZ1DtvPll6nTuQD2VP5jX0KP02CioFZFAwWB6YKZLISSDbfz+71SFAqwZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(11063799006)(5023799004)(6133799003)(56012099006)(4143699003)(3023799007)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGJDMFRTTm1nRTZWQ254dmg3bmk5S1pWRzFjQkg5eDd5WGRDMUE4RFVXbXVN?=
 =?utf-8?B?aW9acVNBaC8zU2JCbFFQSG53THM4NVdmZjN1Ny9SMkxQZ2l3REd4Q2F2YU44?=
 =?utf-8?B?QURTWlhyQVNPQjlrN0NGMU1LbDEwNk03cEhlaHdvZy9TSXZCQVYza0xTWjhV?=
 =?utf-8?B?d01ZaEhkTW9FL1B2OCs4dEViNDBKWVpVTnA4UWFucVlVR3JWa0NjYlVqR2R0?=
 =?utf-8?B?eXZGSXY4SXFheGc5UDJWZHZOVjZobTZ0VkMzckYvZjJRY21FRXZHVGlFYkxW?=
 =?utf-8?B?NjNySmRnQm1GSE1UckpJQ1NZZ1E4RGN1MlVzSkVnN0hxM2p2RUcyb2IxWjR6?=
 =?utf-8?B?NlBob2FpR3E5K3RUNHBYRW43V09vNGZXWUpiUUkvVVJVL1lYV1VJRncxQURD?=
 =?utf-8?B?TlhnVGJZbHZtWEFwUUVzWmpjNkFFNWVWVWMrQ2pnQ0J5OUpWWFFXNUQ0ZGtp?=
 =?utf-8?B?NUsxNDNGZFdhbVFxQ0luUFhnN1RzdXFVL0l1SEV5SHBOUkk2cmthdDNRWlZO?=
 =?utf-8?B?Y014d0dtaGs5UjF0Y1BFSldFemhNbm5qTlVRd2dzcVpRNFdiZmdMakp4K2No?=
 =?utf-8?B?SE9aNElrVkovSS9QV3czYnJmM2NSMmxsdlJ0bGk5Q3lCcTdJMGpLRXVwRW0r?=
 =?utf-8?B?NEs5SXo0T3V2NGVUYkpLalJKdmp1SkdTSkh3NmRucXllZWZGeFNqQXFjZy9L?=
 =?utf-8?B?RDJhUzA4UkMydFEyZGU1ekk0WlA0WVJVaFZJMzdMYUY3UmNQemJRMEtJZnRX?=
 =?utf-8?B?UkxzS0pLUDNVTjhVcWhyRHdQeTN4NklNNkVLMHVZNzNQa0tMVkRZYXJYZGZo?=
 =?utf-8?B?bXllb0FUdDlnc2N6dk1BbEg2Vkp0elRJWjJJbWwrdTRFTVdMZDl4UXJxVFNt?=
 =?utf-8?B?UjFkVHlEK1JDV3FZQ1dOL09BMmxzaURiT0UwQldoUlB6TlFYTXJ4TGZVdERn?=
 =?utf-8?B?cEovNHhmUlh0WGwrVTh5S3JUNHFlaFVVeHZNL3ZqdlVtb3RpL2FCSlVObElr?=
 =?utf-8?B?Z1dqZ0xVemNXQmppLzBxMHRRVjlLbE9DMzBmTnp2dWdoQ3ExTlZKVEpuN1BV?=
 =?utf-8?B?OHdxREJJTHhrL1VqNDgrRUk3bnBvUVVpZUJ1a3JQMFJpQVlPRG9Ba21rMldz?=
 =?utf-8?B?VjF3TFFBOEJLV0xZUkkwaEZRb2VFVjlCcHMrb05wVnZVVXU0MDRERXhWVHh1?=
 =?utf-8?B?eFRBZmRQelRnNHpoWG5VMk9vakZNS2JoOU5Fczl5aUVLVmZEL2QzYXVpSTUz?=
 =?utf-8?B?dGlXYkNKRFdXd01qQVMreUdqOElNSHVsU3oyUDcvT3ViNkFxWmRXUHFadWYw?=
 =?utf-8?B?dEYrNnRQQzA4YndNaFlrTzJLQ0FFL3A0cGJJaUUwNS9RZHVBUjMxVkxRRVor?=
 =?utf-8?B?VXRwSDNTRjAzdFpOTUtwWFpuSlFVQWl0aHYyelZGSFFpVk5kbXIxeXFZb2pj?=
 =?utf-8?B?Ukw5TTdQN1lweFdya3JXdzR3aGJZb29MMWM3MWV2SVVQMlVNdTFZR2kzUjRI?=
 =?utf-8?B?NWl0VTJrd205cmJ5TmltOGJiN3k4eG83b3lOUXRtNVBGeHlOQWplNU1FRWV5?=
 =?utf-8?B?NjBGdzFTQ1I5WEZBL1R2VlBwQlRwQ0Q3eU0wdzJnOXJueThtRkR4V1Y0NFA0?=
 =?utf-8?B?dGVnZ0kwY1AzdGlyNU8wcURBcHE1NnNyMXptUjJNMkp0TitWczd5dkZTT2Na?=
 =?utf-8?B?czdrRGU0c3pXU1JCMmJlS204M25rNFVnWEVialFFcHNzNG5zMDA0bUpUTUUw?=
 =?utf-8?B?ODhhb2t5ODNodGsxS2xSYmY1L1hsby8ySnlkRjRBN050QllCVTVENmlhZTdK?=
 =?utf-8?B?VUowcTgzZEZrNVN5cWwzc3NHSmtmYlBPVWJoeVFtelVuUnVhVnFaMksyTXFY?=
 =?utf-8?B?WHMyVW5vTzJSZnc2ZkZmSVRKZ3hiMGJkQXNOb3BDNFhINkpUQ1ozK3o4NkRV?=
 =?utf-8?B?WEs2VzA2QzZvWW9NYlowRjRkWnZYZmdIb3ZGNmI5SzBwQThaWEdPTWNRNXZ0?=
 =?utf-8?B?c0F2ZVpteWpHZm80MURSUmhsOHRSckV4c2dVM1Q1VHExY2diUnFIYUM1ajRF?=
 =?utf-8?B?a2o0UWQ4ODRqSU5nWnYxN0VRUS9ZRmhYcUdoRE1zZnNuNWVxWjc0THhRMVla?=
 =?utf-8?B?aGtmZUFndVpldDFnM1l2RE5ZeTB4QlU0ZnVNZ0xqZ21Ka2IxRUt3b1g0Q2xk?=
 =?utf-8?B?NVlSV3EzU29IT3c2bExBMG5zVDdRR1lWNW9GSEo3cHY0MzUyOVZxN05UeFZ5?=
 =?utf-8?B?T0JMbHFkWnNIVVk2MmlRVWNqbk9UZmdsNitjY2RPZHVIK1d5UzgyMDJiTXdL?=
 =?utf-8?B?RHplVXBpc21KUTFtN2pHclhtMzBrU0lyL0NOMVRwcnNRTnZuQWFBZ3lPK0ZF?=
 =?utf-8?Q?9cmPMOJU1U+f1B6jU+uobHWdVOv/wTXEL5VVM?=
X-Exchange-RoutingPolicyChecked: Ab8ikij5tGGLsq+RkX4DpVNZsV+fWrggEZhAC00soJBHF+9ufbvblggAh9dZ/iKmfo8j+RvLOFNG5uP2HRRoNbmVw3M1zun8w5hGkvhiSJySVpbMyhIAvCYvxCtE9lS+NZ3L94YH7l1PRWLlPbkV+2UidTB9m9SAY9u6JbJrzNHxjhE50yG+35ehUQwKsrDv8rOjKhkIRehY2g9C2dBnVCKts1PBbhxxlnPpryzBLPZPUCiTpxxlCEk6BbP3nZzmXESxUgr42ETQEy9K0uIfRl0MwQc2CsvjUXBf4iepihT2xDm2lhU7yVel7DyKoenBy9I+wEeTxJIdo6ZV3maUDw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3124b896-fb2e-4a65-d8ba-08debcac5ce4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 11:29:21.4026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nS3sgBZyriXCmIyakqYFAZIY3DbPpw/hv5IN/+suQSZvLDPGuMdNEnHkYLU5ohReD9MCNfy8EpjNPg46qYYWj9Egn1n3TVrPczkR2zrfR0nSHRsO1jA6OggWOtAv1BRu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF2E3E6CCA8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 106EB5F14DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 27-05-2026 17:54, Jani Nikula wrote:
> On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Compute DC3CO eligibility during atomic_check based on
>> pipe/port constraints and runtime triggers and store
>> result in display->power.dc3co.
> Atomic check should not change persistent state. It's almost always a
> mistake. (I guess sometimes can't be avoided.)

Agreed. atomic_check should avoid modifying persistent state.
Any thoughts on moving function call to intel_atomic_commit_tail()?

>> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and
>> reduce the DC entry delay. Otherwise, retain the existing
>> delay and set default DC_STATE_EN_UPTO_DC6.
>>
>> Changes in v2:
>> - Move dc3co state from intel_atomic_state to display->power (Uma Shankar)
>> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>>
>> Changes in v3:
>> - Fix trigger always returning zero in intel_dc3co_compute_state().
>>
>> Changes in v4:
>> - Call intel_display_power_set_target_dc_state() only when DC3CO is
>>    supported.
>> - For Panel replay DC3CO trigger, add check for as_sdp_supported flag
>> - Add 1:1 mapping check to intel_dc3co_port_pipe_compatible for
>>    display version 35.(Uma Shankar,Animesh Manna)
>> - Add guard for intel_dc3co_compute_state()
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 102 +++++++++++++++++-
>>   .../gpu/drm/i915/display/intel_display_core.h |   3 +-
>>   .../drm/i915/display/intel_display_power.c    |  30 ++++++
>>   .../drm/i915/display/intel_display_power.h    |  22 ++++
>>   4 files changed, 151 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 757a78c75bbf..375ffb329022 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5874,6 +5874,74 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
>>   	return false;
>>   }
>>   
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	/* Need to follow 1:1 mapping because of CMTG restriction*/
>> +	if (DISPLAY_VER(to_intel_display(crtc_state)) == 35)
>> +		return num_pipes == 1 &&
>> +		       ((pipe == PIPE_A && port == PORT_A) ||
>> +			(pipe == PIPE_B && port == PORT_B));
>> +	else
>> +		return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B;
>> +}
>> +
>> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	u8 active_pipes = 0;
>> +	enum pipe pipe;
>> +	u32 trigger = DC3CO_TRIGGER_NONE;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	for_each_intel_crtc(display->drm, crtc)
>> +		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
>> +
>> +	active_pipes = intel_calc_active_pipes(state, active_pipes);
>> +
>> +	if (hweight8(active_pipes) != 1)
>> +		goto done;
>> +
>> +	pipe = ffs(active_pipes) - 1;
>> +	crtc = intel_crtc_for_pipe(display, pipe);
>> +
>> +	crtc_state = to_intel_crtc_state(crtc->base.state);
>> +
>> +	for_each_intel_encoder_mask(display->drm, encoder,
>> +				    crtc_state->uapi.encoder_mask) {
>> +		if (encoder->type != INTEL_OUTPUT_EDP)
>> +			goto done;
>> +
>> +		intel_dp = enc_to_intel_dp(encoder);
>> +
>> +		if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
>> +			goto done;
>> +	}
>> +
>> +	if (crtc_state->has_lobf)
>> +		trigger |= DC3CO_TRIGGER_LOBF;
>> +	if (crtc_state->has_panel_replay && intel_dp->as_sdp_supported)
>> +		trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
>> +	if (crtc_state->has_sel_update)
>> +		trigger |= DC3CO_TRIGGER_PSR2;
>> +
>> +done:
>> +	intel_display_power_dc3co_update(display, !!trigger, trigger);
> Are two parameters necessary?

I kept them separate to map arguments directly to
allowed and trigger fields in struct intel_dc3co_state.
If you prefer I can move this logic to intel_display_power_dc3co_update()
and take only trigger as argument and derive allowed in intel_display_power_dc3co_update.

>
>> +	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
>> +		    !!trigger, trigger);
>> +}
> None of the above stuff belongs in intel_display.c. The file's too big
> as it is. Probably intel_display_power.c.

I checked moving this to intel_display_power.c,
but intel_display_power.c doesn't have any existing functions that
rely on intel_atomic_state and CRTC states.
To avoid bloating intel_display.c, would it make sense to introduce a new file?
Like intel_dc3co.c to house DC3CO only, or intel_display_dynamic_power.c
to accommodate any future dynamic states.

>
>> +
>>   static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>>   				     struct intel_crtc *primary_crtc)
>>   {
>> @@ -6570,6 +6638,9 @@ int intel_atomic_check(struct drm_device *dev,
>>   				      "modeset" : "fastset");
>>   	}
>>   
>> +	if (intel_display_power_dc3co_supported(display))
>> +		intel_dc3co_compute_state(state);
>> +
> Smells like intel_display_power_atomic_check(), maybe, without the if
> statement here.
>
>>   	return 0;
>>   
>>    fail:
>> @@ -7421,6 +7492,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
>>   	struct ref_tracker *wakeref = NULL;
>>   	int i;
>> +	u32 target_dc_state;
>> +	/*
>> +	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> +	 * toggling overhead at and above 60 FPS.
>> +	 */
>> +	int power_async_delay = 17;
>>   
>>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>>   		intel_atomic_dsb_prepare(state, crtc);
>> @@ -7627,11 +7704,26 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>>   	}
>> -	/*
>> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> -	 * toggling overhead at and above 60 FPS.
>> -	 */
>> -	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
>> +
>> +	if (intel_display_power_dc3co_supported(display)) {
>> +		if (intel_display_power_dc3co_allowed(display)) {
>> +			/*
>> +			 * Use minimal re-enable delay to allow DC3CO entry on
>> +			 * the next idle frame, unlike the 17ms guard needed to
>> +			 * prevent DC5/DC6 toggling overhead at 60+ FPS.
>> +			 */
>> +			power_async_delay = 1;
>> +			target_dc_state = DC_STATE_EN_UPTO_DC3CO;
>> +		} else {
>> +			target_dc_state = DC_STATE_EN_UPTO_DC6;
>> +		}
>> +
>> +		intel_display_power_set_target_dc_state(display, target_dc_state);
>> +	}
>> +
> This is also way too detailed for intel_atomic_commit_tail(). This is
> the highest level of modeset functions. See the code around here,
> there's nothing as detailed.

Agreed. I will wrap this logic into a helper function
to keep intel_atomic_commit_tail() clean.

>
>> +	intel_display_power_put_async_delay(display,
>> +					    POWER_DOMAIN_DC_OFF, wakeref, power_async_delay);
> Maybe need to consider intel_display_power_put_commit_tail() or
> something along those lines to hide all of the delay stuff there.

I will add delay logic to a new helper mentioned above.

>
>> +
>>   	intel_display_rpm_put(display, state->wakeref);
>>   
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 3dc5ac75a98b..e24accf473d7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -537,7 +537,8 @@ struct intel_display {
>>   
>>   	struct {
>>   		struct i915_power_domains domains;
>> -
>> +		/* DC3CO eligibility state */
>> +		struct intel_dc3co_state dc3co;
>>   		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely read */
>>   		u32 chv_phy_control;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 4b91747b38f1..b0f40e4233c8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -366,6 +366,35 @@ bool intel_display_power_dc3co_supported(struct intel_display *display)
>>   	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
>>   }
>>   
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	dc3co->allowed = allowed;
> Can this always be derived from dc3co->trigger?

Yes, I will update this based on the comment at the call site.

>
>> +	dc3co->trigger = trigger;
>> +	mutex_unlock(&dc3co->lock);
>> +}
>> +
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +	bool allowed;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return false;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	allowed = dc3co->allowed;
>> +	mutex_unlock(&dc3co->lock);
>> +
>> +	return allowed;
>> +}
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains *power_domains,
>>   				     struct intel_power_domain_mask *mask)
>>   {
>> @@ -1045,6 +1074,7 @@ int intel_power_domains_init(struct intel_display *display)
>>   		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>>   
>>   	mutex_init(&power_domains->lock);
>> +	mutex_init(&display->power.dc3co.lock);
>>   
>>   	INIT_DELAYED_WORK(&power_domains->async_put_work,
>>   			  intel_display_power_put_async_work);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 05880e9da89f..0b1a06f88ae5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>   };
>>   
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +#define DC3CO_TRIGGER_NONE		(0)
>> +#define DC3CO_TRIGGER_PSR2		BIT(0)
>> +#define DC3CO_TRIGGER_LOBF		BIT(1)
>> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
>> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
>> +					 DC3CO_TRIGGER_LOBF | \
>> +					 DC3CO_TRIGGER_PANEL_REPLAY)
>> +
>> +struct intel_dc3co_state {
>> +	struct mutex lock; /* Protects allowed and trigger fields */
>> +	bool allowed; /* DC3CO eligibility result */
>> +	u32 trigger; /* Bitmask of active DC3CO triggers */
>> +};
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend
>> @@ -187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>>   bool intel_display_power_dc3co_supported(struct intel_display *display);
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger);
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>>   
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain domain);
