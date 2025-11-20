Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8EAC72987
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C7A10E6E7;
	Thu, 20 Nov 2025 07:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWcJjMnp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636AC10E6E6;
 Thu, 20 Nov 2025 07:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623827; x=1795159827;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LkVEDeQagOFe3/OM4Yqp19bpmnM5JhQHr8/quoceaDE=;
 b=TWcJjMnpY6LYewLaIIfwCrllRvov3KnQK/3HuWUayPVy3OsM7V7cJeyQ
 wQIIr8KTrwjMLCyZq9fNvxIfU0p0vcF2ILrMCjXFV7plO85GJFZKV0UR6
 kq3QJZgL10pa7lyT6zobeM3sHL7uulydw02Vc1uDkorljB9n/qLdmruQL
 jtL7OwYyshQpxdgCXVQNZx3PlnOh3cchoPaPb5aghtsMLcJ/vHKk8UWxo
 F6N/9p9xgrhpm0JPeommP8FmhJT7APCgJR1Uf/rT8hJEYDEy5En7zxclW
 6P8R7oJOAMqh6EzcmEWWx+oUoUX/qw5iro0oRoNg7oeOiXO1qU06H3Vy6 Q==;
X-CSE-ConnectionGUID: TDIxw+efSO6vlag/Y2xKGg==
X-CSE-MsgGUID: HlbaXL1HQmW62bal7OWU5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65840962"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65840962"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:30:14 -0800
X-CSE-ConnectionGUID: Qcv6f558QaiP2exxKJZqpw==
X-CSE-MsgGUID: oLEGLqhMSQO4guvpgAfy3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="195764014"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:30:14 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:30:13 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 23:30:13 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:30:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZMvNfzMdtbM5FXh4Fro+idgttxlXFFShY32mFr65Gb8mTyB5651BD5kLGJuq7Sc3FnUSYhqfO2mMsYZ5C+2WfF8BDG4WV60HkqiJXGaIub36kYMgdt6l72EpcMQ8aV85eubOgmGpmKkdv5wjGStVAsCF134WC04uwFr48XOuifyuFmaSYWoYfZ/GhovsUatFWj78UbCayDf0yi71VTaJm5U3LrVQgkzYUFtfDXWq0exiz0dNm66iXKrq6nq4LhW3s/djhMFabcZqnNAN1CW9FVLiLwRdwnKHULxbBdHmHjlHlzHehugsvlBr6PVzmHkWH0WWgm0NAITJNiiGHJaa7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1eeSJJtbnRfayhkDFPtVhBMB7fLQNtPXjee5dxG0keA=;
 b=BvDTNaianjuNYzI91KsmF+j7UN1zJ6cOB8SKsP+yDLo4FmnnSiRGo/UBi9ytpOnUahsHPS7PbOYCIXgr0W+xUO7Sib31vPorsejNU/lKaFzAQ5XLHri573LjZv3sp0kEhouc9V8FOs8JXLjhoQMclm4R2lMhZGx1Zu9vDbVx3W3kuJBNSzvofJWHDdsoyBHjin0pFEq6EmsETpGQlyXkw2pH4ho2AY6d0th/feup1umKxUab8WsIhE6oykQBmaKuJ4mgiuuHhGz2IPTC8ruwHKnE05Y/BDySUN3MP0qb+Xlnd7PVhZZ/DefkwV/xgaD3jYscsbYIXkaiqrYHwzNi/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CY8PR11MB7291.namprd11.prod.outlook.com (2603:10b6:930:9b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 07:30:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 07:30:09 +0000
Date: Thu, 20 Nov 2025 07:29:59 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 2/3] tests/intel/gem_eio: Convert stress subtests
 to dynamic
Message-ID: <dvhs3wggb2nrw5nmb6tqjgqymgjzacx5u4tmoe4foj75cmnlsm@rl3yacu7ztoo>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
 <20251119111205.1297907-7-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251119111205.1297907-7-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0041.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CY8PR11MB7291:EE_
X-MS-Office365-Filtering-Correlation-Id: ecc3e4e3-3392-4d33-1394-08de2806a1c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWJ4SGVrN2Fwb29hUVRVU3ZkZHRkRE5iTHordVBXOE55bVpPNnpuTXZySjBK?=
 =?utf-8?B?SERrOG5PVlg3NFpwaGNiWm00UG5oMFdGVXl6QTVwUWxyWFovV3BmWnpFK2du?=
 =?utf-8?B?cUN2eHM4MG1GSllrUHo0LzhFMjFEWllGQ1IwRXRjWTFnWTdkemRmeEVVMkdS?=
 =?utf-8?B?Ukhyd2ZOWnVIQ2R6cGtDZEJNY2M4cmxyMjJkNjhBUytrUnZ1QzZza0RoWUha?=
 =?utf-8?B?dXF4MDRWV2ZoaDlONlUxejczZGRMbjl5RkNBd2x0b21MT3NSWnhIQlJLUThC?=
 =?utf-8?B?TzNCN2RBUGJwQnc5WWNKelcxNk9zcERwbzFTMjFYd1lWaUZCZlVPazl2V1pa?=
 =?utf-8?B?ZjJQYW01ZlNoQjlFbXRUenVWRFA0QVpHU0dYVGV1R0VOcFhXZEVXMkNWSVRN?=
 =?utf-8?B?dlBVQUtDOGRyN0VTa2wzMkJWemdsNHJ2MmVRT1dvQXo1UDZqVHVDd3ZQQmN3?=
 =?utf-8?B?OU0rYm9KK1F3SDFtZHhyZHlsVzZzMEl5QllGMWNsQnc4OFRncVhyQzZXR1hV?=
 =?utf-8?B?OVpIeTJ6dHAzQlFKdTlqSWxVWFU1M0dLRE80SjlDZ0dhQmR1VXl0b1ZQODRC?=
 =?utf-8?B?cElDd0RHMlpiV0lrTDQ0Z2dMTEhjZitnRlNRSFJRZm9sUXNTemRZWjlsdFFi?=
 =?utf-8?B?aVhlZzdvUmVVNEZLWG1XOEh1KzlabUl4UU9MekErOElrSjBBbFdmTm1VL1Vl?=
 =?utf-8?B?aVJoRW1KRThMRktsYW9yREVtNkc4VW93V1AyUit4OEVvajNUVjFXUWFyLzBa?=
 =?utf-8?B?dUZadVlIUFQrU25OSmhpSzh3aWNpZ1VBc1lLUm12SlprcnUrNGNSVGZ3Z1Fk?=
 =?utf-8?B?eGNuMHRzb0g0SGNqakhCY1pMMHJkMGxhdDZZUnZPcm5BL0l6WDBiNldhRHU2?=
 =?utf-8?B?VlF5ekFqejFDcS9MRjFmNlk0QkI1bGdYZHpBTDFlK0cwYXYzK2xRdm9Qc0JQ?=
 =?utf-8?B?M2YzQWhqREsxdGRZdzNKSFdIUEx0OHdhc0p1U3FhZHF2RitxUzhRNFhQN1NK?=
 =?utf-8?B?Wnd4dEpEK1lhSjNJNThURlFLTEU1eitlMlQ4enFETnY1K0QxK1pHOVIxYkJl?=
 =?utf-8?B?c1JQZzdJWVBya3NDV0tNNlZJRGJIc2xOaTJOdzQ3dWc1MTBwci9ZT1YwdEht?=
 =?utf-8?B?N09nV2Q1b1FSWVlEazJsajhEVjlNSDFKbjFNNFNMT0ZzUG5OUndCVGJ2Z09u?=
 =?utf-8?B?YkVKVjFKVmhIeHFLR1YyUkVZVE1JZEFSdTI1WW1nWVBFQU5ITHZ5WXVmWS90?=
 =?utf-8?B?Wk0wb1ZiMERvMGtjcEJFaFpYTHRkcDJaU1JPQWJLZmxvcDJ0eGlNTHY4V3M3?=
 =?utf-8?B?aFVJMVJFQkpacms5d2drOFN3c0xGSlhNYWh4OXlsekRrTzhrTG9TeGxzOHA1?=
 =?utf-8?B?MmdVTG15S3Z1TVU4WnhqZk5SMFVwS1hVb25Ra1JTU3V2UHhxM1RlS1FRU0tk?=
 =?utf-8?B?YUtvVVh1dkE5ayt6ckNBejhQaVRJSTFsZ1VTVmRZZzU0QktuNVdOaHlaY0tY?=
 =?utf-8?B?YVlQYW9vU0NHSVowZjQ0aXBDaTY1VjZhYjIrSHh6ZWErZWZaN1pOTE1mUUFK?=
 =?utf-8?B?TjhieEc1dkJ6dDFCUXlISko5ZnBueGlqdjlTVFY3S2R2bHFxR29ITWR3Lzhv?=
 =?utf-8?B?WHdweU4wT0NJU2RMdUNuaXpFeWdRTm9zUWlHZFFjMEk0eUlHZVBNbjZhNmt5?=
 =?utf-8?B?VktjUTcxTWdmMitBV1VkM0tQSTlUeXNpek1UanJJM3BCRkcwaGcrZjNQSHht?=
 =?utf-8?B?VE5CUjZBSWE5dEVxaC9zaDI1QXNjNFlaUWgxYTJsUWpCT3Q2aVAyd3A1cE0w?=
 =?utf-8?B?T1gxSnZ0WkRIdkVySHdUQ0QwMGV1UDJQUkdBRDlGbkRLN1JqSGI2MEgvc2Ri?=
 =?utf-8?B?dUtRalpnQklSNWQ4Lzc1TU45YmQvT0Q5NlFtRkNGa3B1ckljVzRLcVZZeGxI?=
 =?utf-8?Q?GnSbSgqWb6KpW/uK+CyngdKnABCxFNbk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkxhUktiM3A5QS9tS25nMDJkZStsM1RLM3h5YzRKM1NiY1RmOGFDNE5WN0k5?=
 =?utf-8?B?OU5CQTZMQ0JyOXg3M0JBWU52bUd4RUdxK2Y2dmlJODE3Wm9PYzEvRzVseElN?=
 =?utf-8?B?T1Fzdyt4azBVS3YrWVRHeUthWGc1aUE2dEIySG1pQW5Pd0VMbzl3cGJBVXcr?=
 =?utf-8?B?NHhjcVg3d0U5eWVHSnlyWGdLcC9qMFBBT0I5NHIwTmpZYjlMamVTaXFQdENT?=
 =?utf-8?B?eWZ5MlJvS2Zka1B5ekdjSVAyVk9MQnlxNWlSdnBWL3Zpcmd6SUFTbkZXOFc5?=
 =?utf-8?B?K21jR09IT3dyMW90RVE1NkgvZnJqVHNiT0VXKyttMGltMTFQV1lzZWJIdkMx?=
 =?utf-8?B?NjdRV3JNajlxR3U1bWNjVTc0WnB6K21SeElqKzUxa0lrYjhtbGJSYzF2d3Qy?=
 =?utf-8?B?Q0VOQlFYT3ExR3hURGJyV2ZDbC83MVRBVmNnWmdCa3JKQm9oYTFxWGtud0FW?=
 =?utf-8?B?N1NoeXhrRmpiSUg4ZEI0bVFxa2lrOEZWR003b2pLMTZnMFNkd1pxUkROWkxl?=
 =?utf-8?B?NDhIUGpmcWtDNGo2UUVHWFZ5YTZnVHcvdFZoWnZXc2tRcENVd0VkeGZmZlJU?=
 =?utf-8?B?aHZFZCs2NFd6eGQyaHpNS0tadEE2c0VqL3VCRWptMllORGoreXgvSEs2TTZS?=
 =?utf-8?B?NHZYZGpSc3lodm54VE8xZFZJUWVCVkpuNnFKR1ZydEtSOUNZRGhEVUZGRG9V?=
 =?utf-8?B?UkNkVW1zbmJJdGFuMnh5SWpQWHE2YThpS2JhNG8zTGRkRVlMTk5tT0pkSE9H?=
 =?utf-8?B?Rk5ZeGtLbkxoS05KWTBoUGkxOUk5ckZXcWhVZlVCeWpiSmlSZTJENW5oNFR3?=
 =?utf-8?B?cVhIb3p3aTdqRVo4QkNWN0RGa3hxY0xHNElicnB2NndEQ0NTTEs1eGs5YkFn?=
 =?utf-8?B?SlFKdGRZTkV5NUFIQWFyckVJbWtidi9PelAxMkJtb25LbGZqQlNkRzNkRkwv?=
 =?utf-8?B?WnV3b251V3ZsOVpMa0dSaDd6VXhVczMzMGtuUkVET3JmOUwxTC9NY2ZFRTNC?=
 =?utf-8?B?czBBMHFGZkM5ci96dTk0RU9PaFBVa1ZZL2FldXFNN21ndHIvSEJhOENLTWpH?=
 =?utf-8?B?dVpjcXFjc1ZYbWFnY25kT1Z4MEQ5S0VlNUFIMHJuWURVRmVJeHRTekdEanVP?=
 =?utf-8?B?eUoxdXFJWjdsV2JWTmMrR1Y3RStYMm5qNGMwM3gxUE9YRVRpaEtmcnAzOGRm?=
 =?utf-8?B?ZDZ5T3VxNUxvb2JSUDM0a1RxUUhlVDlRQXluWG1STnMyM0VQNEtCZVBHT3RF?=
 =?utf-8?B?WHNGZXhLQU50TnRxSmYxN3pudE8ydnFWY2pZaWRYM29tOHlyMGd4anBHVzNM?=
 =?utf-8?B?aVZhb3ZaUDcxNlNVTXR3dVk3S01Ob2g5YmdnUmo5Uzg0QzIxbldoUFNTOWJ3?=
 =?utf-8?B?dmVJT1MzZDFlS0p3R243QzgvNUlkcXBrViswWjFNSzFHcWxrTDR3a2lBaGpJ?=
 =?utf-8?B?WnZlRWlHeE8zc3g1VDlHbkNrL0dRVHFoVFMrbVZUOW41ZHBnY09mTkJMMHNm?=
 =?utf-8?B?YlBjUU5zbmp1K0ViTVpXR1F4UC9lOGZZY2ZxZUNaS21jNG9wai9Qei9HeURF?=
 =?utf-8?B?dTMvQ2JPckg4WVpjcVNMeWZRaWcvcnRMNHYwWDdpbTBrazg4NWxyUjRURXMw?=
 =?utf-8?B?ajRPOUdzM2M2RkpCZUpqUGNYa3BoTmxqTi9DUnI3R05tazJFNEtvQVR4RUZ0?=
 =?utf-8?B?Ym1mWm0zU3l1Tk9FdUFBVzRXOW9jT2liakZtaFdOQzJCSXY0ZnNad1NiOUF2?=
 =?utf-8?B?cG9HTnEwTC9PNXBlSXVlbFRmeTNUZGZCTC9XcWg2MXpGcnhGSzJ1SGYySjhB?=
 =?utf-8?B?eXRiREpUNm0rSmhzSElhanRVVTdSMnZ5NHlhMHVoTVdQTENDWloxWWJVeStR?=
 =?utf-8?B?eWNLRjVyWkovbENYR3dSZUs4NWZkVjJla2hsSjlzTkU4V282a0JuQkF0c291?=
 =?utf-8?B?cVlickZSLyt6djJBdDhnRWFvcXJNWG9sN2pjSFRIR2J4UEdITU5JS3Nna2oz?=
 =?utf-8?B?R09OZ1MxcjNzSVBSbEVFSmFMNXdXTkxPVzJVRUY1aGJYSUZuVE1uQmdZOVRR?=
 =?utf-8?B?Tm9QTXJVcjgrbzlnNHF0QlRwYzNnaEV5ZjRKNXRDSHpyb0dLWVg1TGkvWjJC?=
 =?utf-8?B?bFFlYjFKdVBzWGpKOFhYNjlxQ2hYOXI2SUorcG5PeDU1WCswK0JJRk9lcEsx?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc3e4e3-3392-4d33-1394-08de2806a1c7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 07:30:09.9228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C9X6fUcPfqK+LiGI+fUgtQuQE1EhW9vAMadTlUdDcHx/Ddgc3MgIqobF0zyqULajj87BOBNrOoffNjdZj4MDW2wbpM0Jzag2Zw/ZrKv9iJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7291
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

Hi Janusz,

> These subtests used to succeed silently if we were not able to collect
> enough measurements for median value calculation in a predetermined time
> period.  We've fixed that issue to some extent by extending those time
> periods to a maximum limited only by per-test timeout used in CI, and
> returning skips if that still occurs to short.  However, since those
> subtests exercise each physical engine one after another, we can limit the
> impact of the CI per-test timeout by converting them to dynamic, so each
> engine is exercised in a separate dynamic sub-subtest that gets its own
> per-test timeout slot.  Go for it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 29 ++++++++++++++++-------------
>  1 file changed, 16 insertions(+), 13 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index b9c4cdc436..5981ae4d71 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -995,22 +995,25 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>   */
>  static void test_reset_stress(int fd, unsigned int flags)
>  {
> -	const intel_ctx_t *ctx0 = context_create_safe(fd);
> -	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
> -
>  	for_each_physical_ring(e, fd) {
> -		struct intel_execution_engine2 engine;
> +		const intel_ctx_t *ctx0 = NULL;
> +		uint64_t ahnd = 0;
>  
> -		engine = gem_eb_flags_to_engine(eb_ring(e));
> +		igt_dynamic(e->name) {
> +			struct intel_execution_engine2 engine;
>  
> -		if (gem_engine_can_block_ggtt_binder(fd, &engine))
> -			continue;
> +			engine = gem_eb_flags_to_engine(eb_ring(e));
> +			igt_skip_on(gem_engine_can_block_ggtt_binder(fd, &engine));
Nice, now we'll have explicit skips in the logs on MTL
platforms.

>  
> -		reset_stress(fd, ahnd, ctx0, e->name, eb_ring(e), flags);
> -	}
> +			ctx0 = context_create_safe(fd);
> +			ahnd = get_reloc_ahnd(fd, ctx0->id);
>  
> -	intel_ctx_destroy(fd, ctx0);
> -	put_ahnd(ahnd);
> +			reset_stress(fd, ahnd, ctx0, e->name, eb_ring(e), flags);
> +		}
> +
> +		put_ahnd(ahnd);
> +		intel_ctx_destroy(fd, ctx0);
> +	}
>  }
>  
>  /*
> @@ -1154,10 +1157,10 @@ igt_main
>  			igt_require(gem_has_contexts(fd));
>  		}
>  
> -		igt_subtest("reset-stress")
> +		igt_subtest_with_dynamic("reset-stress")
>  			test_reset_stress(fd, 0);
>  
> -		igt_subtest("unwedge-stress")
> +		igt_subtest_with_dynamic("unwedge-stress")
>  			test_reset_stress(fd, TEST_WEDGE);
>  	}
>  
> -- 
> 2.51.1
> 

Looks good: Krzysztof Karas <krzysztof.karas@intel.com>
Reviewed-by: 

-- 
Best Regards,
Krzysztof
