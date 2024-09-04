Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D65F496BD20
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EED810E7A8;
	Wed,  4 Sep 2024 12:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lOMSsjpx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E0B10E7AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725454451; x=1756990451;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9e1kOoQZ2hQJ+OY7T7RwoxxFBQgbr2fD6kpt8gJCKvY=;
 b=lOMSsjpxZCyK0ZiPEYwVNunyD1xYaVsHQAwowclJA/mEPKuw+nofFVvQ
 oWAY5b8/eEx7tRLf0p1CnTctv5aO3wb+oV8wGgkE/7uAGTj6zYa5BSlKm
 2r4jaKoKE+3sx3wmhukquo45Ms9V8yhCebGFuQLqgwdpPdpPj7IznzuXA
 A5hnRdQ994t/TWxReEWrmvVPv3ZX8OGnlkH5c872oVlvjm/exJRMXJril
 1WWpQ8CzA9Ok+MiykdXBOuHN2sHQspq2LzmE8h44hUYYUW6tbeUm1Gfz8
 2K2LJljGzAOQnz1lZ9NOOWAfkqTgBuLTG2JjHpqIfsBkO6KMz3HuADIHy g==;
X-CSE-ConnectionGUID: ZpJ0jJReQ5GOMkXMzVC7uQ==
X-CSE-MsgGUID: N/oUWy53QKqNgCWqdcBRpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24064240"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="24064240"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:54:11 -0700
X-CSE-ConnectionGUID: yxrA5OxEScOPg+K5n94mYg==
X-CSE-MsgGUID: IoSncdOuQn+F2t8hsgjgvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69889486"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:54:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:54:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:54:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:54:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:54:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cP92rcTGW96q/K7f6uzk6CZkwkL0rPjWQMrwe7ggd3chhQ9voC1VOSCGwvgQF1Q7/9iQd10RRodDylWEzxZTHhzCgncfTTXag9I5p58pgGzgzeYW7YyOpCSeH6gBlaBmK+R+sDTEbP9Ma8+3qux0Tcg/FVEAm7p4mwhmH6UvwUJOVeCS1MYrlW02SOzcKz2vVdEPQJLDrON+0taWDTNwtKBA6hzh5l2BaHHjwP9ftObSk3eSlpxq+Xo/DKPgYMputzaH2ERUzwpMXPTovFHnRjiaIoZeWqTwwVwfk493vNk9k5nyTU7R4WfI214AETR7kpQuggVOTypxvxZsra3qBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uhZBfDqdOGJoFPVxHiKhSC6aTUvymQXTf+Ada2LD5o=;
 b=ul3DZrsGio+OOuutLFbz73Oa7+Fe8RxliS8VAn9aRUA4KhPUJwgGr23DWOdJbh7UuuKxbEZ0IHA8o+FUFg6e0oJyYBLZBYLtzIiYKXffF1Gixgu9znG34OPkkMI6bFzLl/6GdDoiJWu9DkUL7zkh9OFsWjgPpnIyHOb5CQipM2vg2EJxxFI6B2T3kAjJU/QIZ4LQnrtBxeYDXBtmmC+GHeCk2ovj8B0ATez9QzThNAmsC+slvE9M0cnQ5OaFlHMbwLywN5bN3K6uWkTqwEGg4P0J7FF+6fincSxGXF39wGTQmTWcmuyZjWBcQMMAcB2/0IeR7HwKCendHCwzgIUxwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Wed, 4 Sep
 2024 12:54:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:54:07 +0000
Message-ID: <90d259f9-bef3-4e79-a686-5c51b5b61ca2@intel.com>
Date: Wed, 4 Sep 2024 18:24:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] drm/i915/display: Add member fixed_rr to denote
 Fixed refresh rate with VRRTG
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-4-ankit.k.nautiyal@intel.com>
 <ZtcGZvU82Faddfrc@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtcGZvU82Faddfrc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0008.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8333:EE_
X-MS-Office365-Filtering-Correlation-Id: 73ab5133-bc46-4ff5-8af9-08dccce0a98d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUFrclJHTTkza05RTWJnVkVtM0VWNE5ZM2NUNi9NMmorZ1lwVUg3cmFYK1FZ?=
 =?utf-8?B?WDJqVWZOV2JwRzd1bk1SbW41WGFzbkIxVDlWK1pJd1l6S1ZhZ1FRTzZ6OHlG?=
 =?utf-8?B?bkpXSWM1amx0MlhYREhrOVM5Q3dnazJORHJMNjVsaWRPLy9LdEIzMHNEb2Jj?=
 =?utf-8?B?ejZCQ2k5alpxM0JlZTVQMkwwKzBITnpISW9OVmZZTndZMjlDVzRxRUFManBE?=
 =?utf-8?B?aXlsejdqaVY5OGtwbUdYTUl4MUZ6QnVuQjZKYzdlbWRYa2srZENhbytvZC90?=
 =?utf-8?B?ckdTRGRocEMxdFVFR2lCd1BSUHA5MWhrdkdRdC90dHBKVHkwcW1DN2ExdzRw?=
 =?utf-8?B?RWZObktKOHdJUlNLZDh2TU16bkE1eU9lYys2L0hlVmxmUFJ6RzFKblBTZDFr?=
 =?utf-8?B?MEtUUkVXZW5HNjNlWHQxSzlqNzVTaFhURWlEcXhXMkdDd05Xa2xwTEUvaVB1?=
 =?utf-8?B?RjBSVWpacUd2TkdQbVlJL2lwamlST3RsUm1YcDBHS1EvZ1QrcVJVYnRPdFJU?=
 =?utf-8?B?SUg3dnBWRDR5a2RxYXlZeG5rd0hjOUt6ZDhQUk9ZZ2lVZm9laXc3bFk1eDg4?=
 =?utf-8?B?bEhUU1pXSmFQUmtkdllEaHdDWjlCMENsSmhuaWFxM0prR05ZLzRucFVDR3JI?=
 =?utf-8?B?b0ZGWC9KclNMZHBqZ2NFT1MxR1A5ZUNzY013SlVKNTl4NTRGRHl1OWFMWDlq?=
 =?utf-8?B?a3ZWRXRNaVh1bVlUSjZHa1UwR3hnZnFLUi9CSzBBa0FZZ0VKN0xUUzB6ZEt0?=
 =?utf-8?B?N0N2RERMeUtuYlBqVTQ2QktrTUhRVkdyMUI3RHVuN3ZpcGdsQk5ydm1mNnp1?=
 =?utf-8?B?Mm9ERmQxZVhrWCtLVHo1WjBlZGFzQnlMWXYwdEU1OUtMN1hIZFhtMkdRWk9V?=
 =?utf-8?B?QnZRT1FIMUZaWDF3emduczFZWU1QRkI1MVRWbG5TR05qQk9tRXVvUVJueGl4?=
 =?utf-8?B?aVgvUHErODlqVGFwMWF3dnIzNWJ3SzJvd2JOR1ZKRFhFOW0xMy9EQ1p6ODRp?=
 =?utf-8?B?Nk1kM2xLK05CQjVXWGJjU2N1TERTN1RncG82Mll0NXVFRWd6a3JhOStUd0xX?=
 =?utf-8?B?aFFhM3hkTG1YYyt2a0N2WUVPTm5rL1pvbG0xRXdjUnVnU1lxVStDZmFLNnNH?=
 =?utf-8?B?MG41aUFXRkgzUkpDRFRuK1dNcmpVdFNCd3FrdUtPc2ZrWVFqR0c0dHJPN01N?=
 =?utf-8?B?VEQ5aDZaY0VHSFVqenphalRGOTNPYk95K2tncGhsM3o4TmN6L1RxNHBCaHd2?=
 =?utf-8?B?R0wxU0h0dzVJWktwQ0JIOG9aTmt5QmNYcXJRNUFXOFNJcVU4TnVOUTBUaEQx?=
 =?utf-8?B?NnM5OE4vem1aNkF1ZHNpQ29VUnRDUzFZQlNMMFhVclFVZEZ1U1hlYVd1UDNQ?=
 =?utf-8?B?TG85cTBOLzhYdHcrUy9uRFkzNHQvcGd5V0ZtNzRwa0doK2YyZWhVLzdtNkpl?=
 =?utf-8?B?L2pZM1pFcnMvaGJqUW41eDBLczFFNDg3aEtBeVY4ZEV6UHM4RldDNVhpLzJ0?=
 =?utf-8?B?RVYxUExJUHdibCtCRVh1VTQvazlpM3ZnUHVFMTUvU3dJRXBESWp6dmNzSHlN?=
 =?utf-8?B?a1hDOXQzeXNPbTA5TjVRZkJwWjB6Rjk5WlY1aGFCSzlBTHVHZDVZVjQ5Q1o3?=
 =?utf-8?B?em1hdmVLc01zeVNOVGE2S2F6Z0ZtMFFzbXVRTGFJc1pnbjNSMGgrRWlBZGhJ?=
 =?utf-8?B?MGNJV2R1MHlEeEx2aE95ZmFEUDF5RXYrV3Fyc3Bib2JJRnVTcTBFbDhLdlNT?=
 =?utf-8?B?UXBmZmYwYTB3cGFtRC9hWDM5VXgvS011MThhTHNNV09sVmdxVzJ3S2l1TVVB?=
 =?utf-8?B?SEJTZGsrcWlSK1RHdVk0UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVFTa2t4b083SmQzT2luOFZDUThCNjR1eFVycFEybkFvemI5TC9rbDlQVG4v?=
 =?utf-8?B?UUV4TjA0NjZNZUdjaFEwcE9MV1BTdWw5Rm4xREZxS0VsUUNRN1gyUEZoUGFP?=
 =?utf-8?B?cUJmZXVkalljY2pmTUZMc0xSY2hYek1HeHgrSXMxSkJ3M3RLVUZqd2R3RkRC?=
 =?utf-8?B?dlFZN1oxU1J5allnNGpIUzJrcktEWFUvWWpoaVVQQ0cyN2ZuUXM2cjl0Ujhp?=
 =?utf-8?B?VGZuU3ROZ1RISkhWRW9tNENxaTErNGZWQUVKNE41WEd1alQ1R0s5VlBGcDdP?=
 =?utf-8?B?S1RYWU1aaWVZSXIvcUlkSkZCZ1FCazdkRmF1U0FaUEtKVDkxcjBQVGtLdU1Y?=
 =?utf-8?B?OXdjekVZVjkzNDJCMng0SHc4NGkvdkJrZHFXdGdYV21zZEQ5d1dXSnVwOTZU?=
 =?utf-8?B?RVA1RDhmVW1QanRjSTNoNGZOUGJMUm9YTUcwNTdDYkJFMDVGL1BEc0ZKSEJw?=
 =?utf-8?B?NzM2a25nbklxdWRjSGFEcndLV3JKZ2ZxREdReG9DdnAxTmtHc1Vib0kwN2ll?=
 =?utf-8?B?cTNBSFN0dUdQcWVtS3RZNzliVjlRejVRaVhWcmpMQUFzQmNFdXBpaGVEbTYw?=
 =?utf-8?B?bTZmMEkrOVJNVFZXYnNKWmJETTZTZkFaMitBa282SHUyd3I1SnI0cGNmVjht?=
 =?utf-8?B?NUNNRVFvRStROUVtZVJiSHZQWlphUlhJYm1rcU9MZmYrZzlIWVF4NXdxbUJO?=
 =?utf-8?B?WnRRYXh3Y2RsTVo1aG1aUzNQWUdRYzhmRXFjTVhhNU80QVhlSVFsdms0d1Br?=
 =?utf-8?B?MUFQUDFhSGtGWHE5WFlLVTJiOFVGdUcwQ1E0THBCalZ3MXJCT0JpOWZocDlx?=
 =?utf-8?B?dC92bWd0ek92LzR0SXhhRmJmQWZNNi9jYnU4WEJuT2Z3OGtDMWhpczFNSllW?=
 =?utf-8?B?NVEyblZ0NzRwSnFJZmEvMnZKRnVldnNVNGJqN2hNUG5hR3VLdll2S2tvazVR?=
 =?utf-8?B?VGU5KzVLTlIxdEZBQjRUdzhSeWdHU1VuQ00vblh5c1o1NDRDTkJ1bUFjNG1K?=
 =?utf-8?B?cVNRRVpTSHdFR1VkL3ZuRDd2cit2dFVlSUtRYkZNalRWZlBCZmN0YlpYL3ZS?=
 =?utf-8?B?aW9sZVRtWU9XVkdJSnoxSHMrdkhnNkhyczV0MWMxcnUrOHZoREUwdXpKMVMz?=
 =?utf-8?B?VVE1ZzVKWXRqczFBNWNWTWNNVkMzQVhKL2FlWkMzQjh2L1dObjQ3Y2E4dDhy?=
 =?utf-8?B?Q3FoZ2xibTR3M0w2SzVXU1cwdENtM056Z3Z6MnFWV0FYSHlHSGhQRnptQXNH?=
 =?utf-8?B?VnJqN2VEclN4MmVrbHkyMm1xYlMrTFZuWDNDQkVyTlNzNTI4eVJ0ZW1tZmx1?=
 =?utf-8?B?bXRXZW9FUFloOEZKS2FBb0JkNE9LMTZwQ3UrVi8yOUdUczByakNMMi93OXg2?=
 =?utf-8?B?NzMxMzdOWXRFZ3FqbHFpSW5Ub3Q4MzJ1MFVWbkJhb040cmVjMlN5TDgwNzJi?=
 =?utf-8?B?cjI3b1haaGI0MDVMYWJUM281ZVEydXNWMktuYk43Y3B1UHhGelM0VE5jSDF3?=
 =?utf-8?B?QXBQMnJNbklnUTIzRGg5dkEzNTVRcHNnVzc1eHdsREpoWlVDUXllN01PVkk5?=
 =?utf-8?B?a0hHbUVOVElrSGpZNG1kNDgvQUYrazRnU0IreUpyS2Q1NTF2N2kwdjZmSE1Z?=
 =?utf-8?B?ZUJEaGU2aE0zaXpUS09DK00vREtRRUlsQ3NjSWVaQjFSbjdXa01RRFB4Uit0?=
 =?utf-8?B?N05FV3JFeDFQbGhQN1g0UU9zZkw4bmpFaWp0OHRnVzQvWnlSUGUxRGdNQ1FY?=
 =?utf-8?B?S1B5bytzdDJ0RFpvVkM4R2VORGREOFFyWEQxdllrbWMvdDR1SkVSYldHRTBD?=
 =?utf-8?B?VkhtU1lkRGNtbDgxcVJtSnRhTDkxanBwZU8wMkIvOWpGRldaTTBhOVNZZC9q?=
 =?utf-8?B?dE51V2lLS2FaaysyeTVPM2o0cXBpVy9wTmthYmU4U0NNdVNRS3k0NndHNW1H?=
 =?utf-8?B?ZkZzK1lCYWVaM1BHRHlhSVZsWDRYM3k1aTRORk9xaDZaQ0pSaUZSSVZVU0o4?=
 =?utf-8?B?SEsydGxMMklJN2tabVRYUnlzYVBveE9MWTIrNVlYWnBwVExlR1BCYlRBc2xN?=
 =?utf-8?B?T3V6M2RDK2NhdUdzb2owN0UrY0F1eXRIcVdZd1NRb0gyMGdtdFRlbTdBUlRi?=
 =?utf-8?B?THU2ZjlzbHFLRVcvNDZYdmRLaEJvMUtxRVNxZlFQZ1VjVkh3c3VHMFdORVo0?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73ab5133-bc46-4ff5-8af9-08dccce0a98d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 12:54:07.2793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJ82162+8ibICEY/PXrVYgBH1lTOoRakC5KpM5AyxiULzhy/tnyHeydt5kRGT+9fwDvj3zOwzMCFUzDyh9pYtKGFOfYXYX1sU/J8p0l60TA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
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


On 9/3/2024 6:21 PM, Ville Syrjälä wrote:
> On Mon, Sep 02, 2024 at 01:36:24PM +0530, Ankit Nautiyal wrote:
>> Add fixed_rr member to struct vrr to represent the case where a
>> fixed refresh rate with VRR timing generator is required.
>>
>> v2: Move get_config change where vrr.fixed is actually set. (Mitul)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>>   2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 78ce402a5cd0..8b437e79c8df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1005,7 +1005,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>>   		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
>>   		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
>>   		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
>> -		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
>> +		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
>> +		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
> I have a feeling we shouldn't need this. We could just check for
> vmin==vmax instead.

I too was thinking the same but then we have cmrr also where vmin==vmax 
is there, along with cmrr specific stuff.


Regards,

Ankit

>
>>   }
>>   
>>   static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>> @@ -5480,6 +5481,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   
>>   	if (!fastset) {
>>   		PIPE_CONF_CHECK_BOOL(vrr.enable);
>> +		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
>>   		PIPE_CONF_CHECK_I(vrr.vmin);
>>   		PIPE_CONF_CHECK_I(vrr.vmax);
>>   		PIPE_CONF_CHECK_I(vrr.flipline);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 868ff8976ed9..62a796f61d20 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1407,7 +1407,7 @@ struct intel_crtc_state {
>>   
>>   	/* Variable Refresh Rate state */
>>   	struct {
>> -		bool enable, in_range;
>> +		bool enable, in_range, fixed_rr;
>>   		u8 pipeline_full;
>>   		u16 flipline, vmin, vmax, guardband;
>>   		u32 vsync_end, vsync_start;
>> -- 
>> 2.45.2
