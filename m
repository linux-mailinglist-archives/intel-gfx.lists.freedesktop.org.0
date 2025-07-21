Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E633EB0C611
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 16:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1808510E399;
	Mon, 21 Jul 2025 14:18:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWG5jmOL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EDFA10E289;
 Mon, 21 Jul 2025 14:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753107501; x=1784643501;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ZmIMsQ+yB9aI+mkJAnUO3vNd0P0nvpIHAn3r6QJrG4s=;
 b=kWG5jmOLWiDPL+C65aYj4Gq58MNQNKioqZRu26m7HXqFw7bGvnIL9wG+
 JKZPvO4BWAAbJMEh6ulkcgPj/MPR9C/uoSWphD3R//o5QNcvT+WFF/WcY
 pTh66yJ0BTda0fE49zvVyFbkrOtZxKmikUovKXHI2gGBExzTEBKk+OF3B
 RJWkPlQ2LimtroPYiKo2RBPzzz1lstAOtbqSvZ2N/TDXEfDSzlrhySB0E
 iAFdTgL3A7qWEs0/mG24RQ1UGzSHVBLDsyzWjfVlIBe6HtQcpGM6YBL8g
 pAWZ0IszE3Miz4QFF6nBrxNK++v7Rgrj19dI5ph4QLvQWysRTyXfb2crW Q==;
X-CSE-ConnectionGUID: KdvAvFzoT/yN+QBIbR/ydg==
X-CSE-MsgGUID: FlbRFfA2Q/SY1ZoR0Xyo4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="57945003"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="57945003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 07:18:20 -0700
X-CSE-ConnectionGUID: UrcfJ6otRjG6A5r2uLHulw==
X-CSE-MsgGUID: XeHVF1vxSyamqAUkCvbSDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="159396009"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 07:18:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 07:18:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 07:18:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.84) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 07:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCFwCpbN/34d7AhQ2CiDXvOY1NYK88Av9NQF2yAnoSV6/hb5fs55Q737j86EA6LZbfUMdYDkUaHhYmBY9G95rrfd77JBPXU0BL6iUT6bW5w3HDCYMyOOGB7LBxGGGstwGDbj8ejxT/dVVBQJa+YHAJuWu8/GuCh0CVuisQyq8Rz0xuzphV5CPSXxkog1qGRTk91qX7ZGHW9cB8Ilxw2/caCmJBusdDrHpzJi+zg72SqUSeXLrZ4yI1t2N/2LzTT1f4AuwDPXhGx9FyvqNDK+2q4bjSk7jVrkEO1HfRXVJwGNndjp02wicShQVn41w97cgGdks4FqWkLAwDq3UW0sdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kBJk7xqCvXHRT7oJ8TvCm0azw76sBBth5C9CYp/DIZs=;
 b=ce6It7FemBZJfkX1zdGKQx42nDo1mDsPlbRPro+frxk8XSESqSjayawPKOObjY5xfZxaS1G0O38SJiPCQ8nt5Y/Il4uPHzrVr8AykoK2fybZyDV8F5lMhKruTGRUXwUShGCbBlKhz/P3iQgUxCpQmkpssJnKrtWhuVRbqMHyttGbw+P0ZD5Zu2gFhOrMqIY/GX5CIyV8vS/K48pXEwyhpOI3xAa217V/lDyjqOrv2xDQMNClI9yB5Vp3AgvtY0mTFJJkDVDDIDSgon9X4FtO/hOvcMWZBvemfVkA9Dv/5Iz6f/ipzcPonAOe60mJw6rdsOulBeT114x662xZGkh9Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8523.namprd11.prod.outlook.com (2603:10b6:806:3b5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 14:18:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Mon, 21 Jul 2025
 14:18:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aHt1hKImGHBVXDBI@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
 <aHqBlQ-yY2Lc8TuV@ideak-desk>
 <175286978035.1474.9787252535829745230@intel.com>
 <aHt1hKImGHBVXDBI@ideak-desk>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Mon, 21 Jul 2025 11:17:54 -0300
Message-ID: <175310747496.16862.4788947670483560073@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0183.namprd04.prod.outlook.com
 (2603:10b6:303:86::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8523:EE_
X-MS-Office365-Filtering-Correlation-Id: 13dbfb55-4ba4-481c-243c-08ddc86165cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3ZmckNpVVBVQmlSdW53N2dnU3F3cEp2QUpITmdQUUt6M2JUelhUVVJOMjJ3?=
 =?utf-8?B?TURmSmRCWi9GVmY2Z0NkUkhZcENyNzRBOGVXcE51VWVUdWZiRUpRUzZEdHhT?=
 =?utf-8?B?NWpKTUdJNngwcjZieHdEM1Q4Q1kyWEcyL0ZMRGVyZDZqWG9XYmhEZ2laMlpZ?=
 =?utf-8?B?VFdvUlFvcE00T1pjZ2tSOHVyaTNhVDNHRHhoczdoZHhva0w3UzJibXhpdm9C?=
 =?utf-8?B?ZnRDeGZtcWsrMHpWUkJSUFZtN0lUblUrMUt0RHdnWnNVL010bzc4TXNWMnZ1?=
 =?utf-8?B?S2JjR3BWSWwrL2xtTWkwZDBoelZYN0JRdHBLTVV2eHYzT3p6ZWgva0YxeExC?=
 =?utf-8?B?Z3RyV0hmQVF5RHl2d083aXFHQ3BpVmdoSkdhdUFDOEJJdTBlRUVoWHFuNmcr?=
 =?utf-8?B?cWxRWDZuS0NydVJpVnRSMDhCRnV0Y0xTZWNnU0JtSkdxUzNhc3lRVE5LeXNX?=
 =?utf-8?B?VkN3Ti9Dd2JseWEyU25tSXkrR0djc1FxZkN5QW1HL3N5T0JwZllIU1dLaW9J?=
 =?utf-8?B?OVMvVWUybVROeElxdmhScWhoejdLb2hJOFM0VTQ5QXYwQ1FYY1haNStvWVZt?=
 =?utf-8?B?MmlDMFNTNXp5WEFZTHRrMHYrNllRRS9xRitLSVNQcEN4Yk1CcmxENmpYeFV2?=
 =?utf-8?B?RVVHWTd2Y3JOQ1RQMTFpTHdmZnoyY2ZEcFNKZ3FONGo0WEdsWDVZQTFXU1Iz?=
 =?utf-8?B?VU9kZEdqNG1ZcG5rNVJWdERZWjM3SlIvS04yWE5ZYWpvMFNMTmNXaDdwRDUr?=
 =?utf-8?B?aXl5eUZ6NENPUUE3RHljZTcvZHZjdzNXb3BvNk9DaEtrZzhWdjJBem9HZVVL?=
 =?utf-8?B?bEh1N0FidFJjR2lDcmpwY0E1ck5raEhrTkUxWmx3am5EdkZjS01vZXFKTEto?=
 =?utf-8?B?K1ZjdlBPUkNQRS92MzVidURGQiswWDRvMkU1bjROZ21oRW1xbmwwQS9LQnpj?=
 =?utf-8?B?U1ludTdQS0NSUGZQdXhadEFWUnFuZ2dUYTNMek5YRkRpNG1sRkk2ZHNPQmpS?=
 =?utf-8?B?bWFTeno5RkYwcE5vMTJuRitSL1FDM1l6V1VyVEZZbkhCOHVSOGNXNCsrQUhS?=
 =?utf-8?B?b25GdTFLOU5VcUMrL0hlR2dYWVJQeFAvOURlR1VBdzNiTHIzR0VtKzdlNlJ2?=
 =?utf-8?B?YXkvVmQvbnZtTXYrL2wrSGM0UjRucWxnYnVHUzUxRHY1TDNUNHVTSGdkcGRk?=
 =?utf-8?B?eVpTOC9pMTRUbXg2RTFrakZ0eFYwUy9kV0s4TDRWNnVjWGw3dDUvRmdnN1V5?=
 =?utf-8?B?aTJUcUlYc3d0d0NwNUw2bVAxQ2JoVzdzWHowYmgwdXp4a2ViQjN6RDllb2RT?=
 =?utf-8?B?WEhIWXlweUpiVDFiMHZCM0pZM3ZJSUF5aThlbDZacmJtZ08vWGYwNUg5TXlt?=
 =?utf-8?B?YVBaWU45cXRTY0pZS0RSN3JZVmZqRzFFY0d5bnBvdy85UnZKMU5vM1NxbzNy?=
 =?utf-8?B?alZTT3VGZzlsa1k3Tm00VnQwV3BFQ1ZOeWVnZlFKN1ZKY1ROY1hRL0NNa1d2?=
 =?utf-8?B?YzRBL3M3RTFubDRWcXFCZzhlNE90RFV4bHpRU3JrTzBQSTNnNzZrTmZvNXl5?=
 =?utf-8?B?cjh0T0pVcWFETkxvZ1U0aVJtdTdlUlBMcGRud3FGVEhKODlzWWwwL2pSSkVW?=
 =?utf-8?B?L05lTmd2MHJvTkt5MUZsQjJBSDdkUmg5akdRS29nWUwvV05nMXNzdDZWaDdL?=
 =?utf-8?B?bnhMV3J3WEpaS2hUc3NXTXVYd0dRLzNxS0ZUQXFwYkhtTmJ5ZzA4ZjhET0ky?=
 =?utf-8?B?cGoyaVhoOHlFUndWMlpNaGxqcGtSUnloYXFYOHRxTmZvSXZTeXl6UHlEZHd5?=
 =?utf-8?B?a0FlV09HNStqeUswV1FXWVpOaTZTR3hFdkFod0ZzOU5rSmQ4cklmNm1DL0NL?=
 =?utf-8?B?SHprbHl4cS9kd2ZxaWIvZ1BEdWhZN1NmUnhPTUZkaGloejUxRUR4azhFK0R5?=
 =?utf-8?B?bjNvSys3VFZWZkVPbjVhR3hxYWpNeEZpc051eU9CYlhWdnhxRDJuMlBzeFZC?=
 =?utf-8?B?SHVHNjV3c0J3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDRNUjA2QjhUMCtZMHdpRnlBK2MxWlV1WHk2QWFGbHRKMTB1U2wzVFhaVDc1?=
 =?utf-8?B?VVNCbUl4UytYMFVPT0ZYRTlpR2svQmxSalN1dXpRQlJ4WTh5UERSOUhyRnlO?=
 =?utf-8?B?aDhuNDNIWkVkM2dBS3hFazZ3ZzVRSkZzc0RmMzZpbnpReC9SUyt3WUthTEhI?=
 =?utf-8?B?WXRuWHN5TVpDVCtBRWZoUkhZU3V0OWJLbms5Vnl4alJXUVN1UThTb2MvMjk3?=
 =?utf-8?B?Ym12bTV2OWRaYVNXSUlVR29BT25WTi8vek9UYS9weDlDTE1memQwZXphN3NL?=
 =?utf-8?B?aGFpTE9BemR3SllNSEgyQTBUTnd5QnpkR1VZTXBjWmRaU0JlMk8xSHJCdzNu?=
 =?utf-8?B?YjhNK3VRbHh2S0hONkRRT0sxL3JScUJseDFYeVBoUWJzd2g3ZWVKVnREOGsy?=
 =?utf-8?B?YThGMVdSMWZ3Q3U3MEtEeW5ha0xiNitBbE5LNG9jSGpMeWhXenEyQy9EQUh4?=
 =?utf-8?B?Yy9mald3YUxyZW5nVDVTK0tSRVB3WE11MEt6QlZoRjltc21ZdVlKUGFiY2pz?=
 =?utf-8?B?clpENmc5dXU5VzMzdTJxcXN6VkNtSERPQlhXbTRheVBubWhJczBOTk1SamtD?=
 =?utf-8?B?aWRRdDBQcjRLL2Y4S1FZaHZSdkpnaTFyZE4rbnpyY1hPc0Z1cEZ3bWE4WUpS?=
 =?utf-8?B?cTBqLzZSeFcxbmw1NkJjc0xPYVVicjdsNUxEV2VzOE1iM2FWbVlJZTVLSGk3?=
 =?utf-8?B?MzB5elJXaUFUOUplb0p3eDg4QzF2LzY1dkd6S09GN0RxRlhmd0NXT1JLK3Jv?=
 =?utf-8?B?RzZ4VWgraDQ1ZWRSajhPOU9oUUpBZGxJTlE4UHU5Rm83UHJkUlZUdmdLeHpU?=
 =?utf-8?B?a1dRUmZpcDJCV2lIK0R5aklldkZ2amJ5dHFqdFRkK3NTMUFWYkt3Q1Y5eTNn?=
 =?utf-8?B?VmZ5ZTBSZzhWVTlrcUdXeW54MjBDQ084VmJxS3pNb3lLaXhGY0RydjluRm5H?=
 =?utf-8?B?THNpZ3ZWQjQ4TzAxaFRkYjIwUWhUZFVDMkQrQU12a2hxaDdRUGhpTnFZUE1l?=
 =?utf-8?B?aXRPdXQzd0E4bFBOS0QrNjFLRTNtOTZrd2pjMmc0QlB0UXJUYmg1QWQrdHI4?=
 =?utf-8?B?VlhoMnQrMlhTZkl0a2o4Qm00SnIwaWNmdUs1K0ZZZVViQ1JJSGVpZ09peEhy?=
 =?utf-8?B?L25aakpZWXBubXhNTFo0MEdaRDlvTDJsUHk4ZEMwM1p6Zmp6eWdiQkpFeTVB?=
 =?utf-8?B?TDJzdjNuYWdveGNINWtEd1NHczlYNDBHT0ZYazVXSEcxTEFGZkdIN2NmZldU?=
 =?utf-8?B?WmRYVmFWa3FoVkNRUWxjR0pIZjgwSmVkNnNUOEVoblVoc3p6enZjVlM1T2lF?=
 =?utf-8?B?eStqaTRYellzdDl5eS8zM1lFRGVJYXRNMzRvcC9nSkR1VVJiZFdxc1hLZVkx?=
 =?utf-8?B?Uk5FbjluQmp0U3ZWcWtuSHh1U25OanVpSloycWhkcjJQUnlIN3c3bytUTWtm?=
 =?utf-8?B?SWk1VGpabk1TQmRWbkNIRElLMUJrcGcyMWNmM3F2eVU4L2pyQnNJM3lVWWJk?=
 =?utf-8?B?cjV1bFBkRWxnUWRBVW1BdWxBaU5MSUM1Nml2UXRNUU1XY0lCMW1GMzJMdFZM?=
 =?utf-8?B?NDh3TEhPYWY0cGVkeExkdm1sZitOaHN4QjdQT2ZNb2dEMkkxYVlpK1daT253?=
 =?utf-8?B?d0VxQVpvaFhRKzg0dHVtdFNxMlJtRDNldFdaQ1B4SE1kaEhGR2h2bmVHc0ZQ?=
 =?utf-8?B?TWU4dkhTbnNMcHJNT2s1M3Y0NWhTL09vTk84V09uWUxPeitHKy9FZkZRQkxq?=
 =?utf-8?B?QzhNdnU5RmkxVkhaSWRPWTFqZ3ZpK1g2WWludDNUemVOUTN0dGorY1FWU3Y3?=
 =?utf-8?B?OTg1dWJva0lITXNHYVVrbjBQRzQrWnRqQU5RZ1U4dGMxUC9XY2J4MGZHdHJV?=
 =?utf-8?B?R1pNSGFOYjA1dlpVQVRoS3VSejJ5R3lmUll2SXhNcEVBVmc3QnUwdWc5c0tq?=
 =?utf-8?B?dWdXRFhnTEhSZE1wclZNN1FNaWVCdENyL1U4WjQxYmIrZXFIOWZSSFlmc3Y2?=
 =?utf-8?B?OWhMcittNmhoK3lWdzcycEVFck5IOGFPM2h6VVJsVTQ5bC9GYUEzR2NzNDY5?=
 =?utf-8?B?UExXNG9TMlRQSXVwSDlncFlJQ2pzd1JIYTlNTWNGYzhCT1B6b3phSTlRRkla?=
 =?utf-8?B?Qy9iTGh6a1hOMUVzWHo3bUt1WVh6SkIvcU1LbTR0MzUvLzY1TEpTSW1OUEtw?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13dbfb55-4ba4-481c-243c-08ddc86165cf
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 14:18:00.5243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9VN+A9DsQjAJcbMh8P1EKWj1NKD+bvS4WZ968jBvGXIyyJ8NlrzexsFhdDGRLJpwkxC6ltuE3GOCYu3PlYrBHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8523
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

Quoting Imre Deak (2025-07-19 07:37:56-03:00)
>On Fri, Jul 18, 2025 at 05:16:20PM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-07-18 14:17:09-03:00)
>> >On Fri, Jul 18, 2025 at 01:33:26PM -0300, Gustavo Sousa wrote:
>> >> Quoting Imre Deak (2025-07-18 12:54:11-03:00)
>> >> >On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
>> >> >> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
>> >> >> >Some power wells are only relevant for certain display pipes. Add=
 a check
>> >> >> >to ensure we only allocate and initialize power wells whose assoc=
iated
>> >> >> >pipes are available on the platform.
>> >> >> >
>> >> >> >This avoids unnecessary mapping of power wells, particularly when=
 platforms
>> >> >> >support a subset of pipes described in the power well descriptors=
.
>> >> >> >
>> >> >> >Suggested-by: Imre Deak <imre.deak@intel.com>
>> >> >> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel=
.com>
>> >> >> >---
>> >> >> > .../i915/display/intel_display_power_map.c    | 19 +++++++++++++=
++++--
>> >> >> > 1 file changed, 17 insertions(+), 2 deletions(-)
>> >> >> >
>> >> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map=
.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >> >index 77268802b55e..ca73e4084354 100644
>> >> >> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const =
struct i915_power_well_instance *inst,
>> >> >> >                 for_each_power_well_instance_in_desc_list((_desc=
s)->list, (_descs)->count, \
>> >> >> >                                                           (_desc=
), (_inst))
>> >> >> >=20
>> >> >> >+static bool
>> >> >> >+is_power_well_available(struct intel_display *display, const str=
uct i915_power_well_desc *desc)
>> >> >> >+{
>> >> >> >+        if (desc->irq_pipe_mask &&
>> >> >> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display=
)->pipe_mask))
>> >> >>=20
>> >> >> According to irq_pipe_mask's documentation, that member contains a=
 "mask
>> >> >> of pipes whose IRQ logic is backed by the pw". I think we are
>> >> >> overloading the meaning of that field with this logic.
>> >> >>=20
>> >> >> * Do we have guarantees that irq_pipe_mask will always be associat=
ed
>> >> >>   with the power well that powers the pipe?
>> >> >
>> >> >It is the case on all the platforms and so it also provides the requ=
ired
>> >> >way to identify the power well for a particular pipe. irq_pipe_mask
>> >> >could be renamed to pipe_mask accordingly.
>> >>=20
>> >> I mean, that *exclusively* powers the pipe(s).
>> >>=20
>> >> As an example, bdw_pwdoms_display appears to be responsible not only =
for
>> >> pipe B and C, but also ddi lanes and audio, for example.
>> >
>> >Yes, these power wells do support other functionalities as well and so
>> >they must be registered unconditionally. pipe_mask would still be
>> >correctly indicating that this is the power well for the pipes in the
>> >mask; these power wells wouldn't be skipped either during registration,
>> >since that logic must use a platform pipe power well mask vs. a
>> >non-fused-off pipe mask.
>>=20
>> Yep. I think that works for the platforms that we have today. That said,
>> this whole thing started because I had the impression that pipe D was
>> fused-off and that power wells for fused-off pipes should not be
>> touched.
>>=20
>> It turns out I was wrong in both cases:
>>=20
>>  * I just got confirmation from hardware team that WCL does not have
>>    pipe D neither power well D.
>
>Ok, so on WCL TGL_DFSM_PIPE_D_DISABLE is always set. I wonder if it'd
>make sense to add an assert for this somewhere
>(__intel_display_device_info_runtime_init() ?), so that the assumptions
>on this elsewhere are always correct.

Hm. Not sure. I'm thinking of a different approach.

According to Bspec, a pipe's "*_DFSM_PIPE_*_DISABLE" bit mean that the
pipe capability has been disabled. That brings brings the assumption
that the capability is there in the hardware.

So, I'm wondering if the respective "*_DFSM_PIPE_*_DISABLE" bit for a
pipe that does not exist in the display IP should rather be treated as
"don't care", that is, only trust that bit if we know the display IP has
the respective pipe.

In both cases (assert suggestion vs what I just wrote above), I think we
would need to map display version 30.02 to a new struct
intel_display_device_info that has the correct
__runtime_defaults.pipe_mask.

--
Gustavo Sousa

>
>Would it make sense to clarify on the power well bspec page that PW_D is
>not present on WCL?
>
>I presume the "Block Diagram"s, like the one at index/74286, show what
>pipes/DDIs are present in the IP, which may be fused off or not
>wired/enabled at all like DDI TC3/4, for all of which the HW power wells
>exist and so the driver must register a power well for them regardless
>of the fused state or never being wired/enabled.
>
>DDI TC3/4 are never wired on WCL, so I'd still confirm the above, i.e.
>do the PORT_AUX_CTL_USBC3/4 registers exist indeed (they do based on the
>spec) and do the 'PHY Power Request' / 'PHY Power State' flags get
>updated if the request bit is set/cleared as expected?
>
>>  * As you explained in a previous reply, the driver needs to deal with
>>    power wells of fused-off pipes to ensure those get properly powered
>>    off in case whatever was controlling display before the driver takes
>>    control let them enabled.
>>=20
>> So, I guess we could either
>>=20
>>   (1) go back to Chaitanya's original patch;
>>   (2) or tweak this patch to use a mask of pipes supported by the
>>       display IP instead of non-fused-off ones.
>>=20
>> I personally would prefer (1), since then we would make the presence of
>> power wells and mapping more explicit in the code;
>
>Agreed, I'd also prefer (1). I'd still check if registering the
>AUX_TC3/4 power wells is correct based on the above.
>
>Apart from all the above, something that could be done as a follow-up:
>POWER_DOMAIN_INIT should be removed eventually. It was initially added
>to make sure that all HW blocks accessed during HW readout are powered.
>By now all of these accesses should get an explicit power reference, so
>POWER_DOMAIN_INIT isn't reqiured for that any more.
>
>The HW readout during driver loading/resume still needs to hold
>POWER_DOMAIN_INIT though (in intel_modeset_setup_hw_state()), because
>w/o that the explicit power references get/put during readout would
>incorrectly disable a power well inherited by the driver in the enabled
>state for an enabled pipe/port etc. So this needs another solution
>before POWER_DOMAIN_INIT could be removed.
>
>> but I wouldn't be against (2).
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >> >> * If the power well that has irq_pipe_mask is also used to power
>> >> >>   something else than the pipes, we could have issues if pipes in =
that
>> >> >>   mask are fused off.
>> >> >>
>> >> >> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT ma=
p to
>> >> >> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_m=
ask. I
>> >> >> have some idea of how to do that without rewriting code to use a
>> >> >> hierarchical structure (which IMO would be ideal, but takes more
>> >> >> effort).
>> >> >>=20
>> >> >> The idea is to, during runtime and initialization of the mapping, =
set
>> >> >> the bit respective to POWER_DOMAIN_INIT in each power well that ha=
s the
>> >> >> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That woul=
d
>> >> >> also require removing the POWER_DOMAIN_INIT from the static mappin=
g for
>> >> >> power wells directly responsible for POWER_DOMAIN_PIPE_*.
>> >> >
>> >> >Power wells that don't exist on a platform shouldn't be registered i=
n
>> >> >the first place, so it's not enough to only remove them from the pow=
er
>> >> >well->domain mapping, while still registering the power well. Otherw=
ise
>> >> >these non-existant power wells would still be accessed while disabli=
ng
>> >> >any unused power well during driver loading/resume. Also these power
>> >> >wells non-existant on a platform would be incorrectly listed in debu=
gfs
>> >> >and other state dumps.
>> >> >
>> >> >However, I realized that pipe power wells that do exist on a platfor=
m,
>> >> >but for which the corresponing pipe is fused off (for instance pipe
>> >> >A/B/C on WCL) we still need to register the power well. On some
>> >> >platforms at least such power wells may be enabled after HW reset/by
>> >> >BIOS and so these still need to be checked and disabled if needed du=
ring
>> >> >driver loading/resume. I.e. instead of the above
>> >>=20
>> >> Ah, I see. Yeah, that makes sense. Thanks for the details!
>> >>=20
>> >> Well, although Bspec overview page tells that WCL's display has only
>> >> pipes A, B and C, the page specific for power wells still lists power
>> >> well D. So I'm wondering if WCL display just has pipe D fused off and
>> >> the power well still exists or if power well D being listed in Bspec =
is
>> >> just a documentation mistake. I'll check with the hardware team.
>> >>=20
>> >> >
>> >> >DISPLAY_RUNTIME_INFO(display)->pipe_mask
>> >> >
>> >> >something like the following should be used:
>> >> >
>> >> >u8 pipe_pw_mask(display)
>> >> >{
>> >> >        if (DISPLAY_VERx100(display) =3D=3D 3002)
>> >> >                return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
>> >> >
>> >> >        return BIT(I915_MAX_PIPES + 1) - 1;
>> >> >}
>> >>=20
>> >> Well, if power well D does not exist indeed (i.e. not a case of pipe =
D
>> >> fused-off), we need either this above or maybe go back to Chaitanya's
>> >> original patch.
>> >>=20
>> >> I think I prefer the original patch, making the power well mapping
>> >> explicit.
>> >>=20
>> >> --
>> >> Gustavo Sousa
>> >>=20
>> >> >
>> >> >> --
>> >> >> Gustavo Sousa
>> >> >>=20
>> >> >> >+                return false;
>> >> >> >+
>> >> >> >+        return true;
>> >> >> >+}
>> >> >> >+
>> >> >> > static int
>> >> >> > __set_power_wells(struct i915_power_domains *power_domains,
>> >> >> >                   const struct i915_power_well_desc_list *power_=
well_descs,
>> >> >> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domain=
s *power_domains,
>> >> >> >         int power_well_count =3D 0;
>> >> >> >         int plt_idx =3D 0;
>> >> >> >=20
>> >> >> >-        for_each_power_well_instance(power_well_descs, power_wel=
l_descs_sz, desc_list, desc, inst)
>> >> >> >-                power_well_count++;
>> >> >> >+        for_each_power_well_instance(power_well_descs, power_wel=
l_descs_sz, desc_list, desc, inst) {
>> >> >> >+                if (is_power_well_available(display, desc))
>> >> >> >+                        power_well_count++;
>> >> >> >+        }
>> >> >> >=20
>> >> >> >         power_domains->power_well_count =3D power_well_count;
>> >> >> >         power_domains->power_wells =3D
>> >> >> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains=
 *power_domains,
>> >> >> >                 struct i915_power_well *pw =3D &power_domains->p=
ower_wells[plt_idx];
>> >> >> >                 enum i915_power_well_id id =3D inst->id;
>> >> >> >=20
>> >> >> >+                if (!is_power_well_available(display, desc))
>> >> >> >+                        continue;
>> >> >> >+
>> >> >> >                 pw->desc =3D desc;
>> >> >> >                 drm_WARN_ON(display->drm,
>> >> >> >                             overflows_type(inst - desc->instance=
s->list, pw->instance_idx));
>> >> >> >--=20
>> >> >> >2.25.1
>> >> >> >
