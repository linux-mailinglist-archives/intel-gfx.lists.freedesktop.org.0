Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADCDA47A4A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2004310EA86;
	Thu, 27 Feb 2025 10:27:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cuvQVPvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B08910EA73
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2025 10:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652035; x=1772188035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KAohy3j9VuqbHWJ5HAUKI5tqsEd1DodM8HeTHgWFJ8Q=;
 b=cuvQVPvQ+mJ7ravC6slBl0nMTeD7XH5fdtj1bZLu4873G1/LrtlS97Qy
 VAw1B6doMA9NDbz/E9I0Q708SFnUvSjDwC7eL6GXS39YlCkmgV6pvTN5Z
 QYhi+tYf76Iir9gtQFzOmFkcVNFtc8qBi7oN75kchkmpp85LDUcvN64Gn
 +eZKVLcVpEWQ2A9i0RE2Xe+jOO57pYHmpySQE3NcIlcvqajKM3J2AW/ve
 07Sehc+QiI2+ofC72v504ADNHpdXiB388eGFbeBOONIGFPWP2szh9njy7
 fom//n/PxYmFhG667kjll436Cj+/xiGllo7C4rn86mAcocCyX4hgj5++7 g==;
X-CSE-ConnectionGUID: OgiDr/mTQyyqSMbTYLlSNQ==
X-CSE-MsgGUID: LNpLB/yBSTGfWOAcEXI86w==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58950629"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="58950629"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:27:10 -0800
X-CSE-ConnectionGUID: 6CacvWDUQdeHKzBjDW0t1A==
X-CSE-MsgGUID: /JfzllTdT6GisT79V1UbLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116757168"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:27:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:27:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:27:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:27:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dmReNy95FDO5rSvhbMzQrZ3tR83t+vB5FN1u4yw1XpGfhOULNxCloNZ8x1NAlK5wDjs/G3IQpe3vflHAis6kHXGl0eDKI/9/KG+IYn+QNxpGTBAzYe/ZYFYPtEuFHfXSrLNLUDKlfNQarG91QAIdM3OaTlEqtIqx3LxqECG/0164MptCuNpY/Pv9ehb0WJ5MhGwosiL4c1qRIPoyfH4K4pdNDktdmJ/Ex6Mj0V0MebP2T8r0PfnqcZlvkKN7A1kNfVmrb04CtRp0X/eYc/oCYXQqL2yKFdF+fbYpeXhX4mTJe8Dp2R+fqj2R8W/OECKLPwSUSl+ePGB6CoflV6okRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAohy3j9VuqbHWJ5HAUKI5tqsEd1DodM8HeTHgWFJ8Q=;
 b=kKfLymEtudBI/Cf4V1/2Iu1/h5lyVzRKQnlkuGvjUF4cUp1j/ybEDI7r86ZabOLUajELRDaxgT0NLilInf1IL2tZDTyKaHLwXoG7rcVcCC5OrTHhPyhCQ/fq+ROSog0F6TAmV9tOEX12Vy2owkSFXXuVgHPgkZ4C1BqNNV1bqHZKOQvUbz7AeCUxmcBqEFLATyFnY0MQXsdgIZrVLhB6W+N0HVnGR1KHzMXzNK/vjFatvK/jWckAbbQH+3w8+c3hww61+f9IJ4G1cDi91iG+vx5Sv7hxoudTTLQPhlfy5Med+m2He90UJS7pGRIxkWvGJCe6PYNuTSLYQf37hmk6Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by CH0PR11MB8235.namprd11.prod.outlook.com (2603:10b6:610:187::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Thu, 27 Feb
 2025 10:27:06 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%4]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 10:27:05 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Thread-Topic: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Thread-Index: AQHbhoJt+c2Zs12sTk2+5b6kTiUS+7NZbp0AgAGE3HA=
Date: Thu, 27 Feb 2025 10:27:05 +0000
Message-ID: <SJ0PR11MB5867B545F6B757D9325035E6D0CD2@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250224063104.308242-1-nitin.r.gote@intel.com>
 <bh2cljlzc7irzdazrorydkqqky6ayhamytdf3dnia6ji3cy2ag@66uzujnuembu>
In-Reply-To: <bh2cljlzc7irzdazrorydkqqky6ayhamytdf3dnia6ji3cy2ag@66uzujnuembu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|CH0PR11MB8235:EE_
x-ms-office365-filtering-correlation-id: d08196d8-52bc-4466-7a70-08dd57194877
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YTJIcTVOTk45amVpMElzYW9EL0hFckxBdEpIT3pGUGd0YVZ0MzZkOUJVN1A5?=
 =?utf-8?B?MXBST3RETFdrRGlROGlJV090Nll3RWFUYXB4WVVIOFl2dk1GbmhrUG5zSkpv?=
 =?utf-8?B?dG0vQWlSaGtmREpKZzFPWWxlNVp0QW90cmhPSU5KdUxkU1RIVGYrRDQ3aFo1?=
 =?utf-8?B?L1pqcHU3Qmp5STNIVFZaRnhhYjV4M2hQVDVTRVJRLzNsVy9kSzIzalhRQ1Zu?=
 =?utf-8?B?Y3dBb3FCcjJTOTVJdXhNTHZxblNIRFJTUVV2VDB2Y0RzM3Fob0J1aUpET25F?=
 =?utf-8?B?S1RnK1k5cWVuMFU4QnBHWS9uVnhod3dUUTVLbzBONzcvNnNnVHBTaWdLVllW?=
 =?utf-8?B?cWpOZEdzcFdDSjFwdVBqSUpTbnptZlRWdUYrV2tOUGJSS3F5T0xQQkpVcmRw?=
 =?utf-8?B?VVJOQ2RjMXUzTXhTMlhqNHRCeFZTWTk3aVlEV25BNUdBODQ0ZUNGQWtuMk4x?=
 =?utf-8?B?YjE1V2FLOEQxcCt6Ui95cE8zUFhoVTF4bStqaWcwMDhKK1NFdTd4eHg3MzQr?=
 =?utf-8?B?UE54TTB2K1JJNDJDWjZjc21oS29YVFFPc3F5RHBRK1hzdFhGRVRPQWl6LzJJ?=
 =?utf-8?B?WWtHaEtxYWdsVDUwSTB1ZytLeWlUdmE3V1RndnVxbFRqeVFWd0VMS0NsRXln?=
 =?utf-8?B?M1ZjdExKYVRuWVV6Rkd5V1EvVUw1eTNESzg3dU4yK1BFUFFFa2ZnbTVJUVpE?=
 =?utf-8?B?QVJabE9rZ2RVbVpJK21pbHRvTWtkUWxaMDNheEtQUHk4d0RCODBOUFlOS3Ja?=
 =?utf-8?B?L3dLaForTTNLU2RITHRiM3MvVHJnampVbUQzaE9jSWNQckVhUWtlR3VWaTIr?=
 =?utf-8?B?ZzFlZkVWaFQ0SGtKR05JSHkxeGk3YUlFT0NhY2IzTGxEL3JPbDFxckZVR3Vj?=
 =?utf-8?B?b3RQcXVsZWpDOVJhOS82MHllUXo2NkRqS2lSRmZKMkpVSDViRTVNTzBMeUVl?=
 =?utf-8?B?dGNVY2gwcEJHdjlXT29HRUtNVEIzVXJHamEyeXRVMTI4N3ZVQU80Ujg4RGIr?=
 =?utf-8?B?eExyaTZMd0F6SnNNK3dWRll6RXJ3d2JZdWNPYW5tMmdxRmp3djJ4bUZJbkJD?=
 =?utf-8?B?NnowMkhXaENzRWhHb2VxR2NkZGt1eDVRUE9sQy9RVTBQWmxndlk2aysyNkd3?=
 =?utf-8?B?c0FVeUZFN3RGOW50YTg2N3l0dUZnY2svQm12c2RHbmFBdysveEVLNFJoUzdh?=
 =?utf-8?B?SHZMYitmYVIzL2NTOHJHdndwMk1FS3ZMT1VkdFRubExhajNONXB3alZ3dXpj?=
 =?utf-8?B?NkxkRkIyaUdBM1NpQUI1SlNDODduWFR3ZTFiQnE0SHR6cTNmeU1YYkcrU2c2?=
 =?utf-8?B?MUJ0cEtOL0Z1TWdCTThEK1Z4Y21vU0FtMDRlc2pZREdPUmtFd3hFZWNvMkdC?=
 =?utf-8?B?M00rRXZsdDJyL0dVUU5aZXh3bmdIRHgzUENXYit3OEJCaTZvUUxJUENOdHVO?=
 =?utf-8?B?YSs4WExkdlUxRDdFelhySVl1WWlTd1luY2oyTjNCVHB4NHBoL3p4eTNEcjlq?=
 =?utf-8?B?QnVkNFk4QkRtR0x4VGU0dWxqS1dHNU9hbDRraUNYVUtFRDFTckQ3ekJaVUJh?=
 =?utf-8?B?enpZWnFyajZ4M28vV3JsV082SGV5U2dkeWs5eXJmc05laWxYUHNBTjBtcVZi?=
 =?utf-8?B?R3hPU08rdXVRUG1ZeUVHR25ELy9TOGFkVDUxSkFqZVZ3NUREU2VVeUM0UjQy?=
 =?utf-8?B?YU9wRGlqcS83VCtoMjBkU0t4TExqamhjbnhqeXh6dHV3K0hpSkZCZitBbEZK?=
 =?utf-8?B?Q1k5MjdGSHJnZE53M3M4SjBtRHVOeEVJYkcwdUNRU1ZuaTlRVTUzdXB6RFZh?=
 =?utf-8?B?Y2RrTm56ckQvaTU5QjduSXVzL3M4MXlOZXVoUkhiY042eWU4VTgvYWtoS2JF?=
 =?utf-8?Q?tXuVnr5tB0EMu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVFONjJPOXJKeWk5N1MwV2FaRW5JNlNRdEZVbXM1SHJmb3RsVkpFbytGZi96?=
 =?utf-8?B?bWFyTDNDUkRXS3JSQkZueGd3bXRpYkRkUGk2UnJYZG9vR1Y5RlZ1TE45RGcx?=
 =?utf-8?B?UStZYnZvS0ppQ21qa1JHMW1FbjhaQStaYSs3ZEZDeG1scU4rQmpUSDd2YzdL?=
 =?utf-8?B?TzZKYlRML0U3YnlCWGlJN1JnTGwxZFRPRWt3c2lqYkFWdFM2eWExSTJuQWgw?=
 =?utf-8?B?VHlmdVRIMTZ3SldhQWpxVm9SeXRsVFgxWitqOHRrNmJwYVZNN1N3dDBGRUdQ?=
 =?utf-8?B?ZmhkSzhNU0gzRC9yODc0TSt0L09sM1hEczNFbWVjZzR5VzNRWnZMbjdUZENt?=
 =?utf-8?B?eHFBWm5XOEltTkRzcEZScThwTWNBL0NWNjZuQmpLTGhoTy9QMFNJSWNxYnhO?=
 =?utf-8?B?WmJ0bmNxdXFTRktNemQ4cVNhR2JBNHpTWFpuYWpCUTZ5SlZMVyt1aU9FMEc5?=
 =?utf-8?B?c3NyOVAxVzBQYlFMRW1uTld2dkl6MVRBYWlqZ1JkQ3k3RGFabmdWbEw4UlRn?=
 =?utf-8?B?aWFqOVhxUWcxT1pNbk1tWCtaTi8vTEQ1ZGQzWlloeFBjV1BucWlaZEF2MnRP?=
 =?utf-8?B?UXpLdkZRWDhNMzJUU3dIYTRVZnZLRWhRMnNsZFJDN2MvaFd0dG5peU1IRmVT?=
 =?utf-8?B?bGJFUDZPQ0poTGd1bTZvbVptSjIrQUppcjM2NEZLOXpnY3dDMnVxOXREcTRE?=
 =?utf-8?B?MEJqN3k2Yzd4YnhYV1VQc3lPaTZlNnl6ZUc4UmRzNlJ6YzVXWG5FUldGV0k1?=
 =?utf-8?B?UlAvUEhQYnVBSWZoOVQzQmtRM0diQWgrWEtJeHpJVUVvQTZOQjlraXN1bkQ0?=
 =?utf-8?B?dTE1V3BHd2VrL0FkdjhwWEF2bG4zL3VIK1pIdzZ3b2dFREFsNHpHL0tsRURE?=
 =?utf-8?B?WktHZ3pDR1B1UXVVa3pmUTVrSjVJTnJVSGlwZmpLcGRRZHlXazA3Y3FMMXdu?=
 =?utf-8?B?dVFIRkd6ZFIwdzllMEtVb1Y5ZVJLT1prQzFUR1pVQ0x3OFJINDQ2TDVqU2Ro?=
 =?utf-8?B?T2JkZmxiM3dPQ3NvUlBGeUNUd2ZQQ0xoMm8yTGdRQ01lNDYraCs2bG9iYi9S?=
 =?utf-8?B?ZmlvOStIaXpXQmVRUTAvU2tjOVpxNWE3b2QyT3lQYmJjaEw4ckptZ0Q5dmV4?=
 =?utf-8?B?N0szeDlvcDZkMGtYblJZSjdvaWVROVI4c20xbnZ6RStTelF1bUsza3VXekRG?=
 =?utf-8?B?WndvZmhJZXhOTXdyTnB5MVhWa0dhc2VlcDBCeU5jZUFiaU4xN2dxZU80VGhn?=
 =?utf-8?B?VzVaZ0kvUjNVNG40LzVRa3JWejEwRVIxREF6WXlCd29qWVBQSlQ1dXJQdjhI?=
 =?utf-8?B?eGhlcDdrRXNDU2dweEw4MjJOS1h3NG9YMGJvZmFUeFdNNk5mWjY2NTBMS0hr?=
 =?utf-8?B?amwveG5hZkFhb2tocjY0bmRmK3c0RDhzYzRHWkdoN0Znc0dPZzdlazFGaG50?=
 =?utf-8?B?bFhLY2d3aENKN3E4bGtqRjM0ekJHQnpxbWc3RlA2VER6NWdFeU9BR3JLcmlJ?=
 =?utf-8?B?VWVHZ2EyRzNoK0NEcDhWbXEvcXdtbnJIeHBpVXhFdmdEQVdBaVhjcUFTL2FS?=
 =?utf-8?B?bkMwOTBTL2wrWGxzTVRId3FuMStiRGlZQ2NIRUROdnJ5KzZLdTRFamJSOWJR?=
 =?utf-8?B?bzVmS2lqVjJQeCs0Sk8rYTVRaVNJMW9RU01VNDJjMEdTSlNHeGFiYmNha0hs?=
 =?utf-8?B?QmdscmVzVTROaGc2QzlMNFlqVTlsWTdXVHRMRHdOTjQ5TGpoNU8vU1NkSzdr?=
 =?utf-8?B?R0JaaHZIU1FEbzZxZ01iNHl4UlcyL0MwRUoxSytXYm1BNnlFaGZJY3pFN0ZD?=
 =?utf-8?B?a3BreXByTDZwRml2WmhUUVZVeFdDMFFQZU4rSHlnNE9SMWZpQ0xJTGU3TFVL?=
 =?utf-8?B?dGdNT2o5cEpMN3BzMmk4TnhEQldxMzVTblBRKzRYUk1QNVdEKzZ1UnpFaFVT?=
 =?utf-8?B?WUJXVWFLZHExelhyS0hVUDJrM3VxZ2lqdno1NEs2MjVscm1YVmVUKzd1U3Y0?=
 =?utf-8?B?bVA5d00zR2x2YVIvendtUk9rVDd3RzAya0hUTjEvMWsvdFlFQS9TVlo3SDlO?=
 =?utf-8?B?NElGYWVCaWFsZEx2UkpaS09uV1VEM2NTWS96L2pFRGhxcUxZQkhOdHQ5b3dI?=
 =?utf-8?Q?IzXq/MGgGvzpKcy3sGO3sTASP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d08196d8-52bc-4466-7a70-08dd57194877
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 10:27:05.7810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8UZLZsew0dUTy+n1uIgk0MfmWU2NMk2HuQaGE4moYn1Hda97NrnT1WsYgbYYM4VBmbbD/RyyfbgjsVTo6/QaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8235
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

SGkgS3J6eXN6dG9mLA0KDQo+IEhpIE5pdGluLA0KPiANCj4gWy4uLl0NCj4gPiBDbG9zZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTM2
NTANCj4gWy4uLl0NCj4gDQo+ID4gIAkJCSAgICAgRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5H
X1NUQVJUKSk7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBTb21ldGltZXMgZW5naW5lIGhlYWQgZmFp
bGVkIHRvIHNldCB0byB6ZXJvIGV2ZW4gYWZ0ZXIgd3JpdGluZw0KPiBpbnRvIGl0Lg0KPiA+ICsJ
CSAqIFVzZSAyMG1zIGRlbGF5IHRvIGxldCBlbmdpbmUgcmVzdW1lcyBmcm9tIGNvcnJlY3QNCj4g
UklOR19IRUFELg0KPiA+ICsJCSAqIEV4cGVyaW1lbnRlZCBkaWZmZXJlbnQgdmFsdWVzIGFuZCBk
ZXRlcm1pbmVkIHRoYXQgMjBtcw0KPiB3b3JrcyBiZXN0DQo+ID4gKwkJICogYmFzZWQgb24gdGVz
dGluZy4NCj4gPiArCQkgKi8NCj4gPiArCQltZGVsYXkoMjApOw0KPiBTaW5jZSB3ZSBkbyBub3Qg
cHJvcGFnYXRlIHRoZSBlcnJvcnMgcmV0dXJuZWQgZnJvbSBgc3RvcF9yaW5nKClgIGZ1bmN0aW9u
IGFuZCB0aGUNCj4gbGlua2VkIGlzc3VlIGlzIG5vdCBhIGZhaWx1cmUsIGJlY2F1c2UgdGhlIHN1
YnRlc3Qgc3VjY2VlZHMsIEkgd29uZGVyIGlmIHdlIGNvdWxkDQo+IGxvd2VyIHRoZSBzZXZlcml0
eSBvZiB0aGlzIGxvZyB0byBhIHdhcm5pbmcuDQo+IA0KPiBSZWdhcmRsZXNzIG9mIHdoZXRoZXIg
eW91IGNvbnNpZGVyIG15IHN1Z2dlc3Rpb24gb3Igbm90LCB0aGUgcGF0Y2ggbG9va3MgZ29vZCB0
bw0KPiBtZToNCj4gDQoNClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4NCkknbSBub3Qgc3VyZSBh
Ym91dCBzZXZlcml0eSBvZiB0aGlzIGxvZyBhbmQgSSB0aGluayBpdCdzIGludGVudGlvbmFsbHkg
a2VwdCBhcyBlcnJvciBmb3Igc29tZSBjb3JuZXIgY2FzZS4NCkJ1dCwgeW91ciBwb2ludCBpcyBh
bHNvIHNlZW1zIHZhbGlkLiBJIHdvdWxkIGxpa2UgdG8gaGFuZGxlIHRoaXMgaW4gc2VwYXJhdGUg
cGF0Y2guDQoNCi0gTml0aW4NCg0KPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEthcmFzIDxrcnp5
c3p0b2Yua2FyYXNAaW50ZWwuY29tPg0KPiANCj4gQmVzdCBSZWdhcmRzLA0KPiBLcnp5c3p0b2YN
Cg0K
