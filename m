Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2038EA19A7E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 22:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B7110E1B6;
	Wed, 22 Jan 2025 21:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UeNsC2b2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4FF10E066;
 Wed, 22 Jan 2025 21:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737582236; x=1769118236;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=zzOd4PPy+ZFM/D2IE1dGPP1tTHLlpaotRalu2nfPHDE=;
 b=UeNsC2b2AQpOjxMQZ7K9MDgjuRCJIIX9w6q4b2A7RhNEmeH/z1s7Uja/
 lpeJ8Pbo/BNnPRhz188DCranEbWrwa/lNXw4T+jOSIsVU6YBQdwdsyGuK
 LBQJ8eVrTVkO/VyQwcHD76/tc+zPD9S2/E7kK23KlsN6qlE5b7SaoKhX9
 FmtKvgJ1iDQJrVpi5zAo46J3wAwX9YOGuMa7b5udbDnAE3d0IG2o4WqrV
 VI0S07INJ4qfz5rd5V6XyAF4HXZe1Ic6/D89IMab2CR4UpQI/dwsLUvd1
 NUwUQDuzLGX/1NkGk00H+RVzm2RcZv0Kb9YrX4rzK0UBOF02pJLxoZUeq Q==;
X-CSE-ConnectionGUID: nE046XrnRjeEPIfg5tS/CQ==
X-CSE-MsgGUID: lX67/Z5ERFqXjSEzYB65RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40887155"
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="40887155"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 13:42:50 -0800
X-CSE-ConnectionGUID: 3kOM9xyLRsmA5p2JOPi7ig==
X-CSE-MsgGUID: hFJW1CcKQxuPk1UlP1R2RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="130562055"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 13:42:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 13:42:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 13:42:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 13:42:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MQoiXsFhQ9RFM1MDpwbBGGP7EX6LHF7bWtzaZMgeLVHWiJBcZil2sUoUHw4HSEqbbqhoXOTpvED0HLdMV6wDtO5XnR2c8V/9QP5WUugXMCajfHvyKSPJ7JUDj59mEx92M9mf7KHGPY82VEHyAqIsIPRye3vXw+TJQU4kSqIZUd7hqDA+wuoib56foGzNzByvUGxs7iBU++VRppQh+JRvKV7SZ3ZFjzxCIuSAGlN3dT8cv9tIGqdWXfOEfdp7SBFwEFQdT1GnY50jTaN+dj/EurQUUkoOp+paesxawOkVuLDOjFlHZn63MnQ79UT7HSEutgwNoxmy26W6z+YkNWamMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zwf+5DUjXtfK9BrzEsGFWi6sWhGs/y9ZlOFqHQhPfZ0=;
 b=VDKJYzE/EF77Mp3BPfmrqbzU6v8w4Q6Ab0LLdvwp0L1wV5anNq0x5C5HL+E6jt0K1ngYTrqyp4n3IaaqOk4WYjRSWuJu6xyaOoNWYFmiyXMCeOg6LV3BybIs/50Z+cbqr1lNh1oDg/d0ECDl3RYduOvHc/Ip5EoBbChqd0G5Be5BbPzYXG47ntNCtheSw8++YJ3Pg/aYZbBnXpn1vrItvVVa8glDPkbw8K56ylSO7GaO6cKDi0luj6CnzpHh7lLH8eMzg6NSFXZINxuyDRT8rNuolksKIPUbKeH6XLboQ3F7q2ZzP4hSIiNNkKPhhY4rU1urrbU5wyO4NY+fAI497w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Wed, 22 Jan
 2025 21:42:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 21:42:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173757965250.3227875.7613136217234942242@b555e5b46a47>
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
 <173757965250.3227875.7613136217234942242@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/cmtg: Disable
 the CMTG (rev8)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 22 Jan 2025 18:42:41 -0300
Message-ID: <173758216162.5500.3879005975506749987@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0129.namprd04.prod.outlook.com
 (2603:10b6:303:84::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: e493d11c-e164-475e-122f-08dd3b2db636
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmdNNTlKUU0wWFBDYzY5R3lvem1zeG9JQytDU05hdE1tM0xRd1N2RWRWRm5m?=
 =?utf-8?B?dytUdk45Q3RVUTE2ZFVSUWNVb3RRZUtuU2NyeXJKZ0hJY0JUY24rbUxQYURX?=
 =?utf-8?B?NGNvdUcxOHlHWHpHM3RMVjVROUljT21CbzEvMEdFYnRsODFhVW9kRjNKallp?=
 =?utf-8?B?NysxVTJLc2NtblBnditENGZabk9lcjkzTi9kWFNPb0NmdnZDZDljY292RW9I?=
 =?utf-8?B?K0NPL0djK1VCamExTjBoZGwxbFlQYUtNZGVSTkZvT1EvWWdzZmN5N0pFa043?=
 =?utf-8?B?ZGVUcXp6QVJidFRwS3JzUWtUZ0NvdzNDTHRWT25lUHVzb09tbXdtZWI4NmNj?=
 =?utf-8?B?R1ltSU5ra1pkc2MrTXRFZ1FhWkY1Ujdzc1JtZU9McTZjWlRReEx1NlBwaVY5?=
 =?utf-8?B?Rk44NjZrYnhaRWJQdmdnWVlpbW9xWFpaSHFpNzdrbWFwdUJnVUYzV2QzNUVI?=
 =?utf-8?B?NmhobjZIenl5UkZBY1dOWUxSV0JSYVFZcjJocWxEcnJZTnZHVWtOZm92WTN3?=
 =?utf-8?B?SnFFeDFNenNYaDFaSW1vZHhsMG8yS2R1M0FkL0ZWUUpOQ2gzYkJSVGxWQUJX?=
 =?utf-8?B?UFFuNE4zaVFIRVA0UFZ4Q012SEZVQ0NHVHVIa3ZubzkxUW1IdlVhdW9pNmtQ?=
 =?utf-8?B?NTE3OVZob2FiSlRpWGg2NjJsb3dVak9iRmxMRGdvR1dpcjU0YUljTlAwWU15?=
 =?utf-8?B?Um5PTUFldzRZNUxXa3Q5cUs5dk1aNGUvOHZkQWRTQ1gwdlZRcTFUS1Y4QTBB?=
 =?utf-8?B?MUhxT0tFdjNUK1FwYk1xM3QvSUl0TjloWkowd3lDZGRScXVMTnhaamwwODFy?=
 =?utf-8?B?c05hV3MvL2pqY0NHRW9nNHhoZWhSRStud1VvK2xkRXRDWklaUzQ2MTZSY3No?=
 =?utf-8?B?QXJDY3MvTk1Wd1hoQnExT2ZxTGlpdFdaNUEyWW1yTEpZTXQyUWFtRTJOSFho?=
 =?utf-8?B?RWpyVDYrVjJLbzEzMkdXRkxtMTFoZ2VHQWNqd3pMYUMyUDNPSmlFUUNlUEJw?=
 =?utf-8?B?V2taWEVmTWUrUU5MaXVPeCtiODVLTld5UlVMRWY2L3diRkhnam5XZU1WMU5R?=
 =?utf-8?B?S05ONTkzeTVJN0VHNitxUCtBRzNNOEl0SkF5WXRmeG8wQkZpVGQ3WUkrSjV4?=
 =?utf-8?B?b1BCUDJoWlR1ZUUyNFp4RmhkMlgrSnVhdmRjVEtUbnhBNWZEMTZxcUU2K1ps?=
 =?utf-8?B?UFVSSDc5aFg5ZldYalJCMXBrZHM4ckxWUk1pWHd3ak8zU0N1cGtHVlBIKzdz?=
 =?utf-8?B?NEttNXcrQzN0Umk0Mmh4WEtWcldicC9LWHIxamowUTJIQVk0cjdhSlpMaXd0?=
 =?utf-8?B?L1MrOXY4V1B0UFIzVkUwMVh3Zkt3V2p5Ly96TGZUUHpscHIxTDBCc1p3czdt?=
 =?utf-8?B?MUhqZ0Z3blZHM1RLeXd1c3l3VExiVkJwQVpEYVVVNmFtSVd4bmMyalJNeFVI?=
 =?utf-8?B?NU8wT3RzaUtseFBUU3p5SENIemhoUUtEbjBHdUZ0MWtUdmdpTm90c3hIakZN?=
 =?utf-8?B?aGxHUlpvMm1iMnBoYzVPeUJmVnRvUlpCc0JkZWVQS1dQQ0dIaFhaaHI4Yzdu?=
 =?utf-8?B?LzdTaVBQV29HbldrRksxL1BXUGlCbEdXSDhLMkJXMXM3SExmOTlnTHNWZ1Zn?=
 =?utf-8?B?L3hHcndDWGxKaVBsR3BobDJoQ1RTVVc2djJJakV6TSt3Q2hYblUyODQ3NTRl?=
 =?utf-8?B?RW1IUlIyZ0V4VUdNeEdiZ2dwSjVqRGlBSldTbHhzTlpCbDlIQ1lRUXNhdFVO?=
 =?utf-8?B?dzE4Nk1uN1pFY21UTXNoTmtFSDVQVS90ak9BN2RqWTRMZ3Fjb1pJRlcyMVFn?=
 =?utf-8?B?MzNaT1lRYzYxTWRwSW9tdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzY2RERGcXhkcXVQV0hBRUMxSTg1V3kxMWYxMnRwK2NlS2h6dDdPcmRLSzlZ?=
 =?utf-8?B?dHRMd1VXKzVkMDJSNVV6MTdxR1VkdVZraDBIRWVucVJkcThKNUZqRUlMdDdO?=
 =?utf-8?B?ODEwVi9abUtIMEJtdHcxcnh0WWVNdllkUlAvYjRYL3VKZXFRd2drdFNaWUVq?=
 =?utf-8?B?MkhWR2ZSWVRDdDFkK1hnVGFhMDBJMjJ1R01aK1krSHNTWS80UkVMbFVvWmdV?=
 =?utf-8?B?V0lRWGxjOUZkLzc0WHFoNi9iWDhSN0xqdThsSCtDRXVsVFliT1Y5YWQ2Z1px?=
 =?utf-8?B?Q0t1UVVCR09uNU93MW1ySVZsMmhQQWxoRHJDdVE4RXNRSWE4ajZZK3RTYVNH?=
 =?utf-8?B?ZjI4dWdrUDFma3MzT09OZDBxQ1RFa1FmaUVNVHh6Y0ZXU3J2ZUxXMnRwb3Z1?=
 =?utf-8?B?bzBBdlFXU2xRemxVS3EvS1JyaE1VcEJDTEd4cG1GUHg2L0ZGWmxNZ1Rpdm11?=
 =?utf-8?B?Tktrem9HT0FIYlZnM1BUcjNsQk9JSHdSek05eE1MMEtoVWIvVEpTdnZJSlpt?=
 =?utf-8?B?c0hPWkJpSDlZeFZJRXFiNzEwUjhQVlhic09RYnN3YWRkUCt3bzRUNWtzTFl5?=
 =?utf-8?B?YWlIQ3Fyc3hOQ01rSkJKK3Iyc2RZM2lBUlpPUTZYY3JlQnRRZWdyV2pNU2xH?=
 =?utf-8?B?WGcyTEV4NDdWVHQ5OGJPOE1kWHZBYVZCeDh0Z244K0Z2d2M5RW1PaWwxSFMx?=
 =?utf-8?B?bDNTbVllaWZZSzNOdHFpYktXNjhPTkZNL1BlSWFsd2Z2VnpnSmZEOFBIV1BK?=
 =?utf-8?B?S2VNelF2MjZ1eHNueUpzYkp3d3RuWll0WW90akVnMy9Ld29YOHQxYkVkb2N4?=
 =?utf-8?B?bE51SVRWWFBZV0lkZlFBY3gxRytlL013L1NSYitzRUFQZFJoU3dGbEkvY0oy?=
 =?utf-8?B?c09yWmF0Y2NPeGRpaXJXK1N5VU1UN1NNcWVsUHUxZTZCZC9XNTdReW85UFpE?=
 =?utf-8?B?S1U0NSt3MGlScmI2R0psZnkyMzNwUml3ZG51YTdZdjRqbWxLaXh0SmJvNFFL?=
 =?utf-8?B?QTkzMnJiNXh5aW1QQ0UxR2dRMWg1S0Y5eVNQWERnaW5sT0hHaGRmLzZFUTZG?=
 =?utf-8?B?OHd3SjhaZEVxanhCbXRRMGJ3WVhxamJPS29rUG02TzUydlVsSWpmWmV2VVJ6?=
 =?utf-8?B?WjBHbmZCUmVnQUVCQlhCbG5JSGlKY1lKTkhGMjY5UmNTdW5NTk5mVG1jV01h?=
 =?utf-8?B?OWFtSVB3b1pSTjZWNDBWaUVZNGxNK0ZkUlZtdFdSeEt0aGxlS3lrb2Yremgz?=
 =?utf-8?B?cmhicnlZWEtVclpvUldPM0VaYUYreWtucWtVWlM4YWNVRDRTMFZpTUQxeG5u?=
 =?utf-8?B?RU1XZHk3OUoyZit4OUF4dnNGd0VaYUIzRnZvRURvaS9PWmw4NnYzK2JwSlRs?=
 =?utf-8?B?Q1F4UVZ2WVQrMnh1ZDJ5T0pVSGFMcEZhOWdkTlY1YkJ2RE9XMTdTdDNsci9S?=
 =?utf-8?B?QXo2dXVVVGZrdFRaTE4rR05TTEF6OG12Y1Njc1dWNmlUb21CTVZzdHV5Q3Iy?=
 =?utf-8?B?Zk9tWm8xYzY2QXRBajBwbnZ6aUR4eDI4WTExcXZiNEh3WWFvUUpIMkJrSE5U?=
 =?utf-8?B?WCtSam9sLzA5VndSV0tnWUNhbTU4bndWNERobjZubE5MNC93ZUJXRlhPdUZv?=
 =?utf-8?B?KzFwQmxUeldFYkpBcHdIRVFiRnZMSnpwL2ZjMEZMUG1PZkxOVGI5WmREbmcy?=
 =?utf-8?B?RUVXbzNvcVI2blB6Y3FvUU41TE5wWDVQMzNxUXJ2SWpMNDVnU05IRy8vRlFk?=
 =?utf-8?B?SWMwYWIxSjNlQ0hQMlJtVzFvR3JvMWYzeitYNlpvZXN3M21WS3ZEbW1jZUsy?=
 =?utf-8?B?cldnS1IwMW5LQjh6QVVscEFZYW5nTzN5Q3l1bEVza2g4aEl5RzNQcWE3aEUy?=
 =?utf-8?B?MUhWbFYxdWJuaWI4b3AycTdLa1FzbWREcFl0NjFvY3hsVDNHWXZ3TXpHVnA4?=
 =?utf-8?B?Q2p3SmhGVlR3MmNkUjJQbUpZMHgyNml1bUs0WXdUM3JpNVdjSm1WR3dTSVR0?=
 =?utf-8?B?bmd5eEx5VGYyQ1hpR3lVODZvSTJCTnd1UlJHalIrTVNaR2hGaXJ4WGRlUFB2?=
 =?utf-8?B?eG1lOHJuUFNQYlNmUWY3R082dDNsUWUyMUVrOHFOZ05hK3hkT0MxR0ZJL2Rn?=
 =?utf-8?B?WWlqa0NrL28vbjFHRVovU3lIWmJEY0xjM0hyQ2MxRjNBdFE2eWhGWnpUZHJF?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e493d11c-e164-475e-122f-08dd3b2db636
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 21:42:47.4520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uisLq7+It55VhDGaxlYBH03oqTevZh9XkxlUrzBjtEpz9/L7FyVgi/TtavFBhIo1SYdMqFtfqgo2yMKIwfLKFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
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

Quoting Patchwork (2025-01-22 18:00:52-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cmtg: Disable the CMTG (rev8)
>URL   : https://patchwork.freedesktop.org/series/142947/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16002 -> Patchwork_142947v8
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_142947v8 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_142947v8, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v=
8/index.html
>
>Participating hosts (43 -> 43)
>------------------------------
>
>  Additional (1): fi-ivb-3770=20
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
142947v8:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@core_hotunplug@unbind-rebind:
>    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-cfl-8109u=
/igt@core_hotunplug@unbind-rebind.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v8/fi-cfl=
-8109u/igt@core_hotunplug@unbind-rebind.html

Hi, CI Team.

This seems unrelated to this patch.

Display version 9 does not have the CMTG and, as such,
intel_cmtg_sanitize() would simply return without doing anything.

Could you please re-report?

--
Gustavo Sousa
