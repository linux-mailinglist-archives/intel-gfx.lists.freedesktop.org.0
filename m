Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OB21LEqcBWrAYwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 11:56:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670E8540091
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 11:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BABE10E39E;
	Thu, 14 May 2026 09:56:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZePJsb0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDD210E38E;
 Thu, 14 May 2026 09:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778752581; x=1810288581;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=StoHslJiu41H1z6fiVYv/20e+Y0GFERzww71cEY0DpA=;
 b=AZePJsb0lwe6clF7Nh1rsJWK5LhqJrxlQCCwVbWKzjeeFAaKDRLXH1mN
 rjv6vI9UcVilGy+i5nNSWiL5ZdpTYlAVIJtMUF+XTqdipl9p4WX7CceJK
 /pnlUDHmwAY+JabfOHtonEiLqsdSsjTuo3Has8U30CRh82RUT+4nObSUC
 wUsv3MJNgPLFyOTjDdkeLzcNMyPR273Q8Wwu4uVMuqJU6HXA+fRRkx9xy
 Ylx7mrLQMvlqKdBP7WqMdakIZ8ghb4BM8P+VrbjodWauWqZHYt0GoDd91
 Jofl1ZBpeZgeEYptcIiBR/HIzg5LtP7t+HxkIBjFgkaE7ALSPF0mVAKRX Q==;
X-CSE-ConnectionGUID: ylPspa4jR4qi/evjga68Zw==
X-CSE-MsgGUID: t0ChTL+rTB2MgspO2ymDMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79672059"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79672059"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:56:20 -0700
X-CSE-ConnectionGUID: KcUXGCzPQ0aIo1R7qKtt+w==
X-CSE-MsgGUID: 9YtdWTy0QUSb1lXKhM8E8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="235694424"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:56:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:56:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 02:56:19 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:56:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XxX/l+9/tRGZhXOm/k9O+brgAD59XGig9Gbf8SecoZXFmWKuWRl+z8J9kR+RFbnXceXZpQInrNpvd5N66zkxgyx2mWwLxiA6Ypz/aGTkc69KEROMp2H6FsoRVtE+b3+XukSxg56g/QmTmeyVEei7AuupxOsqXdPHHwKQo4Yp6APe+YhHIM5MLOPCsmEg8NAPcRwfQZ8K6rPs2hMHS0WLPGd0XNPVOvWGZKfYIrd1MHuijchsvcFKcQIBd599pKE5mRvZtd5D47UvlZGqKVRBXVwFGSHW0vHue7qY8OWMfjhOVL17/Ottyjd2OU67JYmM7PeHWkMHghbA+spsWf2S+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mGOAsWpm9bSyOvISlIb4Olml3OHgRZVJHWApIJiFGmk=;
 b=LS3uw6p1ZFGyH7X+6mzsDiRL468398prY72BWgU48MwPIV/kgwtixSEPkeK+setsLWJ1eupWkV0JwJB88M0F8gOsN7mXC/g2WQQHyBMnbUxaFk3XumuPAT2fzikkcA0b73onUAf35OwJVxyUD/MaJ7ZxXTCxEe7Rr9AdIlKtwK77R3ZfYIfOeWNFBk+RDuQNPeyMgEzp3chNJYnDv7kKGXkhq91bmg0MtLfmhdHT4vKGqvmQ5oVSN421UltRCiu4ijZTaoIaozu1MJqyMxlSYvd36m6FvMurJmdMUQEINoMhSCMKbySB+3wEDka+aCvRIiJ+mX0A9qyP9s06SUZejw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 09:56:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 09:56:16 +0000
Message-ID: <fb3995be-6e74-4eb1-8990-4b8e6f56db7f@intel.com>
Date: Thu, 14 May 2026 15:26:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/dp: Decode dsc max delta bpp from sink dpcd
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260423143035.2267634-1-nemesa.garg@intel.com>
 <20260423143035.2267634-4-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260423143035.2267634-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0039.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7137:EE_
X-MS-Office365-Filtering-Correlation-Id: c5b6a93f-188a-413b-9d90-08deb19f0a14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799003|4143699003|22082099003|18002099003|56012099003|3023799003;
X-Microsoft-Antispam-Message-Info: OjFMfB/kB0gXg77JuFX7IQhi9IqddyW15xJhwAyLLYDLYKni3L4oW86EF/YW1eZioztSytUQ8wKERA7wdzL5KsExpp1HR+SuHYqQNkpXTKcNLPPt5+hj4boe4mv4g7qgQKpQZkG5kW92Pe4PbRHurco9LwF40OYdsbE3+qvfkYIw7MeaxiFlh++aboIH48Nbj/Bc6Zlof+zPQUEdIPZPZPeXseuGuw8lNw+QnFhJ0Jz6LxppVm3hCjLNBSehSkbcuGx/4BfoIaq7gfKDEYLuHirLWjboeA8GRO/uK9/iXSb3aI0kil1pG9b6SkNv/eBTb8fQ6wGaENnvYLviKxlfGSvNXvVUrC5lv66YtuOlBnU+OoD/vcff8y/UYLCmYsdPyWYRRprCQPN7s5fSSA+SHmnVtR4iAxZ3TRXt0/SQ3JFh5d1wJwEKcf3h0ZbtOW3AtOPKQD/k7sHfESeaYtXEA1UDqIQYBuT6rJX+v5+S9Gs2iTjdvjbpdUUVbxK65fBuRCfp5z5/srtTsYDNhhr3dJSZkNj+z5dsq8Rh6yIYh8/0xXL2C48C43oxQzzklDhJFy5BH3jZe/ojfJMQe2Pq2egxD2GjbLROBHNnwg/R+YWbstfymvrxTuNxjOoK7EJbpdKsMY56gByx1+5bIwMAGeJF6/sO+q6V6rr6z6whYA6CUCaOIAkPSnd8CplJt1dU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799003)(4143699003)(22082099003)(18002099003)(56012099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEhnT1c2dElMLyt1WjVuWjFJalNHVGdUUjdFckNROEowWHVpUTlyandSWFNE?=
 =?utf-8?B?bmhkdjRzeE43V2VScHVTZjJteUF2UUhaMWpOaTlhUjcrRk1qSGxDZkdtdUtP?=
 =?utf-8?B?RGY5Qk1JTVhpMWlwWVZzZU5Jc1FJZW1SNG9scUF3dEpwb0MwZEdLd1VnMCtS?=
 =?utf-8?B?RFNBUTBycGRHL0MzMWZqVU1HNVRWMyt6Ni9CVkQ4NkRWeVo4bmFIUFdLdk9C?=
 =?utf-8?B?NStVclhrZEdBcy9aVzI5UHliUlM2MzVFMGFxYWMyWFlpV2JBZmdlUXBGSTRL?=
 =?utf-8?B?RlR5eG1uWnVoMTV4NTRwNVZRQ0h0M2VoVE4vYlhvVTljWUIyNjlpZFlIMURL?=
 =?utf-8?B?WWFTcy9CMVY4MjB3dVhZNklUajRJSzFXMXNtQ1h2YVA5c2xGRFNDSlVWc1h3?=
 =?utf-8?B?emFjYnB4RlJ1eTFaanNjMlFoMWV0OTF6eGNZajlWeVoyQnF6TWUyYi90cXZz?=
 =?utf-8?B?NkE3TjJEQVIrNWdZNTRBS3VHb2xtcGFIQVZYUlQrc3QraVVSNGlLRXdobGhM?=
 =?utf-8?B?MUZtQnQ1N0RDYVZOcUUwcnQwQ0p2WjN0RmMrM2VMZFJHYk1JR3J3WENaSFE4?=
 =?utf-8?B?YUUvSUJrendjdjNzZHJxSDByaXMvN2ZTeVl5dlRlejY0WU1tU2kyektGK1lU?=
 =?utf-8?B?U3AzaDBEakFuMFczNUtadWFySm50QWlwMGoxdmFxN3I0VExndVhJWUZSSlFX?=
 =?utf-8?B?aG9DOWhJcFllZldkbkFrUndxbjhOTUQvaHZ1a0twd1JzMWZuKzViZ2dWamhL?=
 =?utf-8?B?d1E4a3F4UTdMc3g4RkRJakFPYnV5U1lUek8wcndDbXhZdURDcDFPVVJoa3B5?=
 =?utf-8?B?WXpsS1Q4YUw0M04xVk5BNUdkam9vdWZqYVZUbjVIckJnclVEYmI0WW1EekZX?=
 =?utf-8?B?R1RYY25rR1FWUVJwM2xJSTBIa3RuWkJlV1BHNHdJYnRmOXBCY3JRU201aWR3?=
 =?utf-8?B?WnNxZ1VadDhpN040SVFtS1A0SWkrR1NMWFlkUlM1RG5vZGZ2SUNxb2VtWDgw?=
 =?utf-8?B?ejNUOWc2NW8ra2pXcEhDZ2phUUtHTHVpc2ZWVGZvNkxZOC9Bb3oyVk5uL2Rr?=
 =?utf-8?B?ODlRck84V2s2VnVVajIycSs5MGZCM29ycFlrZ0lHdUZZNTZWcjI3OUpMOGhG?=
 =?utf-8?B?MzA0enpHNnBWaWVHY0xaM3FtcVBxNkJrMkY5bDM4WUw0alNYVkdpdmVPeXpz?=
 =?utf-8?B?UVJEZ3RPdTZXdkpZblU1SURyMjdtajhCSURlSVRtemZJbWRxQWJUblFCcnEr?=
 =?utf-8?B?WXczOC9qTm1lUWpDelMwSkMvRjIreU1Pd0FkcWswOWlHenlmU0xHczMwdk44?=
 =?utf-8?B?ci9PQWswMi9NSVFCRDFrSVFyaUNsTTlpUnF5UHkrd2VzYm96d1FmdkpmUktQ?=
 =?utf-8?B?M0VTaEtsSGZvMzJMUE9kL2hGWWpXeHNkWmRmbjRJTm9TNHJhSURWTTY2empI?=
 =?utf-8?B?UHROckw4MytRdXhqekVGaThrTUp4OG9jRWVMam9nMEhCWXJZYy9mdW54QlBp?=
 =?utf-8?B?TlZuOTM2MnYrbjZQT1RJL1ZMazlUMmVuQUMyN3NWZGxHaHBoNlFFMEh5VW9L?=
 =?utf-8?B?K29qYk43UGEwVDhOTUE3YmF5KzJLdHgwMVF3RzBsR3lYcG04bit2dGNLOEVy?=
 =?utf-8?B?amhheS9MTkdmbmZuNHh2am9XK2c3OUk3c2kwZThaMmx2SlBFWExYVndacU5O?=
 =?utf-8?B?L3NDZnQvdDdCVHRWZUlvZVZwNFVJdlZPdGIrdWVSWS83SnVwMVo3RVVQSk05?=
 =?utf-8?B?ZGJJQlJwbmg1d2pEblVTUkpGN2xXSWY1ZlFZOWRqM09vWVRpVGpSVUxVZmVI?=
 =?utf-8?B?MFdFTThxNGhQQU1pODBtNVhlV0pnTk5iT202TVFPYXNndG4yeHg3VlIxcXFT?=
 =?utf-8?B?RGZlbUx2THFoaEJPSDZkek95ejlTVUF4OGFWQXpXdHZnZkMzQjc0d0h1WTQ2?=
 =?utf-8?B?c09KMkI2VU5YZ1M2a2xweTFzWnpUM1NkbDRBZENFcjRhcFFtamgvdm5sNG81?=
 =?utf-8?B?QzVUVWNxR0R0S0UxQVE3YitzTHJYQzJsQ0l0TjVaZWJEdXhXWnlPNUcvNnNV?=
 =?utf-8?B?NUhIRTh0TzV0czdINVlTL3FHTEpqb1o4NXk1SldNb29wRVFyUGNCTXVhZ1Nm?=
 =?utf-8?B?aitNZHNFOTdOb0RYUVBqVUNncitjQnVaVHpta1B0NjRLNmRxUExYZk5ETzUz?=
 =?utf-8?B?UDJhRWo4a0cya0QvNVBVODlsZlhIRDZuMXpNZUcrMFhFNjRWOGdrdGZ1TVlz?=
 =?utf-8?B?SW8vcG5CNWo2bWtmbkUvaFVhbXpxNENNdVlibUJZODlxbWNoUFBnZUJMamdH?=
 =?utf-8?B?SWpJdWZFSkNhZXdLcmo1SWhTYWhjMXdzZ25iZW43M2NJV0pMUGlCNHU3QzV3?=
 =?utf-8?Q?dQWW+j2rF77Dnv+4=3D?=
X-Exchange-RoutingPolicyChecked: h4YNmg7Q7kT6Yx9rDEYOjtHnRxj1vpO2xZqcVl85MllfPpY5CQWDl9safcVrEBu77Y5hP7LczrEa/RtUsFwvwd/LUg/OhwEB3yMYP7r4lnv1TpCLUr6x5HScPpWE5XyqOrfBd8qItD7fqEdvboJdj2AVHTyQOzKKjHwc4wdTCogpYptYgV5iVBWopINem1b8lqoVF1yCYtIHAcfCPmNpdUtefIcd4PG5vuFEHsNwYIbKIaLGevPwE/9r/wqLmQLlS7J9FSQsImbVu3/5TTdguvVhmB13XL/6ZUTRsx0+MDoutzGXajbqD0HI+2RQ6SapVPY3KmdpTccGJMrqDGg7+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b6a93f-188a-413b-9d90-08deb19f0a14
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 09:56:16.4688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DZQlZGedRaS8YKbbwOI1b98snfIlTospi3KRiJ/7qnQIT9h/MOwdExMhKokEojIqwxVlqVPDydUdzSTwj0RQxu1dg7gEhKRQwHhXWnNk/T0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
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
X-Rspamd-Queue-Id: 670E8540091
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 4/23/2026 8:00 PM, Nemesa Garg wrote:
> Add intel_dp_dsc_max_delta_bppx16() to parse sink dsc max
> delta bpp from dpcd when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
> is set. The helper decodes RGB/YCbCr444 and YCbCr420 delta
> range from DP_DSC_MAX_BPP_DELTA.
>
> With this the flow will be first check format-specific
> range, if given calculate max compressed bpp accordingly.
> If not check for sink supported max compressed bpp and
> use that. If this is also not there go with mandatory
> max range supported bpp.

Perhaps, this could be phrased more clearly with proper punctuation.

>
> v2: Reorder the check flow for max_bpp. [Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
>   1 file changed, 41 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 35b8fb5740aa..3c6893beeffa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2169,17 +2169,56 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>   	return -EINVAL;
>   }
>   
> +static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
> +					 enum intel_output_format output_format)
> +{
> +	const u8 *dsc_dpcd = connector->dp.dsc_dpcd;
> +	u8 max_bpp_delta_v1 = dsc_dpcd[DP_DSC_MAX_BPP_DELTA_VERSION_1 - DP_DSC_SUPPORT];
> +	int max_bpp;
> +
> +	if (!(dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
> +	    DP_DSC_MAX_BPP_DELTA_AVAILABILITY))
> +		return 0;
> +
> +	switch (output_format) {
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		max_bpp =  max_bpp_delta_v1 &
> +			DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;

nit pick: this can be in the same line.


> +		if (max_bpp >= 1 && max_bpp <= 21)
> +			max_bpp =  max_bpp + DP_DSC_BPP_DELTA_444 - 1;
> +		break;
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		max_bpp = (max_bpp_delta_v1 &
> +				DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK) >>
> +				DP_DSC_BPP_DELTA_SHIFT_420;

This is a bit difficult to read. perhaps:

                 max_bpp = (max_bpp_delta_v1 & 
DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK) >>
                                        DP_DSC_BPP_DELTA_SHIFT_420;

Otherwise the patch looks good to me.

With the above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +		if (max_bpp >= 1 && max_bpp <= 7)
> +			max_bpp = max_bpp + DP_DSC_BPP_DELTA_420 - 1;
> +		break;
> +	default:
> +		MISSING_CASE(output_format);
> +		return 0;
> +	}
> +
> +	return max_bpp << 4;
> +}
> +
>   static
>   u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
>   					    enum intel_output_format output_format,
>   					    int bpc)
>   {
> -	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
> +	u16 max_bppx16 = intel_dp_dsc_max_delta_bppx16(connector, output_format);
> +
> +	if (max_bppx16)
> +		return max_bppx16;
> +
> +	max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
>   
>   	if (max_bppx16)
>   		return max_bppx16;
>   	/*
> -	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
> +	 * If support not given in DPCD 67h, 68h, 6Eh, 6Fh use the Maximum Allowed bit rate
>   	 * values as given in spec Table 2-157 DP v2.0
>   	 */
>   	switch (output_format) {
