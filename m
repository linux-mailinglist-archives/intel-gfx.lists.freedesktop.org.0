Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2436A9C6AF5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 09:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74B510E69E;
	Wed, 13 Nov 2024 08:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Chdz/+Yo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2F210E69E;
 Wed, 13 Nov 2024 08:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731487939; x=1763023939;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8eNSwEd4bwQ2q+ilHX4MrJplbcAHormoaAMpmKWk/aw=;
 b=Chdz/+Yo4Z1q1xrtByHuwBUKNKdd94UkvD7tVvLMI4BIPNZDKbK7X3jR
 k2eDTkaoAo4UW2lGrDbdO/Kfdod5V3uwjKnXvzvRTEhxYx3JaarlvQSMa
 y0ShWAwG9WJBMgP9Mmn0e+8VtNi6bVYjojU8vmxi85onnRK6y9iPgDfyq
 kEFcWMRHwLUvbXRmdXBNPy0LGHgHWyXTvZ5+GaHbhzZyRMS+go2CHyWZv
 wjhid1+zJt58zM/FJg51SUU2emFVE28l5DYEfxpt+hd9AusZ+wAh3H3Gl
 QTEy3X6GOwLf7w3Yk4UuhTAUfehPEjGlVUEDcb238NTBnlf+43JLWxaWt w==;
X-CSE-ConnectionGUID: rvcH3ThRSdubcjiIhc+Vrg==
X-CSE-MsgGUID: +qX9CChZS5OkfeT6irzpOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="30769405"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="30769405"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 00:52:19 -0800
X-CSE-ConnectionGUID: /20HWaYMS5yfzdVSfqGJtA==
X-CSE-MsgGUID: MrhCw2qJRdq4SgSAHbgnXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="118744166"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 00:52:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 00:52:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 00:52:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 00:52:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DVivX8iU4h6DIwhD8Jn9r6ddzBqnVJytKDZVzZaHaGtks8YDJrM3BDvOCNDprucZJ48HAEPH5VXboTULo2lBQvcl9GrfOarZZT+/3glYCQRLfQW64oqEyS+krYE0NOFDBBANmxsXWG/ex44lUFKs4GJ3ST470q3+ykUF7eQl0mMzySdkit/oyH5RSecW+xeWsk3496ZG3ATe6r1pY1dEeFNvxC8Lz6Tw+1wtmezpHlXzq2crkG15HVXL6uV3Iwed6Qa3pnvpXH4KjsL+aESq+AdcoRKqQhmz0pVYM/vNN0qvd8F0dNIwLOSwIU5ykQI27kStohUxyKumWHYyvxd3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GJMWk7az7a7+6/8hZatN7fplHiHUBlwA/LeR3OqKLko=;
 b=g6scVVnAArsCseyfcAbZXtsaP0Ti27epMag/uhnErRCzYufa+ohEDn2y7iSIoKm/EYdajwnaLo3RnRgJJxFsKX7vQYtG1dAenidX9nfXaA3mLMOF87iAvFouzRiPaqDsYW+6SbiobVFB9edDfV8NAupLSwN+spW1t0r44PlyfQoIbppqu2aPzGJEd5eWoykQZCok26+ABUae7XzspQxUhAoy2dPlFLwAfi15O5RoqwDDjZ/J9QmIb3PyP9Y40s6K4lJjt6GdGCE5Yhx5egQqOOcpg/iFpURafOw+QI/CZV/zf5/cVjM1kSY1+eD5krp7mkXfNZp+LUMpjDUa0VV6QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Wed, 13 Nov
 2024 08:52:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Wed, 13 Nov 2024
 08:52:15 +0000
Message-ID: <3fb21945-7302-418b-ad2a-fea5ddfdd730@intel.com>
Date: Wed, 13 Nov 2024 14:22:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing
 DSC
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
 <CH0PR11MB5508C6F1C3D7A4FDAB7D5080C2582@CH0PR11MB5508.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CH0PR11MB5508C6F1C3D7A4FDAB7D5080C2582@CH0PR11MB5508.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4873:EE_
X-MS-Office365-Filtering-Correlation-Id: 8496a5be-f116-4bf2-ae52-08dd03c078ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmMxYzg2ZTAzR0k5cUxLaUJ6WU43eFdqdG9KblNnRTVmdlFTZDB2dlJUZTl2?=
 =?utf-8?B?bU5qUVhHSEJPRWRWVkQ2WDljSmdFZ2c5V0lMVWFSWUtJOWVrRUpQTm1zYS9X?=
 =?utf-8?B?WVd5N0liUkVRM3grWnlwRlZQMVJRL3FQS3BtR0pSaVlpOGRkVDBIek8xeWZy?=
 =?utf-8?B?L3J3Y0JQVWZCeW1zc05NMy8zU1hxM0sxRWRvSVBvOEx3elBvaTU5U2pNK2pa?=
 =?utf-8?B?YXh6L3pqWC95b1BIYk1nRmNybVdCcFYxVVNyTnZHa0JDd3Bob0JrRVJpUGov?=
 =?utf-8?B?Wm5vVkhtMW9VU2duV21hUHFaclR6ak5Fb1JVYnRRMTZCUnZaOVpMbFd4Sk51?=
 =?utf-8?B?NWZUelNYWm9mUXNkeWdOZXZIN2l4K1lad2p3UU93YzR4UGFtRE9admtVRWVF?=
 =?utf-8?B?Tk1Vandrd3l4cTFJUFE3dUJ5T3BiNGN0bkhpdnRGcWh3eVphN3VrRHF3R3Jo?=
 =?utf-8?B?ZDRMcWJkdDY1Sk1VYnNFS0tZZ3BOQmFHTnVJaExkVjdwQjhiYkljREJPK0dH?=
 =?utf-8?B?c1czRHliL0h0eFFvWURaSHdqd3NZLzk1VkkzWitjcFVhUVN5eVlldlNjU2No?=
 =?utf-8?B?NG9wcklVOFJYTmk4U1ExK2lvM25Wb2xxTkJpeGNuZUNid0xJUWIzZWF0Zysx?=
 =?utf-8?B?RjdTYytiaHdFQXh4UzBFVjQwakJWcWhPRkM0MkU0bWlXbC9CNU5TSE05Z1BK?=
 =?utf-8?B?SnAwMzZWLzhWbER6QjMxQTg0MFNXOTJMWUhERlhHYWxLZ0I2VzZZa0hHdVoz?=
 =?utf-8?B?WWZmU2VrWTJHOGpNOGY0aW56V0xWYWk3THVISDVpa1VSMWRYYldYYmFQSkFT?=
 =?utf-8?B?eEc3NUVzOFZMdWhKZXpkMW1FYitxSENVVWE4b2N4ZnhobFA0ZVMxeEg5aW1I?=
 =?utf-8?B?eXoybWVtSDZZSjNFbkloeHIwOEZzczBZVTVoNmkxK1Y2aXJkaUpRL2JMQ1k3?=
 =?utf-8?B?N3hTZEx3UlE1cDI5aEh2Yk1CczZBVGsydWxzNkVCcXBneGQ2WWhnMjZWenFh?=
 =?utf-8?B?RENkMjNvazd0OFFZOHVkQjRkdFNRdWg1VVg0c1k0YjBSaXA4TG9KSTlsNmly?=
 =?utf-8?B?YlloRU1WKy9kYUdST0k4UXpSLzd0UzYrOUc0eVZCV3p4ZGVDeE9aVEdTL0N1?=
 =?utf-8?B?Sndpb0QxRUJoUnFGM3dYSlFXMUFWZEE2L2tERnpDcXQ0ZVM1WVlKRDVxSzBs?=
 =?utf-8?B?Y2lrd3B5cFBsa3prMGh4Y2xaYVRJTUhxeFhhR28yNGIzQXBmbmp1aVRncWFG?=
 =?utf-8?B?eVY5Zm9oM2huVWxjcnNKdFlCSmF6UUJXNnhaV1RaMVB2eTRLMmdmcU1TcXdK?=
 =?utf-8?B?MHVTbENXVEdWVmEybEMrYmJGUkh1ZjRZOVl4OUVGYjBENzRrbEE0aFNMMmhM?=
 =?utf-8?B?S2dqWmYwc0dJUU94Y1dudEQzVUs3UTdTVzZqMm5BU0QvbDJmdGIzZUZkMDEx?=
 =?utf-8?B?WHJmRDdPRjBraCtoc0V1UUFHb1NDd05XSWE1eTJOVXU3OHF5Y3VpUjBmWGJD?=
 =?utf-8?B?K0FTdEZDVFN5L1cxNzBwWjNKYk1nQzA1UVUwV3FZbjZHczg4K25DZWZBSW40?=
 =?utf-8?B?YmduVDBWcFhPdFIzRE52Q05IcXhFWDJ4bVFzTFdBR3hJN0x0TGJhNDY4TjdM?=
 =?utf-8?B?REl6ODg4RDJVcUpiQmowbGlnaWpMd2o4aFFYSTEwNDBlVEc0SmluR3k2eFdO?=
 =?utf-8?B?U0NwYjdoQkR2YXplTnVzLzBLWTIzdUxiZ25xVHRNdklES0ptUmFQb3N1dTVD?=
 =?utf-8?Q?GUr18fqZSliG9o3741c62y9F3p3MuwNWhzy1YRw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2JCOUlNR0xMMWxaeng3NWU2U3kwVStJVCsyc2JpdCs0VEdpWWFRNFgzb3dZ?=
 =?utf-8?B?cVp5YVlzbS84QWlOWlF4aWJOaXRWYlRHWWdzMTdpRmhPbzdNZmMxMjBsbllH?=
 =?utf-8?B?WHA0c2VQaDREekpEWExmTCs2Mi9uQlBIb29IdlBrUDIvTVJIYWgzU0R2T3NY?=
 =?utf-8?B?UTh0U0RiT0Jpb1Q2RXEzZThoKy9FVmIxVHhmYmkwU2JiYUZJM2xMeW5LaTJq?=
 =?utf-8?B?UDR0MEk5cU5KUnpnMzlGQkhkUWFNenJhWHlZQUQ0WkMza1lVc0Jld200U1B0?=
 =?utf-8?B?Y2hNa0g2dlZqL3pzTFp2ZjVObzNVREt6UGE3UTN3REczejhCb1R2S05CWVA5?=
 =?utf-8?B?Sk56enZZZEFrZXd4SUE4bk9Za1p4eHdDR3BCYktwMDJkNmcyQ212bUpoRnJL?=
 =?utf-8?B?U01FaVRoMlZMRUVHV1FJMFF0dnpqN0NaZE0wekN3VU1YNWxrTm85VEVHRGZQ?=
 =?utf-8?B?N0tyd21odFpSM21aOHFQVy9zQzlFL0xxcXhRZE9OZmJNOXBYdE92M2RWRXFN?=
 =?utf-8?B?RmlpZ0xFcG55MFNvV3AxUFpQaGZSak5BMkRFVE5BbW00cjlyOW5oc25KdUFt?=
 =?utf-8?B?N1BGMTIxWVVOa05VdVFJSVZMWEJUS2VIaDlCT0RZWUlwTzE2bWJsZFg5enRl?=
 =?utf-8?B?dE41RlN2UUpPTThtQXhJV00vcG8zdnF6aGdCUEU2R1RtR2J3THJ2UEZPRUps?=
 =?utf-8?B?TDRzTlhRd1c4N2psUFJEOE9HTExubk1pS1JGb3QzaHZCcVdOQVBEd25GVUZw?=
 =?utf-8?B?b1JzREZNQjBhZ0xCUUxoUmowbzZMSnhITmY3cjhqRk9UN1pSeHhsZUoxakE1?=
 =?utf-8?B?cTE2KzEwcjBTSGpxNXNJMW1rM29CNkx0bnd0SWt5ZXZLNDZrdnNvMUNxZm9p?=
 =?utf-8?B?NXB3akR1TFJudE5EbnRZTEw3eU91RHhXQlRsRXR4STZISnVRQ3ArWXBnZ3Zx?=
 =?utf-8?B?WTY1Yjkrb3AzTlEwZGd2b3FMdjF4a1pOSmkyQVJXZUtKNStrMGhpMWh2eVFo?=
 =?utf-8?B?aEF1M2oyUHZpZjBONmYyNnlHSkNSTTQ4ZjlLaWxib0pXNzlSbUZUL1ViV1lY?=
 =?utf-8?B?c2RhU2oydzV3SXYxN0MzcTRTUVp2bDNUSEg3QWNGVXlBYXFCN2JoUFhoMmlk?=
 =?utf-8?B?cUdrZ1M0N3dSenF0NnNGcTJZTjJGZzZ2SzJydzl3RkI0MGt5d3Rick9iTERX?=
 =?utf-8?B?RU5ibmZaNWRqRElNNFIzNTdRRVVFZit4aFEvdEFxQW5uMTFLOEJaaSthUzhr?=
 =?utf-8?B?T2gwVTg5RDBJRjNsL0dkUld6NFA1WXdtWkY0Z3hBemtMNDAyMEpDUzNteGNR?=
 =?utf-8?B?ZC8wMkdTRzd5bE9DMjFUZ0YvVi9XVUV3VzBxVFZPRnAzRE5YNFduNmdubzlh?=
 =?utf-8?B?eG50ejBNQlYwc3R5Qmd0bEEwejJnaWdjMnBIaXc5VUhudTRESFdBa25iamM4?=
 =?utf-8?B?bjQ3allYdjJzL2pucGFCZndHdnI4Z0gzKys0U2VMak5TYko2UENEbnZydVE5?=
 =?utf-8?B?Y2lUQUh6U1VqdHVqSXY5TnZRSHhiYmVNS0tFczRYaFVEaTJkRlo4dlVOeWo4?=
 =?utf-8?B?NGdKVUJGUS9rUFlTdWlvdHIvWXlWOVB1K0hBMEIxUGV3Z3BzdzdDdWJEQ3Q5?=
 =?utf-8?B?bHVTSmtvVUI0RmxrdmFOR3VVeHVxanNoTTEreGdkZlRCT2hhTnJBaEMvUUhP?=
 =?utf-8?B?MDRmMm9wcWxOeUc1WmI3S0RhSit3UmNBTXZBUzVVRjI0eWt4eVZwcmtDMmZh?=
 =?utf-8?B?ZXU5SkhhZnFMNFJYclgycDEvU3pyZXc5WW5WZkZDbTBxQU41aGZBZFFnZ3RU?=
 =?utf-8?B?UWRPK3l2QkhvN0IyRW4xRVdYWnlXM25nTHl3VVVXbUtLQnBZd2hnT1FRK3hR?=
 =?utf-8?B?MW52V0RvamZCZEtPR1N2anp6QmhpUTFGcHlWVXZXUDBvdWJXbEcwTlFWYTJG?=
 =?utf-8?B?SFdvcEEydk1LRGQ3OXJZY3VoK3FjN3lVbUFhWWl0eEEwVTRVc0hNeFpWL1dw?=
 =?utf-8?B?MkFrbnhqK0dzZHdtbWhTZXJOQUF4dG5tOG0xZFZMQmN3cjIrU0VzZEtDYWpM?=
 =?utf-8?B?aEdXeEVmYXBYeHFXRjRaM1p3aDlKZnNUR2pVdFBFV3Bjei9idUJwS1RkUURH?=
 =?utf-8?B?WkxhNExDMHNJZkVCbG5qUEFDMWJrZHpKaWtTUStDVkNsMkswSCtGV3dVZ1Iy?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8496a5be-f116-4bf2-ae52-08dd03c078ba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 08:52:15.4324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zyOGz5KGX/tbn/qt7K9HWMb56gVKXccefzievFLydeRwcF+qXogUpPWomsjtgT/7H8Y3/tWucpSqCwkZZViKmpzPSrX9FC+L+GiFP0VoKmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
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


On 11/11/2024 12:25 PM, Srikanth V, NagaVenkata wrote:
>
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ankit
>> Nautiyal
>> Sent: Wednesday, October 30, 2024 2:11 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org
>> Subject: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when
>> forcing DSC
>>
>> While forcing DSC when it is not actually required, the max compressed bpp
>> from the source gets picked for compression for some pipe bpps.
>> Apparently, when DSC is not required, forcing DSC to the maximum
>> compressed bpp seems to cause underruns.
>>
>> To avoid this, limit the max compressed bpp to 18 while forcing DSC. This
>> value works across platforms with different pipe bpps and prevents
>> underruns.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Looks good to me.
> Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>

Thank you Srikanth for the review. This is now pushed to drm-intel-next.

Regards,

Ankit

>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 28fa5e2d0c33..0ce29cefaa13 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2021,6 +2021,15 @@ static int dsc_src_max_compressed_bpp(struct
>> intel_dp *intel_dp)  {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>
>> +	/*
>> +	 * Forcing DSC and using the platform's max compressed bpp is seen
>> to cause
>> +	 * underruns. Since DSC isn't needed in these cases, limit the
>> +	 * max compressed bpp to 18, which is a safe value across platforms
>> with different
>> +	 * pipe bpps.
>> +	 */
>> +	if (intel_dp->force_dsc_en)
>> +		return 18;
>> +
>>   	/*
>>   	 * Max Compressed bpp for Gen 13+ is 27bpp.
>>   	 * For earlier platform is 23bpp. (Bspec:49259).
>> --
>> 2.45.2
