Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8D970CFD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 07:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D9610E2B6;
	Mon,  9 Sep 2024 05:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVxrE/Hd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB1110E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 05:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725860060; x=1757396060;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/2+1mljQAAOSdC8ASHYPQg1/W/2P+k490V0HdCQ93f0=;
 b=HVxrE/HdqCmSo29h6+IXCu/r0bJN/x4aQMriDWYPegG6dw4xlJAU3hXh
 2t3ZafqS4mKs0M+ztjtzYQ97r1ZerTZpv5vM0qqb24LXOxQMfqF0vB6DR
 4syYY3FSYazDlL+jO2g/jdSPE7OVNLMFNfk/rIoPIK5Bar19ZtBzipffh
 4hY8FoOJc1Z7mXWCD0gT84vDfDdAc/qs7bSVKlapPtn09QG8eXyjUetrw
 w0u6sm+P8E77PhuUrF8r7SJ+GWx9z8/PS5w4ah8ywi78En+0PG3dbM0v3
 C/xZAadrzowELeLjMUKEKoDIPbv4O3OSFAZsfBb6eYeRqJjef8N8I+HfM A==;
X-CSE-ConnectionGUID: n6WLA5+PTnCem/fZkBb1zw==
X-CSE-MsgGUID: rSZWM/HvRmy9gaFGF+WK8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24726252"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24726252"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 22:34:20 -0700
X-CSE-ConnectionGUID: E/HRJn18SR2XpFUHvl0BQA==
X-CSE-MsgGUID: LhHHN1SwSEC2L/KmQBLYjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="67288247"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2024 22:34:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 22:34:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 8 Sep 2024 22:34:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 8 Sep 2024 22:34:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PIOXWISdtmunO7uBXaZQIPfDEA0m9+5negOeIABzMWs+j9ddglbgDS/y24eWMakHzvmNMMKmKUhMFUiucdqzYU5FmOj1OW6OtM6/itpywfbltlVHUB2yfxWsWhnOroWK3YY49xD+5ZenOVcAQ0uDpZseHUBbhLVFsP6Cl3+yMrFWKYKgHeXcu1ag/5IlErZ6Icut3VninR8kiDtWS/uFO/Hnl/pm24JeZh5AMCw/rS0Solu7FbZOWuIzmamiMWsRmBxcs2D2ODRdxxj1Sstsv6FzsRdKn6Yt4QCsk2fIvesF6XqHhbuIQ71fRDA+l0i0KUq4UkJ3lqu6aHprpKxMSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eU0MQuNfB8QuzuT1Ol8D6UlW2Jyjko/BFpQ2KPqoz2Q=;
 b=IAGEtwFfxxJHlnLV1+Pi6AUyy5cqohP2N/q8+Fhkbry6cpWxYYQXTXXfgki8zLdceRiEo6N84K7tx4XMoaqCA4NokrsfMFawQ15QmnQ++fb1srOTb9j93/+ftYFy/UVWpzVJ5M2HvF/0HpvTXHSfGCRCnPvs+z9JLAi13Az6+EyWAuekc59IzLDwsECBUBPAf3e9CEL0gWK8J1AqUzXsotXzKu5Mqv9tUJ3m2gc1FSb28rEf+mksdaHtI9aRF0FiJ3hHQHSdFZvvUlI3QUzp39I9lOKECYbFAvMrMmk4RSOfRSByTseFzCD7P8byJpHUEdNHRhmuo9hOGM7UpInFHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5917.namprd11.prod.outlook.com (2603:10b6:a03:42b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 9 Sep
 2024 05:34:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 05:34:10 +0000
Message-ID: <362d3abc-e12b-4f27-9916-43d4fdfa9098@intel.com>
Date: Mon, 9 Sep 2024 11:04:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtsVs38KicPJZff1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5917:EE_
X-MS-Office365-Filtering-Correlation-Id: d70b7e2a-19fc-432d-357d-08dcd09107ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTdjbS9UYTZqRm9ja1N3SUNSczVra3hCakdCay9ZeGxGcW9XQ0JFbmxKcmdp?=
 =?utf-8?B?aG10dHM2aUVMU3dEVVNwQW45bVdEK2s5bU1XN2g4alBMSEZGdTNCUzdkSjZy?=
 =?utf-8?B?b3Vhb2o3Z0k3SWdsSXBxSTJSQVkrSmhLVHRpN3JOaGtaZE5uMnREN3ZJOFdq?=
 =?utf-8?B?YzNQZ0ExZEdNN0dxSDF3bVBQWnZFR1JZcGdEelA4c2RhUEh6cUwvdkFDeitO?=
 =?utf-8?B?MVVKWXFIWExUYU5GMmdld0tGNkNhWi8wR0pKbVZ0dmpCN0FPUUJneEJmaURL?=
 =?utf-8?B?czVGbTNIaVRZanJQVUd5UTF2TEw4Z1psck4wOWFURlZ4R3dYTkZTd2hraFRC?=
 =?utf-8?B?bzR5a2JzMy9vNWZmNGd0bCtnN3ZGaHVWbEpyRk10TkN0NkszeVZuaCtHWlg2?=
 =?utf-8?B?NzZkaXJ4azhHa0l4NEhuRnBhUGxlNHk0eWk2dWRsdXRQZWlzTUpLTUZHbEpx?=
 =?utf-8?B?TzdMc2NHaldNcFdEQ2M4eDNpYWdmcnZ2Mi9IdzVBWDltZ2o2bE9hT25nVHdm?=
 =?utf-8?B?bDdicXgrT1RCekJqUWZjbWczZ29hTmFtL1VCS3JHb2VFNlNhUk1mbGhoMDh5?=
 =?utf-8?B?UUJ1V2Iwdk11emFqNzladmoxdEpSVVpEWWhvRGlRTkRXMXM3QWxJdDBIeGNx?=
 =?utf-8?B?YW1HY1lINFdHdE1hcHFwZFprbHRkN0ZhdkIxcUF1dlAxQzM0QnJyYWhqdlRG?=
 =?utf-8?B?WWhQVEtUTldGZ1pwSVZvajJoQWJiZlRLbDZkaGFVYnhxUENOM05SUWg1Z21R?=
 =?utf-8?B?MnllbVFBR1R5NG1DejJwblcyQ0d2ZWtObWRRMHVRenhETVRuOWVwQWo4UWpK?=
 =?utf-8?B?RU4wQlhkTnBnY3grYmJSZWhZRVlBOS91T3I1bEJLT3BHV1c4OWVnTTVISVBE?=
 =?utf-8?B?WkgrSTFIVWlqeXpoaEMwSTg2ekZpQ245dUo4UW15eVBZVVZMUkN2ZktLYXda?=
 =?utf-8?B?cmNseDlkSWFTVkxJT1BmQzMzNlNRakhJRDdRSmJFbTZtVXU0Q1I3OExZSWxQ?=
 =?utf-8?B?Y2NMRUxhN29OeVJZWlBFS0s5bFBSa3VEQTRyYWo1RVBpcXl5Y1VTcGY1cjhP?=
 =?utf-8?B?THFFVHM5RkVhK3FYOFpzVXpzSjkzejg5eHdpQlJrWXd3b3FGS05MeXl5RkUr?=
 =?utf-8?B?ck9vZlZKU3Y4WkptR3llcElxMk93WEdic1ZZYlY5RTdaQTFvYzBqMnhVaDZn?=
 =?utf-8?B?NG1KV3RlOTlKOHkvc1pZTzdNeS9sejhFUXdDSHhmVVoyYnIvZ0ZiQUluQmVO?=
 =?utf-8?B?b1RmdXNUd09QcHRMZW9qZTlVc1F1eGo5R3lsa3YyTXZDSkhtV1hvZFFkY0c1?=
 =?utf-8?B?SUJEcjkwWFkwNkhvVVFMbkRWOFRkTVpDUktZaytpQnR4UjF5UERWdXRTZWRO?=
 =?utf-8?B?UHZUUXZUd1Jia0xJc3RmRy9PRWpYZzhSeG1pcU9rNzN5dk5ZTnlkZ2gxcEgr?=
 =?utf-8?B?anBtWVA3cGpuNWR1S2I5eU8wSURKNk1WSFdQdWZ3Q3l6L1AvOHl5djdINnlQ?=
 =?utf-8?B?bjJ4by9Dc2Y2TEcwNFFJbm53Ukdmemp5T3dwQWpuR2tqYUU2b2gxa0NWUHFu?=
 =?utf-8?B?Q0RTWURmV3dOaUlueFFqaGdIazlBMHpnU1EyWDRnOVRvSHowYkphdThLSFNC?=
 =?utf-8?B?QWdHZDFwQ1owOXUvbEJac29yaFZSMzlBRFVibEt6dmNZNER1TS9wQjh6RHRG?=
 =?utf-8?B?TVlydU9uYnR2blpmNEFIRXhlb1NJU1FiekkySnZRekhBYjdQZ3pEU2VaZERP?=
 =?utf-8?B?aHA5RGxrT3NjYTBXOXpxNkRmZWF0Tm1sL3hXZlJmeHNxckJIM2k1RXZ2OEhU?=
 =?utf-8?B?dmw4OXovNXZUUDZSS2FpUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXZuWEM0OEJvVVR3SVRwVlhwZVF5TjdyNU5TRnQ5Qml4WmhJYmppSDhlVmVP?=
 =?utf-8?B?ODloU2NFZU1Na0hEN0t0cm4zYTNSUHY1Zk95R2ZPQ1ZIQVZnM3Z4NU9BckEx?=
 =?utf-8?B?NUNuckE0RTdIZllaR1lkT3FaN2lVWTJnK0NiTEMzK0lZWXAvRng5OWZIcld1?=
 =?utf-8?B?NUhoNk5NdTBDZkFZSjFrMnl1Tm5kbGFBQURUMk5jeC9CcGNPcnV6OWdvbnk3?=
 =?utf-8?B?SjZ3TXh3b1REV0J4NTNUaDd1NXcrMC9ZVVd2bHlvVEZvSk5PYUJkUmhMU2hE?=
 =?utf-8?B?bnBsR3MrdkhiUHFZVXhDRC92aGVtbXg4Nm1hMUlEY3JFdjcyQ01DY2pkdURK?=
 =?utf-8?B?NGdyVlUrU0RBSExKR0dYTXRXQWhLaTFXeElya1NTU2Q3L1MyUEwzeHE4THVx?=
 =?utf-8?B?cnVQWkptL2RLcUdldnpjZzhGR2hCbG1sRnYxN2JjVllmdVI1S0gvK1Zmd0FZ?=
 =?utf-8?B?TmdWYldiUy9Ia1k5cVlzQWNVaUtzeTNQVTFZdWNsTlV4UHROOWF2d3NYRzJ2?=
 =?utf-8?B?bi9tNEpBUTdudGRDUHgvUWRaNGdLdllQd2N3YUc0dURpVlJuZXZIaHB4SGpU?=
 =?utf-8?B?NjZOUzZhUjNPcEJNTnJFVXVUOVRjRXYyRXNKS0dwV1NyeWJId3QyZ2RSYmRV?=
 =?utf-8?B?QWlxdzFaWnBwTWUyNGUzWnJMQS9GRVF3WXlicHRyMjltQzhOSTFYcVB5dGVC?=
 =?utf-8?B?d3pwaDFUcFNhS1VUbXc5aEhTN1FLZ1ZNNzB6clA4MlBlaWp1Qi9oMGtTUlFC?=
 =?utf-8?B?VVlqWHIyUW5uNW00NmwveERjOXVlMW5KeFMweVcxeHJWc1JiOGR1YUJyZXFk?=
 =?utf-8?B?RmpUYVdzR2wydFltbitiVkh1cGFuc2JZd1lzN2p3UXNZc1hLZllVVXcwamM5?=
 =?utf-8?B?am11SGZYZVVjTFJEdC8rdkZpZnBFRTRPcUZ1WW13NEJONEY1ZjF0SWt3R2tj?=
 =?utf-8?B?Nm5XUjJ4bXowMDQ3U1poY1FuOThZeldneFdXMjZzTy9ibWdJZUo5TkRMdkZP?=
 =?utf-8?B?WUZSVE1QU2NxeFh6QlFsK3Zqdlg0THA5VTdIeFkzVExRdE80a00vYlRqdWxR?=
 =?utf-8?B?ZWZUS292dGNyVnZYck5RZ3E0Y3pqQ09VckZaT0RTRGJjR0l2WUxBd2ZjZFFC?=
 =?utf-8?B?UExZKzcwa3RHOFl0eGJ1YWlTZCs5L29QT2g4R2V3c3FLN3o3NmRHdmE4SXBt?=
 =?utf-8?B?NDBXZEVaUTVQaWpDcGIzRGhiTzZqcmk1K1RHWDVrejNtcHFoUUpOMGVqZXl5?=
 =?utf-8?B?ZlBmOUgxaWVuMy90aVZOODRRVjYybXA0Sjhlc01QdWk4VWlla2Q5ZHE5dnlr?=
 =?utf-8?B?SmQwdndOOEtjQmJtbzg0VXR3TjVEZXo4Z0xKSFZaMUhrYlNNS0pYbUczRjVE?=
 =?utf-8?B?MXZSQ1lWQXprcmcyT2RoUHozUGhMNVdXdUhRbFBVZS9Ia091akhzZnBRRHpT?=
 =?utf-8?B?S0U0L1pCdzM3LzQvM2o5S1NwS3psaTJOblBRbEZEblp2T2liSndZUlA4TVZr?=
 =?utf-8?B?TmQ2amMzVkVxWGJIUk1VTlY3VW1pZVhENmQrVlZ4eU00K2dtTVNZTWp2Kysz?=
 =?utf-8?B?RkN0QWVlLzd6aVB5UElMVFlpMS84U0J1MjFWTlpLaGo4djRRMzZYQThzLzdO?=
 =?utf-8?B?OGdTVzJhL2JGZzdMVWRSeHh6WW0zU2VqWFhUdm5qY3laeWdvOXRoblNQdWFR?=
 =?utf-8?B?OWFNQjM3OXl2UVcrNmhZbWw3SEJEYUt5dEl5M1ZGTWhPRTNCN2dtaXNXbmpa?=
 =?utf-8?B?ZDQvMEc0dDlPUk9xa0FxMktXYWJ6K1YwcitCT3hRR3BtazN6L2grMFNBYnlk?=
 =?utf-8?B?dm9XaEZFbTBZTDRzL1hnNGxyK2t6ZDNweG5qdjh4UzlGNy9UWi9jZW5VUHdJ?=
 =?utf-8?B?bTB5T3ZLSGtaV3dsTXJZZjJRczhJcU5kUVZSZnRuZVhqWUxlblpqUFVqSFlT?=
 =?utf-8?B?endMS0FTSnZ4eGN3VzBHWk0zcWJDeGp5TXlORkJPUDViczhQd213WXVweE9F?=
 =?utf-8?B?am85YUVyR2lZS1dQWnJnY043d0t4ZU1LS0k1S1NIVEtOTmZDWURzR0REaUlv?=
 =?utf-8?B?d1d5YTlnQ3orUm1aKzdVSUN6Z01iTmhaRVh3cnI5RVJmRnBqUlY1eUVhU0tV?=
 =?utf-8?B?NHZ0Q0xLMTZ6QUsyQ2lrcU40WHNlTXJXRVY0TGtzYktmTExxaDBUVnRZcjBw?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d70b7e2a-19fc-432d-357d-08dcd09107ee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 05:34:10.2752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /k0DhfA7c00Xr4UMLtpyAz79pZ6WEECoiq034qlmwoRsqToPA2pal9oXl4Bos9qwWGYyNMT7sZbfaoVtPuOlEN16y1dl9f0X97yONnw4+Hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5917
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

Hi Ville,

Thanks for the comments and suggestions. Will remove the extra things 
that are not required.

Please my response inline:

On 9/6/2024 8:16 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
>> At the moment, the debugfs for joiner allows only to force enable/disable
>> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
>> where n is a valid pipe joiner configuration.
>> This will help in case of ultra joiner where 4 pipes are joined.
>>
>> v2:
>> -Fix commit message to state that only valid joiner config can be
>> forced. (Suraj)
>> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
>>   .../drm/i915/display/intel_display_types.h    |  8 ++-
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>   3 files changed, 77 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 830b9eb60976..0ef573afd8a1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>>   }
>>   DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>>   
>> +static int i915_joiner_show(struct seq_file *m, void *data)
>> +{
>> +	struct intel_connector *connector = m->private;
>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>> +	int ret;
>> +
>> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
>> +	if (ret)
>> +		return ret;
> What does that lock do for us?
This might be leftover from other debugfs, I'll remove this.
>
>> +
>> +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
> This should just be thae bare number. Adding other junk in there just
> complicates matters if anyone has to parse this.

Alright, will just have the number (force joined pipes).

>
>> +
>> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>> +
>> +	return ret;
>> +}
>> +
>> +static ssize_t i915_joiner_write(struct file *file,
>> +				 const char __user *ubuf,
>> +				 size_t len, loff_t *offp)
>> +{
>> +	struct seq_file *m = file->private_data;
>> +	struct intel_connector *connector = m->private;
>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>> +	int force_join_pipes = 0;
>> +	int ret;
>> +
>> +	if (len == 0)
>> +		return 0;
>> +
>> +	drm_dbg(&i915->drm,
>> +		"Copied %zu bytes from user to force joiner\n", len);
> Leftover debug junk.

Will remove this.


>
>> +
>> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
> More.

Will get rid of this.


>
>> +
>> +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
>> +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
>> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>> +			force_join_pipes);
>> +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
>> +	} else {
>> +		connector->force_joined_pipes = force_join_pipes;
>> +	}
> I think just something like
> switch (num_pipes) {
> case 0: /* or should 1 be the default? */
> case 2:
> case 4:
> 	break;
> default:
> 	bad;
> }
>
> should do for validation.
>
>> +
>> +	*offp += len;
> I don't suppose there's any kind of helper for creating a debugfs
> file with a standard type, with some kind of caller specified
> validation function? Would avoid having to hand roll all this
> read syscall cruft for what is a fairly common usecase...
>
>> +
>> +	return len;
>> +}
>> +
>> +static int i915_joiner_open(struct inode *inode, struct file *file)
>> +{
>> +	return single_open(file, i915_joiner_show, inode->i_private);
>> +}
>> +
>> +static const struct file_operations i915_joiner_fops = {
>> +	.owner = THIS_MODULE,
>> +	.open = i915_joiner_open,
>> +	.read = seq_read,
>> +	.llseek = seq_lseek,
>> +	.release = single_release,
>> +	.write = i915_joiner_write
>> +};
>> +
>>   /**
>>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
>>    * @connector: pointer to a registered intel_connector
>> @@ -1553,8 +1620,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>   	if (DISPLAY_VER(i915) >= 11 &&
>>   	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>>   	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>> -				    &connector->force_bigjoiner_enable);
>> +		debugfs_create_file("i915_joiner_force_enable", 0644, root,
>> +				    connector, &i915_joiner_fops);
>>   	}
>>   
>>   	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 733de5edcfdb..c213fb61ceb7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -486,6 +486,12 @@ struct intel_hdcp {
>>   	enum transcoder stream_transcoder;
>>   };
>>   
>> +enum intel_joiner_pipe_count {
>> +	INTEL_NONE_JOINER_PIPES = 0,
>> +	INTEL_BIG_JOINER_PIPES = 2,
>> +	INTEL_INVALID_JOINER_PIPES,
>> +};
> That just looks like obfuscation to me.
> Just a bare number should do.

I was thinking to use these in rest of the places to avoid magic 
numbers, but if it makes it unreadable, I can do away with this.


Thanks & regards,

Ankit


>
>> +
>>   struct intel_connector {
>>   	struct drm_connector base;
>>   	/*
>> @@ -524,7 +530,7 @@ struct intel_connector {
>>   
>>   	struct intel_dp *mst_port;
>>   
>> -	bool force_bigjoiner_enable;
>> +	enum intel_joiner_pipe_count force_joined_pipes;
>>   
>>   	struct {
>>   		struct drm_dp_aux *dsc_decompression_aux;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index a1fcedfd404b..862a460c32b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1271,7 +1271,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
>>   		return false;
>>   
>>   	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
>> -	       connector->force_bigjoiner_enable;
>> +	       connector->force_joined_pipes == INTEL_BIG_JOINER_PIPES;
>>   }
>>   
>>   bool intel_dp_has_dsc(const struct intel_connector *connector)
>> -- 
>> 2.45.2
