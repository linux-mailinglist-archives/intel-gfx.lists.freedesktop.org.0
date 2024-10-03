Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB1E98ED4F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC35B10E7F0;
	Thu,  3 Oct 2024 10:48:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJE84aLl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E2810E7F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 10:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952518; x=1759488518;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M2GNZ9PdBbGR5tdcqGep7UIdBSrQ9oZ+0XKXfoi8TPI=;
 b=kJE84aLl5dYo9qtUVQNfZYDwCq9lapIHua01A2FC3NoZApoVPb6x0ks8
 TT0TIvANZI4N8zAaE2uCFYYvRQrh/ZUnbzjZ7g9Mb2IjRDiR6caD9Pnuf
 4F9iqI/bOvJg1pIhahuqCMx7EufhRxgAdQdLtPFqGEr05eSeMxLx5Hb7U
 HFB9pVSCkYR4p02062UqRGn5hgEbJjfTb1C7QMO+4Dbjnm2nhwIjPdjgW
 T9h373QpBk8y6k/ZS9YoUujrJajEiN7QBkgalJtNVh4Xui02Ie6trdqZ1
 txjGjNys5EpKFvRWIMyQDAw9iu2PokXPk8KAgXgSjCXDreONDQRKo/Tnb A==;
X-CSE-ConnectionGUID: MK5lUX9wTjKjpWcok709oQ==
X-CSE-MsgGUID: uuD50M8DRNq31bKuNP2cNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27294437"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27294437"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:48:38 -0700
X-CSE-ConnectionGUID: ag4670NBRy+/27rR/o5joA==
X-CSE-MsgGUID: kOW2g4+XSD+53rJN3ndtqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="79277125"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 03:48:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 03:48:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 03:48:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 03:48:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 03:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b+1XfVssTMvCl5QLejiHKeZBAmwgrD+LglfsuYYfTABLiLWw/NuewVDK2xIlg/eOh+BJBnOMZUtyZ+lRqqQIP58E6UdRkkimzY0nroVpf+YrnlmYK7ZwLk1HSLjJmB3SOlna3jGFJStrl+nDMHXhCTz5EqQfVoFEuIYG3dW6DJCTyJemsS6403DlO1KzXcO4nLjtO2wV2YrwY83ETQnFNKSmZw2Xis7qEBdavhtc/dcxhwMI2/G3ep3tDVDw/KXHCyZJJHEwuxZLFVEejYSn5YnKtiPXbXSwuJWza3tA8W0wUI/GtkyAgHZg1L1/7ZWWkRDH4nHhqbn5vy/lvhSxig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zahMIN9CK9WH9FZC2yf59LSfdeuiZKxHYfQJnt5M3LI=;
 b=LDdJ1zOXaGGq2zzwbAoHzsap0GjWyW+kWfPYHxriZ3aDmAzSvs/+iL77C/sT0/EhbjvdVM5QUf4SDCrSlOd4waTdbYTymxdFSYNsY/Zk7M98J3JbCaRvzQ+fH7n7gbDLGsgPlsFRZISnSkyfyQJqZMNgDCBGgiK50WqM5liOTKHEVJIq5GBJiRbE4JHWGwu0DbPqp2iNTTxsb/NOFVDuH9YBWm8Blnb/c23JnzuBNTV8uqkatXPBF4IrCkk2hEa+Xl6xv94ZPBBx5tUhP5dzDuHt7ZpY78Req6XD8Y2IfnEVUPiVpBaW75L2Kra3ASqKit1U3Hhn3ssr/2qG3bZOXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7136.namprd11.prod.outlook.com (2603:10b6:930:60::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Thu, 3 Oct
 2024 10:48:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 10:48:35 +0000
Message-ID: <eaa47426-85c6-453f-93cc-918dc8567952@intel.com>
Date: Thu, 3 Oct 2024 16:18:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/dp: Ignore max_requested_bpc if its too low
 for DSC
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <stanislav.lisovskiy@intel.com>, <imre.deak@intel.com>
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
 <20231213091632.431557-6-ankit.k.nautiyal@intel.com>
 <87setm22s9.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87setm22s9.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7136:EE_
X-MS-Office365-Filtering-Correlation-Id: 8260d5ca-11dc-414b-45ea-08dce398edf2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3pjb1RLZjg1T3VFUjJCRHJHM2hLVklsSTZLTU5yQXFQT2Fpd1g1U0ZiZHFJ?=
 =?utf-8?B?d0JEa1RDdzB2aE8zWWxiTG9TWDV4TmhKZVFNMEVXRG9jSk4wNzROUEh1NGl3?=
 =?utf-8?B?dnU2ek5kYjMyaEoxeWQ1NllkdDNFV2wwaEY4M1lVNVl0ZVVueUpmeEpucXFx?=
 =?utf-8?B?RHRJSHN2VVU5a2FmK3AwZ2xnNHVJNWJoMkJQd0NySENTazJOSVc3RWtJZ0FJ?=
 =?utf-8?B?Q01QWjlrWEp5d3FseDlGb1oyMjNKcmhvellaNWRFa2tvejNkbGVWSW1PdXJh?=
 =?utf-8?B?dzYyZWtMY2JTYlcrL1JPNjRWb2Q0U1dDMmN2Q1d3Z3BxM1lua01sd1c3eHBL?=
 =?utf-8?B?TW53bTMrV1EvV3lLK283cGNqdmhNNDRTVEdrcHcwNXRjZER4YzBDK1hJcHAw?=
 =?utf-8?B?bTNDcngwdlc0S3kwS2VPSzhIQ2c4M3ZGZDdJS0FaZjRSaXdmc0ZGZXhMbk1t?=
 =?utf-8?B?OUVtMjkrVzhZTWlkQWZKb3BMWlVhS2NsdjR2d2NPOUVHZlVmNkZEU1JjTkxy?=
 =?utf-8?B?TU1yU1c5bktHSmt3cnlSS1Y1dU5yREhGeGlSYUZtSmM5UmpmbFl0WmlGT3Bp?=
 =?utf-8?B?WGlEcGV3RHRnVnVoMkZlaTJlZCtXRVRZRkQrb1oxbDI0dS8wcnFMVTRUekxz?=
 =?utf-8?B?ZXdhdk96TWdQbExiaTdDSmlTOGc1dXdNVUhFVlY3TGNUZ1FjME8vU3ZzOVZ3?=
 =?utf-8?B?Y1VaVGVqZjRhc0ZwSTQrR2doRjNPREFQUnVLbFZhVHB1d2RSOSs4dEljK21E?=
 =?utf-8?B?UWVueXp3UkxiN0pWa1ZCajVUWUVIN29pUWtxbkNtU2E1M1FsMlM3WE9GNWVl?=
 =?utf-8?B?eUVJY3RYbTR4L2g3SC9EcVRxUEJRQlRUMy85UklVbko1bzg4S1NLRThvR0Vo?=
 =?utf-8?B?YVRYZWFkNU0zOEZUODlzUkdHdkZPT2Y2cEtsdTR4T0QvMndkR0diMTBIajJK?=
 =?utf-8?B?VTlXdHdyenk3eXNrcHVIMTBZclJJSXl1YmFnSWd6eU9lVjArcTRSYmVGNDM0?=
 =?utf-8?B?RHVSK050UVZJMTFUMVI3Q0VxRzhiOVJpeVZWTlh0bGVKcnExSGpORkVZZ2ox?=
 =?utf-8?B?aDV0ZUNIV2o0VkFxcVRSOGlLQ1pVVXlpRGF0WHF2UFN1bG1vcUJ6T1hhSlFZ?=
 =?utf-8?B?NGxrMWFaZmhKczNnZzVnRnVWWXM4SmNYQi9CVU11RG9Jakttb2xUbEVUMWdM?=
 =?utf-8?B?RnZSMWh1QmxrRVBtTVZ6bWloWGpUdzhDQjJhcURPSzFLVzVnY0ovU1Q2VXRw?=
 =?utf-8?B?SDQ3S09XUUxvaC9JQlpQcE16ZFF4ZWhadmYzOWtuYTVxQ2IvWHB1MDdmZFF4?=
 =?utf-8?B?eGFzb0h6VzBFK2haY21ZM2E5emQ4UTA1cHE1LzFjcGNYT283R0c1N1VSV2ZM?=
 =?utf-8?B?TUVhVFdPYzJpTHdubkxucWxsdnZrbnM1VzZJNVVpQ0JLbVBaTDYydjFrVGNn?=
 =?utf-8?B?VHgyRDhkVDN4Ti8vcHBOeXFlaDZ2ejFZaVd4OWx0WDJqakVBL1IvVFdra3BB?=
 =?utf-8?B?N2VtQTVHSTdwMEU5V0xzWmJVYWZJRkpwUUQ0KzNRZDNZa09UWGpPa2tzeVdI?=
 =?utf-8?B?eHRuTVBlMlVpK1BxR0dSQkxaRkRRR0x3aDZDcVZPL04yY0FGZWhuWDFsY3ha?=
 =?utf-8?B?aytpa3hid0hqZlpCeDdaNHJRSmxvRVpQclV0cGNDZUtzVXJjcmV6aWxxZ2M5?=
 =?utf-8?Q?UcEiNO9ed/mDy4psl4Jg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUwzdGVZTmY4SE95QkUrNE02bE55VlJETTYrbGNoSFFKTTlndWdUR0QwbTFl?=
 =?utf-8?B?NHlDZmFMSFlrUWxOa2dBUW4zSEdHb0FYbEF1eTZkNkRqTVYva1Y1TkJLbERC?=
 =?utf-8?B?Mm9zOHNjRlhLZ0lvQ0xJL1JEVkIrU3dMNjBGYlNDeEhsbDhaY0xVMnBnbDcz?=
 =?utf-8?B?bjdZZG8rdXczZnQrNXE3aGxEb0dtRmNGSlFSUGFPVkJ5a2cvMFpBc2d6Z2kw?=
 =?utf-8?B?UXlTNHA3UEUrcFFXbDdyUE05MHBSb21BZkVMMXBrME9aWUY2am1RZHhMczRp?=
 =?utf-8?B?eG9tVXljaHJSZytRZ1c4YXI2Ykw2Vk9PZU1tREgyUHlFV3hhQk5pUld1ZSs4?=
 =?utf-8?B?WkZmOFZhTm5WS2huTmgxRDdOMm5yWGl6YzZGYnllakNZbmsrZm5aTGcrcmZR?=
 =?utf-8?B?b0lKbndOV1loYmw5RFBFQXVGMG9XZjkxOC9CVWo1ejUyKzdyRGRpdXhBdXYy?=
 =?utf-8?B?RFJYSlFJTERKcDQyQUdJNHdRZ0xPM28waFIxQll1R1VwS1lUTXRhcmowVDlx?=
 =?utf-8?B?cGQ2QzZFazdoL2tyVTFucXVvckNmTHNSYXQ1NDlmbGJCSkxyQ2d5TkRLR0tw?=
 =?utf-8?B?NWUxRE55MGI1elFtazNJZ1Z2Wm1WTTVHYTBHSlpHdFRnbzA0SlNtSEVWS1N3?=
 =?utf-8?B?T1JOSTVhV3M0SWZHTFZwcmFRdTVDbTNhWFpERHhFVU1LazJiUWFHWEhBT3FP?=
 =?utf-8?B?VFd3L1kxTUR1NHoweFlWTjJneVZOT2FUNW9PUUZ3V3E0NzY2R2xVVStkdC9E?=
 =?utf-8?B?eTJOWWc4UVAvV3dZYURjQUZtSjJreWdjSkROdGFSRWFqZUFsOHpwS0lKMnFJ?=
 =?utf-8?B?blFNckRwTlp3UDEvRFZpRU5saXdlMGZwYnBpWlNXVmN5bjhuN0ZRdFV1eERI?=
 =?utf-8?B?Nnc4UHdua0JDRFVnQkNXMFgyeHY1TW1VaG01dzJPaCtUUjJQNFA1S092cjlV?=
 =?utf-8?B?MVJ4YjRIajRnQ1cwaG1EZVNNV2ZTdHNpKzF6eW1DT1phMm1uWVZDdlJCUXhL?=
 =?utf-8?B?TFZ6bFZFWDRna3djWXptV09mU0dlTHluVHloclBQMENhczM5THcwakoxRU9F?=
 =?utf-8?B?SEhUWG4rUEpEVGxRNE42cEtVYm5JbndPcUk2T09QUmY4SytQZ2RhRDRwY2U3?=
 =?utf-8?B?ZHBoS3Y4TEpuNGVaWnVVZjMzby9OUHBNalJNRi9yS1dDRHRmQWZLT2pEU2xW?=
 =?utf-8?B?ZWNsWXhLSjZmeENZQ0lGc3FteFhBKzJqNE1vZFpYWXM4TWlrSlZyKzJuUm1Q?=
 =?utf-8?B?TTdsZkp1dnhpZTFURmZYKzBINExYNnJKTlZQdHNTeit6bDBZRUN4MXM0Tm84?=
 =?utf-8?B?OVIvb2RxeEIyNng3aTJJN1FMQ3lleWVuOHFONjljUGxDNUpKd0FscXlkUkRG?=
 =?utf-8?B?eEEvSzg3bGNDL0M0NlcvMHZMMkN1YlJHanhqcXZTUzZrRmRRcFVhaG4rakdJ?=
 =?utf-8?B?YnBXUlgvaDVlSG1yVkc5cGVxUXNxSDdrZ3RIRHhSYkdDbWtwbHVvNmxFKzdI?=
 =?utf-8?B?WnA2L0lhbXNCcWF1cGduZ0VCVFZiN1luOFBUaG1UN3RoSnlnOFhqOEFhTmJR?=
 =?utf-8?B?d2s5WjVCRURuVWFncFhwd0dYZkJqS0orRWpmWVRhVXg2bDArZmlZYmFFMzB4?=
 =?utf-8?B?ZVpPWmxieW9rY1RkYzlTVEhYaWlqUEtKQkZSeVF4TkJOSVlnNVVvSHNiVXo2?=
 =?utf-8?B?Wm1lNDhlVmpwV2d3T3BGWEh5N2VLTzdmbGZTbDVYdVpXWGpPbWt3ZnhsQkw2?=
 =?utf-8?B?MjU4WWpidTVLUEtlYnJmT3B0M1BvS0w4RTYxa2VqbVRqemx3MTgrU0p0dzBI?=
 =?utf-8?B?MVQ0QS9VeWJJcUhpcWFGd1l0Ky9PQmc2YitTZEVaY0g2c3RsN3ZGTGo1Um9r?=
 =?utf-8?B?RjBBNHJWV1pqaWN0MTI1UzcxSWFSbUdPeEtneEpOL2ZLeEphQjF0U2ZwZjZa?=
 =?utf-8?B?UURFNWt4UjNKSlFEaGlJSUN3bXdGUEhGaUhzMmhvTGFUaVR5UzZLUmNYdnBz?=
 =?utf-8?B?VS9tRmYvY2tHODNvOUQwTWNhRFZmRlJFYjZpL0paVzArZE44YnFrN3RwbGNN?=
 =?utf-8?B?WS85QjJVUk1PWjhvd2F1T3VIZUlPZEhsN3lzWGRvTkg0TXUvUk9tTHgzelBo?=
 =?utf-8?B?TGNnTmtjNkpoMXZDd1pmS2JOQVBOQ0ozeHRKNVl4eTlFSlFkOGkyM1BRWlNi?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8260d5ca-11dc-414b-45ea-08dce398edf2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 10:48:35.0399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wuOFkqHjgUygI40i7nqbfPmooh0pI2pnLl8qIcHIRU+Qd0qGajeIKdyDsMsgxatrkV9qmKWzX2PNY5lfICxFSZ1Q/luoV0myEgZPgLWyahE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7136
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


On 9/26/2024 2:46 PM, Jani Nikula wrote:
> On Wed, 13 Dec 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> At the moment, while choosing the input bpc for DSC, we take into
>> account the max_requested_bpc property. This creates a problem, if the
>> max_requested_bpc is lower than the minimum bpc required by source with
>> DSC.
>>
>> So consider max_requested_bpc if its within the limits that we can
>> support with DSC.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
>>   1 file changed, 18 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index e8aa2f469142..0014aa5ea652 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1638,6 +1638,16 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>>   	return 12;
>>   }
>>   
>> +static int
>> +intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc, int src_dsc_min_bpc)
>> +{
>> +	/* Consider max_requested_bpc only if src can support it with DSC */
>> +	if (max_requested_bpc >= src_dsc_min_bpc)
>> +		return min(src_dsc_max_bpc, max_requested_bpc);
>> +
>> +	return src_dsc_max_bpc;
>> +}
>> +
>>   int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>>   				 u8 max_req_bpc)
>>   {
>> @@ -1651,7 +1661,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>>   	if (!dsc_max_bpc)
>>   		return dsc_max_bpc;
>>   
>> -	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc,
>> +						 intel_dp_dsc_min_src_input_bpc(i915));
> Somehow that doesn't read so well.
>
> I think something like this would improve clarity:
>
> 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
> 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>
> 	max_req_bpc = clamp(max_req_bpc, dsc_min_bpc, dsc_max_bpc);
>
> i.e. clamp the request to reasonable limits. That's more like regular
> input checking. That should be done *everywhere* when
> conn_state->max_requested_bpc is used.
>
> Then min(dsc_max_bpc, max_req_bpc) is no longer needed because
> max_req_bpc <= dsc_max_bpc is guaranteed.
>
> IOW this becomes:
>
> 	dsc_max_bpc = clamp(max_req_bpc, dsc_min_bpc, dsc_max_bpc);

You are right, clamping is the correct thing here.

Also realized that we actually do not need to explicitly check 
max_req_bpc, as its already taken into account.

I have sent new rev of the series with the above addressed and some more 
refactoring.

Regards,

Ankit


>
> BR,
> Jani.
>
>>   
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>>   						       dsc_bpc);
>> @@ -2039,8 +2050,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
>>   {
>>   	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
>>   
>> -	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
>>   	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>> +
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state->max_requested_bpc,
>> +						 dsc_max_bpc, dsc_min_bpc);
>>   
>>   	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>   	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>> @@ -2100,14 +2114,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>   		}
>>   	}
>>   
>> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>>   	if (!dsc_max_bpc)
>>   		return -EINVAL;
>>   
>> -	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc, dsc_min_bpc);
>>   	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>   
>> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>>   
>>   	/*
