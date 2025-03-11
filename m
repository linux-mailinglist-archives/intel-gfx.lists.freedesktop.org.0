Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4FA5BE05
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 11:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10DA010E559;
	Tue, 11 Mar 2025 10:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQGRm6eh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F83510E559
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 10:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741689457; x=1773225457;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lf1V9o5yWJQ2B3RHY4BbryfTtKS7tISmTWzT2lDNRVk=;
 b=MQGRm6ehWWJcLFsf8b18WJv/QAf0oDDndrslLWoNm/wUFYswiv/OOMCp
 T9O5Wj8ssaxBomLHxa30GZlMZ15110eXlC1/xWx9gPCAqP9ae/XvLcYJ1
 c8Y6JOGSSJjLjXCGL9cXk4oKeUKAi3Rvhn5ogilu/t8NhpiMLnJhuZIq6
 aXkWK2xlZgfC0mFdR+zHPEkHjOp1tmjkwMlQ55091hoxroDUHclkYpLWA
 gCughWizrzxzd/K5ToZhlIyJnrnrDFOm7stAFZmhsUzfdCLAsircvE2Ut
 G+H8GEqQlJeuRmeNwTC62Wz1Xesfg9buu7hzpXqp6bo0u8Gn/0SQOmYMG A==;
X-CSE-ConnectionGUID: LiDl9VRySsiKx0XFFHcFFw==
X-CSE-MsgGUID: A02VWDGjRy+hdVs0T8ScTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42848687"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42848687"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:37:34 -0700
X-CSE-ConnectionGUID: VUs3LqWETcixkRuT/jmD9Q==
X-CSE-MsgGUID: xG1Ckz39RZm87sJUrCyTTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125330915"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:37:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 03:37:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 03:37:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:37:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=on/TH+JT1mXJzY5MDs7wD/WOPj7LVuQJKaF4zPe6CjQr0u+UKlyUTSwiNGHQxeh8kTS4uBOvReqTzRvI+XPpp1nGIV6vfcwl0L8IJp0vIu1MVOl5XRj0dmSUJ6owadw7cYDH8eouyMHT7xElQO7hvN126SbMDg1Aby1Jtbo6Nd7EEjr96WVZHJajzY7b7Wmv5+ahgsNT9gBqISzCfejq2Iqd/asCmWbj7AVI8oYmuL+VoPSYygqJM9fqQ/bBclE39tnPYr9CKH/iUoXsZYuTFmqHLWwpsPVjYzLSY/+AKkpUc0XTPwAUhnTPJWNr+TOshwFq6umnx4irb+25hxF8cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCipzeyPMfAdTl2LZ675henpVGe1WBJ4+HGZRwdX27w=;
 b=RYhhz0n63P2dWjPOXwH8pYuqPEFDIInTSsgGOzdx6pb7o5N/oX71DJu7cpW16qiQf6MbhR87kuRCYCsx8JsadAm/dTpEKICHDIb4FM8D9uuRl1vk1I289Zk4FDT09SQEtRKeu9/1O1Lz3CgHZdA+29jFXzTtdFamZ5Qjvj0PQfQT7CERJ+/SGzBTO55ONoBzEtIanxL2j0WOBrkK0VvEL1FByZY5on3Ca+HhHrvlKEyoiAPVc7FyVldjqT7pQ3VGrMUDwNVfbaQuZ3yJLr5RufTHubEMzltBptcfmjf6njABie5Bo+AMMFSGGBSMZpxDt3u+zmd4vE5c1HO+a+IW2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ1PR11MB6179.namprd11.prod.outlook.com (2603:10b6:a03:45a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:37:31 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 10:37:31 +0000
Date: Tue, 11 Mar 2025 10:37:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <eonfopkne4haoqor76eruvxeujliebzvc3xkahhcdds3q5jx4f@yy3fcsencfbj>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
 <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
 <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
 <174134708564.785137.4586842576093518384@DEV-409>
 <gfnreumbasvtrdlyqomqwgfyitnr2avg43kgpj7crande2jd4s@acpxxehzgrqg>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <gfnreumbasvtrdlyqomqwgfyitnr2avg43kgpj7crande2jd4s@acpxxehzgrqg>
X-ClientProxiedBy: ZR2P278CA0041.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ1PR11MB6179:EE_
X-MS-Office365-Filtering-Correlation-Id: e378729d-cf99-43c6-9ef1-08dd6088ba1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDdncjJPSHU4UXhwRWdsN2w1SmM3T21mbWpCSHg0YUk2L3BDdG5meEFhUU9V?=
 =?utf-8?B?NnF1c0VVWkpNbVZFVDdNNktZM1liM0Evb0tuaHkxSThWM0dNQkRpQzdubWNs?=
 =?utf-8?B?K2p6STRwU1RlNnlyVlB1WVFTWklwY0lXM29OcFJXdWd5MkR4WmswL2Nlb252?=
 =?utf-8?B?eHkrN0RDTHJSNFdGQmU5VXJnSC91OEpmUlpwUTIxR0N0MXFKMFdPYlVYdGYx?=
 =?utf-8?B?aUJRYVQ0NlRmNHNzbThhWkhuV2xwOUZFdXp2OXRMSHluckVuUFp4ai9wMUJZ?=
 =?utf-8?B?OWJQaWJCNGxqV0t5N1Y3VmFVVXhwTlpkVnR6Rm1sbHU4ZTFlbnk5eWkxZGJH?=
 =?utf-8?B?Q1dNZ2RtRE5hMHFzSUtETzY0Lzl0Y2loRlNvV3ZxR0dMdTk1bm5KZjRySFVM?=
 =?utf-8?B?T3FlOGhBTmlVdWN6ekpXblFiM21keEFxaFlSVmh6M0tWWTdJeHFYVVg2ZFo5?=
 =?utf-8?B?VTZKUVp5ZEpKdThhUDRJMHFJa1FHc3czNXZ4N3pjNWlYVUdOa3pvYzIvd2pN?=
 =?utf-8?B?NzRtT2Vuc1NKL0lnOThVZkhtQUZQbXkvNEtubmVvVEo3Qk5yMkFyTy95UXEx?=
 =?utf-8?B?a1A5T09OaDFJV3lRZTQ4aXNXZVkyUysvMkE1dVdldDRraDFCa3pWR1FiTWlQ?=
 =?utf-8?B?V2kwcU4vT3MzVkRUWkMwVUJkMU9sYVJKOENnck9WTDZIN3dzMjk4MzVqUHp4?=
 =?utf-8?B?d0dlT29raWFKOUlkR0Y2anJvaThYVmlUZFE4dUVrbStZblJhUEpGOElDK3Ba?=
 =?utf-8?B?UUsvbnUyU3lMRXdya2ZDTGExSjM4VDNKaHlzM0pRNkJWUlZTVThvWUtGS3hj?=
 =?utf-8?B?K2tIRk44RUlaT3haUmZjN3MxekhPTURuVXdxRmFhZW9QVFF0WVAyZ2Q5THJG?=
 =?utf-8?B?bkNYbnlwRkN0SWoxa05QT2xRL3lvVUFLRDhJOXpuYS9WL3VwcW5ybmdITUgw?=
 =?utf-8?B?OVFoYVR0TWNsdmt6ZlNxUkdtT1FDMEF3ZVVWejRacGRRelVlRUVWSUhlcmN5?=
 =?utf-8?B?UVhGVTVrdTRRRUdjdDZoR0grK1QzNUU2QVRHSmFVd25wM3dDYUR4RXVnQW81?=
 =?utf-8?B?bjJ5UVRNZ3dRaTJLWVdvblpLUEs0a0NwZW5HWEkxb0N6VWZEcEVtRFhRQzlX?=
 =?utf-8?B?Z3NmSE9YY1ZqczhmZ1cxbVNnZVdNUHZISWFTay9RQmczd0NScXRFUWRrUTEr?=
 =?utf-8?B?WlR1QkJlWTVmWmdYTTlRYzBvR3FzSTh0ZGZzWlFvVnJjYWg1TUplakZ2MTJT?=
 =?utf-8?B?U1ZuZjM1TmN0ejVjYzA0eDBsYUViQThRZW1VRFQyMjdSR3k5OEpGaUZJTHpC?=
 =?utf-8?B?K2NMOFNTNE9ycUJ6SGVWSGVWeW9wblcrc1RYeU5sY1pjWE9Gd1NlZWtpY01B?=
 =?utf-8?B?NEIvZ2c4b3VjVzBxTmV2c2pTNEN5QmJQWjVraEVnMXAxSkhKTlVkSTJzVmtp?=
 =?utf-8?B?NHNSRkRHT0NlZ09DNWs5Tkg2bmhvYTBscjU0YkFqUmdxVm5FN01FdG5vczBE?=
 =?utf-8?B?dkJnUnVSN3JUQnhGSExsRTJTcTVlVmlJeTZpWUluWXNYNUxHUTZML2N5eUlU?=
 =?utf-8?B?bnZiNlVIYzAyakNKWWFBb1FLUWwxSTZqNHFuTlFrYWhCQzlwS0JGa21YTnFP?=
 =?utf-8?B?ZFlLUWxpa2lnd25za0FqVmtmU0pMQlkvR0l6YmxjUVpJM0pTeThQTFhNM2xM?=
 =?utf-8?B?bFdLemNCWkhRTjRnUG1aajJUWmlqcTIvQlFRb2RkYVYrcG1wSTNVU2kxSW52?=
 =?utf-8?B?dUZWd1ZsUSt2RWlDSmFnZWFvMTZCNzJIT1k4bFlidGpBRTNvTTZLcVJyMEo4?=
 =?utf-8?B?bWV1VXZmalRIYXhiMUJsUERVc1pKM3FKdDlibTVNWUlPajQrQVBWdVppSitF?=
 =?utf-8?Q?PoHImRH2LD4Qt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEMwRTVjdldqRmdxdHJuTUhocUVqcnJsYjFYYmpCRXJCRVVDKzRudHBra2Ny?=
 =?utf-8?B?aFd2VnZSaUdQTmJvaVBLekQ5NklPdzkxZzZiZWR5K0cxLy80U0NFbmR3Y3p2?=
 =?utf-8?B?RkxuU1Q3M2NaaDJxcy9PVEtnZmtIY3lrZ3VxUWZXTWE4cDRWY0FrWkhNanh2?=
 =?utf-8?B?WDJLaHlTSitlNExTelVpNUVlbXROUkJLNlp5T3kwbnRGVmE1SGcyNmRqUml5?=
 =?utf-8?B?MnZCUy9uZnMySEJJcEFLOE00N0JNQzBRZG9rVW5rSWs0MENaZWg5em9uT1p1?=
 =?utf-8?B?UjRyNG5tY0NPTFRkNkRPcy9Rd0kra0hFNkxsRjFiRHN1TjhWUm5PZWk3cTlj?=
 =?utf-8?B?TTlMcm9IbEwrVXJYN3BmcE9wa05rVlkydU1TMXJicXNlYlpRSTRrbUJQUWVD?=
 =?utf-8?B?VzZuVmU2bEFOM2xZRDFiWG83YUhibDc3VXFJaGE4T29nckZRVHQzMUh3RTV3?=
 =?utf-8?B?NlVDdTR4Z3BNQ1A2Y3VnZ2dMZ05FcXRhNmtGSzQrcVdJcmVNWFFTVDNQM0lX?=
 =?utf-8?B?WWdDQk4vN2ZiV2d1Nk14SUh5d2J1d2ZEcEZnWEJSUTUvQURUZnZNVmpVemRB?=
 =?utf-8?B?VTNLZ2FidEpFZlFFeXlmOVp3cGVqSmlIa29RMGlvNy9sVnFqNEF0K3ViWU8w?=
 =?utf-8?B?Nzh0RDlmTDFWR0VnYjRQenFhckRoTFVoQlo1S2pNdUUwMy8zNVhLZVVaSW10?=
 =?utf-8?B?bVVDWXFxZ0FxTmpQTUVFbU94NDVybExjT21XQkppeW1NaU1ZUTAzVlZqVGZI?=
 =?utf-8?B?d1JrZzYxMU9QQXgzUG54WWtRSTJ0SnEzZmp3bWtNUWhTZjhwSm9pMi92c1R6?=
 =?utf-8?B?UEhDTFhjNVZMb0doSG9VT3RVMU1qaUgwWWNKcFFwMVB6L1NMZFRSdFhMWVR5?=
 =?utf-8?B?dTgySmV5MUdnRmlJQTdmc3VFMHNzSTQzVTh1S1RTN1p6dFNhcmljUlY2VTFz?=
 =?utf-8?B?UVZMZlZaUndGSEF5R1pQZHhLa3lJMDlKSW5hVDZBUmFwWnoveXFocG5rL1Rn?=
 =?utf-8?B?Q2p2UTlTeDNjM1FQNFZ0TzZQRk9OZmdqQ2F3M0d4TnU2TFdsYXJiYU5JZGhI?=
 =?utf-8?B?TjNPOE9jdHRGZTdQREsvejRTcDdaZ0RSSXVWSklyb3hialZnQnV2NkNMM3o2?=
 =?utf-8?B?SzNpT2RTeVp3UWpBdlE0YjYrb2krRUtkRENWcFRLOElYYURETVBJSzFNSzBC?=
 =?utf-8?B?RkVFSXl5Qkd5VXNTWHdSUVJKTHpmK0hOTUVZZ2ZrNFVtbW01NlYwem1rWkZp?=
 =?utf-8?B?Ynllak12STdPU29LRG93bndacERtR3JkZWxwcWd3WVd4ZjNCRWZIejlENldU?=
 =?utf-8?B?YUQydlRuRldzbnRqcmtjeWVyZUNxcXJ6MExTT1EvaDVrY2ZyQ2hEeFBzT1FV?=
 =?utf-8?B?Z0p0TWlLemhmUm5kckxUeUswNjNRVnJjakk3TlhpOXgxMVRuRFBhYzZWRytm?=
 =?utf-8?B?bUQ0WGsxdlBiS1llNlUxNFlBdWpRbEFvK3dyZUJ5QWNVbTFNdkJXN1h0Wi9x?=
 =?utf-8?B?RlArZ2lWT3dRRFRGM0RIRHdmYUZ1U2NNOEV2NjB2aEllcXEwM1hUQitTaUVk?=
 =?utf-8?B?ZGRBeTRVRzg4bVJoQ0ZDbjNXemorbTJ2NE0wcWwwUExNUEgrVk1Mc1J3MmUv?=
 =?utf-8?B?UzNNZ29UelNCZFR4WFd6Q3NIVTR2emEyYlhlTDk1SkR6Ym10QjJXRlhIdzlP?=
 =?utf-8?B?QVlySG0vbFhsU3lYbExNcURwRm5GSitsWHVPS0VSR3ViLzhQUDQra1hjdGNP?=
 =?utf-8?B?djFaRDJHYktRT2JCTE5FUzR3eWpoT0RibmU1R0JOVmlScG5yQjNaTE9oZXJD?=
 =?utf-8?B?K1JiNEUyWWFySFBqb2xoR1d2dkNYVmZkcURJRCtYM2lQbjBvMHdPenVoQ1RR?=
 =?utf-8?B?d1RnNXdITnlkMmg0VHFRQ0hhaXdPaXRlYm5vOGdtSkJYbkdCVTNGOWl4UkMz?=
 =?utf-8?B?YzczZ1Y5NEttdklvM1AxN3gzaUY0NjQ5ODJZQnk3dHU3RzZxZnNvM29HV21M?=
 =?utf-8?B?ZlQrSjFRQVlQWmtzV0JwRDNkeTU4L2hNRzhSMEFFTmUxWVNQdmI2L0s1dTAy?=
 =?utf-8?B?TDFML2NyN2JzV24yUkFjaEZRRHZRQm1GTFRHT0NoS3hNRFVkeEZzY2VVYllJ?=
 =?utf-8?B?VGF4VC9GMkh1MlBseWZnbVRxa3AzTEdxZjBUb0FpVkhqVGlTcVBmRit5SHN6?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e378729d-cf99-43c6-9ef1-08dd6088ba1f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 10:37:31.3873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rB5/eUHThCEDJjkkuJjwD6oocPYocsyiJ5VRFV0/ZMdEJGtSfyDkDUxeLrjsI+ogy2U560zDOvhFyxr8Jub8UaFFEjgLcaQWgYZTfEe/on4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6179
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

[...]

> If that's the case, then the patch is alright. I was mostly worried
> about messing with userspace memory of a random process.
> 
> > If we put on our paranoia hats, the biggest problem with borrowing
> > userspace's mm is that it gives them temporary insight into whatever
> > we place into that mm. We don't expose any data, unless by error...
> > Not sure how much effort we want to put on making the selftests paranoia
> > proof, but that (and the surety of cleaning up afterwards) would be a
> > good argument for creating a temporary mm for our use.
> 
> I don't think it's really a secret what the selftest puts in that memory
> anyway (assuming normal test operation).
> 
> The only problem I can see with using userspace's mm at the moment
> (paranoia-wise) is that we only lock the mm for the vma_lookup() check
> [1], meaning there's a time-of-check-time-of-use situation. IFF
> userspace can somehow unmap the obj from its side after that check is
> done, this can potentially mess with kernel memory. I have no earthly
> idea if this can be really abused though, so it might not even be a real
> issue.
> 
> Besides, to achieve that, a malicious process would have to win the
> kthread active_mm lottery so its mm is used for the selftest, then guess
> the address of the mmapped object (it's technically logged as debug, but
> the loglevel might not be set as such), and then race with the kthread
> so the object is unmapped before use. So a lot of stars have to align.
[...]
> [1]: gem/selftests/i915_gem_mman.c:923

Could a malicious process get all necessary information from
logs (if available)? Successful guesswork and winning races
seem unlikely to happen at the same time, but still possible.
That being said, intentionally brute forcing search of these
values seems even less likely to complete in the small window
when this test runs, so:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof

