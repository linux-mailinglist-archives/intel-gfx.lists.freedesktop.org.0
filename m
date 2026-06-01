Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EnAClp9HWrEbAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:38:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7277C61F622
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB83C1132DB;
	Mon,  1 Jun 2026 12:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NG7BFTI4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B021132DA;
 Mon,  1 Jun 2026 12:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780317527; x=1811853527;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G2Ft2zh3YD7v3UpE+vsHHLpyIFWrlKab/Q4jJbdGwso=;
 b=NG7BFTI4xb0SDW9+je32z3+LZ5G1hEmFZt3/JFjIoDbUOcbvZ+VSm937
 9QXI+gcNGzqV0GB2ZFLPmvYwm/FRa0lKBf/qG8HBZopUiLZVZ6bNrzEg4
 0qW/DkdOOKLqYgYRqLyvlAC1KFGSQhBaeqgkPPbnpKjFRCpNfFlryaD+L
 QbqVBdHwNPJnc0W7ou0niL7E2WAkR1ebzw6ENNMEDXVaB1E4UoL4eW3C9
 P6zsMSA35a84oKWl8WCda4r2WVU+7ScNnDUDRga+EOYK3XWQHWhoJdTvk
 9+R4Ikl8OYLO+yYhIGu6lpVSdE0S+eaFZDn1unHbA8iJ5ncpQrlChhlXM A==;
X-CSE-ConnectionGUID: 68gn53J1SWG/BsSj9+wilA==
X-CSE-MsgGUID: 6Q3iz8cMT7qe6zF8c5rJ6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="98490084"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="98490084"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:38:46 -0700
X-CSE-ConnectionGUID: EO/62ASATfyHmfuikxr+wg==
X-CSE-MsgGUID: 7fS4h6UwR06UIAgxj80nIA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:38:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:38:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 05:38:45 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:38:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tlj6lBQkRCDq3OkovpHNAN9ziyBfe2WFqJVy8p3CyiTyGBcgLM/VmZsO5KianKqrZ12nt62ciHaG7IyLoG59AWCywRIN61O+NcdsUuPsrDoiFBD+GVGwModhPlqctKcuHApaeIWRKPc/u01w0HojuEN5hWeN7qusnDPEIBwbfEhKAjOefmY9UankjPLcfwGSYnewafH+eLJ2CrmpXpkjlUsJGDcnwGKDI4fBzH+lkZT0ypGEXHMYUZZDaMPrKpAfnnMP4vC9KfT6pvXmoYkJmnMcfHILD+E3HLvU9tqXuJr3cmd/brammtMVBBBh6MtTCF9YMHyHmRitjQSnA+aOIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXwDZMDhFSMXHKO3m3a1qBxsgOas2EnBYdwX61cmiWw=;
 b=CZGDPdfegvo28ZDSSAGmOpgjqs8kWWcIz5M6aKys3G4SVVWZ4I+bOhckWoO368rnQajs+HkWAwwVXAwg847iK5qMjfXAJ5+4LAVE5KKrJ5zm7tA5qYiJicvVE55/7z8z6DziLrRkppdPmAYG+si0ztl23Ztz7hWMkZtV6lTolkH1gphUw/YLdqdFsYmVtlGdPSvqLmEZYVMHxrJUJfAuvxeueGewm+j6oQKMknpG+b7XNcOLZGIND/5/zfFHZkdrqULb3jW5OnxMYccqaizOeOF+3PtYyOnoO+UBiSXoTa3NqmTnV26YJUq4yJCLgY2Mt1JE0LhOEdzchYxbw1/rxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SJ0PR11MB5166.namprd11.prod.outlook.com (2603:10b6:a03:2d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 12:38:41 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 12:38:41 +0000
Message-ID: <5e8bc0a1-c846-463b-97d8-a1f4abe0aefd@intel.com>
Date: Mon, 1 Jun 2026 18:08:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/13] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-14-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB8049419C11C883D2B72B303DF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049419C11C883D2B72B303DF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0369.namprd04.prod.outlook.com
 (2603:10b6:303:81::14) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SJ0PR11MB5166:EE_
X-MS-Office365-Filtering-Correlation-Id: cd300ec8-44b5-411d-daf8-08debfdab5d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: FBH7PPxHXjI+GUu9AVISlmhHIOsHBbPeaxc0doUpfhWh6rKEqAuMQLPb7jUggmXbOScJl0RCYVYbjoThCn/BT73m65ddbvNdwoEZoGP3bSL1ojZ8gHfsf7fYGf4hj3J+hQY3R0/LA1hx+lKwk7JYNSclRExG4JGtd324yJEEv/uXRiKqsQzb1Bjxq60Bc9Zya96cLrEqGtjuPgfV4s4WMNXCTtdGsjG1vBvoad0OPshVN9KDU8m1HUxHRuUNMUBcrZrV2/cSF0YIFhAifUT8p608l3N/AiX7ssBe4DRLHxK34gNqHEWmh/nNOq6tjzbYKbFb6/a+nfgvYLLBBBHvCuHk0PITkX869uDM4mVCvNX4aR62Eo3/mkEOiuLUsozihAzOvMrQXRL2pTn59jrfpfDwXj7PUJbxadIRPzu3p4GvQh7PsjQ4ZiyBouVyIUaAjG9AEc0ktwo8Ua0/jBIbE8cmDMD+v8oVwr2qVQ/0JG1Q/L8WgpihjVjXkcNuvzl1TLwc4Yq1ynH1mcJyxeelL0+fEH5XMwXjo7fGQ/sQICTTCsWsyeQwoJAIKScDM4itU3p025uQfo8tb/q3tHHwDeL6Fgs4Pr0jkBapvmSDkEwQUANHhbaiSdSpfL42hm7IGNrCRORT9LDBFfy7mJMrDP3ZoqHrA1PkJ1xudWmHWXh22aGlZsHrS8YXxZ2EbURr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c05HRXdTS3ZnRjNXSCtjbHZISkF1VkhBMDFCSWFJM2liUHM5K1Q2eHhFQTkz?=
 =?utf-8?B?bmZ1enYzYUZqZTJ1bFVJYjA2MGFySmN3dktFUFoxU0FPa2wvMWZEWXVyb3lV?=
 =?utf-8?B?YWNUdFJXWktKM2JSWXFtdWJoaDRLM25Ka2tzUkcrMEhZdHZyOGk2bGNWVzJL?=
 =?utf-8?B?UTFKaFV3NVBWVVlZM2VrQWFhVEZMcTVTMGRFMGMvRHpuWllIcUJWQy9pRnB3?=
 =?utf-8?B?Um45TWdVeE1XUVFtSlhoYmxBNmdNdWk1STVXUXZROG5ucEVDSlR0ZUVuSXd2?=
 =?utf-8?B?dWtOTzlQV2VVQXhUWDkrMmdOMkN1SlgzMXJRMnBicUZGc3JKcC9JTFNOczcr?=
 =?utf-8?B?c1ZYWUpPY01oR21qZUxwVnFjbjJKWHdSTktlZXZjd0YzY1hSTHZHVnM1Znhi?=
 =?utf-8?B?RkFlUlQzYzBYL2VrQldmNXNSMWc4YWhLZHZZVUVWYjd0SGRhR1R6Q2xmZVdU?=
 =?utf-8?B?dUVqMTVGVTBmSEQ0YkFMWmVPQ0NjckREcWdWVDBGMWthakU5MmZ0ZWR1WmpZ?=
 =?utf-8?B?SkVYVzZ1UUJsdkNMelNGTUEvQTFRam9pN0FXanZqRkV2K3RTcnhIRnNGOGFQ?=
 =?utf-8?B?ZHFhN0hQWXhVQUdpRUpuMTgzSGhWeVRJSGNkZ21pYVNmbFdzMFVIdzB3N0VZ?=
 =?utf-8?B?NHpaUXd0c3BRb20vQnhyYWZsVDQ0NHk5dWtjUXhFdDVLSytPem9mT0JyUlBT?=
 =?utf-8?B?S3ArZEx4a0txQXZEWVBrTmF2RFJDU0VTa3ZlRVFYUFQ1NVpkb2lndUoxVlBr?=
 =?utf-8?B?TkdXMUZ2bDhFZEhqb01HTHVmTXg3amRHN2YzL0FsZlBETnpSM0cwRStSNzNj?=
 =?utf-8?B?Y2YzcnJwRUNMN3Bqamw1YWJwVHZaYUFuTXdERTF1RXYzbkNFVVc2NFJsNnUz?=
 =?utf-8?B?MTJrekNTL21nclY0cEcvdHExV01HeStXV2txdU9IS2VJZmk0M3lNQkVlbU9z?=
 =?utf-8?B?THl4TmhieXZDN0hlNW80VlhhR1BWcGdGbzFYQTVWbUVNTWpwZm0vQ2JIWlZB?=
 =?utf-8?B?KzNqNjRoS3BadFEyRnZFbVl5VHBXbkJYSFFTVXFOdElCL1JOWmNOd29TY1ZR?=
 =?utf-8?B?R3g3QnB4M3lWdVRGaFBqZlR6U3NCOHRGNWVnQlI0U2JhL0tiQ3AwcDlGVjUy?=
 =?utf-8?B?LzFNVHR4MTVwUTI1WDdxQjFqYjZ1MUpzOFRBRjNNVWFuL2FWRGRzVkErM0dD?=
 =?utf-8?B?QlFad2J1aDNMRHErbGxwZ3l1Qk1zMEsyL0o2Wk9IVTB5TEZHc1g4MXB5azBw?=
 =?utf-8?B?RnRnQVhCT3lJeUZRaVVPQmtEMlIxU2QvZU9RMXFiVTVCOWFxOUh6ZW1XWkxT?=
 =?utf-8?B?MkNydjlTM0ROcFU2UHB5M2t5RkRxT0oxRHhBVm1MM21WK3FVT0VVTGlMT1Bj?=
 =?utf-8?B?YzR1ZUIyZzVybjRhRzAxZGVDMk9heEZHR21kUG5nWEJhVWN2VTZZS1hSSWcx?=
 =?utf-8?B?aHBNeTQzd2NpcWRFR0RNOEp6Qnp4VkJjVHl5UE53bnpXN3MyWUVFMVNrZG0x?=
 =?utf-8?B?QW1paGR5cUxVU3RIMXAzRm0zaVJTdVNqQnd0WS9JQmZEZ3dOSUtBUzZNdmVK?=
 =?utf-8?B?cU1kSGV3dDFxWWV0ZmwrSnAyQkVTQmx6R01PV09QVWRHcDZSZEF2dTlCYyts?=
 =?utf-8?B?dS9SS042YVQrRXpIVWFZdmQ2RWxxYncwaUsvV2JMdVVlZis4TklqcjFVeU83?=
 =?utf-8?B?aER5RVl1ODNDUzdoWnI5TnJMd0FYQ0ZMazZvN1VSTzVGR3E1QUxvUzNzTFBW?=
 =?utf-8?B?K1VvS0M2OFRHWVZURERQQ0M2cmZUSWgyakl6eTZ0NGVjWFgxSmF6VDVlWEF6?=
 =?utf-8?B?NkhxVlhiZjhOR01WMjlXQWpmUjlqY0VPZEhGVkd0bGV4RXJXZUNuVTZWL21x?=
 =?utf-8?B?eGhkU01Dc3ZLWU9tT1ZVUGxKcTV5YmNUdUdLSGtuT1FBdGlFci9sNCtFTzZ1?=
 =?utf-8?B?SWdOUnBKS00rK2M3Q0ZMcDV3cG1tb21DUTVxSWNkUnQwSGZSdnNTZWpGSVFR?=
 =?utf-8?B?SWQ5dlhhcnNrU1NjeUkrY1Y3NjNHWHJERGw4V21nSlFpcDl0L0pSbDlvYXZh?=
 =?utf-8?B?anhBZzNDUmFlWHNoTXFPcVgrVjg3ZURjWEU5NDhDOWJ6K1pMS0VWRjdXZCs2?=
 =?utf-8?B?Mk4wY0dOS0tieEk2cjYvMGFMdk45ZFBzb3hWQkJrdnJLY0tpYU5vWld4VE0v?=
 =?utf-8?B?cG9ueXRLSDFHV0s0K1RrQ00vQnFrUEExa3VoOFVhUmE0RGNYcm44YjhlN0tk?=
 =?utf-8?B?bjRHMExyVm5uOHgrUUpFVXRlRU50TXJXMGI1N3AxNzl5OE1yTWxWWmJucW5Q?=
 =?utf-8?B?ZDltWnJYdjdubmJHSVpkMVFWZXlQTk14RHBDblNiLzZHUWg2TXQzdmh1NXNW?=
 =?utf-8?Q?ftf6uKfvD/9tGPpFlMj7xIAS3Vsydq7pNV64Yk/q1Dk5Z?=
X-MS-Exchange-AntiSpam-MessageData-1: dte9lbl+KqqYhQ==
X-Exchange-RoutingPolicyChecked: oVwmAKypPhq8dxglQWzMgCczvUaI2SxnZX67Kd85hBQLH5YjkoxD1e7gYpnzmuH5EPV98I14wDbtaW/LBuQfr0cOFPKxURpaV7ME6vSNOF8lkRF8rZYh1pnl6FuvNSMUeGZQ2AiLPjQuRxv7wxL4vJS5+gucgeBJwPscV1YuvyWanrfWFzlHyYeLSYSoERCAtmlYY5+Ro+k3DgWcsHYp0ASscp/+ID8utkZ37Gg/AUAS6sDF1UgcqSH+V9wCrdQlH1VaMtxo+0g5jXfSM9nlDEDWR/6MFxr2Xl6WDof6qeyr8RpL+6G60eM6YaoHIyevPAtT3KVWqWI2MqXYC4NVdA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd300ec8-44b5-411d-daf8-08debfdab5d9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 12:38:40.9477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cn516dKqrYhsYW34MRj7Mpw8Gw9rsape2WzmMUpkzDLFDLcZD8t7lz13eGWGbQeGnmiN3tPUO4GUVE4blouevvlD/Dlneez4pe1uEI/G8NFd7NfCKKuP2S8WlXN63VXb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5166
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7277C61F622
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 01-06-2026 11:20, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, May 27, 2026 12:48 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH v4 13/13] drm/i915/display: Add DC3CO count and residency
>> in dmc debugfs
>>
>> Expose DC3CO count and residency for xe3lp platforms via debugfs.
>>
>> Changes in v4:
>> - Keep dc5_reg register initialization to avoid any
>>    invalid access (sashiko)
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dmc.c      | 9 ++++++++-
>>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
>>   2 files changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index a133785c815b..5ffe2b1c3c51 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -1650,7 +1650,14 @@ static int intel_dmc_debugfs_status_show(struct
>> seq_file *m, void *unused)
>>   		   DMC_VERSION_MINOR(dmc->version));
>>
>>   	if (DISPLAY_VER(display) >= 12) {
>> -		if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
>> +		if (DISPLAY_VER(display) >= 35) {
>> +			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
>> +			seq_printf(m, "DC3CO count: %d\n",
>> +				   intel_de_read(display,
>> XE3P_DMC_DC3CO_COUNT));
>> +
>> +			seq_printf(m, "DC3CO residency: %d\n",
>> +				   intel_de_read(display,
>> DC_STATE_DC3CO_RESIDENCY));
>> +		} else if (display->platform.dgfx || DISPLAY_VER(display) >=
>> 14) {
>>   			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
>>   		} else {
>>   			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>> index 38e342b45af0..1998549b6318 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>> @@ -531,6 +531,8 @@ enum pipedmc_event_id {
>>   #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>>   #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>>
>> +#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05C)
> Lower and upper-case mixing.

Will change it to lower case in the next version.

> Regards,
> Animesh
>
>> +
>>   #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
>>   #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
>>   #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
>> --
>> 2.43.0
