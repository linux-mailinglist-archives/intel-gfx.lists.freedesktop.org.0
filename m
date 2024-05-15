Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F738C674C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0ABD10E451;
	Wed, 15 May 2024 13:24:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cggAykGi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D57410E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715779451; x=1747315451;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=itLSraOwS8pfJ5VV8HluqKnyzRJWvtI+yxqo5t9THe4=;
 b=cggAykGilVWPZS5115/GDYyTTmpEVchK4fslV6+7qyVRrdA+es94Jrxh
 Pbii6BTJA2V1plwqm3NuQDKtbez4eg7XsTbJABt5S3q+FIKNLCaPrERjL
 OXKKpQCet0x9AREzHk8MU/t5gaWcl2aQZ6eakZATcu4XRCobvK5VWCHtL
 NympNoj3mWIf8YC4xraOMqkA6HQEn+NW01hsUS7mGuLosAa+lTN5PTfPQ
 9fkeD3A4DKYauDQhheT1HSk1wOtPB4NBTsAAgxSS+kXkfI4zPm0sGhors
 4BdmQ6YzJOMLaSGPxbTcn03vEgymBDkflJz3dHD5ihggC2GJU+u/qpRnB A==;
X-CSE-ConnectionGUID: 1BqFjUOyS8CwGuoKMCGfIA==
X-CSE-MsgGUID: AeC/c40JQS61OVkrqzVCgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="14774887"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="14774887"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:24:11 -0700
X-CSE-ConnectionGUID: TSFDzMczSJWvPPBPgkpc4g==
X-CSE-MsgGUID: OplnovQpQCK03V+EkzhVkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="35936327"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 06:24:11 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 06:24:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 15 May 2024 06:24:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 06:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEEbxi5gtKHY/DsU4AKLAmgVEexqtVjaZSskyzYRVtBSxewVC5u6t+KJL07aebrafnjXhevX1bzZRBDT/OKT+5AgWarGbPhuxEr6nb8dHQjINPB2R3NfxUIP3h5dwWtsfrvTmSnoHNpfYuSUd22OTspfMC/6c4jj1uFsNyxjcOi9ILxX1W5mrki9ICwnJYuPeuXEgbSSPERoTJ839pR2fnMW6CCqHRGJCFQtyHUbS4qLh6tiP59sjHWNfZLk8CIbkqksJfcZYk4ZvxPZ+mB/Cd/qbx4JPLOMHEbKHo73RPEBqWJdON14kuJ2NgCPdhIdq+Sp38Mgc6ghi8fsBZURwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gvg+yy+mQCOjfCWqiyZ4Jr0j9nmo3TKjRHoBKcGgfhM=;
 b=dPxvN+rj6eJwSBKZMg3bHn/gdr4i3Try+ZR47Ihc0ZjJa5M2OaBb4OO7XLlvq46Q92l3a0xJX4jkuqey5Zwm3B5BJK/Nq8lQz54nKxkkmJvYCq6TO6Mq4pyZCsgS949JWiTFa1RgOjBw8MhcgIyDdRe8/7ixfZnP25FTRfvNznl+XoJgBlXPPHs/SI8ba6JSRKJicZGtf09yT3ieIpU0V1BQTzJsD8uSlyFzul5L3QNfDZoA0TI3N3VvQlD2zQcV7fpa+vBMazrXHAngzxnj9L9JMnlaSFDidjwyKd9VMGV3Bo7qM9g01HmwdEDQMvZUcspkrE5A4uf5rzi3N/y6PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6247.namprd11.prod.outlook.com (2603:10b6:8:98::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 13:23:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 13:23:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240515064524.164137-1-mika.kahola@intel.com>
References: <20240515064524.164137-1-mika.kahola@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Move port clock calculation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 May 2024 10:23:54 -0300
Message-ID: <171577943416.27300.8384710551224092618@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0054.prod.exchangelabs.com (2603:10b6:a03:94::31)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6247:EE_
X-MS-Office365-Filtering-Correlation-Id: 87f85205-9d55-48c2-4961-08dc74e247b4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230031|366007|1800799015|376005|16122699003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1RMTFZDa1oyajd6SzNmRzA2ZFhXY0N6Vm1oTS9hUU1JWklnVFVQYWVFNkQ3?=
 =?utf-8?B?UWduMmpEY1B3KzdpY24rWFZENHFOYVg5WStPVExpazhxNFhsMGNWTW15Qm1U?=
 =?utf-8?B?WEJNQWg4dzRBVGFWRTh3Y1lGaW5tdWNkdngvN21nQ3pjQkR5bzNyc2pJQXZF?=
 =?utf-8?B?R2J4NU9SNk00dFQ4T01EQ3dyeXJ6aWNxQXdNNFVEb3RXYnJ1U3JIcGcwR2xZ?=
 =?utf-8?B?OHNDcFFJNHBzNFYzWXBVYWdKV2ZmcklPWEVhY3VzSEZhd016UHgvUWE1bU05?=
 =?utf-8?B?b2o2OW9tKzNsbFMzTExRNkxEUTN1TG0ydXd1VXRNdEdFTk8rNFloc3lPSlJX?=
 =?utf-8?B?ZmFlR3lXYTE2bElOUlFHMzQzVVBRSnllVlQ3TlI1K1NHMmFacU1VT2ZNbHdD?=
 =?utf-8?B?Y0M2SUFZNTR3NGd1ZHNsRlJtRmdwWjVpZXJUNlpmUlpwVFF2UTNURWVCTmMz?=
 =?utf-8?B?YzZWNG1mT0pRS2lTYjN1L3dVcjNQZU5aU2ljMDJzYW5JYWNmS0JtNlBvTWlI?=
 =?utf-8?B?Wi9Fc0FyTjNTb0QrTTJiUFl6T1hzQXlKcTI2emVGWVlqVUthK1NEamFPUmVw?=
 =?utf-8?B?Z2taQlJ4MXFWU1Zkamx1MEloZjE4VWlSTFlPaDJRVGZrSzdVb2ROOHNkR2cw?=
 =?utf-8?B?aW9WbjFEN3ZmaHgrc3FpSnR2UDd1S1BHdGRFOWxQb1JBZ3JFZ0N4cHJmMlpa?=
 =?utf-8?B?WVVXbVVFT1FrM0R6dHFoaFhFNVdneVk4Qkk0RWJuTW5kUjg4SnpwdWVWWjZ1?=
 =?utf-8?B?ZVNOSGJ3NnM1MitKZXRyTm5HakZEaTRUYTQvblR1b0ErQ0xxSjEyaGx4VlJj?=
 =?utf-8?B?cGFqUlVvUDZ2WG44Zm04cTc3bXV1WEdZa3Zqa2puQktvZ2NSWlhQT2N2MjVl?=
 =?utf-8?B?ekVwMkUwSnVkbjVHU3Z0RjhmR1dnYkFaQ3Q4b0dRRUEyMjZ0ZEh5M1NRdkpF?=
 =?utf-8?B?c3JyV1lVMGl3RjdTS0FWR1orQ3J3WEN6WWdQWWVleS9SQWFIRU9aYlVzYkk0?=
 =?utf-8?B?TzIxMTJVK0Y0RGh4N1htZ00xM1VwNTFwTFV6b3lpRzA1amRWbTIyMW8vZlpB?=
 =?utf-8?B?Y0IwN09iT0o5alZqWG1zb013MElScjhVYjI5MEhwelVVQXVHN0JLTFNwQkJV?=
 =?utf-8?B?UVlHT1Y5cjJvZThnTG1Ib0dhQ04zcmZZelNHT0EwNmJ6V2RmZnQ4Q05zaXpR?=
 =?utf-8?B?QytIUHNHNDNBY0Q2Wk9MRkpETTE5MHFNOURrYkZrdmgxdUNJSHZNSjh2VmZN?=
 =?utf-8?B?cW1NT1lMRVA1a1l5SFMxSXpPMUVpRW40blFOOVVnR1BGcWIwQUtqRXVkQWdN?=
 =?utf-8?B?OW8rbUxTQ2RrajNPTm9QN3dDZjZaQjZ6czdOY2NqTFdxUFdhY0d1cTBlbHB3?=
 =?utf-8?B?dTlSY3hRdmMydHhXckNrT1MzeGludjBNTFlZMC9tSkZnckhHeGg0cEhqdGN4?=
 =?utf-8?B?UTBQL21sR3oyTmxncms4VVRHSU8vcjk1dytYOXJlYW9YTmF2SW5WK2ExTDZ6?=
 =?utf-8?B?T3RncEZuMWpmYkIvUGtqVnVDZG1rUmVnOHIxRTdoM3BRWUVEZHAwb01IZ2Rr?=
 =?utf-8?B?RDRxQkdTcTdUYUxWUFNYL1RldGpFZnVxL2REdGMvOWt4T2VsdEt5Zk9nNzVs?=
 =?utf-8?B?bks1U3BFRFM4Zys0MHFFZ1BkTy9leEVqWHd4bVJjS0lmTW5DKytXeEsrK05D?=
 =?utf-8?B?WnV3dDNwQk1RUFFwdFZISkIrbklacjVBSmpJTHVTSElUdTFha056MFNsK2NN?=
 =?utf-8?B?M0k3SXlCMThvYUthTGJYRTBpVkxYUXMxUTBFMWZZV0dUelFPQ1JiY3V4NHFY?=
 =?utf-8?B?OTZUa1Fpc2RSUGVKUlozdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0ZJenI0NDErenJaOElNSUVaMFhxVVhGTGMvYVpkbzJsdUxXYXVhZlUyMjlW?=
 =?utf-8?B?Y3V4REQ1NHN0d0hIbS9nUkRKZUpueFRIbkkvTEpqZEQyR0xCVkQ0ZWVEQ3VH?=
 =?utf-8?B?RkIveE5PcUE0UkhYSEtpVHdUYjZQbDNwRDN6U3JhdUE3NGJocmd4UGlNR25D?=
 =?utf-8?B?WmxTVzVDRHlpMUg5VTZjYkNnc1JpN2g1bGE1Y1EwVnZzV21xeUxnenRQSTR4?=
 =?utf-8?B?R3hUYlM0bDcwK2ZFcVZvMWlaOGJiTXNFUlpxaUZ3Y05SSEF3SE9BKzVZK3Vj?=
 =?utf-8?B?UDdkdmdUUmFuYmxWZkZVdWNDTzFndHFYbGdpVkNUSkUxdm0zbS9ETDFNMjVJ?=
 =?utf-8?B?MWhNbXF1ZWhONm4yYXgyb1BXSy9wWm9SS0dCejYvMitMaWtWYklGbVNvcUNE?=
 =?utf-8?B?L2RkUmJUR3MrbXJKRGRERVEwUVlOd1ZHYnpydWFxUHlpUlAvZHhWdzJsOXFt?=
 =?utf-8?B?aEpXU3Y5WDVaeVFkNHN6UmUwcStzQVlnbFRaQ0NNRmROWDZ1SXVSeFJLd3VU?=
 =?utf-8?B?REVNaUhKVkc2TmxFc0dEb3lOR2ROblp0R1VpdENCbExPdmhsM0VwdWFWMlMr?=
 =?utf-8?B?UEVSOVo0U2hKU0xSUVhmODhhZU9Rby95dXY0MmZFYnVRVksyY3dCcHZsS2h3?=
 =?utf-8?B?NHloWVRNazNNMHkvend2VEt2YzJYM2gvbG5NWlZLSlY0R3NHQ3JqMVRPeXVk?=
 =?utf-8?B?Q1pXdmRKVTI5b2w3RjJOUlI4cUl1bURBYlhZQllDSjJvdENtUzkwdVErZ0ZI?=
 =?utf-8?B?TmIrdmpvSmdkUjB2YjhyQjlHYzVqdk9qQXRyUHljRGllak5PR1VYR0lKVDNR?=
 =?utf-8?B?LzZzZ0RycFdlNHF1c2NHUTUyUzdYaTYzbWZ3ZC9RVUh4NHJwdnlWOStSb3Rj?=
 =?utf-8?B?WlAwMWZZTm9mdnVKdDlNTDhmeDBNajk4Q0loTTFTSjBubDBxMWxuUUJDMTBy?=
 =?utf-8?B?WkkzNTkyWmpKcUV3YzhJV29YOGs4MHA0QUl1OFpHUTlPVUhIeDczbzZhcUdO?=
 =?utf-8?B?TjRCM2lWRXEvbkw0amRPYUNGVUh6UEhpbG10OStXZW1nQjNKR1hKYTlrVDRo?=
 =?utf-8?B?M1J2a3BScml4Z0EyZ1p3eUQyLzhRVFBrQkk2c0ZFK1QrZWV1VVRmUkJ4dDJN?=
 =?utf-8?B?NUxCUFpoRHRaOG9KUGxraElCZ1lGZndKWGVGQWhlMjdod3hoVmhlTUdBTEcr?=
 =?utf-8?B?eUFnWjQxOW1oclI0bDZDdklNT1h0ZjgrWmNGVnFzMDZMY1hnbHJrUkpjYVB2?=
 =?utf-8?B?UEZvVktmY3pMVkZEQlp4bWIwMHdYWkpTMEFFRERvTFdLcjZOUUJ6K0ljSUto?=
 =?utf-8?B?cjdGclhnc1FIaUxuUTlrM1hjRkl3Nm5pMHZobzJJUytCVXIxQjJ0Y1FsWE9z?=
 =?utf-8?B?WUpFNmxEVWwvQnJnT0RrVUlpeVBIUlZaQzQ3dUFUU0pKZVloVUJ4aFdJTFBB?=
 =?utf-8?B?NS9qeDVwWXNqRStFYlJiRmtPdzd0NkgwcURFdW1SS1I2REZZdWZKM1pZZFZq?=
 =?utf-8?B?eDVZMk5JMDhPNDFTYm94NnBDOTdycmRtbG1hY0JObG5KTGF5V1ZDNThCS2hy?=
 =?utf-8?B?THpzcVlyU0QzL1JGYUYwUHVWbHRuWTJ0WUl1Q2JCTXUwTHdsd25BNTdlbVli?=
 =?utf-8?B?L3NCT1FuWEdDVlNnb0ZIVjhhdHFqbHQ2eTJVRlhxN09rcXlYOVJKYUozZitp?=
 =?utf-8?B?RFlEb2tKSUs5ZDkvNndIVHk5dE5tZTNJczEvNk1CbzVDdTN6dk40K1NDSElw?=
 =?utf-8?B?YzFQUDlrUWlaMHJDdmM0OU1HYkduMFU4MWZJN0k3dm5WMnd4VGQvc1dWaEJ1?=
 =?utf-8?B?bmxwYXFUck5SczNQVnk2dStsczFKUnZ2OFJCUTdyc0tyRVRpZU1OaUNIMWlF?=
 =?utf-8?B?S2RVY2xJamJ5aWhOcVQveGZKNHE2MDFQY3hmenNqTkkzMWxOUlBIZXhkMkJi?=
 =?utf-8?B?ckE2WFZURGlBOFllVzBEUkdTdFFDRTJnYzRHSnlnQXdBRitEbzNDS1ZtbXRi?=
 =?utf-8?B?akVKeEU4YmRLMFVMclMxZGhqUWl1eXVzZjYwanB2WGZ2Y25YRVhXUmRFM25o?=
 =?utf-8?B?SWh2cEU4ZnVNV3YyZkljTS84Mzc1a2kyalQrM0ZDaFVWMGNNSzA5REZTaGdY?=
 =?utf-8?B?K3UrV1I4MnQ2b29jcGthMXQwU0N6RDg3Ujd0cFp6MmtkOXJNN2ZQeWRaYThh?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87f85205-9d55-48c2-4961-08dc74e247b4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 13:23:59.7543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CNO6kbwrxUFaJaAmwGbClffMZe8A0HZln3dOENPE6NT7+42bEhBJjghDd0Ch0g+o5EAfBmtWKEWigt801KMguw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6247
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

Quoting Mika Kahola (2024-05-15 03:45:23-03:00)
>As a preparation to remove .clock member from pll state
>structure, let's move the port clock calculation on better
>location
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 176 ++++++++++---------
> 1 file changed, 91 insertions(+), 85 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 1b1ebafa49e8..9f860a05e623 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -1970,13 +1970,92 @@ static const struct intel_c20pll_state * const mtl=
_c20_hdmi_tables[] =3D {
>         NULL,
> };
>=20
>-static int intel_c10_phy_check_hdmi_link_rate(int clock)
>+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>+                                        const struct intel_c10pll_state *=
pll_state)
>+{
>+        unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>+        unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
>+        int tmpclk =3D 0;
>+
>+        if (pll_state->pll[0] & C10_PLL0_FRACEN) {
>+                frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11=
];
>+                frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13=
];
>+                frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9]=
;
>+        }
>+
>+        multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_sta=
te->pll[3]) << 8 |
>+                      pll_state->pll[2]) / 2 + 16;
>+
>+        tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state-=
>pll[15]);
>+        hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pl=
l[15]);
>+
>+        tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier =
<< 16) + frac_quot) +
>+                                     DIV_ROUND_CLOSEST(refclk * frac_rem,=
 frac_den),
>+                                     10 << (tx_clk_div + 16));
>+        tmpclk *=3D (hdmi_div ? 2 : 1);
>+
>+        return tmpclk;
>+}
>+
>+static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state=
)
>+{
>+        return state->tx[0] & C20_PHY_USE_MPLLB;
>+}
>+
>+static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,

While at it, also remove the unused "encoder" parameter?

Also, note that there are legitimate checkpatch issues reported for
this patch, with those addressed:

    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+                                        const struct intel_c20pll_state *=
pll_state)
>+{
>+        unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>+        unsigned int multiplier, refclk =3D 38400;
>+        unsigned int tx_clk_div;
>+        unsigned int ref_clk_mpllb_div;
>+        unsigned int fb_clk_div4_en;
>+        unsigned int ref, vco;
>+        unsigned int tx_rate_mult;
>+        unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE, pll_state=
->tx[0]);
>+
>+        if (intel_c20phy_use_mpllb(pll_state)) {
>+                tx_rate_mult =3D 1;
>+                frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mp=
llb[6]);
>+                frac_quot =3D pll_state->mpllb[8];
>+                frac_rem =3D  pll_state->mpllb[9];
>+                frac_den =3D  pll_state->mpllb[7];
>+                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_sta=
te->mpllb[0]);
>+                tx_clk_div =3D REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, p=
ll_state->mpllb[0]);
>+                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV=
_MASK, pll_state->mpllb[6]);
>+                fb_clk_div4_en =3D 0;
>+        } else {
>+                tx_rate_mult =3D 2;
>+                frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->mp=
lla[6]);
>+                frac_quot =3D pll_state->mplla[8];
>+                frac_rem =3D  pll_state->mplla[9];
>+                frac_den =3D  pll_state->mplla[7];
>+                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_sta=
te->mplla[0]);
>+                tx_clk_div =3D REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, p=
ll_state->mplla[1]);
>+                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV=
_MASK, pll_state->mplla[6]);
>+                fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_=
state->mplla[0]);
>+        }
>+
>+        if (frac_en)
>+                frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_den=
);
>+        else
>+                frac =3D 0;
>+
>+        ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1=
 << ref_clk_mpllb_div);
>+        vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17=
 - 2)) + frac) >> 17, 10);
>+
>+        return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
>+}
>+
>+static int intel_c10_phy_check_hdmi_link_rate(struct intel_encoder *encod=
er,
>+                                              int clock)
> {
>         const struct intel_c10pll_state * const *tables =3D mtl_c10_hdmi_=
tables;
>         int i;
>=20
>         for (i =3D 0; tables[i]; i++) {
>-                if (clock =3D=3D tables[i]->clock)
>+                int port_clock =3D intel_c10pll_calc_port_clock(encoder, =
tables[i]);
>+                if (clock =3D=3D port_clock)
>                         return MODE_OK;
>         }
>=20
>@@ -2035,7 +2114,8 @@ static int intel_c10pll_calc_state(struct intel_crtc=
_state *crtc_state,
>                 return -EINVAL;
>=20
>         for (i =3D 0; tables[i]; i++) {
>-                if (crtc_state->port_clock =3D=3D tables[i]->clock) {
>+                int port_clock =3D intel_c10pll_calc_port_clock(encoder, =
tables[i]);
>+                if (crtc_state->port_clock =3D=3D port_clock) {
>                         crtc_state->dpll_hw_state.cx0pll.c10 =3D *tables[=
i];
>                         intel_c10pll_update_pll(crtc_state, encoder);
>=20
>@@ -2209,13 +2289,15 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>         return 0;
> }
>=20
>-static int intel_c20_phy_check_hdmi_link_rate(int clock)
>+static int intel_c20_phy_check_hdmi_link_rate(struct intel_encoder *encod=
er,
>+                                              int clock)
> {
>         const struct intel_c20pll_state * const *tables =3D mtl_c20_hdmi_=
tables;
>         int i;
>=20
>         for (i =3D 0; tables[i]; i++) {
>-                if (clock =3D=3D tables[i]->clock)
>+                int port_clock =3D intel_c20pll_calc_port_clock(encoder, =
tables[i]);
>+                if (clock =3D=3D port_clock)
>                         return MODE_OK;
>         }
>=20
>@@ -2230,8 +2312,8 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_=
hdmi *hdmi, int clock)
>         struct intel_digital_port *dig_port =3D hdmi_to_dig_port(hdmi);
>=20
>         if (intel_encoder_is_c10phy(&dig_port->base))
>-                return intel_c10_phy_check_hdmi_link_rate(clock);
>-        return intel_c20_phy_check_hdmi_link_rate(clock);
>+                return intel_c10_phy_check_hdmi_link_rate(hdmi->attached_=
connector->encoder, clock);
>+        return intel_c20_phy_check_hdmi_link_rate(hdmi->attached_connecto=
r->encoder, clock);
> }
>=20
> static const struct intel_c20pll_state * const *
>@@ -2275,7 +2357,8 @@ static int intel_c20pll_calc_state(struct intel_crtc=
_state *crtc_state,
>                 return -EINVAL;
>=20
>         for (i =3D 0; tables[i]; i++) {
>-                if (crtc_state->port_clock =3D=3D tables[i]->clock) {
>+                int port_clock =3D intel_c20pll_calc_port_clock(encoder, =
tables[i]);
>+                if (crtc_state->port_clock =3D=3D port_clock) {
>                         crtc_state->dpll_hw_state.cx0pll.c20 =3D *tables[=
i];
>                         return 0;
>                 }
>@@ -2292,56 +2375,6 @@ int intel_cx0pll_calc_state(struct intel_crtc_state=
 *crtc_state,
>         return intel_c20pll_calc_state(crtc_state, encoder);
> }
>=20
>-static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state=
)
>-{
>-        return state->tx[0] & C20_PHY_USE_MPLLB;
>-}
>-
>-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>-                                        const struct intel_c20pll_state *=
pll_state)
>-{
>-        unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>-        unsigned int multiplier, refclk =3D 38400;
>-        unsigned int tx_clk_div;
>-        unsigned int ref_clk_mpllb_div;
>-        unsigned int fb_clk_div4_en;
>-        unsigned int ref, vco;
>-        unsigned int tx_rate_mult;
>-        unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE, pll_state=
->tx[0]);
>-
>-        if (intel_c20phy_use_mpllb(pll_state)) {
>-                tx_rate_mult =3D 1;
>-                frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mp=
llb[6]);
>-                frac_quot =3D pll_state->mpllb[8];
>-                frac_rem =3D  pll_state->mpllb[9];
>-                frac_den =3D  pll_state->mpllb[7];
>-                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_sta=
te->mpllb[0]);
>-                tx_clk_div =3D REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, p=
ll_state->mpllb[0]);
>-                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV=
_MASK, pll_state->mpllb[6]);
>-                fb_clk_div4_en =3D 0;
>-        } else {
>-                tx_rate_mult =3D 2;
>-                frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->mp=
lla[6]);
>-                frac_quot =3D pll_state->mplla[8];
>-                frac_rem =3D  pll_state->mplla[9];
>-                frac_den =3D  pll_state->mplla[7];
>-                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_sta=
te->mplla[0]);
>-                tx_clk_div =3D REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, p=
ll_state->mplla[1]);
>-                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV=
_MASK, pll_state->mplla[6]);
>-                fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_=
state->mplla[0]);
>-        }
>-
>-        if (frac_en)
>-                frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_den=
);
>-        else
>-                frac =3D 0;
>-
>-        ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1=
 << ref_clk_mpllb_div);
>-        vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17=
 - 2)) + frac) >> 17, 10);
>-
>-        return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
>-}
>-
> static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>                                           struct intel_c20pll_state *pll_=
state)
> {
>@@ -2636,33 +2669,6 @@ static void intel_c20_pll_program(struct drm_i915_p=
rivate *i915,
>                       BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
> }
>=20
>-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>-                                        const struct intel_c10pll_state *=
pll_state)
>-{
>-        unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>-        unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
>-        int tmpclk =3D 0;
>-
>-        if (pll_state->pll[0] & C10_PLL0_FRACEN) {
>-                frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11=
];
>-                frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13=
];
>-                frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9]=
;
>-        }
>-
>-        multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_sta=
te->pll[3]) << 8 |
>-                      pll_state->pll[2]) / 2 + 16;
>-
>-        tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state-=
>pll[15]);
>-        hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pl=
l[15]);
>-
>-        tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier =
<< 16) + frac_quot) +
>-                                     DIV_ROUND_CLOSEST(refclk * frac_rem,=
 frac_den),
>-                                     10 << (tx_clk_div + 16));
>-        tmpclk *=3D (hdmi_div ? 2 : 1);
>-
>-        return tmpclk;
>-}
>-
> static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>                                          const struct intel_crtc_state *c=
rtc_state,
>                                          bool lane_reversal)
>--=20
>2.34.1
>
