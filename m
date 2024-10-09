Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F082996813
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D6910E6D7;
	Wed,  9 Oct 2024 11:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NFOkeABD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D505410E295;
 Wed,  9 Oct 2024 11:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472251; x=1760008251;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6gFNqpkgkzEHqR2uD9oZZE9210YxbLap8OYOnPfX72Q=;
 b=NFOkeABD9vulTjSC5XBWN69NAazRHxywn6DY0sfRa9D0/ZjimueXQLv/
 IPiv7wg86M5iObYdORC86bNGTOviEKor+ETSYZk0+LAQUGihzJRlPCNe9
 hJ0WhzqDWsNYf6WGqtNlGCzN50p5M4mtrx9gXjy9+MvdYc9f/hmLqaysT
 uPMjhR6EECkwXNUUvHdExmO/LK7tWK4thewD+N9a013nmRzfMOhoTct0f
 Ei8DELCmuu57JcYT64PBXRFvoRDB7HKVHDRgPh6nm9yJstkK9CqumAUGn
 3/Imxdauxj97mDGGbElLlzccz5UYRSa6niB5XZtKUgzZRiiSedW8e4Gg3 g==;
X-CSE-ConnectionGUID: kCQK34hvSH+QnsH5qFdlfg==
X-CSE-MsgGUID: Pk6RLzuxQSqREMxV3tmTdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31654882"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31654882"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:10:51 -0700
X-CSE-ConnectionGUID: ZvrJJYymRrq3onKgd6aJZA==
X-CSE-MsgGUID: A3GnwDPIRSi+AjU8xA0Q3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76661718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 04:10:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 04:10:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 04:10:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 04:10:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 04:10:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QVA2+FzfjssP6o62f+D+l6QiuuUJlaVFunrV99ah/7iObkP1HuDGrPrr74xz/jda9Sl5BFha7fD6tP8Cs/1DyFotQxKv2Kgg3+DymNYEqUy7gCBAKFQzQNmFBbE3BnK98RihMpsu8cTXBzWPPB1wMachmXGRYP3RZqu/R7uNeqvoVnw21va7VcYd4sgNx1q+LGu9wiadcbofPj46WcWUDG/9aJYDHyut4Whmrmxd2Ran6+sb7RzOPKcdrxHMlJ70MdF5YE0HBuYnIHHwRROf4oFWY32mlJzEcSCy0dn7b9fVLrDrYLzPabK+fn0GmHQEhzdgGCECajYtY62XTAXaNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xDqRhpycGxqQ8PUvi+3f/QoFbBnN6Ky0qth/e6A6ULE=;
 b=bwJzZIw13ekuFTO1Q3v5epSr2Xi0S1EjQ9xsdFYA31Uh9JbdM+TXh3fn9nDrGFjeeyzDbfLp+hpRPFyQL88378JVW1nJldnJQt9HV0yJfaScL4j5sif63ByXThfjXY/uB5MIuFus+g57c8gtt8IEB+d2/o+/GRs7krfN4H4+McYXn0E7X3pNvO6rTM5TlLV5kni0hOhFS+Yy0eRzTOz2NeZw+ddJhx8FwJ0c2IcR9B3itO+Nw1ncOsxT/neKr8+zjG+eSpl3Y8nNMvlTPVZjatJqm01dSssWqhw7TFrDKLv5bH4TulWLF3S7vPFFlb7fmp3gdgZFRlD5bHBWTcW6ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6940.namprd11.prod.outlook.com (2603:10b6:930:58::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 11:10:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 11:10:47 +0000
Message-ID: <405477ef-a80c-4b76-9fff-2de44969f810@intel.com>
Date: Wed, 9 Oct 2024 16:40:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20241009054050.1796088-1-suraj.kandpal@intel.com>
 <87v7y1a95o.fsf@intel.com>
 <SN7PR11MB675059105B62EF9C7C4790ACE37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB675059105B62EF9C7C4790ACE37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0065.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6940:EE_
X-MS-Office365-Filtering-Correlation-Id: df6ea5e0-c8b2-47cb-6c23-08dce85306b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QjZua21Eb0ZjT0FER1BtR3Azais1dUZrZ0w4MURNaGlkRWJYMTBzL1VyY2Jr?=
 =?utf-8?B?bkVZT0FpbklLckVKTjlITzJMMWNNZGJrRVZISTl2aGY2RVdoR3M1N2txd1BI?=
 =?utf-8?B?MXNIK0g2UlBOOWhWQ0E4SFlzOTEvdWt0T1psU29VMFZiWVJXUEg0d2FhR1dq?=
 =?utf-8?B?M2pjSHBMTFlRYzFUcmx0cUxkQmhqeTd2dEJwaXdQeDlrYW9UbkZSYjkweUo0?=
 =?utf-8?B?ZjJDL3JNbTNKaGl1MWpyQmVOaE5scTE0dEpoTU9vZGo3MElVbGl5WHF6OE84?=
 =?utf-8?B?S2VhdHlyUGZ1Q0tWZU9WM3g1V3Radm45UkFzTUdKMks4c0hFbGRIV3hrZmVB?=
 =?utf-8?B?ZExzMXhPL1pLWEc2SmdsV1RXSGJnWXRMRENVY1lPcWNSR2JOeHYrZzZFamRG?=
 =?utf-8?B?NTBSc1ZsRVZPTHdPL216LzB6Mll0WlJEMFAwS1NqMGFsVjhjQ0tubGUrWTdZ?=
 =?utf-8?B?bE9aNlo5eW1kYys5ZDZKSG5yLzk1RVFsdnhQVUNDVmthSVN5dGpzYnB2dkwr?=
 =?utf-8?B?cHRuMmt2Z1d5Z202NmJrVHVqTWc1b0pBdUxvdlZGOTlSS1RUNWZWY2xvZE1y?=
 =?utf-8?B?ODk0OElGczVVNUlzY3g1aFFqOHFDV2RTMjVmZDFRUnhBVnQ5QTNFZVl2SWF0?=
 =?utf-8?B?UXc2REtiQXdyQ2hmWlBPOWxBbExmVE1hN1FsNEVCSHdyZlJ2Q0poOXNrUWp5?=
 =?utf-8?B?OUp2TlpFY0x6R1ozQkl6bFFPRnhxS0NHZkd1amh4WjFWZUg2aWRzVWliVkha?=
 =?utf-8?B?UGlQMHpNOHVmQmtaN01oSTdSYm5VUWJyVDFUMmM3OE9Ea0JVd20rQzFZL3k5?=
 =?utf-8?B?ejBaMk1JWW1aTlhOVlN0akJ6MFE4R29pQlVERUcxd0NZVTdCWmE3Ni9HZWJs?=
 =?utf-8?B?cW1PcnpBSWprOVVnalJGREt5Y2tqZmxTUDVKS01sVElmK2ptSjdka2EwQzZj?=
 =?utf-8?B?RVF5MGZmNzZyZ1RLSEZ4bkE5ZnlZdzFpSjd2MWtpMHkvNnBNQ3RZZitUTUJt?=
 =?utf-8?B?ZmF4N2RVMVhNcHozaVo3RDVURVFBRXdRVWRuUFNZRzdCY2VXVWc5YWJRc0hG?=
 =?utf-8?B?QnBHOFhlQ3FwaVBHMHBQcjFxZTROSi8rT21WWnhKWkE2M0l5aGhBcEVSdU1Q?=
 =?utf-8?B?N2pnbzVXSjl3SVRkdUZPNG11Zk5CU1Yvdm4vVE9xeHNZbW1zT3ZNSWpjUGZj?=
 =?utf-8?B?SW5LZ1BhbmxOc05uOTdWUlF4VElDa09SMEUxcmtrNFE5ZS82MUtKZVFYdmFJ?=
 =?utf-8?B?RElJM21XNWJ4NDBQNVV3YUVrVUZFeGVXYW1EZjlhSlE5OHRvTHF2Y2xoNG9U?=
 =?utf-8?B?Rlc2c2VzT3hHcXEvZ2d6MHlqa3RXWXFicGxncHRmaWlSTFVDb2NVbUxzWXg5?=
 =?utf-8?B?UEhlRFUrd0xsbU9HSXFzYitRMEtXNi9TUnA0WlZmZzltN0RzKy82STNVQXhM?=
 =?utf-8?B?bEpqaXlzOXlPV09SZlY0NVE4d3RodkRCdWdiT1BaYzVaNTh5MEE2WlgwMjl5?=
 =?utf-8?B?NDNtcy9sRUVpc3A3ZmpDVFZweUkvZ2NvN0JWSjhGa3l2WDlEbFdsSkFWdkJy?=
 =?utf-8?B?ekJVSGZrSHUwT3llbXhzdnFxQWo5TVA0V01GQVVOQXE4ZzFPcVVyVnI3MmJP?=
 =?utf-8?B?VkJOUXl0V2srRDhXZDFyQ0JIZG1LUi9ZbndsR3h0RTVDN1pYV20yNHY4dW5P?=
 =?utf-8?B?bTRGSVdTcS9UZ1hYN21ZbFRsSUhBc0h0SlZpeWN1SUlLTHZ6UFhYN29RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGtDcmY2N1lIUjZRYzhxWVdXbTh1SW94RWlpbVVRRjhyK0E2UWh0THVaSFh4?=
 =?utf-8?B?blI4OC8zTDI3YzFMbm5RNno2RjVVZDBqMkpubFJQb1g0MTh5VytjVVIyRGhW?=
 =?utf-8?B?SzhLRURoVjB1Ly9YTjBwWk1aZk5XcEgzWjRCMTNXMGZ0RS9SRGV6TGdSUnha?=
 =?utf-8?B?eEVRQi8zb252SlNMQ01ycVAvRFFzYnlmcWtpdHUvSnloTFo1Tkk0eksrNmRK?=
 =?utf-8?B?c3VpZ2FDRUdvdzE1eW1LZVFxWUFOcWdWcURyYktya1lEcGZURUhNVk9HK2pj?=
 =?utf-8?B?Rm1ZY3UwVSt0alVSdFhQTmZON2J3aHUxUitUT0h2YWlHSEZCNlpsbnlzbWNQ?=
 =?utf-8?B?Ykl4VElwUkFFb3dGa0o3eDBHeWMyN2RUeWRJc3FLc0ZleHQ2OGovdmxubHV0?=
 =?utf-8?B?eTdSRklEL3JkTkExZTFMMTdxZ1E3Q3NYKzczT1pNd3UyUm93VG0xbTIzTE9E?=
 =?utf-8?B?cXVWK01nK2p5UjRUdVBCU3lqcEpqbHJDaUZkNTJZY3FJbGJuVnl1V2Rjdi82?=
 =?utf-8?B?TVpIZVFwajN1L1BIdmJlQTdqSHVXTDRYRXN1TjV1eHlWekp2enRIQWJuWnNt?=
 =?utf-8?B?eFZNUlQ1c21DTnVjM2pwNkxienhGcnRiNHgzTlU2UzJRT3c1K2hWUlVtOGFD?=
 =?utf-8?B?RVQ2NmtGUjFtWkU5SG1EMmpwTXdJSzVCa2VaQ3pLYnFQNUdiUDNKZFFHOUdH?=
 =?utf-8?B?Z2ZYd2FMaDNmN29Sd2FrQklOSXZVeGJva0tqejRveXI2Y0ZwbFZkSzROSVl6?=
 =?utf-8?B?NWx0RlQrUlR0NC9zK3BFNEYyL1J6T3VOUVZmKzdFUUMzWjFXb0U2dFllcllX?=
 =?utf-8?B?YjBnRlJrVzJNMnZwdEM0R1JHOG1WN0RiWWU5K2ExWGx3MS96b2NNSit6MjJ0?=
 =?utf-8?B?UVNKUE9HZEFmcVRvS252eExKMTZtYllXU3BabmRvYmZENWhOYWYrcUlOc3Q5?=
 =?utf-8?B?S2wxSnFSZHBXUVRsWnlWdzdNcXBWVTk4K1RjZFZ1YVp4NkhaSEVSd2dIYkov?=
 =?utf-8?B?WlFJV0I5R3ZzLzExdUx6c0ZOdHhKUWVQTkhOSXVTanhOTm5UUVVoOW1HZnla?=
 =?utf-8?B?aFZGY0FsbGd5aU04ajdwTkNNMXI5VGluSjgxbTcxZzMrY3lRVnRzWTZBUXlV?=
 =?utf-8?B?MGpDWFZwaC9JRTliTU5hRnJmRDQyZnpXU1A2bDhKdEFld3lQaTF4cXh2K0Z2?=
 =?utf-8?B?Y0dqeVd6Q0NWV3FzUG80UU8wMXExendnWW8wdk5BNzY0d3dwdGFaQVhXcUEv?=
 =?utf-8?B?UUFCaGltcWNkempDYnRlclhRaXVBRXZFWUtzaFFNTHdxMzA3Y1c5d05KQno1?=
 =?utf-8?B?R1cxUHNkZXdtM2VtT1BibHVxdHE1ZlV2K2pYTG5FeXZTTzE0WEw1L080Nk9J?=
 =?utf-8?B?dDhCSmVaSlBRWW1PK2lzNjdjY0p1SXM2K2dBUVdUcnUrR2V0ZUhWYXV2MVdO?=
 =?utf-8?B?RGlDemJJclRtaWxkQ1FIUnhCOCtNNUZCUG9jSGltRUM3blFDdGxITEdoeWJx?=
 =?utf-8?B?b21nWE9LKzdwTXVJZHMyVjFCZnEzbW9BWXBIME9GOEVGYjNQTTVQM0EwMU1R?=
 =?utf-8?B?ajY0cUo2RHNkdTQ5dldQRXl6amFKUmpuWE1LTWRacHR5T0YxYXN6dmIxZXNm?=
 =?utf-8?B?Z094VTJDYTBqaTRPa3pUQlFWalRxeklPR0NyQnU2UU1rM3EwTUtWc256dHVO?=
 =?utf-8?B?U25pQkZmSktucXF3Ylpxc1I0L1ZDSDE1UWZReUFmT09VWndJUStnT0czbERW?=
 =?utf-8?B?RjNqanlGY0dGRndkdE9DTVl4WVFTaXlvZFBqRnc2TVF4TzluQ0MydXpld09T?=
 =?utf-8?B?ZVRVc2tXbnRwYkJLYWh6MTNJTFpEd3pEa0NCWWZ0dWNVTU5OVkxoMDFVeXZ6?=
 =?utf-8?B?YXdVN3RJM05JYnYwd0ttMGNFOE1CcG54L0k2ejNxNDZXeGZBbFhBeWdXYUo4?=
 =?utf-8?B?M0dSQ3MvNDgwNExLQ1hsRHhueURnRUFwVk42TGYzMDF4WVNKZVBaNEJkMGI0?=
 =?utf-8?B?Wm1qWUh3dzgya1RSd1FEZStOeTJxVkZCUFJ1WHlGQ2NVc280TEJyek1vOHY4?=
 =?utf-8?B?bVFEUDlFTklsb2s1VVdaek1DcENadTVDcjdLaEt0aHkxQmJ4RklYMzliQXlJ?=
 =?utf-8?B?bTNiWjZpeFpKdTMwbnRZOHRCVTR2VlNLRXl4VFJ1R3ViOC9keTkvUnBDK1Z4?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df6ea5e0-c8b2-47cb-6c23-08dce85306b2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 11:10:47.5555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YHwIndvAyGuScBr/l3LjnkgQgftSAwEdlKp9FsYutoMPFWGpzZEH1QB8o8Z+4r0ia3oqj7uApwJswnEAR4yUwtFql6ro0D3UN45U04oZGEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6940
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


On 10/9/2024 4:15 PM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, October 9, 2024 3:30 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
>> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
>>
>> On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>>> Fix the DSC flag assignment based on the dsc_slice_count returned to
>>> avoid divide by zero error.
>>>
>>> Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC
>>> overhead during BW allocation")
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
>>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 4765bda154c1..bacd294d6bb6 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const
>> struct intel_crtc_state *crtc_state,
>>>   	if (dsc) {
>>>   		int num_joined_pipes =
>> intel_crtc_num_joined_pipes(crtc_state);
>>> -		flags |= DRM_DP_BW_OVERHEAD_DSC;
>>>   		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>>>   							       adjusted_mode-
>>> clock,
>>>   							       adjusted_mode-
>>> hdisplay,
>>>
>> num_joined_pipes);
>>> +		/*
>>> +		 * Try with dsc only if dsc_slice_count has a sane value i.e
>> value is no
>>> +		 * 0
>>> +		 */
>>> +		if (dsc_slice_count)
>>> +			flags |= DRM_DP_BW_OVERHEAD_DSC;
>> Do you think that's enough to handle the error?!
> Well this will make sure that if dsc_slice_count ends up being zero we don't take dsc overhead into account.
> Which should be enough to make sure we don't go and end up having a divide by zero error

But the overhead computed will not be correct. I was thinking to avoid 
setting dsc flag if we dont get a valid slice_count.

Perhaps in intel_dp_dsc_mst_compute_link_config() before calling 
intel_dp_mst_find_vcpi_slots_for_bpp() we should check for slice_count.

Actually we again compute dsc slice_count quite late in 
dp_dsc_compute_config and set that in pipe_config->dsc.slice_count .


Regards,

Ankit


>
> Regards,
> Suraj Kandpal
>> BR,
>> Jani.
>>
>>>   	}
>>>
>>>   	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
>> --
>> Jani Nikula, Intel
