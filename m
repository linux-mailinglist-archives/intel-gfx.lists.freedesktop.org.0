Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B2BAD8973
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8775E10E98E;
	Fri, 13 Jun 2025 10:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJAc0rQV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46BC10E996;
 Fri, 13 Jun 2025 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810242; x=1781346242;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=+W3UPI+oyKg4cJOBqxvL0GjNqjBEQu1BkXFM9vA7Pn4=;
 b=LJAc0rQVyIZJHY6RjPjB+dnuf4lRtmYiLVQB16yIEUqPqJA8nFlJwDvW
 JEo525B6FNdBPCJz/Rrc7JCFIc5KS2Ljb9qPlaMpvsHzJUZQP3WPSr02z
 FmasbEcB6tkw8xm6JzRT2iN3UZBDXq/jnXP96cpOVcbwQLctKJWCsq45e
 /CSiZ3pLTFMy1aCgWVJfqO450ZDrzPyWxplQtdRUDFV40nEggG5vfrPYB
 WQu/RvWV4QUNnZ3SzVEIKWvdQ9y7oTGPgAVsPSkEOPgia+AOHtrPtr99K
 STWxcLqSmD7JnAJFVvzmxIO3KJhY4MAufOF/0chZBZNIpi+Z6YUSkWJks A==;
X-CSE-ConnectionGUID: DqHN9UnDTVmgsOLlinSV1g==
X-CSE-MsgGUID: iWN5ItJDSq6ElO3r3bD7WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52160925"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="52160925"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:59 -0700
X-CSE-ConnectionGUID: 8bh2opVUTAmK54GggOXawA==
X-CSE-MsgGUID: cDfxufdmR8iz1GW1TJWsQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152951201"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 03:23:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 03:23:57 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.64) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 03:23:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oEKF3RjjqmHbC2fts5nyz6XQ0u6zoEbAIC/vw8WDcY1ebsSjNLMLmcwJkLE0VKmWD6GPRxy3LXjaVR5197iYMgyXT6WWpsaNBh1y9SP07ddWKnPGjouvUikKms3GlslKAFU5qybsDLgMsjE5hPzbAs8M7Aq8Zw5of5fwt1OZ1sdEeVkHGOyCQuPC8725kyoizYtlaZTKZMCp5UhZZ5QQxR8QPAQvacrsNkLGLdy4lSShXq0MUpSpxKTr1ec+y9JOX/dKDAx620meaQqutuwPeYNGC8w+MMxSoW5J5LPS8L9Xl7h1Wn3eJdH1yKEmv7IzSpRBZ9J7MtiQryOVKhDRmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctmznBBUduuu/ZUnffa/ggx+ajEkiPB0j/q2RJpGGC8=;
 b=eeeMDhCIG4n7uO9D2ZyhB3psu7evUeFHc9lfPDJqvg4BhEqMDUcdJ+31SEUKlcIdzTbb8a+MW8K5Pd4oprExCw9aVlDJB/hj7G209l+YMTU1JZJNSjSFQkigTR5YbmFFsSYN1dKDLNlomhTRzBXDTcvlzFxpUILTK5Hq/Of1H0JNsbxm6V8ke6dbFErQ/Z4fGHxma2ujatiKx8kccbOxUvG+oGjzPfWx7tBR5aYZJaQvCSJ6705qCMX6zAEZNmvhMWDm0/XDUexnTfySnpa+22YfbqcpaFFo+0kw53JB3LeVAJTpIEr02zbraDpTJjHCYNg+8g0hY0rpPfm812tr5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH3PPFD9B78DE02.namprd11.prod.outlook.com (2603:10b6:518:1::d53)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 10:23:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Fri, 13 Jun 2025
 10:23:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
 <174972962084.14553.9763596946172547950@intel.com>
 <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
 <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 13 Jun 2025 07:23:37 -0300
Message-ID: <174981021705.14553.10495600609368679486@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0288.namprd04.prod.outlook.com
 (2603:10b6:303:89::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH3PPFD9B78DE02:EE_
X-MS-Office365-Filtering-Correlation-Id: acf354db-1190-4fc7-34d3-08ddaa645e98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UC9rcUZLVlBMYTh5UlpNQS9qdUh0Z2NVd0JkUGE0QTNrc1NVMTc3Z20wZCtV?=
 =?utf-8?B?d3IxYWpFYTFxMlFuWkZyNVcyVmhyRlc0ODV0NE5OQm1pcTFFbTdMbTZQQ0xm?=
 =?utf-8?B?YjN3MGgvdGF1RmZWMkU5R1grMUdTa0ZSM0l6V2t4SzZ4R3daL1g4aEFrMlMr?=
 =?utf-8?B?bFZXYkRIejI0RElUcU0zRFoyVXordmxmVnc4anhGWHZwY1lMNkZKMDhjWDhV?=
 =?utf-8?B?dkgzRUpabkpBVDk3VC96UE83Tno4eG5lTDgwd3FLcGZuaGFJcUQ5WFoxNVo5?=
 =?utf-8?B?ZzlETEdVUEE0czVvSGtEQ3NJYWg5Q3JUZDY3cjNFbFh1b094N1lVdWRZN3dx?=
 =?utf-8?B?ZG9RRGlmN1ZYL0g3SGw0M3JBTFZHS0RKcTNMV0orY3pSOU5WUnpycjdlMkJ5?=
 =?utf-8?B?VERjS2lXNUw0aFJacGVuMUdMTDJFMU12MmRPRTd4TXd2YVlLRDdGa21Pdm5U?=
 =?utf-8?B?SUR3RVBTRHhjdmdGem1UeWVpcXR1bzMyL3d0dE5mZUNIVUZ2dlZJSU00Y0hi?=
 =?utf-8?B?bk9OY2xENUFBNEFEdTFPM2xNNS9YTDFJNU5wQm1kcTI1cXV3UmhXZ0hxaTIz?=
 =?utf-8?B?cWFrbGxjOFc1TnB1c01XS2FjYW9Mb1ZWZ3Yrd3FsUDNBSTdLWDF1NmE3WHZq?=
 =?utf-8?B?Q0liSFIvMVFFanBLT0s0SnQ1ZTdMREVkeFE0VGs1UldUb2JtejJvK09lSGU4?=
 =?utf-8?B?TDRtdDM1a0Y4ZExCdDlUWmtrdWFGQ29uWkRoQ1h5OXZsVFJCK21EYytxUU1D?=
 =?utf-8?B?Zms3clpSais0ajBKN3phRUVTWG9zU3NhVy9mL0l2M0c0Ui92d0Z3TGdieEVh?=
 =?utf-8?B?aTZ1cmt5WEY4b3VLQVBuZnVwbXE3TENaR2drZUQrU1drODYxMzYraUZWUXlt?=
 =?utf-8?B?OG1yLzVSUWVTaWMwR2lMa2wvWk0xVkFYNnh5Z3VzYWtncGs0bDZLeVl1a29z?=
 =?utf-8?B?NWZ2L2toM044bmVBcG1pRUFqOTllMVZ6WjZQL2NTOG10VmpFZUMrbkRNbGVu?=
 =?utf-8?B?VnUvK3JUOUJWaDkxYzNIcFVYeVNuUHlzNk9iMUpWc0p6ZU1HL0Yzc1pTNFdl?=
 =?utf-8?B?U0hMOHZvM253UG5GbnBrcGtrbU5JOWx4VzJFa085Nm01UGpBOVZ4WVZWVmYr?=
 =?utf-8?B?bHRzVlhLMFNoc0w3bVR4dG5DZXVNQnozbFEvZHRIV2tRZ3Y5M3BPeW1VRUNV?=
 =?utf-8?B?amZwS1N5dkFOWjh5TXNRK0FmZE5zT0JkRG00WFBjYk1TY0lMYTJFVjBFQnRL?=
 =?utf-8?B?VVRRSnRyOUNtYmFhbEU4eElJSTRHaGNqeTNHR253ZVVkVjZtMkhjcExuYzk3?=
 =?utf-8?B?ZDRGSmpsWTNmYlE1VURlVWtsN3VpSnBaYVFoeDk0aXhNZnZNRVhrUGtCTita?=
 =?utf-8?B?Skpmc2pqRS9TSTNkMGt4bElnNWFQSXVVQWJ0RFVVQkhIMmlMQ3VZTzZwbUhK?=
 =?utf-8?B?WUplZWZxS255OEJWeHdZdld6eVhZN291QXpuZEFsV1RUVytRSERqT1lKVGFh?=
 =?utf-8?B?Uzl3ZlJ0QjJmd21BMlpaRmpJVkxxVWEzM2ZlbzhEQ2RSUEt3dDJxNzdnbWRz?=
 =?utf-8?B?RVFFL2crVWNtUDVWTnE0UCs0ajVJUzFlNTVzNXRJRlY2UjNXeFFPRlZnWG9q?=
 =?utf-8?B?SnU5ei9uWitKZ0J2ck1lcXpCdDRUbjY5eHN0OWs1OE82SmhFenZhWjRBeWlQ?=
 =?utf-8?B?bjQ3VkJZSloreEZVRTc2bEc1eFVEb0d3ck1LbXNwNjlBdDl5OHFyZDBhS21L?=
 =?utf-8?B?c0RjblJKUVZOT3R5WDROM05BNkZqK2VjK0QxNlBFSGo3b1k2Y0N6dWVhYnVM?=
 =?utf-8?B?UDdOSFdmVUNOSmp5UkdSaTNSMGg0a1VEVk91cUJjWWgzY0VsUjBTcEtqTVpQ?=
 =?utf-8?B?cHlVZDI1TnRHbXRMdUIzdUZnYmhBTTVaTGN4R1JjZTd2eHY0UzNqcFV0Z25E?=
 =?utf-8?Q?rjL5XtCafRI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzNycTdTYlRHTGhIOC9oSmVVSU5lay9LNSt0cGdNVnpqREpsWFVsZ1B4Yk9P?=
 =?utf-8?B?cFJJZ3MwRzI3d3l0amx3SjY4VW1TUUhONHlMc05kTC9Rakc5dkpuV0c2R1oz?=
 =?utf-8?B?UFYwK3NGY1NZY3NDSFlwWVZ5S0ZJQmd6cHZHUWE2d0wyMXlialVRaWlEa0VS?=
 =?utf-8?B?LzE1SGt6cmtnaXJUK0JvZDY5NVZEa3lKOE56YVF1blF6eDB1SXhISlVBNEVZ?=
 =?utf-8?B?enRwd3ZibVlDNVM4c3VmbGpDY25HemR2dkFsRkk0aXJtdElhY251TU1helJ5?=
 =?utf-8?B?QklMUFh2UUtXelR0ZWlGQnZVTk8wRmxkK0dpNlFSTHZnMGRhaU81R2w4VkNm?=
 =?utf-8?B?NTJRNXZhN2Q5enpXcHBYRm5tcEZlT0VEQSt0MnFtSVVJVGdlaHRPWHVMcHdO?=
 =?utf-8?B?bmdCVDRHcy94eTFiRW1SVUg1eXZqd0JlTDRkaHdXWlNWOHNYZzY2TEdQaEJs?=
 =?utf-8?B?cWlaYlZzUFBKaU9VeXdhcmpMUGxNUEEzQVZ4bnRIK011dU5ySUUyaGI5R0Y4?=
 =?utf-8?B?U2E0T0FsSE1tT2NlWTBjU1Q0aFJiMFVVcTV4TVRaWWdGOE5IQ2RoKzJ0TTh3?=
 =?utf-8?B?NWVvMUdqM1BWamxkbzhQaCtVelU5RkxMNkFndTlGbWdmV25mZlVkQmNDU2hY?=
 =?utf-8?B?cDRBUmw5dTZUdVhMUWlsY0JTeFIwUmRKQTBEb3F1L29aMlVpM01NcWhhRFpI?=
 =?utf-8?B?S2xWMXp2MHZudU5rMGFZY1RNQk9RWnEzdDVDRk1PalRHWE9uNVFmYUFJNFlh?=
 =?utf-8?B?RXRaaGZ1bjNpY1RTZDVhYmNOUlNGcTVrUGNUdmpYS3JQMlZ2Y0tQZ3RPNFdp?=
 =?utf-8?B?VXlWbXlvZURDcFVBU090REh5RVovZ051ZU0rVmUyemRLbkZKb3pKTk5jT1hx?=
 =?utf-8?B?RFdYVjFOa0RwYkhtdklzQXFHMU9HUFFCYjNnRWw5a2lJTmw4SXN0ei9iTFpI?=
 =?utf-8?B?cmVSQ3JSdkFFcFJwV3VRZHU2SjlucjR4WkJGSVcyRmltVjJDL2ptazFvNHg5?=
 =?utf-8?B?SkZwaFg0QjdzM1pTMzB2Vm5QeWttT3RsMTh4MzFYMVFMdHcxNkxOMVlrZ3N0?=
 =?utf-8?B?UEdkRVM5bUNtNnZJT3NSNUFyN3JJNVVvZ2dhU0M5VkRyZGFmWHN3MFMwUXg1?=
 =?utf-8?B?eG9LWlhpaTRNcm4wZ1paWTRLUmhjNjVnUlk5Z3VmdC9EZHpDbWRTcEpZbWF6?=
 =?utf-8?B?dzZLY2NlUEJHMjB3VUxiODBLeWVVVEJMWDFoOVgvN2NHaTZhVzc3RCtxRTVM?=
 =?utf-8?B?bEcwN3BLb25Bck5rTytVWGhQcEh0dE1mQXI0ck0yQkRtd2lTVVRtZW96OG5B?=
 =?utf-8?B?MS9KN0ZHN3lLdlRGc2Y0YWp6TmhIQ2RaUG1GaGtHNmRSd2V3aVhZSWJwbTZu?=
 =?utf-8?B?U2xYQ2RTbFdjdUVSZ0l4aFZ2aUszV3RMQmxLRWtnM0o3d2ZQM3lCY2pXMUJy?=
 =?utf-8?B?dDB6bk02ZWVCZVgyYSt1cEw2MlNreUhQaytMSloxYmp6MVFLeStsRVZhdlNE?=
 =?utf-8?B?enMwOHd0dURIWUpWamZNbWZmejFyRmZsUkJmRUhieVpJd01jUkRPd0JSRk1s?=
 =?utf-8?B?c2daTnllWHpwR0tRNFBiUHRTUVV2ekh0Zy9BSGdrWUlUajZJa0FLaUo1Wk5u?=
 =?utf-8?B?UFVCcUZENUhWUzJBQWJMdEN0Rm9DV2Y5UG4vUXA1aGdXNUhFM1A0MVlRMnNo?=
 =?utf-8?B?Nmw2SHFZRWZ3UExldW1oU1Y5NXRTQ2dIRlJCbHg5L0VHSlc1WFZrcVJKWi9i?=
 =?utf-8?B?ZEhLVjRuaSsrNTBjNnRIYUU0U3NEQzl0VTdld01NYVhsYVRCQnBxN3NlUHlW?=
 =?utf-8?B?azFoSWxpSVFMaS9PYmphdTBYNzBKUk1WeTI1T1hUNEMrS2hlWGd6QTZoS0d5?=
 =?utf-8?B?MnRhcExqNzRQbmJmN2J6OUtSUWdEa0xxVnJGK2JtOWpmeGR2QUVKU2pVQXZX?=
 =?utf-8?B?S09KdjZjd05tSlhuZUVwUHl0YkJkUVJrSGtjbDBqR2JDdlEyWlBuRFJCR0I1?=
 =?utf-8?B?anpQVDd0eFMrTjdYS2pGYmovUkFMS2cxUTNLTnNVSlVOcWtMdVp4NlIzUGM5?=
 =?utf-8?B?RVUyQW15QkNsaGRBNFZpTlRpUVBZandOdHhsRHhMVjB3SVphK0dycUZ4NW1k?=
 =?utf-8?B?UVFWZUZCMHJ1SEtjcFN5K0tIY2ZlYldQWlRLRW1UNndLSFFYUFpHWlB5dXkz?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acf354db-1190-4fc7-34d3-08ddaa645e98
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2025 10:23:41.7863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Aq/zx8w4Js+hc8GURMjcYNa0duhZJYJWatKEjI4om2lDKydprNkmA+Woc+p67Z5tMZfCo2X/+w/W09E967Jrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9B78DE02
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

Quoting Jani Nikula (2025-06-13 06:13:55-03:00)
>On Fri, 13 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrot=
e:
>> On 6/12/2025 5:30 PM, Gustavo Sousa wrote:
>>> Instead of open-coding the conditions for the workaround in three
>>> different places in the file, I think we should have a function
>>> needs_wa_16025573575() and use it.
>>>
>>> Also, note that the workaround is also required for WCL (display versio=
n
>>> 30.02), and we would then include that in needs_wa_16025573575().
>>
>> I agree, will make a separate function needs_wa_16025573575().
>>
>> Thanks for the suggestions. I will make suggested changes in next revisi=
on.
>
>Please let's aim for something a little more generic and unified than
>that, and one that can be easily extended and switched to a generated
>version in the future.
>
>intel_display_wa.h:
>
>enum intel_display_wa {
>        INTEL_DISPLAY_WA_16025573575,
>};
>
>bool __intel_display_wa(struct intel_display *display, enum intel_display_=
wa wa);
>
>#define intel_display_wa(__display, __wa) __intel_display_wa((__display), =
INTEL_DISPLAY_WA_ ## __wa)
>
>In code you'd use:
>
>        if (intel_display_wa(display, 16025573575))

Yep. Sounds good.

>
>For now, you'd manually check for each enum in __intel_display_wa()
>implementation, but in the future that code could be generated similar
>to what xe currently has. I'm just not very enthusiastic about adding C
>language hostprogs with custom .rules files and parsing.

Hehe. Yeah. I'm wondering if something nice could be achieved with
header files and cpp magic...

--
Gustavo Sousa
