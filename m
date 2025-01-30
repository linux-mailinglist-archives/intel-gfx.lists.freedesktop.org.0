Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC5A22F27
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAC910E990;
	Thu, 30 Jan 2025 14:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/a1Cgwz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA4910E98C;
 Thu, 30 Jan 2025 14:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738246761; x=1769782761;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6rzA/vgnUbPVvbD1kVt99UtxjXyywNuvRQZU9rbJm8U=;
 b=G/a1Cgwz6NNhIxcs4lK+uNIaTW9/Ab9le9LKHEctrp4VOcmN8fRL+ltr
 C6BoLWzKx0AcnulYFX+bdzWl4RcqGSeXDQfN+WFeqyuwXRQWGA7zoQcNA
 JVwli0iVkc+w/5EHZwIh0o9txmns1RKBzIoPOznE03G6nph5yAg+LeA6U
 n+d3uQTG0TWbzp/11V05Wf5sRIyhiRM4ekeZa2/KC7wa0jx+frbh3O+Ha
 6bwlU2rARI41fhErHPl87EXkGcxklKYoEZm1KaZm2E9bTd59sLGsg4SrX
 utdyOWHWs3s7H9KpWmu8UBBY8u2u3GOjaTF58UYQHi6CyPtPI3r0ZraLo A==;
X-CSE-ConnectionGUID: hETy7F4IRgWZd0RSUDZuoA==
X-CSE-MsgGUID: Pw1Ftd4fTJeGJlESxuvyYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38496538"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38496538"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:19:21 -0800
X-CSE-ConnectionGUID: O2RwG/LJR9elmbYxcXYpww==
X-CSE-MsgGUID: kd7wdHBMS8uVby9v60zazA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110249533"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 06:19:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 06:19:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 06:19:20 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 06:19:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3bUQlXBfflw6QL0pbm07rwYQEq93cVeIZ07pTwBXpGRH9vVEXtPgq0eOHQtmMSljz+npV1o+qUtE9VXWtWg6TLewjymzTpUCjFK5Ve6jgG4DQkTm85JOLzWw5cfjaJ42UXQGayJu7OwCN/pTybBxNKU2wWpm5eC/CovaZfKcFpvmvJO0icbwRNaGt4H7T5iwGsvLNbCy111ubk7RZzOqsaKxcIMrE065aT5ZmTIYNa4HVKDqNfI1EmGJ5j8O44zNcvhYDO33VqEDDe6ZSFIeGRt8V6YNXYE5sb4WDefsN0B4gNZRjKEYAAJECRfMaPwZbICznVQPE/7LuQFa5LKcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvsTGe+TzjwYQ4AwWs0Nwe+ozhlXRJI8O6B77HxQ1cg=;
 b=NvufQQk2zp9s2RjXfV98BWL4VQ3zqunmzXg+3AJRMdKLCbL4L4AVgL8Lg2v6tVhSOpEoIZnxA04UN52eUq+69xOoRGiIBSWDRKErZ3qi+7siUmeDopLxb//ha5G6c5CqCLRo8njxEPrMXyktkPb6mBbJTx+Gmwb4oyBUlwTdkP9HWBaLlecirfNvbeYQT70maCKsJbVN9TWoz1U4U8mTVn6kDB+ZQta2znRA2arwWnXchTr+B8uN/nNOoGFTH/MPxe9tM8EoGuAekBKymWhNokalAmmdcqRAncC/LJkHna8ZOxz0rIJIGNIbjEd6mI0zaL40vwuJ6gF44aJKroxOxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB7833.namprd11.prod.outlook.com (2603:10b6:8:ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 14:18:37 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8398.018; Thu, 30 Jan 2025
 14:18:37 +0000
Date: Thu, 30 Jan 2025 14:18:28 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
Message-ID: <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250124191250.56833-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: DU6P191CA0052.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB7833:EE_
X-MS-Office365-Filtering-Correlation-Id: a2196b11-ef6e-4087-9287-08dd4138fcac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDJXWmZsdzkvdCtwbzB3Nk1yWWpsUUFuc1JUTDJXQVBaajMzWHZEL3QzMEVZ?=
 =?utf-8?B?QktqSGcxb1VydW1Pc2Y5dWY1dDhQU0VZNkpvTGhWeVlJYVNTczZzU2xCYmtR?=
 =?utf-8?B?d2dQMTFRNjZVbVhLQXo2QjJ5MW9zS085UDF0b1NQYWttU3JsY0psYThMTVNQ?=
 =?utf-8?B?ejQyb0hQcCtIZkt4MHFxS3h3SGdUMXhHRTVuaW5VWm9CR29PU0tXYlkzclJy?=
 =?utf-8?B?V0FleC9WS3c2aWlMeGVuL2lwSlc5Tk50OGlCekJHby82STArSmhTNDVWNFBH?=
 =?utf-8?B?VWRQaDJ5SWZwelBiQWtVeVpLQmJYaWlTSS9nNXkrcXNvYWdnWVVINHF1OGt2?=
 =?utf-8?B?QjRNQW1pc1k5WDZlc0JiMmN6aUh3REdOZEwrNFBUTmZyZTJtSHdOS3hZb2Ji?=
 =?utf-8?B?SHh5dTA2cnFUVU1VaVpIaVptbkxXT0kvS1FIcWpqV1JJWmtNRUgyNkw4cktE?=
 =?utf-8?B?OTU1MFk5V2xnblp5eFVacWpSc1NIemlOeCsxcXE0MWFVY0l2Y0FSdGRZUEFk?=
 =?utf-8?B?Q3V5VjRxYkM2aUNzbjMxdTFFZ1V5WmplMmtveUFyeCtGQVdOQ1Vpc2lCaUVO?=
 =?utf-8?B?ZzVMUVd2VDUvWkdKYlVMUENYQ3Q1VmxqeEY5YmNORzNTZGR5ZkNGYmptdllP?=
 =?utf-8?B?TTE3ZGxPU3VXMFFsN1I3T3VZZVdSR1JnaDYxaTVCZ3RDZEx4eGpZUHdSTVVj?=
 =?utf-8?B?Vlg5cVpldVBiM0NFTEwrMVZWMGM0V1dXVk5GQ0w5dDJValEyekd4OC8zZk1n?=
 =?utf-8?B?R294bWhrOTRIM3FiQ2p6UWIxUzJvMisrSGxaSUE0OXhiaFptdmU5SlFwTnZm?=
 =?utf-8?B?L3I2TmtSeUtYUWpCUTJ5b2tNOWsvcXJ5M0xVeUhYczZsbzZvUVhSRER0SjJE?=
 =?utf-8?B?czhJRVRSejczYUxZNXM3YTErUHQzM3dqRHdzVk5BNmJSVU12YWwyU1k1U3dD?=
 =?utf-8?B?YWFNRTZVZmZ6S2NsRTZoQ3ZUZUU0eW9sOGo0SmhJMm80b2FXcjNnaFJOQVYw?=
 =?utf-8?B?clJ4NUNKeUxnbUZnZDMyRkhGd2g4Y0czdC9NcmRXMzhzWm1mL2tIUG5MUG1X?=
 =?utf-8?B?Q3ZYaExoRXRWSVd0bytXYWttUUpzc1Z3YzB3bWllWitzTHNHUjBRYjlDTGdD?=
 =?utf-8?B?VlZzTHhncUd3SHZlazJRb2xWck40NExneWZxWDlmaVp3eDVadVRQTFcvaXo4?=
 =?utf-8?B?QXVBd29YWHBNd0g4VG9McmlhbHBaUFBGMkJsRW9vU0NtVWRpVHVkNGg1ekVh?=
 =?utf-8?B?Y0Zsb0hzOWxwSEJjbWZNOHUxRUFpZXVVTjFrSnhMdUswU3Ntc3Zhc21yTDNv?=
 =?utf-8?B?ZkRNVHVlNTlPSlhIanU4eXJ6aEh2TGlwNG5xQ2RGV3E5RDhURGtsd3JYMXdZ?=
 =?utf-8?B?ZDU5bE5HNGxBbm54K0hkbHEvTm9FQVRoTzRSS0NndGk3STJGeWRTN0cvdkxO?=
 =?utf-8?B?aGJJeGNJQnZoa2RLRXNWeHVSNDlySTJYV1lVVFdEVWRwSG92Q0d0NVp4TGRu?=
 =?utf-8?B?MGVjaDJkdW5lSmgwa1VIVnl3N1NHREt1MlArSFZMTTlmcERZRnQxQ2FUQit4?=
 =?utf-8?B?OXF3NjZIVGFCdVV5V0xkY2tEUWNVMWJqTEFhVW1senRQMTErWHl6MkRTNHdD?=
 =?utf-8?B?YzN4VDAwclVadjZPTGtkN2E3ZVZxT0ErTlliTXRSYmRZejJUSFp2MmpKMlhW?=
 =?utf-8?B?M3VkU0tULzgzUG4wSEp4S1loNGZLWm40cVBGRXpKMmtoQlkvbWNoVEZOU0Jt?=
 =?utf-8?B?c1ZqZ0kxWEdOd0x1T2ZXem5kbU85RVVLbnloc2xVUXNtVmFnZDZtdEJGQnM0?=
 =?utf-8?B?Y05oVkQwZXRMcEs3a0VacjkvSnZrOEh5MGl2bGFGbmxTM2psNXJpNVdwYUpw?=
 =?utf-8?Q?Wz80Q3ovRZcDg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUx3OUZiU1Zoam0zakthVjRYZDQ4cDJ3ZnBXVFRib2RzbmRoajFMRTg0alg1?=
 =?utf-8?B?Vnd0RFlkQWt4TkFpS3oveDA4ejNtNS9UMEw0UkdtL29XV0YzMU94Y0s3TTJk?=
 =?utf-8?B?S3plMlJVTnVaMG1MM1ZyZk9oanVzN0lMemJWN3M4UGpTVHlYZ2VzSGc1TDk1?=
 =?utf-8?B?WlJYbEZ6SXptaVhVTTlYRHNxWU5aOVZZTC82ZEptL0VUTmhGVTdJWDZBQlln?=
 =?utf-8?B?LzlucjRQbkJiOFV3TEttek01cWdHbWR6Vi9yeXRRNEt1N2xHdEp6cFoxaUpt?=
 =?utf-8?B?V3grRE5MUHZSMkJOYVNUVjhvN3FWS1prVGFoT2pvNVlKVERMQXUxUkNSWHhn?=
 =?utf-8?B?ZjNuQVo3OThZTm1EZEoyVTZhcUNRSlRDZUF4MkJ4WFZkajQ4TlBMVUlHa3or?=
 =?utf-8?B?UFd6RXl5Zkd3VEtBRWVpTnF4YmxjZkxvWDFtNklMUVNWaklDRHdUN2JuaE1p?=
 =?utf-8?B?Uk1KaUxDdHo3TmtibVh3ZzRCaDQ2TU1XYklVSU9Pbnp1ekdTYzlmWUpwaEFX?=
 =?utf-8?B?MmFIbDErb3YxQVlWTVJMVFFGMXdseEVkZWk4eU9OeGtNVVJxcmx6UDVUUjhU?=
 =?utf-8?B?cEtPeEZ1Ty9NTUNDNWRkRHBPREl1RngvMVV4YUU4MEUxaXhhR0tGLzBzMUZ2?=
 =?utf-8?B?cjN6YzIzYnJ5aFJMQk1YR3BSN20raVYrZ3Z5Vkh3SGdqOHFHelgyYW9yakd4?=
 =?utf-8?B?d0tGSGt4WmdwSTVXcE81bGZ4dnJRRGhSbzRlUEtaak1KUEJsMWd2VFc0TCth?=
 =?utf-8?B?VkQ1akF3VkZPL3NhSkFsdDdmYzJ3bldrVW5HTEh5MDd2MkNPanEwaUtNUVZw?=
 =?utf-8?B?OWpleUxITmhXZDl5WUh4RkYvQVcraXk0SFIrSmVBSGF3WmFablVtd0x0d3Bi?=
 =?utf-8?B?QnhRZEZleTB6enJJK1BTR3BqanhZSmZCK1FDbXlXQlJmSkNhYVpsWUU0YWxa?=
 =?utf-8?B?bGNiZ1RYdUw2RzZPcHJKa094M1A0T3VoSldkRkRpcklQc3BVSEV3NDBLbTZy?=
 =?utf-8?B?ZXNUTDhKaHF2dng0dFRvS1NTejdleGtSelZva1BHRXpSejc4aEg1MDB1SzZY?=
 =?utf-8?B?Q1VXUFFjSHBwNFkvTFgrSHU1cTgwNGxyckRqb2pGOE1jYmZjZ1FCNDVyelVQ?=
 =?utf-8?B?b0lCSFMvUHpWOFNKSHZTSHphSSttTkM4UURxV1luZUtQOWd5aFFLK2lyWit6?=
 =?utf-8?B?MEZkTmFwYWxOZEFXWmtoMW9NZlZkcXNNa3FBRml5T2piQVFjRi9VdnFNSlkz?=
 =?utf-8?B?VHUyb09jQlNYRGZ5Zk9QTHNoUnJYeUpHN2pPbC9HRXZvVkJUWXNmVGYxdGlr?=
 =?utf-8?B?RGsrOUJZSDNkSkp2NXM4NXlMTlc0V1FCSVNhc1MvVGpTdDMvZVYxTzBIOVJ4?=
 =?utf-8?B?VFNUeXN5aEpXNDJ5Zk9jZmMxUEVXcFpYQjFaUTNVYTd1Zzlld05tejdYb04r?=
 =?utf-8?B?Y09qdGVZejRJQ3IxOWVFa3ZpUldrR3Z6bWVkTzM2U2p0ZytRWVJHRWpWMGxO?=
 =?utf-8?B?YkJvdjJYQ3lMOXhPSldIS1JzYUhWbU9ydkNkUmhMUTRoenh2MkQwY2hDVWE4?=
 =?utf-8?B?YnBkWVdsOGpkcUVTQWZsRmIvdHpPQ1JlV3JsQnFVRDZrTWhwWUthMTE3ZUlO?=
 =?utf-8?B?SjAzODN3ZXZja2U1Q3d3ZS9EaHFlcXpaUTB4WXZUbGw0VnBkQ1lVQStHUDh4?=
 =?utf-8?B?VWQzUjJxYnJMUkNncDNEZXk0aXF4N1lnc3d1a2xoZmg2ZlN2WXMwUk0vcjU4?=
 =?utf-8?B?anZ4TDdzY3hUOGN3aHpUMG0xVjRLYTZQVkJraUNWRkRPeXVXWjR6aU5WT28v?=
 =?utf-8?B?MDhXMUpNd21zK3ZxcjgrOFlwdmpVZWh3VExDMGs3M0dDNWZ5V3VndG8rcndI?=
 =?utf-8?B?VGtmYlRvcVg2Z0kyTGVsQXo5UkNmL21Hd3JGSjRmWEExeERXRkNHM0J0Z2lL?=
 =?utf-8?B?czA5TGU5cmdiNE5NZmRKbWo2bWllT0RzZFBleDd2b1phNTRYaU1MNXc4a3JU?=
 =?utf-8?B?ZUVpZFJwSGFiZm41U2dTMWJNM3lhcnhjdGRpaC8vVktHeWI1bFgvOW1CN3VE?=
 =?utf-8?B?S3FMd2loS3NtVG4zSE9xaTcxdCtJWWZDMkFBVERZQnZhVVhoTzRBRnBpVlJx?=
 =?utf-8?B?Q0ZFb0tveTl3MlRCWjlyZzQ2WDJXczR0RjFCcVNEUTVkV2NNRExneUZDeC9m?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2196b11-ef6e-4087-9287-08dd4138fcac
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 14:18:37.3484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psDXr1482bttuhjnMkUmI0UVt5MiTq8KTm31xyC/tKSs0PMQxUTOiwZVLaMuAxZ+fhWErecchVxkbcFQGK2Gt9lWmWVacDgWLywjo327Aiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
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

Hi Gustavo,

[...]
> Let's remove that check, since it is unnecessary and causes the
> inconsistency illustrated above.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

Would you add:
Fixes: c01e78a96e12 ("drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support")?

after that LGTM:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof
