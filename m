Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A27CC9FAB85
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 09:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B6C10E41C;
	Mon, 23 Dec 2024 08:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fS+Gwytm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E856710E41B;
 Mon, 23 Dec 2024 08:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734942568; x=1766478568;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CdVI/M4nCZSbsDUpMn5LVg9LHJ+FEWLlj+aeWzNYPJw=;
 b=fS+GwytmUIi0gh4Hyuo1mRLBbLOjVPJOWK7YX143OV2B1xPr7D3QNJRm
 EvcXIRFNj6NyOuClkGZwviSoBpts8RMHf985zAQGMm+fJZQUgSOxVeDCq
 Q77swVxnNXxfXJ+Zh4W+9M7oIsS5334UbhCJ2u+esU5w/hurUHtSItPD2
 sYNT9rVulTGoea+7/pasXEpZaA3OaM6+sEGtuRCXIP9mL/KX7h678ycFl
 ddoz7+b9ktW7femZpJzftOsaz3brjkzgRYb7qP/t6TUNLUT47nMtw4tyF
 rj37ySn+h5SGvou2gG3ScXiWp8l0HPZDKf53B4H7x5Nwlr7GVozv7wZbr Q==;
X-CSE-ConnectionGUID: WkRPuYZARyyIzpibR/5Ukw==
X-CSE-MsgGUID: akqtILcwRziiF06L8Qr2ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="39181420"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="39181420"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 00:29:28 -0800
X-CSE-ConnectionGUID: B1RHYkcBRjeE3RnksmDtfQ==
X-CSE-MsgGUID: h5HjVUX1SDK9xEZITNzXSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="98917066"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 00:29:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 00:29:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 00:29:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 00:29:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UUrmLH4CkaxyQ77wc/H+0VvaWs+hyMf9ha9DMU+5Hsp9mqJsjkesExBmwCdJ3eoLiQz6d4qLm7cE5qCCRGj+B12PVLRWrxN6v6V081tp3VzvN9DL3jznUcbWtACnmUcZN9DlHoHkKxIFMM22gnjvTttgSh1bE7ALcWarUEo37vOOB9yGieb231IzB32eb5ZmWzY1qCCiqZDXDlXqZj2orp5IrPlANt373yeqDUByKVq+ZeCiB+d75ZvPWKVENnF/4QQiXXhNPx7c3brTQ0+3CaPFf+D0VF07g79/24PV0l9VB3uBvAyyaHTYQavnJs2T0KXsgkpdZwIWNSgG0LMiKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y2moU1dFbYGS3r8mXoie11l2Cequ5VgSuhIRBzFurnQ=;
 b=kcGDpfM2YFuEjM069llwmb/1xv8h9kRBK67TiEVEPRUZa9dxthvlUiu1rJXOPJ9s/sTCbYvoMdDXaWEl4N87C76yunjttJUR5hF62uIb+5/t76mjyfMzKDsqSfbZqDrigO+WMW+QlqnpZOrFYHCEGgP2yk1FgrPWhvmLiGwd+qumHc/gq2g2GVKIrZA887QfWSwTqvRgE5QtGvGLu4H/u0GQBOb1dXDmg9W8/HKqj4VLlUO5ZWSxChg9uXu8SMDcYlyCDOYvXQ5C/NMHhC3AL4wUJC5wPki2fVErLdYSWad8EhSE4GK5kTjRBd0KiWB2bSPP9sx4A1BJTUtrK1JNTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8272.20; Mon, 23 Dec 2024 08:29:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 08:29:21 +0000
Message-ID: <5263165a-5290-4976-bb9a-43899c9fcb73@intel.com>
Date: Mon, 23 Dec 2024 13:59:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 2/6] drm/i915/scaler: Add member to track scaler user
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PNYP287CA0057.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:23e::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6019:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f25333f-2d68-43a7-466b-08dd232be63d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHJOT1RQcXladjJtT05mVUt1eTBUaDRqZTQzWVpTUnExd3JDQ0xVd05ySHhi?=
 =?utf-8?B?QzR0MzJ5MEZLbXVmQUsxc2V1OUJTMTlDa2syZHJyeGxUVHJ3SWhCZHY1VWov?=
 =?utf-8?B?NXFaSWdNZWJ1K29hQ0Q4RTJOYXZQMURjTFlpQTY3YzZHQW1IK29jc1FjNGRM?=
 =?utf-8?B?aFZqNGx0Rk9sTVRPWGR4bVdYampLR2h6NTEvNFJiRmMyN3VMZTVxUEdkUHVQ?=
 =?utf-8?B?RjhjYzFVU0JVQzJaaUtyNW0yd09EZ3U4MkNyQi9YdjhyaElsUERLNlFJeU8y?=
 =?utf-8?B?a2tTK3RNSTdJWXQrV1hGTE9sNDVtUFRYOWhOVERGeGxmVXRaM3ZiRnB2MVNs?=
 =?utf-8?B?cmFkTTJWUmhKc2wva1ZJWWV5emMvc01TN0VDMndmK3ZXa2k3WVpDZFVyWG1W?=
 =?utf-8?B?c0xDMVRvdEx4UW90c2FmcXBCandTczNycWdscTV1ekt5VUl4NlRjMW15OFht?=
 =?utf-8?B?TGRwVEtzVG0xWmFIVGpwVTBMdlBGb1ZJVTJPUHdjZXpVRkZRMVA4cDhCS1pa?=
 =?utf-8?B?Tk9JQ3JzMzIwU2VvdDNmUWc3bElNdzZtWlF2aXBtd2d0aHhTemxreEFMYzZ2?=
 =?utf-8?B?YjNpZVpHMnYvejBzbWwxeTdnRjFVcDB6aHM3WDNnbHZrci90Wjhza3ZPcXY2?=
 =?utf-8?B?aHI3bXZXL1ltUW5INTB2N3dFN2M2empPako3Rmh6a2RNdFd5MmVjODh0b051?=
 =?utf-8?B?Z3doTThRQ2FmNHYxR3FtWVp3TmJpZUtzcktOVUFGVnJrSFJRc1RrUHk2OWJW?=
 =?utf-8?B?TWhyWTkyR1VzemxGejhNZGc3SjN1OHVtb1pzajBLUFBENHRlTS94cDhaalVx?=
 =?utf-8?B?b29WVi9wUEwvOTBtZGV3YnpEZDNKN1NvejdmOWxXWkhRa2QvaVR1ZnhsS0ZR?=
 =?utf-8?B?Y0txelJNOWx1K1N2TXVTOUM0RjExTnJQTmYyUlgwUVJkSVN0YVg1S1U0Yms2?=
 =?utf-8?B?YnRHVGt4WnhCbkd0dXdHa3R0dHBjS05iRmtNczRMLzdiZFdFb0t3ZmJiRTZP?=
 =?utf-8?B?MEZubkdoUnp4VGFseTFJVVVlQ1ZSd01lWUJVbEJRdmVBazZmYkgrZ3VyWmtP?=
 =?utf-8?B?ZWFlbi91ZjNtd1pSeVlNa0F0UGRJYXRuQVRGbDYrUjJnZ204N2JYY0I4MTlI?=
 =?utf-8?B?cXhINm1aL2NnR0gxUnI1NW45akZralVaV1BSK0FlUzZnS2tYRGJxNlJWaEMw?=
 =?utf-8?B?MmxockdFcC9oZE8ydXdaZytLem01b1pjUzB6N3BjdGpjWm5Vd2JLZGhHeDJE?=
 =?utf-8?B?VTF6MXJXcmwydTEzUE16clNBVVZjV2xSenZLWG94WE9jV280V0M3S1orSHRz?=
 =?utf-8?B?a01kdXVIVldSU1pGRUluWTJJZU5WNkFkLytnV25yZkFpdTVxeCtmVTI5ZlI1?=
 =?utf-8?B?NVRwanpOSGlzTUQ1dmlxUkpIdUNhRUxpV2FId1d5S3IzY0Rhbjk5SzBkeHdk?=
 =?utf-8?B?SkxqZW0zUEVsSGdVdVBBSFZ2cTBvZVBWN3oyVW1UWHM3ZU9OaE9PdW53VS9v?=
 =?utf-8?B?R2JGc25KMjRFZDhkOW5lOUhZbEFQN01LMldpNTJIWWtnM0tYRElYZi9ETGtC?=
 =?utf-8?B?QkVUTkZLTUE0N05FRWVibGRoR2xualBqaG9ubXJzZy9nejY2cEtCVytqQnVx?=
 =?utf-8?B?aGhtazM5NTlFV1EwTXhsS0lJQWhiZUNjYjBtZU1USnljbWROSnRPRXd1QWVm?=
 =?utf-8?B?NHA1aGhvMFR0RTIzeW5Yb241ZEFTUVE2UE4yRkE2ejYreEo1MkZnQ1IrdEZm?=
 =?utf-8?B?RWlOYnRzY1o4NUdrN0V6dzFLLzdlNkVnSjZ2ejhMbzBoQitrVWdOcjdFZ0Y4?=
 =?utf-8?B?cHZQUTNhWDZ2amRnTExUN3hHRjVHNGEwUHlCWDgxUDBlaTNRaTlZOEVWSGZp?=
 =?utf-8?Q?mmcfMgcrkF9xN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEVBMlpvSFdRaFgrcTA0a05ZMHk5NHhVcVcxYUdReFp5bGEwVHZtbytvUlli?=
 =?utf-8?B?ZVpWcTRISmZIcG1tSnZJUWphWDFyaHhyaE1QNHFscEF6ekN6ZEpsbmNKWUht?=
 =?utf-8?B?K1V6OWhINHN5OXJpdDdyTzljRHJOWDNlMml5eGdiU1RVcEh6VTlmQ2ZmYVZS?=
 =?utf-8?B?T29TbWhWKzdOWkJaOE5qbElWSlhIbkl6YUh1Sys1T3BEdWk5VXZURGhPRVlm?=
 =?utf-8?B?Q0hFTHY2cGdRakw2SlhoTnN4Vjg0Q2txaERXMGFxWFJoNEhGMkl6dE9Ob0F3?=
 =?utf-8?B?VVJlVlk2TWRZVXk2dWcxWUtzZi9nUjE4ZmMreEpPTTcvZjZOc0JEZ0pob1hJ?=
 =?utf-8?B?UFhMTVpKVExGdVdwSVNVNzVoMkd6Ull1dXVJeXRDL01oSkMvWmplTGNBVXlr?=
 =?utf-8?B?UXc0Q05PWDM4T2NEY1R3THdNRnJaVnNvb2FFUUdmWnlDYXBiazRxWnUzWGg3?=
 =?utf-8?B?SUxwR3prTm15UGFHZnFIMzdJRjZMdVVtSi8vc3ZrZmc3cGNjRUZ2NXRUT1BN?=
 =?utf-8?B?MVI1VklxOHo3MkQramhnZHpqMmh4SDlPanNxZ3ZRVjR5YUVrVU9lbm1SSUI3?=
 =?utf-8?B?Y0JYYVVBOWNraFhOWklDTWlLNmFMZzZUOTJ3WCtORHZDYWNrRm16VGE5NUpM?=
 =?utf-8?B?NWxvUEVYL0l0TUJ5R0J5LzRUaUQxaTVNMmFIa3Y5TnFUM3ovTExYRkNSdkxq?=
 =?utf-8?B?c2poYVpMMThnNXV3TXc4eWN4V05sZHIzdWRtVkhVNll1cGJHWVlNUXc5SGl5?=
 =?utf-8?B?ZUdlNHR0bHdDZDhhdmdlZk9vc3hnS1N1SGtlMkxiUnNYKytZb3d0ZmVvaHEr?=
 =?utf-8?B?VEQ4OEd6dmtxMDRpUmdJRHZ2RzkrMDNZc0tBR2ZINllVTkJobStiaHF3dG9W?=
 =?utf-8?B?R3BzNmMwRVExREQ5dWI2SStsTDR3WHQ3TURaRFFVUEt2bjB4OUFYRzVrMDEy?=
 =?utf-8?B?VGM0dlJiVk1RZDV5NHZ5dGIyRU45SHZTUGl5NDlaSDBVY0ludVRlUmZNaHJ6?=
 =?utf-8?B?enJFazlMYjZaL3EyOE8wS2lxeGVwd0kyS1FsR0J0K0dmaEZPUWFETUtVMC95?=
 =?utf-8?B?QVZWRTcvMWQzOGk5R245a1h4eldVZ0c1TVAwbmw3ZjMyck5Qejl5SHNQYnd4?=
 =?utf-8?B?Q2hocmpFdWJ4RkdTYVRFNS9XeXhtWmJoZnByNDRBdHRaSUlXc1hhZFJ3TlJZ?=
 =?utf-8?B?YTY3dU5xcDNVdkcvYXV2OTRPME5aY0ZBR2NoYWlrNis2TVNvVEozNmdiUTJi?=
 =?utf-8?B?cmVSZVdPRUh6eEsxNlhMbnVxSFJ3WWVVVERsUUxpQnpqQXZRak5PYVlHWTdo?=
 =?utf-8?B?K1I1SFJtZ0V5QlB3Qmhqcm8xd2VBK1RKdmNmczNZWUw0QTNFV3lqM1pzVkM0?=
 =?utf-8?B?OHNvdXc4UWdqQll2djJoS2tGeHVNOHpQWEJkencxenBxQ0JYOTd3aWN5MlhQ?=
 =?utf-8?B?cFZVYWJNejlhNnZyMHoycDQ2TEZuRG5JbjVNMHRPVlFVcVh0ZEFkaGZ3QXAw?=
 =?utf-8?B?Q2RLSG5lV2tpMEFKZk5jaWQ0amhRL2JZZlFmajBvdjFtcTU5ODJQTXY4L2FC?=
 =?utf-8?B?Vy9OUEd2dXdUZEVLSldyaTFSdlNLTy9tdTBNcXZ5M1ZvWi90amk0QkZWWmtI?=
 =?utf-8?B?dHl1WGJHSWUxdHNwckZIM1JxbzdoZ3FYK2hqNDhCOVZxUG04VTBDZW5udm5K?=
 =?utf-8?B?RDFVaCs2WEh4SElldFRWYnFCS2daTHVtWHpXSG4vY1FIOUZCcndpTmd0NTk1?=
 =?utf-8?B?aFFkMWliOUdPSHlKWmxKZ3g5SEFHOGtudXZnMXcycC9UbkxMc2x6YmJWTGRM?=
 =?utf-8?B?ejdMRFJwaE43NDhwbjBUL1ZLTzBNTHNkbTFOS3JMS0d1K3V4MEpwZGRpbzNO?=
 =?utf-8?B?dXRCb3pocWszY0tGV2Y2dEd2aEVzVG5maEx4dmRsMjZXcE1Pem1wK3UzeVA5?=
 =?utf-8?B?c2VFUEF2M3BIRXdhNW5CQXVqWHowWmFoK0dqSlRXZDJnRkpLeDFtK2pvbHNz?=
 =?utf-8?B?dWU2YTFQdVk4VG5iYU1SRDkxQThXV1VaLytkbWZJRjdIcTNEQXltc3FsMTQ3?=
 =?utf-8?B?VkQ4MmUyZ0JqelF4bE51RGlEQXZDREZMYy92MnJKSjViREhYZ3pyZFVkeFdH?=
 =?utf-8?B?Tkp6WC9kby9RYlk1d3FVR3hNWjBCSUJwTmQySXhxY3VKVWhmS1FqdWFqNW5u?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f25333f-2d68-43a7-466b-08dd232be63d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 08:29:21.2965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aghP/xD0ae2Ieu+WmsVGwS0hDkHok532y2Sp4ro5Urv1OVwREjnE2a5ttupJvyFjU+9iR2JiYTRiXhLiiReas++LvLJRK8CBWoMi81aHBUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
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


On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Add enum to track scaler user, this differenciates between
> the current user of scaler, either plane scaler/pipe scaler or
> in case no scaler is used.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>   drivers/gpu/drm/i915/display/skl_scaler.c          | 1 +
>   2 files changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 28b2861df42b..f39215c70ca7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -707,11 +707,18 @@ struct intel_initial_plane_config {
>   	u8 rotation;
>   };
>   
> +enum scaler_users {
> +	SKL_NO_SCALER,
> +	SKL_PIPE_SCALER,
> +	SKL_PLANE_SCALER,
> +};

This is not required, we can use the flag 'scaler_users'.

Also as I see, this is not used in the series.

Regards,

Ankit

> +
>   struct intel_scaler {
>   	u32 mode;
>   	bool in_use;
>   	int hscale;
>   	int vscale;
> +	int user;
>   };
>   
>   struct intel_crtc_scaler_state {
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index e00c6830ef65..e113c6ba4de7 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -426,6 +426,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   
>   		scaler_state->scalers[*scaler_id].hscale = hscale;
>   		scaler_state->scalers[*scaler_id].vscale = vscale;
> +		scaler_state->scalers[*scaler_id].user = SKL_PLANE_SCALER;
>   	}
>   
>   	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
