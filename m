Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C547ACDB1C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 11:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A54710E5CB;
	Wed,  4 Jun 2025 09:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zie7cJ61";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0E310E5CB;
 Wed,  4 Jun 2025 09:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749029852; x=1780565852;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pZiuLzm2FWxaIwuLekNF04jzjmdn93hn5bQYIeyyXyA=;
 b=Zie7cJ61n2c7zAPv9E2JU4hV+L0QvLB7XT/eWgnawJUUu8kqRCq/gF8P
 TnZoGAZG3e2rDJF6V43C4pptzcOC9E88eVDkAcbCvuSGuz6+d7vj9Qztb
 E1VbN/TsTRrWbsvm2XeduFy+NpZw1fb9YEnrvU0niegpW1Hja37QL0RFc
 sXx3ZtHkRNbon3pD9hvr92uU9OWbUgIlwqwJxhQGg7wi/tXzDfYxoP5ZL
 tihLiytSXreJtA/zQlrba7kgpQ4HK6YlEyaN+r/R/XzH4XJn1LD+M0FZt
 VKepH64xiiwAUN/mKOaAmwZbOnHrwCW35iiaWOH1sSPO+XIM0O1MRX7Xn w==;
X-CSE-ConnectionGUID: 9Gid/Y2eRtS/ZEt2eGLW1w==
X-CSE-MsgGUID: q9VHa2JwRiSbJ19FE/RbbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="38734983"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="38734983"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:37:29 -0700
X-CSE-ConnectionGUID: G3oNhpftQ0SIkOh5lHLAsg==
X-CSE-MsgGUID: XHJYgjWDTO26RHbPKfO7HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="168309197"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:37:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 02:37:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 02:37:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.80)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 02:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJNNT7M5UQv9Wnckhlhnly6FUUEMhvQ9FuIlmtrppXdieSj4qUJ+fgZS4VN9Pz15t18aEOGCTjZY4PRIsgN5XZCMRqbYgBmmvdiT9H8+/J30Eufp1Qxu7/OrL7Zf8tw0bHY3ma7oNxgYkwZTq0B3lYC5NOYQAUCCIB3UqnIkHXoeo9j2oF/+8WD3CLPJsl/dyFVfoaUBiXwP7asNqcmf1ZQmHQ1KiRawGAZab/nR4+FZ7Uw+sQdVSfp0NLOT4bsmjMFwG9TeSarAqKL+Zu4fmkX3Wz8KCjvgwfUi1t8rbN6AxzNI2CC1MSnNjAlKPmDblOGIdm7nM2xCDUif//3qag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9BRQEa9IAVEB/7CdUP1bXFDm+O3kMw3NGO8HuYlfBNc=;
 b=IXPlBzT4HOS0HHo5xdrzD/eMy1Nl7EU22QI22l++YfMAwL/GXH3E8XGNL/8Gig8TnCK2GgwGRxDd2OoIp0Uj7ot/DpFKLARGzBuBdAL3YrR7qa6hzRIxDcU0K81Dl/msflkeSKRtGtCwqz34UdZ8S7bX0PKppdMZY/qRYZPirtINuKdWMa8n5C37iPoA2vyhx32rHZgfb97403IVr1CuzVP7OxvWOH0O7yRqa0+4bJzGpZLeAu1lRPFde9KZyzLmJoF6GaSUiZobulBidJedp47njKIJY6G3XPr4m9jXTWFv7ePVRE1fGpAGf5CZEO5VWyGlyzFWy/mFNLIs7G4OSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Wed, 4 Jun
 2025 09:37:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8813.018; Wed, 4 Jun 2025
 09:37:02 +0000
Message-ID: <42c2a74e-f02c-4790-9bd2-652472650a27@intel.com>
Date: Wed, 4 Jun 2025 15:06:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 16/17] drm/i915/display: Add function to configure
 PIPEDMC_EVT_CTL
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@intel.com>,
 <jani.nikula@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250603193522.2567092-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250603193522.2567092-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB8295:EE_
X-MS-Office365-Filtering-Correlation-Id: ef2b39dc-6421-4125-b9d0-08dda34b5bfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmU0Tk1kaUY2V3kxaHRPWHRtVGxBTGxycHdhV1NpRWFDMkJSS3p1eWdTYzh3?=
 =?utf-8?B?ZndrZmx4OG9MZlNNZ2E1TVZKRmp2S3JtTVJmOWpnOHFjZzdjZ3U3L1lucjB2?=
 =?utf-8?B?SklzRnJVQ1F6NWI2N1d2c0FOTEdudUVTS1ZSNnY1cngvelgrY2tuQldjWExX?=
 =?utf-8?B?bm5oK2lidUY5WWFQbkgyRzVwNGcvOENmWllXN0tDMExvTW05U1dxazBMZE11?=
 =?utf-8?B?S2l0NER6YmRkWHB0TWRMSG1NY0ZqcFBWQURHSmRTZzRyTzVGQU1LZnBTeno0?=
 =?utf-8?B?ZE0yLzBXaVI2S2VSbkVKSlRUMENHbWlRS0pYUldaSXZpdG9BS2QycWRrcGpq?=
 =?utf-8?B?c29YYWVrUHNaTUhZZkNwMmEzakcwTE5ucWRoNTgwNTVVRnpCdUh3QkRJUlYr?=
 =?utf-8?B?WlRVbmtHdmlUUFpFOWNtSTlkdmdrSjIxSDBqZVU2cUl4Mjk3OUdsWEcvb1Zy?=
 =?utf-8?B?Z0J2YUZSYnFKcXphU0dqUzBBcTBDbE5FVjR3c29pcXRIVnBKOVNKbmNqeFdn?=
 =?utf-8?B?M0gyMEZkcytIQkQzN0h6YWJ6YWFqamQ2em9HS085OWxIVTgrSW1QTTZRYllY?=
 =?utf-8?B?aFFYRGsrcU5lZ2g1aUt4YzdLS2l6Vk1aaGxRWXhTOURGVG0xbkhVeEExZTBy?=
 =?utf-8?B?UDlPYVZaNStJWWt4T1UyMk5yZC9UVUxSSThZcG4zQVc2KzR6SW9SNjNJc0l2?=
 =?utf-8?B?QnR3Q2FKQVRKUk1iaVR5dzkwVUxSLzEvVXhaUnZJUVAyTUdXcG9zTzB6NGtz?=
 =?utf-8?B?M3VxazNmalM0NkkyZVF2cDl6SHVOMFc5Vm02VVdUcTc2L216TlhBNnZqMUY2?=
 =?utf-8?B?TTh5NU1YTXZBZkdXUjgyZU9nK2NIaWJJeDNVRVFBMCtjajlvaHM0M2lwaStq?=
 =?utf-8?B?WlQwL0hQcUppbGNNTk8rZzhjZGkyNFhmT2ZVU1hUYk5NUU5sU3FUbmMrODk5?=
 =?utf-8?B?SVBqcGgvTG5CY2xndW5Td0RhY3FoNHpPNEE1di9WcGNmYnRzSmsycmVnZDBO?=
 =?utf-8?B?T0E2TWdMdUxHcVhZQlR4ckVrMGs0YXgvZVJLNjJKNVVxTnZqa2hwTDI0WWN6?=
 =?utf-8?B?ZzU1YzJGWE16cmhjaGY3RytUSVdOYjByN2ZTamV3S3B3eUFtYlE4eTMwa29E?=
 =?utf-8?B?UEpCZEFGenFYYStQa3dtVFFlQStLbHJkWUV4RzJrS2Z4cjFxb2JPL291Wnhk?=
 =?utf-8?B?ZEZxaEJPRjY4dWYwN1MybTlPc1g5bG0rd0lROGR1dHVTZ0Q3SFhQbjBpZU9Z?=
 =?utf-8?B?ZlFpb2Z6NFJ3Ukp0R05qNHdFYXZXM1k2Wk9hU0VoQXg1bjAwOFZHa1FWOTNL?=
 =?utf-8?B?ZWtTdkdkakJCM3l3VnEwRGdXL0poY1NsamZpdEt5SDhhZ1lMTS92K25rc2p2?=
 =?utf-8?B?aXRjV0lVR0kvbzltaE9yNWpVY3BwV0R4MVczYUVxZms2NnI5RllTZ1NqTnVj?=
 =?utf-8?B?ZFdiVHptNmN2YVhXT1pVSktGNnRhS2ZKbmg3QS9TZVlQaVc5TDlIekhvbjY3?=
 =?utf-8?B?NnRjaGt4bzJWaGJhM295dnJQSmZ1dytJUXFBNzl1d05rWlJoOGo3SDhRams4?=
 =?utf-8?B?UkVzMzdWRjB1REVpLzAvSWhUUEk1T2pUYnYvNEJocEtvN2lPS1RDQjNFUnFj?=
 =?utf-8?B?NmRuc0cwZU1TbEt2TDkvZmY0TjExMXlhUWJrMmthUnFtejE2SW5vR3F3YkJC?=
 =?utf-8?B?MXZmL05QeDlxZlFtMFIzZ0JYV2pVaGNwSzBCeEdWMHltYjdVSUlhdGozOFRh?=
 =?utf-8?B?ODk3WkZsY3B2ZnQ3TEtIS21mUXRMZ2JPOFZQK1dMOVNkSU9aWXBFZGNwNjFx?=
 =?utf-8?B?RzhCaFVlQVEzQU02QmYzRFFDQ1VkVGFCVUg3Zytjd1RtbHlTakx3TUdDSnFh?=
 =?utf-8?B?SGtIODBsdGJodWNYNzQ3MWh4QTB4TmhYSklMb2xUcFZDa3VOY2RhMXA2V0dJ?=
 =?utf-8?Q?qIom4PonUeM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bURqYlkwK2JVMHN5R01lL2FkSFc1UDBKU1NnWU5ZQVZzUnN6VHBMbkNMS3Jj?=
 =?utf-8?B?WW9YMWFmbDFneHNMNThuR25ralF5RmdiYmlQM1RlK3ZjM3dtcjkvdHNBYytm?=
 =?utf-8?B?TG1lMTlnMmIvMmwxc3hKNG9icURLM1VqV1BOQXI5M3FhV0UvZEtnRUJBLzA3?=
 =?utf-8?B?cHhwTDl1WXhIMktVY3RVblJXeU9ZUUFITndnY2VBdEdpQy9xdmFKUENGVFht?=
 =?utf-8?B?czVVYTdPVFdLbjZiK2FZdWc1VHQ3dUMxQjdGM0owVVdCM0xpVmtFTkQzZWRa?=
 =?utf-8?B?VDFPblBjYVNsUlpybzRmSzFQTWdBVGhkMjd2YmtHL01PWndoV0d4UkZWL1NU?=
 =?utf-8?B?eFNjeTFSdzlMUzFkSmZKSklnd21pYjhnMW9DWkRtTDJOUUNMejBVa0NDVG5X?=
 =?utf-8?B?WDVlNFZpTlRBK0VSeVdFSGRwU1dSNHhFRDBWN1RIZ1I1V3lRVU92L2ZmZWVN?=
 =?utf-8?B?d00vNXdLMDk5dlJFWkpuNUJzMzVjSkFBUmdHa0xqMXYwdEJBY29samJKQ1BY?=
 =?utf-8?B?ckZKTWdDZVlHWk9FRGJvb242UFJGUUs4NVVndnQ5QW5uYU5PZ3lmVnZUSllE?=
 =?utf-8?B?K2tWU1JFWlMvSk9sRERkdnY2VmpLSlNlMlJMZklpMHpJaVA0YjkybVpxWjdj?=
 =?utf-8?B?MXA4SGw0YkE2OFhZd2xqYVFPT081bEltNHpQcEIxZ0N6YVFobjdPOVZTSzBt?=
 =?utf-8?B?cVQ5SWJpaklFdEF5Z2FlYUx6WlVYRmFiVEtGZlJFSWRNS1NMVDY3VFErQ2NT?=
 =?utf-8?B?SWpiclNtNXZyNG5sSUVpWEo2ZnJQalFyN3ZjT1BLb3dWR3JpTVdpNkszQ0Fm?=
 =?utf-8?B?b1k4YzFhUkNoL3k4RFM5akdnS0V2em1UbkJwWkhIYnFEcmovTWp4aTdXeVky?=
 =?utf-8?B?QnNFdEtETzYySzJxOHppZFJLbVMyZEhmeEJMVXlNTUI1TUVkalluMHg2N2hz?=
 =?utf-8?B?Y1Fxb0NZVU9CbExwWjR4MnJzaGdkUW1QQzl2dURHMDBiRjVYeGRuZEtDZ0NE?=
 =?utf-8?B?Y0MwSVRqVGRCeEZQRjBYalZFTEF5ZTl5eUgyZG82blVPVkFkN245c0RUZElx?=
 =?utf-8?B?Z09UZWxDQkhWMlNHR2hmTElPZ013RE5xbWQ5OXpzanFqV1dwcHJPV0RKSmow?=
 =?utf-8?B?b1J5U05sS2M5Q2JDVGNxSVJQeGdBUzVWRDdMcDhkZ3loT1lFdVFEd0Q2REZl?=
 =?utf-8?B?M05rL2JqOEdON09MVmgxL05UR1FqSUZoOTFFNHBvTmtmLzRVRU5NeU5wdTVI?=
 =?utf-8?B?ZDQrY1cyQTh5ekhVMDJKRTVSQ0pVN0txVWVhOTJCUmdtcTVWc1lyUHFzM055?=
 =?utf-8?B?ci9rTVp3dWZxUjJ2S0w3RjJ5L3c2a2Q3SXR4U1FEVzZWcUZRV29YZ3ZxU2tz?=
 =?utf-8?B?bWF1UWxWTDdGYzFKL1BLbmluR2xNa1BDNHVnMndiY09yMDl4a0FCQlQ3ZUtN?=
 =?utf-8?B?a2tFckhObU40SldWZ2E3bGE4MytpSmh3eGFhRlFieU5ZT2lkOW5EWk5XUUNa?=
 =?utf-8?B?aWVLcTE0WSsyZThJbWVCK3FINGRTVG9VK3p2YXUxUWNQMW91dGg2T1VDY21x?=
 =?utf-8?B?b09KeWRJNGo5VE56cXpnMkRueVFiUDhDMWFQRnhSeStGeFRhUUNxMXpLOXBm?=
 =?utf-8?B?UUtXRnA4M0hhZzZlZUFOUVAvamQrWHVBVTdYQ0d1NGF4WkVycFBudmRCMExp?=
 =?utf-8?B?U1A2bExDbzY0ZUZScDhmR3h0ZTJSSVpLSEt5eG5qY3ZOc2lmQ2J6bCtYby9r?=
 =?utf-8?B?ek5Ua2FQaUI1bWFqQVNNOUNKRU9pZ2VEVVNBQnpiUWNUU09mMldOVktVQlhl?=
 =?utf-8?B?UUN6S1lSU3hPemlvL0p6QVpHeDJwSmtVMU4wbS9kMTNiTHFycHd5TE1EdkJW?=
 =?utf-8?B?YlVoMHRLRXEzR0gvWUNtQXlOMXkzMGVUMjFhc2R2NEpKdEswN0k3eFlFMFJS?=
 =?utf-8?B?YldRcitWdGYyUUZ0eWZSZUVVdjZPVyszTHNaR05USHBmaE42citIM1FkWVJ1?=
 =?utf-8?B?UUthOHZlWVVEemtYQ0YzVGplSVBLTmxvU2FmNlJCMjRXVjJRbGdKSWRuVFNP?=
 =?utf-8?B?a2dVWXNyM24xMzRudDhZK3VDeHUwbCt0ZW90QmVIUFNPcnpWWEpHSUlxSjYz?=
 =?utf-8?B?cHhkM1NrNU9CWGdoblN0RllERDRKczlMaEExU2xrZ0kwVG91OUkvNXZJd1NZ?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2b39dc-6421-4125-b9d0-08dda34b5bfe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2025 09:37:02.1293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LGTfBAkjnnBNqQfLYgsZvP2awzE5rr7ZeM6Dzbr6QWFx1Xb1/Z2H+iLNuiq1KsMqIlRRWiXpN7VIxc/Hc4zwP4sb9gy9gx6Vqw0ktjlk1ms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
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


On 6/4/2025 1:05 AM, Mitul Golani wrote:
> Configure PIPEDMC_EVT_CTL_3 register with required event flags.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_vrr.c |  8 ++++++--
>   3 files changed, 28 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 13652dd1ed2a..7c55334814e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -618,6 +618,26 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>   		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
>   }
>   
> +void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
> +					     enum pipe pipe, bool enable)
> +{
> +	u32 val;
> +
> +	if (enable)
> +		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
> +			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				       PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER);
> +	else
> +		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				     DMC_EVENT_FALSE) |
> +		      REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				     DMC_EVT_CTL_TYPE_EDGE_0_1);

Do we need to set bit DMC_EVT_CTL_TYPE_EDGE_0_1 for both enable/disable 
case.

If we do then perhaps `val` can be initialized with this value.

Regards,

Ankit

> +
> +	intel_de_write(display, PIPEDMC_EVT_CTL_3(pipe), val);
> +}
> +
>   /**
>    * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
>    * C-state exit
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 12912e80bbc6..e7a46e00caf1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -22,6 +22,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
>   void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
>   void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>   			  bool block);
> +void intel_dmc_configure_dc_balance_ctl_regs(struct intel_display *display,
> +					     enum pipe pipe, bool enable);
>   void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
>   							    enum pipe pipe, bool enable);
>   void intel_dmc_fini(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9cc6898399e4..068fa7e792ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -687,8 +687,10 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
>   
> -	if (crtc_state->vrr.dc_balance.enable)
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
>   		intel_pipedmc_dcb_enable(NULL, crtc);
> +	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -702,8 +704,10 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> -	if (old_crtc_state->vrr.dc_balance.enable)
> +	if (old_crtc_state->vrr.dc_balance.enable) {
>   		intel_pipedmc_dcb_disable(NULL, crtc);
> +		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
> +	}
>   
>   	ctl = trans_vrr_ctl(old_crtc_state);
>   	if (intel_vrr_always_use_vrr_tg(display))
