Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22497A28624
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FFC10E751;
	Wed,  5 Feb 2025 09:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BPoxhBGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F089510E141;
 Wed,  5 Feb 2025 09:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738746483; x=1770282483;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4xz4xJlFOwES6qy294gV0Y1DhloYQqVKrBTB/vroKG8=;
 b=BPoxhBGoSevS3JUqHDaTU5djH7DtJqlx7kVuF9XgkoQ4+FCxlt69DIEr
 TdKePnC22/q71A93CTiEygj5W315i83CTB8II9iGhvHL9El+515oUZM/d
 iTFYWvIY/oI5e3+4OteuDTgDurzJwOh+Qfryj8g0shbEYxtGDs3TNc5kR
 zezl+R7KyZHYlKwi0Lvhn2IIiVPp9N/ME2iqbGuHm+0k4Ie8AumSDATLX
 UhnlXHImM+EV0JynuJTxKFrvhQodM4bSE6/Ane7ugLvG116cXMh8qyV9e
 38UgwDKpzA8IrVxIkQgSlr6j+I3oTp0u/b97wQ8skvtc4oKMUoTGFUV4q A==;
X-CSE-ConnectionGUID: yXYGHJPkSpy2FZ+jC3+fUw==
X-CSE-MsgGUID: fvm10qibSPqIG3NBBB0sEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43054911"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43054911"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:07:53 -0800
X-CSE-ConnectionGUID: PwzQdYZmRem/sWHyDBrw9w==
X-CSE-MsgGUID: 7c+TpOsnQ3uUFpU8v6kclg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115894988"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:07:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:07:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:07:50 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:07:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FHIhG1XVIiPMqNf36DkfX45TRu1jBorceGtYOj7KpEm881n6VdMD2f5ikXaR3R3QHVJwe0yh4o+Taw0i7kfo0qMkOxgf5l3cJIO5CSTTs77r5p5BuKYMsCrQYk8TcQIPFI/xKaL9/AmwtbjutbonRItvWV/W4yusrYYVE5KAOlbTEsZhJPj3M8BAzbI6F/BctcWfkQ4pKULluQWQdS7vxSeKEOS2bhXDw/3IWA+Bp+dBopnyus3o/gImTff/8KdIssE0apZpW4NvfC6UWTwARaK5UmDXReB9nDZwXNtE4Hfe2/KKLQDtPrYuNeFc+bxFruRjAj+69BM7AX0RLN9ARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CLD2BLyiBQih8xaE1OPGPVjMLkqVZdrH+zxBWbdS8I=;
 b=wpqxdBUCUhGvK5z1dcOD6KJgRdSXiBcXmlE4BiX4JkPd0iyP2jZKqGykbG2tK1h5PvmE/JPRRtcquM5mUtiWF2ia7eDyh+gpsK5MC8EV3swlUSJgISpMsbZlP6Cl+TjmItIhFDAaZh1xOPNlIThOJ89ifO0v7q9gG2jZJxA2Hr9Mw8UFlaos80JDOnQbv5vsQcGI9rSv7vn0lGDeanbjfrGH5lqMp3U84al2pQCb3fOzJB42Uj6S4aS0Gmu9nWiJQ8hNzNJfZpBy4snd2H54REWTNYT7CQoVDy0/LPlvrlUeUcXj4FsYU0kFDkVNMqXgikmpsbBEHIruQUztPReKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4745.namprd11.prod.outlook.com (2603:10b6:303:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Wed, 5 Feb
 2025 09:07:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8398.021; Wed, 5 Feb 2025
 09:07:47 +0000
Date: Wed, 5 Feb 2025 09:07:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
Message-ID: <6zykac7qspcciajl3smup5doqbkn5v6wpfuzizilkzsqekhfjc@5mpmns5z773v>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
 <173835458986.77773.13912562984988802225@intel.com>
 <he7fbsp5ccqndn7iz344z2vz6qvdc4dsrxjsh27vc5nljrgsw6@dxgworjh7cnf>
 <173858307116.77773.7863732675087498240@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173858307116.77773.7863732675087498240@intel.com>
X-ClientProxiedBy: ZR2P278CA0051.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::6) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4745:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a847f91-9cca-4edf-1f2e-08dd45c48f50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnJCM1hwZG9JZGM0SEF0OEVnRnNMdW02cy9PT0Y3NU1rL3BnTk1raUZrUnJM?=
 =?utf-8?B?VDlQTUZYZlRaQmpmNW9OQzQvT0RRNDBsL2I0NmFSV1BtT1V6Vk8vK3Fmd2ZS?=
 =?utf-8?B?Sm54cUdWS3QxU1I1WkxTSVlrd1lrdGIzbWpNOFBMRDFJb0k4TEhrRmlVb2JI?=
 =?utf-8?B?ZkErb2JEenQ5TjBlN21iK3JZNWwwZ3A2TlpxWC9YL1FLcHl3UTd5Z2hsa3h1?=
 =?utf-8?B?YnI3SldZY24yRXF4R3FvWWg1aVdUVlhHMzdrbjF1bzhRZWVxRmdCNDhaUlJx?=
 =?utf-8?B?MVhEMG1kRG9iRTRkSWRtb2pURnJMZ04xQ1BEbUF3bUc0TWhmRVRpR3FGSUdI?=
 =?utf-8?B?VEUyaUdxdmRJdXpoZ0tjaTRXeVNWa3IzRUY0VERwb2I5bUtWUEl5WXZpSEJj?=
 =?utf-8?B?T0YwYjIrOEU5SFN5MUt0dzIraXR2Mml2dFhhbnB4dG1pV2MrdjA1QVIrQ3BP?=
 =?utf-8?B?ZFVNWUtnT0hEV1VFOWFZNnJxY1hkVjNUNEpwVFVFVU12ZnZubExyNVdCWWNr?=
 =?utf-8?B?cjNuREFPeUFDWFNWbndoK3FNSTRNazdtVDdHcTl3RGdHbHhEY0dRTE11QU9z?=
 =?utf-8?B?S3lHOXk5Y1RCZE9XNGNWT3NBYkVkenVwQW11eFJWZFNlUkJKOStIOG9ES0VS?=
 =?utf-8?B?azljbTdxUzUwenExNS83dEN4RVlkU0tqSmxXV0tXOGJ4WEdLdng2akhTdlgv?=
 =?utf-8?B?UGNlQzJwMmUyZk1YQ2JYUXZoaFZzV05ZUjNVUzdzanQrV1ZtY0ZGbDRnY2pS?=
 =?utf-8?B?NlJjVWJ3NFYzS3VzTm13dTFSS1FLNzhDWlRjZmVFTUtDSkFiWk96eGtMblVP?=
 =?utf-8?B?SC9venRpUktSMjUzMEFSRWNWNWNRcVNTanhkVnN0eEY0eGtDaVhhYTRIV29l?=
 =?utf-8?B?SmtlYzBjMStjTkpabmNPMFUzbXNiRXFmZ0pMT2pEcXZMekw2SFlIYUJZZklp?=
 =?utf-8?B?dXgxS1BSSG10TDRyT2o0YjRSSUZHY2JKUmlYZU1pVHM0TCs1Z1Fubm5oWFd6?=
 =?utf-8?B?MEpsNXNjZjNPYVR2WUx6S29UUlBORmVaZWYxOHNpNWhGYW5OTk5zb3RGMXQx?=
 =?utf-8?B?NEtDd1VxTmJDbXFQR2EvVmNwbGd6RmRIU2JBb1JJWitYU1d5SEttL0xFKzc3?=
 =?utf-8?B?UFZLT21oMWwyQ04vUUhPSTh6U0xMNlJOOUJYN2xXVXo2enlKNXIxWVhkTUlV?=
 =?utf-8?B?dVlEY3F1THVMY0Fra29Lb29OVTJiQlRmckFHUlRDbkhlaVNkL2V3ZktBK0Z1?=
 =?utf-8?B?VnFFSTE4ekx6cXhYazFsQkJzeThPaXkxWUpLMTQ0V2l2ZFQ2Mit6Nm1ORG1L?=
 =?utf-8?B?ZU9NclQySSswOFdhUTRnN0ExYkFDOGJuZlVpN2c1WWdIbzZRMUI2WkRBL01N?=
 =?utf-8?B?RGd4N1ZMOXJmUkF3d0NiSThETk1rN25SRDZWN0VyWFkwbGtQa2V2d3JPbXlh?=
 =?utf-8?B?QzZqalk3Ry9lYjY0UHAreU9xRUJOWWJzV1ZWb29vUmNMajZ5bmg4MzRCYUh0?=
 =?utf-8?B?MjUwcUxaWllmdmY2VUNwWkYvTDE5Q0Z5MDR5YVkyckNQM29YeTV4T25IcHl1?=
 =?utf-8?B?dnFqbTJxT3VYK0JxVDlyaFEyWFdhaXBsekpIK0NYVWpUdVRQZVp1QURhcTZN?=
 =?utf-8?B?T0N1Zkw4akkwbDlmc0JFV1hwUGNOd1h6eU1Lb1ovdDQvUVpOOU43UGgwSnJV?=
 =?utf-8?B?L1RPVllMZ2F4RXIvaDI0TmJNMzAzWkY4NnQ4MWJyNHdZdEYvdytrSzUrWG1E?=
 =?utf-8?B?L3NCNUlLbU1RZll0aVVHd2lsY3NRTUdsZG9IR1prTkZrOGRORzRGU3dpUm4w?=
 =?utf-8?B?N1FXb0ZMcDJHUi96MDhZWW5XZ3gzVkRtVlFUcHd3cnlGbkVnTFJQVHpuTXFY?=
 =?utf-8?Q?X5Zm4NtEDY8dj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RitaQUNhVHlzRTdFMjJadTl5TFZ1b2tWSUswUXN6OFhUWjUzUTN6Vk0wTzFD?=
 =?utf-8?B?M3lsTlFRb2o5cTZDc3ZmS2xOVzA2eTRzR0t0cERmU0xqck9CZ3pYaUVhUXcr?=
 =?utf-8?B?aE5nak14Zkp4SkRzNTZoRkRCRVRIcFNyN05JM0EyODNMcFgwS3dQZFhvQURE?=
 =?utf-8?B?QjZXRFc0SjZGQXZUOEVsb0RiM0xKbHptY1lROWRhYUVlUlJMaFFVTHp4NVRo?=
 =?utf-8?B?SCsyS1dWZlcvZUdkdXByTUxRTmMzT091VWhPSGgvaGJocGdkUWdiWWZUWmo4?=
 =?utf-8?B?RUl4b2czaDgxVjVvK3ZsSnRKdm85K0sxVWNWR2ltYmJ5QWxTWVhURWRGUDVs?=
 =?utf-8?B?aStCNm9xbCtrMXVTNllGRFRpdjEzUDl6R0NKdUY1amJMeEphUDVEZWtrMUY2?=
 =?utf-8?B?aHN2UTRDdlNCTThTMHRzZ3dOVVJzZnhhSktyVVFlNlo2V3JXbkFnMHVjTXpr?=
 =?utf-8?B?anBpMzFjTWdlNXlmVWdSK1dsRjlpWG82NFV0MDhkdUJjMldTL2xvczdFeEdY?=
 =?utf-8?B?SXVpWDBFM2lHNkYyMlBOcjg4eUZFdWcvWU91ZTA2MXFkOE1qY3A0Ritjb2JS?=
 =?utf-8?B?SzJFMkJML1RKOVZPSVVHelNjWnc0Z2d2YklXZ0x4MUlScGR4UEozanNvZFla?=
 =?utf-8?B?bVZDYU5udjlxTWVub0VzZWZZYWtsZnI3b3dVVlVLQUsrazNGNEx3bXdwUGVp?=
 =?utf-8?B?ZUFzY0NJMHBZalVBd3pMTkd0cFJCeElOZlBNSTlaM0F5ZW1HVE1tZWxJVzdF?=
 =?utf-8?B?OE9oYS9VYUE5SDZEQzFWY1U1MnJvNkE4UGs2Q1J6cEc1M1BCNnFCb2RKKy82?=
 =?utf-8?B?ZzVJNU5SeU9kb3JxVkhDZSt0cVJKVHdQdFY3VnlkK0xvdWFrRlpEaEhCWkVB?=
 =?utf-8?B?T0RXYUZCaCtjQjRTb0xoNTlSbnV1L2RUek5CVC9YS1NqU1U5TWMxdVd4RmNF?=
 =?utf-8?B?UHZKbHBHNjhMc3ZRMlVCL09XMUh2aWNmNnFLZlRQcXNWRmtSS2RxZTYxR25s?=
 =?utf-8?B?Y1pndlYxWnR4VW83RzhPNm02TzloMXN6Zjh3cVRKVkIzTWpCV2xGVS8xTmpl?=
 =?utf-8?B?RWtMSXQ2d1pKcTdTVUk2UFVrblhIVnRtQllOUDQ2Rk5YVUhzMGFFVmdXRlIy?=
 =?utf-8?B?bXhTdEI5QkYrVjZxNld0UTFqZmlscVlXbjNjL1Vic3ZLNlE5TTJUeHpSdUZ0?=
 =?utf-8?B?L2Z2WnM1WTNreS8yN3RmL1hqYTJRUVVOOFVVU01JOG50TEsvQ3lVc3hFeWx4?=
 =?utf-8?B?MjRabzR1V0xHYlFyQWIrWFhFc0FjVWw0Slo0Y3JJVnZ5TFFjMS93dWgzTXRo?=
 =?utf-8?B?TmpNSUY3QXBUODRnSGp4SmJCUUgydERQb0dtT2FpM0srcHFXby9penk1TTFO?=
 =?utf-8?B?MURGRWpQY29vTWZYMDF6L2xsOTVkN2h5S1Y5eXhlZ3U2Z3BRdEVHbFRvVG9Q?=
 =?utf-8?B?NEFIY1JQc2ZqN0JoNGJ6dERaRXB0YW9hSk1uT3FSNlRob2ZUc0svaTVHQ09v?=
 =?utf-8?B?SS9RNC9DYXZIL3krSlU3K3FKYU1UeGxjMW1jSEVzeFUwd3VVRHNtcmppcEp5?=
 =?utf-8?B?ZDBiZWtEM1hzNzdUalBQMXR2bDNoRXFxekZsWGorL3VhUnlqdDByQkZKR0F6?=
 =?utf-8?B?S2JmSkl6cTc5cnhEZG1hTGNzWHV4VndKZ1ZKUEQ2QTJCdjhObTlKVXJMR2Vm?=
 =?utf-8?B?VkJsMy9JZzErcS9hVUNEKzBSV2t1TERKRDdHdndFYjJFdnlpN1BSV2ZiV0VZ?=
 =?utf-8?B?YjVmeERUQVNrWWZhTThZazBIYnBJRHVFOWlXejJEUGpyM3BrOEZFYlZTNXFp?=
 =?utf-8?B?VzJPKzFEajlQMGtKY3pFUVMrd1ZzUlNnQVJheFhVUXg5emRta3M5bmlDWXd3?=
 =?utf-8?B?K01pSWk5RkowMXFBMDhuMVZtdm5IemtyV1JaekN6N2JPN3MrY0dkMGxtRlZZ?=
 =?utf-8?B?MFlDQkRvTUlSa3JDQnNnZnNGaTdvTGtCVXQvWXRhYmYyRGlzbWVvQnRFelNS?=
 =?utf-8?B?ajM0TlMwRFVMTEpoU1NhNFNzaUQzZUFFemhUV3VtcGtiMlh2VkkrZXE5cStn?=
 =?utf-8?B?MjBLcDlOS1p3UWVvaEZRUmVKdERVam5ieDBINkdVUTRUOFQ3SVVNSUR5d1p2?=
 =?utf-8?B?ZEVnbXkxMjJveE9PUTdYVmFyK2pRV0NwYzFmS29ucDNTMzVnVTJjTHA4bUp4?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a847f91-9cca-4edf-1f2e-08dd45c48f50
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 09:07:47.8246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pTT9252SOZfL2SOcwc1c8DQiAjrk2wRSQDj6BWLM/G7LVOjoV/PFbZ6sGMEhZwFVKWqxCZSP4fflUkMkhQYHfRm/YUDoTgOOowdG7FpuePA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4745
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

> Okay. Thanks!
> 
> Krzysztof, does the r-b stand without the "Fixes" tag?
> 

Yup, sorry for the late response:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof
