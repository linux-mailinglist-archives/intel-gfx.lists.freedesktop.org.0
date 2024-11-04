Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1889BC17F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 00:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27ECA10E0CD;
	Mon,  4 Nov 2024 23:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJM0xwmO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169A110E0CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 23:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730763272; x=1762299272;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KIR38tyU9tYcSpVCHH8yKxvasPggKNzl5Gx0SVKBc84=;
 b=SJM0xwmOUJFo7prQtCJT9vHmxEezVmm9JG3ukQlfEHhlQSsF+Ss97+9B
 P6HA1DVOvcNv+zgzm7omPoQCx8bDJpiMjpmRIXR7z9PuneKfvcQP/cnOV
 DO6UAwggHLBoIV8aOhdiUw+JbBxhM7REMjYScYt4lXRi3qTu7rPNnu4X9
 l2DxdbAm1x+STOgpiNxG9DT6+4LX5ZrQQwMMUJnzgYfPcv/tXoVjKs5Oz
 Qb35jpES8TZ0q5pgrUNUluBQk4mdvVz+PGiTiCAE6NcM+kexkRmBdM/dC
 Q9rDrfC9XPEyMDkVu1F5SMvHhPsdz6gwITmZXCxGl/pqdx7CaEd1DEqzZ g==;
X-CSE-ConnectionGUID: F0Uk5Cf3QFiM+Ac0AMnQeA==
X-CSE-MsgGUID: obZg7o9sSp6QFRowItn7iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41856024"
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="41856024"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 15:34:30 -0800
X-CSE-ConnectionGUID: lk4cFXJnS6+Xwec69PwsCA==
X-CSE-MsgGUID: VK1HAo1STgiHfoXfCGNlEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="83323701"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 15:34:30 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 15:34:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 15:34:29 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 15:34:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fv9CwWcGzlp3wzn9emMMTB6jhVaKaPaxX7UvlbZmIeMQi0GmovCZ3Ug9Pp8GdVbfw5TrZ2KzRX2DKSLgd0F1Hu+dtG2SS7njiRLYHzWGDUMAqmgNUgJy8ysUoGzzmYADJSxVyOkR/AUOf9KkV6lpTITrNPZxjumtGUKUwG+hvaIaoC4IE2cc4bbJ4DRykPPb1sSO19GSRqKfRmZzzs4DSZjY810MQifF/3O2Ir/Lc4mNm/7uGdGU/vXPtTxkrbiXHYq2s5Qg4mi0yD+cTeyj7aRLuewZnr01PfAF4xS7yoRBGgeetTvCUMjiL03+sBdoUQNMbIg60enuApdbtL0+gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQhg2LpanI8wPgm17EnRH1BiyHfG9CkLgu8xTJ5VjTo=;
 b=DIHz9kH1FGe5MJuW5Gjg4jO0c5Df3hw/mWwVXGx+XybeXZ5Ca/U+rFApKFr2oL9FyGy8rEFKODxtOo+TVNqBTaHVxod37GzPIBw7JiIWoNKHF1nbsdt1nwBor2XYVzwFKECe1Hbfhw1VIpyyyVtHuZIvzewePC8tQUPpo6QL9tc+vTuvfjs3PnayUVIsYpy+jhw/cAWD5eBkfU6ExnHmZDCVNMgiC1uPAizNjIgcuaNdOI0lrQssBfSrT3dXTBr1pqKB+PD8X029eFDu7FodEF4JxWczmdArZpleDAxvj0SK2QXse0DVy3EFKIyvWn5rDXNRFrSpkwGp9l2Q+c6kdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by CH3PR11MB8706.namprd11.prod.outlook.com (2603:10b6:610:1d1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 23:34:27 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 23:34:26 +0000
Message-ID: <9f634e6e-3ded-43bf-a7f3-148febe28dc0@intel.com>
Date: Mon, 4 Nov 2024 15:34:24 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gsc: ARL-H and ARL-U need a newer GSC FW.
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
 <92fb6446-7a25-49f8-b5ed-cead607f2070@intel.com>
 <2c1c07f5-920b-4f6e-87dc-752ae3725a2c@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <2c1c07f5-920b-4f6e-87dc-752ae3725a2c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:303:2b::29) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|CH3PR11MB8706:EE_
X-MS-Office365-Filtering-Correlation-Id: 21ee01e6-8c91-402c-f028-08dcfd2938b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1ZEUmtXUGE0WUdWbzlmdlducXFLdTJxVGpya1Z6bEhlT2hZblh6RHBXVTFi?=
 =?utf-8?B?ejhLVVkyTGZ3OFBLYnhFdUhFUWRYVWVIdzZwN1pxVmo3a0J0OXdzb0wrcFpT?=
 =?utf-8?B?b1RwQTcwSnhlMjJkT21PeldPcTgydjllOENNTnZnWUc1SkNaanBwNHBoNEdE?=
 =?utf-8?B?T0d4R1VRUjFrOVRFOFkvWHY0TlhuUlVBVGpxRVJ1YnJyWVJQQ3kwRUU4NFdZ?=
 =?utf-8?B?SVc1dUxseDFib2ZKVHc4WktMNi9Uc0FxejJ5OGpLVG1naTZ0YU53dkVBMGJG?=
 =?utf-8?B?TUQ4K0x1WVVxbThDNGtXY2p0TU0wTVlSUGNPYTZodmgzWkl3dmZPZXJqUHpN?=
 =?utf-8?B?U1ZSUjZLRzc0MUpiNU1LWExLZUF5emtSNVp2NDE3d0cvTC9GV3N2TDVkbEZK?=
 =?utf-8?B?YU1Bazd1RjBoZ3B2T0p3VEZWL3NqdFFDTm9GRTRKSkdTcjZGV0t4aVQ3VmQr?=
 =?utf-8?B?b2ExNGthcFl2RHkyeGMyRXZQbjJXdHRwWkp5YzFkYmtQNExNREZoejlqVzkw?=
 =?utf-8?B?VTQyeVEzUjVqYkpKbVprOEp5WTZsalNFM0tnQ21zQktYcHR2Z2d0dnpLZExW?=
 =?utf-8?B?OGIrK25TbFhGdCtoV29LbUIxQWZQV2RhZmE0c0NSVDgvVm1Jb3hNWVNjdElh?=
 =?utf-8?B?ZkdKd2pLR3ZPbG1IOFlucWhGcTNkSWFPZ1BIdmw0T2dBU0tRVzRocE9KWWhp?=
 =?utf-8?B?Y2VoYXc5VWswQk1La001eHYwY0RRSENEZm8rQkpoS0o4TFJvM3FYam9ZSjYw?=
 =?utf-8?B?L3RhS3E3S2txUTR0c3JZdnVsZGZZTFlkS0t2WU1sc0xRNDVjL2RoZy9FUEov?=
 =?utf-8?B?cHZpNjlwQUQwKzY1M3hSck9kQ0VSZ1RoTEFxRHNWN1N4ZWlNYjZxWW9UTDVi?=
 =?utf-8?B?UlNkczh4cTRhQytHOHF4QktBN0VlT1lKcVQzcWVmL0xXMGIreVp5SE1vNHhh?=
 =?utf-8?B?bnV2eFhxZ3BVVG1nY2lURGVod1lYa0YxNzdrZ0QyNUI2OWZlMDF2cVhLZUZ4?=
 =?utf-8?B?OWU3U3QybDVZWmM2djBoSUYvemlxY0FYQW1LdmsrV25ob3R6eGNiYnhReTd1?=
 =?utf-8?B?Z1JyN2RlcFo0UUZpRU5HcWZ0UmxvdjhBUjZXekRzaW1Pdjc3Ylk2MHVnTzlx?=
 =?utf-8?B?WEJUVUlmNlNISXRvRXhqc2tmSlNWbUUzZUVTMWpBYjJBY0lpdlZUQ3NtejFj?=
 =?utf-8?B?ZGVoRm92VTc0NkZzZW9tRmRiQmxHSFcvNkFaSlQ0SlpHc0tsK0dlc3VFS1pt?=
 =?utf-8?B?WnFKamw2Y0YzUWdHUDhwbkxnVUdnVDI1N2N2OXlpTHdobFJOTklKTStLOEx3?=
 =?utf-8?B?T080U2VRMy9qSDVjd0YvcTZXWmRYa0MxK05WeXI0QVlWVXo2WDk1QS9TMUJs?=
 =?utf-8?B?dndUeGlDVzJvbGN3cHh5WEQ4OCt3T0tjUTR4YXJNa3RvZmlKcTdQN3J2SzF1?=
 =?utf-8?B?empHbGg2N0lsRUZTZVdwYzE5R01KWHJjZEl0RjNVd1d6eXcxdHlnOFd3VXpU?=
 =?utf-8?B?OVNIaCtOWkpYazRGUDZTUnhRSCtnOXJqbFc1eW5GYUdSZjIzN1Y0Y1AvYlRL?=
 =?utf-8?B?bk5jS2pJSVRtUGliK2hNOXhwYktFcXR4SGI3RUNJYkppQUJNZy95YldIdlA0?=
 =?utf-8?B?dG9LMHFnU1ZValNRNjVoL0E3QkFSTkI1NlpkeVBTK1d1YkJ3S0daUVM2NlJJ?=
 =?utf-8?B?MkJtdVhRQlZSRGdiT2dQT0RxbzFLU3ROZEZhZmNmVkQvU1A1OGpmd214em9k?=
 =?utf-8?Q?jfSa/CNPPIm1WaY6m4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFVjV0JZY2dmWTRsOG5KeWpQVldNaTNiYjBqdU8xQmlITWpMMGE2a0xMQWtO?=
 =?utf-8?B?UmVqa3pRUjdCK3B1TmN3R0NkbDAwcXRMWVJqbU5tL1ZCQklJR2czL0w4TjVZ?=
 =?utf-8?B?WkNUQXhGWkdzdktxYmtwSVJ4bUdWMCtnaS9XSlZicWtxcGRrai9HdWJ1WERz?=
 =?utf-8?B?YW02eG9EWEpDNGFWOHFFS0JDTlNCUVpIWjBEZVRDNitRUWNDcE9zckxISzFw?=
 =?utf-8?B?K3IxQjVNVEMrbHg3NXJyR3crZHdOMEkxT0R6ZjZYMEl0Zlhxa29LbnQrWjVR?=
 =?utf-8?B?NFpuT2h6ZEorMFdqOHFFTzRRVXQ4c3lKNFNRVFltOStNaFNObTZmaGhMdUxG?=
 =?utf-8?B?SzVGcGU5Sk55ODR3VkFjSHRVSDJ2dElrMDhkU2k3ZklBTTM1U2ZYbytJTzIx?=
 =?utf-8?B?VnFKZ0Y5enZSUy9kZ294QnlqOUZVckR5UXpNUkhPekdEVEFwVDZROWl0Q3BX?=
 =?utf-8?B?ayttTTg1NHFCbjIxSlRncFRvODBkb1ZTNjZYcFlJSzUwU1BEY3pOM1RIbWM2?=
 =?utf-8?B?cThwbzFiVTdnZi93aDlWNXpWcGVydTh5OEJsNXRhQ0dmckxIakFRNkZjSmI2?=
 =?utf-8?B?UUllN0lOQzROZTdJSGNMNm9SYTA0T1hCRzFTSGhESDd1L20rL0cvU0FaSitT?=
 =?utf-8?B?L2tid1c5VzBEWlJkamI5cExobUpyRUNmMi9xZ0UvQ29mbFY2d04yWUNwckY3?=
 =?utf-8?B?WkdFTWFsbnlFWURzVEJGZTRmanA0c0dicWVoNXg5Q2FmMGhyV2cyNVVpL3A4?=
 =?utf-8?B?K25UUWkrVHJWWmgzdU01R05wV3BSc1kydWx5akFIOHplVUl3dkxER1BFUjBQ?=
 =?utf-8?B?Q1hQaGwvL0VtYlBnSWFTWndwMTJUOTlnb1l6Y3ovMkgvN2htVWFPYlNtNFVO?=
 =?utf-8?B?NzVVRjlTL21LZm9Nb2lrYzFyb1l0N1JxWmg2RjlxZHhhOVRmSmowWEg5eXls?=
 =?utf-8?B?NGFwKzdJcXlBdWEyUmovUWJCUlRhU2EwT2NIZTlzdmtITmN2bnhwOFUvYjRl?=
 =?utf-8?B?bFZ4alV3ODlMU3hxZmRLVWJIeTJiSm1xL0VwaDRHbFhBMXkzN21heE5Zdk0y?=
 =?utf-8?B?eWJZZEJYZVJNWFp4Y0krWXU4U04wOFZrdWt1aTJ0eHBWT2xuaFpZYXkvWThN?=
 =?utf-8?B?UkRWVE56NDhTMndIWTRlNEJjRy9xM1hXeVhtT3Z5OWcvRnV3aW9waWRwWHB1?=
 =?utf-8?B?OTN0SFRZY0pZS2NQNm1Wa29CbE56Z2R1T2NHNHNzbXB3VzFiNW9uc1dieE14?=
 =?utf-8?B?Wi8zazY1L01tV1FyRmFkVHd4eEJaN2FjL2JDVDh4aWR6dExOYWU1elFxVFZZ?=
 =?utf-8?B?Vlh5RXhuUGVSNmt4T1Q3SFgwanloejBWWlNlb0xQY2RQNmdLcERhQkZ4Vkwy?=
 =?utf-8?B?Y29JeFlYOEpwSVNpQ0tkc0tNN2t2QW9YS2daNVFNV2xIS3BBRURJVzdBWXFX?=
 =?utf-8?B?YXY0Nmc1QWlvT0w0dDlpRjFnODZNQ284ZERIUTlEN3Q2cHRvWTNxYUdGbHd2?=
 =?utf-8?B?dkxMTHI0cG5JQjlxZVczcWJoZmJaaWlpM1hjM1hDUjJ1K0kzME9kRjg4MXIv?=
 =?utf-8?B?TGNJUXl0Wmt3c01FbnRzYWZ5akRxd2pRSklaZmk3WkVRRUpQaXNkdW1QQi9J?=
 =?utf-8?B?VWVRdmhFeWxiS2t4dWtRZHZ1VUpDYkRKT2xwbk5MSVFSQ05EeW9haEtTbW1Z?=
 =?utf-8?B?QzdCRFNzckE3TnFGdEZ0aFovMnZQa3lPRmMvZEVTTGMxYjhjelk2dnBXbkpo?=
 =?utf-8?B?a3YwUmhaTHJxZ1VQNVh0ajNWVS8rSm8yZGUvT3EwYmFtRVF4eFFOVG1pWTln?=
 =?utf-8?B?QkNqR0cwR0JGdnEyaG8zWForbWRmVFdmcmZrTkhLV0VXVmtaaFF6R0Rzb3FP?=
 =?utf-8?B?SGpQRVlUTXNLOHZyYVMyaGdHVkVmL2xvTzZ5NHdWaVpja0ljakdMMDlwMG5S?=
 =?utf-8?B?aEg4bFYwMjR5dnhTZmEwQlEzV3Q3MUhyQkljWE5CcXNldFlpV01ldFY2Ymgr?=
 =?utf-8?B?WDhTbHNyRmN6UlZKM21kSk1tNlIyVDZHMCthaWYyaDFJZjdFK2N2QWh0eE1S?=
 =?utf-8?B?OHhpcmVhT1I4bGZpYnFCTWZ4a1BCa3Y5RmFsdmdyODhhckJvVkdJYUdhQ3BD?=
 =?utf-8?B?d3NWbkQ4eExjdW1ETVpISHhra2JFdGh1VVp3RldvZFZNVVNnUk91MGpVRzVq?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ee01e6-8c91-402c-f028-08dcfd2938b9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 23:34:26.8671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qyW6a3o7FSaTsnERng0Yzo2gvh2RrRJjGib5eSAad3RzIa0pNQlzKL9pK7rihupqk5REJc9lvh8i5rahE9BIlFEt8HbhJ8MuiTowOFKGsoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8706
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

On 11/4/2024 15:09, Daniele Ceraolo Spurio wrote:
> On 11/4/2024 3:02 PM, John Harrison wrote:
>> On 10/28/2024 16:31, Daniele Ceraolo Spurio wrote:
>>> All MTL and ARL SKUs share the same GSC FW, but the newer platforms are
>>> only supported in newer blobs. In particular, ARL-S is supported
>>> starting from 102.0.10.1878 (which is already the minimum required
>>> version for ARL in the code), while ARL-H and ARL-U are supported from
>>> 102.1.15.1926. Therefore, the driver needs to check which specific ARL
>>> subplatform its running on when verifying that the GSC FW is new enough
>>> for it.
>>>
>>> Fixes: 2955ae8186c8 ("drm/i915: ARL requires a newer GSC firmware")
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 50 
>>> +++++++++++++++--------
>>>   drivers/gpu/drm/i915/i915_drv.h           |  8 +++-
>>>   drivers/gpu/drm/i915/intel_device_info.c  | 24 ++++++++---
>>>   drivers/gpu/drm/i915/intel_device_info.h  |  4 +-
>>>   include/drm/intel/i915_pciids.h           | 15 +++++--
>>>   5 files changed, 72 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> index 551b0d7974ff..5dc0ccd07636 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>>> @@ -80,6 +80,7 @@ int intel_gsc_fw_get_binary_info(struct 
>>> intel_uc_fw *gsc_fw, const void *data, s
>>>       const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
>>>       const struct intel_gsc_cpd_entry *cpd_entry = NULL;
>>>       const struct intel_gsc_manifest_header *manifest;
>>> +    struct intel_uc_fw_ver min_ver = { 0 };
>>>       size_t min_size = sizeof(*layout);
>>>       int i;
>>>   @@ -212,33 +213,46 @@ int intel_gsc_fw_get_binary_info(struct 
>>> intel_uc_fw *gsc_fw, const void *data, s
>>>           }
>>>       }
>>>   -    if (IS_ARROWLAKE(gt->i915)) {
>>> +    /*
>>> +     * ARL SKUs require newer firmwares, but the blob is actually 
>>> common
>>> +     * across all MTL and ARL SKUs, so we need to do an explicit 
>>> version check
>>> +     * here rather than using a separate table entry. If a too old 
>>> version
>>> +     * is found, then just don't use GSC rather than aborting the 
>>> driver load.
>>> +     * Note that the major number in the GSC FW version is used to 
>>> indicate
>>> +     * the platform, so we expect it to always be 102 for MTL/ARL 
>>> binaries.
>>> +     */
>>> +    if (IS_ARROWLAKE_S(gt->i915))
>>> +        min_ver = (struct intel_uc_fw_ver){ 102, 0, 10, 1878 };
>>> +    else if (IS_ARROWLAKE_H(gt->i915) || IS_ARROWLAKE_U(gt->i915))
>>> +        min_ver = (struct intel_uc_fw_ver){ 102, 1, 15, 1926 };
>>> +
>>> +    if (IS_METEORLAKE(gt->i915) && gsc->release.major != 102) {
>>> +        gt_info(gt, "Invalid GSC firmware for MTL/ARL, got 
>>> %d.%d.%d.%d but need 102.x.x.x",
>>> +            gsc->release.major, gsc->release.minor,
>>> +            gsc->release.patch, gsc->release.build);
>>> +            return -EINVAL;
>>> +    }
>>> +
>>> +    if (min_ver.major) {
>>>           bool too_old = false;
>>>   -        /*
>>> -         * ARL requires a newer firmware than MTL did 
>>> (102.0.10.1878) but the
>>> -         * firmware is actually common. So, need to do an explicit 
>>> version check
>>> -         * here rather than using a separate table entry. And if 
>>> the older
>>> -         * MTL-only version is found, then just don't use GSC 
>>> rather than aborting
>>> -         * the driver load.
>>> -         */
>>> -        if (gsc->release.major < 102) {
>>> +        if (gsc->release.minor < min_ver.minor) {
>>>               too_old = true;
>>> -        } else if (gsc->release.major == 102) {
>>> -            if (gsc->release.minor == 0) {
>>> -                if (gsc->release.patch < 10) {
>>> +        } else if (gsc->release.minor == min_ver.minor) {
>>> +            if (gsc->release.patch < min_ver.patch) {
>>> +                too_old = true;
>>> +            } else if (gsc->release.patch == min_ver.patch) {
>>> +                if (gsc->release.build < min_ver.build)
>>>                       too_old = true;
>>> -                } else if (gsc->release.patch == 10) {
>>> -                    if (gsc->release.build < 1878)
>>> -                        too_old = true;
>>> -                }
>>>               }
>>>           }
>>>             if (too_old) {
>>> -            gt_info(gt, "GSC firmware too old for ARL, got 
>>> %d.%d.%d.%d but need at least 102.0.10.1878",
>>> +            gt_info(gt, "GSC firmware too old for ARL, got 
>>> %d.%d.%d.%d but need at least %d.%d.%d.%d",
>>>                   gsc->release.major, gsc->release.minor,
>>> -                gsc->release.patch, gsc->release.build);
>>> +                gsc->release.patch, gsc->release.build,
>>> +                min_ver.major, min_ver.minor,
>>> +                min_ver.patch, min_ver.build);
>>>               return -EINVAL;
>>>           }
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>> b/drivers/gpu/drm/i915/i915_drv.h
>>> index a66e5bb078cf..b1f2183aa156 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -539,8 +539,12 @@ IS_SUBPLATFORM(const struct drm_i915_private 
>>> *i915,
>>>   #define IS_LUNARLAKE(i915) (0 && i915)
>>>   #define IS_BATTLEMAGE(i915)  (0 && i915)
>>>   -#define IS_ARROWLAKE(i915) \
>>> -    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
>>> +#define IS_ARROWLAKE_H(i915) \
>>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
>>> +#define IS_ARROWLAKE_U(i915) \
>>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
>>> +#define IS_ARROWLAKE_S(i915) \
>>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
>>>   #define IS_DG2_G10(i915) \
>>>       IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>>>   #define IS_DG2_G11(i915) \
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c 
>>> b/drivers/gpu/drm/i915/intel_device_info.c
>>> index 3c47c625993e..467999249b9a 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>>> @@ -200,8 +200,16 @@ static const u16 subplatform_g12_ids[] = {
>>>       INTEL_DG2_G12_IDS(ID),
>>>   };
>>>   -static const u16 subplatform_arl_ids[] = {
>>> -    INTEL_ARL_IDS(ID),
>>> +static const u16 subplatform_arl_h_ids[] = {
>>> +    INTEL_ARL_H_IDS(ID),
>>> +};
>>> +
>>> +static const u16 subplatform_arl_u_ids[] = {
>>> +    INTEL_ARL_U_IDS(ID),
>>> +};
>>> +
>>> +static const u16 subplatform_arl_s_ids[] = {
>>> +    INTEL_ARL_S_IDS(ID),
>>>   };
>>>     static bool find_devid(u16 id, const u16 *p, unsigned int num)
>>> @@ -261,9 +269,15 @@ static void 
>>> intel_device_info_subplatform_init(struct drm_i915_private *i915)
>>>       } else if (find_devid(devid, subplatform_g12_ids,
>>>                     ARRAY_SIZE(subplatform_g12_ids))) {
>>>           mask = BIT(INTEL_SUBPLATFORM_G12);
>>> -    } else if (find_devid(devid, subplatform_arl_ids,
>>> -                  ARRAY_SIZE(subplatform_arl_ids))) {
>>> -        mask = BIT(INTEL_SUBPLATFORM_ARL);
>>> +    } else if (find_devid(devid, subplatform_arl_h_ids,
>>> +                  ARRAY_SIZE(subplatform_arl_h_ids))) {
>>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_H);
>>> +    } else if (find_devid(devid, subplatform_arl_u_ids,
>>> +                  ARRAY_SIZE(subplatform_arl_u_ids))) {
>>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_U);
>>> +    } else if (find_devid(devid, subplatform_arl_s_ids,
>>> +                  ARRAY_SIZE(subplatform_arl_s_ids))) {
>>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_S);
>>>       }
>>>         GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h 
>>> b/drivers/gpu/drm/i915/intel_device_info.h
>>> index 4f4aa4ff9963..ef84eea9ba0b 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>>> @@ -128,7 +128,9 @@ enum intel_platform {
>>>   #define INTEL_SUBPLATFORM_RPLU  2
>>>     /* MTL */
>>> -#define INTEL_SUBPLATFORM_ARL    0
>>> +#define INTEL_SUBPLATFORM_ARL_H    0
>>> +#define INTEL_SUBPLATFORM_ARL_U    1
>>> +#define INTEL_SUBPLATFORM_ARL_S    2
>>>     enum intel_ppgtt_type {
>>>       INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
>>> diff --git a/include/drm/intel/i915_pciids.h 
>>> b/include/drm/intel/i915_pciids.h
>>> index 6b92f8c3731b..ae64e8ec1adc 100644
>>> --- a/include/drm/intel/i915_pciids.h
>>> +++ b/include/drm/intel/i915_pciids.h
>>> @@ -765,13 +765,22 @@
>>>       INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>>>     /* ARL */
>>> -#define INTEL_ARL_IDS(MACRO__, ...) \
>>> -    MACRO__(0x7D41, ## __VA_ARGS__), \
>>> +#define INTEL_ARL_H_IDS(MACRO__, ...) \
>>>       MACRO__(0x7D51, ## __VA_ARGS__), \
>>> +    MACRO__(0x7DD1, ## __VA_ARGS__)
>>> +
>>> +#define INTEL_ARL_U_IDS(MACRO__, ...) \
>>> +    MACRO__(0x7D41, ## __VA_ARGS__) \
>>> +
>>> +#define INTEL_ARL_S_IDS(MACRO__, ...) \
>>>       MACRO__(0x7D67, ## __VA_ARGS__), \
>>> -    MACRO__(0x7DD1, ## __VA_ARGS__), \
>>>       MACRO__(0xB640, ## __VA_ARGS__)
>>>   +#define INTEL_ARL_IDS(MACRO__, ...) \
>>> +    INTEL_ARL_H_IDS(MACRO__, ## __VA_ARGS__), \
>>> +    INTEL_ARL_U_IDS(MACRO__, ## __VA_ARGS__), \
>>> +    INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
>> Is there any point in defining this? I'm not seeing it being used 
>> anywhere. There is no longer a generic 'IS_ARROWLAKE()' macro. So 
>> does seem to be worth defining a generic ARL id list.
>
> AFAICS it is still used in i915_pci.c and 
> display/intel_display_device.c, where we assign the MTL capabilities 
> to the ARL device.
Oops, yes. Missed those. Okay, looks good to me.

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>
> Daniele
>
>>
>> John.
>>
>>> +
>>>   /* MTL */
>>>   #define INTEL_MTL_IDS(MACRO__, ...) \
>>>       MACRO__(0x7D40, ## __VA_ARGS__), \
>>
>

