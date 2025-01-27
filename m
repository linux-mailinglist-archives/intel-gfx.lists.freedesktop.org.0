Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D82A1D59F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 12:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E69510E2A4;
	Mon, 27 Jan 2025 11:51:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IiyDJ2n8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2037A10E2A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 11:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737978660; x=1769514660;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=73vRUhmDUrtLCUvQl3Ckl4nhTPZUo5OOWaFfNKuQA9Y=;
 b=IiyDJ2n8id0ZEZlb44aKPU6w8dWDwJCoH+NpIWfwUEYiUoJGi73E/fgo
 Fe/T9e0AuutAknEB/5XiDcX8M8201FPnTQqSvGoxYWRA9LpFcICBmVh+4
 yeRijCfAR/luEwpLZdj4rUA15kfKXKnydqomlzPycAT+gOwQiV++Ygjbo
 br/I0raEAz9vr6gPjZ2G8WeKb2EkAVWxZgvW1uXhIHUkbUG+X2S3hzgpt
 jxpmlwDkDZc+Vc7tSNwZ+vjaCjNAhYb+VEAEwlaCXOn2VYJxDRMXXg4A6
 MS++AC4A22Jm/HgmtvyWL+qsJhKpJjreiCzFx/i49M2gpShoNtlnGMnE9 w==;
X-CSE-ConnectionGUID: cTSLzJgERCyZi+lTTyK82Q==
X-CSE-MsgGUID: FR+EsUWDT4a9cLx03y1mwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38574156"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38574156"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 03:51:00 -0800
X-CSE-ConnectionGUID: Rs+nIw5OTP6QacLQ7IKSzQ==
X-CSE-MsgGUID: g8KGvYudQ1CehkDh63ofpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113029278"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 03:50:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 03:50:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 03:50:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 03:50:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qboot/rm1dtmVjy4C/Bpu+EDF6L+miFGiqU0f+VLc/OOE+vbaBZi0Hce03E08k/PKM07IIGjD5G/byn52qywBg995+zi0+joc7yW5w5GNxOk7Z6lMC+LIQli6yzRm1lHet6c0xKaQvPjn97tFf/scIZfaRSQVdutCmO/Miv0r81BdtRouACR8OHVICiZQlNryAB2TF7DvCREu4Jfqv8q+LI6rjo/onO9jR4E6NNqq30GEmM0AfokKqjGG66hMcokhflWpzStRvP/pRYN7r8ui6pRIzOiTsYsvP+6OKSHerjeH/pSyh1QbRzUvQKfETyvMYN4Qa7ajyDkqs4Rj8T4QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5dEAD+ZYgewJnHH73mTmdfClVUhYkmRQyShysPIfLY=;
 b=bgcL3xV2ZyGoClXthU0dCkKqLB/ph8EZDF7q/bL+r1qt0ZRfV0MgC2pvoZXB5hd4mqiv7Q0tMfCrfQwumCOqYP0cduF6BKBtly8lOOE5XW6ucgWRrAlnLA77W+/hbDkQzjE9UK7YwVtcHW/aHW7iR808aZNQGfa2lsiddRxXcVojknRxaaL1V3xRuFjyVz2Dk/yJVnWLZnoa59zd/PfHP5SwTF94UsxCGaKiJ/f6b3HibkCUHMblyvSQewgPS04q7+rDWMowfJTmuGtPAKXEatVV/fm7MbGCyVH1DgmSV1xxlyjlGiw/e2HcfSBNOvM/QHm302gYJ5rS8Gg/esohdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Mon, 27 Jan
 2025 11:50:56 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 11:50:56 +0000
Date: Mon, 27 Jan 2025 12:50:47 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH v2] Revert "drm/i915/gt: Log reason for setting
 TAINT_WARN at reset"
Message-ID: <zpipvjvpfdvlymbxag4dubpwbcogsxamtpk2zed5dfjidurw74@qqs3x2ymmrjf>
References: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
X-ClientProxiedBy: MI1P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::11) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|BL1PR11MB5303:EE_
X-MS-Office365-Filtering-Correlation-Id: a36ed6e8-e5aa-460c-9f12-08dd3ec8dbd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDhROU9pK0hrVWtyQklveTBjbEVVT2xpUTBjYVlucmdXeS82SHNwRy9BenQx?=
 =?utf-8?B?T0xqRFByK2Y2SFUzOWNXL2FzSXh1MncvWkE1cFdxRnlIcTdjSzIyMnRrZDlQ?=
 =?utf-8?B?SHY0UnRldkRYRWVvSGJ3bVNRZitsbXBPOVZnRUs1WFJzUW05TXhUbGk3b0g3?=
 =?utf-8?B?SjFvUlBHVGxrMzYzV21sdmwzQ2lGZm5BNWpqcVNpc3p2cnhrQTNXaFJ0bCtL?=
 =?utf-8?B?MlJDeUNZMWJHc3VDS2JsMGtkbzZZTlpRem1tcnVZbHJ3dU56UFVKZmMzZ0lj?=
 =?utf-8?B?cS9LYUZ4ajB0SVFrTDlMTEJlM0tWaTdhRWdVNGJ0cHRMcGJ4NVJheEY5RmN5?=
 =?utf-8?B?V2tDK2dURDhCRW1qSUJLUTZXVnNiSTBBWXN3bVVwaUQ0aWJPajNYQXVhMWRO?=
 =?utf-8?B?TXA1dVE5d0VVU250SHZrVU9GdnJjR1l6aUxzSy9JcVp5N0VES1RXaWZHYlRz?=
 =?utf-8?B?alRSdFVpeEhRMWxGTDA4M0l3RUw1dUlWeXM0aUZUODRKakZ6QnB0bmwyTytw?=
 =?utf-8?B?OWNoa1FMRy8xb0xRVm5CcnprcXVrdDRGREZtbzluajJZSzJNUVczRnh2L2Vz?=
 =?utf-8?B?RjVIUitST0xPQVh0SG5vVUxZZ0Q5ZlpOcGZvbVdEMkYrOUx2dmNaNHFaY09p?=
 =?utf-8?B?dCtHczM4b1c5c3BhY2xndWczNlovQVRYaXNJL04yVzBvUnlkV2VxQ1RLNjZZ?=
 =?utf-8?B?S24yUmtpM2dRVDJvQktXQkYyeXNDbzY3ZlVMd2VXZjNmR2U2Mm9Vd2lncFhO?=
 =?utf-8?B?ZGpBdWdXbE8za2RjcndiQ21LTmdycFc5amp2QktGMTFyOTljVnNORWxaWlJy?=
 =?utf-8?B?VTIzdkU0MVlLWHp5My9KSzFzMkJnT2xRWTZrOGEyTkdVVFlOYXZYSUtxTmxv?=
 =?utf-8?B?c1VnblI5Y3ByTDUvRTVOaExzQjBaV0s0dmlUekh0YUtxdlU0T3BDR3YyRG5I?=
 =?utf-8?B?RVJMN0puUlVuTzFDS016RHc2YUR3dU9qdHZ6a2ExQ0Y4WXZCMmlMRzdEVmNS?=
 =?utf-8?B?KzB1TitXRDVLN1VrQVdQbmp5ek5UUjl0QzdiN2pyRU9FcjRUMnljTkxlQnJI?=
 =?utf-8?B?WTR6WnFTNTF5dWZYNWlPMFZCVnBmeFZJaG53bGFMa05paGpScUNaTkZsSG9N?=
 =?utf-8?B?YkJrMXdSRWNReHdiaGJjOUV4MDRzNHVmZVVBblIvd3BWMjdFVjhqYUhrT0Zj?=
 =?utf-8?B?bW03dWVQK1VCbEVCNDZUd1BJT1dlZjNxTU0vR3I4cWhqL2pOcWd6WUtxa0k2?=
 =?utf-8?B?SGtjWU1FQnppN3dJRkREUW5CMURZamoxWGhVTFFhNmVTZkFuelc4WVA1a1Y4?=
 =?utf-8?B?N09hNy9IWjJUMjNueG4zOTZDSGNlaFduQXZjZ0VxZTVRZ0dxT0FMNVFVSzFL?=
 =?utf-8?B?UmtBTy9JS1Y4dGpGOEs1RkkwWnYyZ1RzWkY4ZG00dEg2T200SnRvaUxpZFV3?=
 =?utf-8?B?L1F6bXlQOHZ0dUFld0Q0SmxFWmdEOGRQRGhlRjdCanhORkZkdC9XS1R3Znla?=
 =?utf-8?B?aGFiVXMxdWxobTBGWGFxSk9yTVpOZUNYVk1yaGdnSVNNOFoxQlk2ZGx3YWsz?=
 =?utf-8?B?YkNIS3ZpK1VOQjJFN25aTWVzZys2TmY3bFJTRXJqVlNTYUJsWGhzNFNhQzl6?=
 =?utf-8?B?enVZMlljeTdxUWIza1N4RXFqUER3OUw0UFN2Szc3WnVMMlVJK3FQVEVZR3Fw?=
 =?utf-8?B?dTNUcEY2MThIemdaZnJ4aXh5cXpGeW53SUdidTdLQlNKYTVTRkplNU51cU52?=
 =?utf-8?B?UTMzNEdWdUVabUFic0NNUEJ3OFFjY0dvU2F3ZlMzWU4yWjRERDhJbjBJblll?=
 =?utf-8?B?YXFKLzRmN2F3TFVVRDVESEg3ZGNTZ0xmVTV1Uk9YVldPa3JkU3d4aTN2Qkhz?=
 =?utf-8?Q?yROkYyr8b0gni?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2FjTzFaM2pHa0dlUi9VWjYzMDlFUWs4b3hTQUQrSnAwVXhhNWRNTjQyZHRJ?=
 =?utf-8?B?bmNJUEUxNm5nTENwM0ZGYW1QMm1wZUdTVTZRVGttRTJlMjNuVkt3dnR0bHFQ?=
 =?utf-8?B?TDZKK3Ria1ZFbTU2Nm5oOE9CTlZMNHNpSHBkL0w5cDlZRTRvT0hwdEhwaWlq?=
 =?utf-8?B?OWZXTWFuWUtta1RRalovOEF2R3hseVh3Ti83K0ZFNFVkMWZHWDZCT3M2Nk0r?=
 =?utf-8?B?TjIzeUE1dDFFWE9pWll4MVBNTW14ZXppYkRTZmYzVTRGREVOWDUzZ2djMVlQ?=
 =?utf-8?B?QlEyQnNkcnV2OEhWd0g1RFNMRnJYY3p4TlRIdkRKR3VYRGdWSGdGUCtJNnBB?=
 =?utf-8?B?QmU5czhwdS9PdkZVeGd5UEZlb0M4akhiUUV2ckVRVDVRVlkrVEVKTVQxdHU1?=
 =?utf-8?B?RjNuWGdZbzRYSFNLWDhualV2ZEJvYnR3dzJjcFlGQ1NqaWlYN0NzSVhkUU43?=
 =?utf-8?B?Q2VZZUM3cUxtUkp0TlozSmxFTDZZNmJ3dmxWRWYzN2lBUEhuUERkN3FOQS9z?=
 =?utf-8?B?NGN6Qi9OSG1KN01zOStQTU5XTW9kZ2FnQktlcE8xVFBFRkZHcTIrWjZ1UDFZ?=
 =?utf-8?B?dERLWEwxdmZjMnVkdVVlM29tS2JURzJRMWR3ZG55dkRvTnphSU1OSTR4V0NX?=
 =?utf-8?B?d1JHYXpEb05LMGRRVGRqN29KcUYrOXB3aVd3d0xaTEl5QVU4THdnejhRajJR?=
 =?utf-8?B?NktmMytkeFRMaVBIWkJ3VlVzZFRDY1dTeFNTNjNac0loZWhDRVIwMEwwOUMw?=
 =?utf-8?B?QzRtZUU3Z2EwUklTVXloYk1uZGxjWmZKRXJLM3h6aGMzY2xmQnBURlJUcnhV?=
 =?utf-8?B?VnZ2OEo4c3RvYVJnaW4zL1VjU0hyemFpUkx1Wjk2OGZnSDJtUlM2MVB5aS9w?=
 =?utf-8?B?bkdjUi9ZNUxyWHUxTFpOeXJXRzNIN1FCTmp2ODBQYjhFekVudzZYSVlXVUMv?=
 =?utf-8?B?dmNUeEVCTGdlSjV4TnNnMmRlWmQ1b0Q3ZXRxRkkzOVB6MXRxODBMSDN5cVR5?=
 =?utf-8?B?QTUwWTljUjQrUU40eEEwb2FyVWFtUys3SE9jS2sxMjV2Nmoyb015YlFlNytU?=
 =?utf-8?B?czhXbys3R1V0SXFSVVA5aUdBNksvUk9vek5TbG9yTkt2eklaQWNLMjRNODhW?=
 =?utf-8?B?N0ZNSVBxSVJEK0hNeVlRWVNmOUZiaWNtaHVEOFl5YXhLbERyL0VRRlY5eFVH?=
 =?utf-8?B?ZG5zUjgyN3BhRTdLVW1vMGUxOFNlc1lNSHhRckhLaG1ldEhGaG9MSndYclEy?=
 =?utf-8?B?aDgvSFdLb1ZkdFBBc1RwTWYxTEQrNXJvazg5YnhzMk54THViTFE5WUxWQ1RE?=
 =?utf-8?B?aFhxZGl4ZUQ3UFR5QnVmRHpWYjUra1NoY1lLQWVHb21GRnBPUjF0ZWtrdUx5?=
 =?utf-8?B?ZWNlSXU1MDhsV0hBb29VNjdwaWJFdEtKUm1BZFJPUkFqdm50VHovVlcrbFJW?=
 =?utf-8?B?U0R0aFBzaGtYVllXZGNnTG9jalRCVC82aHpnYjRidW8zMFQ4UnZ3SFE2OGU0?=
 =?utf-8?B?dTd0bENlUGVsTkhneFJSaUVWdFltUkoxOW80VzM4djgvM0hhOFA3enk0N3dP?=
 =?utf-8?B?SU5aZlJESTkwNjA4QkdlQlhTb0p0TzFoRjhFSWRFaTNzTS94QnZ3bG43RTJQ?=
 =?utf-8?B?eSt3aXlOQnNYYVpKbXNFbkU5QjBlTDdMai9wTmdhcjl3UlBHZFV4Y1ZCMTU0?=
 =?utf-8?B?cVdlUTBacjV0SkU3clRFMTJxQTVySi9QN3BlNWM3RW16eXN0OGFCK2xIMERH?=
 =?utf-8?B?L2ZUTDNrR2xoVmhPbEc1QWRkRXE4dXhhTlVmNXpneFZQWmZDbU5XZVFjWVFL?=
 =?utf-8?B?Sy9WY2lkK2VrZGxjTjhxNHJkWElNRVA1L2tYeG50NWN1a3hFWkNyWTEzdEpu?=
 =?utf-8?B?MDV0UGkzaTlKUVdGRkU1YVdhSGhabzJsVGdQT3ByVE1rQXFFbC9DSGYzY21V?=
 =?utf-8?B?dUx5TE9oL0RwWFM1S2xiMkRkQ2VEUkdoaDJnTnBRWFVCK0ROMXZwaDNPbjFQ?=
 =?utf-8?B?cUlrdDlOSk5VRHkxY3hMQVlqMjZ3aVFNM0hhdTB2cm0zWUN4ZGpmUDN5WG91?=
 =?utf-8?B?UThZNzdDVkJ2VzMwTlhBUHFtMEcyWTAwa2JCbFhVQVB6VlpVTEZKQzBzcTNa?=
 =?utf-8?B?dk1vVllZaXd2N0FUcDZzOFgxUktKd1N3UGh3ZnZCeFVWYU81Q0xHU0RVeFY2?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a36ed6e8-e5aa-460c-9f12-08dd3ec8dbd9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 11:50:56.1133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bpInd5XyZ12PWAKax+rxOCqm42hBDWZiBXKfJr2cjhPMHHPcJ7Rx8cMqB53CYdgSbQzhM6H9uy5dZynabnn62q/znevFIuDu9oZMp/S+UmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
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

Hi Sebastian,

On 2025-01-23 at 14:38:40 GMT, Sebastian Brzezinka wrote:
> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
> 
> - turns out that logging with gt_err() causes CI to pick up an error
>   even in intentional error injects,
> - the unintentional (real) errors are already reported correctly by CI,
> - a gt wedge is already being logged without this patch, so we should
>   revert the new message instead of, for example, relaxing the loglevel.
> 
> V2: rephrase commit message
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
