Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F069D3382
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 07:22:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E490610E390;
	Wed, 20 Nov 2024 06:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJ4vrFiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D4C10E390
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 06:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732083770; x=1763619770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eALHILB+C72U2NNimjO6bsycfz3vI8uOov2U8Qfcw5I=;
 b=IJ4vrFiuSopmcR1zH2IIQ0+me0umbq4WNCKUKvluFRE6PL6ofQFfy+Fi
 tvUvE4QWbnBXDZmitWKGbcVD9/iMhA1JY8aUgz7r7rI+IctE7Ua3MbcxS
 ilnQDZce6fqU5EGmExiC/lyQ2os7Cu50mnyGK1KDtRODSaYxjow0JSnS9
 QUkv2a/Ee9sovRU49uJUYGAxlVaIFJYnoezGuObkJhd/baHwzzDHM7Geg
 U2/KdU/5LvGqCQzKVppEkAFbncbqWd47/wmd3zIXRh7Ow6OZdm8iE8f0I
 kS4LM6rYEc+VoeXl9I4E1Ibx0Cc6Hc6tTPlpHfUFheOCm3bOFCwejugJV A==;
X-CSE-ConnectionGUID: JmKqIvrgRNyIxLH2j+o5bQ==
X-CSE-MsgGUID: DtRttYqiQ1O6C3KJ3/nbdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="49655605"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="49655605"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 22:22:50 -0800
X-CSE-ConnectionGUID: NVxQec8vRZiK0SfYsXdv7A==
X-CSE-MsgGUID: 2urosHMfQBGZ5P0mR+MD1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="113086181"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 22:22:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 22:22:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 22:22:49 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 22:22:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Af9L/OVaBDLmaePZ7/1CKhq5iKWTYrQHuLXJEpBf8bMM5DWx0QVWXKsevPapquzwnM/N2PKrKR4m4CGf3RtkBIAjoDU/pf/fITl5iUKLBMuQ+Ptq2D3ae4YlM1ZuPnDSPvGaqVFDwHWA4rPmeLzby+C5RIFQm0TIi+lqy+EIVSqbZQVw/q1vxi5QE9tXB3w7CFYtKyk8Oe5Kg0rOSjhTD4sG6cARCIOq2Dx5bWQ5FwQe1t1ZsmOT2tbfcnZPHM/zGhcC+QROWMS/f5c6N/mL1VwhhqIVj/bo87QTYElMuaWhEkDnWPDXeUc9KOnQo8vFVgB/ZsxulAnbFIUJ9ygFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eALHILB+C72U2NNimjO6bsycfz3vI8uOov2U8Qfcw5I=;
 b=cm9Dgt9uJNGxMuDyDl3SSbOgoPcy1x3N6Gq6rj/ekWVkimYppcqoK9luxxBalcgRazV/xhnKc82sNK4EchzszWiPHfvUs1nAYFXiP19BGfibikqtRu5It7tCEoasTraQwls99Iidu38xOtgihdRxHmq3xWfNogowkmBJmoKVQMaRrx4Ot/tZop6NVYqUGbhFrIX25GQNnWpssl2xfPrYHQ0GCr+hVtGaVZgBuoMr+3BQmUTm5rQmp2Wd+/IWFfk8jR/UU6o8RU156DxzFVCoJ1FDipSeVNGLcEAiNXUDgpWraTosHMhezApTfozWNBiwKrxKBTxK1hxIgaG+dX7LZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB8436.namprd11.prod.outlook.com (2603:10b6:610:173::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 06:22:47 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 06:22:47 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 2/3] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
Thread-Topic: [PATCH v3 2/3] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
Thread-Index: AQHbI6bt3IK8Ta/XqUKDdXqMTr6VMrK82HGAgAMJRPA=
Date: Wed, 20 Nov 2024 06:22:47 +0000
Message-ID: <IA1PR11MB6348693E107C451FAD9EDB48B2212@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-3-mitulkumar.ajitkumar.golani@intel.com>
 <e5edb88d-71b2-47c4-845f-b136f6133ce1@intel.com>
In-Reply-To: <e5edb88d-71b2-47c4-845f-b136f6133ce1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB8436:EE_
x-ms-office365-filtering-correlation-id: b1d02bfe-538b-4f2e-bcf6-08dd092bc073
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TXVIOUVremRkem1Qb00xbjlnV25CcGhUanVJVldEcUtuMmFFU2RQSEt6WFVH?=
 =?utf-8?B?SEp2OGhnWDlhRWNnanZxUElodmJQd1c1ZDJBUG40cHB6WGFUTFlSRDdwdjd0?=
 =?utf-8?B?SnU4TFpsL0svN25kWlduMHBnbXdEVjd1QUhnZUt4Y3hRcUxEYWYzaUdWa0pk?=
 =?utf-8?B?YW1BT2llbjFhUlhZMVZodFk4dGZMYUIxSmNyNjJRUFFQL1VnaFV5MHBHY3RO?=
 =?utf-8?B?YllYQnNmdkVXNFYvZmNOREpsTFVEWmwyTjBuRERMV3p4M25wNTBQTjJyUmpL?=
 =?utf-8?B?SWprUWp4clBxaTBjcEppZDlNTVJMNTR5cTk1QzZaOE45Tm0waE5RaXp3VG5F?=
 =?utf-8?B?SUZVbm9pSWVPUS9RMzZPV09IMDJHS21ocUlmbWhxSXpsWkU3dzFGMnpmSlJD?=
 =?utf-8?B?dGJRK0o1dXRPbUhRUEMvWFZuZFBJZXU2NWc1YlVMVS9ORGdidERqOW0zM2c1?=
 =?utf-8?B?amRFSUQwRm5kMVpCMnhJWmIzL3dscnZhSnBpUFhLckt2OEJJWXFVcWhSOU13?=
 =?utf-8?B?bjVFSGcrczlvRUxUbFpKZlpDbW81TFBqTEpEWDBqY1dKbmpMQk1tOG1lTjJU?=
 =?utf-8?B?bHVyaC9jSW1XcUdYeFBwMW05eEMvNTNHL1NVc1hwdVpxdWtjMmR6bmYrVUpt?=
 =?utf-8?B?SUNFT1d1SHRmR0JNeXVCUU53ekwydk5xc1BlV0dydktHd29vamlJNjNTWnM1?=
 =?utf-8?B?RjRJK2dOWHBycmJqL1VoYzlva1dlSE5FNk9zbjFqMDRqNWRiakxwK0RESjBW?=
 =?utf-8?B?Qks2cTRjcXhnNVdJbVBQcldpbnFldW5yMEhrS1ZKMG5WRmJFajJJR0dtMk1q?=
 =?utf-8?B?Q3g4bTU3UmJ1NVljZmZhZjVLcDBXNHR5TlJ3OGQ5NGJuWlVkQ25HNDhaM1Bp?=
 =?utf-8?B?bFpHQjkwTTVCeDhzSllRU0dJS1JXUlEvWWJTRlVBNTRGR0FzYXBHTlNYVWZx?=
 =?utf-8?B?MEkyQ295VFVpeFVZV0JRWkE2c3BNWk5rS2UvdWwrOXR1Wmc1M1kyZEFHSW9C?=
 =?utf-8?B?ODhja0NvRmNqanYwRDFiQmdJOTVmR3lhakVTbmU3N0RWSEg4UkthSEJrc3V4?=
 =?utf-8?B?K3NJWDVoZG9OR1l5bWloQ3Jvam14aFlCVVdidjFLWk9sajBqMkc4YVY0cC9k?=
 =?utf-8?B?eFhpc29CYlNVT09LN2J5ZzMyaHdCOHdFRmhvdmVQZWhQaXlaNUQ4QUYzNFVh?=
 =?utf-8?B?dHpHTmVWRXR4YWlicktVRS94alBvR1dtd3pWMCs1ZHF1dEpUdDVmcGZyQU13?=
 =?utf-8?B?d1NiUHMvVk9jb2hWdURqQnQ1K2srbU5jemRJRWtjdCtTaVpuWnlwL2Z0WGZm?=
 =?utf-8?B?ejBWSGFpTkgzeFQrbGVsNXJKcUNFTVZYUkJtTnlNVzlib20rZ1hrZzhyQ1ZK?=
 =?utf-8?B?d0k0aVBITithZlpWckc3OU5XNU8vUVc1dzBvYWxJS2R1VGxEMkFmRlplS2JG?=
 =?utf-8?B?VnJTWlNoYVVKQUl0TjBvUmdtY3pRZ1ErblBOWXYxMHdFWFM0UU9UVWJZM05O?=
 =?utf-8?B?UHd6N3NTdlJacnJidC9ncVh5azVaQnYvekhxaHBjVlRpNGxERmVRRFFkbnhv?=
 =?utf-8?B?Q1Y5RDZOK0hCbGFHbEZySVNTa2ZRTUwvMHJ6UzRVQU1oY0ZWUzlYU3hiZVRV?=
 =?utf-8?B?b09PdmRhQ0lDM2NjMGF1QzNUMHpweWZMN1NJVGJ1T2RtU2c5cmZ0R0dNbEU4?=
 =?utf-8?B?OWh2TUFUVjBnS1BUZ0NlT09xMkQwbU85Nlc2d3A0NElFNHVrdXJvOXU4K3Zh?=
 =?utf-8?Q?0ClmtM0wFQYQJ+EJ8A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVl5MHhRdVJtOUFIQ2x5UEgxYW5xU0JScnhIYlJOM3dBMDJ4V2ZZWUZjQlkv?=
 =?utf-8?B?ZEY3cmd0aHdvMWF3R1F0c1BmR2E3VVg5RkEwR0k0Q0Z1ZVhTZUsyT2RrODdt?=
 =?utf-8?B?dS9xWW42dTV6SFl0d0d0Zkh6NzBNbGhSb1JzbStEaE91MTZoOGZ5M0lONS9P?=
 =?utf-8?B?UEdEUVFDdDI2azhla2pOVjVhZEdqRTFlZmVlaXNwa3VvaVBkYzhBY1ZBbmFX?=
 =?utf-8?B?ZUgzSUZYOFJOcXhzck1qMkU2WjdWM1RGQmFQU1Y5L2xrVi9ySHRvWFIxeWUv?=
 =?utf-8?B?LzdMaUkwemtxeFhuUEVoNEREd0xNaFJOaFJiMVc3bk9HVWdXTmQ4QmZueU9Z?=
 =?utf-8?B?eE04emV4VXpwNVdhTXIvT1pOZFNzemJScVhXUUpQUlhjN2NERy9FSmVIbEdp?=
 =?utf-8?B?dTdKTVdGT3dhdzRVQmlKZUVnSEJoSzdKSktJa2J2UnhRUE01V2RRZ2lLUU12?=
 =?utf-8?B?aUNxN3JsNXdVUzdQTnQ1dkZNdmVGV3U1blVxcFlaSm9CWEllemlYVEVabjVa?=
 =?utf-8?B?dTVRRkJDOUxvZ1o1amRwRHhGM0ZXMERYcy9UanpzNWM4U0JhZHd3NmlZZUFY?=
 =?utf-8?B?QjdNd3RFS0Zpa0xWb2R1QmdYSkZBalRrK3FvZ3F6L283M0ZTa0JiYzRibkZt?=
 =?utf-8?B?bFQ5QUFXeXJDYkhRMHFmbis4S3NqdGxWWlo2MGtpK29pZFhFWForQTgrbE1s?=
 =?utf-8?B?elpYUkxhSUY4UExjQjJ0VERsWFFncHVacHVFNkJzZUVZaHZQRlJ3S1dFRmhs?=
 =?utf-8?B?Smx3NVJzTlJaVkRORHN5UjlMNlM5aXdkbkUzd2RjM1VHWGJrQzZCSGRCLzIw?=
 =?utf-8?B?Q0tuakhsSVhTeWdBcXE0a2FqVFBCQzFwZ1J5VFRoWVhZbFJmSG0vZDlkeUpy?=
 =?utf-8?B?OHNwa0xjb2diNkNKampvU0IyQVVuVHVmNCsrUGFRdmMvdTV3NkswUHFqZFo5?=
 =?utf-8?B?L1N6ZzZkVzdlL21JSjQyb1kvL3hRb2loZnc3NzU0c0VlclBPYk56aE5vczll?=
 =?utf-8?B?WlJpbGhCQTlmamYvMU5zK3J4OHdOa1MzampVRUpHazBUQTRneTNTdGZIekt4?=
 =?utf-8?B?WXdTbDdWQmhOOEovQ3JoZ3hJcDdINGNRWC8renF2Z0M4b2RTbm1UNkJoN3Bk?=
 =?utf-8?B?dkxZM0VESE9xM2VXekhDNEs0TkpWT09qelNiY0E2OGhvVGxGUVgwZXBWaFh6?=
 =?utf-8?B?K2xsMjFyRHRMRUJSVVZXb3k5eDg3Y2ZrZnRVdHJrajRJRVdTZTltSG9XajZR?=
 =?utf-8?B?cTVBSkZUVkFJZ3FQamo2Z3UzRzAwMEpDTlphMjNweUpmWE5pdlcrUVZ6dHdC?=
 =?utf-8?B?NkVncXRmNHpqYUFaM3ovenQvc01SU3pVOVBaTHdPOGZOdXVycDJWai92TllL?=
 =?utf-8?B?Y3QrYnNtUHA1RkxvbXhOTFFIQnVNQ0FQWkdGdGVFZnh0UHFnYmZibHo5MjJU?=
 =?utf-8?B?d214TE5ZRlo3aXpuajl1VThyc2tycElZc2loaVlCbEZSdk9HYW5JejQwRmo1?=
 =?utf-8?B?Slhudk5pbWU1UXNSU1VlcTFtOG5XeXptQmE4UXZCdTJiNzhhTUcvcC9zTU41?=
 =?utf-8?B?M0IvZnorNzREeWxmR1BhQWNQUEdtMWs0T0hHdWpGYjJzTktPbkpYT3Vob0JB?=
 =?utf-8?B?cldWQjZKaDU1K3VhdlVEZ2pyNStpNElWU0FyRGE0Vk1wbjRlbUtJWDZqUi9C?=
 =?utf-8?B?WVVFbDdyYTRtNlB1TjdZS28xcDdhTmgreG9UVDVUb3poZURXcEtlQ3NCTVhB?=
 =?utf-8?B?c0NZTWVEcUwzS1J4UmQxR20zYkphQXpySkZYWkQ4VDRneFVQY0pDTjZNaUxp?=
 =?utf-8?B?L3lwU1BEdUJjVXoxYXpUUGdocXFDdzk2SW5jTE5VNHZIZkxxMUk0aGxCU29J?=
 =?utf-8?B?TS9PQ2kyVTkvZUgrcEhCMUxnUjZSMXJSOXdFb1AvcHQ0NWh2ZGZHMURQSXBV?=
 =?utf-8?B?eWx1Z3dUbUVybzFUNG5zV2VMbjg0anVBQ3BKeXhqQ0NlekZDZS9DMjRGSHlO?=
 =?utf-8?B?TW1kTFNZc051eHNIQUtvdlhhanhZWUZ4S25wRHJFYVplRzZoQ1lTYUlrUm0r?=
 =?utf-8?B?WkpQdld4N3hKUVJ5bmVHOWhoWFBlNFVvanRRVytVenIvbjNQTGx6SG9hMzBY?=
 =?utf-8?B?QnZtZWZtSnRIM2JHUnVmdDVtTTZQaE5sWURYVWlXS003Z3NKZ2VENlMwOXdx?=
 =?utf-8?Q?w+Sh/dNxl4yV9wdOGbrQKB4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d02bfe-538b-4f2e-bcf6-08dd092bc073
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 06:22:47.3305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A2l3VmLPrXkg6CALq0+kTE08Z4hIjgr/k909p2uRzvvLE1opm2VI+hBf4q98vwBuYZOhZ8B6gduOMYV3Wva7XDky++e4jm8QW0gjUVIM4h7ToSt4/t5yvT40qAynnlxy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8436
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAxOCBOb3ZlbWJlciAyMDI0
IDEzOjMwDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gU3ViamVjdDogUmU6
IFtQQVRDSCB2MyAyLzNdIGRybS9pOTE1L2RwOiBTZXQgRkFWVCBtb2RlIGluIERQIFNEUCB3aXRo
DQo+IGZpeGVkIHJlZnJlc2ggcmF0ZQ0KPiANCj4gDQo+IE9uIDEwLzIxLzIwMjQgNDoyMCBQTSwg
TWl0dWwgR29sYW5pIHdyb3RlOg0KPiA+IFdoaWxlIHJ1bm5pbmcgd2l0aCBmaXhlZCByZWZyZXNo
IHJhdGUgYW5kIFZSUiB0aW1pbmcgZ2VuZXJhdG9yIHNldA0KPiA+IEZBVlQgbW9kZSAoRml4ZWQg
VnRvdGFsKSBpbiBEUCBBZGFwdGl2ZSBTeW5jIFNEUCB0byBpbnRpbWF0ZSB0aGUgcGFuZWwNCj4g
PiBhYm91dCBGaXhlZCByZWZyZXNoIHJhdGUuDQo+IA0KPiBUaGlzIGlzIG5vdCBtYXRjaGluZyB3
aXRoIGNoYW5nZSBiZWxvdy4NCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0
aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWl0
dWwgR29sYW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQ0K
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRl
eCA3ZTA0OTEzYmMyZmYuLmIxZjY4ZmZmNTI0ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBAQCAtMjc4NSw3ICsyNzg1LDcgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfY29tcHV0ZV9hc19zZHAoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiAgIAkJYXNfc2RwLT50YXJnZXRfcnIgPSBkcm1fbW9kZV92cmVmcmVzaChhZGp1c3Rl
ZF9tb2RlKTsNCj4gPiAgIAkJYXNfc2RwLT50YXJnZXRfcnJfZGl2aWRlciA9IHRydWU7DQo+ID4g
ICAJfSBlbHNlIHsNCj4gPiAtCQlhc19zZHAtPm1vZGUgPSBEUF9BU19TRFBfQVZUX0ZJWEVEX1ZU
T1RBTDsNCj4gPiArCQlhc19zZHAtPm1vZGUgPSBEUF9BU19TRFBfQVZUX0RZTkFNSUNfVlRPVEFM
Ow0KPiANCj4gVGhpcyBpcyBkb25lIGluIHBhdGNoIDoNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3BhdGNoLzYyMzg5NS8/c2VyaWVzPTEzNDM4MyZyZXY9Ng0KPiANCj4gUGVy
aGFwcyB3ZSBjYW4gaW5jbHVkZSB0aGlzIGFzIHBhcnQgb2YgdGhpcyBzZXJpZXM/DQo+IA0KDQpU
aGFua3MgZm9yIGNoZWNraW5nLiBJIHdpbGwgcGljayBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvNjIzODk1Lz9zZXJpZXM9MTM0MzgzJnJldj02Lg0KDQpUaGFua3MNCg0K
PiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+ID4gICAJCWFzX3NkcC0+dnRvdGFsID0gYWRq
dXN0ZWRfbW9kZS0+dnRvdGFsOw0KPiA+ICAgCQlhc19zZHAtPnRhcmdldF9yciA9IDA7DQo+ID4g
ICAJfQ0K
