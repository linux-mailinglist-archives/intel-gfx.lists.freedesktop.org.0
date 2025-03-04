Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFBAA4D6D6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2385610E142;
	Tue,  4 Mar 2025 08:44:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X4lU4wHM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE7910E142
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 08:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077839; x=1772613839;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=b2LAmJBz3i8dxlTS8mM9JgVbNybXDmoG9bQNZdLWXWo=;
 b=X4lU4wHM46o1w6SZx96zZQA+sxhfqI1J3iw7lw8oOIk+/etqNdUAbaoH
 xZE8mD1oKGfL3iaBYcYlqLIrBAmQBUwk7rilxZr+yuIKR2k2lAfklKFT+
 cvM2kIX09Eho3pWHzsfJvyDi+cpJAbNllZy/toF05WtcAy3hcCiZek+qg
 CNJ56CRiJbhUifKhvNFkj4bMkau9RipE5qCo3j7QjR+kr8D/UIRJwJh6X
 eGPgWPDKKKCJ6iw7JCv2UvySTteibTNs0AE0HAazzKR+ynGSGryohR86S
 XJbF2yFRbtKqKkGQsdCURPjamT47x/hAc9T5hTEb40LViVkx4S0rV6RLn Q==;
X-CSE-ConnectionGUID: UVRau4n4TnWKYO/F7OI1gA==
X-CSE-MsgGUID: aFIyA1G5QhujZY5tuxPtPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="64430105"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="64430105"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:43:59 -0800
X-CSE-ConnectionGUID: Da1rWC3rQzOaRfiml3Y3Wg==
X-CSE-MsgGUID: KEBt6EYXQxK45xRmVip7+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321924"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:43:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 00:43:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 00:43:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 00:43:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eq+ljnPQ7E6T73xJD/9IA82wbFUN7acDdZ0n92MLVAtMEzWce74KoQ6v5H5Gv+oGf28X/1CRKjncntsl/S/j5op8+iEEvQhcxFN4D2z0ucDR89Yw4O2MZj2+hDZ/EVkPc6XiuAsyhl1gNURtoDb3aFNoJCt7NbXa+x1gj5/wT7pLrbl+eML/LhzBME0JB9qdR5LpXh98/o4Z9bQfgs78PSCsOnx8UwGI7dMavDeN7PLQPyn5P2KC54LObFeBu1kfGY50t0gScB0wvTawhJcBk3Y5dyr1BoUANysqY6X8+u5l0+RhCAKCxzO2LbB85kwWpP1ALSGQBDHGLygX+dYIBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yv+AhxRbfau6Tcogqn/YIDKN2u1s+WpsucUwHaNLOIM=;
 b=wdtPfYvXcxphZalBVUU6wW18AjxFueEPHAn7gULSG+5XJj2p1cjSwK0bKvJuTJuOxBSmBnnHPJ0HjYTM54iM+CCJyuM4LLNUcg6+Y+/qzLKg/mZ/YCpVbLhZAOGLM+TZ6ZqG7EPAD1ro1EHi45kJ95gnHwLoQ0SXMZqxp9zfBczaNu51clYTD/f45xCRb2Am77Rfx90AhGt6hlKyv7ExBRpMg1C4AMjG19bW59J+YlbvG0VN0I51NysaAvSh4NKDSZuLh8PGbeyXUbsrZ7ijeuOnQ0iwFNYmLJQH7p3j31z2OFfxtF3OIPaI87cEpfrqUblVMwKotY8zluXIg4fdWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by PH7PR11MB6747.namprd11.prod.outlook.com (2603:10b6:510:1b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Tue, 4 Mar
 2025 08:43:41 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 08:43:40 +0000
Date: Tue, 4 Mar 2025 09:43:26 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, <chris.p.wilson@intel.com>
Subject: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: ZRAP278CA0018.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::28) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|PH7PR11MB6747:EE_
X-MS-Office365-Filtering-Correlation-Id: f67a3b3d-0819-40de-83c7-08dd5af8aa0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFlMZTFxZGhqcW5KL0FncTJkMTZ3VkNkdkpEaUpyMk9YR1dxbFNEc2twSFg1?=
 =?utf-8?B?WXJPR2NmVXVibzdBNjNudmoycFVCVzZPYVBwS3ZEbDFLTDRSdlN2b3NQYkI3?=
 =?utf-8?B?V2w2ckFtYWFYMnlzZDRHMk9ITktsUHZMUEdyRUYzbWFQbngxNDF5WEQ1M2JU?=
 =?utf-8?B?SkFrL1Evc0VFNjh4NWNlNWxYWHNsZEczQTNHQ2dqU2lsaHNyNE9UUE1QRTcv?=
 =?utf-8?B?QnhuTEdsM0p6YXV4SkY2S1BMTzVVL3hqSzVpQUwreUs5ejJnVEo0b3ZxV2sy?=
 =?utf-8?B?WVVKZitUZXY4YnAyYzlJOWlVNW1SbFZGakNpVjJwN2pUbGRsTTZVbGlPaUlM?=
 =?utf-8?B?NlFOdTR4cGpxODR3TU1yZytCSnJSYmZEWmZCZTRVT3V4RWR5Mk5aQ0k5c2ZU?=
 =?utf-8?B?T3ZRYUpPZElaeE91ajBmSHdOUWl0WS9haVNFR0RpSDdQZDYzQzVYVmlQY3pH?=
 =?utf-8?B?M3p4Q1BQRjFMaE13azFpeTJYVlAvT1l0RmFyN3lJRGVxa1NrejdyVXE0NVdy?=
 =?utf-8?B?NEt2ekk2MlhsMUN0TXFET2N0Y2t6WEtwWnZzcDk2V0tsS3pKdnhuaDRyS3Bj?=
 =?utf-8?B?Rzl3WGJhblNFQng4RkpSUUZBdE55STljZmZjdVlteG45R25oOFRiVWJ5czN5?=
 =?utf-8?B?eXN0aGd6MzJka2ZZSVFudytzeExnOVhaWS9QZmpsQkRPL1ArZEllSG16VmZq?=
 =?utf-8?B?RzFYaUF6V0JZS0t6TzVETjJpR3ZLclR4TlZnMjJvN0FMWXpSZXNUQjJKRll3?=
 =?utf-8?B?UjZoaUNlNHJCbmVxS3hMTlJ0THIxeDlIcG1pTWVRaDBVclo0ay9wV2VKL25J?=
 =?utf-8?B?OVAzNjJzWVd6TUtUR1JrWlBGMmVBbDlSVGFWY2tROWsxNGo0ZXo5blNCN3Fm?=
 =?utf-8?B?Z0o5ZUVLMmYvcWdlVlp3ckcvcW92MGNraEtaQ2hkMzE3V2RNSUVpaDAxV3Ar?=
 =?utf-8?B?MnV1azVpQTFaYTkxdnhCa1pXT2p6anFiSkdnTUJvT29oSmpic2NHVHNjZVAy?=
 =?utf-8?B?V0JDaVZGaXlKQzlQTmkzMkZkelROUGxFNlVGb0Q4cnIvcjUvbk9lTmlYQVZw?=
 =?utf-8?B?MUJxZ3JVdU9sQmNTOUhkMGZ0dGw5bHJoeUZvc2FrTU1VMGtiVmFCL3QzYlNx?=
 =?utf-8?B?K0Jtc0hhSXh6NWhpVWJ2WEdueSt2SnJnV01RUTgvRWJRNW1Td3cyMWdjMm9o?=
 =?utf-8?B?enNRR1ZuQ1YwYkhyZ3RWUFVrb2tVZTl6bVFDME9ubGxzbVA3ZENPNXZNdmx2?=
 =?utf-8?B?YlZFdlNzcGVFUzhOTU9nRU5VdklBbngrWXltNWJybVFSMlhnN0NESkxwcTJT?=
 =?utf-8?B?VUZidk5PR0VOOWlOZFRiOHZxMTA3Rk14VGUxNHZEenh2N1JNcmpwQXB6WW5t?=
 =?utf-8?B?UHhOeFQ2SVNZRFdmVU1LSExVeUZpZjlwUzJseHFyMGFyTU8vTXZxVTRZVVhR?=
 =?utf-8?B?VGJGb2ZnTG4zaEdKU3dMcXBUSHdQR0c1RG9ZZ2JBZFp2SW5CcWxpeFBHMFIw?=
 =?utf-8?B?REVNSDVYT1dsdzVMblJnQjZMYno0Q0lkTitpNDdNalRNNjJPN09jdFNCODli?=
 =?utf-8?B?U1N5cFpiaWhjY0ZZaEdEWXc1WHg1UHdOTUxJMUtBazRMQ1BEYmVxNnhlc3Vw?=
 =?utf-8?B?Nkx0TUlIalRqZVB5WVcrZGJyOHlHMGRXcTU5cHIvTWQyQ0ZpOVptZC9WSG5K?=
 =?utf-8?B?YkczaFhMM09zdzlsVjdQaUFCYzNOOWxFbnB4V1JhKzE4SDV4QVJzVklOeStF?=
 =?utf-8?B?UGpOdXM4dUdhSG4rMVV1WnBxRUZTN3JTSXQ3eFNMKzhWcWl1T01JM2hoMzRn?=
 =?utf-8?B?TzVvOEtiZGRZTmdZcXp5dkJOa1lBdDMxcmluWGdLdGdXbkUwOWVMWGpoaDhh?=
 =?utf-8?Q?o/0aJGfM2gJ1X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmRieUhEL3l1QmVHQ0R1TWgrRFNYZkZUdEo2WTVsODl2MUhhRlhXaDlvdUpM?=
 =?utf-8?B?TjBNTFZtblNNNVB2TlBnVTNWY0gxV3dGQVgzSFk3L0NWSWc0SEZwaVVKWnIy?=
 =?utf-8?B?MXB0TmFwOWl1bFZkSndCYjA3a0hqaEQ0ZVZ6R3VDeTBneHNJbENJU095amZ5?=
 =?utf-8?B?YnZRZWlRckVVMzhlWkdjZVpIK2l0emI1eTNWS29HT1lyTjNYRGlCT0JEaTd4?=
 =?utf-8?B?c0o1d3RSUzh6cnJHQjRNVDdGVEM1Y3NJc29jSzB6cWVoMDRIT1hxRUlVc0Fy?=
 =?utf-8?B?U2NKQjF4UkkzYWd3WVpDQnBaZzhZbW9PNWhQbXVtNGNLNDBuU2srWHlCNkVE?=
 =?utf-8?B?dDI2Wi9ZcVBDbjNaQ1g2UGRVdVg1UEMxL3c0aWc1d1EvUm5GN00vRW9YUFpM?=
 =?utf-8?B?T1Vyb2MxY3JGcTc5c0FIUzFXQm04S0JlVHA2QWl6VWVQL1hjNzd0K2wvSFoz?=
 =?utf-8?B?RDUvN01DVnZSeGlRd2Jpb1U5eWcxcVNEbDBBZXNXZjVWZDF1TldNUlBWWGty?=
 =?utf-8?B?SWFjdDJLbjM2Qk0xbnNtUkY3akh5WnQyUGFWdHdndDBsL25KRTJwcUhxaC9C?=
 =?utf-8?B?WFhtWi83ZzNhVXExWEMxM3pIMEloY1hKRDAzMlhXNkdPTWJRVjNzSkNWOHlD?=
 =?utf-8?B?dnVYRXA3Mlp6cUdDeWFSOUNuckhhUmpucWk4VWFpeElTcFp3NllBeU1FSzIz?=
 =?utf-8?B?d3VvTFJNMjZSd3FZL1pDSTc4dDlPbkdjSXByN0VaOWRnK29PWWtzc012OE5G?=
 =?utf-8?B?dlB3UzZ0TWZ1ZmRhTXJvcnYyY1ZvbVp5L3lKT2FBRU10eWFpT0FWRHh1dHZ2?=
 =?utf-8?B?QlhnTFRmZVIrOHFmT1NzWmZLVmFKK0ROVWJ1R3A1cm5GZ3YyR1VoK3Z0UnFj?=
 =?utf-8?B?YU9sbTllemlYelJrWGt2RFo4c1U2NG5ScW9uY1hlNnhSMXNRUGpveTBXOWpE?=
 =?utf-8?B?NUdOZW1kWThCRmhrSVdXNko3ZkNSbzJGTEczUTBGMXNzdnd1MmpQcFdnRzNq?=
 =?utf-8?B?elhxSTZxSnd1OEVXellkYkpndVpsbkt5WmFobmlWa1BNdXpSZXUzdHhYaU9I?=
 =?utf-8?B?Z2VXTE9IcnZBRSs4TDYrZXRyVzgxNUNobjA2dVNYMitjTGNTQ2J1NlNuVExp?=
 =?utf-8?B?YXphemZlKzJ2WHVYcUxtNFdXaXRiamQ2U0w2N3BxZld4ajZMU0JNSjI4eTN5?=
 =?utf-8?B?RWQ3K2pxTzNrdWxXeUZjUy9EMmEyMUNaelNhUE4yVmlQcUUxYVViQzlxVWJF?=
 =?utf-8?B?M2VNS0Z4eElSMW9leFg2UmJNejNmbkplMW1ERXhRd25wcjNES08wVGNRUTNX?=
 =?utf-8?B?RDRzRlVnTU0vSndUZm5aVGRTMUwwSTV6bFo1c1k3Z2RUYnRFWmYxdlZpMGsx?=
 =?utf-8?B?d0E3NzFXYnFqRFUzcVBPZ2pHenVjeU5TUCt5dVFIaGtOcjhhSnZ5UDhSMmhY?=
 =?utf-8?B?SlhBbFBUWTUyOUJmU3lLUUJxeW1udlVnbXVLNW4xUHBBWUVFcmFkaldjUkov?=
 =?utf-8?B?dmJMUkdyN1lLMWJXdlBoUVo0Vjlhd2dxSTR6N2NMbkFtczR0U1hkSGRCZUR3?=
 =?utf-8?B?ZklDczRxK2lIa0lxd2JOdzlNSUtVQWR0Y09venRXMW1TVGdIRnJJVDNYMldP?=
 =?utf-8?B?U3VoQzJqTDExSFc3dHpUUm9OcXMweFFKTEk2RXAyL3VUUnpydnJwTGprMmk0?=
 =?utf-8?B?a01OTHk2SXZyRnIrQ1k1LzJWclBDV0V4UTRSbE8zK1Y0NHVEUGkxSHVLbm9a?=
 =?utf-8?B?NE5pYTEvSjNNbXNUN2YyZEl6c1dOQTFGRllMMjBCdzZla25aVEtDTUVvQUt3?=
 =?utf-8?B?Z0xkK1c5QWYvWU1HVHdtRzBCSzN2NitSbVovUXJLUytkVW9vb3hKZWZGcXlR?=
 =?utf-8?B?ckZnOTV6V2FNMU9zU3hQcXBGNTBqeENIUmlIaDk2UitGNGN5T3BWSzM5Q0xQ?=
 =?utf-8?B?ODhTK1VZMncyMC96aENYZ29JTjRvOXlhZFlPUVMyOUVFRCtGeGNNeDRPTzhj?=
 =?utf-8?B?SUdsSVV2cFBMb011RHNFSllVY2tLaVBTR3V2bmNiaklramw4VWVGYWVmOEJY?=
 =?utf-8?B?R3FBQWJSWnZjdmsyS2duWHNoZU15M2lweEswbXhsdDFHckl3TFVoYUQ4dnRa?=
 =?utf-8?B?MXRGNUNOVDQ2RzlVQWRheFlaSzVPdnpQcElxQk9GWWJsR080Tk9EVDB4MUNr?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f67a3b3d-0819-40de-83c7-08dd5af8aa0b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 08:43:40.8987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: px0VLi8N1YFkaZYTh7G6xU7hfPOxNve2ZBW1BgFbY5ywdgRi/TEUw34BhJvYSsr0riGLT53Jh/G2hSNMvOW8R+gKPbGqZvqzur7Kqc1kL3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6747
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

When the driver is loaded on the system with numa nodes it might be run in
a kthread, which makes it impossible to use current->mm in the selftest.
This patch allows the selftest to use current->mm by using active_mm.

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Reviewed-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
v1 -> v2: Simplify logic of enabling and disabling active_mm

 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 804f74084bd4..9c3f17e51885 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1837,6 +1837,8 @@ static int igt_mmap_revoke(void *arg)
 
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 {
+	int ret;
+	bool unuse_mm = false;
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
@@ -1848,5 +1850,15 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_gpu),
 	};
 
-	return i915_live_subtests(tests, i915);
+	if (!current->mm) {
+		kthread_use_mm(current->active_mm);
+		unuse_mm = true;
+	}
+
+	ret = i915_live_subtests(tests, i915);
+
+	if (unuse_mm)
+		kthread_unuse_mm(current->active_mm);
+
+	return ret;
 }
-- 
2.43.0

