Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFFA139A6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 13:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38B610E953;
	Thu, 16 Jan 2025 12:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="my9gWVp4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379EC10E953;
 Thu, 16 Jan 2025 12:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737028945; x=1768564945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3C8dF4bEdJtNVPDXoIJ0FFvZhQDrOU/EA/SulnqSIF0=;
 b=my9gWVp41ZdxI6TfPM2I/iovA5jTJSKhnVkpIL8veRKi2ertEbhZFIRb
 4+SZnrSZIryAbBZ76+58M2VVbZ/2i+ThqxlXaDcO2CAKwlvxlfmOFw42S
 ZbHiv7e3ADpgpTaL41hNIRtu8QDmQHdAj7hC7j8Tct/5oJN0037d7hpkj
 pgsl0CnXMF+ZlYZkrSQ8LuSPey++n6oVy3uWqyqaT7ptgIIW/UrBTSg7O
 +phFow8aWY9dfi1FtXClXwuyZV/hbRU8Dil9dyZxe8gRI7T015mIzqPwD
 b80swh7w2C/jHRRug5+Kx33l7NRaYVluYNV/hHAgCXBMO/22vBKzuJXNR g==;
X-CSE-ConnectionGUID: cvaiALifSxydXOElFMN9Sw==
X-CSE-MsgGUID: lwykKlVZQK+rx8YdXmN5lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37649012"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37649012"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 04:02:25 -0800
X-CSE-ConnectionGUID: 6wgrqAEqT0GCAm4MiouAgg==
X-CSE-MsgGUID: SB7Etyv4Qnutd7A+OzT1vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110582075"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 04:02:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 04:02:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 04:02:24 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 04:02:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mxLDG0gMGSFrmCuaxHpZKBTGbgmw1t7L/GBqJy7iGJDhrC+zUqyyn81zUHuqKG/k8ZcffOZrPNJqRG0hZg/envbWctwZyhnWO5+jieeya/iEt73PkJ7KrpeXLP3zNQK0XMAhbWE4vzuclyU5NSgqNhqxyzU+W19b6MoBkGnPC/9tVnbn/4FLOTAQRAGUsMwiuxZboFNtBokjapG7FVBgRjILx7SrPbZbXfzPzBH1VsabFee4HwzbZmvIBJQxO/zhzimZNaMSoTGpuuLsqeKzVmSojOQ/cICqtb0CxhRp9ahJr4BikNpZtplFId2IpNbRFAjSouAX4qsYCmxE71amgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F+pbmTOMfw7Jd6JHa9ZmmS3vDci2sWiMbqJnbXeeG9Y=;
 b=YQESd4CqvaNES0LPS2VPMZyxk+esw8HN4aFnpAYm7s4KLW+ILMDJeLh4w2eFNGpX8Zt7aWlabmNOmzY9X+TIoKIg6l6/TjMnMXBJPA5RgOL2gPb1M2XGNXs9SEDXlt9/ryKXgECPf18ulQGTocUdKSGH6Bz3WtWRxXgMc/+5WeahEeWc9y64OX2DzHmUNbqaH6sumgXxxwyy4NYk737lYTvfKIyxz0eBeG6bYvOljlb214Qp/dP5S2Ws6JvJ+Z8ewODMCTcaM9MgmCvfkjVbKdwS0ctPQAE5PFOP3ZL0hUpjS80vVvZajqsZmdS6g9acJTVCguMLT1hLG49m2gQo9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 12:02:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 12:02:22 +0000
Message-ID: <977c9f6d-ebce-4646-ae65-dad82becf5dd@intel.com>
Date: Thu, 16 Jan 2025 17:32:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/7] drm/i915/scaler: Limit pipe scaler downscaling
 factors for YUV420
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <v5-000intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250115151714.3665211-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250115151714.3665211-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4640:EE_
X-MS-Office365-Filtering-Correlation-Id: 35dd59f5-1c56-4e77-faa5-08dd3625a220
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ck9PL253dEt2VXBFZ0pSd0hyWThUdGRScDlWWmlmS0d0cmpNaVh2ZjU2NFNO?=
 =?utf-8?B?eFkvdjVXcC9hUDh2VkJ3NFBoSGRpWktFZjdlUW1RVnRPQlJDU0FkcTQvcWFw?=
 =?utf-8?B?cXBDRU90bC9Sd2hrSzVNU2FxZ01HblEvOWpNTEZFcVdleXdST01Ka095RDdE?=
 =?utf-8?B?NXh1YVpZLzZWUCs5Qnh2UE1xaWhKdkplRUFZUHZLcWJ1bjdDeXdIaHZoeVNQ?=
 =?utf-8?B?aTRJbHJyNE1GbEFvL0MyMFY2dFVFR2J4QUp5Mm9UN3hzWU5RK3JmTkdNNmRC?=
 =?utf-8?B?L29mZjlrdkFrNmt3TWtMMlgzc21EZkVmR3RveEdaK2NPNDlBeFdJNUJxam5z?=
 =?utf-8?B?aXc1VGFYd1g5MUQyWDJsQ21DV3hRcVdLazBKYVM1NGtTOEtzVk9IVitEMWRu?=
 =?utf-8?B?N3hOZmpLTVhmeGgxMmNhVG5seDdtYmRvcVlmLzFwTEJSWTJuRWxBTEdla3Ji?=
 =?utf-8?B?MjZLTVJUY20xMS9LVyt4UUgxZWtXRU5HZ2xzdHloYUlZNjk4TzJoZzNPRG5w?=
 =?utf-8?B?NTgxMnlnd1Vsb0t6aW1xT1ZEbUVjTHZKSmFYV082ZmFydWsvRi91ODZoYzdl?=
 =?utf-8?B?Nk1wcDlMUm9DZGhLUTlOblZ5VExnblFPeG5lbUVLUGxLSC9GRHRWMWJZbmdC?=
 =?utf-8?B?WW8veGtZTU53LzBxMGJ0S3VHR3VuVm8rOFpmdGx5VFNCZ05YOFFyNGJYc01m?=
 =?utf-8?B?TTBZbWg2OEZ2ZnFJbHJ0Zlduc0Q5T1hJdHhOZ04yNjh2UURqTnNvUWRwYllD?=
 =?utf-8?B?T0tJVFJ6TTdSL1YvUXR4UXBhN1Aza0pjYjFzdmlIR2xGYWo3RjkwQTV1dG1q?=
 =?utf-8?B?NEFJVXd1OHdMNlpycXZGZm5waXBTN1MyUnI5b2xWZldtRXZ3RnByaHJzZGd1?=
 =?utf-8?B?MzFTYlppaVJ1a3Zka1BldDVaVXhUdlpNakRIMDRWUmVxMmY2Sm1LZHFTTGZK?=
 =?utf-8?B?ejJKcUZIQ2tCOUZWL21DUVR3azRNbnNBbC9RcXBTMm1DTmdGdTRuUU1zNXRn?=
 =?utf-8?B?QmxJOTdjTWpxeVoxT1Q4ODZWSlFSOUZua1poTGcrekhkV2Q3OW5lVndBVDE0?=
 =?utf-8?B?cklPQytwRXJKdlZmSFVLOUU4YlJ6QUxJM0VVdGNTYjJmdUJYenhRNGpTdFBI?=
 =?utf-8?B?YmxNZ2F5UVp2eWJMTVlVdloxT2pubXBJbEI3M2RSYWVJVUFFWG4vdGxjSHZ4?=
 =?utf-8?B?Lzg2bDFpWXlWaExtelNmRmNrN1N1enVuSGxSa0RLWHB0cVFHVlBKNnNyMGZK?=
 =?utf-8?B?YzRzVDc5TlNkcmJCeE5NZ3l2SUFMM2NGajVtdDc3SGpramUxd2Q4WGRub0Vv?=
 =?utf-8?B?VExNbFh0OG9EMis5Njgzb0RkMDdNQmRsV015ZkJ4WEdTZ1dOUU1XbnJneVJI?=
 =?utf-8?B?NENVdjFhWkVpcTBNSTFnOXlXdmU0M0JkdEVrTHpTRzNGY3IvbDA3UkZLbmtU?=
 =?utf-8?B?Q0M1eXVuTEg0aUhDM1pkRnJ2QkY4cGxqS1ExRS9IQ2RDNFFyb1I2VkUzZFZ4?=
 =?utf-8?B?MmROd0ZpYWQwdC8raXRKSWRFVlRNOVcvVkx1ZWxUU3hiYXFyenQ3UlhFN2k4?=
 =?utf-8?B?ako4Z0tjdXJSNUduY2ZOVHZaSnp5aDBaSXV6bVNNaDc4OFNnT3ZTUVl1eU45?=
 =?utf-8?B?RnU3WFFBR3VzeDNZZy83akkxbHI3L2ZIWGduOVRJbXJOcCtqaFJmYk84Ry9Q?=
 =?utf-8?B?aGFKK2ZMS1VYUzRncVMvUnpnVVg3aTBETmFVK3hmSDYwem51dThrbi9jR1ZS?=
 =?utf-8?B?VjNpNVBicEJmSHNqMEFQOVpxajYxaXlBaTBieFVYVTdSUmZIc2gwRHBOSENx?=
 =?utf-8?B?bW5kK3g2MnNLQ0lEOHdWK1NuV3FTaysxNEgyNlVMR2JzTkQ0UXBTd2RxSmZG?=
 =?utf-8?Q?Qd8oob/45b19W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFRkRjhhVnlQVm1wZ0s3WkRkNktxV01LL1AwZUdWb0RnQUJ1UXpaMk5KbExE?=
 =?utf-8?B?V2FvaFVyZFRLWkIzQmpiOW9SNnlXc3UwR3pvRGJGVDJOUjBjNWE4enFPai8y?=
 =?utf-8?B?TXExS2JPWHl0cVFrMHFjS1RhazYxZHdMNG5GSGo3eHlBUUZvVlVCZzBXRno0?=
 =?utf-8?B?WjQ2c0FkWTZmNDljdkJQTGo0enY0eFQ1VUZCL2ZxeWphUEVsTDBnSkgrd1Jz?=
 =?utf-8?B?RUxSNHVaWm1UQy92SlJKYUlOTERRZW4vWmpIZkU3MzNlcU5FdUJseDFPOVZ2?=
 =?utf-8?B?UTU0TkZBNERvK2pERmVvdXpZanZWUGVzendQOWpyczdzN2NQWjQ1bVZCdXZK?=
 =?utf-8?B?bENyemZ3SEw2bnBhWFU5WkZLN0dUeWJiL0J1RkY0ejc3WEFTSTJMQk1WVEUw?=
 =?utf-8?B?Nk1lbWI5Ykd4ZmVGMmg5VWx0Y1JZYmJTRU9vNlpWOFh2TXVWb3kxdHdWU2tZ?=
 =?utf-8?B?azVzU3EwZ2RGZUIzd3JmNm41KzZUK1ZmSU5QeWpPblVTMzZqZjU5RnZVUlRZ?=
 =?utf-8?B?R015QmxTN2cwOGo4aW9KbTJ4N0U0ZnNtOFNjaXhSQVREUlBTVGlkMjRPZ0pB?=
 =?utf-8?B?NjBWdnc1OXM1WjVSdXNoNURnbE5QQnNOZUFLRFVoZnV5Q2JSTXNtOFQrVEZo?=
 =?utf-8?B?WUlmbmk5K0lkdVR5VmJrMDJqckhiQzluWXBZYkVDaGNRcFNveXNYT3hiNTFj?=
 =?utf-8?B?NWVQV05BMXRyS1U4cTkya09YTTF4ZGtCQjdyZjlQK1RGUzY0b3VBRDVBQ0hi?=
 =?utf-8?B?ZlFTdGFNajViQTVrNk9xeVRzakcza3FPU3JKU092d21oWFNhU3Q1L2NCMm5F?=
 =?utf-8?B?blM3NktOamdDNG52ampUQXRaOXFGc1VjK2VsTk5kQnFrNTZscXhubnVLQzN4?=
 =?utf-8?B?Q01VbFBWY3ByTXFEcXhZY1EzdDJIc3p4ME56emRXSjFqRTFCLzREdkRBSjUv?=
 =?utf-8?B?YWYvUzZzazJERFpySFFFMVZKUXVDemxvRUsyczE3OXZ1WW0rdXpDNWNTSlJL?=
 =?utf-8?B?Z1JrYXJDa0I3K01mc1BqY21Za2d6MVdSVWt1Zi9mTXBvYzZxYXdIaVg3bmNW?=
 =?utf-8?B?SkRDakFpd0lZRVlhZW03TnJiM29GTnF4dGJrT1ZybmRIMFZDTGhSd2FMdTEx?=
 =?utf-8?B?di9HRGtaQnUxNmoxYXE4UGlPSCtQaWQwZVBpVXJQd0MyN0J0ODJrcmZvdGtr?=
 =?utf-8?B?eWxUdUJGVmQ5c2VwcEdJdDI1bDI4Q3lDRHlHaDRhOEVhZURuQkhFTkpoa2FC?=
 =?utf-8?B?ZDlEZjlJZ1hROFpjVUtQa2g0RFhGZTl1dHFpenJpYmNPcWlnN2ozNllvdWNO?=
 =?utf-8?B?QUVQN0J2OTV2NXB3a28vc0c4NlZmbGg4L0Y1RXJzRUwxSEdNZEp2QXFleGJM?=
 =?utf-8?B?U1prMUUzR1lDN2VZTngrUUtrQjZZR1M4MjJlTWxwdnVEMEsrVnhCVjh4amE2?=
 =?utf-8?B?WUFSbzNvMEk2TnpPOUdvYTRaQnZWMTVnajcrWnlUc2xCcVh2TURnN3IzMmlt?=
 =?utf-8?B?ZXJJeWVSOTRFaDkwdkV4OXFYenJKOGxlYWFnSDJKYnJnekF2aFhkanBmZFhE?=
 =?utf-8?B?amhhVy9aWVNjaG92Q2FucWpBQTdUMENjUWdZdE5DSVlzaGVjVGJUZDh6czBZ?=
 =?utf-8?B?MzMyR3d0SGtaN1NseitpcWpLKzlCS0orN3BtM3EwTUFJcXBISUN0ZjhzU2dP?=
 =?utf-8?B?K2dIR1N6R0d2NlYrMXdvc0xxcFRRaFlQUkZ6ODRWZHZONmtkWkVXeEp4T0lp?=
 =?utf-8?B?Sm4rTlJXQVYrUDZCOVVnUDRNNmdOSytqbkpXdXZqUEhOTmMvUWRqRGVzbG5B?=
 =?utf-8?B?Nm91dmlYQ1ludC9xVW5QVUNOd0h3UHExa2NUY0JxbUpZRTNWMmt5SWFkbk5Q?=
 =?utf-8?B?eVduUVFta3owblhSeVlYRDYzZkU2VEczaE9tNXk5Q2Y0eVZWaGRXblRUYW1F?=
 =?utf-8?B?Q0xIQ21vWEJjQlM3a01QNW5TUHluOU4wYVJtdlJDZEVrdTFjWTRPS29GM1E2?=
 =?utf-8?B?eWxjc29ZQXpiQm14d0psY1EvZjVKUzQ4YWhKdEt2bG80bGs2Q3MzNDFzdURJ?=
 =?utf-8?B?QzRZbEwwN3RnRGIrSlJwamNBNzM0NzRMYjZQVHhuZmhZSTNSS0ZJZGU2T1Uw?=
 =?utf-8?B?MEFSOXJET2xsWDZtbVkxbEJpTm5kYzE4SUJRYkZZMHdySFByakRWSUxpcjhM?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35dd59f5-1c56-4e77-faa5-08dd3625a220
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 12:02:22.1461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZTaoTVqjfL+Mvcisf2FOxe0Mz7IK3yWjouE8xUMGLa3T+tPlpTim2zXHOdulCqv2kfpfCc0oSbatiS17mYdes62/z1TOfwxIPmKtHbQh4Ss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
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


On 1/15/2025 8:47 PM, Mitul Golani wrote:
> Limit downscaling to less than 1.5 (source/destination) in
> the horizontal direction and 1.0 in the vertical direction,
> When configured for Pipe YUV 420 encoding for port output.
>
> Bspec: 50441

Also Bspec:7490, 69901

Make Bspec: # as part of trailer.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 72344044d9d3..c9d7966b37ff 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -456,6 +456,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		calculate_max_scale(crtc, 0, *scaler_id,
>   				    &max_hscale, &max_vscale);
>   
> +		/*
> +		 * When configured for Pipe YUV 420 encoding for port output,
> +		 * limit downscaling to less than 1.5 (source/destination) in
> +		 * the horizontal direction and 1.0 in the vertical direction.
> +		 */
> +		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +			max_hscale = 0x18000 - 1;
> +			max_vscale = 0x10000;
> +		}
> +
>   		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
>   					      0, max_hscale);
>   		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
