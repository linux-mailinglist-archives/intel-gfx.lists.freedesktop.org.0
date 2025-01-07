Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA08BA04054
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 14:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68CB10E484;
	Tue,  7 Jan 2025 13:05:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="icKj7eA4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D1010E260;
 Tue,  7 Jan 2025 13:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736255111; x=1767791111;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dOUZqMMLqjt6jjIkcZtZAZAMxod5zD45B7/aKbxSlec=;
 b=icKj7eA4ADqgIwEBXBd4yKtn5Z/uNdXc5aoo4Vb4eDT4vKF8981tqpIL
 TePuoPVhXtnhe5G3Lwbagjr7T6Qk2xXMLk6Zw3i4Q5siJLByhaUK5egYP
 6uqSeAUTW1QluiZrK6RCT7lsLBlJf4Iwx8poSWAm+o4tp8qq6TPi8LDbY
 fHXZVq3AJU80xF4m8Pz0r6Vs/rw/u5AShSf5eqvMDm3DajmIi4BqkJaFQ
 G5wAL6jLCO0fDljLwpeFu64IGXHrtIMCzxAkouiF1qlJg7F7821nl3Rns
 01POsjiTZ3MsvWyuyshLMjm9iqLyCIJ4p8U1RTrrBax60AI3r88uhmr+T A==;
X-CSE-ConnectionGUID: m43xDELjSMOU9XvseiIvFA==
X-CSE-MsgGUID: ZITK8KFnSiaVjm4fpYXgUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36656853"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36656853"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 05:05:10 -0800
X-CSE-ConnectionGUID: 0QH5qmPnQCW/KzfbOTKj/g==
X-CSE-MsgGUID: e/wAmxsGQIa7N8iQgzIDcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102585819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 05:05:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 05:05:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 05:05:09 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 05:05:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qkdlUh4eHbRiJiXNufvIcxNIMtgUpxhnbjY4Y5ceY+NCPDop4dUp7BH7wXbchU9keypq76n+vZYNZr2T1F9I5Wj1va6/0Ld+hUMPj5It+NZcUMIIWsgPrvlBXPf1r01FVe77SuBkXNDDuqDql2FD/RdWDIUknDkqzJMJXQKnog51XZvC57u8MHF6URy9ns7gocN8kwRcMjZLMioiaRPXrGTj9bMRO1U5RHBmY6zPqW/A7TNlrtS/4esmecwjcPf6Io9/TMhRGP+SfqwJYTXgcXCgADFjSZ7aO6JCaqPQAM5WN+SF46WA4jkewxV23cHNS6t7I4cSEkQfo/MoGdNB/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnuagOGOEUkEA/rqq2TTlY+NXowNP5KzeSSmJvXYHPE=;
 b=TUrfWYkTqR8V0IwqP0gtt6Bit7kx27TUZ+p3kpzlU0S54azH4NxyRTO9fmwDKlwVh4TrM1YoUHeZ9x/bCcVyMNhP8O4x6xQMmjsC9m56fn2JYxUByxuptsKQWlwYgxMQ54uSa+FhU1sEdwiKvcIrRr9sSrRsqOLMKMH3CEZtFYfxOmkEGt4NO2Y9zdXgo60JpvK89VHLikRko9Fe3UCVNjIE9QxsdpxUPZW16QTe48V46aUzRuSPoZ7yIfU9s83Yr3jxR1qHbDN97DnUQcw96g5eOCr9UAWLj0Zp+8uo8jFAAGog1NnHxLBter3JG8WCzCcrGuYXZlnZjgO82JkuaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 13:05:03 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 13:05:03 +0000
Message-ID: <903e3b55-9d61-48b6-b4dd-755024b44cb8@intel.com>
Date: Tue, 7 Jan 2025 18:34:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] drm/i915/scaler: Use crtc_state to setup plane or
 pipe scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250106165111.1672722-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250106165111.1672722-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::22) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH0PR11MB5111:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bd73488-1873-4d03-c5d0-08dd2f1be60a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RUFneEFFUHhZN0o2aFhrU1lQV3JLMzRiRFBueFJwbS9PWU1pOXBmTklTRERQ?=
 =?utf-8?B?RTBHZVRHUXFudTEwVHlnc0ZWQ1pWa1BFMnc1aXVOQ3NWVGRzN0hKNnFpai8x?=
 =?utf-8?B?Wi92L1I1dVIzZFdyVUFvTG5ValR3SW11eVRlVW9vQzlrbm4vWGluQ1hwMnFK?=
 =?utf-8?B?aENRMm8ybWdXbUd0QUJBaVh3cUpoMjR3bVNTVy9DUkJNVjNDdlRyYm9KSUlN?=
 =?utf-8?B?SjhHb2R1L2JncFRKeFBLd2IrTHBqNUExaVV3MlZ5bExZQjNKSHlUMCt0bE9n?=
 =?utf-8?B?U0RTU3F1dTM3bUlSKytFUHF2Q290N0p1YlYzVWdac2djOHc1VWlkMEtBSjZs?=
 =?utf-8?B?bDBzMmZtckJTeXMyWFc4bXNFUzV0TU02bnZCY3B5UXhIQlV6RVdSSUdCWE1B?=
 =?utf-8?B?OE4zTWp3ZlhnZ3l1VTdXeUtFZlpZNVFMVWtpMmdmZktIT2VNTXE3MG9nNHRt?=
 =?utf-8?B?Q1B3NHVQeTUwblduYVhzTG1Nd3JSK2JmN2tucWUzamFzR0lQUlJMVWo0N1hz?=
 =?utf-8?B?VEpNc3JncFJmNERWZ3gyaDNGcUs2b2tQTkFFWU8xZnJIZUhFMlJQdTBIdXJW?=
 =?utf-8?B?d1JpdXpnSWo0YUFScW83VDMvdjBIWm1mRUlqYWl0WWdnZk9XVWRWYjdDWXFP?=
 =?utf-8?B?TjlmaHYvVXpSRHpOM21lNkcwRFVxb3JqSnUya0NuaHpIT0Y0LzJiczk2UGxq?=
 =?utf-8?B?cnZweGRRUGZlbGxWS2RiVkJVTDJKY0JtN2kzZWo3UzNXbTI3UXlrbHBGZUcz?=
 =?utf-8?B?bDdHYmdlVHpranRsUUgyTW5zU0JtdHVod0Y3SkJjdXZoaFdQMHhJcHZickdj?=
 =?utf-8?B?R2JnaXE5QzVhVkJNWkMzMllPRFd1bWx3VitPTnhUY0VPTFlaRnFXQmEzOWZJ?=
 =?utf-8?B?anNaN1JSaE1sWlJVZWE5eWN4Y3Y2RGl3UDREZmc4N05ad2IwRnBFTUprd1Vm?=
 =?utf-8?B?N0R6UXpWZ1NJSDJ6TVMwcjZYWWxHZGh6andodXRjZnEzSjVoRXJzRXFPcnNB?=
 =?utf-8?B?bmwyU3FkcGdTbmZKSGNEMTJuZnhhUkFjNU9UTm5GdGpXVGdBUFBDeWp5alIy?=
 =?utf-8?B?YUtoQzY4WXRma2w2bi9NZU5McFVvdm1ieW5ld0F5cFVqSHVyamRGOVBEbEZQ?=
 =?utf-8?B?ZnFKVndpMGVudEVaT2EvMnJnVS93N0QwNnVkbCt4dXo1V3hDa093REN2SExN?=
 =?utf-8?B?dmRBUDRhZTFDSTdnejY0d0E0eFJ6aGVpL21CY2VGenhpbC96YUxVdnBKbE4w?=
 =?utf-8?B?a1Z0T0lCRTM2aVFLNkJVcVR6T3p2K0szNVRwcFBiZ2xINzZseXZsRWdMZk80?=
 =?utf-8?B?Ni9BVFNMOGVyRkFzclBVNTdCekEwQ0V3QXhLUXo5UXNiUHJmR2YyenVxb0x5?=
 =?utf-8?B?NzBGOHRJV3lRc1ZvOXFYU0U1YlhLM3NjSXJBMHc0TDZaYXc4UER2dC93ekNx?=
 =?utf-8?B?ZkpUU0ZyUEdBaXlPMGVJdVZaSmhDY2xiUFBxanA0L2xtbGNXNzVDTDg5dFJK?=
 =?utf-8?B?OTIvVlY2VmlUaWRJczdtY3pTOWtCTU5iU2JOL2NlcHRYSEo1TXhWZ1Z3YmVD?=
 =?utf-8?B?RUZNUnhVd21hZkMzOHRIMjdYNzFRYVNUMnRkMTJPaVdHZWljVDdUb2kxV0xO?=
 =?utf-8?B?WGlsM1N4TWppTldSaCt3SmRrR0VOSzU4RDd4M1M0aTVYNEhvZnd2U1FKMVpG?=
 =?utf-8?B?dy9SZktHZktBeFJHdEJhakFKYmdnQnMvbDc3WEl4VWNFM3hURWRyRGRwcWcv?=
 =?utf-8?B?TlFGMWRGQmhFbGYwZGtUOVYxMWRNUmJYcFhZaXNmQ0dYTW14aGJ4RzNzR3V1?=
 =?utf-8?B?VHQzVEptUHVONWNDZ3FGdTRIeERrbmdOR3h3TG44dG1rZU1jTjlBS2ltNk9P?=
 =?utf-8?Q?j0mn71LOFtuqT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmcrQWtXVC9LU1RRVTh4YnNxbnhhTTlqQ3d2U0pMQTA3dVNRTmR5L2xIdFhw?=
 =?utf-8?B?MFVBdE1RRnFTRWZ2SW0rVHdDMXRXWThQODhvRkowK1loNlBiQ3U5TUlwR0My?=
 =?utf-8?B?N2ZnTkhFSXl3bWZHZlBtWTRRb0lWZ2VFZTUvSytRWE5DbWdTVnQ5TUFVUFZy?=
 =?utf-8?B?aTJrRVJkQlU1MDdERzAwVE5mODBsNXpsS0pUbWxPS1MwN1ZPRTNDLy9nTFh1?=
 =?utf-8?B?a0dxSVpLZGdENjBBSUdGd2hTYkh4b05PRW13YTc3K3JTS3pFWTBpbHk4S2p3?=
 =?utf-8?B?d2RHUlVNbHpXZjc1ajZkWS9Vd09JMEphTEtsMDVBdVFvZExJSVNDRzJUQU9n?=
 =?utf-8?B?SmlQV1ZZSy9pcHM0VUFUTjM5UmdzdVh1bFNhOW5lVExiZnlmVUp3ckNRdCt3?=
 =?utf-8?B?Wlh1S1N6RURWOHZsS0V5OUFseE1BdDBxMW9LdkRyeWo3Z3NrUzVOV05jTjBt?=
 =?utf-8?B?R0xJWFExcUlsSlQ5N3dvMnlvZVYwMnFnTEQ3TlpsUzRCT002Mis4alRMVVpm?=
 =?utf-8?B?N2Z1bGdqdEc4RTlwdUx5TDRkQUZQMVJFMjJLMHhDVE5lTDJBV2VqRkplV0lm?=
 =?utf-8?B?L0NZUlc1Vk0wMWJLZDIyYURwWS9zUm1SYU9vQlY0ZHVZcVgrdWZHQnM2TWdD?=
 =?utf-8?B?S0dmSURQZGlQeTNvbjY1ZUdkclFDZU52aExoWkRnMW1kaUNhUGQ4dFoxS1RB?=
 =?utf-8?B?U1lPeG4xd1AydWVvM3lPMTFlazNoUnBMNmdXZmZxK3p3OWlyb2t3MUdKVnBk?=
 =?utf-8?B?WVAxOGlLT21JalBGUTAyREE5cTdCSTBGazB0Mmc1TlRnSjhHc0NBR0M1cERm?=
 =?utf-8?B?YjVjem9ra3dwbGVsQk9za0JXMXVtYVdpYUdrK3JaVzlCSGtpSE5qVEIydzNt?=
 =?utf-8?B?dTJTaDVYVWlOQmYwa0RDTFgwV3MvV1V3aUpDcjN6MWhrcXozVTd3RFpnTWZw?=
 =?utf-8?B?TUFmRjZVTTQxTVl6eGhSOU80d2pGeTJvNmlqUHBBUi85aU1WK0xrWTg4QXlS?=
 =?utf-8?B?cVRiY0gvaEpFeTIyUXFVVnZwWWFUMzhVSkVNN1FhWVEyQytpbWw4NFp3Nkpl?=
 =?utf-8?B?RHc5dDVXQzRIYzY3a0lrTjVTYmFNRGR1cnJJdVJlWmNLK0VTbGd0Nk5oOUVF?=
 =?utf-8?B?ZGgwNVM4ZkFlTkhtVFhNbWhjMGNRRmNJYjlWSkg0Y1BUMTlOVFFCSGZrWU0x?=
 =?utf-8?B?TFFUd1hFckZjdHI5aGJCcWU1aWNkS0t5QXp3QTlSc1BraVVSTG53SGhDOEM0?=
 =?utf-8?B?cXVlM1ZUUE1zL3pOcURVaGo1d2FMbml0YldQU0dOMjBlQ1hEK1pRS1RseDR1?=
 =?utf-8?B?aEZmdThOVXRCTC9vNjl5RWhyQnpHZG5GYVFXTWNSUWpQYmRNSzN1NUg4WktC?=
 =?utf-8?B?dk5aZ3dlOG9IR1lRSWdlWnRyU2s2Qkc4MnpMSTJ2RVY5K3IxTnVWV0YzUlhC?=
 =?utf-8?B?N3JOcTR3ZDFZd01RdHduOGw5RzZCVmZ4eTRGYXc3cUxsZkRNcVoyTHZGZkFV?=
 =?utf-8?B?NUhtNHdCTnkyQ3BJYzBIdFJtTVNnQlVDVXhuR3Fsem5YYk9RSWxzN0Vib2V5?=
 =?utf-8?B?L01mbmpRam5WN1pwTFRQMGpmODhOVFZ3TzA0QVVaM3ZoczFGS2xJemxNUGtX?=
 =?utf-8?B?UEdrSS9wRDNiNko5aFJwaTFUaWhsZit4Nm83WFdWdVJrWTc0ZitRNmkxZnVI?=
 =?utf-8?B?VExWS2FSV3gzOFJwNWZEa1drWWZHdGJYdmUvZ2tNd3ZtcXpZNWQ2S0ROd2tC?=
 =?utf-8?B?ZHFsR045QTVlR3o1SGhYNXhYZlFwdldJSFJwRG4zUC85SjRyVENiY3JPWHc4?=
 =?utf-8?B?MmVlT2hqYk1rVjlQZDZnV2RhK2R0SVFlYkVlSnNTVUw2VGVESDV0eURzcEVZ?=
 =?utf-8?B?OEpQSFpJaG83WloxVW55R0VEK2t1Yis0anlYK1R2Tk1KU2IybEUvOTBnQWZz?=
 =?utf-8?B?cWx4cWNFYnRodDJMS0hPOEhJa0c5TklEYUc2cWJGeDAvL3RGSDFad2gxODcv?=
 =?utf-8?B?SnhmanZRZ2Q4RHFUWG00ZUtFN0NGa3VNT3dCcDBGTlJDTERzbnFHb09ZMDE1?=
 =?utf-8?B?dVIyRWgvV01XMk50dnU1cUtLLzU2K2x3VnhiSm1SNERwekQyWGNYUUdaMWJm?=
 =?utf-8?B?c0M1RkMyZXY4ZFkranFwWkd0b1JrSFNqeXRKQWFpbU5KRDNZNnFtcmNwT2s4?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd73488-1873-4d03-c5d0-08dd2f1be60a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 13:05:03.1055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eTXfDYfXsbkQtX9IIFibf9qZKfmvjc1bcGbpJunGMAzAeefpQR0TTIyuL80rdWxb1tXlq/8JuHrRciTFXSZTd13qiaKlzVfIFu8TTPaL6eE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
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


On 1/6/2025 10:21 PM, Mitul Golani wrote:
> Pass crtc_state to intel_atomic_setup_scaler, this will help to
> check if pch_pfit enabled or not and also will be useful to pass
> scaler_state with the same which will be used later to store
> hscale and vscale values.
>
> -- v2:
> - Commit message updates. parse to pass. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 6c69545fe172..4f838220f880 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -309,13 +309,15 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   	return -1;
>   }
>   
> -static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
> +static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
>   				     struct intel_plane_state *plane_state,
>   				     int *scaler_id)
>   {
>   	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;

Better to move after dev_priv is declared.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 mode;
>   
> @@ -444,7 +446,7 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
>   	struct intel_crtc_scaler_state *scaler_state =
>   		&crtc_state->scaler_state;
>   
> -	return intel_atomic_setup_scaler(scaler_state,
> +	return intel_atomic_setup_scaler(crtc_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "CRTC", crtc->base.base.id,
>   					 NULL, &scaler_state->scaler_id);
> @@ -479,7 +481,7 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
>   	if (IS_ERR(plane_state))
>   		return PTR_ERR(plane_state);
>   
> -	return intel_atomic_setup_scaler(scaler_state,
> +	return intel_atomic_setup_scaler(crtc_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "PLANE", plane->base.base.id,
>   					 plane_state, &plane_state->scaler_id);
