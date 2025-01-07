Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF49A04145
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 14:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF68D10E314;
	Tue,  7 Jan 2025 13:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ub8EACf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B851910E241;
 Tue,  7 Jan 2025 13:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736258082; x=1767794082;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gJ9dnw9PT+4s/Q6REzO/ZEWU82P3snkW7W6tTjYdHYk=;
 b=Ub8EACf39MmRO3l81fWNSOEInuGmvWkNQnzWalrM3J0GBFsXnKA5Z9Bh
 hrjTqs5P1NqWCnLETviOIHkN6AJ7cQVxtvXuJKdRGV/YlSu+SOXor20kx
 8lVAF+pzEEH8X+dL9lvdlHQYTQlF19aiLWl5Vu2g8mdTt9Zq7tp0k/aH4
 no0/7Mq2bmYFSC3srB7hrlXpTj6oG07dIXAcWOg6vJJu/ihfyyldwe9At
 b4kpjHtDw6y9Jb1tec3mBYGti0IL4aOjgSf34B0rPaVhtTtn68KFPiO2x
 ijFZyKv2CJ6MbI/NEQoSX4Y5Bvu5JU0E+lnP4u3uW8xE/iRl9Ikk4g4xy w==;
X-CSE-ConnectionGUID: 1aQSBl2vRNagycqJ6yO2dQ==
X-CSE-MsgGUID: OvNifXX1R5Kxkwg/X5p3HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36661538"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36661538"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 05:54:41 -0800
X-CSE-ConnectionGUID: 9SiQnLnyTV+tgVUgB/I0nw==
X-CSE-MsgGUID: jKulMEjyRz+6sBkmZQKbiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102968144"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 05:54:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 05:54:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 05:54:40 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 05:54:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=irTzMjfufe9RGucUqVpvyL4hk8d8s05BC0cw3N2tJR1zXIjfWK/+hJSAz6l+eH1XPE9ZI8/35kDF5jLuBrj276w/nqtG0W31vJFIl1XtxZtzXgbO9r/R4RGuZ9wGLNZRuBkoHGEsMPz6E7Ub8vWWJ2upyo/0jBixGaa+nlyULcyFPkAWAJDSTSTlarH1RZUPIFbTKmyFBJvuG0VrBCteGy49n6l24eix7dT3Zs+Z55021JOCWbPDHXq6WYDPmLKvAHeuxzZ7ITXw1xYx4Qm+QyDrZ2vfVO+atP0p1VUEh+PDaWvXJeI7z9k4ew7YUisoTf9pmTAkkjdjeyE9PIEQvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E0Gyky5uCAudRBbdeueIdvVuxjwZLnCnXR1Ml77kptY=;
 b=JoE6E8yq3R84QZHBUiu4mZKE2N6oD6V/DkTLU7BYXYpPGiufthCCWZpx9ma+Onj2lgAYgGlOOU4xZ6Z+8GakYA4STvZf/2kcIamH15fM4B46iFiPiAy4iefZNNR26A8Bs90Zg1woJN9k7CRsTIt5t/9c6Sh5fOaK+JeJirw73DxUqQf9+W0MLsKCJDonS0M/sI2bp0XV0E61k6+qZCZkNxtGHztdUYiEtdPRBE+IEs0IJNQiBT6ze8IdDAwBHYwMJByEivAC7juEDY657qOKmvJKsLe8pOKkIPumvvt8zYdBWJ1PDAnsoio0NIDBOguLP4v04MTCY+J6hNI41ZSQ8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by MW4PR11MB6809.namprd11.prod.outlook.com (2603:10b6:303:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Tue, 7 Jan
 2025 13:54:34 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 13:54:34 +0000
Message-ID: <7e1ea9d8-fad8-43d1-85f3-b03e414a1528@intel.com>
Date: Tue, 7 Jan 2025 19:24:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for pipe
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250106165111.1672722-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250106165111.1672722-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PEPF000001AF.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::b) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|MW4PR11MB6809:EE_
X-MS-Office365-Filtering-Correlation-Id: fb872d38-b31a-4c02-9ffb-08dd2f22d12e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekJoWWZwYWZ0WHB4bEZKVUZ2Q0FlaGN6N0tyVDZDbzlUZE5yZnl2bGFrSXJY?=
 =?utf-8?B?WGlGSkxQZldySklNTEgxQ1JoWDFGMFpJa1pQMFpxSldjd3pCczlEMEVXbUdG?=
 =?utf-8?B?Q0NYRUU5NSs5QWs2NXZUS21VMytBRHNJYVBqMkI1YUZLS2c0aTJIK1VqbHNn?=
 =?utf-8?B?KytMS09ib0l1MmlOL1RiblBtWldSaDYzOUlOZzNQTENJanpJRnUxNnc0bWx4?=
 =?utf-8?B?Q1dHZE5CdHNIWENNeDJjenRHUWNpRG1wTTh4S05QbmR2RGlHcWZwcTlnaHNM?=
 =?utf-8?B?SmpxNUFxUWQ1d25uN3V4eHU2QnVoZXp3aGZjYTAwUWtNL2JZckNvZkF5a3RH?=
 =?utf-8?B?R3Z5RmxBVnNDVE03NXY4V2haLzBIN2NiWnlScUp6Y01TTFNIU2JwZ21TWGli?=
 =?utf-8?B?RytRK3lTWnBpcjBYUkRUMkppNmJEclI4NzFhSEpGM3MvQjlPQlk3WmZuWGRT?=
 =?utf-8?B?Y1JiRDVZOWhla1IwR2tlSmRBR21wdW1zOTFOUDZ1NWoyYVplR2ZFTWlCaGZ1?=
 =?utf-8?B?TFN2Nlhaa3ZOWW16ejZaeHE4SUxRNzBpVGM5ZWpLMnB5VTV5elBJOW40VDhS?=
 =?utf-8?B?NDh2bjlPd085aE1IamQxdGV0N0ZRMldEUUVqVzJ3TEFyNlp4QjVYcTFDRHhy?=
 =?utf-8?B?ZktvY2NyWnJlSENiRmxYNTFmRE1BOFVDZTN5ZW54YXpvYXFPRko1bjdLYnZI?=
 =?utf-8?B?SzdsQTR3djY5SXNVd2hNZEJQUDQzL3o4RzNPc09hOTY3YnpWdjUrR3NvUU93?=
 =?utf-8?B?KzlCaEFIaTFvQUJvd0lPWVIrbmJRb1oxT0FIRGVac1VieDN0Ni9WQ2l0TGl3?=
 =?utf-8?B?UmNBWW5LQmZ0TDBzQ2FVdlYrU2FLcmxpeVJnSWRralUwOUh4WU55Ymswc2l0?=
 =?utf-8?B?bG90Y2lKNU9vK2JMOGNmMkNBSTcyN2l0TzM4QkZ6b3BuUloxYWt4RTIxTlQ1?=
 =?utf-8?B?WnplR04rY2VkWmFjVnVrY2dEVE8zeDNHWFhIeWJiRmd3QTF2ellpNGsyTjMv?=
 =?utf-8?B?Tlp1ekk2bEt5SFdPaWVYZGE2OHZaT3NoUTFIeEw3MXZISXovbXlnUWMwTDUy?=
 =?utf-8?B?R3Fwb2EvZDZXVTRFR3RKdWNLdllGR3lwTHhZZVdNa0JQRk5RSzdQckdSandO?=
 =?utf-8?B?MXZJNHkxSG1ZMmtZVGpJOUV2TUdxVThCNGFKV3p1UzhuQU03T3BGU21zeHMw?=
 =?utf-8?B?cmh2NXRWSHhWZzEzTkViUGVXdWNib2lHdm5iUFB5QktLZlUvUG1icXRXVWs1?=
 =?utf-8?B?VHhIZ0NHNTFjUWdTNDR5TWR0T212SUp1NlZlV0VsTUVNOUg1bEt5YzFla1NM?=
 =?utf-8?B?M2I0VE9zVFR3WDU4WmF5U05QbVJzT3RJcExUMmxxZ3BOY3FvTzlXRUtST2Nq?=
 =?utf-8?B?RVRBcEpUMFpiSFN3cnk4WmlSeFVaNFNFMXc5bWt3Tk9zanN0Nlp0c09BeTJH?=
 =?utf-8?B?Wm1wZ3FseWZwQ0d3cEllRWlKbFE2THR4UTlPdVVGMHhOeWV5ZURSakhzQlds?=
 =?utf-8?B?bXFOYUsvSWZGbjVqaW1ncWZjR1QxZzVyL1NjdXU3NU8vdVdLdU4wR3AzZ3JW?=
 =?utf-8?B?aFUvbkpOZ2RCNUZOMUxab2NjOVhaZk1XVi9YbHhyZzAxMzNVRGIzbUNTVHh1?=
 =?utf-8?B?L1p4enMyYjZ0M2FNalVXNXJPNjFqTVZuLzdYSXBBMWx0eGVua0RJWlZUNXY0?=
 =?utf-8?B?a1BmaXF0U09EeG0yd1l6b1VmN1pxd3NPbTZsN3NacnBMMStVdmNaQnB0WnF4?=
 =?utf-8?B?cHhZYWVpNGZhOEh0SHV0MXlGY1lKaEZlMTh0cUhrL3FqcUo5Q2g2STFidmo1?=
 =?utf-8?B?USs1S0xuaG5POWZzSnpBQlFHcy9aQ2JnVWxyWlI3ZWNxRzJMQ2FhS1dwbHhQ?=
 =?utf-8?Q?gMscpgjGVZb2h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkpDczNhR1E0OXR0TlRsV3MvT010V3BBd2tMMmhFQldqZnRVbWJtOTAzV3JE?=
 =?utf-8?B?bHgySnR0THNOMXRrcE9wc3dldGJtQlIxd3Rtd08zc1UvVk9xbUF1UTdZQVk1?=
 =?utf-8?B?NEduUjZWVy9vY1RXem5LZ1NBT2tSM1k1QTlBMFJFRnVWcGdsWk1YcXdnMW5k?=
 =?utf-8?B?TGZteEc0ZDVBZjdFY2sySkVCSzNaNjNUdXVTTUsrRjNxT3hsaTRVVkFyNW40?=
 =?utf-8?B?bEQ3VGlqQUpGZHdYNUtIOTdXa09PVWJSN3VJb2wvdjlPemVBN3RMa0xnY2sx?=
 =?utf-8?B?bDdQVFV3Z3RLZFZ4YmxsaEFLN1l3NkVkbHB5TVpEVlExWkgzWWJ3OE45eEZM?=
 =?utf-8?B?aC9XOHlJb0Q5N09ERGlIQlV4Y3ZTYkdIQmk4alg3ZEdtRVplek5kbGdHS0lU?=
 =?utf-8?B?Ump6VS9EdjRsRmwrTjR3anBaRDczTStxeVljVU1GZUFuQ01hdEFZMEUxbzJl?=
 =?utf-8?B?aWwzZ1BsdXQ0N0RrNkhVcU54ZEJRYnhXNThMQjE4c3crTWVvMXlXNmxuamtF?=
 =?utf-8?B?NmpXRzV1M3NkemxDOEFzbVpyZ09WbjZXSElmZU9ZNmIzN2VkY01nM21Qempo?=
 =?utf-8?B?c0ZBVzM4VXE0bVlCS2thQk81Szl2TTRjVXhFTzJnODB4a3Nock5EbHZUODhn?=
 =?utf-8?B?TEpRSzh0ZEczTGdsa0RPcXN4OUFrQ0ZSYnpGTmIzb3g4d0h5SzFkWjFrT0J4?=
 =?utf-8?B?WXphdjNqUDFHYVF0VUtreXY4NEVMVG5QcGQvd3UyckJvUU9RUlQ3WVloQWFt?=
 =?utf-8?B?OFpYdFpDNjZhK1g5SndyT0xTQjg0RTVrZXppeDQ4U0RLUWJtVE1iekl2Qm8z?=
 =?utf-8?B?ZjRndXNYeVJtZlpHc2tlVGdrNjdXMUVmTXJjbElGQ1BRcW1GQWVqRGxURVBM?=
 =?utf-8?B?ZzBrT1FPTjU0di9tYU5lTjA2eitBNFdQVHBUWVBtMUI5NjIyaHRWS2pNZDd6?=
 =?utf-8?B?ZEJYbCtkWXA4WnpKc0xvTkJ1QWxtVGUvMUxxbHBRdERuaWlkb0x1ejlXcXJH?=
 =?utf-8?B?RjZiMXo5blF4Vlc3UnJEQnhTZWJGbjJRQ2hTZGtFRkZLNlFOUWlaVzduOUUw?=
 =?utf-8?B?YnlKRk5OWWRuWnh3eFZpUmNLUWRDN3dzVjNZalRRTkUxKzhBVDd1QnhBM1BY?=
 =?utf-8?B?aWVOeEdxc09mYllrOE5yenpJeTdFaUFvWkEzb3Q3UkIvYi95RFIzUGNQTi81?=
 =?utf-8?B?dkZRbS8xWmhuOUFrdVVQdWI0T1NrWmsxcWFCN1BOTlpLb2hLNTMvZmloS0oy?=
 =?utf-8?B?TXFHa1BmSkRUMHRhYjlFcmtXSWtmTUZZWFlYd0labXA4bXZ0ei9SRnhmMm04?=
 =?utf-8?B?UVFrbWZwN3FJaTg3cGljRjlmclZJVWhKeUpNZXJGc3g1WUltRTFlcCtDU3JF?=
 =?utf-8?B?eW1WWmxGdWcxSGNEMmdEYTZHeitxK3JsNmNodVpzN25UTTFJbWJ5bnZFdkdt?=
 =?utf-8?B?TXFPOU1mRkl6eExKSWNleUpRZk5SL1Bjdk95RGpab1RxdHVnV2Y0YXRRNW9R?=
 =?utf-8?B?UlNMK1gvYXYrNHdmWVBONE5EU2tUQ1pGcEd5L3dkQVErdkdOcy9aMDk5WmFz?=
 =?utf-8?B?ck5TNTkwVnpkZXpXd0R6WWFzMjNYelIvZHhMOWFBU0tTZGovSjI3dW9sRTcv?=
 =?utf-8?B?dHN2NzMvTGh0TVBDdE12R1BGSDFiUHZFNnZ6RzFJZWo1RlgyRjNaK2ZrMEYz?=
 =?utf-8?B?WlRDN0s4MkJwc2pQOWhrVU9sOVBhRk83bFdGTUVlcVhrSVN4OXVHdHdFc3l6?=
 =?utf-8?B?eWRVeTZRR1N3aG5LcmlpWDlSL3prR2RkZkdTN3BxWUVuSkppMWt0NFV3NzBE?=
 =?utf-8?B?UFh6SWFxL2xaZmZCdzRQMXY5a3RjclNIdmQxb05DaUYrNzhtZkxjYnhhRlYx?=
 =?utf-8?B?bVNSOXpVUGxWL0NIQ0x2cFppRTVYMWdyenJFOWhnbHVoQ1U5VjdiVUJiazdi?=
 =?utf-8?B?cVJBSjE0Rk9DOGM1L3duYUlEa2g5Y2g2UFg5SDNIa3RZNVNQQXJuV0NxbTc0?=
 =?utf-8?B?d2oxOEhkbjI0a2R3RG84VC94V3h0R0ozUVBtdmtMYS9lUjJyVmd2RTFoN0xm?=
 =?utf-8?B?by9yVVhqblRlamRTcEdnaHo2N1VSYytSRkxOaW9qVVpiVVM3M201ZkFXbXN1?=
 =?utf-8?B?d1Q5SjNTdFN2ZnNYdThRZVdhYm50dWtnNzN3cC9GMkgwUnpXZkpBSmo0MnYv?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb872d38-b31a-4c02-9ffb-08dd2f22d12e
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 13:54:34.5078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GU3YP7EGPpEXRW6w+0RiQigfupQ2QWagDWV54LwHFarAqD3m6TTiUlkcu+YQrmsiwo1QfT/L34WIYepUDnle9TwGB+xFquzeAo8fTfLBYGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6809
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


On 1/6/2025 10:21 PM, Mitul Golani wrote:
> Compute scaling factors and scaler user for pipe scaler if
> particular scaler user is pipe scaler.
>
> --v2:
> - Update typo 'plane scaling' to 'pipe scaling'. [Ankit]
> - Remove FIXME tag which was added to check for pipe scaling
> factors as well. [Ankit]
> - Should be common hscale, vscale instead of local one to
> avoid garbage overwritten.
> - Typo in commit message 'perticular' to 'particular'.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 34 ++++++++++++++++++-----
>   1 file changed, 27 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4f838220f880..294493e5ee53 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -320,6 +320,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   					&crtc_state->scaler_state;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 mode;
> +	int hscale, vscale;
>   
>   	if (*scaler_id < 0)
>   		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
> @@ -368,15 +369,11 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		mode = SKL_PS_SCALER_MODE_DYN;
>   	}
>   
> -	/*
> -	 * FIXME: we should also check the scaler factors for pfit, so
> -	 * this shouldn't be tied directly to planes.
> -	 */
>   	if (plane_state && plane_state->hw.fb) {
>   		const struct drm_framebuffer *fb = plane_state->hw.fb;
>   		const struct drm_rect *src = &plane_state->uapi.src;
>   		const struct drm_rect *dst = &plane_state->uapi.dst;
> -		int hscale, vscale, max_vscale, max_hscale;
> +		int max_vscale, max_hscale;
>   
>   		/*
>   		 * FIXME: When two scalers are needed, but only one of
> @@ -426,11 +423,34 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   
>   			return -EINVAL;
>   		}
> +	}
> +
> +	if (crtc_state->pch_pfit.enabled) {
> +		struct drm_rect src;
> +
> +		drm_rect_init(&src, 0, 0,
> +			      drm_rect_width(&crtc_state->pipe_src) << 16,
> +			      drm_rect_height(&crtc_state->pipe_src) << 16);
> +
> +		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, INT_MAX);
> +		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, INT_MAX);

We need to do similar to plane scaler case, to check if hscale/vscale 
are less than the max scaling values.

I think it would be better to make a function to get max_hscale and 
vscale for a platform.

With 420 encoding, there is different limit so need to account that too. 
e.g Bspec:50441


Regards,

Ankit



>   
> -		scaler_state->scalers[*scaler_id].hscale = hscale;
> -		scaler_state->scalers[*scaler_id].vscale = vscale;
> +		if (hscale < 0 || vscale < 0) {
> +			drm_dbg_kms(display->drm,
> +				    "Scaler %d doesn't support required pipe scaling\n",
> +				    *scaler_id);
> +			drm_rect_debug_print("src: ", &src, true);
> +			drm_rect_debug_print("dst: ", &crtc_state->pch_pfit.dst, false);
> +
> +			return -EINVAL;
> +		}
>   	}
>   
> +	scaler_state->scalers[*scaler_id].hscale = hscale;
> +	scaler_state->scalers[*scaler_id].vscale = vscale;
> +
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
>   		    crtc->pipe, *scaler_id, name, idx);
>   	scaler_state->scalers[*scaler_id].mode = mode;
