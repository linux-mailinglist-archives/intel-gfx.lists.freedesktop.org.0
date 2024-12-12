Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBDB9EE1D7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 09:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B6A10ED02;
	Thu, 12 Dec 2024 08:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gnnTGxaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B6210ED02
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 08:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733993465; x=1765529465;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jYPQJlpVD2WCz26R0nTh6a6Rq18RAXSQ8xmWsaZy+OM=;
 b=gnnTGxaYp2p3zHTTtGcBZ046YPn3bqQKSImP891S3bcnwgCgJ4cBA+n9
 BQ8urPpLTU+AWfCN8ez0oLPn/jL3jvHYoXzXt9ZK+bSzzbKAQd5n1lK0g
 A42JJTyHLZRb8X1IAosN3qGw65bvdQomULMZqZkpLfySvS7tAeDMPeBo3
 mmv2hqJORd4rKlcVVo1zY1B+QnWz9f8/xy6QxlCtmEnjswIMcYBNgKrzk
 noQwwo+Z+z87XOXL36G1huTACPvNT/Jdoix1dUXKvfTJCrjTwhRMwJXRW
 +TWI/IVWlvz36oejX66PhE1qot6/e/5isMianmsK9abHSoPvVd0M6Pi9A Q==;
X-CSE-ConnectionGUID: 5LIxXFRRQhyDshVaE6S0sw==
X-CSE-MsgGUID: RCMW6f5QR/ycHJDZPLxTEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45410229"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45410229"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 00:51:05 -0800
X-CSE-ConnectionGUID: 8182Ttg1T/idw4R4JMuPfg==
X-CSE-MsgGUID: +fj25I59QqqDW9RiRUG+og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96589862"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 00:51:04 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 00:51:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 00:51:03 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 00:51:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cwhXqr5b5cSLQrohQbF5BA/8Dl+34N8DCGFMjSm/y7dFNOdkAikEZarmoZeqFirJj9LmZH/RiX9xvvlqwBKKhy+gGWWz5d9rGj94cnxqRKZcgCHb0qRRrbmSK2ctmqyVZk1wQ7aKcXtZMp23jgATeGUFG4e8MNV8aveVMD1M26hsn/XZPBPUOqXDLt5ZiaagwEgmuNYZtWKmMP6ja9w3CTTvJDdsUYqej8+8e3YNL3p0nlx6Honhn6qFvTRjndM1CBr1x2+npyubUQiMQs88BtxRHPZlbPRhADqJ8wTtQgzZqh9/ZeiKc79SCAVzzth2sHEJtySe5e7clcfpBZiRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0dpq1+Iapl3ESCua2uIjhHWPVP3ud20gExrgKw82u/E=;
 b=IEEqpEurVho3mQjSIkksB00XgtFmSb7qodihjgRYOy5w9iTf3kkfII5uF8wE7vG+FJ+XzxahUF8O/Ulo45jayumoBOAf6wMwj9yrOnpT7GKlZ92siptbSUmHTfr1A2gyUcv56VdLlaNBiwbsb9egbygdN17MDHb0PPfguTw6S93XoTviihT/zNDQ9PmseY6nlDwr11Ikr1s+oE5y3U/Rq7XRJpMYAriVnAyqXazPyjGWOhBEtybVOm6IzRqL1N+G00aXz7gs256+55DLSzqyM7hedDREuplIDr5Pj1nVoEMtooXeVI+uG3N1xLKLwNc7dDs0eCVJ9yRh5FnRYdUwMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6422.namprd11.prod.outlook.com (2603:10b6:8:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.20; Thu, 12 Dec
 2024 08:50:33 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 08:50:33 +0000
Date: Thu, 12 Dec 2024 08:50:25 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, Imre Deak <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <fvc7guxyrd6ulojxdo4jhbnvvvwjjxpf3w2qluyfevy4kdqtei@hhebe6hvijrv>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
 <Z1oVYTZA3Ls0ApVd@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <Z1oVYTZA3Ls0ApVd@ashyti-mobl2.lan>
X-ClientProxiedBy: MI1P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6422:EE_
X-MS-Office365-Filtering-Correlation-Id: a0be1e1d-34a8-4492-7638-08dd1a8a0a2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1ZjRyt5RVU3djN4SWpweXFsLytrWXd0WDJXSXJWOWxPWXdsdnBWdWpZbXdr?=
 =?utf-8?B?Y2ltcjh5bWp5cUxPcHNteEZnbGt2elJnOWk2NnppbFNuZ29HeERnQnNIY3FV?=
 =?utf-8?B?cnpONm9nMW1hZVdaUlFEMGsyREpHeGFoYlNsc0lBLzVlK0VuSlE3YVdjUmxQ?=
 =?utf-8?B?UGFFZnRCKzZhTGRxbzMyR3NkYzF0VWQ0RzJzTGlTWUVwclp6RnlmZVdVSkFM?=
 =?utf-8?B?cE1MREJ5MXdqdi9panY0RmVKbFBkYVRHMDN5OHdIYVVxQ3ozK2xlUWlIQ3pI?=
 =?utf-8?B?Sk4rRm1EU1lBNEt0aDBlYytQOFhxeFVYeUtUZk5DZE45a2owYjRkQUdLRndM?=
 =?utf-8?B?UGM1T2RGTzlsRnVaeW15NnJWZVRZMUQ0dFhHWEUxTFNZMERlTkxNUFE2eXpq?=
 =?utf-8?B?ZGRReXA3eXllNmQ1RG9CN1podEhUeFRMcExPd3VBY3pJQ0pjY0dmZnV1Qm1s?=
 =?utf-8?B?SjZ4dTd2MEhwWW9oSmFnT2x5d3V5SGhOaFNnNFZFc1VTcDlzT3M4NGtpM3Zn?=
 =?utf-8?B?dGJ3eW4raHhYNlgzUStSc2VmQlMyWXozM1hZNnlpSk9GU1FjSmtaZFpwYkdq?=
 =?utf-8?B?WUJMZTdjZDhsZUk4ZTVsUUxGbWFZMkIvRXpiQnhnTis3RWlVMmtpYm8wYnRW?=
 =?utf-8?B?aUprZFBTbytZeFMzNFRGY21XS0l1ZDd1RVpndk16eVFvQURLTnorLzNqR3Zt?=
 =?utf-8?B?blVLMnA5RVRITTNOMEFYNkNZaTRyMkxFVlRwS01Ham4zZFlJcUllOTYwU3lt?=
 =?utf-8?B?V1lHR0lqc09qY0V3aEhZcVZVUVpwYnZzVXhYMUNScTlNUFVaaDVFZzhWV3Q1?=
 =?utf-8?B?cEp6ejEwK01reEI3Sk1iU2hERmRDZWN2cE45K1MyZ0Qwb0h1eTVMVXVsZkdL?=
 =?utf-8?B?SnRTanFkbWNJOVBZazlub2NmV01YTnRDZkU5U09NMmMyZ2tkbkc5ZzdtNWw5?=
 =?utf-8?B?UTRKM2QzT3FUdnU0QzYxemFDTXY4NnVmR2Jhby9VUGMzWjVLeDVtT0RRVHd1?=
 =?utf-8?B?d2pOSnRLZVl0bVpMdGRUb0FnVzRUeWY1cE9zbzZ5cEpHdG5PREw2UnJodUNM?=
 =?utf-8?B?ZHRxVTFKT21scTNPRDdwSjRxbmVRRkFEVElZbWtjYjd2RTNXWU1UUk1aTFVJ?=
 =?utf-8?B?dzJzNVpOdXVNNnJqNC9FYkxqa1VORlNLL2doZkQ5a0pjcEE5S1ljN3YyS3RS?=
 =?utf-8?B?K1k2UlVGOGVwbUhKZFQ5bVFzYkJQL25tYWhDWjBRWU5NVGxGZ0txVUEzY1Jl?=
 =?utf-8?B?bXRveGJPNDhIVUYzWlZJSmYvNkRaVENLWE9ZMndxdjJNbTQ3QlJnVnRiMDZ3?=
 =?utf-8?B?aW1kM29IOGltRzA1Uk5RTlZvcGpUUk5IMk1SckhXYkRLZzVEVVh4USt4UlZy?=
 =?utf-8?B?dWE1M1g4NnFzS0htNjM4dE03eGx0Z1lRRWRNU3pHK0J4WXhRRFduT0I0SnVT?=
 =?utf-8?B?bCtERDI2UUVUVEdIT0xqQUxWc3VBcVNaS1NHaUxDWXkySjRXc3hzNHNNRjBK?=
 =?utf-8?B?UlJqcFN4WHc3R3RFdWFaUnFxeEd3aDZzRUpid0xqaUl1QU1reTB6VkRweTRL?=
 =?utf-8?B?aFJwQXhDSkV6MVlvckZyUTNJZHI4aHNaZTNvVXdodU80ZVZtMm5QOGZHdTB5?=
 =?utf-8?B?NnI0TXNjazhjNzRnVEpOVWxtZE9DVWEzOU05UmV5SGZLWUtTUjRxb1J2TDF2?=
 =?utf-8?B?b2d1RHl5dTE1LzhMeHZRT0VHYy9hcXdEWk15eWNMLzljQTFJTmJ5dnBtdXhW?=
 =?utf-8?B?M05GbUlVMGFjTTVLbm4ydWZKMDNhWENjamN0Um1iZjBGRjdVbWZycWw1OVhD?=
 =?utf-8?B?QlhxcGZxSTBnMG1Qb1RsQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmxGczdLUFEydWFmUG1TcXN5elJxUkk3emJuM1paTjF3RGl6c3lXSFNvUlRk?=
 =?utf-8?B?QVB3Qm4vaU9yMC9KQjRMR0ZuUkpjYm1MMk04dnV6ejk1eGV0dllZN2ZXQkxW?=
 =?utf-8?B?R0wwRDEzWEhIQUN3ckt5eHJ4M1JEQjAyT2NmNlQwd2VlRlRSdnNjdy9BbUgv?=
 =?utf-8?B?eGJBMkpQMng1U2ZuRURja25MRGlFc3E1UFc5TC9yc1N5cnpZUEZVTmdYQkJr?=
 =?utf-8?B?MEtEcWtQZ3NUMWlYY01sb2d0alRZRW9JbXQ0WVlBOHR1MWc2VFIwRzdENWxL?=
 =?utf-8?B?RnQ2SjRhWjFLMXJqdFZSUlJTYUxRenlkUDRmemtDd0JleTJ6SVB4ZFc3Y3FG?=
 =?utf-8?B?Wk1YSGVCLzVkOUVhVXNHQmpjMFZ5UCtzUFB3cmU1MUN6MC9uQXpDUHZBckVk?=
 =?utf-8?B?T1VyRklqNkEvVkpsdXdjQnY0SFB5cW1OQ0FJTiswMGg2NUFqbzZDQlEweEx6?=
 =?utf-8?B?eEorcU85NURhR1FucEpaMWRvMUVqZWl2N3Avc3RWaWtIdnhQVmFwb1VZbUNY?=
 =?utf-8?B?TVl3ak1JRFkzK2p0MktVejUrUGJOaHJHZkQ4d1gzMnRmNzJtQUFHTmJIRlk1?=
 =?utf-8?B?Vk52b0E1cUdxR1hkaUl5TXZnNDNnckVkaTlnaXM0YysrSkJpV2ZWOC9vTnpP?=
 =?utf-8?B?VFJiT3RjUWppbzhLNjdmaG1rSURaZlFrUjJQL1c1M2pncjdNUmxCKzZvbzdO?=
 =?utf-8?B?M2lJeWM3SndUMTdJSzJFMkRHdXRlbks4UVFKK05OMHQvNDFubWxNRGFyZXh1?=
 =?utf-8?B?NURMdERCeTFySk9jMEU5WGpCODloL04yQUlhb3hKZVBPcVU0R1ViVWJaNk5P?=
 =?utf-8?B?clBtWDR4eEVNRi9NTGoxbFRxV1phWnU1Q3BEVk5RT0VqbXRzdHFkRWpMZi9R?=
 =?utf-8?B?VGRtQWF2ZC9zbHV4ZHNhMDBudzQ4NE56QVZnNzJtTFk1akxya0RzVXVJTU1u?=
 =?utf-8?B?TW8raVR6ZnJCYXZPNnhnZHBzaWJqamJxak8vQXBsSzY0OW8vTnplMm1IMkFv?=
 =?utf-8?B?UmJGOTRPbVVCWVJUS2JJTWJ2cWVOcUxzRUQrOGFBWmM0b2YvcjNDTnQ3WGtD?=
 =?utf-8?B?eC9GOGYvb0dZZkxiNytWYlhvOUVnSjU3c1l5UEd6UTNoTk5KSTlaWnZ2dXRZ?=
 =?utf-8?B?VFVxaG82MEhQTk1rZHNsbEhSV3lmRlU4VzdNbmsrZzFTNWlGMUdYMjVicDF5?=
 =?utf-8?B?OUJXNHB3Qk9McjNOY200MFVpNktyVnY2VjZPeE9zN08rNGd3MkZOcW41M2g5?=
 =?utf-8?B?UkRQbHJYUWliWlgyMUEvMVNBbmF5T0kyOG4rckMwVHh3ZUpBQitjUnU1S045?=
 =?utf-8?B?T0xsQUYyRzhDalRtL3pVVjhXbVZRWXJaTkRTQlJrQnN6UUZDdXJyQ1g5V1Jn?=
 =?utf-8?B?ZGQ1YnZSRHRHdW9ZdHZnQUJNVEdWdDl0YkduZFpaQ0QxYnFsQVlFei9LYkpj?=
 =?utf-8?B?bjNjanhFV2wyZ2dWMjFIZFJOWjBpTmwwOWlEU0NMVHQzOEdYWUs2cmV4UCtP?=
 =?utf-8?B?TUVKbm1IaWtLMkxYV2VnVnVqc1ZWWnExVFBJc0pFdEhWNXQzd3ZncWlaSlM3?=
 =?utf-8?B?UTNObHFvVEJCWG1LUTRJZVV3cWZlK001bUhMYjY3NmxHZDR1TXRLMnllMnlp?=
 =?utf-8?B?aXBkZm5EeDFTcFh3RHB3cVRzTEpERjBQMVkwcU1PS3JzMGdPSnNQaWNXeEE5?=
 =?utf-8?B?UVp5dnRUQ0RudytMUlNSdDdmZ3ZFZy9lUUlEVGhWWE9hQW9zZkd6YUFneVFv?=
 =?utf-8?B?bjhCamJkZTFhcklXNVkzeXg2R0VPaFNuQmRxVmhFVVdBNzdNM21CTnJrMlJH?=
 =?utf-8?B?MEdleVk1YnE1SU4rdmJXMlRzTG1ZYmEzRTk4Y2cvUWJQRUpuREt1YXMxTTZJ?=
 =?utf-8?B?WkdCUnY4NDVGNVJUOTJBMGh6Umk4bGY3MEkwVGlzVjNPaXd6TVdSSC9neWtx?=
 =?utf-8?B?ZlE3QnBHdmpmOGVRYy9GZ1RPWG0rb2ZyZTVTOGQ4Z0ZuRm80NW93QlhPNjhl?=
 =?utf-8?B?NnYvNWtic3RicnZVNzNZMFJDMnllbTJpTG1uSHcvOUQxS1VmcjlYK1lVYXc2?=
 =?utf-8?B?UnN1K2pGcU9JTHdCc0UyZFVOaUp2bi9STmV5QmR2YjdHY1ErelZaOXZCRlpr?=
 =?utf-8?B?RjRhSks2aGY2TklJZVJnMWRsT1VsL204TUFNRG9nbzlGSjdYazdmMUJUYVM0?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0be1e1d-34a8-4492-7638-08dd1a8a0a2d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 08:50:33.6152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GyrNDRT1tWGJwMqMi3EZaqflYCIsdTzOMm7pZlZCDnvvM9JgLwSPQ7Ro0ML/BsZ5ohtXv5qTV1IXKGGP8cmCtj40sNa8ANZG4IZb6Pf5rsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6422
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

> Please:
> 
>  1. run checkpatch.pl before sending patches.
>  2. don't ignore previous reviews: I asked you to add the fixes
>     tag and two Cc
>  3. run checkpatch.pl before sending patches.
>  4. Because this is a fix you should Cc also the stable mailing
>     list (for real!).
>  5. Find the proper maintainers to Cc, this patch is outside
>     Intel's territory; consider using, but not strictly,
>     get_maintainer.pl
> 
I did overlook these, didn't I?
> And, in case you forget:
> 
>  6. run checkpatch.pl before sending patches.
> 
> Looking forward for a v3.
Will do.

Krzysztof
> 
> Andi
