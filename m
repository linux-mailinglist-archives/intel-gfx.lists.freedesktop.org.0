Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95FC9B3563
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0B610E4FD;
	Mon, 28 Oct 2024 15:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UgElNrGg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77ADB10E14F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730130671; x=1761666671;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rmbFhH/pB4rXIHFboesIcSdq+Ma8vBgkE2JvIgqBarM=;
 b=UgElNrGg2mQPGnik6LmuUQFSoB7yQ0uK1g8MV2IHIQzxKiFm/Ge96h1H
 2KycwAnltzAUAqzlXuzAe/+wUPJwupeMslS4wdLKHwdSw0YRYz5xBgOgy
 0Z+y8xRrnSme8G7v8sD6VWBQGph/btSxaCP4B8RaSlDdULaDm6r8RqLKg
 iEFoRiCZxy/cXdEkHM0IdTIBqNkm+0/XsUVbjN6phRIBwNcLWvZEZC51B
 DW6lrdrc73lVFOW2LRBmdJbeRXk3oh5nOzaRF/xBByZN1xDe10zEAAU4Y
 QAt7l8wj/FGHvPJvaX2Giw5z0aY+tC7vYSIuZMDAyv70N9jMCvatj6YZh Q==;
X-CSE-ConnectionGUID: DMfweJ4zQVKjHZJzhTGZ+g==
X-CSE-MsgGUID: GTvczIxOQwWvW29TBjFFaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29505557"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29505557"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:51:05 -0700
X-CSE-ConnectionGUID: RarnquiVTTimzsirhgkQ6g==
X-CSE-MsgGUID: j9xmm2n6QTW7SZ82NFaxQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112479543"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 08:51:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 08:51:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 08:51:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 08:51:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3qj5+5GzRnQ/h3zsTV5WVus7fKBsL7f8Zz0nKJwUf9x43c3IQMud3hoTnxDwOTB0WRiGV2Fxr8q2OFwbiWg/b3y2ktrSN+m27IGZFzEiCsP/QZlKtqonywYkUsbBTE1+3TB+wB12AkTh8KzDZUaZ5giO1V2ibQHUjmFV0ma14iTtUJK2NQf57eHyFUj/K4lIxFlabXcN/lmGxKzZK3x7RhDemMHLWXFk4Ts3y8c18hseWHJ5jUrm+zjsWf/W18Ou5ljNk9/ff7ARPhcPV0TxkZrbF8JR07YFyBms7vbu9qpaLYgPrT1CMNCgX9Rhp58vWUml3YGSYoZY/Xqo2bFWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u8I/l3swMEIhgh9tr1MDUGMbPzASA/B0/VgYjLMV7nc=;
 b=WOjVyQvR7aG4bmTmI44q7sDJ87jWhaLbQuZCFEktDmGPUpFnxnD6qBYs8qzlF8QXCvzyJEx54HowcuWz1wFcvnHqm0qFYatYiA34EhcQLXDT/LNoHuJtDIvScu7dgnu8L6s0gPu43kPuwAzlseXzGf/U11x0taFNEedRUncikPzkM9X3MS3L0qdHKCO4pu8o0KCe/j7+SmqCw6hSi3jub04WEMZZgJN6IddRfzRNQ5apHLIV1CWQuYelqIMbkZEvFi2N5MmiQMfrZZEcoCaMPqyk/E/D5GF+Lary6Xp+WPIJrUNE6cYo5CEMQlLSGwMkopJVmtR/vjmUZA40np4ENQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH0PR11MB5268.namprd11.prod.outlook.com (2603:10b6:610:e3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Mon, 28 Oct
 2024 15:51:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 15:51:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241028125835.78639-1-mika.kahola@intel.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 28 Oct 2024 12:50:54 -0300
Message-ID: <173013065467.3514.124676025383491465@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:303:b8::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH0PR11MB5268:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b48ed64-71db-4f29-cdb6-08dcf7685195
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RTgvNjZRZ3VzaGRRQVZhR2hrOThtOS91TDVUeS9KbDJaVHM3cC82RkhvNjJl?=
 =?utf-8?B?dnZsc0pvSnllTW1oMklwTTdKMHBoRnhkaXFVUWpFaGZHVGNWSjhoMDZJcDZk?=
 =?utf-8?B?eUNjSVhyMGpmMllKdjV4dm5pRkxvb20yejZVZUpGWEpjSzVSdkZXYVBZZDhX?=
 =?utf-8?B?b3RENXBQK3FicE8zYXpYMWZZRHI3V0p4SUhmM0hSYXY0T2hTVUdjaHhtM2Jp?=
 =?utf-8?B?blJzOGswa2VQYmZpMHdCSGRudmI1cGEzZDNaTjhhdHgybkFlSUl5ajdIRkg0?=
 =?utf-8?B?SG9hWHd1NlJIKzBEOUlRMTlPWjNucmk3MlE2TEZyd2xyWW5GNmkyQitmZWMz?=
 =?utf-8?B?c21CaCtudE1wUy95dTRwVU5uT2FIOEYwTmxMQXRXTzhrS0RhUE1TTFN2aXEz?=
 =?utf-8?B?eEZXcGhyTlFBbDNjTFdzNkJxRWtkWjEyVEhsblZvb0VrRDlHeS9RY3ZsMkRQ?=
 =?utf-8?B?NFc5TE4zV2dKSkhqRXZmVzFRaGxmd3hzVFhwZmtaZ3hMNUI2WE0zdXpKb1BY?=
 =?utf-8?B?TnF3VXZsTHd3azJRdU03bVAwenlpd1ZRTm1BUEozN29SbG1RTTJyWEJ5NXdu?=
 =?utf-8?B?KzBEYytzVzA0aXVlUEFrV05GT0dKNDMyR2tSQjRQWDhlM040UmQ5QWZ4TGY1?=
 =?utf-8?B?Z0FCLzZIL0VBWngzc24zb3p4QXp6bXpzazZSUDdIVVZoV0FYWmJKNm1MaWEv?=
 =?utf-8?B?WnBvYlRSK0h4VWo2SjdnMUsyd2pOQm9MaXoxQzA3MWVDcFdxbmRzQnc2a1Rm?=
 =?utf-8?B?c3E1b2poNGZ6QWpkQ3FDQUhLd2RhZnlsd1NzOTZzWHhQOWFaWk9OQWc2UUc4?=
 =?utf-8?B?d2hwQ3dMckJLMkhqaytOcXdkRXYza3FSeWZvb1JuZTNINy8xbDMrVlFJUHYr?=
 =?utf-8?B?c2pYb1ZQbldkNWlUV1dWeGNIdHZHRWZLeU1XNFVZM09COTI4Sk9zS2NzVkxO?=
 =?utf-8?B?QzQwK2daeXlxNCsxMlc2Y0F5TjczVFY4Q2xlZnAwdWJSdFI0SDRzS1k2L3Jn?=
 =?utf-8?B?QWV1WTBFRWNZcE9XbEZKcS9qcXBMY05zMFpGQm1RMmttcW00L3lCTytrWGxn?=
 =?utf-8?B?NjBtN2I4VTRYbkxvZjZTd1dqWWpEd1N3ZFRybGpNd0MzOCt0akl5bjBnKzBp?=
 =?utf-8?B?ek1QYnNkOFNMNm1lUmxtL0ljS3hTbi8rOGdadjZvVEppaFJEcVdKSkJJZ3Br?=
 =?utf-8?B?SmdFSWV2K0crblkrYXNnYVE3YWZHWmZjZ0JnRitIc3JrWSswUU8xVCthU2h4?=
 =?utf-8?B?eHJhc0F2aFBmTG5sY2dYeVdnKzRSZDluQkVpOGRaZk9oV3hnN0N5clZZcHlI?=
 =?utf-8?B?T0xOaW5JQnZVWUl2MVFFdHJYVDNlYXdBQmZTZHd5TytOa0t4WWR6VW9DMGtn?=
 =?utf-8?B?Y1RXQnEyaFIrUmxQeUJocGZIZitLc1J5eXpsdlloM0FEUFVQd0dnSzZ2NnEw?=
 =?utf-8?B?N2grditOaWxtWlZzU0o0TzBSMXZNeVYyeGsycWhCUGcxUFJJSVJtNkljNEhw?=
 =?utf-8?B?V3N5Y01hNWIzVFJQL0RZS2VNTzRqdFVTTUthYndZS0tpcmdKRm9LWDBFYUdh?=
 =?utf-8?B?VUE0QlFMUDV0UlBZcXg1b2JqMUVDenlIQWVSWWU2YjhPZzRpUXNBR0dKMzBM?=
 =?utf-8?B?Q1ljdTFOekRPU1AyTUJFWkt5ZEhuTCtoOEhyYVM1OTlMbzM3TjV0c1RZNzF5?=
 =?utf-8?B?VHYrcFBnSTNxOGRDRHR4MkJhRk5zbUxCZHhaR3F0SGZnQm9KMjhGRnBVMjdr?=
 =?utf-8?Q?eZKC82nGSsg3Rnouw0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3JoZXh4eXVNWUNLQjBYT1JtY2N1QzRqN3lYZ0t3NVcrc3J2Vnp6dlhsdWdp?=
 =?utf-8?B?UlJ5M01TRFlDVHkzVExXY1kxWHk2bW1xQ3dYVjBUYUhzRk0zZW9ySlpiYzNr?=
 =?utf-8?B?LzF2Z052b2pOcCt6RU1qUm9KZE9PWHgyME96Y0NqZ2hJMGVQNk5LZW90WElK?=
 =?utf-8?B?cUR0QWU3cndqYmZDUnFnR2U5WFBYMVBFZmJJUzVGMmJLSWR5SHgzMDFWYnFS?=
 =?utf-8?B?LzJtRmNHU0J2MHk5d2VLbjIrNnp2akpOMmhlTG42ZVJ2bzVHTWMxbDdVMllS?=
 =?utf-8?B?MUVGbzdjbmtjNjdabXJOSnJYYld3NVhDR2c4UWJlYlBmZnRQcVVpNEpWK0xZ?=
 =?utf-8?B?SFBaWnFoRUFhQy9FYlBUbE9iRzBkNUxJdVdWVVlsYWpUbnRsZFQ3em9kOXRI?=
 =?utf-8?B?NFNDeTAxRG1KVzFoUm9kWncyMjMxSUVIYzFFTVQ0UlZwQjBDZ250MFhQNStC?=
 =?utf-8?B?RkhZR3Bnd3g3eFhyNEdLUlYyNTRJNXRvd294Z0tNMWE5a1RVUGdmZml2bzlp?=
 =?utf-8?B?WUxpUkQrYi9kSTk2MVdvaWpZZEo0Nzc1eW9lenBMSC9GVldBZmZRQlVERU4z?=
 =?utf-8?B?bjBCVStTWlpyUmJEODNrTTdXditHYmNlYXkvQXdwaU9UcWtTMWxSY1FWWHI4?=
 =?utf-8?B?b0RMcHRsaEtmL1pzL3FHVVBmdTRqZnRrQWoyZGlHalZkQzAySDkwampBZkFm?=
 =?utf-8?B?OHN4bDEzcVBUOStjM0F4a0ZqYWh2TEtCRUdQbWdHalUvWFF2dEs1TVkxZWZK?=
 =?utf-8?B?ek9pNlNhZGR5d2NGbTcxNzdLQmZGT05USDBtL2lMc0oxQ3VsQ0swWTI0eWcv?=
 =?utf-8?B?SHhFcXBwbUFFZHE0L0NLd3BmV0c4R012dngwTkNQSUt0QWllelBEazBnWlND?=
 =?utf-8?B?Tjh5WGtHSE1hV2RKOFVvWnREbFZQa0NHYUo0TVlPcmw3Z1kvRFRjMDVMNHBL?=
 =?utf-8?B?QmV4WXJhcFF6T21BY3hZVHVTcVFZUlYxWVNndDN6dXZhMktZRGswVzltSC9F?=
 =?utf-8?B?TzhDd2ZVWitobDFiSDlwdEwwcVNPeGhUcmVsMHBXdVhqY2xSSGcyR0p3QUNz?=
 =?utf-8?B?ZDdHcVR1TlFYb1NPOTh3RzVQTkRRK2EzSDd5OFBPQ1FnZlRjSTQxaXlFUWhh?=
 =?utf-8?B?QllOTXJLNGhMUHdsRFVEOTVXbzh5bzhRekxEUk1wbFBuSS9OWEloeDRDcEti?=
 =?utf-8?B?ejJzQ0JIL2ZEb0Jzb1VJVGMrSlZGZ2xLd3kxUzMxa2ZLS25BdWYyZjVXdVBy?=
 =?utf-8?B?Rnl3VlF6NS9GVmkrNlNaR3grVlZjS2ZNTWR4ZnF5cENGWVJYRWlKRnZkcDVN?=
 =?utf-8?B?TEg0Q1kySk4yLzlQbjBGbFJrUzJic3VnRlJVWGx3TUM4MFR3K2Q3SDlTNHNE?=
 =?utf-8?B?cmQvVzNSOFpzL2VDaHR4R1h6V2pjOVd1L0hQRE1POXpxdmUzOVQwQ1k3UmJT?=
 =?utf-8?B?eEVzMkhZUjJvaWtLbloybCtiQ3REMWIzUVo4N3ErajBQbFF6NFFpY0JSeUJE?=
 =?utf-8?B?Z1BpMC9IbExnYjdrWE9mRHNHemtrbnV6aWtUZUJqQys3b0NlSTlqQkxOTkIx?=
 =?utf-8?B?K2RQUW5qVmxiQXBvNFBDNUI3YWpybWlHWDBPUXdHdUduRndtZjhyM2JVYjJ2?=
 =?utf-8?B?NE96UE9zR0lPY2xUQ2lZTXRZak9vSVUrWnNCWXpIOTc5NjJnK3lCU1NJY1Y0?=
 =?utf-8?B?OXV0aDFqcGFqaFN0MnQxR3dhUXZnVjNmdTBBV2JsbU1YVHh2WW83cTlPb0pm?=
 =?utf-8?B?RXVwWmVLUHRqRnd2WGdJdVlSWkQwNkFzMi9iYlJsNy8wV0NkRnNORHJCblha?=
 =?utf-8?B?L1RmV3VxempaL01Pa2RNNmZVbnFjM1JWSXVCV1pCQnJnMFJ1MlE0SXdFRGlS?=
 =?utf-8?B?akRWbndnSW1IQnA2aDMvTjF2eXUvL1lMeUF5Ty9zMmgzcFNuc29sSDN2M2ZM?=
 =?utf-8?B?eXVxTVEvZDV3V3RObFhoczFZeVlmaUtnemc1b2pqMTdlbWd3dGhCMkptbjNa?=
 =?utf-8?B?T1pvZFNYbWV3amQyUVBmNnQxZjhRMzlnUHFNa0dOdC8xSzg4ZVhYUWJwN0pS?=
 =?utf-8?B?NjZEeitWSjVyZjNYcjAxUVV5Y3RuUDlIMlRCQ3JjdDdKUjRuQlpxcitzVHJZ?=
 =?utf-8?B?MEN5OWExeG54RWtLa2o3cjhkMzRwZDZXTzNEVm5Ld3ArS3I2THFnamtFY2hC?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b48ed64-71db-4f29-cdb6-08dcf7685195
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 15:51:00.0642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zRaUGK5SFSV/j9N/MrUZePKnpphxsO2Xg11TexB8EgHb73FawgLVbj4FoF5zt2y7Q3BwhO6/v0g963/wVG964A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5268
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

Quoting Mika Kahola (2024-10-28 09:58:35-03:00)
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.
>
>v2: Rename WA function (Gustavo)
>    Limit WA only for PTL platform with a TODO note (Gustavo)
>    Add TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY for clarity when writing
>    register data (Gustavo)
>    Move register defs from i915_reg.h to intel_cx0_phy_regs.h (Gustavo)
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 +++
> drivers/gpu/drm/i915/display/intel_tc.c       | 46 +++++++++++++++++++
> 2 files changed, 53 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_cx0_phy_regs.h
>index ab3ae110b68f..e46c07cd20e0 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -363,4 +363,11 @@
> #define HDMI_DIV_MASK                REG_GENMASK16(2, 0)
> #define HDMI_DIV(val)                REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)

This part of the header contains definitions specific to the PHY
components that are not memory mapped by our driver, but rather accessed
via message bus. As such, I think TCSS_DISP_MAILBOX_IN_CMD and
TCSS_DISP_MAILBOX_IN_DATA are better defined at the end of the MMIO
register definitions (i.e. before the "/* C10 Vendor Registers */"
line).

>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))

Missing blank line here.

>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #endif /* __INTEL_CX0_REG_DEFS_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..924c3ff04eb6 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,45 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool wa_tcss_power_request_assert(struct drm_i915_private *i915,
>+                                         bool enable)

I think we should either name this function wa_14020908590 or add a /*
Wa_14020908590 */ comment above it. I would go with the former, but I'm
okay with the latter if you prefer.

>+{
>+        /*
>+         * Limit to PTL only
>+         * TODO: Add check for PICA IP and use that instead limiting WA f=
or
>+         * platform
>+         */
>+        if (DISPLAY_VER(i915) !=3D 30)
>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "Power request assert WA timeout waiting for =
TCSS mailbox run/busy bit to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "Power request assert WA timeout waiting for =
TCSS mailbox run/busy bit to clear\n");

Hm. I think I missed to get my point accross with my earlier comment,
sorry.

What I meant was that I think it would be good if the first and second
debug messages were different. That way it is easy to spot the point of
failure (waiting to use the mailbox vs waiting for our message to be
handled) in case any happens.

>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1061,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !wa_tcss_power_request_assert(i915, enable));

As mentioned in another message, maybe we could have this warning done
inside the function to make things self-containined and not rely on the
caller to do it.

--
Gustavo Sousa

>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>--=20
>2.43.0
>
