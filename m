Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D718FC1F50B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703C010E94C;
	Thu, 30 Oct 2025 09:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SHzdYkU7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2A110E94A;
 Thu, 30 Oct 2025 09:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761816744; x=1793352744;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9I4CEdw2l731TVZ4imnX/D1FteYHtTPclfztmTJZ1BE=;
 b=SHzdYkU7rfQ3SccJgsm5b9VYgtAXt9RGk7SkGsXA4PjH6nWJ+ig7WPP5
 CYu7fNQn10JZTTKp+kVMgPBt2z+63cwBLqsS2853CAcgdEm1TcFjXL8yQ
 eF3ZGtbjmjErOY7TAPLx0ElfUcmh1NVITpOLByNKEJgrG30YxSNU/vWqJ
 O5g5+BVBIWdvsyWWyUlUm+G67U1vtbAwkC+ij/NIkGxn6OebuQjKoMDua
 rK6l+lX2HxOltlXyw94lvNgbGUqHMvtqM2U+JGyZGZl/81aGPRmvxRa1x
 RSf3E4DSDOVRx18NOSVSjBykmMACNAAP1xRutrBCV3n6Ff4bG4AIJTKM8 A==;
X-CSE-ConnectionGUID: mErkiIsgSKaRwqTg8xH1Qg==
X-CSE-MsgGUID: tCtvPHusSBq91ParcTDTNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="74551654"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="74551654"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:32:23 -0700
X-CSE-ConnectionGUID: QJmbvjrWT42EQFWB/GFDjQ==
X-CSE-MsgGUID: 95kvp9guS5GGkWMwwNzwHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="191073139"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:32:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 02:32:24 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 02:32:24 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 02:32:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HPQcry2iWlNrYbA4S/9gYRHgEvWCicYiZXMpPhJIMb3L5tUKo6lggjE+iPjc0o1y+g/Q/1mzhuM1HhLNM8F9WO/RAMb2JaME3vRj2eOrIpVlMh0Ij0Gp0k5fCKTQ2Cb2PsxwpG8pNHtUIg8B3hz+RpP020bY8T3AitkJ7Ezqz13/64Ypwn68f2YBljH1VTsgqpoQxsJZjriOIhwOY2nMM+797rtTGVP4C2JOpYeM9GDlYEp29bZSl0Cb2AVSIVRT0sQ3G17qLh86J1r69mhBdBuKVAN4wcUceBfh88VuMgGnKGDie+89WYyh41mQSSjyYC9vEHVBpjI+i7WoVPy0dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAd2ax7xWoo6/LRE6KbBFKCxeSNWZf2uV/9PVjfjv+8=;
 b=J74r1MGIhsfUVmTGk4mNnvnhVVHqCswMpG89sSH99/PsD+7bEqnrBWt1aQlqcL1tiFawMzcft7sDDYa1F4PN/yMQ29fsi4ki8qBZNSJLGajhVlMnfPW0VhsjAxQqZ0WiVEgpxdeyOosJl+oZ2YarWdB2Z8G2RfTIclJb3H6QbyhOedTScXIeLZqwPnbU5x9qptTeEgCfNCJI9L39Iqp0DzGWpcbsVBmv913HMegF2eg+lEPohCKOQtTl/0DIoNb9A71sFSf5cjI5/UK7urc0w9FZCtCT0k17cCeZT4zJY/gIwKM/QSh2MXaO17EaDT4NBzgXqmBHKnUN6f/e8gWh4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB8074.namprd11.prod.outlook.com (2603:10b6:806:302::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Thu, 30 Oct
 2025 09:32:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Thu, 30 Oct 2025
 09:32:22 +0000
Message-ID: <b13b875d-395b-49f5-8b54-584590c4df9a@intel.com>
Date: Thu, 30 Oct 2025 15:02:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/dp: Allow AS_SDP only if panel replay +
 auxless alpm is supported
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-3-ankit.k.nautiyal@intel.com>
 <aQMghHM7AJAU6m0m@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aQMghHM7AJAU6m0m@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0069.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB8074:EE_
X-MS-Office365-Filtering-Correlation-Id: bdeb547a-280b-4baa-9414-08de17973ab0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkNMU1BMQzc2RVpOVFBlcDg5bHh1NFFiZGdIRzdvWHBtQmNYNlVhZ3lPRFJ6?=
 =?utf-8?B?dUt3cE0zR1Z5SUFBbVMrY0ZqdFF3YVJDWjNETjZxQldhSW5MTU9CcnduSDV0?=
 =?utf-8?B?RDhiUVJrRCtpN2Y1VGZKNTErZG9oTTlXSFpwci9rZkRwdFRhUWVKbjhLdXVG?=
 =?utf-8?B?aXlHcXk0Q1h2eE85MFR0NW9Tc2t1bjdSUzdnVU5tbUJKaDYrYUhJa3YycWJX?=
 =?utf-8?B?M0tScGdpSnlHL0tXZTBKaGd5QlAzUnc0Uzg0V0NOc2t3Y3BvdU1oRVYzbXR4?=
 =?utf-8?B?am16cTlySUVyZmJmSWNjdzNFYWZ3MVhCRk05TjNhcmY0dnc4cDJqVkV3UDRQ?=
 =?utf-8?B?c0Z3Snl2akxOSWE1MVhidzk3NWlBK2R0djNWSHVqcnE1VTg0UFk5S0VQQ1ZB?=
 =?utf-8?B?SWVvRmNobE9mUHpBdDRTUWtUVWZyVGgzVFI0TjhIdXBHclZjS0ZLTmo2QVVJ?=
 =?utf-8?B?dy9jNS9EWHA1NEg2YWhBRzBmenhHZDR5cWhmOWNFRzI5a0ErM3hEL3dlcmZP?=
 =?utf-8?B?VEFndXlBNDJ1NUpmdnAyM01uVTlkUklDOEpRR2NCMGJ1U2FtU3hCNjFwdE4v?=
 =?utf-8?B?bUIxcGtrQkJMOUQ1WlJ4MFE1cUN1clFqWkpXRGhkdTlTRjRDMGd3TDhVc1BX?=
 =?utf-8?B?enBDNDdsYktVb1pjQjJaM0h0aHpOMmx0eENSbWlidEQvMXFPd2hFalg3UGVG?=
 =?utf-8?B?TTdNYjBXdnhnRkRSVTNTOWhoRnBURjZCdWxpYm5Jc1hES2dJSEJHUHVKaTR5?=
 =?utf-8?B?MnJZODZxMW9sdFdZVzJlNThlcHZvcEk3dk1ORUF1elFydldTMUJZSk9qdXpv?=
 =?utf-8?B?OU4xdjhCSmRVNkVkTGJtek5OL2hMSEpkR0Vtby9xZVh6MTgxeVBsZzZQR0lN?=
 =?utf-8?B?ZDBiUHNPWWNYK3JKMXJDd0R1Z252QW85RVZQTENyc1VVd2h5enRUdFZWSzJY?=
 =?utf-8?B?U1FwVExnRWZLaXpiVk02TlE5VmJrbVYzWkh1RkhsQThSTENnUGhpMXFaalBm?=
 =?utf-8?B?RXQxbFlEejFOVE9zNDAyRU1DNFdLNUM4OTFoRlRNU0VXRzNZaGtmV0d6OC9Z?=
 =?utf-8?B?blJGUkpaSXNMZHlyOXJ5ZnZ4NnJ3S3Q3dHFLaklFL2VOYkFVdTlEc2RubFor?=
 =?utf-8?B?cGZwdHR6RGc1d2V1Nit5N2FxNm5xbnFWblI0QjgvU2lKbEtPQkFON293eGpP?=
 =?utf-8?B?VmFPWm9VQVJpK1VKV05WTVdMZXh4K25icE1yMEpzN3piN21aVFY4R3M3WVNu?=
 =?utf-8?B?dk9XOFNoR3BzUDBBMVpIU3BoN0VnZkpwWkFPeFc5NVRDVXRVNWV2Njh4aW8x?=
 =?utf-8?B?WnlsR1NoUE5md1UxMW92M2NjNUtJSXNwYXJQdmx3T0lraVNadVc3N2U4MTNx?=
 =?utf-8?B?dHhGekQ3aDJIdVR6bElJNllwVUZVNE5pUUlCRUpZdE1iZlp4RFhFSjJ6dEY1?=
 =?utf-8?B?L2VIdVhrbFNqTkY4Ly9oVXFndFRDUlk1MlBqeGZhRjFuRHYxcDFvd2kvN3dI?=
 =?utf-8?B?VlVPd3gvZDVZcHBNeVNWZS9udEFYSzRQQWdJUEhXMVk1MVg0NU81Q3J4UFB2?=
 =?utf-8?B?ZWk4d0R2TkF6U3RXSm90YXNBejhCUS9DTGRFcFFMd3d6S3dDNnB3Zm9lWndB?=
 =?utf-8?B?U1RXdFMrdTVya3YvQWl0WkkwUnIxOVFjMkp3eXFqcVErR1ZFSGNVODFNbk0x?=
 =?utf-8?B?YkZuU0FpSURHZFloeVRwSVVmNWVrT0xNOTBidElXU21CbVhoUXg1dU9zQktU?=
 =?utf-8?B?MFNTYXVqejdZT1hBMWIvNmN0QWxCZExDdHpwRWRHN1B6TXpTWUZ2ck5yd0JN?=
 =?utf-8?B?TEd3S0cyRjVKdlQrTjdueTdGK1NJL1lETCt5SnlhVFZ4NG9BMVZnaUkyUDhv?=
 =?utf-8?B?ZkxEQTI5Y2U3NmEyaHVvRHpRL3BnT0x2VXh0bzBtTDVBVGJQM3ZuK3V1WjZp?=
 =?utf-8?Q?0IP+CqjaUP3NyqEVTu5/wx72HqipLp8o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TSsrb3IyY3ErMEM0UXJHczFlUEFJVExvdUY1eGMzbk5GV3huQmJoVjlEMzVM?=
 =?utf-8?B?TVFJWTZvdzJraThFRzNyT25Hd0M5d1R2ZnlFY2hyWDBVR0xuaGM1TGxSWE92?=
 =?utf-8?B?bHIrTDN5SmhnQUJheWZKd1RJZ0pKZVNvTU9HZ05LVDIxVWQxcjVCdE05b2hq?=
 =?utf-8?B?d3lWSmZFMnJqS1dhWklLOWIweGR5Zk85ZnRDaXhiTFMvOFZUcjdxelhLOHVG?=
 =?utf-8?B?a3JNTXNOQVRza2E0TTJaR2JRMFlmNEFYUmFaVm9RYWV5QVVId01iZkdKTzNn?=
 =?utf-8?B?aVN3ZFVraXR6REkxVG1va0RIb1ZuL2dhaGVITndaZFBTc3VGOWROMzNXT1dS?=
 =?utf-8?B?aVA5b1RZQzQ5VkNvTEl3RXRod0FqOU1PM2ZGaTRHakx1NHVpRkFBbzNwUHFS?=
 =?utf-8?B?bmhEM2s0NkFhcTlEbENXSVpGQmhEZG1raXgrOERnL09xVkQ1eGhCaU1NZFMv?=
 =?utf-8?B?VjhjTGRZaUVOUW56ZkVDcTZYODRpeVp5NTdaOXJvMmN5bHUrbEk5eGpCRHRq?=
 =?utf-8?B?b0FTV3h5R3EwUC9xY2dpaGk0V3ZVYkhWdk5EMUN4MXk2emJUWkFPZnVzYjNu?=
 =?utf-8?B?cFpxNS9VY0EzOEh4ZFYrRy9neEt4NHkzZjh1VFZZRGZzSWtwVEJqKzhGZGc2?=
 =?utf-8?B?WndTaFhPY0FxNDEzWURQZ0JOVVRFb1l3MkExdDZZSjAxcWRuVHBJMTgxSzY2?=
 =?utf-8?B?dk5qeXo1WW1RZmtkRlRkYXpBUGtHc2xyaWhyWFdIWnRCbVdXbHFER2hveEZW?=
 =?utf-8?B?TjA0MGxjMWxQdXMyUDRhUnh0cGx4V21jaUlYcGticDVBYlduZ005S0cxbnhS?=
 =?utf-8?B?ZEZNMnlrc3NUMHVieDlod0NUc0cySy9jYWF2K2gySmNpMTJnVzNuMFExc3Fp?=
 =?utf-8?B?WVArbkNUZFlxMjIydnZsS1VVQWlvSGc2QW9OeExaM09rREZJZnByblV0MkZM?=
 =?utf-8?B?VUlMaHhxMktSamd1ZXo4a1N0a2IrY21OaTZCcHdVTHBFTGxZTmNaaFhURXpj?=
 =?utf-8?B?SVpTRGM3SWVHY3JROVI3dFc1dkd5V3RxUnhnekdUb3hnb2ljV0doR2xlaTJK?=
 =?utf-8?B?Y3c1YXF2U3pJOWhTMXJLS3VaY2tabVFQelZRclhnVEllZkVlVEJFMnVKSkY2?=
 =?utf-8?B?bktUWHVoVHpvUU1SRVZSUjVwOTJxS2ZYODZ4QXBvcm83dWhNdWJ3SDIvb2lR?=
 =?utf-8?B?cjFicngwQjY1WGRTb2ZyUVNKR0w2WktWci8rQk9NOS9IdnFRMS9ZbVh3NmFh?=
 =?utf-8?B?alduQ3IyNVVaYzZaQS91azRwNEtqZk1MSWw4azhNYTlYN0JkT1FVY01FM0ZB?=
 =?utf-8?B?R1lyZmlFNXoxN0tab1VldjdEeVBYaDlkdy80dXBXQ3N0b2dHdmlvdFg1My9a?=
 =?utf-8?B?T2EyTzNzNm9pczQyRjA1aUZrYmhVQWZQVjJnL0tGcFZXeWswN3F4M0J6TWtp?=
 =?utf-8?B?YUZ2cDU2NWFJUC9iQUNnem8vREdUOCtTQkRFekN0TkI0UFdMekk5MnJCQjk1?=
 =?utf-8?B?aU8zOVVRZWVzeHlUbTlraGJLbS92RzAzNWE1blNmRll2c3VhZldZbHZpN0FM?=
 =?utf-8?B?S3B4SnFwbVhyb2YrNVBsdU9OQXZMQ2RlYmRZMkErREg4U0lueDFtMzdzd0Fa?=
 =?utf-8?B?citYQnJudjBiTldFNVJCU28rR2dkdFU4MmhaSCtXNXBWR3ZPcnZUR1A0VUYz?=
 =?utf-8?B?djVCZDNSUk5HRDNzYTMxZGNKQ1U0RkorektYWi9qSksrV3dLUnhuckhDZkZK?=
 =?utf-8?B?SUF5WWVneFJqRFNsaGpKNXc2aU9LTndwbHRWbXoyK01leE9sSlcvQVAzZEdO?=
 =?utf-8?B?M3Q0V2pXZWZrbEhEQU1aa0Jxa3R2azFxSnVva0hyZVIvZ01xRFdkVEk4OFM4?=
 =?utf-8?B?bnZKMjhkbWtkb0tJd01vM3FaSEh5eFF6eW5IbXlzeVNzZVhnTzVpTGNzRlZH?=
 =?utf-8?B?bG1HZkFKMFVlWWVkbjdGcUdnT1hFQk05Nlh0UUh3MS9sUVdtYkNNdUtRdnFr?=
 =?utf-8?B?SXMrMWp6UnA1NlIyNGUxNnp4bVVyaDBSVFQ3TTQ1ZmlRV0F1dFlDWFgvK2VY?=
 =?utf-8?B?UndLTTN1cGFvZHl6YkUySUNGbnl2WkJ5OGI4RVA2MjgwVTVRQWt6dWRxazk1?=
 =?utf-8?B?MUVnWEF4dkRqUGhsOFluRDVaYTcwTDBiTXJSWnVkWXdEMEtkR3dvS0c3Znlt?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdeb547a-280b-4baa-9414-08de17973ab0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 09:32:22.8620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kSX7Fh0rq4uLImddzuV18ogwkQZY7b/XEnM1W1p8CnuSUV4WjDjf7ovyEbuyRcOPP2Xx32rZhnoWb5EOiwqkYOCTzsgMQpphMrLxud/j9NI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8074
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


On 10/30/2025 1:53 PM, Ville Syrjälä wrote:
> On Thu, Oct 30, 2025 at 10:47:52AM +0530, Ankit Nautiyal wrote:
>> Adaptive Sync SDP is required when Panel replay is active and for
>> supporting VRR on PCON.
>>
>> Since VRR on PCON still needs some effort, enable adaptive sync SDP only
>> when Panel replay with ALPM-Auxless is supported.
> AFAICS we don't actually check for PCON vs. not anywhere, and thus
> we are in fact allowing VRR with PCON. Or am I missign some check
> somewhere?

No you are in fact right. I had a patch to avoid vrr on PCON  in 
intel_vrr_is_capable() in the VRR timing generator series, but 
missed/dropped somewhere.

I will add that patch before this change.


Regards,

Ankit

>
>> Set the AS_SDP mode for Fixed Vtotal mode for fixed refresh rate case.
>>
>> v2: Remove redundant target_rr assignments. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
>>   1 file changed, 12 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c013eb2e18a1..b5b855453845 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2934,7 +2934,15 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	const struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>>   
>> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>> +	if (!intel_dp->as_sdp_supported)
>> +		return;
>> +
>> +	/*
>> +	 * Support Adaptive-Sync SDP only for PR+AUX-less ALPM for now.
>> +	 * It can be enabled for PCON + VRR, but that is currently not supported.
>> +	 */
>> +	if (!CAN_PANEL_REPLAY(intel_dp) ||
>> +	    !intel_alpm_aux_less_wake_supported(intel_dp))
>>   		return;
>>   
>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>> @@ -2948,9 +2956,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>>   		as_sdp->target_rr_divider = true;
>> -	} else {
>> +	} else if (crtc_state->vrr.enable) {
>>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> -		as_sdp->target_rr = 0;
>> +	} else {
>> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>>   	}
>>   }
>>   
>> -- 
>> 2.45.2
