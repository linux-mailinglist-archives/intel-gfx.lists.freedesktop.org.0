Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D18A49B5F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 15:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14AD10ECB3;
	Fri, 28 Feb 2025 14:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVpn/g36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D295410ECB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 14:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740751725; x=1772287725;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=U/fwd7qEKzYEcjD1cXqb2VGiCdbu8BrRuGTo4oU9nHE=;
 b=gVpn/g36B9sXleKMKkjwhRve3oBDK1V2t9XH2GHpwbmht0rJmumj33zP
 drn98e+c6RWvpWVc6FpW6mICaXTJAidkwAURooIslr0uA+BqdTXicswV1
 PTfN4EuQmfq8CkKqPPvE456WMn5hmTEAY27L1K4Pk7lPQ3vYbe2uTs1ZV
 QcbpP0BKF+8YbpwW1s1wOIZNhmVoFxHLp/7c4r1M8ji8hWlA5Epbx7mJU
 rozrojtQVTOBfLLKDUtenPz8Ml2N6oQHuGACEYazDbtDfer/7XkRTYZQi
 V3BV4deRX8TeOQUcBxX9m0WnIdtw/dep6Odxgiz00tTRl0hBeRaD6aTrD g==;
X-CSE-ConnectionGUID: ufoE3FR7Rl20cLaHl+Picg==
X-CSE-MsgGUID: o9GobTtQTNioyX3xw1QruA==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41597733"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41597733"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:08:45 -0800
X-CSE-ConnectionGUID: G+7izrhoTWqohj+gPh5pdQ==
X-CSE-MsgGUID: QxhwJwMrSPi2kyCxy3tRJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118261493"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:08:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 06:08:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 06:08:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 06:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T1a0L3jWlguwUoUFzXUcyc6DqDAYmtSmtzczXVgP8eOA9EwGMwBzrJJZR8UdulPoXmFmWWggsufCci9Vz6BZomjJ8rIgwSlCwJJJ0qzHo9BBYe73m75R1Bs0HE5ywlJ88RyMswqO8mCPn+Rb6P8H5O/Xa922xnwu/Kl9NzpkcJFIlLKfpVni/09kX8qZCRJ9PLzInVRH5Xynjfc8oMW4sKkfSpPdUzRtwRq8EjcB3pzSv61WCfCN6iUfn6N24T926IpFFP2DNxJleBhasLfYued9yb6lXmQ09MmgfUKyBMSFPFPaB2ZIJkgGxTqqvccIWbEtv3cBsoOzvy0uj6otxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIf3ZRR4ML8QAvYd9HgLisbPJYelVIzKsd7QJKgI0OE=;
 b=Z/qGboMflKvIgYOaVs17rj8T/bYwbvqkst5++X1n57EmrVlsBxXo29IzDlv1eYE760JGUAQKvO546MyjYTOzHAVPhpeUTLB0f0FUEM5AAHxiG++8Efo5XTr+hNI45sArCEIdMatbbCua/a1lXAZw3yEATRkB1KRwRapCsrNvdQxVdmjxf0OtsIuoBwIWKa3Nvl6wzOjleNoXHttpD5d2gr1wrDs27k+T3GHZpx0ljZtjn1B7mwEJWjurz9qJwLQ5wE/I6cka/DpXNCYz6hgfwhVlqV8Ng76l0N086hHQK/c+j99GKzBStKCY3iBtXU64BIhunN3HgXKhFnPc8O0faA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.23; Fri, 28 Feb
 2025 14:08:40 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 14:08:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <174072753787.3104518.3215822928540884117@b555e5b46a47>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
 <174072753787.3104518.3215822928540884117@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/audio: Extend
 Wa_14020863754 to Xe3_LPD (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 28 Feb 2025 11:08:35 -0300
Message-ID: <174075171546.17587.10207720454598970256@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:303:8f::10) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 173ba0f0-0d73-4304-2a48-08dd58016740
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFB0cTg1bzlIWWJvQW5FRS9PN1ZsNk5uaTlyU09WRlBpSEU4dytVVzlOWUo3?=
 =?utf-8?B?TEoyMUhUREU3N3ZXRmFhNzF6UmYxZ0NaUDlNcTdiR1hqcTdVSnpZbTVNN2l4?=
 =?utf-8?B?aE9SeVIxMHVkZ3hwYURjc0tCL1VMNE43bHBoQW9IZEZWY21iMGc0dHhsVktY?=
 =?utf-8?B?eWxFYXM0bUFXUHpZS2JKa3pxeWtjMitXZnM1dU16QWRINjJoRjQySlRwRU9w?=
 =?utf-8?B?V0tzSXdLQTdoRTNtTTRvQ2FCd2xFRnJxZFdqMlBqZjlJalRGM3JZR2x1eXR1?=
 =?utf-8?B?eHgzcGltQzZiVmk2eTF3ajNXZzNkVnpwMVBSbDJKL1l1MGVVc2NGTmFuR2pS?=
 =?utf-8?B?WlRSdjRWR2xtVEh1RWloRm5aTjVNekFWb1J0SzBab3JZTU8rMnVFQ3hvaVBH?=
 =?utf-8?B?dmxoR0QrZ1lCUHZaY3NKVmthNUM0MU9pNUFQMWdteEZ0NUFwZWl3MDRnMGhU?=
 =?utf-8?B?K1lxUVg0Rk80SW1nWGFEWHJ3Z2t0K0RDNGwrMDNteTZzUTdtY0JGQi9IcGtN?=
 =?utf-8?B?Z2pQbXFBM2JteXBOemxkQ1lxVWpQZDI3ZFZMaWlVVmZuOXp1cFF0RFJzcXFL?=
 =?utf-8?B?TUI0UjhqWnpvbkxzODNiTTdrUGRrcVZTNldqNHU1ZW1RTHIwbWxtdi8yU01B?=
 =?utf-8?B?MlpiM294MVM5dlJidjBVS0VzUklzbGN2WU8zbFVGOFFCRXJxOE5ENEhyZVNr?=
 =?utf-8?B?eWFuTWUyMDRrRWRZM2pZTko4YW1TcnB5SDd1RXA2WnRzbTNDa29lOGtFVnR0?=
 =?utf-8?B?K1ZDZTI0ZGxvRTkvSE9teVVFb0VJUWg2QzBuS0ZucmJOQ1k3ODdad0ROMmtu?=
 =?utf-8?B?TDdZbzR3Vm1SbkZWR0ovaC9DMVAyd1FrQ01hWDViQXFNTjVYSlR3WFRRTjhB?=
 =?utf-8?B?bmZuMDZRZFFac29FdE9sYjFhL2xFM3ZVSzJkazFhcVZwTDlibXlWNC9lMzNq?=
 =?utf-8?B?b2xpc3RsdVk1RkVpVHZWQzk1a1JraU0xK2UyR0VVK05UQ3k0b3UwN0RLckJB?=
 =?utf-8?B?TVA2cS84VVpxOTBOellJb1NndituVUwvRzRZSTVWWXhrUUk3VG1hdXIrTlZ1?=
 =?utf-8?B?S2lwWFlPQ2ZBbXc3eCtSOTZxUWVORTdSVlJVek0wNVdRR0U3QjZwQmJPZmg4?=
 =?utf-8?B?c25NSVVoRGRwNk9uUGMxK0JjUVpiQ2huNFZZOTVHUHhHWnRqUWIxRno0ZHk0?=
 =?utf-8?B?NXo3Mi9Qc1ZZQ0xSNTdFVWJseElXUCtUOCtreXh3U3EwTVF5eEpxVFdJKzVn?=
 =?utf-8?B?ZUUzSkwzbDJjd1Q4WGI5RWtRRndNejgyN2hobGxCd1F2WDNPSFBsbmdhQm1m?=
 =?utf-8?B?TW9ETFpRcHZYSzlNNzBzQ1FFbWlCa2lTWkxmbHlLOHFoMGF1dWRoeVp5S2cx?=
 =?utf-8?B?OHI3VUtva3FsT250cFN1dktMdjlDRTJGQ2hWSkEvMEczWnBWMHkrc2pNV3p0?=
 =?utf-8?B?azNlZXc2cnpSZHY5enlRUHl2NGI4dVUxckNXVnhSVGRSTHFoelYxdldXakRE?=
 =?utf-8?B?WjEzQldsUHJxS2dMTEhXRld2N3M0Rmc1YzBmNE5mTE96cFZSeXZCekVmODJK?=
 =?utf-8?B?R2ltTE5wN3pqN0QzSnRhVFhNT1VFRUx3RGZ6VWtta3BnNjlQd1EvU05yTHR4?=
 =?utf-8?B?b2RDOGJkUGlkTEhYKzBIZWl2SXE5MDlscWtPbGI4aVZOYjVwYmkzd0tjOFdY?=
 =?utf-8?B?blVmV2M1a3liaVFxNGQzZjdtc25abzBacVNDbGVVQ1owN0YyMmZTaW1QNDcz?=
 =?utf-8?B?T1NnWGFpY0x1TERxYndUUUZSdTI0VlFmOXFyUzZDQjByaU9RYmtlZEpvZDhq?=
 =?utf-8?B?OFNNbWxsNWowRmtzemluZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3JFVFJWTTByVm1RaG1jeVR1Z3dObDZzYmtBdTliZys2Nk1HbUdRNEVWSHVq?=
 =?utf-8?B?TDJhbHhFU3hESm12bno4ZXp5eXFDTmJGVllMVVlRRmR3U2d0OHJnUFpSc1JV?=
 =?utf-8?B?RTg1UmlXdzlPRkkva1czSTAxd1hIcDFTVlJ4a0x5UEFRVWJPYno4VHJBLzM2?=
 =?utf-8?B?OWhtbFl6QmZGSVlkV0RPeVBYVGdGeEtMbzJBQ0FrVm5nSXJTOE1BTFpTOUNn?=
 =?utf-8?B?anNGYXFDOWwzNkVQUFlmZk5yNTBMZDQvK2dlVXhvdW82dDNMNE81SkpaeXFH?=
 =?utf-8?B?cDdmOVdQS0ltSjRKeTY4V3RoUDIvdVZmMUZCaER3QmRXNzlQR1R3L3hnMk9F?=
 =?utf-8?B?ZFZScDJGUHZsdUhRcGo3dmJLWVhNOW1jWFJiblNuYUgyNFArb0tjQ3pLRlRZ?=
 =?utf-8?B?RWtvbzVLWVBmUVh1N3I5cmtNUVBISUx5cHlaYjRIalNjZEZoQm9ZbW9yNkRR?=
 =?utf-8?B?ZWFBVFdyYjJYb3pWMEg3dy9wRjhXNXM3N3RYN20vbFY2MXRmUVRCZmc1bklK?=
 =?utf-8?B?RVNSWVdGeWtYOXhDVWtEQk14cEFIRGE2Y3JZcWRzUzlDVDU4SS9oZ0R6ai9s?=
 =?utf-8?B?ODdCVzRPTnViRGx2dEF3KzdseW5mK3ZVWGxUQlgwOGkwQXNSTW9ncTRTNDFR?=
 =?utf-8?B?MTNzMWdCY2kzbDArZlhjT3Fxa2JFSXVlZmpnNVNqYW81bERFY3ZuRVRkRzJT?=
 =?utf-8?B?eVlSOCtYVEFQZ1NEV3hEY2h6cmgwU3FzeXdaSEo5Wms0bGwyYmw1QVRtYXEr?=
 =?utf-8?B?cGdWd1VkNkEveFFwaG5LR3BGamVRZ0NrRmdBcGN2WngrVVBLNDd6d1g3REhq?=
 =?utf-8?B?ci9EYnI3ZXVkbDJqbTlYdk55M0JNbVBMRjlOdmdJOEw2b2d0S2x4TnFOaGI4?=
 =?utf-8?B?MG95Um84b3h4dFRBM3dTR3ZIdG1GdkFndzhacEY4bnhNUG80UWtQZWo3Sk4v?=
 =?utf-8?B?d2xYMWlHcE9lY3h4Ly9UZTZUNkdFd0l5WTdOV2MvdE0zcGZQZUUwUmh5WVFY?=
 =?utf-8?B?QkN2RGw1OUo1U1ZzWmwyRDhETjN4L2RLUFRSVWR4cm4yc1ArMmdzYjhDMHJs?=
 =?utf-8?B?KzFQQWpuT3BYZFZtYXZ3UkxzSWZnZk9wYXhOT0k0YjRLY3NFY1RXeVhKRnMz?=
 =?utf-8?B?eG5SVlBxc1hHSXVzM1owQzQ4aEpjdXVJcVhZNCttVFNDaFBJSFpNaEdlbEtk?=
 =?utf-8?B?dlY2Sk5SY1d6cXcwc3FCQkgzQzZwZEZqanFIdmk2YjJtcVhQcHU1aTJVMlJx?=
 =?utf-8?B?N3ZkakxXWHBmQTJEQ0hUMmVFaytneTRHSHVidm5UQXBoRk5TMVN4M3dSOVlD?=
 =?utf-8?B?L2h3NGZGYm51c1RteVpCV0JUOVhrV25tTGNXMUpwMTJabXNTUGFGL0lxZ1Av?=
 =?utf-8?B?V0NRcnNnNkVwY0pGS3VvdWUvaE5YUTdHWmsvbm80L2tybVBlelhYSzBrSEp5?=
 =?utf-8?B?UEQvbFhINEJlNXRnSVhhM3RPZzRZd1pKQUpwdUgxU0VuUHloSEdqazJvUm41?=
 =?utf-8?B?MnFZMmZxSGd3ZHlLdG92TWd4N083dm1WRXhKSmxSNHgzVmFSR0JQckxFakhN?=
 =?utf-8?B?WlBwN21lZVRVVm1lYjJxcG8zYS8wRTJaeVBYR1B6MFg1RXZxZVB5TDNobHNQ?=
 =?utf-8?B?M29DdDA3QmlwbGRQSUFFRG1PWjlkUmlsL0Q0NDAxR00wUERFWjFqRWZFZFg1?=
 =?utf-8?B?UXZZUnFOUTR0elREU0FxRW1GQ0Y2MGRvdVNqWUJMYVA5VEFjYXdLRThUWVNY?=
 =?utf-8?B?NGZ1SFJIS1ZLUGxRWXg1RWI4cXQ4dTd0WWlUZitKSXV3R3F0cjhIeWY2YWlU?=
 =?utf-8?B?dDltcmZ0QVVUeld2WXFLNlBKUXVHT0lwUEVheUtjL0k5VEVWSU5CNDlsb04x?=
 =?utf-8?B?M090ZldRQnY5LytNNnFRbnZXRjZGWVk1d3l5dkVxRGJ5eGJiNlVqREk4c1pD?=
 =?utf-8?B?dDM0bXllSzJleStESUsyOEpkUlpyUEpxVWZEL1dyZ0s4aVhXY2hPQUx5eWcw?=
 =?utf-8?B?MVF1ekdJcGljM0J2d1RWZytmeGcwb05FNTFhdkswTFdDNmNvZlNBYVZVUE83?=
 =?utf-8?B?QVZlY0pjNUltWmpHekVDVFZjRi9Sdk5abThDVU96b2VkQms2S0hrL2Rab1g1?=
 =?utf-8?B?SkFuaUp4bURsM1d2eGNpT1ZHWVNNQUZ5RFp2UlpmNGlmZ1p4b2tyNDNodk1P?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 173ba0f0-0d73-4304-2a48-08dd58016740
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 14:08:40.8191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRf0UDTeu7xSkMj72Fz+pL/i4tJEV+PmTlS6U4sVuTLDbuvm6AbggZNYRcLuhcVaFs37LaZtuzAUxwiFDiAnnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

Quoting Patchwork (2025-02-28 04:25:37-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD (rev2)
>URL   : https://patchwork.freedesktop.org/series/145492/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16198_full -> Patchwork_145492v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_145492v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_145492v2_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (10 -> 10)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
145492v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_suspend@basic-s4-devices:
>    - shard-glk:          NOTRUN -> [ABORT][1] +1 other test abort
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145492v2/shard-=
glk9/igt@gem_exec_suspend@basic-s4-devices.html
>
>  * igt@kms_flip@wf_vblank-ts-check@b-vga1:
>    - shard-snb:          [PASS][2] -> [FAIL][3]
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16198/shard-snb1/i=
gt@kms_flip@wf_vblank-ts-check@b-vga1.html
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145492v2/shard-=
snb6/igt@kms_flip@wf_vblank-ts-check@b-vga1.html

None of those are related to this series. The effective functional
change is the addition of the workaround for Xe3_LPD, which is not
present in any of the platforms above.

--
Gustavo Sousa
