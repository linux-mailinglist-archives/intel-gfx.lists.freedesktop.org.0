Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9AAA00892
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E52F10E847;
	Fri,  3 Jan 2025 11:25:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwzwIomG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECEC10E847
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903507; x=1767439507;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rG27Mg9OTyvaIkGvuNTXS3RSXMEKKPmBT8TmgkoqXA0=;
 b=kwzwIomGSAq1/ZDtO3dSCYOY1oBEgC5B2m8VR0Li19HXW0A+h2GMpZxH
 JN6Fdm1CQ4bhaKwKtHdETZUueRzifnwYs2H2Q0EavYIrOeqM8Ckz915/P
 nm4ECA2fuoEeSNWCenVlxqfkKK9agtQWtcdVNekWOMXxe/fBkmIrS9t/B
 BbVgj3jbual8FAmxXoTFIGcCI+ChNMW79PkIAfJvtjqFnK/EezEhnJ7/a
 gCmwMUyKCGacf2sRFx7XcADmG1mpcOF7xcjDJxULEdJafYAwrJYKvfvLk
 WFKIhkdI4ME5pLS0iubUPhKpnEt6Tg4OxPU6zShD6dZfO2UUddo1fAZMf g==;
X-CSE-ConnectionGUID: Y1wUZP3JTA+u3mUHRj0CuQ==
X-CSE-MsgGUID: GP7Vh7hnTQCc+k/zGRjfpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36311213"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36311213"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:25:07 -0800
X-CSE-ConnectionGUID: hY8QpAQGRcG8Qyn12ib1RQ==
X-CSE-MsgGUID: hwJaK1qiSxOVESu7XzgpGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101639135"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:25:07 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:25:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:25:06 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:25:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=coIM1vO1Pk/4yK2q8ska1VJ3vWK5EsmX1GlehFm2pLm74O0wx5jK2cVELCztRGQq3jMENGhzByJeRiSRNH2iSXBrMXqCOk3n7ZPPTAf+/t07W+8SgV6iacz97mR8BzVPBqvWRMetS6sC8zfzw2TQ9YkjmTPgAYqaLu5Agx2UT0jI+t6YzM9xGrWqdZCHu6Vcnaxv9QqTZ9ya2TnqSiwzOCjm1aYxiKY9LmslYhsWbeZu84HQM8mA2gzIddDgDj4hU2sGeXVQ6nflNeNqWIu87YWZf+40DQnvhFUwBtjCWcL3CadQ2R2Ru9kAWNezWXHjdFmSsc/iSSbd5gxLUElI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ej8au7LcW220V6Fsw7cjL+Vuh4A1+4G2ZZQqdewvh/U=;
 b=riSs09NmZMZyGTDETXpbsFUoRa3plvS2SuzPPFaS0ndTeQADGVbKnNFSqJSTy5kpWE9oRuAH6Ma8fq+DlUqhI/M2GGgTce8Zh6PphJdd6vRtqJTorjKCfqfzMH3hBkM53mjrIJPgV188imRoLK4d0YAZ5R83V6Qj10oQQffFaWMH3DdkQgPJ/szEV+xuP4cegcBUdjty7wvNI8Jhqlu9ayGkKtp4frE0HoUi+mFOx7jqLS0IlfLUOLiftIUlVVLbNPBwJjGqXAyhNeI9/fYLHu7fu/T28CirVVGnpmAjyKN6Tqzj1ttJ6gx3Hw0irwPhUbL18c/BsuzfFAaa3/cuOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6820.namprd11.prod.outlook.com (2603:10b6:930:60::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.11; Fri, 3 Jan
 2025 11:25:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:25:00 +0000
Message-ID: <b09efa6e-3ff6-4ce5-9e34-c717dd749bce@intel.com>
Date: Fri, 3 Jan 2025 16:54:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/18] drm/i915: Extract intel_crtc_vblank_delay()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0167.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6820:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c7cadb5-12cc-4b8c-2d7a-08dd2be9425b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEd5bjhKSDZjYXdqU2hJQXNpOVNaUXc4MHBMelpGYi9QK3h4aDI3L2doK0Ni?=
 =?utf-8?B?TE5XV2trMmxnN3labFoydGc0a1doV3o3OFppNklOSStObkxyejRSSC80T01m?=
 =?utf-8?B?Zlh5U1pSKzZReHFUYUJBQmpDWFJNK0tsTUxseVRuZ012UUhUUnlkZ3NtanBM?=
 =?utf-8?B?eG1NSkpIdWt3bFZFWVFjOE4rS3lPeHk5ZXAwWm5DcDQyR21Bc0JQbkhSREtU?=
 =?utf-8?B?cWJFeFJ6NUEzWFhqdlAzR1RwK2ZEYmpwM3BEYmRmY2ZBZXZENHQ3dzZFZ2hx?=
 =?utf-8?B?bUhGa0RreDlqM29UZDJ4bTRlNjRTTEdkRHZWaFV0Ym9mQlpmTGdJU1hZMlIv?=
 =?utf-8?B?bHBFWGo2V29kQ1FwSDhPK2hDaWNFOGNlNDk2a3NuQU5VcEN2dkozUjlCSVRv?=
 =?utf-8?B?Q1ovSUNPU0RwSjhmUUtXbVZpU00zYUd2VGN6L1M2SmdWMElteFdOY2d2N08y?=
 =?utf-8?B?VE1RclNMcGNKelFudGNSc3I0MS8wT2hjVDJjTkRnMU12YmlIMlJmUnJrZTBQ?=
 =?utf-8?B?bFNsUE5TdjR2S3ZmMnAzdDE0ZlRhMmFWODRPcm81THVqNUpoUWxYQ2JvVW1K?=
 =?utf-8?B?UnR6UTBpSms5NkI3ekZrWUorWGVKYjd3RjNNRzhCdHgrZ2xNblNuOVlTYlBz?=
 =?utf-8?B?K1QzakE1dElzcThWQWplZnN3cXZJV2txdXpOaFhiSWRWL0RtaWxObW5NM3U4?=
 =?utf-8?B?ZzVTTE1qdjhDWG00M0ZKUUJOOGp0cHVITWszV0xkRUQxZWVNMjNYWkZvUDFt?=
 =?utf-8?B?anlkM0hTVVNVTWs4bmlGZEpDLy9MOHV2WUo0UmVXMkFVSE5aN0VFQXZoU3d1?=
 =?utf-8?B?V0tZZDAvOVVMa0hScEpIT3RxeVVsbTFHTWRaeitxc1E1My9KK1pNVFkydWVK?=
 =?utf-8?B?cFRBTldRZUh0bXlZOXY4c0Fpc2dIVDY5NmU5ZHo4RUFVcmNIeURIcHh1Tnpm?=
 =?utf-8?B?bS9qV3V4SjR5TlVRNWsrVXpHTVAxM2lIcHVyalhLNE9HYWUrZ3plNi80R2lD?=
 =?utf-8?B?Uk9DZVpnYVZJMGQ0MC84V3BoM0dSczRhcU1URHJnWExxQThZRFlxeW8zdDdW?=
 =?utf-8?B?RGx1Z3pOdTVaVGpCUnNLOWFyS1BZMWRZOGhvU3RGcjYxSVJsNUhjbzhaU09D?=
 =?utf-8?B?S0pTRW5wUXV1V0RTbkdVUmU1R0MzR3Q5eFI3WHplNXUzanVBbUtmVXhQU25C?=
 =?utf-8?B?ZXdvSWJmMkNYb3dFSlV6a1IrNys5aG4xYXcrNkl5UnZhTE5UMFo4RCtqR2Vu?=
 =?utf-8?B?ZjBBTXVPTGphSUJPZTE5Z3RkOEhCNmJoL3Y4aklpd1ZzUi80L2RUSk0rY0lz?=
 =?utf-8?B?L2ovRzQvclJSOGZNb1RKL0ZXMzhvcStNc3Fxc2Rvd0JXM2pWZzl0SGd4UmJi?=
 =?utf-8?B?ZFRqUXhTYkFNL29TNXpiNGJIWWZ6dGxsZjdGcGNHU0JoMk1DemtQRGxtaUs2?=
 =?utf-8?B?Vjg5RldwZGhkQ3VoYWplZEUzakg2YWQwNnBCR1N2ZXpyMEV3elBIbXB3VlN1?=
 =?utf-8?B?N0tqaFJxNVNoaTNKK0h2V3kvMlIwNWk1dW9GUVVNelRZWHVvZjU3cEVpbFhV?=
 =?utf-8?B?T0p6WXA0Zkp2VE9OWUhjcWY5bGpvS2ovQXBsaWN3QzRvTnUrMDNERmlmQS9k?=
 =?utf-8?B?UWVGMTZQS3hCekhSRDZBU2lUUlpzUmhDd01Fc0NlWHBCYjFEd0tKMzBYR3ds?=
 =?utf-8?B?clh1V1BaNjBrMm9mVm4yYlJpcWJhZE9RMEtZdEhqQ3M4SFdLSW1MWkFPeVRk?=
 =?utf-8?B?UStwSE5ya0I5bVpkQjlqeEI5alh3elFyQ24zVkFoTjNYRG0xR0lEQ201eUVa?=
 =?utf-8?B?LzFBeUdidGFWdE55WTFucGRHRzBkSlVnWktlVHlOSUVyNzBvNk9kaWNCL3V3?=
 =?utf-8?Q?KI8V9ythABVCL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHhsdWFidHJDczlkbVNjWUJNVDJhOWJRUTFjM3RjNmIrQnBtaVFTYWVaMVJ6?=
 =?utf-8?B?M1VJeStxNm9jYlZhTlpWaUFwTlRvR3EzanlidmVta09zVTRGRVVkOVV2MWhx?=
 =?utf-8?B?TTc3SWRvV1NkRE1IUkZVMmVLUkdpbVpwMGd1WVZvYnJ6b3p3a2QzMnAwK0ZF?=
 =?utf-8?B?SDlEUFBySk56WGU0WFdPVVBNalRydnlJZmlwbUd5ZlRCWkw4RG5PS21sWnRv?=
 =?utf-8?B?cjVjYXdlZFRrL0p1MURuSFRwNVdsWm1jS1pDMXR4VVQxOXV5clpPb3gyZUVh?=
 =?utf-8?B?VmVqenVpU01od3BPaHllMDNKYnNsajRBc3Y0KzkvcDArenNpY203aWxFcWc3?=
 =?utf-8?B?d0daeGdKdndmYlpUUmhVR1ZkZW93YnRhdS9EMWlncEQ1Q3FmVHYrQnZQSkdB?=
 =?utf-8?B?bjZtaERvYUNtTG1adExXQi9oYUJvYkpFRmdmZytseXF0TEVOdG5RZE1NWDRE?=
 =?utf-8?B?UU10WlhCUXZDNjZqbkNDckRCNUVFSW5hdGxFODRLNkFneGZWOW1udysveE9E?=
 =?utf-8?B?ajZ6a3hCTjltTG5aU21yamVmR2g4TllxR1NCTE1vN3EvNHRrYkR3VFc1NzJM?=
 =?utf-8?B?WHQ1bHA4UVAxT3hEVkVHZ0x2VWtPL2xIOWsrenNVdjRRbW9IM1ZpMWdnVk1m?=
 =?utf-8?B?U1IrNUxManNnQkJxUG81TmRzaU5SR0x3SDFXMXZ5alE0ZHdKUWdQbVNBMzRX?=
 =?utf-8?B?cmFtVTkyU2c3dm9rQjNXUEl3TmdwKy9vQyt2S0IyUVZBd2ZqYWFCUlBpQzRy?=
 =?utf-8?B?SW1wZGhRMVZScTBld25WZTJQclRidG1Bd0NpcDdpcGU1TkVnVWJjWXZjb0tZ?=
 =?utf-8?B?NjRIZmx1bUNFUmJ4VVcwN0svdHRYNlhzY1RWSVZ1RkxzSW10dlFsL1AwL3FE?=
 =?utf-8?B?cWxTeENKOFJQVUlIRnE2dTdHZlNGSXZJaFFRYXlJdG9RbEE4dmo4eE56NVpM?=
 =?utf-8?B?cGFINEJMTExXQXljd1ZRS3JqcmMxUVdENVFlUWpsb0swcCtITUhXbEJxb2Fk?=
 =?utf-8?B?NGZ4TTA3a3lFWUQxb2x6ZzJJeFZBTkxHQm5LUjY0a01rMmkyem9mNkh5dHZj?=
 =?utf-8?B?bVJSU2liSHV0aHVOcks2YmhmdXlQZ21QRFdPKzUvdzBDTk1RUnIzZFVXbzQx?=
 =?utf-8?B?d09TR05GMGNrNU4xd09uWjNnTDhVNG9kUzFSTk11bGJmS2ZiREs0aGEwVzJm?=
 =?utf-8?B?QVdNdWc5amd4Q3haUE1Ya2dzdzIwKzYxaXB0WFdJVGdCbmppR1BUZjZFR2VK?=
 =?utf-8?B?NHZDVzdBcHYrS1JCN3VKQWJCTnl2ZEc0bWd1SmVJaVR2S1d0RVRtNkYrRHQr?=
 =?utf-8?B?NUhaRjFKYVlEZ04wTlJwclhhazhOS2czUjlhVFMrK0gyVWhWMVBBdWNUTHdM?=
 =?utf-8?B?bjZxcEJHS2NjalFGQ3BZc0drT0NMa3BjWUJKek8reFZXY0pvWFBzL1kyUExN?=
 =?utf-8?B?UHBZUS9XSFhQNGYycHRCY0laKzYvRlRTRTF1UFlHZ01EWGVBZzFSSTJHWHNC?=
 =?utf-8?B?M1RNQlljWmhNeEE1TXByY0w5ek5pZGFzd0YvMjhVa05Hc3VQZm8yNUpjUk54?=
 =?utf-8?B?M1JTRVcvVFh0b3hhNkRPRkZRSG9uU0UxQXBYVGZsNWo3R25yQ2ZQZkttZHRv?=
 =?utf-8?B?WCsvVGNsRURoUzlyL3RkZG9lRU83eDhCY21PcDN3V2hFU1ZReExscHVkUkNW?=
 =?utf-8?B?anl4M2pCK0dUU05aTU0vOXlNM240bFBPSkdBVGZFZkEyazVTYy92dE1qdWt4?=
 =?utf-8?B?NkYzUFNzalJwN2NjRXd3YmFHc0VqR25IRnVZd3lSbXZKOW43VlUrcUJhTXJk?=
 =?utf-8?B?Z2hBMys3SHBYYUhLQ0VXNFE3Mm5SdDFYSU9DeTZQMFl4bElHK0hOVm1wYmJr?=
 =?utf-8?B?VTlnQ2pKbUszczAxYlA0M3BzaEJVd1ZWMmoyNEVkRGM3NEl6SldBRzhPUS90?=
 =?utf-8?B?blFxZ3kyeTFFSUl6alFINlN1QW9pditpY1dZR2ZodjIzZ1NuRkQ4ZHpiZ1J0?=
 =?utf-8?B?Mml2Y1BFeklpbVlyUGFudEMvNGc4ZW5nQnE3b2wvM1pLUGZGb0tDL1BCWWtJ?=
 =?utf-8?B?SGZTM2xQTW45MkVHS21WcWlWVGFWWXpjb2hiQVQ5RWdNM1E0bFlCRUpWVFZt?=
 =?utf-8?B?MmdqYnVnOXpOaFZXaGJrSXFDMkVYUGQrZ1FhRHl2QkFDQkFxZ3QwanNOdnM3?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c7cadb5-12cc-4b8c-2d7a-08dd2be9425b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:25:00.0602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HNBkZu7FmXrUgIOUuBeegVTm3QK65rahB4l1qtP17Fff/xHsouooXks//X6edImQS+AjsNZQFXa2h3FyOsbrxu3e96wxT4b7XmasglL1Evc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6820
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Pull the vblank delay computation into a separate function.
> We'll need more logic here soon and we don't want to pollute
> intel_crtc_compute_config() with low level details.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++-----
>   1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8e90e99a25d6..ff907afa6451 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2610,16 +2610,29 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>   	return 0;
>   }
>   
> -static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_state)
> +static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   
>   	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> -		adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
>   		IS_DISPLAY_VER(display, 13, 14);
>   }
>   
> +static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int vblank_delay = 0;
> +
> +	if (!HAS_DSB(display))
> +		return 0;

Is this because W2 window is configured to be non zero only when 
platforms support DSB and DSB is in use?


Regards,

Ankit


> +
> +	/* Wa_14015401596 */
> +	if (intel_crtc_needs_wa_14015401596(crtc_state))
> +		vblank_delay = max(vblank_delay, 1);
> +
> +	return vblank_delay;
> +}
> +
>   static int intel_crtc_compute_config(struct intel_atomic_state *state,
>   				     struct intel_crtc *crtc)
>   {
> @@ -2629,9 +2642,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>   		&crtc_state->hw.adjusted_mode;
>   	int ret;
>   
> -	/* Wa_14015401596 */
> -	if (intel_crtc_needs_wa_14015401596(crtc_state))
> -		adjusted_mode->crtc_vblank_start += 1;
> +	adjusted_mode->crtc_vblank_start +=
> +		intel_crtc_vblank_delay(crtc_state);
>   
>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>   	if (ret)
