Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C938DB171FE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EF310E747;
	Thu, 31 Jul 2025 13:26:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sk3cem4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBE010E796;
 Thu, 31 Jul 2025 13:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753968378; x=1785504378;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ruJhv08rrQOlhYhwRZTXLlFL2adllEe6hB89KGMpu1k=;
 b=Sk3cem4mz+ajrikBxyi2uuq+jIGjJvI4He9u7N4KKWIUtZdhq2pYafru
 4shRXQIvnsxPmd4p2ands2SNyCe7r1L5oCOCVccrVNodrQjeKlE2JpMKv
 MKYdWJDrxyRlrD30NMoHmN8OSzlfINRS+claHPpH8ufhSKvrAM3t1VHd4
 Bz8r/TELWFOUuSbDG3mskM+G6S9XT2H3s4l/MaoBr8LW8r1FqHvCcEoBZ
 ZFxrIof9hdn0QOGqiTlm9f6Pa+A3Y9zXHWD7VumXyih/aifqUy1ZC2oKx
 1w7KhdEPjh2om9hMhDz0VyMVkLd+VfDtAlbSNSoQW9eRSk8oc0/RATCxi Q==;
X-CSE-ConnectionGUID: TL1k/CK/SIm6pVcv1uLnbw==
X-CSE-MsgGUID: fBB9OgLyRWqgxNx8yHkwhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56436145"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="56436145"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:26:18 -0700
X-CSE-ConnectionGUID: T7kjybEVQOWuBEz9KwZu1A==
X-CSE-MsgGUID: nlrW4M7LSF+okRf2oRbrbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="162537336"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:26:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:26:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:26:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:26:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QA98lFVVm1CEZcoWDm2hOXPXlQROitWAp0h2Dlm8tkN3ZBtO+YebrnThy++P8P4GdJNlKFg/1uJREvkYXGk+3EcsEBKB3101/ujwXbXunk0gzpxIpQUKOnQKI66mw8VR4hFKEKer/r6i5Xkupd3QrDuoM1X9ztENwwX59gVJfZ6UATfUC+Bv2ojiKA1EO2+DJVwQhGHyNgF/C2YMUxmyue/F0ZcMLlBsB4F8xwWXIVGU94rxZlEBQ66iKPVyAcbEc8Mx+Kx9hf8PVfhnT3IyAfuYlerhNuB4ZQ6IqSB90Y+ReEPyDG5UrXPkUtTpqygzPLdWt3WzRh0Xt1uynpaIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b02Pb9nHjS6HWgVInUxgOV5YAs5SrThouLQG9dypFCE=;
 b=wo0ovTfNYcTBj71/sa7sTnEOUVIWWjMAZ6Z/gdXGsTllFWJkFiNnwmb5m6Leb5ckbxLIHoerFX9xSUN9ecKv2TaT6AMJHSAaTi5MfPStT/Y4OgwFVNTeE3wKQ/QsIeDvcp3bg4oGqxYzSj+3AM+bkgqj0mGgYPNVEkkcFmhYBQN2jZmYXZUhr6/KNXoZDYrKLJ4IOV+gBtymRe1/47wzg1BK8Deq3KrT5z0/HZXWiamPIPkRunk0YqeGuLLBK3YTNWt/TElYqE5BNE2+uYm6EUmmuSmU3RZda8VuiSqret6NsJC27Apjd0sLrqWF782optmcCuzwFJM+VBhBG8z+Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Thu, 31 Jul
 2025 13:25:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:25:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <154b681d9545b26453920b155656a65ce685da2a.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <154b681d9545b26453920b155656a65ce685da2a.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 5/7] drm/i915/power: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:25:28 -0300
Message-ID: <175396832876.2011.15442644670908737500@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0132.namprd04.prod.outlook.com
 (2603:10b6:303:84::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: 12c2ee2e-455c-4be0-53ca-08ddd035ba34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amx6WlhjUGNQcTBwSTgrbkNlTnBnM1hUcS9OajFWUVhzSHR0Y3llZ3pWemJB?=
 =?utf-8?B?cVdtUS9WNFY3RW9IR29laDA2em41ekVuSEp0NHZqaDR2bkhGVFF3U1RZYnho?=
 =?utf-8?B?RGtTeWp3Q2tEREZHaG4vRmN2MzBzRTcrZ2o3bkgvckJiZnI4VmNjM1lRS0J5?=
 =?utf-8?B?SFZWVW1lVklyUENOSU56VUNYZDVNSE8yWmU1ZUVWTXhUd2Ftb2E1T0g0S3lO?=
 =?utf-8?B?a3FJVDd1ako1QjJaNjZQbmx5SDhCc3lkcytDeVNibjJHUXBOaHhPMWFadjFN?=
 =?utf-8?B?Q0Q4UWtCVmN2bFNEVWRGSkpmU1pOUVJhU2dIeEZXTE9WVlRyMk5ndVBnMU5G?=
 =?utf-8?B?UWQ3c2lJbjFPTjVUOTh1R2E2cXVvZEoyUTExelJsR052ZW5mSnlMUGI3NmpT?=
 =?utf-8?B?em1ncHVsbmZFUUpwYVJ6WStUbXZwUThGTXFMcno2QU5BcmlvNksrREw1QXlN?=
 =?utf-8?B?YWFyYlFwY2xwbDc2MVZGbkFjd1FBWUVlWTFDVWdROGg3dnVTaHB3TnNjMWFy?=
 =?utf-8?B?TUFPSllxQmI4WG9NUTZ4M0l4dTRQTkQrTjRpcHNIaWtHMWFOQUR1dzhPRy80?=
 =?utf-8?B?RGxIN0RYUkh1Ullybm1VZGw3VjZ2cm5sQXkwS0N6NUVrTXZTYzdqa2haVVR2?=
 =?utf-8?B?dlEyWkNwczVNYTI4Q0Y4VmFWTW94UWZsVzRWLzl4N1p4ano1UWM1VnN0YS9L?=
 =?utf-8?B?bEtHV1pyN2VFVUxtY1VRZ3orMHRYczV5RlMrUEZSK1lsYTJVcGs4bGZWZHR1?=
 =?utf-8?B?bFl1YTRrbk4raUJ2eXRLQ0VPL1k1UXdoWmhqaWNTTzFTQlJHejlTOFdvK1hx?=
 =?utf-8?B?YzA2YW5xeVNmNGEyRHVyVCtXSW53K0VQUGlaWm9KZFdUck1vR25vWFNSMUc3?=
 =?utf-8?B?Q2NnVUdtb2tTZDkxVzlrQ092Vmt6eEJFTkhZSUloUjBsdE1aRnRlNTdwWjll?=
 =?utf-8?B?aEs2bVdJQW01T05meE5sTkQ1RkJZNEc5Q3J4UlI0QWpuVm82OXJaSmVJOXUv?=
 =?utf-8?B?VG9rWkt0SXE3NEMzeGcyNk9ZS2Q5RGNETHptemFlNDNRYmtCb0RJcnFIcDZt?=
 =?utf-8?B?SW00aU9aZUcrRVlXYUNzQ1plZkQzQmt6ckZWdWJldGpRRTNLRXUvTUc1SUFB?=
 =?utf-8?B?bHJJMXEvZ0h2d2hOZFN5bVlYeGloOWZoQW9jMHJkL1IzblRtMkRhZW90T2dY?=
 =?utf-8?B?Y2M0dWhwKzJkK2g0SG44NC9QVjF4QjlkSzNVbWVrdmhJNG5ucnEweGg5UEN1?=
 =?utf-8?B?Z09tdXRjeUJqYWQ5enltN29FbWdkSFZ3TjVWcURESlkwR3Iwd0w4NHU1UUdn?=
 =?utf-8?B?YTAyTk1sWkhla01vSXprTHg1V2gzeWhnWTVPNm41WkVMSWpjMkhIeFcxMkov?=
 =?utf-8?B?WG9JYTNaN2hyZnVhZkhhU3ZaRTV6ckg3TVBQZU1YK0VwOW82SHl1TXRYZzJL?=
 =?utf-8?B?Tlg0d1RsTlNLRUdlcXNuQ2FQR3VzaVZac0VhU0htNzRRTUNJaVNHdXdtT3pY?=
 =?utf-8?B?Vmh2VW9kakxYb0lXQjVJTjVIampJTWV0aCt5ejFFVnArYUhZL1FFc0Uwdldt?=
 =?utf-8?B?V3R3UjIrTUpzNGF2L2FORXh1VzJWeE40Q0ZvYnQzQW9ZTXpNRWxvaVpwTWMy?=
 =?utf-8?B?UjFVcXplU3MxYkFRM0Z3cmQ5VFJDTHlTTllCZmcvR3pSaUpvYVRVMk1sVjBR?=
 =?utf-8?B?UWFYTlg0NmZJRzFRRExVeHN3SWlLL1ppMlg1OTFyeGdpNlM4VndjRWRpc0d1?=
 =?utf-8?B?NGFsR29ZMHBTVy9iM0YwS0x0aWlkNC9IWUM4SG9vWHFOTm4rM0QvNGpzWjBR?=
 =?utf-8?B?YmRWWUlrV0hvM0p5REhxRUtMa3JpaVV3TkJhemlLcmhreC9pMXJaYnM5Q3dR?=
 =?utf-8?B?WWlzcmtGSUNwNjE4c21yazNob2lFWVQrbnQydkFpRFJmbDFNbXI3b005R3BD?=
 =?utf-8?Q?NMgSQdusKuE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0JucnZlU3BGcnI4ZjFObStSUzNST3BuRTVNajZpbUcwTk9rODl2L1oralZ5?=
 =?utf-8?B?SThDZDB0bzNUc3daR1FHV2FuZ3R1akpXZVA2L2dmQjVPMmJMTVdtWlA1QkFB?=
 =?utf-8?B?SzZ1TEtwaTYvUTZMS1Y4N0V3ZysxS25Udk15RWFHRVdLZW9UY2JUbnhCanJE?=
 =?utf-8?B?M2JNS0Q0dlppbUZjUmdkMVBZUVBoNnMxQU1ZL2M3Z3B1ZUp5a2J1a2U5RnRt?=
 =?utf-8?B?UHBGVmVyUmxYbzBxeFRrNXVnOVY2L0NVT2srQnllL0tNY2UrU3BjUWI5TzNs?=
 =?utf-8?B?eUROa0JxWWEvckNXd3lBZGQ4WFplSUd0N3RZc1Jka3dFY1IxYlN3ODlpV0dz?=
 =?utf-8?B?b2k1RzdyY3VrMW54NTRvT1Y5VFNrZEp2T1ZoUWtjbXhQWml5STMyQ24weXhl?=
 =?utf-8?B?bWFJZHhmYXUzRTdzbTIrd2FpTHlNTUk3LzluT0tRcU5Ga2g5SnVnU3AyTERy?=
 =?utf-8?B?WDZHK3VOMHl1Z0JqUklXR1loc2xjNjRSS29UK1ZmWk9UbUE4U1JzY3UxUzVM?=
 =?utf-8?B?MFYreUR0VCtQcGdTTUhrUHdna25yYmFBdzR1ZUVBd3dKR25xSm4zMjNCdzlD?=
 =?utf-8?B?VHFEeEtwSURCWVlYSkFnMlFDbnVMQWJIRkw3T1YzZllscytBNWdPMytNZnZj?=
 =?utf-8?B?WnljZVJjVEdyK2RHNE5QNUQvSExWV2oranMwUmJjTlhtdXBZZ3A1VVZONjhX?=
 =?utf-8?B?a0RiTThUUGRNR0orZDljWjdJNGpZd0lvamdNd3YwY0d1YXpXSnBidlYxam9R?=
 =?utf-8?B?WVJiSW56cXJ0V2hxanFTdUpKaGZOdEVRNE5xYTdxQll6dU1jL1o1TG9pZWlx?=
 =?utf-8?B?SmpEeFRuN2RRYlRCODlYYjhsalY0MG1sQzg5djBEREswRWg0ZlBMaTFwOU9n?=
 =?utf-8?B?MDhicHNJenV2UjhtV29SRjRURVZZR3VuUzJ6RlVpNExpRVNtRmozdmppQUVX?=
 =?utf-8?B?Z2VLYW1RTlI0M3ZxL096eDMzeGxvMS9idUdJcDBXZUVla2N2VlFTSmx5TkZi?=
 =?utf-8?B?Q212M2FQOTNRYjBKVVdqQUtEYmJYOFdLa3pma1d5L3pBMTF2ZW1OMlh2Z1pM?=
 =?utf-8?B?WnFCYVlKRkw0K3ZtdFNUS0RFQ1VrOU1NdXRzdkQreFhyV2FVcXA4cWlSOE1j?=
 =?utf-8?B?MXZZK293a25NbEVTdUczMkI4N3o2L1E2bVBhb0s4SFpIcFg2cUlvaGFIL1NN?=
 =?utf-8?B?cjZ0Z0FrdHk5TFlvWFJ1M0xOUzlwQUdPZ0FQVVZXWGVScGlONlh3Ulp1b3hM?=
 =?utf-8?B?NWlnOE1IOHRBWnA0ZXdKdEsyTUFPYU1RZUJJaFArSXhCVDgyTFVuajNNVXRV?=
 =?utf-8?B?bU5OdkY4MVprZzh6ZzN5RXNXVlAyY1BYVFlCSGMxRDF0bmRZbXdqaUlGaUlN?=
 =?utf-8?B?T1hnYXhuQktyT1hGakN4Ym9NdGZrSjB6N0xiQzJDTW40M1c3ZUREaWNjUHFp?=
 =?utf-8?B?SDYrRllKeWpXcWQ1UXhDc0dIYURVWlFTQTlhdWF6Wi9Ld0x0NTdDQ2gzY2tE?=
 =?utf-8?B?TWM4SDZOTVhFd3MwZEozVW95OFk0dXcrVWlCa3pYaDlQam5mM0FiNENjTERR?=
 =?utf-8?B?alFpbDVLMEhJdEYydG5RTGRHckJCZTh0ZDBhbUhxYkhEa2xYZDBpSGx0Zmo5?=
 =?utf-8?B?ekR4d3VPNG56LzRJVEJHSURsVy9nZDFqdkZhZlFzV25yYXlVYVR5SVQrV2VK?=
 =?utf-8?B?akVvVW94d1FKY1oxcGw1aGpybkRhYkptdHBLcEczbG9BbG5PZTZSSWJVcU5q?=
 =?utf-8?B?cXhGRHdsOUNEbnNkb2JyeTc3SmdmbkZ5MnIyMDgrYVZYN1dDRmFEVXhuWXI4?=
 =?utf-8?B?K1lONmZXTEhEUDg5MWNCa3FNUy96bG9ueUhOSXVuRVQ4WmxVS2hCbHZDOXhI?=
 =?utf-8?B?aGkyMGEvWUl1OEhoYzBseVJVdy9odW5XZk5RcGZCQWxzei9QMWZqSkpGZm5B?=
 =?utf-8?B?ZEgrQXZHeC82RXhzVFlWYmZsZHBnY2t0YXppYUcyWnBLZGVzN0VJRmVSak1M?=
 =?utf-8?B?ZXNjMUpwMU5RMGtocXJncUQ2MEtIeHJMRXFHM1BmUHl5b1dPVXJWcFJVaFkv?=
 =?utf-8?B?TG55Qm1EQU8rM1VXak9PSXdzbkdhRk1wYlBsWEM4TGxvUldTaDBvV2pqNWRw?=
 =?utf-8?B?ckNyVGVBdkRIYWh0ZHZGaWdXMDJTL05pVkliaWh4SnZVbEppOStSQzN6ZVJq?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c2ee2e-455c-4be0-53ca-08ddd035ba34
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:25:33.3314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XQPbMvYwGUnhX7tP61XX5CbVhF7ovzgs2EIMFzXA6NfPrgo6po42E4aVfAqhCQJgy7vVlxX2fHn8neFCMvKt4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
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

Quoting Jani Nikula (2025-07-31 07:05:12-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++----
> 1 file changed, 10 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 273054c22325..2c2b23a138cc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -1278,6 +1278,7 @@ static void hsw_disable_lcpll(struct intel_display *=
display,
>                               bool switch_to_fclk, bool allow_power_down)
> {
>         u32 val;
>+        int ret;
>=20
>         assert_can_disable_lcpll(display);
>=20
>@@ -1287,8 +1288,10 @@ static void hsw_disable_lcpll(struct intel_display =
*display,
>                 val |=3D LCPLL_CD_SOURCE_FCLK;
>                 intel_de_write(display, LCPLL_CTL, val);
>=20
>-                if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
>-                                LCPLL_CD_SOURCE_FCLK_DONE, 1))
>+                ret =3D intel_de_wait_custom(display, LCPLL_CTL,
>+                                           LCPLL_CD_SOURCE_FCLK_DONE, LCP=
LL_CD_SOURCE_FCLK_DONE,
>+                                           1, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm, "Switching to FCLK failed\n=
");
>=20
>                 val =3D intel_de_read(display, LCPLL_CTL);
>@@ -1324,6 +1327,7 @@ static void hsw_restore_lcpll(struct intel_display *=
display)
> {
>         struct drm_i915_private __maybe_unused *dev_priv =3D to_i915(disp=
lay->drm);
>         u32 val;
>+        int ret;
>=20
>         val =3D intel_de_read(display, LCPLL_CTL);
>=20
>@@ -1358,8 +1362,10 @@ static void hsw_restore_lcpll(struct intel_display =
*display)
>         if (val & LCPLL_CD_SOURCE_FCLK) {
>                 intel_de_rmw(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0)=
;
>=20
>-                if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
>-                                 LCPLL_CD_SOURCE_FCLK_DONE) =3D=3D 0, 1))
>+                ret =3D intel_de_wait_custom(display, LCPLL_CTL,
>+                                           LCPLL_CD_SOURCE_FCLK_DONE, 0,
>+                                           1, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm,
>                                 "Switching back to LCPLL failed\n");
>         }
>--=20
>2.39.5
>
