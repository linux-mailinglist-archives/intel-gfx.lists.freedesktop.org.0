Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBBD92747F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2024 13:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58AD10EA96;
	Thu,  4 Jul 2024 11:00:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZUW2EI9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0EE610EA96;
 Thu,  4 Jul 2024 11:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720090838; x=1751626838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h7WVnAPM4YoMIpnVp2kvuXcPNgHt1I0Q43nTscl3Sko=;
 b=hZUW2EI9vsUbEraAeXzDykK2sKHhtLsHKg9qR4c4M7H2hiKowlAKQdSu
 /65+aIl+CCcqaskdXVtC9sI57hiakuREvVjhemwZ7483AWp+FAgTC6Vhn
 lyJGOrtD1JuC3WoPNDrjoJXVKr4pNywKrRP0b2LL1rHHzAcYFt+Rp8Xh6
 /HF8+I5INUvguoL+s3Hzo2kyXUUsTK2rkxPqRM+wGHgSuEVw9nv89FXYC
 nnBxjAWdAb05nH0GM4XQ95QFbIKlrjRIv/hSEKoRTyaq7KZx5xWRMZisW
 FnytXcXiUXBYZa2VIFEu8fbcZ0YjzS7GIejKCq5HhFSJZXMg70dLbjyY7 w==;
X-CSE-ConnectionGUID: 4pZT8RLfSPauK5a5TL+MMw==
X-CSE-MsgGUID: rKQbfIa0Rt6ImFWYPbzptQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="27980764"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="27980764"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 04:00:37 -0700
X-CSE-ConnectionGUID: pVnQJXMoTL+K+2BR3d80RA==
X-CSE-MsgGUID: AKfHRGz2TzKC4mo0n08SkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46581775"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jul 2024 04:00:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 4 Jul 2024 04:00:36 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 4 Jul 2024 04:00:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 4 Jul 2024 04:00:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 4 Jul 2024 04:00:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MG9t8kIzp4SydhRVHRFHJYEv0Gf/INM5paZxfXNIG05yAz8Vb48OxqLjVZZ747XbWH45D92ySose41geLK9mfGVZPsO8SfeA0biE00phgMW0wjd/PhYXN2cQ1pFqArhyZMrbuta8/2EJoFokZDXRsztOGtVSlZDTFXYdNPuRI5tKhJRgPXYymRXPfeoNPYtvowBwbxBLUFuwDGVOokb2L1vsUSnb+HciNWPXxcwetqOBXrnlEyELrTbKrAbnXioI8jcGcvKJgnLsZN1d0Mb+9FoDP5+EnHLGcgf1e8KULjYuE5+acSUA2eaiOlHwK7WbersSrJa8okSAMKopHLjy5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7WVnAPM4YoMIpnVp2kvuXcPNgHt1I0Q43nTscl3Sko=;
 b=SxeTVfsftercsHotdBWO8n21W2qe6X+FqPpzdKj1mfCH8TfKWDDvDEwPkLrASDlIi/kW3FvvsNmaz0SkYeUsGNxjbSI8tdO8yEoa1LOyugL+hanxr45ggCwfxDg9r6j08CHX/GDzVJyNXmVWatJ0YKzXrWtyWU+9YeOPVQfcogCF5alSSBov3BVcqy5+I4kpoqwB2VwM0MfI0bUuxDeQYYoQYTZj34wnhztSf19bQNiSI+ntF0v5ze1T8Zgw77kLfe/JJ7b/baogMekYRs7psZ3RPzXowdNmWGCRGZEACXXkn7El/u66W5v1lw0KM4Htfi0JaTAvhYxD70kbS24kqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by SA3PR11MB7979.namprd11.prod.outlook.com (2603:10b6:806:2f9::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.35; Thu, 4 Jul
 2024 11:00:31 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%5]) with mapi id 15.20.7719.029; Thu, 4 Jul 2024
 11:00:31 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBEdW1w?=
 =?utf-8?Q?_DSC_state_to_dmesg/debugfs_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IER1bXAgRFND?=
 =?utf-8?Q?_state_to_dmesg/debugfs_(rev3)?=
Thread-Index: AQHazKuleSDbHm+MOUiT4fbNeJ5Ld7Hj3/uAgAKJTtA=
Date: Thu, 4 Jul 2024 11:00:31 +0000
Message-ID: <PH8PR11MB67537B5742750EE80E095F88F2DE2@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20240628164451.1177612-1-imre.deak@intel.com>
 <171994402506.21588.16524126273502415648@2413ebb6fbb6>
 <ZoRgAwKVMOtdU4vU@ideak-desk.fi.intel.com>
In-Reply-To: <ZoRgAwKVMOtdU4vU@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|SA3PR11MB7979:EE_
x-ms-office365-filtering-correlation-id: f60f143b-2ffe-42e2-ab4e-08dc9c1885a3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bHRseldETGo2aGEzOTlRNFFLNTJwWUdQUzNTQ3lIWXdFeGVNUVhkcGcycXpL?=
 =?utf-8?B?eDdMY05Hd2VnUVcvOUtmc1ppZy9yZ0x3bmRaVFRFM2lGdjhyeVc5Qkx0eS94?=
 =?utf-8?B?UjVNaG5EdUlNOWxEajJWRVB3UlZueDZnNnA2d2Z3RE5obC9SZEFTNHNSbmZs?=
 =?utf-8?B?QlZOaDYvU1NLLytUNGlSN25BQjNaazgwUDkxRXRETU9rNk1iN2dPcUJIWGpG?=
 =?utf-8?B?d0UyRysvMkg0NlpjYnpJY1ZkU3J3OXlkRDdzV3JlQXYvSVlVMlU4dDZJU2tI?=
 =?utf-8?B?dWVLZlFVR1pDTjRwSmp2bjBCdDluT2JFZnRhbFRJK3JuOVZaeVB2QW9iVWFN?=
 =?utf-8?B?SWlSZFlSK3REaVJTK1d5RTk2RnhlNDU5L0RwYkdjS1pBNnpqUnhqUHhGaFVz?=
 =?utf-8?B?bWZTVC9iK1hodnliRW9SWnlwL2NuSUpUNzVNQS9QYmwrRjB1c3pYTHRqZ0dK?=
 =?utf-8?B?d01CcEdrYlZuNGI3RDZHRWVxOFh6ZVdmRndBZi9pMVlEOE03a3kxaUxCa3hL?=
 =?utf-8?B?UkdWM2V4aVZOSG9FNEFuM2MyTWFvRTRmMzdZSGV2ci9SNjlNVHFjakZvWEIx?=
 =?utf-8?B?dGNlTXg5bTRldklXQ2Y3VlpuWkJ6L2h0OHRDZVFvQ25XdW5QUUc4bytnZ3E4?=
 =?utf-8?B?djdpdC9GbUdFYXRCN2s2M1BSY3pYMXVjckw4NGxYcGlWUVVmNzBuMU91OElY?=
 =?utf-8?B?WEtwMndRaE1lQk5zN2lmcXIrb09YamZjNUFnY3lRN3JaQnQyK1B0S0N6YXlZ?=
 =?utf-8?B?aGF4MUp1UUpBdFBIMnJtR2hDMFFGTFE2YzQzS2sveHRDMEJGdm83bGRrY2JR?=
 =?utf-8?B?anArOUlsaENQVXNpTCs5TzMxTWZiRm5MNURFTFVBMUxQS0tSbXBHMTFadGxY?=
 =?utf-8?B?dFdZTDk3M1BTTzJYY0JETlN3eE9KV3lZc0E1WlhFbDd3cXFKSTJobGJFTDJa?=
 =?utf-8?B?d05aTit2Q01XeHVtSExvblRNekNnWWhBVzJvWXNra1ZPZnhrZWx6UkJvcTJz?=
 =?utf-8?B?aFpzeUdhQU5iQ2ZsQXEvd0l6REgrOERNRlVYY2d4WEwvb1VRdlZwWnl4RG9Z?=
 =?utf-8?B?bzUremZHbTFXeFhTclV6Mmxmcms2TjB4QVhwczNYNnFJMHp6Ukt5ZGxnQXhl?=
 =?utf-8?B?ZG1xWTBwTnBWVXE5VXRJMXFQNUpoUzRnY09pUzQvaW9VdnpET1haODNSR3JI?=
 =?utf-8?B?T25lYjIzMzhmSUEvdlh5bGd1QWtGMUtEVVBXbjNnTnlpZzhYSTR0WVFYd2pS?=
 =?utf-8?B?NmdYZzA1LzJrZ2xLWTlEZGUvcm1ibXZpT0pXTStDK0c0RGlnSkNNL2owNHJZ?=
 =?utf-8?B?a2NrVit4OE5QZW9PclE1NkF5aE9ReFJMVk9QVW5HbEVGK0EzS0hjWHQyZDNq?=
 =?utf-8?B?d1ZPV21XQUZrRmFIeWFqWTh5WGYwalZLcGdVVW12NDAwdDliMFV4aGVJM1k0?=
 =?utf-8?B?dW5pR0tCMzRDUHU2VitMQlpFTEhrYnZqSytkRFZYWGROOVBKZ3I3RVdpWWdr?=
 =?utf-8?B?RDIzTnpINTQ4N3RoS0d3c0QzMTUzdnpKdERQMVpiR3JQbi9Ga2RySTBEbkZV?=
 =?utf-8?B?Y3JSVzBzNXE2NUY4WE8yUkIwTm5mZ1QwckRZbUdudUlZVVlIa0FRcHM2Rmlz?=
 =?utf-8?B?R0d5VHhDeFN2TWY0cndBRTNVaS9UYTNicDE4aHF0Rm5TMVlCTWpoa3o0NjB0?=
 =?utf-8?B?THMydHBsVTNzWmhJbVNDV3FNR043NDRpUWVNMFd1WnE3ODFPMm9ucGJ0bGxX?=
 =?utf-8?B?VVE5WVBteTZSQllqRnBuc2NYM3pYTHpBTWpadXoycklyMUJhdWY2MEJUWnk0?=
 =?utf-8?Q?owNSKUrGjHmA+n4FNXDDg/urfqjIqkq20byCY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzIzOVd5M0J5ckEzU1Mxc08yNE1ubm9VbUtUS29lOC95cU9tNHBQbzczeWw5?=
 =?utf-8?B?RGVBRi9McVdSTEMwSnFmOHVCWndYMzltUjU3aUhBcGVvZmdHcjJJZmR4TWNr?=
 =?utf-8?B?RFhRTDdab3FtaHRPVnRQd2U0bmlXSGh2eTFBaVpTSWhtK2s2dVhxUXhMeTZ3?=
 =?utf-8?B?ejlGbGhub2IvNXIrTnB0bVVwbUJOMldFZkZDbnkyenpod3Q0YUY0ZXJicVdU?=
 =?utf-8?B?OGZqa3d1T2NTNGpGYTlLSUt1QzlRYVp6aUE5S3gxSTVYT2RIZkprNElRUGo2?=
 =?utf-8?B?V1QzUWR5UjU0b0dZSytOMlJzc1p4RklieFNMYmVkWEtEMVAvYWN0MTcveWhP?=
 =?utf-8?B?ZDhRUUU2MzFFY3ZFVHZ4RC80ckpjaHNwbytHYmsreHkxOEltNTNFWUkwaWtk?=
 =?utf-8?B?WEo2NVZSWHNRR2VyL1JIRWp3N0VVSUpuME04V3U0U25ud0dsYy8velUzMVBi?=
 =?utf-8?B?VS9lWmNVYkdTTXhvdWluZnBxZzRLbEw1OGIrTFUxd0szK3FCS1JuNC9Rc1B2?=
 =?utf-8?B?ZzJiT3NXa0pVbnd2aHV5S1lXK2wweEdkMUw3Vlhzb3lBMVE1SmVnWUVvdnZ3?=
 =?utf-8?B?YWNzcjA4SGlnYXp5N3FYZ21ibEUxaGhYWHJpUFdaZ0doeWtGN2dwRDlreEMz?=
 =?utf-8?B?K2FiZHhieUR0Ty8xTzZsY09tZzUxalBpVVRXZlRHMnVQUnY3eldFOXBOOFU4?=
 =?utf-8?B?ajhjdStuNDFYbHFtTDIrWmFqY0I2Q0JGTjVuWUp4UjJqZXZZYkZXOXhuNjBz?=
 =?utf-8?B?ZXRXZzVsMDhhZlNMMHRrLy94N2k0b3BMVVMrNllRYWM4dWxsQnhGTEIwelpF?=
 =?utf-8?B?bzhyTXd3YnE5ZGszMUNnTEJndTVCMEpMdWhqMmt5Tm15b3hSRGVCNmtPTFdY?=
 =?utf-8?B?ck5ON1B2SEJqSTR5T2hLMXl5MUo0Sm9HRnFYZlV4eEtJTEIxTVk1cHpwZ0Zi?=
 =?utf-8?B?dVlOQUpwbzR1ZUpuTFMzeUx5dzRITmRTdkQxbE94dEdkYWxMUyt3NVlYbHBO?=
 =?utf-8?B?WTVwUG5saTFkV2JOV1YyeXgrZTRYUEVjcVh0bzZqR2tVUlNUUzJUSWRSUE1j?=
 =?utf-8?B?MGp1MEwvVWJLTGd2ZlZ4QWUwYU5RdFJLQVI5cjRobG81dWxpaDhBTi80Nnda?=
 =?utf-8?B?RWlMQ1l5M0tvQ0NiUmk5aDF5TGlxVVdCRCtkYmE2ZWV2TlB5Kzd5REkxS2ht?=
 =?utf-8?B?cEZQMFNpOXBBTnRhcWVVcUd6RkhQcjMzWitsT2Q1Q1lickd2bkNxSnIxMS9Z?=
 =?utf-8?B?WHliUS9hUkdEb1BRRzdJV3BJYkF0L0F3dzFTZCtlaVdheTdDL0ZqRzlkc2RP?=
 =?utf-8?B?MS9HeklHbUpCL281UnpoWlJZejFoUnI5amYyQmo2TGhGbWJ6TGNRZnhtY1hr?=
 =?utf-8?B?LzJiWE1pTDNQeElONnlzekgvZHVqQS9EeDhoa0N2U3VYUnpCVkVhRGtoNWJX?=
 =?utf-8?B?aXgxVGZkUVBTUFFVMzhDVHJKVkFvVWg1eC9sNi9xVGN5M0F6a0dpVjUySDlH?=
 =?utf-8?B?K3dJSlhGbUd2S3Jnd0daVG5pRU5uTmdCTXFEOVM3Yy9qZEU0ayt6b0ZLSEVl?=
 =?utf-8?B?dEViSlBQTlJoZGlUMVBhZzhNcWw5U1k1UzlDeGI3MWVGaXAraUFnZXFYNzlZ?=
 =?utf-8?B?elJLVHhzVmtOampkMFdzR2s4STFHVzJaOWhaNGV2RUpzdWNIU0tHalZMMmVE?=
 =?utf-8?B?amp2VzU5T1NjczhXcTB2ay96UWVsc0RoUi9wUkdXSzcrUjZFeXJablBoSnh6?=
 =?utf-8?B?L3FRSm1jNVZ2ZlpLcG9HUjFJTVN0Y1h5cFRld3NyMElTRU5rcUtqR0kvcVFX?=
 =?utf-8?B?aHBhM1NBSjhuOHNGclNZUjk0VVBkSHZjdXFvV0hMbTRmbG9sWC8wWWUyMXM3?=
 =?utf-8?B?NjNkcVlmZGp6WXhXL3llNVo4dkZPZGl0dVlrZWkxa0RKbTJyUzk3azNOTW9R?=
 =?utf-8?B?d3FOWC9EZzJKWFpsS0Z1Q0g5THlBOEZWd1NKSklEM2hTeUs5VlhHbkhkN21D?=
 =?utf-8?B?b3FhZExXRjRDdkxCMTV2a09WOW4yOE41WU0xdUZpdERsWU9hTVlURU0wdEcw?=
 =?utf-8?B?ZkM0dWdYRXppb29tNnpVaUNiOEZTTHBlWmd4QTRTdFBuR0FVeXJhQS9Mc1ZU?=
 =?utf-8?B?a00vWTRwTzZCWlA5d2JSLzkweSthM0tSeGJGSkhQdFh0VERWa2RjYzhKNE5p?=
 =?utf-8?B?elE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f60f143b-2ffe-42e2-ab4e-08dc9c1885a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2024 11:00:31.4615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fw12UUWkrX26+jzZem4V3Ckidpk8BjBsP5RAn7/fhfmD64Fw2AE/tRlVDUjTSkzuF0LzrqkGRLwbNV+9DQ+mCXEsjt1pU8hGI1ITWr49aeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7979
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM0OTA2LyAt
IHJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNClNlbnQ6IFdlZG5lc2RheSwgSnVseSAz
LCAyMDI0IDE6NDYgQU0NClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcgRmku
Q0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogRHVtcCBEU0Mgc3RhdGUgdG8gZG1lc2cvZGVi
dWdmcyAocmV2MykNCg0KT24gVHVlLCBKdWwgMDIsIDIwMjQgYXQgMDY6MTM6NDVQTSArMDAwMCwg
UGF0Y2h3b3JrIHdyb3RlOg0KDQpIaSBDSSB0ZWFtLA0KDQp0aGUgZmFpbHVyZSBpcyB1bnJlbGF0
ZWQgdG8gdGhlIGNoYW5nZXMsIGNvdWxkIHlvdSBjaGVjayB0aGUgY29tbWVudHMgYWJvdXQgaXQg
YmVsb3c/DQoNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogZHJtL2k5MTU6
IER1bXAgRFNDIHN0YXRlIHRvIGRtZXNnL2RlYnVnZnMgKHJldjMpDQo+IFVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzQ5MDYvDQo+IFN0YXRlIDogZmFp
bHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJv
bSBDSV9EUk1fMTUwMTMgLT4gUGF0Y2h3b3JrXzEzNDkwNnYzIA0KPiA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+IA0KPiBTdW1tYXJ5DQo+IC0t
LS0tLS0NCj4gDQo+ICAgKipGQUlMVVJFKioNCj4gDQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5n
ZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzNDkwNnYzIGFic29sdXRlbHkgbmVlZCB0byBiZQ0K
PiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0
ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAgIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNDkwNnYzLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
KEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAg
dG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxz
ZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDkwNnYzL2luZGV4Lmh0
bWwNCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQyIC0+IDM5KQ0KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgQWRkaXRpb25hbCAoMSk6IGJhdC10d2wtMiANCj4g
ICBNaXNzaW5nICAgICg0KTogYmF0LWFkbG4tMSBiYXQtanNsLTMgZmktc25iLTI1MjBtIGZpLWVs
ay1lNzUwMCANCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVl
biBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzQ5MDZ2MzoNCj4gDQo+ICMjIyBJR1QgY2hhbmdl
cyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXhlY2xpc3RzOg0KPiAgICAgLSBmaS1ic3ctbjMwNTA6ICAg
ICAgIFtQQVNTXVsxXSAtPiBbQUJPUlRdWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTUwMTMvZmktYnN3LW4zMDUwL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVAZXhlY2xpc3RzLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0OTA2djMvZmktYnN3LW4z
MA0KPiA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0cy5odG1sDQoNCk5vIGRpc3Bs
YXkgb3V0cHV0IGlzIGVuYWJsZWQvZ2V0cyBlbmFibGVkIHVudGlsIHRoZSBhYm92ZSB0ZXN0LCBz
byB0aGUgY2hhbmdlcyBpbiB0aGlzIHBhdGNoIGFyZSB1bnJlbGF0ZWQgdG8gdGhlIGZhaWx1cmUu
DQoNClRoZSB0ZXN0IGdldHMgc3R1Y2sgaW4gdGhlIG1pZGRsZSBvZiB0aGUgYWJvdmUgdGVzdDoN
Cjw2PlsgIDQ4OS4yMDk1ODldIGk5MTU6IFJ1bm5pbmcgZXhlY2xpc3RzIC4uLg0KPDY+WyAgNDkx
LjgyOTA0Nl0gaTkxNTogUnVubmluZyBpbnRlbF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMvbGl2
ZV9wcmVlbXB0X2NhbmNlbA0KPDM+WyAgNTU0LjgzNTc4NV0gSU5GTzogdGFzayBzeXN0ZW1kLXVk
ZXZkOjU1NTIgYmxvY2tlZCBmb3IgbW9yZSB0aGFuIDYxIHNlY29uZHMNCg0KSSBmb3VuZCB0aGUg
Zm9sbG93aW5nIHNpbWlsYXIgaXNzdWVzIHRoYXQgaGFwcGVuZWQgb24gdGhlIHNhbWUgbWFjaGlu
ZSBhbmQgdGVzdCwgdGhvdWdoIHRoZXkgaGFwcGVuIGEgYml0IGVhcmxpZXIgaW4gdGhlIHN1YnRl
c3QsIHNvIG5vdCBzdXJlIGlmIHRoZSByb290IGNhdXNlIGlzIHRoZSBzYW1lOg0KDQpUcnlib3Rf
MTM1MDUwdjUvZmktYnN3LW4zMDUwLzAvZG1lc2cubG9nOg0KPDY+WyAgNDgzLjg1MzMwMF0gaTkx
NTogUnVubmluZyBleGVjbGlzdHMgPDY+WyAgNDgzLjg1MzM2N10gaTkxNTogUnVubmluZyBpbnRl
bF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMvbGl2ZV9zYW5pdHljaGVjaw0KLi4uDQo8Nj5bICA0
ODUuMDU0NDE0XSBpOTE1OiBSdW5uaW5nIGludGVsX2V4ZWNsaXN0c19saXZlX3NlbGZ0ZXN0cy9s
aXZlX3RpbWVzbGljZV9wcmVlbXB0DQo8MD5bICA1MjEuMDAzODAzXSB3YXRjaGRvZzogQlVHOiBz
b2Z0IGxvY2t1cCAtIENQVSMwIHN0dWNrIGZvciAyNnMhIFttaWdyYXRpb24vMDoxOF0NCg0KUGF0
Y2h3b3JrXzEzNTQzNnYxL2ZpLWJzdy1uMzA1MC8wL2RtZXNnLmxvZw0KPDY+WyAgNDg2LjY1OTI1
N10gaTkxNTogUnVubmluZyBleGVjbGlzdHMgPDY+WyAgNDg2LjY1OTM1NV0gaTkxNTogUnVubmlu
ZyBpbnRlbF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMvbGl2ZV9zYW5pdHljaGVjaw0KLi4uDQo8
Nj5bICA0ODcuODQ1OTgxXSBpOTE1OiBSdW5uaW5nIGludGVsX2V4ZWNsaXN0c19saXZlX3NlbGZ0
ZXN0cy9saXZlX3RpbWVzbGljZV9wcmVlbXB0DQo8MD5bICA1MTcuMDA3MzAyXSB3YXRjaGRvZzog
QlVHOiBzb2Z0IGxvY2t1cCAtIENQVSMwIHN0dWNrIGZvciAyNnMhIFttaWdyYXRpb24vMDoxOF0N
Cg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBnZW1fbWlncmF0ZToNCj4gICAgIC0gYmF0
LWFybGgtMjogICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdDQo+ICAgIFszXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTUwMTMvYmF0
LWFybGgtMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGdlbV9taWdyYXRlLmh0bWwNCj4gICAgWzRd
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0OTA2djMvYmF0LWFybGgtMg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBnZW1fbWlncmF0
ZS5odG1sDQoNCkFzIGFib3ZlIGRpc3BsYXkgb3V0cHV0cyBkb24ndCBnZXQgZW5hYmxlZCB1bnRp
bCB0aGUgYWJvdmUgaGFwcGVucyAoSSBhc3N1bWUgbm8gZGlzcGxheSBpcyBhY3R1YWxseSBjb25u
ZWN0ZWQgdG8gaXQpLCBzbyB0aGUgY2hhbmdlcyBpbiB0aGUgcGF0Y2ggYXJlIHVucmVsYXRlZCB0
byB0aGUgZmFpbHVyZS4NCg0KVGhlIG1hY2hpbmUgaGFuZyBzaW1pbGFybHkgZWFybGllciBpbiB0
aGUgc2FtZSB0ZXN0LCB0aG91Z2ggYSBkaWZmZXJlbnQgc3VidGVzdCwgc28gdGhlIHJvb3QgY2F1
c2UgY291bGQgYmUgc29tZXRoaW5nIGVsc2U6DQpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV8xNDk5My9iYXQtYXJsaC0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAZXZpY3QuaHRtbA0KDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4gDQo+ICAg
SGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzNDkwNnYzIHRoYXQgY29t
ZSBmcm9tIGtub3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMj
IyMgSXNzdWVzIGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGttc19jaGFtZWxpdW1fZWRpZEBkcC1l
ZGlkLXJlYWQ6DQo+ICAgICAtIGJhdC1kZzItMTM6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtBQk9S
VF1bNl0gKFtpOTE1IzExNTUyXSkNCj4gICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTAxMy9iYXQtZGcyLTEzL2lndEBrbXNfY2hhbWVsaXVt
X2VkaWRAZHAtZWRpZC1yZWFkLmh0bWwNCj4gICAgWzZdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0OTA2djMvYmF0LWRnMi0xMw0KPiAv
aWd0QGttc19jaGFtZWxpdW1fZWRpZEBkcC1lZGlkLXJlYWQuaHRtbA0KPiANCj4gICAqIGlndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWM6DQo+ICAgICAtIGJhdC1hcmxzLTI6ICAgICAg
ICAgW1BBU1NdWzddIC0+IFtETUVTRy1XQVJOXVs4XSAoW2k5MTUjNzUwN10pDQo+ICAgIFs3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTUwMTMvYmF0
LWFybHMtMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwNCj4gICAgWzhd
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0OTA2djMvYmF0LWFybHMtMg0KPiAvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNp
Yy5odG1sDQo+IA0KPiAgIA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4gDQo+ICAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X2hlYXJ0YmVhdDoNCj4gICAgIC0gZmkta2JsLTc1Njd1
OiAgICAgICBbRE1FU0ctV0FSTl1bOV0gKFtpOTE1IzExMzI4XSkgLT4gW1BBU1NdWzEwXSArMzMg
b3RoZXIgdGVzdHMgcGFzcw0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE1MDEzL2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQGd0X2hlYXJ0YmVhdC5odG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ5MDZ2My9maS1rYmwtNzU2DQo+IDd1
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4gDQo+ICAgKiBpZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtZGcyLTExOiAgICAg
ICAgIFtETUVTRy1GQUlMXVsxMV0gKFtpOTE1Izk1MDBdKSAtPiBbUEFTU11bMTJdDQo+ICAgIFsx
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1MDEz
L2JhdC1kZzItMTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAg
IFsxMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzQ5MDZ2My9iYXQtZGcyLTExDQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzLmh0bWwNCj4gDQo+ICAgDQo+ICAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJl
c3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nDQo+ICAgICAgICAg
ICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlM
VVJFKS4NCj4gDQo+ICAgW2k5MTUjMTAyMDldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMjA5DQo+ICAgW2k5MTUjMTAyMTJdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMjEy
DQo+ICAgW2k5MTUjMTAyMTNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEwMjEzDQo+ICAgW2k5MTUjMTAyMTRdOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwMjE0DQo+ICAgW2k5
MTUjMTAyMTZdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEwMjE2DQo+ICAgW2k5MTUjMTEwMzBdOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMDMwDQo+ICAgW2k5MTUjMTEwMzFd
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVz
LzExMDMxDQo+ICAgW2k5MTUjMTEwMzJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMDMyDQo+ICAgW2k5MTUjMTEzMjhdOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMzI4DQo+
ICAgW2k5MTUjMTE1NTJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUv
a2VybmVsLy0vaXNzdWVzLzExNTUyDQo+ICAgW2k5MTUjMzcwOF06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMzcwOA0KPiAgIFtpOTE1Izc1
MDddOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNz
dWVzLzc1MDcNCj4gICBbaTkxNSM4ODA5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy84ODA5DQo+ICAgW2k5MTUjOTMxOF06IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvOTMxOA0KPiAg
IFtpOTE1Izk1MDBdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzk1MDANCj4gICBbaTkxNSM5ODg2XTogDQo+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvOTg4Ng0KPiANCj4gDQo+IEJ1
aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIExpbnV4OiBDSV9EUk1fMTUw
MTMgLT4gUGF0Y2h3b3JrXzEzNDkwNnYzDQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0K
PiAgIENJX0RSTV8xNTAxMzogMDMxOGExMmZmNmZiOGMzMjE0NThhYTJiMzczZTkzMjI4OTZlZTk1
MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF83
OTA2OiBhZTkxYmEyNmY2NTdiZjExMjY0ZjY0YmQyZGMyMWY0NzFhNWQxOGY1IEAgaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNod29y
a18xMzQ5MDZ2MzogMDMxOGExMmZmNmZiOGMzMjE0NThhYTJiMzczZTkzMjI4OTZlZTk1MSBAIA0K
PiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+ID09IExv
Z3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0OTA2djMvaW5kZXguaHRtbA0K
