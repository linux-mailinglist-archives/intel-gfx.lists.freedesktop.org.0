Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E1AA27C36
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 20:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787A810E6F3;
	Tue,  4 Feb 2025 19:55:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LB11gTHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D3410E032;
 Tue,  4 Feb 2025 19:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738698943; x=1770234943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vF/FX3ZLO7hsG8B3XZUKVK3wjXdArzOJcdoaXz7vr+8=;
 b=LB11gTHmIYXzNQ78jWTRA7MjkMNrW/G267ZdDpfKXw8khK3YKYJDyiAW
 2HGeWSg+yBo8513On/JnXJ1Fp0VlIIenwJnyrUeOs+cuXTjQS6TrTERNi
 CyUN6jFa3XjR5IsW8LP4s8d8G885GYGxXJaS32mG9GxMF7wFSbmMJFlFJ
 UfD+QGwqAyKSf/IJhBE5tGjzJNy2Icb0ERHhOVkK3F1B29FRRCWRe31yp
 BL1BMOJBcb61wDmrBhDIHbxJp30TUGHN5szWg6EsQKpncnKM2TQYerqpP
 gOP+g/VKt+Tbplgj0Uc3QfctOlxI3bx/GqeZ+FlvWXRjgbWHmYaLBWOBq A==;
X-CSE-ConnectionGUID: p3KQMdXcSDqCUM/sotnskg==
X-CSE-MsgGUID: NkzaAadMRUWTHbcnoWRBjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="56669155"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="56669155"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 11:55:43 -0800
X-CSE-ConnectionGUID: z7Qg2dNVQjqeCyqgQL3MXQ==
X-CSE-MsgGUID: e49cz4O6TNivrimcQlDFGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115876372"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 11:55:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 11:55:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 11:55:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 11:55:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NbxRxqaqAurCPCr+um3mxMk8VyiM+Xb+U/8NgzvFakxqLlBV+UNU1Tec/+a8kzEjb/eIixUadmRYXMlfcpaH5cXDseesa5ejib6H0WgPhNt7yawOlh8r0ReZ8VX+k1mBjEzCzF/rdq6b4S/pr3s3AUj6NUvwQ0WbUI7JCwNT0XZYDd9JqSpuZIYXN2T5tpF/npU52ZxUoPHZPWj+M1Fa6KxbSV+ODfnwR0d6R5zXOXieL3ozrF9xGgSZ4c6XpUrx1j1namFk/HJMcSTQnqBIclIbOTFzxPkhHdMCb4M8JFzcNncrFOoWUyL06hBURn4LGp7Z+1t9elwSfENw0w//WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vW+mLplfPA7eqzsuyq0T65vmavZ7P4IsJVWW21qNnnM=;
 b=sLh4eDYNbol6eEJe4G9mFddyL2Xnxdgzjae/qj0iqFC/xHATvYzLjy2SjKFw6S0jKbVdn1FSQahsm7SdMyehbuYa8Ag0aAzY3drQ6SvL3eKNAR6VCZGZjjAYK4T/kf7L8cfFCdM9LXSY75sgVuPUV/YxmQHQOdnDPq98a+he2j4NaHoSaPvOniHIfKvZBgtBAXoEIcYr+5j7kFcEZe3YgEURKwv1bXBgyj7bilN91BlwQ8spzK6rWeL2I16DW7VjErqvFOxujPxeo0z/J8hNRBhUPRSS7v3sD6S6lUlPRb8aJiGjxjKLwRJqGFaI8rKq5d44hX8cYtO5DTUgc5n/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Tue, 4 Feb
 2025 19:54:23 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%7]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 19:54:23 +0000
Message-ID: <a6f6b352-42f3-4700-a684-fcde18a0dfd2@intel.com>
Date: Tue, 4 Feb 2025 11:54:23 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pxp & drm/xe/pxp: Figure out pxp instance from
 the gem object
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>
References: <20250204144744.2987752-1-jani.nikula@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250204144744.2987752-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::43) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: eb1823da-8c8f-4a2f-db62-08dd4555b8a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWZRaFJ3OE00WlRWeTNnN0MwSHVMQ1dqVGV1bWVGQXJSNVpuMWg4N2hONnpw?=
 =?utf-8?B?TW1mT0Y0OFpHQ0NKNWFORzhpZFpQaW5GVjBNQVNXOVozSkFrSWlTVWJ3REpD?=
 =?utf-8?B?U1lVeC9kN283V3lQbmIxZnVadHJXQVQrRnVEL2JkTjM4YThpWkdOTGV4MGo4?=
 =?utf-8?B?ME9IaGlTUUtYbGhBL2wxRUxGYTZNY1h6SVpvRGo5VUdsU3RwQ0UwTWFJRlpN?=
 =?utf-8?B?aXdpODEwTTdTTXN5Nzlhd05GWGkyV3VWVlB1c2NMM0tuZ2pvM3RiT1dRdzBl?=
 =?utf-8?B?L3c4cXFKUStEUmJvc3p1SXo1ZnhuM3dFQjBqOENGTHEweHpTNm1iZWl1dTA5?=
 =?utf-8?B?TnZUUW45REFNVlAzbURXNGxQT1g3c0k0ZytBY3phVGlGTEFSSVo3em9BdDdU?=
 =?utf-8?B?ek1nVHdVcWVhb1VPbUI3SzdyOEQvKythWHNMRGFrckRvM1dKRUxYcVJvbWx4?=
 =?utf-8?B?ZjZRZHFYcU14L21vSDVnUTkxVVU2dGtJakpxS2NTWkJDQUVRVkRxRzJ1Ti9s?=
 =?utf-8?B?VG5mVTR4c0EwRFUrSkV0SEtJSlVWdEVVYkNsRVd0dUdFQjhCbnlwR3p2RTlI?=
 =?utf-8?B?TlFrYlFhZWx0Uk5YMk9hLy9heFVWTTB2L2taRUt3NS9MRmpIQ1JwV1FqcDBW?=
 =?utf-8?B?ZkM3NklvYWpaOUE1d1lKZFRuSXg4LzM3d3hLODg5bTg4U1VlNXd4aW9rSTZn?=
 =?utf-8?B?ck1kL25YMmd0T3c4Z0dqc1ZmWVhvNXRMZG5sK2tFUG1uUmVOUjB2d0ZrVDBi?=
 =?utf-8?B?czdEWEtqeHVsOE5qR3Z5dzZzT2x6TDZGTGZmc1JPM28wV0FWVHVOZkQrUkF4?=
 =?utf-8?B?TEFkQXZ3Mzc5Qi9Sd3pZY3JpemwyT3ZWVHZzTW9ucTZjbjFKbGlISktDZXdL?=
 =?utf-8?B?Q3NIRGRMME5haGh6SmwrQ092ZjUvazdMT01hbWZlbDk2TnMxS3NVdmV3eFEw?=
 =?utf-8?B?UVB4TjEwY0pZbWFYc05kL1dRaHUzYjFGekI4VWV3Z2d2WWdFRkp2OFhZbFo0?=
 =?utf-8?B?b2dtNEx0WGdhQW9TQWt5eTFqRlA1WGYyaTV4NkFIR01ub0Viek1RYUEwYWNE?=
 =?utf-8?B?eDdJUWZaWnY2dzRjQzJldzd2d1F1UzMxMzdZc2xoR0JFalJ2N3k5bjZDazN2?=
 =?utf-8?B?eEU3QUV6S3ZQMks1cmEvbUYxVnh5dlg3WHMwMjRpWDBvQTZQa2NnbmZTL0Vp?=
 =?utf-8?B?ZU9FUVg4bG9zQjdSY0N3cEw4TFdkQ2JxOVZzbHRhTGwrclZ1bjFDODJTVnJi?=
 =?utf-8?B?VFdUYm1OUHcvWUplVkw3U1F0TGZyeFJpa1pFaCtEQ1BGY1VWakNPMzU3VGJE?=
 =?utf-8?B?aHpFNnE0YnQxdms0ZmQwM3ZMdkM0dzdyTkg0MUcwK0tFenA1WFpYWC96WFlp?=
 =?utf-8?B?V0NuR21mVGhPLzVOcHovZVB6Yy9DdXRZZUw0c2ZJZ1VEcURIeDlCYnlYS09K?=
 =?utf-8?B?NTFsZUNka1d2YzQ2QXVtQUVTQ2ZtSGc5Z0NyMHZMRXB3QkNwVGI1d1pWQUJq?=
 =?utf-8?B?UWQvRUVJWFlTWU9tQi9wQTRHamQrRzR3MGU2MmdsTXhLNlNwM3l6OUtVUmhn?=
 =?utf-8?B?YnNzeDVtNzZkMzBmYXlkUTNaYms1WWIyU3k1ZkdhemFEb0hoazdaUGZUSVNv?=
 =?utf-8?B?Q2Q2ZEpGaUw1NEpyOTFvd0wxbEg3OWNQdnNaYUN2ZVBmTmhwVHduRzVnaTlC?=
 =?utf-8?B?YWpHSk5GdGl4c0MxeDFGRXhZWWZkZ1RLK3VucGNUU1BBTmptZUw4WFozNko2?=
 =?utf-8?B?Ym1HcVh5cTEveXlwb1FaVzEyKzlMSW9LcWpuU2ZkNDRMY01LdElxMmNNeitu?=
 =?utf-8?B?N0tvcUk0YWt2RVBTNHRtYjFlbzluS3g0QUFLRkJTY1Rmejh5WDlRc0hGelpJ?=
 =?utf-8?Q?FJushFlLWZD7g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MS9IU0dCcit6TVdsNWJWa3RDQ0ZvbUFNWStJTCswTEczNEJlbXlNaGJOVjRy?=
 =?utf-8?B?Q0Jjb2RlVWdXN0FhMktzU09Rd3V1emEzQ1RKalUwM2RVUDh3ck1RUlA2cFFG?=
 =?utf-8?B?WktsaUQwa29LT2ZYYTZtYWh0aU9PbXRSWXhLZnZmeUJxSWl5SGVyTE1UWjNW?=
 =?utf-8?B?Ykw0aWdFVThhcDAxK1dVZkhKR2lJY3JpczVTYXVpb0Yvb0pOeHR2Sy9GNTRQ?=
 =?utf-8?B?ZTZDYVgvOGYxYWlaY3crUmRrYS9PN2cxeFJzQk9obkZaUXhrZEc4bWtTMnRF?=
 =?utf-8?B?amN0NzZDVUJyVitvRUFOWlBXNUlGYWNMZTlsblhlVVpBVXkvTHBEQWdibVlU?=
 =?utf-8?B?MDBScUM2L3NBL3ZKTmtRdGpPTEFPOGYwNTlENG04MzNmMzdqU0JISDZtaDlO?=
 =?utf-8?B?MGpJdkMrKzdqT2NOQUxQMjY0Ym1kcDRPMXlGN1RlL001eWZzYVBjVTZqVXJt?=
 =?utf-8?B?OEtwcElXd09aWHUzRXpSTWgyQ3BqNEdIaDlkaVYrNXN5QU1UQVp4S0NnU1VJ?=
 =?utf-8?B?emZOd2pJVkw4aStNbXZCa0dGM09vOU1oSXBKMHhvaUdTUmdkeHF5eTFFSnkr?=
 =?utf-8?B?azQ3cHZaYWphNVlLbC9UcGlzKzMzRFZMWlNzK1M1bGZYeldTaVAwZGJ4aVBZ?=
 =?utf-8?B?YU1WU3J1anlCaTFBa2ZEbS9jczhTVnlycWQ4L2h5SVY0T3lxcE01SWFha3pI?=
 =?utf-8?B?dTh5a2NSdVRycStxNmowa2l1ZjdWb1FVdnRLM2NHQ3JWQW43c0NHeTJneEsr?=
 =?utf-8?B?OHFSU3NBZm9LSkQyWCtsSlp3aGd3Y0xaM1RVS1BvRmVQSi9BY2RIMG5oUDAy?=
 =?utf-8?B?eEtsc09YYUhGdTRxYXFVT3JneTBFRURPZlhQZTJ0NFNlMkk3K3huaERrSjlw?=
 =?utf-8?B?UWd4aG5Xb2JOVlUyNG1tdmIrNWRxZjk1cDJqc0NBSXdNMXI2RVRvYTFKRnMr?=
 =?utf-8?B?eTdudlRJZVMrblVaSmFxODNaQWxtSGJkMnYvWWc3K1NVdmxGaWxDWlZ5bFVW?=
 =?utf-8?B?ZUROYm1jTU1hSkMwc1BvT0JkRGNlZko3ckpOWjl0cFgraDdhbENtTitsTmZs?=
 =?utf-8?B?ejFWc05raUt1SDQzSHBRSUJmbVN0Y2hkRlpmSnBzUDhkOUt1UEo3S0tXSi9r?=
 =?utf-8?B?SmdaQkVPTGRJa29GZ20wbmQ1NkV5TDVKQ1B4ZDZPOVc4OUlQeFZ2RnRheGlU?=
 =?utf-8?B?akpsRFJlWGhrRTFQdEdKODhmbm9PakdYRUZ6WHJhS2RoVm9vbTQrK0t2eCtv?=
 =?utf-8?B?K0x2RWk4blE1aFJWd3V1TDM0R3BmajhzeTBialh6UVZ1bHFlc3U3RnVUN2hI?=
 =?utf-8?B?c2tKTFUvcWtZdDZRckdYaTVmdUx5WDh4MWFyR1FWdDdvMGl1MUJQQVFNeVZN?=
 =?utf-8?B?NktPWktsRzdDZVN0SFI0YThNek94eHY0dXdJcVpjRXlTaFVHektkRlVEekQ4?=
 =?utf-8?B?NzBVd3NmcFdUcEg3Q05jOXJpWm1DLzYwWittNEZZWnplVlRKOXU3c2wveGFx?=
 =?utf-8?B?MldqSjEwMFBBYkIvR1FXK3FWRm9lRkZkR1N3cjBCb2kyb2ZxUThpUHRVTzJr?=
 =?utf-8?B?eWpyTGF2SG1wNXF6WDROMXV2RjVBVnI0UlhUK3dweVBDcHpjaVpkc1BQbkxO?=
 =?utf-8?B?YVA1ZG5DeWdrRVM0bGFHK0xNK2dKczRQT2xPWEIrMnpES2RlaVRHV3NGODhq?=
 =?utf-8?B?N1N5R09ldTJrTjUzSmdMbzN1YWJETG9TMFk1ekxMblVFTndYa2FtNXd5WVRo?=
 =?utf-8?B?cC8wM0gxc2ZUdFA5K3FZd2RHNVRsZ3V6eGRLbW9FeDBUTVVQU3dBeWF1bDJF?=
 =?utf-8?B?QVFtRHl6RUl1V0hZSDRQV2JzU2hxeFRWVnYrZGMxN0NDRytLR2tLaHh3TXJQ?=
 =?utf-8?B?bDc1STVrZUpNeVNDbENyZDRKdm5qRDFxQXE1UkpnVytqZTZaN3JzNjBYd2tC?=
 =?utf-8?B?ZlpzbHB0OGQyMmFKaWFBd0dqLy9ycHlJKzFLNGo2b0loUUE4ZE13Zit3d0sx?=
 =?utf-8?B?bnl1MUF5SVpXbFdEOTg1Y1BJQXBTZlIyS1V4RHhTTGg5eG5MSVdHR2FnaHow?=
 =?utf-8?B?bTNHRVVUNmlKTFVCclFsQzVBeHdaVFNYUjkrRGxDaVZWcHg5amlGYm9OMURt?=
 =?utf-8?B?YStxd2lNaVdBZW1BakZzd2ljV2M0RTFNbW1uQktNK1JGR0ljWE1VeVQ4WVVT?=
 =?utf-8?Q?aFCJAJ8Z7zlyQOJ7Emg5JAo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1823da-8c8f-4a2f-db62-08dd4555b8a5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 19:54:23.0657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNQe093xqFeyaU0FBLFmyPFIjaWI2QfuKFUAuPpLV6qCAdNYedQEJF0Y/QLvwqs3dbbSG+knWGC74RzMHNmJ/AEbjtt14nvJlqq+Qvuki6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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



On 2/4/2025 6:47 AM, Jani Nikula wrote:
> It's undesirable to have to figure out the pxp pointer in display
> code. For one thing, its type is different for i915 and xe.
>
> Since we can figure the pxp pointer out in the pxp code from the gem
> object, offload it there.
>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/display/skl_universal_plane.c     | 2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c         | 2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c                   | 6 +++---
>   drivers/gpu/drm/i915/pxp/intel_pxp.h                   | 4 +---
>   drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h | 7 ++-----
>   drivers/gpu/drm/xe/xe_pxp.c                            | 9 ++++++---
>   drivers/gpu/drm/xe/xe_pxp.h                            | 2 +-
>   7 files changed, 15 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ba5db553c374..1899de0f5861 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2240,7 +2240,7 @@ static void check_protection(struct intel_plane_state *plane_state)
>   	if (DISPLAY_VER(i915) < 11)
>   		return;
>   
> -	plane_state->decrypt = intel_pxp_key_check(i915->pxp, obj, false) == 0;
> +	plane_state->decrypt = intel_pxp_key_check(obj, false) == 0;
>   	plane_state->force_black = intel_bo_is_protected(obj) &&
>   		!plane_state->decrypt;
>   }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c8107502190d..7796c4119ef5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -915,7 +915,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   		 */
>   		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>   		    i915_gem_object_is_protected(obj)) {
> -			err = intel_pxp_key_check(eb->i915->pxp, intel_bo_to_drm_bo(obj), true);
> +			err = intel_pxp_key_check(intel_bo_to_drm_bo(obj), true);
>   			if (err) {
>   				i915_gem_object_put(obj);
>   				return ERR_PTR(err);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 9cf169665d7c..f8da693ad3ce 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -460,11 +460,11 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>   	intel_pxp_irq_disable(pxp);
>   }
>   
> -int intel_pxp_key_check(struct intel_pxp *pxp,
> -			struct drm_gem_object *_obj,
> -			bool assign)
> +int intel_pxp_key_check(struct drm_gem_object *_obj, bool assign)
>   {
>   	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> +	struct drm_i915_private *i915 = to_i915(_obj->dev);
> +	struct intel_pxp *pxp = i915->pxp;
>   
>   	if (!intel_pxp_is_active(pxp))
>   		return -ENODEV;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 4ed97db5e7c6..7b19109845a3 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -31,9 +31,7 @@ int intel_pxp_get_backend_timeout_ms(struct intel_pxp *pxp);
>   int intel_pxp_start(struct intel_pxp *pxp);
>   void intel_pxp_end(struct intel_pxp *pxp);
>   
> -int intel_pxp_key_check(struct intel_pxp *pxp,
> -			struct drm_gem_object *obj,
> -			bool assign);
> +int intel_pxp_key_check(struct drm_gem_object *obj, bool assign);
>   
>   void intel_pxp_invalidate(struct intel_pxp *pxp);
>   
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> index d2eb8e1f6c4b..97fd0ddf0b3a 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
> @@ -12,11 +12,8 @@
>   #include "xe_pxp.h"
>   
>   struct drm_gem_object;
> -struct xe_pxp;
>   
> -static inline int intel_pxp_key_check(struct xe_pxp *pxp,
> -				      struct drm_gem_object *obj,
> -				      bool assign)
> +static inline int intel_pxp_key_check(struct drm_gem_object *obj, bool assign)
>   {
>   	/*
>   	 * The assign variable is used in i915 to assign the key to the BO at
> @@ -26,7 +23,7 @@ static inline int intel_pxp_key_check(struct xe_pxp *pxp,
>   	if (assign)
>   		return -EINVAL;
>   
> -	return xe_pxp_obj_key_check(pxp, obj);
> +	return xe_pxp_obj_key_check(obj);
>   }
>   
>   #endif
> diff --git a/drivers/gpu/drm/xe/xe_pxp.c b/drivers/gpu/drm/xe/xe_pxp.c
> index 5e7a1688a771..9c34273a1ff6 100644
> --- a/drivers/gpu/drm/xe/xe_pxp.c
> +++ b/drivers/gpu/drm/xe/xe_pxp.c
> @@ -787,7 +787,6 @@ int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo)
>   
>   /**
>    * xe_pxp_obj_key_check - check if the key used by a drm_gem_obj is valid
> - * @pxp: the xe->pxp pointer (it will be NULL if PXP is disabled)
>    * @obj: the drm_gem_obj we want to check
>    *
>    * Checks whether a drm_gem_obj was encrypted with the current key or an
> @@ -796,9 +795,13 @@ int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo)
>    * Returns: 0 if the key is valid, -ENODEV if PXP is disabled, -EINVAL if the
>    * obj is not using PXP,  -ENOEXEC if the key is not valid.
>    */
> -int xe_pxp_obj_key_check(struct xe_pxp *pxp, struct drm_gem_object *obj)
> +int xe_pxp_obj_key_check(struct drm_gem_object *obj)
>   {
> -	return xe_pxp_bo_key_check(pxp, gem_to_xe_bo(obj));
> +	struct xe_bo *bo = gem_to_xe_bo(obj);
> +	struct xe_device *xe = xe_bo_device(bo);
> +	struct xe_pxp *pxp = xe->pxp;
> +
> +	return xe_pxp_bo_key_check(pxp, bo);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/xe/xe_pxp.h b/drivers/gpu/drm/xe/xe_pxp.h
> index 546b156d63aa..71a23280b900 100644
> --- a/drivers/gpu/drm/xe/xe_pxp.h
> +++ b/drivers/gpu/drm/xe/xe_pxp.h
> @@ -30,6 +30,6 @@ void xe_pxp_exec_queue_remove(struct xe_pxp *pxp, struct xe_exec_queue *q);
>   
>   int xe_pxp_key_assign(struct xe_pxp *pxp, struct xe_bo *bo);
>   int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo);
> -int xe_pxp_obj_key_check(struct xe_pxp *pxp, struct drm_gem_object *obj);
> +int xe_pxp_obj_key_check(struct drm_gem_object *obj);
>   
>   #endif /* __XE_PXP_H__ */

