Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5471AA1636C
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2025 18:44:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768D710E16D;
	Sun, 19 Jan 2025 17:44:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBn9RPMq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2AF10E0A2;
 Sun, 19 Jan 2025 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737308654; x=1768844654;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0RuHgZnQXhApskzSTsaSfSdSsTysdlDLHBybBjpIBCM=;
 b=IBn9RPMqlGN8yU2AWDLbimgvLa1Lc7euegaoaJHuixuDVJLdLYZRWGGT
 x0rdOmHrCxTCqoXtnKPebI4vQN/znVYCR5O9VEEawDax1kVo/7gUSBaiV
 sskpf/pTJZlJMvZwWJCK34ahkMuUKw50laqCiFr9Nd598PAuSaXpCOnw6
 h+ojYCO4Vika4QGjgl13ZJIns7csh867TrtMWePS0vuVuRMl1OrEe+fnu
 gtLgQSpTUVL546tattrSJmJT2ubyHitgwSYyfI4Dd2ESsfkmoPaRxTrRH
 wy5jFx5kNtF9BVhundEoXoYO8PgWjbGEWXHyVsVb7cECXtBKwgjBGDAO3 w==;
X-CSE-ConnectionGUID: CYynH7ZuTou2ROAuBoZm5g==
X-CSE-MsgGUID: hM2eXay9SLuGmkmHd6bMow==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="41435816"
X-IronPort-AV: E=Sophos;i="6.13,217,1732608000"; d="scan'208";a="41435816"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 09:44:13 -0800
X-CSE-ConnectionGUID: 5ubw8+3hRamz4D9EJ1qsjw==
X-CSE-MsgGUID: k1qqmiFPTH6DEui/pRrM8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,217,1732608000"; d="scan'208";a="111252959"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2025 09:44:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 19 Jan 2025 09:44:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 19 Jan 2025 09:44:12 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 19 Jan 2025 09:44:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lEHHq/hvZrsK1yobwdokDeGoZ+fwj7CH+4WzIaWhk4NFWu3wipBRkNQIP86RudfeoKbC9pabF+8hk7ZxSFV/+O7mmF3sewBO7Uju5xrsqtal3Bgu918EoKdYH2DOk2yzgC/hKBbjq+6cLM91cvL5jxkhzPHtKzAIhI3m8DFagEvedCTwVtn3wTk6bImMbw2O6uChYprbIf2YPEYr4ee5Ovmh3EgUevVVoA2aQytTAF9n0gWEhP/BndA9JNbTfu7V/1oihfhCqI/RafPx4cdGlbapz3GL1JgIvWlo16qhe7FP1MA7QpW2JygJNOT11sMLPiVZywBtrV8zCCrsa71OOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z9NtaA2F0ypcLTc6LMjCEuBmaAtD5FB9eX9hTOEl4lY=;
 b=RuggvqRZwHIjPDYMQV321ibI+dXw+hkQPA+GiMaCSg4pxSeRF7D3nnYvbSM/QGYRilaJruiKPnOhYUAzGbqiWsLE0RRJJkoh1XViCuC/5KUNyAfyOYGHWCQkcIyvn3L8r/15m3n5O+fcSYVWePifz9S/ZaHFiiNArM0QJPoCfPhOoKMyfqN2f9YZXvm3Z4YF8s3J+Av7vOd5/vJI6NF6t3t5bqaFUVmQOw/akM/wgMwCEU+KKwuQkNQMYp0YOlawpGunngf9xzz2anzbAu4UQcSvYQrUcNaT9r+d9phpp0zFmNYT0U/iUfwQBCx209x1NWLGALxt4QNOSp5TIt4XJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Sun, 19 Jan
 2025 17:43:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.017; Sun, 19 Jan 2025
 17:43:55 +0000
Message-ID: <7b56d70f-4993-4a0d-a5c4-b5f78225bfba@intel.com>
Date: Sun, 19 Jan 2025 23:13:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
 <20240813031941.3553574-2-ankit.k.nautiyal@intel.com>
 <SN7PR11MB67505D2AE2DFF9C921208447E31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB67505D2AE2DFF9C921208447E31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7062:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a6c005b-0fc4-4ffa-d0c0-08dd38b0d866
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WE9HcHR5U1U0M05vQ1NnWXY3aTRCK2RVUDBSRnpyNFF1TXNPZ3Z2WUx0MWpB?=
 =?utf-8?B?Mmw2UmJFNnh3WVMvclhtWVBqeWlzV1pHQ2JHd2ZnWHhkQ1hRVlRvY2x6eitN?=
 =?utf-8?B?cTJWaFRhQVJvd0hKSExpa2ZxS3I5eVRwMitJd3NOaUNXWlUwRTgyaEdlc3Zi?=
 =?utf-8?B?eXpnMmlJWU1xQ1I2aDhpNHNESzA5M3pyeXVTTXA2eTZFajhJNUFEMXdOV2tl?=
 =?utf-8?B?NTkwWHZVQVU2cDhpeXIveFpCRzgrRyt1QkFGME1IOFA1OU9kNFpETWtrU1JW?=
 =?utf-8?B?ek9mSTJqcVIwY3UwZ0o2N0dwMWVlejVzZDRaK0plWFEyRGN6a0hucVhzQ3lk?=
 =?utf-8?B?VUtKbHhKb05tSG40STRYZWdkL1VHZlB6Sm4vb1g4NDV3dVh0bUhKYVIvbVQ3?=
 =?utf-8?B?ME5oVGJ0L283ZXRwT29YeXRqWGZmeGdPMGxHRGh0cFBzMG8yZk5lYWhlUzla?=
 =?utf-8?B?djErQWNobFg1cDcreVp5dXJ5d0o0Q0V0R3dTZThmWDJ4cVNkaUdNZHUybDV2?=
 =?utf-8?B?RXlWR1owOGdtZWg5NnlrNHA5Ni9rUmtyWm9uSTljSWJWRHNIdkVHa0dxQnB0?=
 =?utf-8?B?ZnRGVGtNMFoyQTdxOGhZR2VtdmJMaGFMQkE4U3B6SUJvUXhUN0tXTk9yVHlv?=
 =?utf-8?B?V3FDNTNjNCtaVVFaWGQyNkRVNVdkUGlZU1FRY2ZzSWlhbE5RVVBjcjhyajZK?=
 =?utf-8?B?dUVTd1VqOGpCN0xjZHhMcEhkZTVQeHlNOWhkWTVwL0FPWTdlVmxSZVlwV1F5?=
 =?utf-8?B?ZU5CMWdZaExNekFNalFkOGdpUEl1MVpJdlBHdWExeTEvVVNaYmdoT1lQaG1V?=
 =?utf-8?B?RlhVRjFMdGswTXBZalVDTitkV1VsK3pLeVArMnNIaFdiRVg0cDQ1OFJQSWsx?=
 =?utf-8?B?aElBVit3R013d0ltTElzNWxpL1dKb01iSnlQWHhNWm1teUJFdHBlN1NVbmpX?=
 =?utf-8?B?NVRUNWUwTXVTWENjeHNkNUVwOHRQSXNDcDFXb3U2R1lxN0hyZ3BId1VURW56?=
 =?utf-8?B?aktFaEluUjloYzByWlNaWnZjbEVkanlBMEU2a1hrZXNNWUMvTTF1SlhwOUlh?=
 =?utf-8?B?WEtrYXgralRjb3hPM3Ezb2hDYkZ1ajlVOXJnOVZYa0tpZ0tsWHdvSE9iMUM2?=
 =?utf-8?B?WnBuV2dINUM5R1dxUzVhQncxUGFMMmtXd0tUOGtpM2lKMG55QkNBZytWZXpq?=
 =?utf-8?B?SkxBTnljQkw4M0FGcFppVTFubDlET2Q0Uk9DSTVubUhnc2ZCaUYwYjh0TGRl?=
 =?utf-8?B?TFRnVXpkYmNNNVpKS3lOV1E5RkYxckRFMHNaLzJETmFxNld1U0x3MlBTOWRG?=
 =?utf-8?B?Q0I0bmU2SnBYMytham0vanVQTGRRTTdNRWFpVUNQTUt3eG5PT0pWRjlwaTli?=
 =?utf-8?B?cXVKaVJaRVNDTUd5U2JhczhCMHg3THRMTXNiZnY0SG15NGJleG1NYTNtN3ph?=
 =?utf-8?B?OVRGaGUyUWVLZHRjNERhZExocFdpTndpSG5tU284YUUvbGxTdngrcE9EZFJR?=
 =?utf-8?B?eEFRVkhDdHNmZ1FmU1FyeHVpd3RKYnlLUUI1MTdjYjdnQzZnSmUyTUFET0hX?=
 =?utf-8?B?eFVyUnhiL3VJaUtyQjNxdjQ3TmxDZmY5ZktmcnlJNFNQR3BWZmI3Tk5IaFl5?=
 =?utf-8?B?SWFOdnNzcWVmTVVRTlVSY3ZFRExSSVdtY0c1cHFxMndUT1pCZ0xqc3BpdXhw?=
 =?utf-8?B?d2FMK21ZMWt0ckhlVW4xbmlOeHFRYXdrblJzVEJoWWpoOFQ2L3daOS9RSnhT?=
 =?utf-8?B?TDE0ci9Ob3VFWkh3OGJYU0JYNWhDNi93YmpYNVFpcmJNSW40ZVFIZDJza2wr?=
 =?utf-8?B?aHZibnZsbmNNR0J2UDdkZ0lxZW15WGU1SlBnM2llYVk2eFgwOHpHNjVpcEF0?=
 =?utf-8?Q?NQ187an419mpW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TktnQXpBM0djZFBxUlNhZEV0YTA1WHQvUHRaQU0rcG1PeHpTaDUveThQdk9n?=
 =?utf-8?B?d2crY0svUE40V3B0NkxWSEpYWE1qU3FLeEZaZmV2bktqaVFlTnVwNDVjZWlH?=
 =?utf-8?B?ejE3cXlyU29TMis0bkovaENVUmVGTEdTNlhxWmM3WmZGSWFJekNpVnlFcE5H?=
 =?utf-8?B?UVBLdEFTaWtiM3VKK0VXclpVeDk5RFdKSGJJK3FHZ2dkdFQ1V0xGOHM2bEY4?=
 =?utf-8?B?OVo3RlNmZk5rZW1jWnFiNHV4aEo0R2F4Y1BVa1ZtNjNHYjlBRDNsUkExYkxU?=
 =?utf-8?B?Ly9BM2gwNkdBQUJzRDdFUlAwczVlemxndGxrV2hZNVZ6WGRTL05TYlN4WUxP?=
 =?utf-8?B?bnkvem5iMWl3ZkRkWjNIT2NXN1I2TWFTdXN6L2V0Z0huTENESk9wZkFaVmpL?=
 =?utf-8?B?dmZ0RnBGYzFtYWtyRnI2NzQ0aXhJa2xKTjEzekdlLzhLeFBRbWJTdjVac2g4?=
 =?utf-8?B?bUtIV2wwOTM4dkozbTVWQ2pBVmNtaHJ6S1ZXZnA4MDU3Z1U1eXlQREFlWVNi?=
 =?utf-8?B?ejRSR3U0bzFDb3VLMXZqNkpEY2VETHNVSnZVbjUvVmZSNHBWb1VnK0Jyb2kw?=
 =?utf-8?B?NFZUalhwSFhrL0dqRGhNOG81Q3VSbm1BQy9BaHFxaWFzTlBqTDArYmtDZ3Bv?=
 =?utf-8?B?cXFrakQ5b2x1MjJVYmZ2SjBSSjNRT3UyMHY4Q2FueTZVRThIREpKUlhWeW10?=
 =?utf-8?B?YVNBcXpqVFA3bE0zVElTaVVOTVZEeE1LaGhwcDBxYUtFYjZrU0hiWVhUejJE?=
 =?utf-8?B?UjR2aHFzVXNRclNaVGlMQVBrZVB3aGYzMUlFdk5UeXc0aFVhUW95YlhwNzJ5?=
 =?utf-8?B?Z1J4UkNzbGxZN1pFYUp4UUQ2elkvVVlkSUVkUmJ3WmlEM29ZOGtiN2FNTDFm?=
 =?utf-8?B?VC9sV3Rodm1YMTRyZzNtU255SC9nNjdUZk5KdFhneEdjZU5ObUNFUFdGb29W?=
 =?utf-8?B?RjdYMStUcDk1dHJleC9kMnZmSS9sNm1ZbVhCYXZNRldXdGlvbmdDMkZCQ0hv?=
 =?utf-8?B?U0ttU0dwK08xYVM1eFlqcmozbFdlb3ljeWxkcGpMKzVIRWpjUkdyM29USlgy?=
 =?utf-8?B?OGNBWTNkQXRtTXRoZ2ZrQllTdk9QOG8zam91ZVdpOUlqZHozTHl0bDdTWmxK?=
 =?utf-8?B?dHFMSXpwSC9KVDdyN1NUek9waHNxbWU0T3owd0FkNzN5SGtNKzN4eG4rTDFt?=
 =?utf-8?B?RVdrYUdFdjUraGcxS2psamFGbUlMQ25xWGg4a1NmRWFnWHhrcHAxais4VDBh?=
 =?utf-8?B?UDh2Q1kvdVpOdjR2U0JDWktsRUQ0QjU3cWlLVEwxSUZoaEFHMnRtMTV0TWdQ?=
 =?utf-8?B?cDBNRklnZTJiTVNGdWNEN1JYS3EySGxWNUdVTlBsdGVMNWc4bnJyTEJZWXE4?=
 =?utf-8?B?V2ZXaUxZSlVSbUQzbU5wNXA5RDU2VkFEMWRtMXRVb2UwUjhJMzlQVzlzTTlL?=
 =?utf-8?B?ZG9RR3lTcTBycGliK1cxb3pId09ZemFlMnEycGZhN0xxV3ZUdjRjTVNybEtS?=
 =?utf-8?B?Zkc0NFpDdDZqckRUK2xrUzNQTzd5VXN2amlsNGpwd0ZVa3VuTWdtdnIyWHNo?=
 =?utf-8?B?NGpEcDJnbDJuQ3dua3ZoY1dyRkRxM1pZODhVbmdNVFRlTVcvM1VOS3FDaWx0?=
 =?utf-8?B?b0lRVHBBck5vckhHZFVmVkFDallqVG1IVVNONUc3UTdlNnZBS1NYYmdabURR?=
 =?utf-8?B?L3hVNkc1dWo4MnpxYlMzS0dpcU5MRSs5bG4rMzdKWlU5NEJYV3JvNnlnUVk1?=
 =?utf-8?B?czdIZU5ocWdKemw0Uk1pSnR5cGNkRENlSFlRcDQxZU5tUWdiZnhORTNJNzBK?=
 =?utf-8?B?QnJ1TU9MMnp6UU1sYk05ZWV6U2UrNkFodW5RUWtKNGpFTVJuc0xjWitadmVh?=
 =?utf-8?B?emhqeFo0SHdmYUp1aTBITmxnTnNmQXBMN3pCaHU0RS9rbDdtRWYrSytHQVdi?=
 =?utf-8?B?K2RLVVFCUURMQ3lRTFhuVGhVR0xQQ29BVmozK3pZVEI3Q09MdURDQWFQb1pV?=
 =?utf-8?B?VGhWTWsrc0R1VzllMC9KM2lzM240cTlyWGNVbHFEdXd1ZGhoZFgyV2U2eWY0?=
 =?utf-8?B?ZFp3Q1NoRVcrTjJSMzFKUVh1WGNPUDlibEFpcE05TkhNbHRoQVdINHhVYjF1?=
 =?utf-8?B?elJWVHU5ZVRzOWxuYjQ0OEt5NjFLdDRkTUloNis4eGRZcXlUTUk4eUlja3h3?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a6c005b-0fc4-4ffa-d0c0-08dd38b0d866
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2025 17:43:55.5789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B4L0emY4H4dS/ACNJbOQEDGwronRtTfzG0Cc6ds1+Rg0d0IJdRRJ2o0bwTiiNAweMl3RsFF0iukQiHFXPKoEFsJ7MIznx9u4FS3WzVwsHWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
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


On 1/10/2025 11:16 AM, Kandpal, Suraj wrote:
>> Subject: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
>> algorithm for DG2
>>
>> Add helpers to calculate the necessary parameters for configuring the HDMI
>> PLL for SNPS MPLLB and C10 PHY.
>>
>> The pll parameters are computed for desired pixel clock, curve data and other
>> inputs used for interpolation and finally stored in the pll_state. Bspec:54032
> Add this spec as a trailer
Right will add bspec# as part of trailer.
>
>> Currently the helper is used to compute PLLs for DG2 SNPS PHY.
>> Support for computing Plls for C10 PHY is added in subsequent patches.
>>
>> v2:
>> -Used kernel types instead of C99 types. (Jani) -Fixed styling issues and
>> renamed few variables to more meaningful  names. (Jani) -Added Xe make file
>> changes. (Jani) -Fixed build errors reported by kernel test robot
>>
>> v3:
>> -Renamed helper to align with file name. (Jani)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile                 |   1 +
>>   .../drm/i915/display/intel_snps_hdmi_pll.c    | 286 ++++++++++++++++++
>>   .../drm/i915/display/intel_snps_hdmi_pll.h    |  15 +
>>   drivers/gpu/drm/xe/Makefile                   |   1 +
>>   4 files changed, 303 insertions(+)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index c63fa2133ccb..85f924bc297e 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -338,6 +338,7 @@ i915-y += \
>>   	display/intel_pps.o \
>>   	display/intel_qp_tables.o \
>>   	display/intel_sdvo.o \
>> +	display/intel_snps_hdmi_pll.o \
>>   	display/intel_snps_phy.o \
>>   	display/intel_tv.o \
>>   	display/intel_vdsc.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> new file mode 100644
>> index 000000000000..e409a86f594f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> @@ -0,0 +1,286 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2024 Synopsys, Inc., Intel Corporation  */
>> +
>> +#include <linux/math.h>
>> +
>> +#include "intel_display_types.h"
>> +#include "intel_snps_phy.h"
>> +#include "intel_snps_phy_regs.h"
>> +#include "intel_snps_hdmi_pll.h"
>> +
>> +#define INTEL_SNPS_PHY_HDMI_4999MHZ 4999999900ULL #define
>> +INTEL_SNPS_PHY_HDMI_16GHZ 16000000000ULL #define
>> +INTEL_SNPS_PHY_HDMI_9999MHZ (2 * INTEL_SNPS_PHY_HDMI_4999MHZ)
>> +
>> +#define CURVE0_MULTIPLIER 1000000000
>> +#define CURVE1_MULTIPLIER 100
>> +#define CURVE2_MULTIPLIER 1000000000000ULL
>> +
>> +struct pll_output_params {
>> +	u32 ssc_up_spread;
>> +	u32 mpll_div5_en;
>> +	u32 hdmi_div;
>> +	u32 ana_cp_int;
>> +	u32 ana_cp_prop;
>> +	u32 refclk_postscalar;
>> +	u32 tx_clk_div;
>> +	u32 fracn_quot;
>> +	u32 fracn_rem;
>> +	u32 fracn_den;
>> +	u32 fracn_en;
>> +	u32 pmix_en;
>> +	u32 multiplier;
>> +	int mpll_ana_v2i;
>> +	int ana_freq_vco;
>> +};
>> +
>> +static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2) {
>> +	s64 dydx;
>> +
>> +	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
>> +
>> +	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000)); }
>> +
>> +static void get_ana_cp_int_prop(u32 vco_clk,
>> +				u32 refclk_postscalar,
>> +				int mpll_ana_v2i,
>> +				int c, int a,
>> +				const u64 curve_freq_hz[2][8],
>> +				const u64 curve_0[2][8],
>> +				const u64 curve_1[2][8],
>> +				const u64 curve_2[2][8],
>> +				u32 *ana_cp_int,
>> +				u32 *ana_cp_prop)
>> +{
>> +	u64 vco_div_refclk_float;
>> +	u64 curve_0_interpolated;
>> +	u64 curve_2_interpolated;
>> +	u64 curve_1_interpolated;
>> +	u64 curve_2_scaled1;
>> +	u64 curve_2_scaled2;
>> +	u64 adjusted_vco_clk1;
>> +	u64 adjusted_vco_clk2;
>> +	u64 curve_2_scaled_int;
>> +	u64 interpolated_product;
>> +	u64 scaled_interpolated_sqrt;
>> +	u64 scaled_vco_div_refclk1;
>> +	u64 scaled_vco_div_refclk2;
>> +	u64 temp;
>> +
>> +	vco_div_refclk_float = vco_clk *
>> DIV_ROUND_DOWN_ULL(1000000000000ULL,
>> +refclk_postscalar);
> Why have we chosed to go down with ROUND_DOWN instead of ROUND_CLOSEST is there any particular reason?

In my trials and errors, ROUND_CLOSEST was making thing off by a little, 
since this gets multiplied with other things and gets overestimated.



>
> Regards,
> Suraj Kandpal
>
>> +
>> +	/* Interpolate curve values at the target vco_clk frequency */
>> +	curve_0_interpolated = interp(vco_clk, curve_freq_hz[c][a],
>> curve_freq_hz[c][a + 1],
>> +				      curve_0[c][a], curve_0[c][a + 1]);
>> +
>> +	curve_2_interpolated = interp(vco_clk, curve_freq_hz[c][a],
>> curve_freq_hz[c][a + 1],
>> +				      curve_2[c][a], curve_2[c][a + 1]);
>> +
>> +	curve_1_interpolated = interp(vco_clk, curve_freq_hz[c][a],
>> curve_freq_hz[c][a + 1],
>> +				      curve_1[c][a], curve_1[c][a + 1]);
>> +
>> +	curve_1_interpolated =
>> DIV_ROUND_DOWN_ULL(curve_1_interpolated,
>> +CURVE1_MULTIPLIER);
>> +
>> +	/*
>> +	 * Scale curve_2_interpolated based on mpll_ana_v2i, for integer part
>> +	 * ana_cp_int and for the proportional part ana_cp_prop
>> +	 */
>> +	temp = curve_2_interpolated * (4 - mpll_ana_v2i);
>> +	curve_2_scaled1 = DIV_ROUND_DOWN_ULL(temp, 16000);
>> +	curve_2_scaled2 = DIV_ROUND_DOWN_ULL(temp, 160);
>> +
>> +	/* Scale vco_div_refclk for ana_cp_int */
>> +	scaled_vco_div_refclk1 = 112008301 *
>> +DIV_ROUND_DOWN_ULL(vco_div_refclk_float, 100000);
>> +
>> +	adjusted_vco_clk1 = CURVE2_MULTIPLIER *
>> +			    DIV_ROUND_DOWN_ULL(scaled_vco_div_refclk1,
>> (curve_0_interpolated *
>> +			    DIV_ROUND_DOWN_ULL(curve_1_interpolated,
>> CURVE0_MULTIPLIER)));
>> +
>> +	*ana_cp_int =
>> DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1,
>> curve_2_scaled1),
>> +					    CURVE2_MULTIPLIER);
>> +	*ana_cp_int = max(1, min(*ana_cp_int, 127));
>> +
>> +	curve_2_scaled_int = curve_2_scaled1 * (*ana_cp_int);
>> +
>> +	interpolated_product = curve_1_interpolated *
>> +			       (curve_2_scaled_int *
>> DIV_ROUND_DOWN_ULL(curve_0_interpolated,
>> +
>> CURVE0_MULTIPLIER));
>> +
>> +	scaled_interpolated_sqrt =
>> +			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product,
>> vco_div_refclk_float) *
>> +			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
>> +
>> +	/* Scale vco_div_refclk for ana_cp_int */
>> +	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float,
>> 1000000);
>> +	adjusted_vco_clk2 = 1460281 *
>> DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
>> +						       scaled_vco_div_refclk2,
>> +						       curve_1_interpolated);
>> +
>> +	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2,
>> curve_2_scaled2);
>> +	*ana_cp_prop = max(1, min(*ana_cp_prop, 127)); }
>> +
>> +static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
>> +				  u32 ref_range,
>> +				  u32 ana_cp_int_gs,
>> +				  u32 ana_cp_prop_gs,
>> +				  const u64 curve_freq_hz[2][8],
>> +				  const u64 curve_0[2][8],
>> +				  const u64 curve_1[2][8],
>> +				  const u64 curve_2[2][8],
>> +				  u32 prescaler_divider,
>> +				  struct pll_output_params *pll_params) {
>> +	/* datarate 10khz */
> Do you mean datarate in Hz

Thanks for pointing this out.

Yes you are right. This comment is incorrect, I'll just remove it.

Regards,

Ankit


>
>> +	u64 datarate = pixel_clock * 10000;
>> +	u32 ssc_up_spread = 1;
>> +	u32 mpll_div5_en = 1;
>> +	u32 hdmi_div = 1;
>> +	u32 ana_cp_int;
>> +	u32 ana_cp_prop;
>> +	u32 refclk_postscalar = refclk >> prescaler_divider;
>> +	u32 tx_clk_div;
>> +	u64 vco_clk;
>> +	u64 vco_clk_do_div;
>> +	u32 vco_div_refclk_integer;
>> +	u32 vco_div_refclk_fracn;
>> +	u32 fracn_quot;
>> +	u32 fracn_rem;
>> +	u32 fracn_den;
>> +	u32 fracn_en;
>> +	u32 pmix_en;
>> +	u32 multiplier;
>> +	int mpll_ana_v2i;
>> +	int ana_freq_vco = 0;
>> +	int c, a = 0;
>> +	int i;
>> +
>> +	/* Select appropriate v2i point */
>> +	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
>> +		mpll_ana_v2i = 2;
>> +		tx_clk_div =
>> ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ,
>> datarate));
>> +	} else {
>> +		mpll_ana_v2i = 3;
>> +		tx_clk_div =
>> ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
>> +	}
>> +	vco_clk = (datarate << tx_clk_div) >> 1;
>> +
>> +	vco_div_refclk_integer = DIV_ROUND_DOWN_ULL(vco_clk,
>> refclk_postscalar);
>> +	vco_clk_do_div = do_div(vco_clk, refclk_postscalar);
>> +	vco_div_refclk_fracn = DIV_ROUND_DOWN_ULL(vco_clk_do_div <<
>> 32,
>> +refclk_postscalar);
>> +
>> +	fracn_quot = vco_div_refclk_fracn >> 16;
>> +	fracn_rem = vco_div_refclk_fracn & 0xffff;
>> +	fracn_rem = fracn_rem - (fracn_rem >> 15);
>> +	fracn_den = 0xffff;
>> +	fracn_en = (fracn_quot != 0 || fracn_rem != 0) ? 1 : 0;
>> +	pmix_en = fracn_en;
>> +	multiplier = (vco_div_refclk_integer - 16) * 2;
>> +	/* Curve selection for ana_cp_* calculations. One curve hardcoded per
>> v2i range */
>> +	c = mpll_ana_v2i - 2;
>> +
>> +	/* Find the right segment of the table */
>> +	for (i = 0; i < 8; i += 2) {
>> +		if (vco_clk <= curve_freq_hz[c][i + 1]) {
>> +			a = i;
>> +			ana_freq_vco = 3 - (a >> 1);
>> +			break;
>> +		}
>> +	}
>> +
>> +	get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
>> +			    curve_freq_hz, curve_0, curve_1, curve_2,
>> +			    &ana_cp_int, &ana_cp_prop);
>> +
>> +	pll_params->ssc_up_spread = ssc_up_spread;
>> +	pll_params->mpll_div5_en = mpll_div5_en;
>> +	pll_params->hdmi_div = hdmi_div;
>> +	pll_params->ana_cp_int = ana_cp_int;
>> +	pll_params->refclk_postscalar = refclk_postscalar;
>> +	pll_params->tx_clk_div = tx_clk_div;
>> +	pll_params->fracn_quot = fracn_quot;
>> +	pll_params->fracn_rem = fracn_rem;
>> +	pll_params->fracn_den = fracn_den;
>> +	pll_params->fracn_en = fracn_en;
>> +	pll_params->pmix_en = pmix_en;
>> +	pll_params->multiplier = multiplier;
>> +	pll_params->ana_cp_prop = ana_cp_prop;
>> +	pll_params->mpll_ana_v2i = mpll_ana_v2i;
>> +	pll_params->ana_freq_vco = ana_freq_vco; }
>> +
>> +void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state
>> +*pll_state, u64 pixel_clock) {
>> +	/* x axis frequencies. One curve in each array per v2i point */
>> +	static const u64 dg2_curve_freq_hz[2][8] = {
>> +		{ 2500000000ULL, 3000000000ULL, 3000000000ULL,
>> 3500000000ULL, 3500000000ULL,
>> +		  4000000000ULL, 4000000000ULL, 5000000000ULL },
>> +		{ 4000000000ULL, 4600000000ULL, 4601000000ULL,
>> 5400000000ULL, 5401000000ULL,
>> +		  6600000000ULL, 6601000000ULL, 8001000000ULL }
>> +	};
>> +
>> +	/* y axis heights multiplied with 1000000000 */
>> +	static const u64 dg2_curve_0[2][8] = {
>> +		{ 34149871, 39803269, 36034544, 40601014, 35646940,
>> 40016109, 35127987, 41889522 },
>> +		{ 70000000, 78770454, 70451838, 80427119, 70991400,
>> 84230173, 72945921, 87064218 }
>> +	};
>> +
>> +	/* Multiplied with 100 */
>> +	static const u64 dg2_curve_1[2][8] = {
>> +		{ 85177000000000ULL, 79385227160000ULL,
>> 95672603580000ULL, 88857207160000ULL,
>> +		  109379790900000ULL, 103528193900000ULL,
>> 131941242400000ULL, 117279000000000ULL },
>> +		{ 60255000000000ULL, 55569000000000ULL,
>> 72036000000000ULL, 69509000000000ULL,
>> +		  81785000000000ULL, 731030000000000ULL,
>> 96591000000000ULL, 69077000000000ULL }
>> +	};
>> +
>> +	/* Multiplied with 1000000000000 */
>> +	static const u64 dg2_curve_2[2][8] = {
>> +		{ 2186930000ULL, 2835287134ULL, 2395395343ULL,
>> 2932270687ULL, 2351887545ULL,
>> +		  2861031697ULL, 2294149152ULL, 3091730000ULL },
>> +		{ 4560000000ULL, 5570000000ULL, 4610000000ULL,
>> 5770000000ULL, 4670000000ULL,
>> +		  6240000000ULL, 4890000000ULL, 6600000000ULL }
>> +	};
>> +
>> +	struct pll_output_params pll_params;
>> +	u32 refclk = 100000000;
>> +	u32 prescaler_divider = 1;
>> +	u32 ref_range = 3;
>> +	u32 ana_cp_int_gs = 64;
>> +	u32 ana_cp_prop_gs = 124;
>> +
>> +	compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range, ana_cp_int_gs,
>> ana_cp_prop_gs,
>> +			      dg2_curve_freq_hz, dg2_curve_0, dg2_curve_1,
>> dg2_curve_2,
>> +			      prescaler_divider, &pll_params);
>> +
>> +	pll_state->clock = pixel_clock;
>> +	pll_state->ref_control =
>> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE,
>> ref_range);
>> +	pll_state->mpllb_cp =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT,
>> pll_params.ana_cp_int) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP,
>> pll_params.ana_cp_prop) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS,
>> ana_cp_int_gs) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS,
>> ana_cp_prop_gs);
>> +	pll_state->mpllb_div =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN,
>> pll_params.mpll_div5_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV,
>> pll_params.tx_clk_div) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN,
>> pll_params.pmix_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I,
>> pll_params.mpll_ana_v2i) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO,
>> pll_params.ana_freq_vco);
>> +	pll_state->mpllb_div2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV,
>> prescaler_divider) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER,
>> pll_params.multiplier) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV,
>> pll_params.hdmi_div);
>> +	pll_state->mpllb_fracn1 =
>> +
>> 	REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN,
>> pll_params.fracn_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN,
>> pll_params.fracn_den);
>> +	pll_state->mpllb_fracn2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT,
>> pll_params.fracn_quot) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM,
>> pll_params.fracn_rem);
>> +	pll_state->mpllb_sscen =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD,
>> +pll_params.ssc_up_spread); }
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> new file mode 100644
>> index 000000000000..37ccf138dbcd
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>> @@ -0,0 +1,15 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2024 Synopsys, Inc., Intel Corporation  */
>> +
>> +#ifndef __INTEL_SNPS_HDMI_PLL_H__
>> +#define __INTEL_SNPS_HDMI_PLL_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_mpllb_state;
>> +
>> +void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state
>> +*pll_state, u64 pixel_clock);
>> +
>> +#endif /* __INTEL_SNPS_HDMI_PLL_H__ */
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile index
>> 1ff9602a52f6..feabbd476bb1 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -258,6 +258,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>   	i915-display/intel_psr.o \
>>   	i915-display/intel_qp_tables.o \
>>   	i915-display/intel_quirks.o \
>> +	i915-display/intel_snps_hdmi_pll.o \
>>   	i915-display/intel_snps_phy.o \
>>   	i915-display/intel_tc.o \
>>   	i915-display/intel_vblank.o \
>> --
>> 2.45.2
