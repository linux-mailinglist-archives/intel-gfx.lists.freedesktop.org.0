Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A0A90862D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 10:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CB710E067;
	Fri, 14 Jun 2024 08:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hKAK3XkR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE2410E067;
 Fri, 14 Jun 2024 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718353436; x=1749889436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UkFV5UtmkZsfU5VsuSujCJbXYMg73XaCY2WUQyjcNQA=;
 b=hKAK3XkRcEzBh2f/d3xGNMJD2iwVoasgfUdARLijufMJC22YeuFGavSh
 cM1JGRmbb6CF3U+agcm0EdkMQSUhFrRvNbBiKQJ3r9ICVamv4WbEMHhSW
 asz3p+7MoM5uRKcurpoJkWNuRLkhZPjmAITncCkZat3fi5vCh4nZUmnw3
 LSJwOOZgsmJoWZF39q49dAelLVlQWTiYfIzFG/M/TBh622GY4QWWUXcEb
 yJ/MMQHUvAMd6zTgkDPIZFpVBUCyYrWrEUG1CRconQsLcvwooLL6BH0gI
 seRTkpvChJmp7XQV1j9303ojqgnRGA95S+4t0UVIenKUASN+tPBjcE1uS Q==;
X-CSE-ConnectionGUID: gCZJIJWgQXWU3u2QdGylRA==
X-CSE-MsgGUID: 5KsiPURfSWuoQcNeoX3qcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15363417"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15363417"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 01:23:55 -0700
X-CSE-ConnectionGUID: o1xPl8jJT8+AZqr5lZqkMQ==
X-CSE-MsgGUID: FNA5tbbAQKyy4+/WXjPZxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40533278"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 01:23:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 01:23:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 01:23:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 01:23:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 01:23:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLtaofiTdill1cNyPAFthFwlgR3uqueI7swNbwmTgbs7kMy6R3w6WWute1H5gx4DcfSKJxqDG3qVGodfLS4JUHPE/PR0hgwpcI+2GsXfh08eVzzv+dWiS6pkzorl1AbdFV9t3CDA/b7Cz2ssIky5SCG4W2ikm/ZAB2ygDOMfnsS2+i/5IHEWZzlrSC/+fgUBFpwTD39869Qa5IoD0SxplfmPih+99U91s2q5KcDy2VMJ4uM1IsjyA+fU8DbNVqlHguIOmrfqJwqlyul3pqA/+IpyLxvKMr/ewB2iPc5BJgYRQqcgl/Lyv1Lx+Wat2dKvuIo/8yvACdYzM1MzP7BcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UkFV5UtmkZsfU5VsuSujCJbXYMg73XaCY2WUQyjcNQA=;
 b=XGlle3IQO1aRjVNbyTD7XkTj/vESr2bhvKRBpcI9FT8Df2VV6lzlqAH+RYaq5eSNpp719ra+xQNxkJxgsYZ8jfUmp/2OoIj/HKdJEvnRafcmE3tph+/GPch4FT5ZteUPBnOkrsE+CfYAC5I/FIpdOsg1zEkPesrSXp1buAsCvA7t+8fSjBhwBwwdEc+6apBi42Ah0Hotjds0mAEz+6U3nzj3Pzs1b8+wZdlq1ExceTtsT8OeymsHgMybWetVKfzZn3VIhCvJV5isKmsLhCUZMb5AE8ODQs6Z0bvuL9vQ4RFSY2Edzyb96uc9hQ3dBTmw84TL+6BFmzcOiJQnEO8HGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 IA1PR11MB7855.namprd11.prod.outlook.com (2603:10b6:208:3f8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 08:23:51 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%5]) with mapi id 15.20.7633.037; Fri, 14 Jun 2024
 08:23:51 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Topic: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Index: AQHakmNtF4hY9wAAnES82rR40sfF0LHHL02AgAAUSYA=
Date: Fri, 14 Jun 2024 08:23:51 +0000
Message-ID: <ac0608c9ca5ed21a4f4f119f747f61f9130ad1ac.camel@intel.com>
References: <20240419140925.157924-1-vinod.govindapillai@intel.com>
 <7a429d9a5f26c4a0f9b2bf1208ae1a4829d9e4c5.camel@intel.com>
In-Reply-To: <7a429d9a5f26c4a0f9b2bf1208ae1a4829d9e4c5.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|IA1PR11MB7855:EE_
x-ms-office365-filtering-correlation-id: 407d45fe-9929-4e98-7ca1-08dc8c4b526f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|366011|376009|1800799019|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?dlZCVU1aOFlCS1pKV0JqMm0vQW5PZ3ZnTldDdG1ja2ducFhVdGlBSGxQbEoy?=
 =?utf-8?B?SGJJOXRDUnpkUEpiT3VVOENpR1ErdzlqaExJOGR5YS9ZYjVXN1hya0kwNlFJ?=
 =?utf-8?B?Z1gvTlNnZDUzU3NCZG5lanVWQUlydnR0QXE1aytLKzMvaUJxR0FES3dlWE4x?=
 =?utf-8?B?R2xPcE5nTlJyaXRDaGxFeFJ0ZUhySGdhVkdFL1RYczFibm9veTNTa2djZFVD?=
 =?utf-8?B?Njh5TXZEMHI5TStsM0hKSmZvMmNVRkRPMm1kbVNNZHhNNkcvVmY0VW5nanR1?=
 =?utf-8?B?TVBsVks2UTNpNFJmLzQ0TXk5UXE4TFdISGswUURmR0kwRy9NRVd2S1JIZUNh?=
 =?utf-8?B?SkJ2dnlmZWtNRWtmdDIrTmpBay9KUUNzUW9rakRtdFRJME9nMk9VZWRRUkRm?=
 =?utf-8?B?a3JUVEh0MTR2UG05eTJTajdDOW1WejJTVlFscjc3My80MDVwN2FVKzZtZFpD?=
 =?utf-8?B?UWp6UmRCYjFHMzBncDdjZ2dGL1RybjJvMnVSSnhSdTRQd3JQTDRwdENuUER4?=
 =?utf-8?B?UEJGd05uM0RyWG9WeTZLUXFXOUgxazVnU3JIb0JGU2lRbk9SbkFuTTZQcTRS?=
 =?utf-8?B?Yk81NDhCcXkxUW5uUGdJczk0N2JPYUJVL3dLWG1kbDZaUGpGajhqK2llVTNL?=
 =?utf-8?B?dElhUE5SNzI3N0NOY3MzRzJBOHhRajFQZENxV0RTK2FvUWJDKzNWUUtqek5L?=
 =?utf-8?B?VzhuTkIzSUdqWURCVnZXZno2cUw5Ukkzcm5zMkV4cE1HS3dxOStqWGtsRmZx?=
 =?utf-8?B?NEYxTWtDN0RyUzZDWncrUWF6RUZtVUR2SWRPZUVHcXBKRmk5TDc4T1owR1lY?=
 =?utf-8?B?UXJqaDlSQlZoaXU5L045M3U1b3dhcDEzMzhyOTRhRit4aS9aQlhuLzB2SDFO?=
 =?utf-8?B?aTBsNUZ3ZHhFK05qMzJ0R2s0ekpPd0VGcTRDakRjMU1iNmFQWDM1Zk1qbE55?=
 =?utf-8?B?QlJMUkFrUjYxTVl1ZmxMUUNJVDBBQ1gxMFlXSUJPeEJBaDdQYktUVFNXcE5G?=
 =?utf-8?B?QUdPZnRJdENqcW1mS2VKSkpVMmRxWkhIRkt3RkFOd0VBbmNnQWVncmJlTi9F?=
 =?utf-8?B?RjAybDZCcDNmUHVJSVZqRHh2T1g5ZFJvVU1ScXV5UXdVNUZWU1B6NnNKeEJq?=
 =?utf-8?B?VEswc1ZFVGlDOTdvUXdwL05PNW5yNUtUTGY1OEtxN0xvaEJOTC9UcTVkKzJ6?=
 =?utf-8?B?dmllek9hWTJ2cDRYcndHTVRGN0pDT3NWcEVlaWdmZ2d3YmVQMDhQV0xOVjJ1?=
 =?utf-8?B?NnZIS3VNNkhpb3F3OUNVNWd5S2pacjlGcFBsRTlqcW9jSk1TUkNNTWhsNms2?=
 =?utf-8?B?N3RpMy9naklYc3FNUTlLdEk0U2Z5anZBOWFqc2V6eFArb3dZdjNZa2c1ZDlZ?=
 =?utf-8?B?T1ZmTHNhN09OWUM1ZHYxUlpLODFuNUZYdmh0MGtCZHh5OWZtNUpSeW9TbWN1?=
 =?utf-8?B?c05oK2tlUnpYOEM3NFZ3YURqdW5KN3BrTGpwRzUvY3p6UVpHT09pb0gzMW9y?=
 =?utf-8?B?akV0R1pmSDl2K2Jzd25aYitFTjMvTlJuU2FTbCt2ZUxjaDFWVXpJN2NuNUEy?=
 =?utf-8?B?TkdLdmNGR29QN29haDZuNDhoMWliSHh0T1dYbXRoeWI0eHIyeEFNUXo5S2E0?=
 =?utf-8?B?WFVBdGpzbUszYTBLd3NoMHJWSTVrbzd2WkZETFN1RmdDVjBuQkc3S0x5cVRN?=
 =?utf-8?B?TnpCd2tJSjc5MjhCNkJMVms3Wkk2Nk5mTDY3c0xac2RjbHUyWTJ6d3p1NThB?=
 =?utf-8?B?TnVxWXNuYWxDVFhuMXFkUVFwRmtvNDBsZGZHV3lXWk9rLzViVGxDdGlQaVJa?=
 =?utf-8?Q?kgTY2dGKH6ZUN+U5WPj/RevI5Rjgkv3u5AG5w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(366011)(376009)(1800799019)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkthdHcvQThVZ1lqbVN3RW9ldkFCWkVwM0J1SzJKQ0NmR0Urd2tnYVlmS2sy?=
 =?utf-8?B?ZUp0ZWRtMWNienlJK2o4MjYzb0doeDVLUWswUmtsWnFrN3p6aWw3NEJvTlh4?=
 =?utf-8?B?UWl0a1o4N1RnZm51U2I3T2RSeWRwQXZla01tMDlNa2dhajFETXMvVnQ5YmNE?=
 =?utf-8?B?QzEwdVAwbUV2amVHZ1RKWEtwbUNhSW5TcFdLQnVJcjZDcXZoS1pGU3Y2WjRq?=
 =?utf-8?B?OWFKdFpac01hOXl4R2pZVnBBODRHNmhJVW9NQ0Q4Y0tyQTNvZ01GblZhSHRs?=
 =?utf-8?B?cndtVzQvcEpacVRQaU8zbW0zQk0rYytYNkY1SzNVcnhOTXZUMTRGYy9MVldR?=
 =?utf-8?B?YTdDeGtKREpDc2RhRjdBeXZnZ2hjNkZuaGZoK1FYTmdUdE9YYXBCRGdmS1FB?=
 =?utf-8?B?eVducGhnbytKQk5EVlJ6RG9ldDUvR0N0SnJXKzV6YXE4SUVXR3B3d2JxZGFn?=
 =?utf-8?B?dXpsdUhYV1RiblNmNXJBV0IwcVJaODAzSFRYRUxzSWZCR0ZzM1ZQM2hkS1cw?=
 =?utf-8?B?Q2pnaHEvMWpEak1TbVh3TWVrTnEvQ3V4UzNLYnh2SUpodmlIbnZQOW9VYTZs?=
 =?utf-8?B?SXFKV1BaSDkzQUdvdlBYRWJsVkZnd0hpV2RCeWJVdlA4RnJXRTJJNzllNkN6?=
 =?utf-8?B?NGNxcVFBNC84cFM2RDNEV1ZZTWF0UGJrZWZrREV2MmRtR2ZYeVNDeHgxYVlV?=
 =?utf-8?B?c2NiSlpFdWszczhMTkQ2Y1M0MUgxN2h5dmFTYjJkSzNhTTJ5bFFtUUhiZXBh?=
 =?utf-8?B?eHJzRkJQSGlTTUxURjZZU3N4eWVDWlZnelA4ZlJrWW9qY2dyb0pKb1dOdmNE?=
 =?utf-8?B?Q2FpN2x1QUhzeThobXVLSWRaN1lhci9Ub05JQjNYQmlVUHVSVTRwL0w4dXdG?=
 =?utf-8?B?VWVYeDZqYmxnN1dzc0daaHJUNFFHbmxUZ0FJT3NRRUtnMk5lSW1yUzgvYkNk?=
 =?utf-8?B?RzlrekM1dyt3VlgxTUhkekFRWEE4WlVlais5Vnc4UXpwczl4WUtxZ0FTTW54?=
 =?utf-8?B?NzNCV2ZBS1c1M2xOOVdyeDcvL1dJM3BPS2xZSDdDTXhmM09DMm1wVWtmdTAr?=
 =?utf-8?B?cmZpSEU3aGhXcXh3K3NKWmRkclRLSFBpYi9BOHEvVFdZTk1EVU41UEVRL1VH?=
 =?utf-8?B?NStQdXBMbHd1T2dpMnlLb0FtK3hJTVJLNEdsUFh0VVJsUXVFYnoxazJ2dEtB?=
 =?utf-8?B?ejFVSkFCQVF0d0pESEVGOGsrOHE1b3l6cVBVSlEwdkhTbm5TbytwNVhFZUFH?=
 =?utf-8?B?MXg2TEFrVWgxVDEzTEZwMTFhdEFacUZUdU8wTHdkT0RSWlFrNkdHeTQ4YXZq?=
 =?utf-8?B?SE5hbDhEZ3paRUcvWEpCdU43bVlrQ3NDL2ZuSkZwOUkrM0dla1NOdWRaR0FD?=
 =?utf-8?B?MDVNSDRwZmpQVFFKcHVlVmphenFzRzc5dGpRYkszTVFubG1QQ3NSdkRXaHJW?=
 =?utf-8?B?VHFEakQwaFJXSUo3SHVkM2ZCZkl4OFRmV1lyamlNMVFaRjhBRyszUWE4aGtP?=
 =?utf-8?B?UkRwV2VNZzlSTlQ1V1RHeGdsZ0I0RG9jeVlUSmVKRkhrL0lkK1FQL3JMWlYr?=
 =?utf-8?B?VXBMZ0g5Si85d1hxakFsNWIvRFJ5M29kTDM4MzBLLzZKanNrTWhmdXZONmlz?=
 =?utf-8?B?bnNDRTlhdmx6U1duVzRSZmo0K1JFbmloUEhqZjdKUTk5aVc0RlBJWFBka05X?=
 =?utf-8?B?aEdKTjVpWU11ZCtIT0RjblFpNFpqVkw5TjNPUFR5cGZaejhBMkZESG1UMjNM?=
 =?utf-8?B?c2NlMkphUEZnN2ZqVUdQZVNXZEF3VWNZRi9nd2ZWUklTajBrQzZ0THlPVXFC?=
 =?utf-8?B?OU5sdytPYTB0cm9sYk4xRGNWaHVUV2xEbm1uZVlXRUlRSHdNUnlUdUtjOGZQ?=
 =?utf-8?B?aTA1VVpERGtDcnZYTDllZ04zalVTRVM4azBnRWpjYXRWeklpc2x4N0lCNWkw?=
 =?utf-8?B?eU5xWGFmaVJkcGNFbktFaW1yck11V0MwR2svV1VtZmFsMHVKRWVremtKMzVV?=
 =?utf-8?B?V1R4OHA5Ti8xalRkd1FJMk82Rjd4TVlhQVRWL1pTNlRJTSsxSWRIZkRmMEYz?=
 =?utf-8?B?VkN6eEthSERaUTNMNHNIUEZpVDZZRVlyV3pLYy9PcTJQR3IyK2hqS3NQOW9k?=
 =?utf-8?B?K1VNWEw0RnJ3N2x6OVZsb05CdFJNZkFCRjRhd2dJNzhQVHl3UmtBTldvZkxV?=
 =?utf-8?Q?zhmOq/fYvzvOuXiPBHoHfMg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7347F2FD8C8EF458222DA1140D21CDD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 407d45fe-9929-4e98-7ca1-08dc8c4b526f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 08:23:51.2923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w4N3Owk7OVl1SdPtUdvvvo+O/ZzKxMak5Qn4K03HyfUmlBzTo5XuVEUHzE4AsVY9WPoua0Pw5f7dtU/IhAEqgNLkESrs/N5B/iyaJ2KI/TE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7855
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

T24gRnJpLCAyMDI0LTA2LTE0IGF0IDA3OjExICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNC0wNC0xOSBhdCAxNzowOSArMDMwMCwgVmlub2QgR292aW5kYXBpbGxh
aSB3cm90ZToNCj4gPiBBc3luYyBmbGlwIGNhbGwgaXMgbm90IG5lZWRlZC4gVGhlIHVwZGF0ZWQg
ZmIgbWFwcGluZyBpcyB1cGRhdGVkDQo+ID4gYXMgcGFydCBvZiB0aGUgZml4dXBfaW5pdGlhbF9w
bGFuZV9jb25maWcoKSBjYWxsLiBPdGhlcndpc2Ugd2UNCj4gPiBlbmQgdXAgdXBkYXRpbmcgdGhl
IFBMQU5fU1VSRiByZWdpc3RlciB0d2ljZSB3aXRoIHRoZSBzYW1lIGluZm8uDQo+IA0KPiBhc3lu
Y19mbGlwIGlzIHdyaXRpbmcgUExBTkVfQ1RMIGFzIHdlbGwuIElzIGl0IG9rIHRvIGxlYXZlIHRo
YXQgb3V0Pw0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXcgSm91bmkhDQoNClllcy4uIHRoYXQgaXMg
bm90IG5lZWRlZCBmb3IgdGhlIGluaXRpYWwgcGxhbmUgY29uZmlnLiBUaGUgaTkxNSBjb3VudGVy
cGFydCBkb24ndCBoYXZlIHRoaXMgZWl0aGVyIQ0KSSBoYWQgY29uZmlybWVkIHRoaXMgd2l0aCBN
YWFydGVuIGFuZCBWaWxsZS4gQWNjb3JkaW5nIHRvIE1hYXJ0ZW4sIG1vc3QgbGlrZWx5IHRoaXMg
cGFydCB3YXMgY29waWVkDQpmcm9tIGk5MTUgd2hpY2ggZ290IGRyb3BwZWQgd2hlbiByZWZhY3Rv
cmluZy4NCg0KQlINClZpbm9kDQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+
IA0KPiA+IA0KPiA+IHYyOiBhdm9pZCBhc3luY19mbGlwIGluc3RlYWQgb2YgcmVtb3ZpbmcgZml4
dXAgY2FsbCAoVmlsbGUpDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBp
bGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMgfCAxMCAtLS0tLS0tLS0t
DQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3BsYW5lX2luaXRpYWwuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+ID4gaW5k
ZXggOTY5M2M1NmQzODZiLi5iNWY4MzgxYjU5M2QgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+ID4gQEAgLTE4OSw4ICsxODks
NiBAQCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4g
KmNydGMsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b19pbnRlbF9wbGFu
ZShjcnRjLT5iYXNlLnByaW1hcnkpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHRvX2ludGVsX3BsYW5lX3N0YXRlKHBsYW5lLT5iYXNlLnN0YXRlKTsNCj4gPiAtwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFz
ZS5zdGF0ZSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZi
Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4gPiDCoA0KPiA+
IEBAIC0yMzYsMTQgKzIzNCw2IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0
IGludGVsX2NydGMNCj4gPiAqY3J0YywNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYXRvbWljX29yKHBs
YW5lLT5mcm9udGJ1ZmZlcl9iaXQsICZ0b19pbnRlbF9mcm9udGJ1ZmZlcihmYiktDQo+ID4gPiBi
aXRzKTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBwbGFuZV9jb25maWctPnZtYSA9IHZt
YTsNCj4gPiAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgLyoNCj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBG
bGlwIHRvIHRoZSBuZXdseSBjcmVhdGVkIG1hcHBpbmcgQVNBUCwgc28gd2UgY2FuIHJlLXVzZQ0K
PiA+IHRoZQ0KPiA+IC3CoMKgwqDCoMKgwqDCoCAqIGZpcnN0IHBhcnQgb2YgR0dUVCBmb3IgV09Q
Q00sIHByZXZlbnQgZmxpY2tlcmluZywgYW5kDQo+ID4gcHJldmVudA0KPiA+IC3CoMKgwqDCoMKg
wqDCoCAqIHRoZSBsb29rdXAgb2Ygc3lzbWVtIHNjcmF0Y2ggcGFnZXMuDQo+ID4gLcKgwqDCoMKg
wqDCoMKgICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgcGxhbmUtPmNoZWNrX3BsYW5lKGNydGNfc3Rh
dGUsIHBsYW5lX3N0YXRlKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBwbGFuZS0+YXN5bmNfZmxpcChw
bGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIHRydWUpOw0KPiA+IMKgwqDCoMKgwqDCoMKg
wqByZXR1cm47DQo+ID4gwqANCj4gPiDCoG5vZmI6DQo+IA0KDQo=
