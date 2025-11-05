Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2064DC361F3
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D4510E082;
	Wed,  5 Nov 2025 14:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fc9C0/XM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD4E10E082;
 Wed,  5 Nov 2025 14:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762353784; x=1793889784;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=SJtx0A/ANEnbyEsBd8hL/lIv7evfi5U0YbSOtnqymLQ=;
 b=fc9C0/XM8EUpXhodCR1molbl1gvEuKCDlMr9lsRycKbrVBBGrJtuAtsU
 FLknS/KCUWq+RjqdEFgh3zmzIghzWfaps3IPvYaTYMiSWDFRohnPsFiN8
 +rpR37ETypmooq54Uz0LvxIJnPPmfIe8Cm+/BLEpYNtg/0TTUioUbOlDB
 CWnVD1cLczCStEDzOBsGkWDPUMDRhXK9kEWtfPliUs4OCptys6wJceiUJ
 tkPjRhkg8FfgIUJ8BSDlfsDl4vCEX7Nrb7obOa48IRFvNDh763/DDxiR/
 wAz4cbg06Oz9DuOwS5UvvUipjcyCtnuVoKCU2MliNPx0CILx3HNHKaEK4 g==;
X-CSE-ConnectionGUID: e0CmGy+LQbeD7OKSUWpZJA==
X-CSE-MsgGUID: Dz0m4lNqRNqG6Eglr7YE9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="68328606"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="68328606"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:43:03 -0800
X-CSE-ConnectionGUID: +YcWlJhrQoahNa1pICCdoQ==
X-CSE-MsgGUID: eqCULPCZS6uPIl9mymjZpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191830072"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:43:03 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 06:43:02 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 06:43:02 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 06:43:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Duh2VJifWbGCjY4SFy7DqZFG4XYD6T5aNQ/u6ukt0j4OyJqj27IfyQqXUM8wQa6whI5eiF9HYY1Zt4aQ1Zg9AQecfemYZz6PuMz/pl3UK4mo7F9RCbk8sgm7cJGR6MNWbU7ERV54KBsBmNEV1374Y1ehaphToTN/Dw+CD3gmJe+lranPkErdONtLUKItON4UH8Rfvj8XAnHXTAVoivZ7xiRySoYDf2HE3obz31NP/ZJ77YO+1LC2mfPMFlX0GzjwIDM7/+EnJHVCCKle3bJaHWtUDQ4maSHyrzHYPnLOwVFy+z7V/cmIlSuOliIZZElqX3lMH2C1eDRwZMv5fbrQoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CFIL14+0iYw3VRKZ1Bbf91eQZKUnoTLw1KSpW3fN37A=;
 b=Yr1PzhR9Q5eON3uy7IXMV3jtsaYlp4dg6klxI9kdyOT38vTgzZDWjPjIZQK4cLqOcxTzgAHQaoQHp8Ej5Vrf3/6qBRQMi5Ynw9jf+YP8qok14s+xg4Q/TdZk7M/TwwH+xyPQWsaatQqVFPcP6WLtaK0IKLoz7QHb8AEhU4bTaYcae9TFGV3pW8iuplv+9B930omnejC44bQ0OdPi/Ed5o5XWh023vU2MmtoXL/zQCU4WABV0dwTHtZ8JGbQvrFD108nKHppjiCNEXEdm9eWjgXarl5oEu13IwN+NQX7tH64CypEgEZJbaF3Gj2Vh/bRjI9odgmJ5O20FoefXdewnyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9205.namprd11.prod.outlook.com (2603:10b6:208:573::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 14:42:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.007; Wed, 5 Nov 2025
 14:42:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251103215111.GW1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-16-00e87b510ae7@intel.com>
 <20251103215111.GW1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v3 16/29] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 5 Nov 2025 11:42:54 -0300
Message-ID: <176235377477.3117.1226743618202381202@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR20CA0036.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::49) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9205:EE_
X-MS-Office365-Filtering-Correlation-Id: bb85436a-b97d-444b-69e0-08de1c799d3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHV6S1dvUlhzenVxdEI1YjkycE1RYnJxOTJYVG5OWSs0QWYwdkNlWjhWb2RS?=
 =?utf-8?B?SExrcVdpU0FZRVBma3lLNWs1WTQrdVd3RHhDU1FYZHdYZHlnSkwwZHBEN3N5?=
 =?utf-8?B?OTVEMm1ibjQzMm81TGlvR05hN2hLV1pQQnp4UGdML2VJdGNCRitFN1hVSG84?=
 =?utf-8?B?dHk4azczNnZZWjVES3NBZDZLcFpHQ0g3RkJuMDRRY2ZLL1VMVTBmNTNLa2xG?=
 =?utf-8?B?MFBJeG54S0pXMUo0Y0JtVUsrNWFjUHVSdXN4dXZqbUMwd1JRYU9pemhPQUFV?=
 =?utf-8?B?azRvMTBSUURoeTFlRjVoQnJCdDRwOEhWYVVFRU9EY2prbzFaU0M5akUvOGhT?=
 =?utf-8?B?TDVqSlRhVVRXa3U4R3FEbkFHcnBNbFJQMTdxN2dvWS9KNmNOSHVYclVzczdF?=
 =?utf-8?B?bHJwbjZCcEEwSll4UzV6NThWSy9GNHdIYU1MaXpPVms1eGhkbFVhZDhDY0Q5?=
 =?utf-8?B?b3o4L0w1anV2R1hET3EyU0NWYnl4dEtqalIwbDA2WWFLOGFTcjIvNjZRd3ov?=
 =?utf-8?B?eE9OaDkyamNicms0RTlGUldYWkRLMHNIbWl2UHFzdVNWbGxEM2FZRjNaTGVR?=
 =?utf-8?B?T2hrOC94WjlWSDQrc3VZU0JSZ3JiNjAyV1gwMkx4QXZ0WGNUdE5kRnBHY1Zp?=
 =?utf-8?B?NWlDRVRuVGJibnlUdldhUGNNeU82SjZSemNRWmlnYUtjaGJTQnppMHhmYmhy?=
 =?utf-8?B?MVYxY2w1RFFZRVVrT3IyaFlZTkMzT2V4aWdscGtNTUhFbXdWcmM0WjJyaVRu?=
 =?utf-8?B?RFoxVTZkaGxnejdkeEg4dTdGMkFOWTUwNnJNaTA3RHFKbFFFRnRESVhiTWtx?=
 =?utf-8?B?SUZseC96UFRTZ0lRbkRGNHV1TFlBUXRBVHVib3lZWFhXU3BOVWl6Q0dCUjZz?=
 =?utf-8?B?aWhXWlJVdU01YUJZTXBsclcrUWRiQUlJTnVDYzIxeXI0TUY3R0VLTHh6T3Zz?=
 =?utf-8?B?TnZHcERxeE1UNGJhalN6Vk9GNXdTZGZ2dDlGTmZhamRTUVU1bHJqUE1ta05U?=
 =?utf-8?B?RkpIdmg3YmRzd1pTcEpDVGlHVEpISUJyY3dob3pYTFA1QkRoYks2MXN5bENj?=
 =?utf-8?B?ZU53TCt2aDYwOW1USDZSWWdtNm9TS1JoR1ZHMzB5RVhSVWhaN0k2TmpGR08w?=
 =?utf-8?B?c1lGYkJ5VnVIanRRclJ2bFlndE9DaUJnWlRPN09yc1hLTDgwVUw3b2ErVDdr?=
 =?utf-8?B?RGVsTDVES2RwZEhHOVljWEEvSnRRemxTMFgyQWVvZGttMis1ajlaZWQ0ZVMz?=
 =?utf-8?B?UGdYUHkrRUtPMWt3S1JDS0pqODU3bTJkbzBmZHcyQ0JDa3djQzRNaEN3azRU?=
 =?utf-8?B?Q05PUk1UM05PUDBUY2pNWkZFOGNtNW45ZGNIanRwRHA1aWJNZENpVVcwVzZk?=
 =?utf-8?B?T3cwSHUyUVpzdmtGbmpQekV5bUtNd2xBbkM5MU9iMitvVDlhMldBVGg1SUJx?=
 =?utf-8?B?R2cvWktsL3Z5eFdEdXdjSFFzNkdzVkdYaFgzdVI5MlpVRjBrR3lPQTh3TEZw?=
 =?utf-8?B?R0JnSXRWcHpaYlZPUXhvMHAvbVhuSXJib2FOc0FpYnNhVDVydnpnOHJ0elJ5?=
 =?utf-8?B?d3pUaHlRbWV6TTFkNlJ3WUNKSWJNNDJLRUFaWEVwRGZSUlFiUlEwUmt2R1lI?=
 =?utf-8?B?QkFNZ2RSY2NGRSt4eWJQZ01GQTd6SHBoSVpxc1NXa1dkN0pQeGIrVnc2TlBx?=
 =?utf-8?B?cDhIdjN1cytYYkEyYmFyakM0M1ZPTTdWb0VoT21DKytsSnVnS1cyLzYyYk43?=
 =?utf-8?B?SGdxQzJ1Mnh2L0FHTkZ3b1BCMjdwVHhTekcvNk53TjBkQmg5RlNDWHRRNW5t?=
 =?utf-8?B?MGwzMlV3YlZFNG4zenVxUFNTeUxkV0VSMHhvM3JTZG9jbjdlS1VyeU42Qlp2?=
 =?utf-8?B?N1U4TXJvWnhCWXh2c29VNDlMTElDY04rWHNFQXF5aWRHL29aTDU0NFpsUmVV?=
 =?utf-8?Q?wtTIdWAqgfVJDukdQCxy6kZUFbWKeb6R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clN0a2gydnpaaXpJYVUydHNuQkNocE4vRzRNVThRVW53UVJKVmdpZTRGU1lS?=
 =?utf-8?B?WjR3ajY4Wm54aEFHUHQzMW5LVmFHMWprQmZmZTRxbFVuYWtnYWNMcGVGL09s?=
 =?utf-8?B?YjhSTXlxTGIrcXltWURONXBJazBVN0NjbDZmdENSTkRObWVxMU9Tak5rSUhH?=
 =?utf-8?B?WkVaNUx1NndrT0lXSnNJVkhNbERMamprcG5hdlpHZjdrWDRSUllMbmZLOWJq?=
 =?utf-8?B?bHNtZFVVemhNaTFzOXN3ek54NEFoK2ZMTVVUTHZpUHVYSjdqTndTTmluWG9E?=
 =?utf-8?B?WU5QVi9qcHR6L0JQaENpbXIyZWUwSmxNMjVvTzFUYldyZ2trbzVOQWM2eDJS?=
 =?utf-8?B?N3l2YnRrazF0TytabW0vQmpXWUx3ejRaZWFuSDVnTzFDdGdnWUduaDZ3ZHIv?=
 =?utf-8?B?Y3RmYWNzdzJ0aTAvTDBRTENLaE5KME9pdGRKWHlSUUxEampEcXE2YnQ2Y2FW?=
 =?utf-8?B?eEl4OG15WEJDM1JhS3ExMmtrQmhmTFlSNi9oUHl2QWpCMGtvQXRHd1VhbE4v?=
 =?utf-8?B?eS8ycFVDbHdINU9mUEdheWZndFlLUGhYWmhJSk40Q1VhOXFleERIVnoyTW1Z?=
 =?utf-8?B?eS80OFBBZGt3SmJERU9uUmkxbWNjVHBJRUQyMUVuelYxam9jSmdrOW1yeXZP?=
 =?utf-8?B?VzRYWndVMWE3QUtEQytob1Q5U1N5dnladXIwUWR4Y0RXL0JQVDJCaGpCVisz?=
 =?utf-8?B?T284dFErRGJXM2Y4ZmJhL3Y2TU1QaVhhUUZ2Nno5Qjg1alF0SXl1RWlYMVFq?=
 =?utf-8?B?aVNPRUNSRTBBOFZqRHBGdExEYWp5ejB6aHJsSCt6M3dYMDgrYkI0VzZvVUU4?=
 =?utf-8?B?ay90b29YUjlzak15WWVWbFdmVFpqV00rQnBsenJRUHJLNk01S201WXpudVgx?=
 =?utf-8?B?emR5UGJmM2o1eDA0eGFETTU5R2gydjg0Q2NIQmh3MjJiQ1owVU1vb0pZM3Nn?=
 =?utf-8?B?Tlh2V0lXTXhycnJYQzJvZnRvV0F1WGlRd1cxU1RFSjZoQXpWc1ZwSThzUzFF?=
 =?utf-8?B?M0lvaFZWTi9xeEp3aER0SGlLVmRIbTFkNGJlYU9lcG5yY2Z6Q2s2RDZmL2Iv?=
 =?utf-8?B?TzZzZ2VwK1JibDFtWk9yRThoV3hCY3VuUlF1UnpObDV0MmZJUWJCbklmV1ZX?=
 =?utf-8?B?NlpzTGIwa084Z1JzZ0h2aGd0RE5QcGhCbTNIK3RCNkwrN1NPMVgzY0ZUdDNp?=
 =?utf-8?B?aXdZbHhFb2xnaDZvNUxBSjRhdHdOUE5YcXpzUDl6U01mdnNyK1d2ZG1xZVk1?=
 =?utf-8?B?TlA4Ty9LczB2OGF2WFNZY2M3ZkZScjR0ZU9UclZQbXB4TDMwY3dBN2Q4eDUv?=
 =?utf-8?B?cktvbWMrUW1oeFR4R3I0K2VidWNvMDJqKyszN2RzWHRjMm10K2tIR2NDVGpk?=
 =?utf-8?B?QkZuRld3MWE1K2tSOXV3MXJGM0s1dUpaWUpkcjdqdC9Va3JMYjBDL3ZrR3NB?=
 =?utf-8?B?a0plRm9IbmM4VkthbXhEWnJlNmRQL1lmNWJRTWxQZGZFZi9NdVBycE1lN3Bh?=
 =?utf-8?B?WlgxZlVTRysvVlI2QjBEdWd5b01vRi9rU3paTGcyMEpPN3I4ZFc5NVVkdFdz?=
 =?utf-8?B?WlowN2VxMnNaVG8zaGRHWndMZzZlYzE3UDRveU96YVk2V2FZK2RSS01acjVn?=
 =?utf-8?B?dS9kdHNvSGgyL3VkaVdmSkJ6bW4ybVAzYWdiVHZwOW81dFIxWlkvWEluRkJ6?=
 =?utf-8?B?a01XeDM0ejJIOHd3SFM4Rk5WZnJ0UThQdlQ1aGY4RTNQTlpydGFpZERDL3BC?=
 =?utf-8?B?RWRkZWw3Yzk0aUxDT1RMTzFqMU1PZk4vNVFLNGszejJyYk1lUndlenRzZjlt?=
 =?utf-8?B?MUVzay9WeXgyZG5WdmNOTGFWSU45VnVsS3B6cDZydi9ES045TnliUC9JanI5?=
 =?utf-8?B?RS9JMHdUMmsxWTJGT3JEdmxXdGc4NTdqSzk3b2VtaVFhQzVnaTlhK2pncDBO?=
 =?utf-8?B?bTdaTXZnTjAzSXhORE1Ea1dDT3ZYRkJVcnFPWkNkaFBXVW9jUHZoNkZNb2hx?=
 =?utf-8?B?S04ycHJubmF0NnlEYnU3Nk9UR3I2dXhUN2EvakEvZHh3aVFMRkF5RDR2dS93?=
 =?utf-8?B?YUN5ZVh6TlplL1d1dGVLM0NGRVBhcmZzbU5IcDQ1Q3FZNUQ1dUJlQmZCY0xk?=
 =?utf-8?B?VGpoMXAwOHhxemFtRGxpcm1zSkxLa0o5d1g0Q1AycVdpRU5CYmR0aG80dkht?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb85436a-b97d-444b-69e0-08de1c799d3b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 14:42:59.0329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5oll/A4EVDmV3IovA0tOqHv82rlUSosgLJ4b9BANnSR334lgqhcVA4MnexBd3CDZ5kUozLJxhzzI9LMG8gjKZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9205
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

Quoting Matt Roper (2025-11-03 18:51:11-03:00)
>On Mon, Nov 03, 2025 at 02:18:07PM -0300, Gustavo Sousa wrote:
>> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>=20
>> Starting with Xe3p_LPD, we get two new registers and some bits in
>> existing registers that expose hardware state information at the time of
>> underrun notification that can be relevant to debugging.
>>=20
>> Add the necessary logic in the driver to print the available debug
>> information when an underrun happens.
>>=20
>> Note that the register FBC_DEBUG_STATUS also got a bit to indicate that
>> the respective FBC was decompressing when the underrun happened, but we
>> leave that one to be handled in an upcoming change.
>>=20
>> v2:
>>   - Use seq_buf to generate planes string. (Jani)
>>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
>>     to a separate function. (Gustavo)
>>   - Always print underrun error message, even if there wouldn't be any
>>     debug info associated to the underrun. (Gustavo)
>> v3:
>>   - Use REG_FIELD_GET() for fields of UNDERRUN_DBG1. (Matt)
>>   - Move handling of FBC_DEBUG_STATUS to a separate patch that adds
>>     extra logic to match FBCs by pipe. (Gustavo)
>>=20
>> Bspec: 69111, 69561, 74411, 74412
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 ++++++
>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 72 +++++++++++++++=
+++++++
>>  2 files changed, 92 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> index 9d71e26a4fa2..c9f8b90faa42 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -882,6 +882,25 @@
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMAS=
K(2, 0) /* tgl+ */
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PRE=
P(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> =20
>> +#define _UNDERRUN_DBG1_A                                0x70064
>> +#define _UNDERRUN_DBG1_B                                0x71064
>> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIPE(p=
ipe, \
>> +                                                                   _UND=
ERRUN_DBG1_A, \
>> +                                                                   _UND=
ERRUN_DBG1_B)
>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENMASK=
(29, 24)
>> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK(21=
, 16)
>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_GENM=
ASK(13, 8)
>> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK(5,=
 0)
>> +
>> +#define _UNDERRUN_DBG2_A                                0x70068
>> +#define _UNDERRUN_DBG2_B                                0x71068
>> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIPE(p=
ipe, \
>> +                                                                   _UND=
ERRUN_DBG2_A, \
>> +                                                                   _UND=
ERRUN_DBG2_B)
>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT(31=
)
>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(30,=
 20)
>> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMASK(1=
9, 0)
>> +
>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE =
+ 0x7002c) /* VLV/CHV only */
>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENMA=
SK(27, 16)
>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENMA=
SK(23, 16)
>> @@ -1416,6 +1435,7 @@
>> =20
>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4644=
0)
>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>> =20
>>  #define FUSE_STRAP                _MMIO(0x42014)
>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driver=
s/gpu/drm/i915/display/intel_fifo_underrun.c
>> index c2ce8461ac9e..1da90c99f93f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -25,6 +25,8 @@
>>   *
>>   */
>> =20
>> +#include <linux/seq_buf.h>
>> +
>>  #include <drm/drm_print.h>
>> =20
>>  #include "i915_reg.h"
>> @@ -352,6 +354,73 @@ bool intel_set_pch_fifo_underrun_reporting(struct i=
ntel_display *display,
>>          return old;
>>  }
>> =20
>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> +
>> +static void process_underrun_dbg1(struct intel_display *display,
>> +                                  enum pipe pipe)
>> +{
>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>> +        struct {
>> +                u32 plane_mask;
>> +                const char *info;
>> +        } masks[] =3D {
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val=
), "DBUF block not valid" },
>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB emp=
ty" },
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "D=
BUF not completely filled" },
>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF be=
low WM0" },
>> +        };
>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> +
>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> +
>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>> +                if (!masks[i].plane_mask)
>> +                        continue;
>> +
>> +                seq_buf_clear(&planes_desc);
>> +
>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>> +                                continue;
>> +
>> +                        if (j =3D=3D 0)
>> +                                seq_buf_puts(&planes_desc, "[C]");
>> +                        else
>> +                                seq_buf_printf(&planes_desc, "[%d]", j)=
;
>> +                }
>> +
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\n=
",
>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&pl=
anes_desc));
>> +
>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plane=
s_desc));
>> +        }
>> +}
>> +
>> +static void xe3p_lpd_log_underrun(struct intel_display *display,
>> +                                  enum pipe pipe)
>> +{
>> +        u32 val;
>> +
>> +        process_underrun_dbg1(display, pipe);
>> +
>> +        val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_F=
RAME_LINE_COUNTERS_FROZEN);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Fram=
e count: %u, Line count: %u\n",
>> +                        pipe_name(pipe),
>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, v=
al),
>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>> +        }
>> +
>> +        val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> +        if (val & XE3P_UNDERRUN_PKGC) {
>> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDER=
RUN_PKGC);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc=
 blocking memory\n",
>> +                        pipe_name(pipe));
>
>This is a global (not per-pipe) register here.  So if memory is
>unavailable due to a package C-state, then presumably all of our active
>pipes are going to be failing to fetch data (and hitting underruns)
>because of this.  If we clear the sticky bit here, then the message may
>only appear once.  I'd remove the "Pipe %c" prefix here so that we're
>not blaming one specific pipe.

Yeah, good point.

Now, one thing that is bothering me is that we would be showing this
message in between pipe i and pipe (i+k) underrun error messages.  But
I'm not sure refactoring the current code so that we "isolate" this
message is worth the trouble.

What if we replace "Pipe %c" with "General", so that we are explicit
that this is general and not specific to the pipe?

--
Gustavo Sousa

>
>
>Matt
>
>> +        }
>> +}
>> +
>>  /**
>>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun inter=
rupt
>>   * @display: display device instance
>> @@ -379,6 +448,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct inte=
l_display *display,
>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> =20
>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pi=
pe_name(pipe));
>> +
>> +                if (DISPLAY_VER(display) >=3D 35)
>> +                        xe3p_lpd_log_underrun(display, pipe);
>>          }
>> =20
>>          intel_fbc_handle_fifo_underrun_irq(display);
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
