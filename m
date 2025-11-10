Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916A4C44EE0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 05:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D8010E0F1;
	Mon, 10 Nov 2025 04:50:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBEhkdcn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8120B10E079;
 Mon, 10 Nov 2025 04:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762750205; x=1794286205;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0wjierfEjQTeajqPpP0dVEvvGG7JhbFBgN+OAEBaxzs=;
 b=BBEhkdcngoJnqduOWjxsJ7Rnqj56L4vS3hqPwxt4cJooYcnwP9r83cdd
 isEv5Apg0HVZNZ7BrEYzmN9DspMBPc1K3V7IKKjgg10IuQNn21o0p1abt
 IT7rHJIHPrAxr/WRxL3fg0TYvOZd7Z64LHN85fWTkRikOXSJAJpdmjIck
 DwrYCqT1IQr6n+eXG/TgZRgauOItUCDXj7+ha3lm9ZDTAkMsdxQvIfZyu
 ecHbzw4+I7lr1WZ8F5TpRIknLwDPOlfC5YGSIiqSZZOvK06cwn2+L0weK
 uNfT39GyrmeimHrd6qHEEnVRm8lmNU7RqUmcJ2He9eTmjNpyKeXPNtof+ w==;
X-CSE-ConnectionGUID: 2bwEIURqSTOkFzg03lAKlA==
X-CSE-MsgGUID: 1PEW5JakQIOsA8h3HLcGPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="87427641"
X-IronPort-AV: E=Sophos;i="6.19,292,1754982000"; d="scan'208";a="87427641"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 20:50:05 -0800
X-CSE-ConnectionGUID: ePKKsPLQQbyOgHf8HmWYag==
X-CSE-MsgGUID: B87WZJLnT12rjpVO814MsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,292,1754982000"; d="scan'208";a="188528193"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 20:50:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 20:50:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 9 Nov 2025 20:50:03 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 20:50:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SyFwtXvgpAsf67+NDBFVLCJvQdSwyUhC45qwL9L6btJygAYP1o/2Vfn15S3Szax7qEEZJpGvlI+5Vew8vPN4gOgEC6LF8F7gKsXB3DtS6cOZz7OB7pD6II074EyuAXR48PeK89A6EALySMkQMAtsgEHRac7PXnZxwgY0X8kAuF96owcuO05I6NvC4M1O6JgOH7aZut3JcQozwxgXo9Hdn+BEDG/GsCBp3af0U3Pz3thNBEhopNkpLkJobKSzC9j0qJcN9gXgf+10DiKQLDND3HaDoTy/5w+37n5ePWW3bUqDwbYT4MrKNSjJKEsXYpQUwJJu1NJJ22KlZuy2RnExaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0gW6V8e/BIQxSs6dQHgWExP401U644pBDGn4hzVFloA=;
 b=WTTshubsemy6Sbk+yffmhPiQ2vEeS5y2xTxRbLXjApLSC7HArZK8S8rxcxFeb3SfR9gIwqhNdr6pQmoTrBKzCIZKvYv3+2/jtQ7IOWfBCmeGQAGuPIQGaj6AB4dG+qsZ6gWfmgySchGqRV+Wr+ASOm157Eo6PVMCcSS4C7TslOmf8115uOaSXprNpuTwMdDPjX+Ek4YQGMCPd4wSkLwlDdyI4+NhCQdQnOoJX/jKhnOQvCsotaNPgZD36m1qrVxzcpqzzihEwMZ27gMbRmw3bKr5Y95R9pUp7E1RGF2fgUyZdzhjksVdB9sfRWP3zJlczxvXBsB0FkejMsHf+Lntow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 04:50:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 04:50:00 +0000
Message-ID: <bc4710ff-586f-4f07-99df-27e83ebb787c@intel.com>
Date: Mon, 10 Nov 2025 10:19:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251107093512.533577-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251107093512.533577-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0206.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7019:EE_
X-MS-Office365-Filtering-Correlation-Id: 81c73cdb-dedb-40d7-ff70-08de20149b00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3A1SnVtVklmYlRnUHdlUG1zWFpLMk9pZVp3Rzc0WTF1VFNZQVZUSTJSTDVE?=
 =?utf-8?B?bmNHUmdkM0pLMjc5ZFBDOC8xd2Z5dEpJcU9xMWIrV0Rqd3pMVm1XenU0Yjhi?=
 =?utf-8?B?NTlBME1XcHA3VEZaQ1NITTNtQWFyU2RPbHJ6TC9qeGEyUEFJWEVRRnBjeFJ6?=
 =?utf-8?B?VHFrMmdKQURxYndQMDZEVTJDSStEMG5zS2hTSEJvaC94d0R1bnlHbVczUjVu?=
 =?utf-8?B?K0hsYkNGZW82a3l0Tm9IQUlFMm05Z2N6NEk5azBpM3VEMTR4SGdPWkJJSURQ?=
 =?utf-8?B?V1hyZmFvaUcwUXdLODN3QnZHdFFUUS9BNXUwSzQ5OVJ2Y1NrLytUYiswQzRz?=
 =?utf-8?B?SUpLeGNVR0piQ0ZRb1F6bEsydStCT2RFTUQvRnpOSnhWc0JwbXpzWTNVUFhB?=
 =?utf-8?B?THZEVm1ZaElrVVh5Zlk4NEFKbFcxeVR1YUFJVlZzUUJmRm80ZHNRM1ZHWnNm?=
 =?utf-8?B?U3plMWhHdUhTSVdYdUNNbUFvcXo1NWRrdU45bEpFUWRCcU1ibGhNL0NuNnNz?=
 =?utf-8?B?VWM5eTZoODNsNytBdXU4S2JtdzFIcktHVEJXV2t6RDRlWkdSakRaRmFiWkxV?=
 =?utf-8?B?alJyYU95YnpKMjFzTURLZGE2bkVrci9nTUt1YWZyb0tidUhTdEZjOG41bDFr?=
 =?utf-8?B?RUs0cjBhT0prUVhsMzFSbFRKbFlVK1dRK1o4b2VoaTF3WjJLK2RuV2FXSlFW?=
 =?utf-8?B?RVZsR2J4cW5LN1dZVUpFT2ZUQjJ5L1dtQkNqT3lab2NCb1ZNMmZ6ZlQ0SFl0?=
 =?utf-8?B?SytiWkg2eExOQTNXelFBV09FSUFxRWVhQ0Y3VWcyNzVxelBHcTJOQ2tkeUds?=
 =?utf-8?B?eDNaeGxmd25ZL0d1U1JONk5taXhwZ2JBei83Y1VQRjkrcWtnU2t1VkFFSWpP?=
 =?utf-8?B?WkpORGszYlRENTRXWDNhbHVEYjg5N1hvM1N5RS9KODZSTE81dEN3YklDNi9H?=
 =?utf-8?B?S0dyL1UvS055VjM2bTNDUkl2S294bGJzT1kzTEV6NnR5bitJdjFZSU44YWxK?=
 =?utf-8?B?UnhLZ1dWU1k5UHBSc1VDTk94WTMxUlZFQXFFdWRnWHJqZlFqKzBUdUhweXo0?=
 =?utf-8?B?bUp4a3VWUDFHOVJIQndSTk5ZZnVXQUh5OGtjaTBoVlhlN2tXQ3N1SUZ5dFpY?=
 =?utf-8?B?L0RFN0hacXNqaHNSWHJUU1ZNRkQ0YzBMeDFPUnZnWXdmOVBiUUJ6N1JDNFRm?=
 =?utf-8?B?T1c4djBXeUFsdUhlUmxZSi8vVEY0Vy9NZkVEamhkc0ZvbWdlMU11b2NtaVNr?=
 =?utf-8?B?Q2tOTGxxY2ZJZFhQSnZZMUQvTWlRS21ndzNTWGhURjRoZksrbnJGTmFCaWVH?=
 =?utf-8?B?VlBWVU1TVmtBRUVNWi84U2xMV1ppT1o0dWJTeGY1VkQ2M1VCczhaY21HRkdB?=
 =?utf-8?B?dkJqWUtWMVJJR2t2MkVxb05wZ2FuNDFwZVNGVE9NbEp5bHNSNFp4S1dxSUVF?=
 =?utf-8?B?L0k3MEFhZ3FOT1FSQXI2UExXWXBna1JhclU3c0V0M1FRYk14Z2pDZW1PdVJq?=
 =?utf-8?B?YnVKbFpiQnFBZUduVlFud3hUd0VOTkhtZTloMkxndHh1QnpqMjFqOHE1ZjRL?=
 =?utf-8?B?SGNKMWtScWcwM3V2TWJUd0xUdU03TmdacmJ6UGVIaTBGc3J2SmZXZUdka1RY?=
 =?utf-8?B?Sis2SHpaVmNZMnE0aTJLUUMvdkpDUW5oc3RqQ3lxSXhtVUlYVVNPd25zanZq?=
 =?utf-8?B?TXVEajc1NmdPWm9pTytpeWZMazRaNFQ0ZEFMY21PME5aYjlGTjdWZVI0OFRm?=
 =?utf-8?B?T1VLSzhmTjdqZlZPdGJ6Q3dlcVJZVGlHSEJFTEF0SVdhQTdCZlE2WDY5RjFY?=
 =?utf-8?B?NjgwaXIrNU1iUTlJRzlQL0ZXNSsxSWdHR3VKT2Z5K3FZWS9wRy9kN1Iza056?=
 =?utf-8?B?SUxqeE45SEFhbkdCY0YxTkp1b2wxL21QZHFpeEhldXFvZEY5OGpuUFQ2d1hF?=
 =?utf-8?Q?63ibIVDh/D0y5h2CPSSYMh3oty6dAmiu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3Z1V2JqUVVWV2dMOFVFejRuL0l2ZGRDazhQVnpybERWWnZodnhqNlFTZ012?=
 =?utf-8?B?K0JwM0dOdk91UEdrZmNDY3UzQnFSVlZVTFJsZmxhYnJxTzNHemlMWFJKYk82?=
 =?utf-8?B?ZjdiRU14anZ1WWVGMmw5OFMyQTlxaGRKZUVrempLVFZjZjdzWk1oeFVCZCsv?=
 =?utf-8?B?QkFrSkhWMnRFZmVUTnRTYWpIMXUzL1FjQndtZ2t6RDJPZ2hFSjd3T0xOMUZ1?=
 =?utf-8?B?YkwycXBoQTZsU0t6TUJqVnpnTDZQY2FBM1BmK0d0RU1QNTBWNVpKUnUwUjZi?=
 =?utf-8?B?SUlBZVdlUEVQUk9mVS9pV21QNnpTVDFNN1FtZ2s2MUR1TC9aODBXQSs4SnA1?=
 =?utf-8?B?ZHR3UWJyd2srNGZwbzN6OUJLNGZtaDRheU5qMlRkdDAvTEtKSkNLdEZILzc3?=
 =?utf-8?B?QzRlTU1OZlZXUnFBOGpBQUQ4T3U2MWdqLytEc3l2UDdkbFpUZlhzTlNTbG1k?=
 =?utf-8?B?d011Y1gvelpaakxPaDBCZm1HTUh2SElJN29BWjV3UTUrY2oyMG9vMFNPb2Zk?=
 =?utf-8?B?NGZQUUNtWi9na0FtOWZWU04rYlV6MW50Uk9TTUVwUXNHQXpGYlBFRlB3aEE0?=
 =?utf-8?B?NEVaUUl4QnMvb0UzMDIrV2t3MU1PRERia1ZOdnF4SXhwMkUyWFA3bjZTdGRG?=
 =?utf-8?B?MUJDSWpIclVrcVVzWjkrUmtMMEs4VUxOd0tWRkR1UXpscnNZUitOY3ZyQXJp?=
 =?utf-8?B?Wmx6ai9RNVgrVFlTNDA1L0M0VXpxWGM0b1F6UzNCY3FSZk13czRTYjgvM2da?=
 =?utf-8?B?eEdyL1V6a3p3eHFVeEkyWXFWV3dZQlZzTHhsbWpBWG1RM0crQUJ5aFc2RzJF?=
 =?utf-8?B?SGRBYzJxc2NYVCtqcGhUWERqZS9GY3luWkI0bGNxMDBtUmlQNnRjajFkMHI4?=
 =?utf-8?B?VmlJOTF2VFdhVGpZZFgxRFBYcVJ0cU9ZeDFtcmRQem5MWXhOcEZCZlZBemNa?=
 =?utf-8?B?T0FKTjdaeWFhM2JzNzE3ZXJGellZTEpWaTV5c0hUVFQ0Z3VhcTZva25aNFAr?=
 =?utf-8?B?SmRjMWJ0Y1JVUWFqOEZZeEx5OEtqVVhpczhVQzlqd25JT3lEM0hQc0tmdXRC?=
 =?utf-8?B?T0x5bkRUa2hBU2hxdHZLYlFYUmdzMGZtaWtSbGFocjNRd1hodzVBK1lOZUZX?=
 =?utf-8?B?MTRsQXBFeUdhVHRFK3BtRi9GRy9ubzhWNmlFem9LbVROTzFicWNpaVJBZ3Bo?=
 =?utf-8?B?bTlhK2hxSksvM2NwYTNnSzBRaUt5b1VvZHRlYW5uVnppeEdsRlp5TG43YldN?=
 =?utf-8?B?SEVHZ0YxcmVucHpRL1J5RExGOWNTMHc0UndPeXJSNHVhblF1SDNhVklDTm5B?=
 =?utf-8?B?alJJUHZBcjFsTjE0UEJYbDAwRDhYUkxNajNUYmZPS2xnMDRSU0JCT3p3OWRh?=
 =?utf-8?B?ekxOSGcyRTlCei9lc1c2S0JTSFRLWlZTUTg1K0IreTVuYkdBZEtwQVJrbmhr?=
 =?utf-8?B?eklzemxkQ0QvbzVLTExJVS9uYVhMS1BxUXVKNk5yanJVdzQxZmpPd2VqMThN?=
 =?utf-8?B?ZXpDYVlFNDJFYUN4eXIrK3BOZm93NE8xTWZYV1FmaVlyWmlDZi9KQlptK0NI?=
 =?utf-8?B?WTEvb0dweGpCNjVtYWtDOEt6bCt1UUtqQlE5dHBSc2FEUmNpSXlPYW5majE5?=
 =?utf-8?B?aGVscHpRc2pxcXh4VnNIWkFzWVN4ZWYza3dpamtjL0RGRFV6K1lNbDlQbmxu?=
 =?utf-8?B?OWVjMklXZE96eVpoU0xlOExuQ0VkSVhMRW1yM0FlbHpQSm11bWloVlZITEFM?=
 =?utf-8?B?N2xVeHhjT1ExZWVyUjFwM1orYWdQVUJIb2ZRc1NoRE5NUFdXck9IaXNWSjJv?=
 =?utf-8?B?RHlrakRTTm9MYVljaXljZWxBMVZkdVcvbGhXbE5HNTJMOTZCeEVzLy9KRTE4?=
 =?utf-8?B?akRYNWNhZzlTQjdwaU8xeWFZRExOOE05RnpkTWZZTmZSWm4rTUNaWS9lQ2dp?=
 =?utf-8?B?RytPZ3ZqdFpXUjQyTWllL0hyNmN0L1pDRFhmZzhmWDkwdG5SeXN2bE5RbnJr?=
 =?utf-8?B?R3BmdFlKbU9Ua250M3UzalByajhwK2VhbDJBUEVHQTU3RTNPZG9wMWtMakxS?=
 =?utf-8?B?Tk56QnlFdEZIM3NsTWF5cjgwUlZjenNHNDNxdDc1M0xxRG5mQXVReCsvK3Bj?=
 =?utf-8?B?bTJLc0U3VE9jZnVxR2w4V3hXajNUbjJpNzg4Si9mUzZqOVoyRllDVTZQTm1S?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81c73cdb-dedb-40d7-ff70-08de20149b00
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 04:50:00.9099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J+BBhiCx5qiUQIZ67P4dfwqk+Bq2N6hHFt/6vr2jsYwDS7jns1lVfA6t2xaX2D7+W/CY8CAM7Kf6bVAVGscAClfjzihTnjQIMmV5enqBEJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
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


On 11/7/2025 3:05 PM, Suraj Kandpal wrote:
> Implement the HDMI Algorithm to dynamically create LT PHY state
> based on the port clock provided.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>
> v1 -> v2:
> -Add new macro functions and definitions for address assignment(Ankit)
> -Introduce a structure lt_phy_param for code readability (Ankit)
>
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 320 +++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |   3 +
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  16 +
>   3 files changed, 337 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index af48d6cde226..57a0f443eb1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -31,6 +31,32 @@
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
>   					 INTEL_LT_PHY_LANE0)
>   #define MODE_DP				3
> +#define Q32_TO_INT(x)	((x) >> 32)
> +#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
> +#define DCO_MIN_FREQ_MHZ	11850
> +#define REF_CLK_KHZ	38400
> +#define TDC_RES_MULTIPLIER	10000000ULL
> +
> +struct phy_param_t {
> +	u32 val;
> +	u32 addr;
> +};
> +
> +struct lt_phy_params {
> +	struct phy_param_t pll_reg4;
> +	struct phy_param_t pll_reg3;
> +	struct phy_param_t pll_reg5;
> +	struct phy_param_t pll_reg57;
> +	struct phy_param_t lf;
> +	struct phy_param_t tdc;
> +	struct phy_param_t ssc;
> +	struct phy_param_t bias2;
> +	struct phy_param_t bias_trim;
> +	struct phy_param_t dco_med;
> +	struct phy_param_t dco_fine;
> +	struct phy_param_t ssc_inj;
> +	struct phy_param_t surv_bonus;
> +};
>   
>   static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
>   	.clock = 162000,
> @@ -1356,10 +1382,297 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static u64 mul_q32_u32(u64 a_q32, u32 b)
> +{
> +	u64 p0, p1, carry, result;
> +	u64 x_hi = a_q32 >> 32;
> +	u64 x_lo = a_q32 & 0xFFFFFFFFULL;
> +
> +	p0 = x_lo * (u64)b;
> +	p1 = x_hi * (u64)b;
> +	carry = p0 >> 32;
> +	result = (p1 << 32) + (carry << 32) + (p0 & 0xFFFFFFFFULL);
> +
> +	return result;
> +}
> +
> +static bool
> +calculate_target_dco_and_loop_cnt(u32 frequency_khz, u64 *target_dco_mhz, u32 *loop_cnt)
> +{
> +	u32 ppm_value = 1;
> +	u32 dco_min_freq = DCO_MIN_FREQ_MHZ;
> +	u32 dco_max_freq = 16200;
> +	u32 dco_min_freq_low = 10000;
> +	u32 dco_max_freq_low = 12000;
> +	u64 val = 0;
> +	u64 refclk_khz = REF_CLK_KHZ;
> +	u64 m2div = 0;
> +	u64 val_with_frac = 0;
> +	u64 ppm = 0;
> +	u64 temp0 = 0, temp1, scale;
> +	int ppm_cnt, dco_count, y;
> +
> +	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
> +		ppm_value = ppm_cnt == 2 ? 2 : 1;
> +		for (dco_count = 0; dco_count < 2; dco_count++) {
> +			if (dco_count == 1) {
> +				dco_min_freq = dco_min_freq_low;
> +				dco_max_freq = dco_max_freq_low;
> +			}
> +			for (y = 2; y <= 255; y += 2) {
> +				val = div64_u64((u64)y * frequency_khz, 200);
> +				m2div = div64_u64(((u64)(val) << 32), refclk_khz);
> +				m2div = mul_q32_u32(m2div, 500);
> +				val_with_frac = mul_q32_u32(m2div, refclk_khz);
> +				val_with_frac = div64_u64(val_with_frac, 500);
> +				temp1 = Q32_TO_INT(val_with_frac);
> +				temp0 = (temp1 > val) ? (temp1 - val) :
> +					(val - temp1);
> +				ppm = div64_u64(temp0, val);
> +				if (temp1 >= dco_min_freq &&
> +				    temp1 <= dco_max_freq &&
> +				    ppm < ppm_value) {
> +					/* Round to two places */
> +					scale = (1ULL << 32) / 100;
> +					temp0 = DIV_ROUND_UP_ULL(val_with_frac,
> +								 scale);
> +					*target_dco_mhz = temp0 * scale;
> +					*loop_cnt = y;
> +					return true;
> +				}
> +			}
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static void set_phy_vdr_addresses(struct lt_phy_params *p, int pll_type)
> +{
> +	p->pll_reg4.addr = PLL_REG_ADDR(PLL_REG4_ADDR, pll_type);
> +	p->pll_reg3.addr = PLL_REG_ADDR(PLL_REG3_ADDR, pll_type);
> +	p->pll_reg5.addr = PLL_REG_ADDR(PLL_REG5_ADDR, pll_type);
> +	p->pll_reg57.addr = PLL_REG_ADDR(PLL_REG57_ADDR, pll_type);
> +	p->lf.addr = PLL_REG_ADDR(PLL_LF_ADDR, pll_type);
> +	p->tdc.addr = PLL_REG_ADDR(PLL_TDC_ADDR, pll_type);
> +	p->ssc.addr = PLL_REG_ADDR(PLL_SSC_ADDR, pll_type);
> +	p->bias2.addr = PLL_REG_ADDR(PLL_BIAS2_ADDR, pll_type);
> +	p->bias_trim.addr = PLL_REG_ADDR(PLL_BIAS_TRIM_ADDR, pll_type);
> +	p->dco_med.addr = PLL_REG_ADDR(PLL_DCO_MED_ADDR, pll_type);
> +	p->dco_fine.addr = PLL_REG_ADDR(PLL_DCO_FINE_ADDR, pll_type);
> +	p->ssc_inj.addr = PLL_REG_ADDR(PLL_SSC_INJ_ADDR, pll_type);
> +	p->surv_bonus.addr = PLL_REG_ADDR(PLL_SURV_BONUS_ADDR, pll_type);
> +}
> +
> +int
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz)
> +{
> +#define DATA_ASSIGN(i, val)	\


hmm I think we can have pll_reg here and use pll_reg.val below similar 
to ADDR_ASSIGN case.


> +	do {			\
> +		lt_state->data[i][0] = (u8)(((val) & 0xFF000000) >> 24); \
> +		lt_state->data[i][1] = (u8)(((val) & 0x00FF0000) >> 16); \
> +		lt_state->data[i][2] = (u8)(((val) & 0x0000FF00) >> 8); \
> +		lt_state->data[i][3] = (u8)(((val) & 0x000000FF));	\
> +	} while (0)
> +#define ADDR_ASSIGN(i, pll_reg)	\
> +	do {			\
> +		lt_state->addr_msb[i] = ((pll_reg).addr >> 8) & 0xFF;	\
> +		lt_state->addr_lsb[i] = (pll_reg).addr & 0xFF;		\
> +	} while (0)
> +
> +	bool found = false;
> +	struct lt_phy_params p;
> +	u32 dco_fmin = DCO_MIN_FREQ_MHZ;
> +	u64 refclk_khz = REF_CLK_KHZ;
> +	u64 m2div = 0;
> +	u64 target_dco_mhz = 0;
> +	u64 tdc_fine;
> +	u64 tdc_targetcnt;
> +	u64 feedfwd_gain;
> +	u64 feedfwd_cal_en;
> +	u64 tdc_res = 30;
> +	u32 prop_coeff;
> +	u32 int_coeff;
> +	u32 ndiv = 1;
> +	u32 m1div = 1;
> +	u32 m2div_int;
> +	u32 m2div_frac;
> +	u32 frac_en;
> +	u32 settling_time = 15;
> +	u32 ana_cfg;
> +	u32 loop_cnt = 0;
> +	u32 dco_fine0_tune_2_0 = 0;
> +	u32 dco_fine1_tune_2_0 = 0;
> +	u32 dco_fine2_tune_2_0 = 0;
> +	u32 dco_fine3_tune_2_0 = 0;
> +	u32 dco_dith0_tune_2_0 = 0;
> +	u32 dco_dith1_tune_2_0 = 0;
> +	u32 gain_ctrl = 2;
> +	u32 refclk_mhz_int = 38;
> +	u32 postdiv = 0;
> +	u32 d6_new = 0;
> +	u32 dco_12g = 0;
> +	u32 pll_type = 0;
> +	u32 d1 = 2;
> +	u32 d3 = 5;
> +	u32 d5 = 0;
> +	u32 d6 = 0;
> +	u32 d7;
> +	u32 d8 = 0;
> +	u32 d4 = 0;
> +	int ssc_stepsize = 0;
> +	int ssc_steplen = 0;
> +	int ssc_steplog = 0;
> +	u32 lock_thr = 0;
> +	u32 unlock_thr = 0;
> +	u32 early_lock = 1;
> +	u32 true_lock = 2;
> +	u32 lock_ovr_en = 1;
> +	u32 bias_ovr_en = 1;
> +	u32 coldstart = 1;
> +	u32 ssc_en_local = 0;
> +	u64 dynctrl_ovrd_en = 0;
> +	u32 cselmed_thr = 8;
> +	u32 cselmed_ratio = 39;
> +	u32 cselmed_dyn_adj = 0;
> +	u32 cselmed_en = 0;
> +	u32 bonus_7_0 = 0;
> +	u32 csel2fo = 11;
> +	u32 csel2fo_ovrd_en = 1;
> +	u64 temp0, temp1, temp2, temp3;
> +
> +	p.surv_bonus.val = (bonus_7_0 << 16);
> +	p.pll_reg4.val = (refclk_mhz_int << 17) +
> +		(ndiv << 9) + (1 << 4);
> +	p.bias_trim.val = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
> +	p.ssc_inj.val = 0;
> +	found = calculate_target_dco_and_loop_cnt(frequency_khz, &target_dco_mhz, &loop_cnt);
> +	if (!found)
> +		return -EINVAL;
> +
> +	m2div = div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
> +	m2div = mul_q32_u32(m2div, 1000);
> +	if (Q32_TO_INT(m2div) > 511)
> +		return -EINVAL;
> +
> +	m2div_int = (u32)Q32_TO_INT(m2div);
> +	m2div_frac = (u32)(Q32_TO_FRAC(m2div));
> +	frac_en = (m2div_frac > 0) ? 1 : 0;
> +
> +	if (frac_en > 0)
> +		tdc_res = 70;
> +	else
> +		tdc_res = 36;
> +	tdc_fine = tdc_res > 50 ? 1 : 0;
> +	temp0 = tdc_res * 40 * 11;
> +	temp1 = div64_u64(((4 * TDC_RES_MULTIPLIER) + temp0) * 500, temp0 * refclk_khz);
> +	temp2 = div64_u64(temp0 * refclk_khz, 1000);
> +	temp3 = div64_u64(((8 * TDC_RES_MULTIPLIER) + temp2), temp2);
> +	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
> +	tdc_targetcnt = (int)(tdc_targetcnt / 2);
> +	temp0 = mul_q32_u32(target_dco_mhz, tdc_res);
> +	temp0 >>= 32;
> +	feedfwd_gain = (m2div_frac > 0) ? div64_u64(m1div * TDC_RES_MULTIPLIER, temp0) : 0;
> +	feedfwd_cal_en = frac_en;
> +
> +	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
> +	prop_coeff = (temp0 >= dco_fmin) ? 3 : 4;
> +	int_coeff = (temp0 >= dco_fmin) ? 7 : 8;
> +	ana_cfg = (temp0 >= dco_fmin) ? 8 : 6;
> +	dco_12g = (temp0 >= dco_fmin) ? 0 : 1;
> +
> +	if (temp0 > 12960)
> +		d7 = 10;
> +	else
> +		d7 = 8;
> +
> +	d8 = loop_cnt / 2;
> +	d4 = d8 * 2;
> +
> +	/* Compute pll_reg3,5,57 & lf */
> +	p.pll_reg3.val = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
> +	p.pll_reg5.val = m2div_frac;
> +	postdiv = (d5 == 0) ? 9 : d5;
> +	d6_new = (d6 == 0) ? 40 : d6;
> +	p.pll_reg57.val = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
> +	p.lf.val = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
> +		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
> +		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
> +		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);

I am still thinking to have separate functions for few of the parameters.

For pll_reg_* and lf parameter we need many intermediate inter-related 
values, so doesnt make sense to have a separate function for them.

But for other parameters that need few of the fixed values that are only 
used to calculate them, I think it makes sense to have separate 
functions for them. So we can have something like:

static void compute_ssc(struct lt_phy_params *p, u32 ana_cfg)
{
     int ssc_stepsize = 0;
     int ssc_steplen = 0;
     int ssc_steplog = 0;

     p->ssc.val = (1 << 31) | (ana_cfg << 24) | (ssc_steplog << 16) |
              (ssc_stepsize << 8) | ssc_steplen;

     p->bias2.val = (dynctrl_ovrd_en << 31) | (ssc_en_local << 30) |
                (1 << 23) | (1 << 24) | (32 << 16) | (1 << 8);
}

static void compute_bias2(struct lt_phy_params *p)
{
     u32 ssc_en_local = 0;
     u64 dynctrl_ovrd_en = 0;

     p->bias2.val = (dynctrl_ovrd_en << 31) | (ssc_en_local << 30) |
                (1 << 23) | (1 << 24) | (32 << 16) | (1 << 8);
}

and same for :

compute_tdc(struct lt_phy_params *p, u64 tdc_fine);

compute_dco_med(struct lt_phy_params *p);

compute_dco_fine(struct ly_phy_params *p, u32 dco_12g);

This will help to quickly see which parameter depend on which all 
intermediate values.

Also, some fixed values that are used only to compute one parameter will 
be locally scoped.


Apart from this I am wondering whether we should have a separate file 
for this : intel_lt_phy_hdmi_pll.c similar to one we have for snps_phy.


Regards,

Ankit


> +
> +	/* Compute ssc / bias2 */
> +	p.ssc.val = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
> +		(ssc_stepsize << 8) + ssc_steplen;
> +	p.bias2.val = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
> +		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
> +
> +	lock_thr = tdc_fine ? 3 : 5;
> +	unlock_thr = tdc_fine ? 5 : 11;
> +
> +	/* Compute tdc/dco_med */
> +	p.tdc.val = (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en << 15) +
> +		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10) +
> +		    (early_lock << 8) + (unlock_thr << 4) + lock_thr);
> +
> +	p.dco_med.val = (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
> +		(cselmed_ratio << 24) + (cselmed_thr << 21);
> +
> +	/* Compute dcofine */
> +	dco_fine0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_fine1_tune_2_0 = 2;
> +	dco_fine2_tune_2_0 = dco_12g ? 2 : 1;
> +	dco_fine3_tune_2_0 = 5;
> +	dco_dith0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_dith1_tune_2_0 = 2;
> +
> +	p.dco_fine.val = (dco_dith1_tune_2_0 << 19)
> +		+ (dco_dith0_tune_2_0 << 16)
> +		+ (dco_fine3_tune_2_0 << 11)
> +		+ (dco_fine2_tune_2_0 << 8)
> +		+ (dco_fine1_tune_2_0 << 3)
> +		+ dco_fine0_tune_2_0;
> +
> +	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
> +		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
> +
> +	set_phy_vdr_addresses(&p, pll_type);
> +
> +	lt_state->config[0] = 0x84;
> +	lt_state->config[1] = 0x2d;
> +	ADDR_ASSIGN(0, p.pll_reg4);
> +	ADDR_ASSIGN(1, p.pll_reg3);
> +	ADDR_ASSIGN(2, p.pll_reg5);
> +	ADDR_ASSIGN(3, p.pll_reg57);
> +	ADDR_ASSIGN(4, p.lf);
> +	ADDR_ASSIGN(5, p.tdc);
> +	ADDR_ASSIGN(6, p.ssc);
> +	ADDR_ASSIGN(7, p.bias2);
> +	ADDR_ASSIGN(8, p.bias_trim);
> +	ADDR_ASSIGN(9, p.dco_med);
> +	ADDR_ASSIGN(10, p.dco_fine);
> +	ADDR_ASSIGN(11, p.ssc_inj);
> +	ADDR_ASSIGN(12, p.surv_bonus);
> +	DATA_ASSIGN(0, p.pll_reg4.val);
> +	DATA_ASSIGN(1, p.pll_reg3.val);
> +	DATA_ASSIGN(2, p.pll_reg5.val);
> +	DATA_ASSIGN(3, p.pll_reg57.val);
> +	DATA_ASSIGN(4, p.lf.val);
> +	DATA_ASSIGN(5, p.tdc.val);
> +	DATA_ASSIGN(6, p.ssc.val);
> +	DATA_ASSIGN(7, p.bias2.val);
> +	DATA_ASSIGN(8, p.bias_trim.val);
> +	DATA_ASSIGN(9, p.dco_med.val);
> +	DATA_ASSIGN(10, p.dco_fine.val);
> +	DATA_ASSIGN(11, p.ssc_inj.val);
> +	DATA_ASSIGN(12, p.surv_bonus.val);
> +
> +	return 0;
> +}
> +
>   static int
>   intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   {
> -#define REF_CLK_KHZ 38400
>   #define REGVAL(i) (				\
>   	(lt_state->data[i][3])		|	\
>   	(lt_state->data[i][2] << 8)	|	\
> @@ -1472,7 +1785,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   		}
>   	}
>   
> -	/* TODO: Add a function to compute the data for HDMI TMDS*/
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		return intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
> +							 crtc_state->port_clock);
> +	}
>   
>   	return -EINVAL;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index a538d4c69210..b7911acd7dcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   				       struct intel_lt_phy_pll_state *pll_state);
>   void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   				   struct intel_crtc *crtc);
> +int
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 9223487d764e..dc7b7679cd06 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -72,4 +72,20 @@
>   #define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
>   											    lane)
>   #define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
> +
> +#define PLL_REG4_ADDR		0x8510
> +#define PLL_REG3_ADDR		0x850C
> +#define PLL_REG5_ADDR		0x8514
> +#define PLL_REG57_ADDR		0x85E4
> +#define PLL_LF_ADDR		0x860C
> +#define PLL_TDC_ADDR		0x8610
> +#define PLL_SSC_ADDR		0x8614
> +#define PLL_BIAS2_ADDR		0x8618
> +#define PLL_BIAS_TRIM_ADDR	0x8648
> +#define PLL_DCO_MED_ADDR	0x8640
> +#define PLL_DCO_FINE_ADDR	0x864C
> +#define PLL_SSC_INJ_ADDR	0x8624
> +#define PLL_SURV_BONUS_ADDR	0x8644
> +#define PLL_TYPE_OFFSET		0x200
> +#define PLL_REG_ADDR(base, pll_type)		((pll_type) ? (base) + PLL_TYPE_OFFSET : (base))
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
