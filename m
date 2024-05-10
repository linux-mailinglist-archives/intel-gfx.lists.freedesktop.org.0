Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C938C2362
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2CD10E986;
	Fri, 10 May 2024 11:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TnxDZUB2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3927810E74E;
 Fri, 10 May 2024 11:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340621; x=1746876621;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vt4tAw2GOlpKNara/GiFOWRahNPPyoWCi346NI5Phgs=;
 b=TnxDZUB23QPoANv9wsog42smjwjSBbz0qcdZFWo4vsUQgNsvMDSb0RDj
 nztv3uzkOrHZh2Vq0xrKkdGJUNp1FNuwZKr80fEv31cti7z5MPCu3w0RW
 /BjjynRAr8EJf0XERuNVvpqKijgjpZeiOnRV+OVCW2bsA9JbUUoUpMNHX
 /fzHD99mR+Vea1+QbFz7UZbjYaPJAYazSmitM+Zeox6KXPYH/5B9JffiD
 TFDXLQdWDRYE0yq+Ky5q6fbXP7kfa9sI3mgumKVNOtn31f+HtC3x5GlGq
 l9HTpJ1On51Whr9OfytUpj8tAPpTrhFG50LvN5vQoKd6ua6lJeShmQa9b A==;
X-CSE-ConnectionGUID: SzNaxMFqRae2jrZU7giHvw==
X-CSE-MsgGUID: Zx15ReO0SC2cctS6k4rK9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21988373"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21988373"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:30:21 -0700
X-CSE-ConnectionGUID: 6ar7iC94QKCRqevvrbSKPQ==
X-CSE-MsgGUID: 8cRw0sTDTSawEwT9cVjdZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29592250"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 May 2024 04:30:20 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 10 May 2024 04:30:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 10 May 2024 04:30:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 10 May 2024 04:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khouULEXb9KL2iO9sTzLrNSuyZZJB9WtzfNw6TOKAzdZRY0cPacZHuW9pLBRf2rn02PdvWdzu9Km3PPRn3QdG9uWuUAaHVPpMFJXAa7aeNRALQwxoaKow8QEUy2wMGj0G+l1srP1RUZTDL7yDPNdPf3oam+Y4oz8b/S3ZfIGznT/Fo5vwlbDEzXc2LXZeQPMsfopFJm4eMsgo3VC+atGrhLdzh6gHeYW4toA45jjz5F2Kbu0qKgpRPuo04D+L+/A46AaLvtvQEZJuqAJXO+xxP1ih4kUjBF3O17viA5/+6nAFhwu/K2VFtsaWzjpI3u1Obj+JMdGxVwVcw0gnAh4xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lwzLWfepphl+jSPPoFGQ+hzo5sFbAyp/igsuyum8sA8=;
 b=Q3A9brfFa5ydLtZEl+3E5ULpykzn+o5q8TTV0j+OP5bJ78sa1QRabkclhqnrY/X0JlLmv4A1vKIVMoAPyzAhOepCUkuJdXetHDCSi9WT1km79SPGKjVLGJl9Dzk+dkJBBy/8/gH3FzEd27MkrzxteyVnrmUst3lVMmGysPJ/XTf/iSVhcdI18XdK8AU2GFb0JwcmwHjzc63dtku7F+wN7wY4aGtU+D92roRI0lOFGjNIM1Qj53N7GEcipvqVdqZ47E6X+CBDj2jHK1ZQ8nanCFZWEQnijLFa1Va/udYoGyss2ky3uGXrhgXBqv57iPDdZxr6MarHBljU0K7DuKd6CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB7038.namprd11.prod.outlook.com (2603:10b6:806:2b3::22)
 by DS0PR11MB7999.namprd11.prod.outlook.com (2603:10b6:8:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.46; Fri, 10 May
 2024 11:30:18 +0000
Received: from SA1PR11MB7038.namprd11.prod.outlook.com
 ([fe80::d13f:aaf4:415e:4674]) by SA1PR11MB7038.namprd11.prod.outlook.com
 ([fe80::d13f:aaf4:415e:4674%6]) with mapi id 15.20.7544.048; Fri, 10 May 2024
 11:30:18 +0000
Message-ID: <7c4856ab-1b3e-4763-9455-4aaf16ef9a2b@intel.com>
Date: Fri, 10 May 2024 17:00:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe/display: remove unused xe->enabled_irq_mask
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20240510094313.3422982-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20240510094313.3422982-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0088.namprd03.prod.outlook.com
 (2603:10b6:a03:331::33) To SA1PR11MB7038.namprd11.prod.outlook.com
 (2603:10b6:806:2b3::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB7038:EE_|DS0PR11MB7999:EE_
X-MS-Office365-Filtering-Correlation-Id: 2333ad18-f065-41df-4356-08dc70e491d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXFmZEZhN3hHZzVSRWhJTU9YaVdPMWhhTiszcDVNNGFrNzRBaUJLM2M4UDBM?=
 =?utf-8?B?RE1vazV0UTBiZlV5SGdSc2hqOWtVUjJ2WUVGUlJSNUgvcXhYMGd6dFd6aTlz?=
 =?utf-8?B?SEZTakhVZEo5enplQnlpWlBieVJGM3VMV3MxbWozN003Z2FjNk5GNDZEU2M2?=
 =?utf-8?B?WmdqWTllR2RrL1IvWUdjTUdJODREN3djRkVkTW44U0pzdTlNRXh1TGppcE10?=
 =?utf-8?B?dzJDaW40RmZMMU5QRzBzTm1UL2w5VnJzc0JKN0R1QlM2T0RuUncyREk3QnR1?=
 =?utf-8?B?S3d1VEFFV2l4aEJoNTkzTlRSVG55NTRXV2V2YjYwVjd5Z1FrNXZmYm9iRXNp?=
 =?utf-8?B?U3RCb2dlNFluM0N6ekFvVk9GeDc5a3JaQ0lKdjM5QzV6K1hLWWRtMElOZWRB?=
 =?utf-8?B?d2xTSW5uREk1RDNiWjVkbHlIVmxFZUZQQml4ck1vUWhqWGcvYmFweGg0WHZB?=
 =?utf-8?B?MjBmZ1ViZHplM1p3c01tazJ0Qkh4eTlLY1d6VGQvUE91RldLN1VHMTdzYU0r?=
 =?utf-8?B?S3pwYmp2YkdIYTFQYzYwckkxbG5FYUo2UElkN3BubTZkZVV2VWFnMU5Dc3dK?=
 =?utf-8?B?a0xGYjBGWXNnZFY5cXVENnI4d2xNUjdMU3VpTmFnL1JEcm9qZ3pVWGxrY3hK?=
 =?utf-8?B?OUJxcTFlMmMxZjNjL0VlZnk5bHBiZ3gwbHRCYjVEbjdNTnJrWjNLYm5MN2NN?=
 =?utf-8?B?amFHL1oxUHpDK3VreXlUbkFUT25HVTRpVmdLdUI4OTdwVnJDS2lhc0QyRktt?=
 =?utf-8?B?emVOeHpVcXNQVHdzSUIyTnI5U3g4YVhtTEhnbVlqTlFjcHA3dmlkVjNPeCtu?=
 =?utf-8?B?ODFoaTdtWTRqS0ZoMExpZVYvSmVhV2o0YXkwRWxmN0FsQS9teEpuU1NMcTcw?=
 =?utf-8?B?alFTdHppVEd4RUdFN1hQUFkrVmlxQzhHclBHbmRHcFQ1S3FEMVFOZlJ0VFNJ?=
 =?utf-8?B?RmpmMEFlM2R2bWZBSnB1WG40WlNJcm1KSFVsSk82a1cycHd6WmExMy9TNW9j?=
 =?utf-8?B?WXNJNzB0V3JJTUx3S2sySjhqSlU0c0liQXp0VTNkVkhkSWtIQmZacER5K3h2?=
 =?utf-8?B?T1VqWGlPMmNpdzlkV25RVG9iMkhrT2kxTStHSDJwalZ0UlRNU1pHSGxRNWRq?=
 =?utf-8?B?Y0lmaGhIOGdTNVlZbTAzQ1Y1NzFEcE90cCtLejFNV3crbm1MUy9ITmhFWGdT?=
 =?utf-8?B?anQrMHo2MVBkbU9JbEh6bVo5QUdyQUFleUw1bEN1T2c3TGY1K1BWOGxNWkxJ?=
 =?utf-8?B?Z1Z3cHFGM3hCYjhOK2hRcUlKdEM3VW5oSDk0VlBNV0R3cnJ6NzFFOTJYeGd6?=
 =?utf-8?B?ejJVaUx3em44cEdkMDJNVE5qR3dkWlR2Mk9MZUdwYVF0dGJmSG9DanZlcnJE?=
 =?utf-8?B?NmZuS1VSMWlveVNINTFEaDNNKzhVMytDbGdhajEvdE1MR1lNTFlHR0RhK3k2?=
 =?utf-8?B?OE1yMkNpLzdpOHZyR0ovdVA1SVg4ajc2RkdBVENYZ0c4NTh6SDdYb2l5NFJY?=
 =?utf-8?B?NFVNSXRheVYvRWVhMkxJYUp0M3p2YlhaSUpTRmhXNFhyWlhxWmtidUhhZU5F?=
 =?utf-8?B?RHlMeU0xQ0cyTFJjcElIL2hZVHhLT0gyUnhUWmFUODZza3FjWjJURjV0c1lw?=
 =?utf-8?B?a2FJMUVRK3lQTVNwanp2cy96bnRMSmRlUE1HUkEvV1h3NTVlOWV4dFQrUnIx?=
 =?utf-8?B?RnliSmRjeU52NndOTm1ZZWRHbkpVRVBLSGhEOW9XNnBObjI1b1BxWmt3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB7038.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anh4U0NCRzlTd0VkVlNnUElyaU1zdDVzVnJPOG9UMTM0ODNkUDdWOXh0bGFp?=
 =?utf-8?B?U1ZPUkQzcEFuYzZ1bGFaQlBtb05wVGJ4Z0VOaGVwUzBvcXFpSGNybzkydlUy?=
 =?utf-8?B?VGlNeW9haC83OVZsMTNueklNZ1lhSHhVL2RRSjBTK21zRWFvaXA4WnRLU2Nj?=
 =?utf-8?B?UGlwc1VSZ1d1TzVqc25rTWNMMmxWWWtHNzFGa3QvbW9TQ21ZV1Fwb1BGUy9r?=
 =?utf-8?B?MTdXRlFiSmdRWmRNVElEVFdNQ1V5TnF6blpGbkJmeVVNS0VXRDdhUzhsWHhp?=
 =?utf-8?B?L25iNWRlZEluK1E5WmxqSkd5QnlBZUE0b0VndWtoNnozZTBDSUtJWU5IUDRH?=
 =?utf-8?B?ZXZhcnNqTk5PZlFXM3NOcVg4d1dmc3l3clZySnErcW4xQkJ6TWZXOVlCaUo2?=
 =?utf-8?B?RmtEdHBHWkIzTjBYU3VlM1kvZUs0K0o0U3FZSSt1Qnp5Q1QrMHlvS1ZTTjFQ?=
 =?utf-8?B?SFUwdFcvUjZrUDZSeTk0TDlhWmNCa1ora3ZxMXdUakcydGRMeVFIeEx0MllU?=
 =?utf-8?B?M3pIRXpXcEV4RHlNRW9DVFlsb25HYmxZZ0VqZXhhM25udityL3dvMkphemo3?=
 =?utf-8?B?ZDlVcEpTaytVOW53UTVFYThKbTVJcGUxZmdicU15WE9EaGx2YnNYSWk4K3Nh?=
 =?utf-8?B?Q0FtNWxacGpGbXMwbWZUNXhyQXlnUW9rYjM2QzNaVVNWYXRVUCs5SVBYU2dv?=
 =?utf-8?B?UVpqdFdNaG40MnRXUjQ2Y2hlYWJxUnVyRVlDOE5ET0NjZkZaNXdiYWo0STJN?=
 =?utf-8?B?dm1NTzFSMldVam9xMVJUYjFVRHZ4T1RNbkVJOUJwanZHaWNZTGd5MlFxNHRV?=
 =?utf-8?B?R3ZxMGdNMk04NHNYLy9JdzUwMlYraTFuVzB4em9WamVqT2ExUjJGQ1EvN0tl?=
 =?utf-8?B?eHBKUVhtQlQ2NXlSdXZuRGlub3BBWXRYckN2VUFFd3hIMVFDWFpCQjZCdmE2?=
 =?utf-8?B?WjBBdkVZODFrT0p5Vmk0b29BazJoN1piT0xkOXZNUUx5NXRLSHpoelR2YVln?=
 =?utf-8?B?QVVkY3dmVHFHVjdJclowNkw4eWFzTC91eEJSdkdzRE1oN0kySUhwMnkwS0J5?=
 =?utf-8?B?bDFmSXJHbjN3ZjBHOGZwNUxvaVVCaG50OWhDM3lubzlOQ2tHdlJ1ak9FUm03?=
 =?utf-8?B?dlRlOGdnZGhMMGZwUjhqdE1DUjh2aVpFVWRRSWxXM25XL0FLcXJlc0w3RU5m?=
 =?utf-8?B?eStrckQ1bnluZHo0S3pFU1hrcldPcVlmM0lvVmszbXBZVlVva25QVFM2OFRt?=
 =?utf-8?B?bEE5SUVzeXFGUXoxMVRPMHA4SFl2WEFjaFV0aW42V0VHTVRiTXlBRSswell5?=
 =?utf-8?B?WURiM0FPL1hmRmV3cFh4eXh4WlM1OGJ6LytXSFVneWoxOHl2MUphaE5vTXp4?=
 =?utf-8?B?NmdTOHdycTE2NGo2Q1pya1FJSGdNZDFwWFVLekRXeU8yeUFObXExOEhPWUhN?=
 =?utf-8?B?Z3VOdGdxVEFoQ3Y3aUVrLzJLUjJUNjAvYit5RWNGWGZuYkZueEdXSWI0Znp1?=
 =?utf-8?B?dXFYSW11WC9tZG9kR1crUVNzeUpYOUY4N3M0TklrM3ZJaU9VMHdrQlk1VXlQ?=
 =?utf-8?B?Slg1RkFlN29Pdm5sN3lkYnVIWWo2bVdZTStNVkFLWWxjVk1CZHJSOHhtVUF4?=
 =?utf-8?B?aVg3Y2NuTW1scWM4bk5mNlczSUt5RkE1S0dDeWQ4QjMvcDNyYmZwYk44Szhh?=
 =?utf-8?B?Y2h0L3VIZm03OTVxRGlta1hNVGtrNDV0cUhCaTlMRDEwOW9vMk9taWJyKzRQ?=
 =?utf-8?B?TUZQTE1yMldHN0gwWFo1ZlJ2a3NId04rc0p6QUxqS2crUE5oT0FiaER3TFB6?=
 =?utf-8?B?VUYyYVdENGUzcnd4Vzd1eXNmejlBY3B0K3h5ZVNsVUptR3cvYVBUbTNESmpx?=
 =?utf-8?B?Y3NmRG0vK0pEaHRGT2ZqZEVRUHVLRkJkMmRVaW1FRVppN0lES2hPWWVTajdX?=
 =?utf-8?B?SDg2THFUZGhKckh3UkFBaURvaEFCbERWd2JrL1hNOS9aWUk5b293M2ZhVklR?=
 =?utf-8?B?WUNObDQ1d0hhdmlwSVRLOXFvbUtZalRoOGZ2ZVoxR1JjSStVMGxSV2ZrTzZ4?=
 =?utf-8?B?NDFpZGZCeUw4bGY5MHoya1k1aGJrQ1U0ZGF5WVhQT095SWgwWE9Sbk1MRDRh?=
 =?utf-8?B?R1V0UmJQN0wrdmpJcjhCWllBbEIzV1Bld2ZpblNTSVNpWFhpUWkyVDNTMU9E?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2333ad18-f065-41df-4356-08dc70e491d3
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB7038.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 11:30:18.2433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DiOLgj3jMaJKMlOWiJF7BWGjEh3ltYXDogJzIA/ij6rvsCyBpnkbsrGtSpdEylLSBzssFz413bbWFvxltITdmzPskNdhP2PYVyzKKff0RJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7999
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


On 10-05-2024 15:13, Jani Nikula wrote:
> The xe->enabled_irq_mask member has never been used for anything.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 1 -
>   drivers/gpu/drm/xe/xe_device_types.h    | 2 --
>   2 files changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 0de0566e5b39..fbe2c2eddea9 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -97,7 +97,6 @@ int xe_display_create(struct xe_device *xe)
>   	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>   
>   	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -	xe->enabled_irq_mask = ~0;


LGTM

Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>

Thanks


>   
>   	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>   }
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 906b98fb973b..b78223e3baab 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -517,8 +517,6 @@ struct xe_device {
>   	/* only to allow build, not used functionally */
>   	u32 irq_mask;
>   
> -	u32 enabled_irq_mask;
> -
>   	struct intel_uncore {
>   		spinlock_t lock;
>   	} uncore;
