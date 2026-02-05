Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLMsHiePhGl43QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 13:37:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79F2F2A3A
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 13:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104E710E19C;
	Thu,  5 Feb 2026 12:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/tTuceY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E51810E19C;
 Thu,  5 Feb 2026 12:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770295076; x=1801831076;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JIHl5TX7m5SwHjQT3vjs5sqpimhp5Bj6efZf2xZenAY=;
 b=P/tTuceYbO830AYkE8UTUr+tF1BicyHxX+vNrXfOytr2VtBf91pVvMrT
 yJ16xTm8YDK57OgyoUD2NKSEJYjCWBPZvkSENSHHKpZ1gnQ3y2WKxreLw
 0Hpdn6Nvcia9L2fw72umfFoKEG25/hVBlzkmClmGt3IWaiUCdJ/UxGkYB
 Z29Vl+to9lA1wf/bJvwpm1dz++FWY+wrptv8HmZ2ZwQZGyZ60psmxXEHP
 54EYT7V3OBjLRgzmUIEc8OiTUvmc7njlPl2IrmdiCTLXsbIT97jrszt2R
 TjxYs9GFivAi77WYeMrYvbFtm2zMz79Atw+pJbjXnjw3jh6GEPKNSyC1c g==;
X-CSE-ConnectionGUID: h8t4eBQqQWS28CHlkOl6KQ==
X-CSE-MsgGUID: CYbb53jZTZapUSUEBoGxUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="94141736"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="94141736"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:37:55 -0800
X-CSE-ConnectionGUID: d3MGDVPaR8CFYQqxmGbfVw==
X-CSE-MsgGUID: L5dJ4nJRRzS1cLGj/8d0Mw==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:37:54 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:37:54 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 04:37:54 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:37:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C8FppPt/rHj49eT+fjnRphJhX2niWtBcpb701BdeIs5kKZScbmcLuc5yd9WfPmEpLhDuskTlFneVrCL1ZByi8eQbaCE5mjiEo3UP4U/dmkORbrmvRgo5fLIEVzzR4jKEHNYlvpLdNvdvo+16Vo4bhYktFZ1foAzA5SQEfSKW9VhWMkiohDa8DIe02+yfkMCu/NAVT+GjEk/M2bpR+E0A0PaIoK5VobaPq+ayw2GFpLEiU36bzIfNBRUzZSbV8aD+Fa2dS3mIDz+IJgXuL3/PZ5pRoXKJRThVmMIz2ILTYVIhPTOUPaMXL31ijzRVUkxc8r05n2vc/0kN1qFh+lH6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4+PKhuXhWLhyQpVUZ9OxvwkE6lSXv1aSAdG4eSl5bLQ=;
 b=BQ9RRusHrXBimskIsyK93iU/28sso8mQjauoyPUc1aIMuvUBPwMdvmVn4iKB4vhYoEciUL1gRxLOMwPGvLHah4lBHNwOp8Fo9GKUMeMQbkaJKMZm3+WELJeRTL+DC9lFeCu6ks9jRl5xIvbi6lyM0GSDpNrIPmWeqeYI59rY03Jhu551K710fBbGAMrjgfLOFoz1UUYm5ARE8vfGe385FmR5QBMyT4wSGXLy0KxyM4DXMe3NgECqcg0XhWeNOR7pyBOBH5kVOfaF2yX0BNTJvwmZOPzcv9M0V5p6+5EyHJFNIDr1PtmrhvKZz/gdUtmCdzm7rGE7mH8B3eVUg3f3Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF8A8418B02.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::840) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.13; Thu, 5 Feb
 2026 12:37:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 5 Feb 2026
 12:37:50 +0000
Message-ID: <db09f0bf-c782-4d9f-9e9f-0dacbbc77cfb@intel.com>
Date: Thu, 5 Feb 2026 18:07:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
 <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
 <aYRlrws-fvk3feUU@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYRlrws-fvk3feUU@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF8A8418B02:EE_
X-MS-Office365-Filtering-Correlation-Id: f5ca031a-88c0-4e06-3618-08de64b35f96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QlB3V3lCWktjOHIzOVNwSTFHaUM3RVBJVmF6QWM4dEc3N0MvSlBzUi9XV29H?=
 =?utf-8?B?ekg4TUxkNHFhQ2dUTlh5Ykx6bFFFOVhQdVZ6TEdEVitVZ0xMVkZiRlBaOW01?=
 =?utf-8?B?NlYxWXlMbHoyQm1BRjh1Q1Z3UzRidm1ia3RkYlpid1hVK0lnK1JlR08xdzdz?=
 =?utf-8?B?T1NicU9uMEF2a25rQzZVS3BLdUhzcGpvZmE0VjZHemVXUmhkWVRXM1Y2OUZ0?=
 =?utf-8?B?MnBEdmt3bzA0VzBJTDE3TUVCQSs3R2NVZWMvYURIdzEySUdKMzVDZjVzSmhz?=
 =?utf-8?B?MHZCaVFyY2tWWGxEVmJ4VGxCeGNJbzc0Vk1sbFNPTG4wdExWb2F1RlZONUJF?=
 =?utf-8?B?TGhFazF5N2pxZWF6cXkwaWxYMVFsa3lhQllYSVRxb0RhK29TNU1IY0VMTXFy?=
 =?utf-8?B?aEVKN3dOTWNWRUxrT1RaQkZZaEhQbGJ1YlFsN05RV2QxcWd2dDhCSDZhMW1s?=
 =?utf-8?B?TjRmLyt1azcvOEE0d0J5NkdzOCswaWFTbTg5WUdLVXlxMzB4QnU5R3dqSUJH?=
 =?utf-8?B?UG5aUkp3czhWanI4U2RmeE1Xc1IweFNkSXNBSUNjc3FSVkFkd01ZSDJZdkxj?=
 =?utf-8?B?QktpcC9SWmxiWGVlMXVuQ3FJZ3lYekorUm1QM3c2NHNwRE53WHNzRzJWbGNv?=
 =?utf-8?B?MnRKMXBScmxnMFNXanF6alVLOXBqVjJuZ0FPaTNKQ1IzU09DQzgwOTFsQk5j?=
 =?utf-8?B?Z2lSV2piSE9LbGJ6ZDVFSmtUVnRPTzdMcXFMNVhIRGRTSk1IaDFwT0owV0hh?=
 =?utf-8?B?M0JtUlp2WkVJSEdmeWxaS2NTRURZUGxtbmtUN2FXai9uWXNLR3pUaVAvZW9t?=
 =?utf-8?B?QytubTk0N3Y3Wi9ETWNuNG9HREJOeXJ0ay94VFIvRXdTMXVhM1ZkTEFHTGdM?=
 =?utf-8?B?VUJ6ZFRCZm9EcVFNVEhqcUs2U3RQQkJnSmVyRFUweFJvUURqK3Btb3p0KzJa?=
 =?utf-8?B?UStOSEJSdTdOckpoM29ZSFBqZWgzbThVRm9DcEUzU01XWlBQYXBTY1BJMzVG?=
 =?utf-8?B?bzFwSGMvTE9nVUcraEhDaXhjTVo2SGx2VUcvbG8ydlZ6VStEbXBJcjVjQXNx?=
 =?utf-8?B?aWFJZFNNeUJxMmpwUXhDM3gvNk9vdXRDVkJSZk5sM0RrdUIxYldKSHNjdDMr?=
 =?utf-8?B?RjNsaTVjTDBjeWdmNlRqWHUxOXFOOFNhMHYrL05ieWJiK25yUEhZR09rV1FB?=
 =?utf-8?B?ZTZ2NE5oQ3c4WkNqclNIUlQ4bnZwWmU4TmVGMzN6SndCc2lXcGJ0ZnhuUG9F?=
 =?utf-8?B?QlpWTnpQVFhCQ051OFdJMGxNM1Y1NmlkODgrYjFYVHB5SVhNNGRydkszTWJM?=
 =?utf-8?B?L0VEZ2d6N0Rrd2kzMlpPcXM3Q3BjUnhKTEhVbGdSRlBtSVJWMHUyVXFzZmY2?=
 =?utf-8?B?VjV3YkxvN0NVcUVGR0owR09aL0g0V05EbGRHWmU3a3M1QllUcnR3NE1qWHhF?=
 =?utf-8?B?VDdzYXdCYkNNNkp0T2RveGFTWDNaYi8vb0tjd0lMU1dqaWR5cDdlRDB4ME91?=
 =?utf-8?B?LzlTQVp0NXFCcTBkOFNETU42RzgwcVFaeGh5RjFwZlZ4ajFMY0Q2OUFzOVVO?=
 =?utf-8?B?dFZzTEdLckNGalFoMHdqTHpTVHFzOTlkeXZ3RHlJV3NxaGtpM1Q3WmlZYmIy?=
 =?utf-8?B?ZXFxQ1F6NTVLc0xzNFlFTXRkMTBsQ3JhSXN5T21iU1I3K0pUT09QMjlubjEw?=
 =?utf-8?B?N0p6clRLdC9PUWZ4ekN5VlBjRlU0VG93bmVJbUZIVVIxbHduVEJzakM2VEVs?=
 =?utf-8?B?YmdhU2NJVmNtWW4ySTFVVm5QU3dxbmN6UHp0cW5BZUpxQlk0aVZ6RGc1dHZJ?=
 =?utf-8?B?TFBjVWorWisxbThkNm1NYzZndmNQRzBDell3ZU5PTHlnNmc0U2FhVVJORWJo?=
 =?utf-8?B?NUx6NmJPU0VIOHU3cnRwTHVnMENXKzd0YTZZaVpCaWJ2WXBiL3RVeTNVcU11?=
 =?utf-8?B?K1paWWpjV1VYWHpvTHB6ckJ4TS9nVmpOUXdWYXRPNmxpNG0vS2I2MG5Ta1dK?=
 =?utf-8?B?VWVpQnMzb0lVVzRYakkwdTNZbjFBbERDMDgxYTgyS2ZtSCtCRU9rMlRrOWpC?=
 =?utf-8?B?WkkwWFpNYUNRU2l2c3FvQkFKejdDMmNMZ0FDd1YzbHpPbEhqcExsaVBsNlpm?=
 =?utf-8?Q?t4fk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU5zUFlxNmI0UWNoRlk5OFYwR0E2QXdoUW93TC9WdHBWUEplOTRRd2pwZVMr?=
 =?utf-8?B?c0FJeFhRV2U5bDExNEpEMnhiNXcwdXdHS0JqMEZad01yYnZOQ1ZjOTF0TjZU?=
 =?utf-8?B?THJKbXRlNEdnN0dIcXhkVm5vRy9KNzZYU3ByNWpRdzFYOE93NlRSVzdLL3R1?=
 =?utf-8?B?YUR3a2JaQ3J2czlJUEcwUEM2U0RlVnI5bXBaM1hzSCtBbG5mWU5UV0NiWHdQ?=
 =?utf-8?B?alVJYnlGOVlURkhua29nRnM5MExaRGZaSzE1MVVOSUoxd2ZCTTFsSjQ2eG1a?=
 =?utf-8?B?amh2UDRjelpkUlpKTENCY2VueFZzMkd0NXhJVnYvY0JhTGpXaW9NbHJ1UndI?=
 =?utf-8?B?UTBrY1dXNjNmWnhwTGdvQTNRSzJSdDFERS9qVVZESk5ibkRXb2xQZ2ZiSEhz?=
 =?utf-8?B?NGpXQ1lob3Y1VG9hYWhCb2RaTWMwU0FLdmxicDBiL0lKdFpxc3N2ZVdIOExa?=
 =?utf-8?B?a0ZuUjhZNHpqdUdXNStVL2ExTFYrUkMxZytCVVdmOHZlQUxZaFVvVE5yUmtI?=
 =?utf-8?B?NmlZRWFWK1YwbnNzV0sxMkxMdG14Wm9kZXRjTG1LYTVydnJJWVA1VjJ0NldF?=
 =?utf-8?B?ZmcxWHpmNUpUZzVvbzBZY3NEYS9EOUxLSHZWZVE2VCsrU1ZhSXExQiswZC9m?=
 =?utf-8?B?b1l5UTFBa0h6SFNQN21RRXlZL2dmZTVQdTVmSyttY0s4QWR5cmliQytpM2U1?=
 =?utf-8?B?ZVNscUNCTHc1VE5OTUdLWFlzUlJ3NXFNYUxYWUVzMWxTU2g1VmhlYjV5dDVq?=
 =?utf-8?B?eDB5enVmYjZGTGVNOGRvRXQ3R0tic2oxYjVTNmpSYlpQNnIxZUdFM1pJdzR5?=
 =?utf-8?B?VkVBKzRBV3dkOHEzTnBsQm5iTjY0MGprQ0pvMklHSkZ3M1VvWHZVbzIzQi95?=
 =?utf-8?B?VnBmYjRCUHlvMTVMR3hyN3lubzI5R21BZXQzNUpYalIwdGdKQ3hwMHdwL2FR?=
 =?utf-8?B?L1hpREVlZTB0UnJOaWRiUS9kOEY4WG04NXJYaVM4eC9aZG94SWlvc2xFYU9u?=
 =?utf-8?B?WjN1OWtQYVhZVTdFU0FqSm9XODh5K3hhNXhLbVBSTHpPa2Q5dWJkdGdZMmtt?=
 =?utf-8?B?SDhETmtreFA1Ylo1TzZDRy92SzRpd1U4bUcyODJXYmZEcmN2RUFQZHFkVzlF?=
 =?utf-8?B?eSt1N0pKdFRZNjhIMVUxTFZSUGkySGZleGNpdExUNU1wQ011N1J2aGJsT1o3?=
 =?utf-8?B?OTFkb29udyt5c1BDZjUvMGFEUm5JRS9EckExVFArU2VtY1pyeUUzRWcrWlVL?=
 =?utf-8?B?WkplbFFaZFVlSjBTUkZkVThTbDBPTkpRSDhDTU82L2pZVWdRWGc0MFdBSTJa?=
 =?utf-8?B?NTEzYktpekJWQnZieVpHMXozQ1p1MFJJYi9teldpcFZpMnlJSnNDaUdQM2FJ?=
 =?utf-8?B?ZVp3ZERXOVFpZEt1aEx4aStCQ3lyK3hPYnpTYm5qRGJ1ZjlkTERHcURsQWVk?=
 =?utf-8?B?L1lrR1ZBWElodm10OXM1MktqM2ZKQ3p4a2dBSCtxVkJHZ2NtSG9YQjA3VjJH?=
 =?utf-8?B?cVNVSnJwd2d1eFpobUQ5c3BBTmMraGVUZ0hhREJ6VTlUU3NDdXlFUG1kbmJH?=
 =?utf-8?B?NHg1ZUE5MlVjUXVFK1JNdUFmVW5JL2E3SmcwNVAxdjJEVEtuNnVHQjh6V2U1?=
 =?utf-8?B?bi9FZDJLUnVnYWJoc1d6STAxd2JSdExrZG9GVzRXT0s1Z2xMb1pjTURYSFg4?=
 =?utf-8?B?UDhWdkdYZVNlQVI2ZllldGQ5T21MUUtjWUU3UW5HSTRVZldDOWtOTytpVzhF?=
 =?utf-8?B?TVE2cnpwa3l3dUxvRHZsVkNTSnJtdUZyN2hrOFBvYVRmSFByQVZ6ZzF1WldF?=
 =?utf-8?B?ZjJwdlRQWjVIUkxhVGduV242bUlsRGR4T0hJTWN3bStjQS8vTFNPaHk0L3U0?=
 =?utf-8?B?YmFiaU93VkdGVEFPVW1BMDFKeVdzNDZ4eEVNb1laRWRMcFY1R1BGZkJESUV1?=
 =?utf-8?B?RWNMazZQWU5JNGhZbFE5TDZaSmgyQnRLaXVxOFM5engvNndPRERmUTZFUElx?=
 =?utf-8?B?eGxQWXF4NDE4QnF2TUZOOVRuL2x3N01tbEVNaUN4SXlSWFR1b05sUmprVzlO?=
 =?utf-8?B?RW5YYWxSR3JPeFdBMC93bnIxTkoyWTJlRUpvbGJMVzRzRFRGanpSWjRBNCti?=
 =?utf-8?B?U3VZdXRkc3Y3NzFWVld1OW9TR2V1eThjbnhYRUdwYUtLMXdaMnI2TnVWZ3g2?=
 =?utf-8?B?RGhxSnBhckJzR1cxVzhnbkdrdGN4VDhhOEhMMFdDc1k4ZVY4ek1KaXdOVnN0?=
 =?utf-8?B?YktzZCt2eGlOb1B6RWt2aHVlVGZVRlI4cGtremRscEc1aFF0di9DZVMrUm5J?=
 =?utf-8?B?N1AzOU1nVFFySFJBWDMvMDQyNEpIdnZzYjhhL3lDU3djWmFLV3p0MmRCUXNy?=
 =?utf-8?Q?TigdT7yiq3yzjOR0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ca031a-88c0-4e06-3618-08de64b35f96
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 12:37:50.4256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +2btLAfcFUkZN3YC0Gzkr+mttqnLuo+k9KJSFp/dlTpHsGW1xY8L4hHLQz2tG8+Hpniew056KIw0OM/p5hae+asLKiyf8BEny3DfrJODXks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A8418B02
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C79F2F2A3A
X-Rspamd-Action: no action


On 2/5/2026 3:11 PM, Imre Deak wrote:
> On Thu, Feb 05, 2026 at 02:06:23PM +0530, Ankit Nautiyal wrote:
>> Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
>> replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
>> iteration. The previous code implicitly checked for DP joiner capability
>> via intel_dp_has_joiner(), but this check was lost during the refactor.
>>
>> Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
>> that DP specific joiner conditions are taken into account.
>>
>> This change also requires propagating struct intel_dp * from the callers
>> down to the new check.
>>
>> Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 16 +++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++---
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
>>   3 files changed, 17 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4f5b89f80e55..3021c64d0f85 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>   }
>>   
>>   static
>> -bool intel_dp_can_join(struct intel_display *display,
>> +bool intel_dp_can_join(struct intel_dp *intel_dp,
>>   		       int num_joined_pipes)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>> +	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
>> +		return false;
>> +
>>   	switch (num_joined_pipes) {
>>   	case 1:
>>   		return true;
>> @@ -1496,7 +1501,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	 * over candidate pipe counts and evaluate each combination.
>>   	 */
>>   	status = MODE_CLOCK_HIGH;
>> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>>   		int dsc_slice_count = 0;
>>   
>>   		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> @@ -2895,7 +2900,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>   	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>>   		return -EINVAL;
>>   
>> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>>   		/*
>>   		 * NOTE:
>>   		 * The crtc_state->joiner_pipes should have been set at the end
>> @@ -7213,13 +7218,14 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>>   	return sdp_guardband;
>>   }
>>   
>> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
>> +				     struct intel_connector *connector,
>>   				     int hdisplay,
>>   				     int num_joined_pipes)
> intel_dp can be always deducted from the connector, via
> intel_attached_dp(), so no need to pass intel_dp separately.

Since this function is called from the iterator macro for DP MST also, I 
was wondering if for MST case we need to get it via encoder/dig_port.

Regards,

Ankit


>
>>   {
>>   	struct intel_display *display = to_intel_display(connector);
>>   
>> -	if (!intel_dp_can_join(display, num_joined_pipes))
>> +	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
>>   		return false;
>>   
>>   	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index cbd7fcd3789f..37302ebe1cf9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -227,12 +227,13 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>   			   int htotal,
>>   			   int dsc_slice_count,
>>   			   int num_joined_pipes);
>> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
>> +				     struct intel_connector *connector,
>>   				     int hdisplay,
>>   				     int num_joined_pipes);
>>   
>> -#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>> +#define for_each_joiner_candidate(__intel_dp, __connector, __mode, __num_joined_pipes) \
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>> -		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>> +		for_each_if(intel_dp_joiner_candidate_valid(__intel_dp, __connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 29713075e413..b2d3f35edd78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -720,7 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_pch_encoder = false;
>>   
>> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>>   		if (num_joined_pipes > 1)
>>   			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
>>   							    crtc->pipe);
>> @@ -1524,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>   	}
>>   
>>   	*status = MODE_CLOCK_HIGH;
>> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>>   		int dsc_slice_count = 0;
>>   
>>   		if (intel_dp_has_dsc(connector) &&
>> -- 
>> 2.45.2
>>
