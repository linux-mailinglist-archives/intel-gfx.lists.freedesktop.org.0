Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A395B09F90
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 11:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177A110E937;
	Fri, 18 Jul 2025 09:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ebkjyqkF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C3A10E937
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 09:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752830861; x=1784366861;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=4TzR00tyouCl6OMKBsbmxm9DBVXkzwD++c7yYM0Rqck=;
 b=ebkjyqkFN7KHXVRPXZQtJjyJK4lIJMV2hqNeTsuTdCTs75wIm7+zgl2V
 ttJ46tYFEpkVw/K96rYs+YYmqCjfj7UzRmGUAhzY/2pf51XJ2BijfCtaI
 APRygNiTSEQS28f0pUpKpR8iMYXPqbitW4IM2XoBniBd/HSzYh589lee1
 j/11qWpdnpeNQRiqlh9w7N2HdYaGz6lgAvu4hIfQsrNNEj8mquS+bmVUE
 fUqgupG9LqCrD3geAerKAVgyviLEjxSjeX++hJ57iqw8ecuu67hXZc3f4
 eQZTF8bnlLzwtGanj9yyYrpDMjSv/7Plr6WSlrzGM6FxGMMGu4yCJh5Ul A==;
X-CSE-ConnectionGUID: jwAFEwn4SkiCYsAc1hqEUg==
X-CSE-MsgGUID: S0wjjAKCSTGXPrt5mFctEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58935338"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="58935338"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 02:27:41 -0700
X-CSE-ConnectionGUID: J0nNWExbT3OK7uLYEgxOXg==
X-CSE-MsgGUID: mCSr0LEpQmGAccBA0VKBNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="162325826"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 02:27:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 02:27:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 02:27:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.81) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 02:27:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NfBOpTOYEweAF/qtfyXC4vR0h+UsYbCYG1nZUVZxWUpR6zNbHDTCScQy23SEhHaDC903ZYbvBiXqnX7HDw8Wlyd7wYhJPBKl8F+jxXwuqJaap3BFdc+K72FUECmS0ugmYT3SfJ5atBe5AdEJBom9e1wRlXyD1NpPu8xx1zQrmC7+hxprowb4TLoIAouLFPpTO6eS4G1XOSQvoTsHtcOEkM/QX0YckeszYx22t4rEeOBuaOUnndWwt/dAT7N2nlCxK81VnhICMXdopdJPIIaaS743WOR5zA/eItMhTGzPzvp2vKHxfa6z2xW9E5XWmlIGSgwmJ84ldRM9bjlLu6OzLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35fF7ZbwEZRRihh5MkINQRXOKE7G4VjZIKhVzHVjBgk=;
 b=bwkWzpIvvScXsHEzAJInqPsuQUK0eJ6pJI5GvER1woxCyGvPohJ3oRCoiSGK6SRDGHgNMkb1dmNEUQccMyPWqoBsuZTQA1FpMJytoIwvFHYs5f8MyxUp9NfJz2kMSyw5BP3j2uObsdkEG1/pWr6dQwDKptRbzpIQECL33YN07zlav0637hRNL7LxmD2IJ8NyBwdbmKseINf12rW4auQmV4gBF7w7BZavGMDxHoyqCAWfxXPg3+rWsO2bM6Gg43cuXxzH9KmSll58Vk/4NJxqfVkhBKuldzvJQluTXFB1VNCS2lCT8W2wO8dLXh5In743njkP9jrI3gHcrfe5BvhmkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH7PR11MB6980.namprd11.prod.outlook.com (2603:10b6:510:208::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Fri, 18 Jul
 2025 09:26:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 09:26:51 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 18 Jul 2025 09:26:46 +0000
Message-ID: <DBF2NW71CEZ0.J6AHO8HO3YF1@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915: Improve readability of eb_relocate_vma
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-2-sebastian.brzezinka@intel.com>
 <wrum6ugu3qzexliktlvkz45uc5okcs5peiqrx63hfzmpb2ujko@do3mxsmdeaty>
In-Reply-To: <wrum6ugu3qzexliktlvkz45uc5okcs5peiqrx63hfzmpb2ujko@do3mxsmdeaty>
X-ClientProxiedBy: WA0P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::28) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH7PR11MB6980:EE_
X-MS-Office365-Filtering-Correlation-Id: 9796195f-ae36-4328-8d93-08ddc5dd3a17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NE01WklDTFNldzhGQllZN256clhrSjdyb25tNWM4ZG45c3NRK0VUMlZuaFdZ?=
 =?utf-8?B?YlhSUFRoMjU5WDI5K2NCeHJNeXRVdTlUTTBESXhoRlVNK0RVVC95Mm9XM2ZM?=
 =?utf-8?B?VUtWWUVDZjV3b0R3WkVKL2JBYkFEMjFVNjVJS0J5anQxT3dXeGF5Y0g3ZmQ0?=
 =?utf-8?B?ZFQwZkhuQ2pRNmdqc0xlODdRdC8rZHp3RVAxYnYyZE9KQUFIZlBVL1N6QXI2?=
 =?utf-8?B?cnkvWFp6S2FjVFJ1ZXBuY1BGOXl1ZVRGVUgwRktPNWdqM1AyTCtUc2tuQll3?=
 =?utf-8?B?RmNZUXpraVI3Yys5alAwamhZbUpkN1hwOWVPa2cxamtWR1JQSExyRGNrZXd4?=
 =?utf-8?B?WDA3TDB0SFhGdGVweWpiK1VPZmJrVnV1b0RXbFc1T3kwY05iU2pFZDVWSkQy?=
 =?utf-8?B?b3Rad1pPRU5XUFZob3hMOCtIb004SHJmUmRNVW9mb3h5Wm5vMmV3NDFlY2Rz?=
 =?utf-8?B?bE16NnY4bWJDWk03NjZUZ1h3a3ZDQlQwRWlCdnFFU21qRVRIUnErK3ZXU3Y1?=
 =?utf-8?B?SWlnZTI0dEZZL1ZDNHJwZU5hZGI4TW5nWEdFZmxsTVR3M1huaG5NYWt6aGlO?=
 =?utf-8?B?WDRJWHpCRnRqZ2NDMktVMlA3aE55dExqQ29jNUpzNjYvQ0ZwQTMzVXBuSHFE?=
 =?utf-8?B?VXF2dXVpZzhpTHVGcWlpRFlYQkUybDVFOG1Qb2RSUk1XQk9Pci9XbG1tZ2Rr?=
 =?utf-8?B?eDFuczg2ajJaOVFtdnVoRTBGQkJ3TEhGdGM1Z0p5ZlRNa0QyZGUxRU9la21x?=
 =?utf-8?B?NGJYZkdQNjU5aWpWY09WbHFMaWhvRGVoc0IxcU9mbE9pVFBCUEVvMHJVbjNC?=
 =?utf-8?B?QlBiRDRPWTZIUm1lc2dlY1JTdG9XMjI3Y05mK3FKNU9qVW1BTVlSMi9zSjU2?=
 =?utf-8?B?bXI0TEFnTlJhdFdYbjFWa2w2RG1TbVBtelZtRWdaT0x4YlNvZlZHS2dFYzdQ?=
 =?utf-8?B?d3hMTlJLL1FOUVR4UElBRnhVMEFIMjlaK3YveVc1UGVDRm1iSi9FUWtwQmVh?=
 =?utf-8?B?YTNicWR3YnpTbUF4bEw3WXdlWEJnRnlKd2NQUGxWNjdUTm9NamIxUTRpMEYz?=
 =?utf-8?B?N0hFaUdUYndSUFBWTkpsSG4yYWJzWHN2d0dYZkR5a0lVaU10b2taWTA1bUFq?=
 =?utf-8?B?ODYxMjgzVjN0ZVlTWk5uY3dVcjdGc0Q2U0ZseUI2WHp3ZHBIMzNvM0l6d1hR?=
 =?utf-8?B?RjgyWThUWitFYU91N0k5TUduam1oWVdVVVU2VXdqL2tacGdHbHhrM1htR0dw?=
 =?utf-8?B?RDRTbFUrbXZRWGp6dytIUVJsbG1KMk1selYvNWF3VkpudVdLcVc5QTNXSk1a?=
 =?utf-8?B?Lzd5STNhRXBrblNHOVIrbGx6dFRJQkJCNFI3TFFSeitERGdPMTMzeFdMaHlJ?=
 =?utf-8?B?Sjk5elhVVEJWVTNaVnMrZEhwa0ljejdmTEFaSC9VcWwrQ2VMejZhZTJCM1RX?=
 =?utf-8?B?SmczNEVXd0xVcmhvbjlvWHJhRVkzWUhxV2Zrb01NdjVZcnM0ZEV3NFhTQnJJ?=
 =?utf-8?B?T3N4cUNoa203elFvNEFmRjFwQmg2WC9Mdis0bDJNTVQySnlOTDhxU0FRRkJi?=
 =?utf-8?B?K2NOdGxzMmo4cGtHYjlmNFR5N1F2Skh6MDM1QkJpcmhjQm5JZmh4eVNMOHZu?=
 =?utf-8?B?L3ZIVjRMd1VnTy9hb3BGeU1BNDdQVkFDSms3ZHJLVElBVHZ0Tmk2cVJMMG9O?=
 =?utf-8?B?RHlsb1EwcURmbG93UDJpOTlYZlBwWkE2bTdiTXEvek03WnhDcEllUHE1czhu?=
 =?utf-8?B?YWxaQlpBMEc4MzZQNTRadnFWWmt5OERHa2tnbHBGc29LRUtrOWxSS2VIUGQ0?=
 =?utf-8?B?S25OTUN4RXBDTC8xKzdseWFDbG4xQUt5NVU5Yng2bGhuTWVkOUlQL0YxWHQ4?=
 =?utf-8?B?aXlvZHhMMHoxQlRKalo3YmptYkl3aWlBbGFQZHMrRDRwQnJrTHgzVlFjMk9t?=
 =?utf-8?Q?iBlkM6oLSKI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXVvbGdEKzhNMHVwU2E1dEZVblFWNTU2dmI3Vys1SzFBMmV6ZkhNaC9XNU15?=
 =?utf-8?B?N3pDb0h1dWpqSFRXdWttZThkWGNwSWlZYWpjSHlWMUtJSEpDQkg1MHR3RzE3?=
 =?utf-8?B?bUhNSFVJUmpHTG9VMURSQ3pkVk5OcHhQcmxKSWlOK2QrY2F0NXZYT21IaGNt?=
 =?utf-8?B?OXNYbGtUbTdRSkxpR2NLNW1VTGRxemFidk9YcEM1QjZ6YStGV2FuMjhYeFVF?=
 =?utf-8?B?VVZEZVRSRkNCY05oWUdXMTIwbU15Q1pTdDh6cVdBd2FRU2VkYTMrOWc5c1px?=
 =?utf-8?B?QlFtVm9DZDkyUVlMS1l3MWZMeFhLaU4yRzFwcHQ0SWEzYVp1T3BzODNMVHlt?=
 =?utf-8?B?WGZHK01Fd0hXQXN4dmhnRDEwUytXd2xwY1BZMThpK25RdmI5RDdCN0xySVNy?=
 =?utf-8?B?SGtnMS8wZDBkVXM5VVZVZVhWV2xJQTFmNmRrL09WVm9pQlB3Rkd2cVJlSXBw?=
 =?utf-8?B?OFJlVEtGanFFTEFwWWhJbGM0dTIzZWUzenNVU3V6SWNwSnd6WVJhblI2RzRT?=
 =?utf-8?B?MmUxblpkZk5yR2ZnZVVPVElUZUFGWFpSS1NVRHlFeUp0ZkFhU1A5ZHJialFH?=
 =?utf-8?B?bXh1WmxkTm5zdmNpdC9ab3RLQ096cFdOL0prdk1GeGpORlk2ZEYxcU5VdGxR?=
 =?utf-8?B?SGFuL29MRURPWE5EL0RwMEdwS0d5RlRMS0MyWjdERlR5ZXJPaE1vTDBMSnJN?=
 =?utf-8?B?TUFaN29ucmVkd2lwMGNkVm9Db0htMndobU9lMnNmVFZ6aXRQUTEzM3FsaUxt?=
 =?utf-8?B?YTZZSFcxVEFhZllmQkcxejh6MmJ4Z01jV2RhQkpueFdCQzBxS29xZ25tbmQw?=
 =?utf-8?B?aitmcFp2RGRtc2hqUXk5Z1BQWXF1ZmF0eitIUTRBSi9saVJTRm9tU3pnNzNw?=
 =?utf-8?B?WkVIQlNHVFZXWXlkSzY1S0VMeG1QN21jYVNMblR1dWhQRkh1K1ptUmNuV2Iy?=
 =?utf-8?B?Z3JoanIwT0FVZHdldUl4Y0JQS1ducUlBU1k5NUtJSlhkc3huNHJvOXBXc0VP?=
 =?utf-8?B?b21pY0p1K2RnY1BqalM4cXhpekhwYVh4VUVVVmdqWmowTStjNG43YXlaYUwv?=
 =?utf-8?B?dC9vMDlCV2loekV1cWNMSUw0dGE1Q2RYclRmSGJ0UFpVc2VjZW45dWdUM1l3?=
 =?utf-8?B?NE94N1pEOHlUdDYyTGxKRTZpbzdMbjhuRDZrUWlIZjJBRG85ZnFUbVprVEFk?=
 =?utf-8?B?WklBTm5nT0plbzZCRmdwMmR2b2h2OER1bldoL0FneWMxZVY2cWlmcWhsR29Z?=
 =?utf-8?B?d0RHa3VadVkyUXBna0VtQVlGOTEva3g2RXpIcG5BL0hlMzd0Yll5VlArcDFi?=
 =?utf-8?B?Tm9ZZGFScDJJNVN0c2dpaFQ0NklNK2tzR1V1TFdSMEswV1hSSkZGMEFScXNp?=
 =?utf-8?B?MGhmUWRtblR1MDdnVFNuT0NaeW5Dc1JyRHhDMGZKdTNuYXVZVUZIMHpjSEN4?=
 =?utf-8?B?ckRmNU9QVTRVbWJWU0FrOWNvTFBEWE8zRWNxdDBQOU1XdkZlcDhkenZHR2E3?=
 =?utf-8?B?V3R6eUpqL29mQlNWNDBpOEYzUTNEcXVJZzlZZm91YlJod1VWUzJsbzRzRFMv?=
 =?utf-8?B?NzJyZEpyQ3g2TFZ0ejlpT1hrYU1hU3AzbGo0ZFNQK1JJdktHUXh5ejZCUldu?=
 =?utf-8?B?dm1sSFhJNTg4MkZyeEJsQTQ5ckptWTdkbVUxeVJqV00rbVVmVlQxL0U3aVNJ?=
 =?utf-8?B?c2VabEhOd0d4di9zbkJkbWlacGUzb3B6RHFseFUwVldyT0VQdEh1MkMzcWIy?=
 =?utf-8?B?MDZEbFRuM0JJUmlHSFBaUndBUFJjN21OWDJXeiswSnNwbUg2N3hHY1MxSGlq?=
 =?utf-8?B?SENtalVOQVZBTHVNTVJKUEN6Zkl0SC8xK1ltUGV2SWlIUlBKQjR4eUx0VzJK?=
 =?utf-8?B?WStxNU1VM0NhTjBZbnRTZUNERXlNYUx4cU0vQ3FXWkVseEllZzFLdXZXbXlQ?=
 =?utf-8?B?b1psSDA2Nk1HQ1pIaEdJc1Y0MDRaM0N4MHlsTHVlVmVqVXh2WjlUczBMZk0w?=
 =?utf-8?B?MEJybXFFVUNDd1hMV0QyZjJMQ0NIcEttZTNxZEQxM2ZOb0JXTWxucEYvOFRE?=
 =?utf-8?B?RHpyRldqWWVDeTNnY3o5QTJVYjlVcGZLUVA4cXJPRTBudlNjQUJSdGNXdmRl?=
 =?utf-8?B?bkZpbnc5eGp0dUJWdmpDdThvbkxWc09PSWtzL3VoNXFtT3RKRzNGOXZYQmJI?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9796195f-ae36-4328-8d93-08ddc5dd3a17
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 09:26:51.0927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GV8s7tAYUVUj00K2T8khL/vAozopGv8OjI3fqAVI8HzPNEdVf1M6E0qB09JX+UH7RoKZWtSzIhhsyNOIa0lpxqTZN44smBqi811NxoBRkXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6980
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

Hi Krzysztof
On Thu Jul 17, 2025 at 2:38 PM UTC, Krzysztof Karas wrote:
> Hi Sebastian,
>
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1529,6 +1529,7 @@ static int eb_relocate_vma(struct i915_execbuffer =
*eb, struct eb_vma *ev)
>>  	struct drm_i915_gem_relocation_entry __user *urelocs =3D
>>  		u64_to_user_ptr(entry->relocs_ptr);
>>  	unsigned long remain =3D entry->relocation_count;
>> +	int ret =3D 0;
>> =20
>>  	if (unlikely(remain > N_RELOC(INT_MAX)))
>>  		return -EINVAL;
>> @@ -1541,11 +1542,10 @@ static int eb_relocate_vma(struct i915_execbuffe=
r *eb, struct eb_vma *ev)
>>  	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>>  		return -EFAULT;
>> =20
>> -	do {
>> -		struct drm_i915_gem_relocation_entry *r =3D stack;
>> -		unsigned int count =3D
>> -			min_t(unsigned long, remain, ARRAY_SIZE(stack));
>> +	while (remain > 0) {
> Is it possible for "remain" variable to be initialized to 0?
> If that would be the case then after your change we'd skip this
> loop entirely, where previously we'd run at least one iteration.
> Would that be a problem?
--=20
This should not occur, as there are several direct and indirect safeguards
verifying that entry->relocation_count is non-zero.
e.g.
```eb_relocate_vma_slow
1622 =E2=80=BA       for (i =3D 0; i < entry->relocation_count; i++) {
```
or

```check_relocations
1642 =E2=80=BA       size =3D entry->relocation_count;
1643 =E2=80=BA       if (size =3D=3D 0)
1644 =E2=80=BA       =E2=80=BA       return 0;
```
And it would be a peculiar choice to copy 0 bytes

Best regards,
Sebastian

