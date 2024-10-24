Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAF09AE430
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 13:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B7310E905;
	Thu, 24 Oct 2024 11:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EhSN5BR/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3702810E116;
 Thu, 24 Oct 2024 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729770729; x=1761306729;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SG6ZQnuNV58zcjaex7PtJzpLJjDBu5BFv6EfnxKPI7M=;
 b=EhSN5BR/hP5Ltd8NYHlL/6Ck1frPwIFaqkTWwt7isMWH4xkyMaahxC9e
 vdIYWUL7Wm7td5prkZeaSRr57+N2/9szjVxpzDGdS04AT3oHstHX0k7kE
 tGroH7QiZ8nnAMN81fNNIvvpj714N1Lopg0rUplRGv8d2edxQONwpOo/T
 60r913d9GDNFOesNuYDlGSJeWwVhkQ2Ele2opmCllHSG/bCDn6leh1nPA
 hSUeyCXrKWRmgmE6lcHHTHXEW2SHjhKe8zAgCZXIIyaswLcvA8XEPvzFK
 KvQOsTTConp3X2pnciQs8wXcRGrTuKixI1M9jXoHLAIXlS9NxaRoXm4on A==;
X-CSE-ConnectionGUID: 7RFg5GS4QR2E3yWHecaDvA==
X-CSE-MsgGUID: cIBbSeYWSiWa4exF/U8c5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29518983"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29518983"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:52:08 -0700
X-CSE-ConnectionGUID: JfpcYHyrQ9eTMUolMpWEAA==
X-CSE-MsgGUID: zd3EBoIXSqiQhDen1qW4ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80554489"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 04:52:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 04:52:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 04:52:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 04:52:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N3v4i3kG17rpk2nm6HRMTf5hA3WWnmiQvj3AtIbXxoBulu8ylTyVY45V8lf3HlqrPl76xTcppEJRjDb/KzcHfctuxlbjh80xhGylbVam8yIFrylf0tcXjY31aS/oJrEJo+kv4pv4dAwgIA9zMfxOHjDY8k0mRP2LB2iOcO+L2IZvSlYsERIqCpChlQmYlVUpGRM6tPuVy8qw0IkEaNC91S8pXsqc2Ysf8yIpZvbDH931Kj5RnEC06RRwVjOwitwa3PFMsb5YxnqG5KTnYhCm2U+BYLxOYMHW/A97abWu6s9XJ02sRkYbCo/ZkOeTnpIN7GnopJByohXglTie3l5u2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHiPSEC+Es6C5ZZ700yndupY5YFfCb1vKTpyL0XeWYs=;
 b=ROSSlghups2IadpIRlXK/vMb4VdiO/XyyAgilUELafeBlaI1YnwucWnBCbZCRC7IVWRQkJE3kpsrq+1ZcwonOcP/83SJ3BOtFiQwhWXS0AO4sfnd+ocH8EThOQbKsBYk4F8uZ7aUoUYsAtPl1dY3DZyWeG55wfn4Mjfn75FJQ0HYUSWL23PtbkbUDSwWWyMIs7E8sH9JQnRbcsWAOJb65qvmSPNPclQW6HRtDuw9+r1st9V96238vbWInH07Pn1J8eb+AG78cGnL2/yCNInIHKoHcsks+i5OGF6QHpZrcqpsz2KWbFjRVFr2xm1dSs+t8WzzyX15tfedpGd3/nTFlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8679.namprd11.prod.outlook.com (2603:10b6:408:1f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Thu, 24 Oct
 2024 11:52:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 11:52:03 +0000
Message-ID: <8542be0e-2079-4a20-8b1f-2e7ce6ba7602@intel.com>
Date: Thu, 24 Oct 2024 17:21:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i914/xe3lpd: Increase bigjoiner limitations
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241024035552.94363-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8679:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d6a9de4-f616-4b4f-a088-08dcf42246d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N08weCt4MS80MEJjL2RXOG5XRktOb1ArYlNObG5BY3IrSkFqUm9uYVNWWkFp?=
 =?utf-8?B?RStseVBkRjljSXFweWxQVTljVFZ5eTd3RjN1TTRwTGJxTGN6K0tNNVVWVnU5?=
 =?utf-8?B?S3dYMnZWZmdXSXNTYkMwdlVCYUg4YVEyTHpBRU1hWEVwK2xtSXVIWE9HRSs0?=
 =?utf-8?B?cjUxY0xPZ3VZZmszMXoweG12WnVrTlhzQmJNQ2hpaVc5dlQ5R2pCdEpQeERC?=
 =?utf-8?B?TTdxY0YybTFNd2RxWXR0dDBQVDQ4VVoraXNlNW1kZkF4blRCSUF5TW1IMElH?=
 =?utf-8?B?L1Qxc05BV3orWmpSaE40OCtqZUVSLzNPYkZ3YUpmY0gvLzRaTUJkYWhuZWEz?=
 =?utf-8?B?ZGdaMjFWaGw1eXdGMWJvT3FHeU9NOGtaNDg0aC9aN2RUd0V1cnFodk1Fd1Rn?=
 =?utf-8?B?Rklmc21uN0hIZk0wc3dnaGlHaVhoSVF5QkFISWgrTDM0MWhQU1lhc3UyMGU2?=
 =?utf-8?B?K3JESjVCNEpKMmNqWU0rTlhXeTZyN0p3REtWQnpPbDdxcEN6R0k1S0pOVE1W?=
 =?utf-8?B?V3c4ejNlU2d6eVZYMmJjMXM2bTlwekpidk5VT0p2ZElxNFd1TTBFNmdsVm5R?=
 =?utf-8?B?UUZoUmNBTkRyS3Z0QWZqditPRXU4eGRTRmlYWHprdkcxU3BQWWZrMlZ2U3Z0?=
 =?utf-8?B?bThMSVFnRFhDbGc5bGNOWHprWU4wZGxWQUZWeWs0QmFPTW1pTkxYMnhCUTI2?=
 =?utf-8?B?MVh5dTBBdzhwTzY2akcyRWlYSnJLUjlRQzFWSUEwaFdjMGZvY2VnczM3aW9G?=
 =?utf-8?B?bmVTcmtOci9KNHM4M1Jwa1Z6SGlxSDhLQ1EyQ2hMbHRwT2RTZzU5T3VWbVdh?=
 =?utf-8?B?T01qS1FmcVJiSzQ4VkZ3dzc0T1lmaWhWektWLzl0SDhVOXpSaTZOdlF5a0lN?=
 =?utf-8?B?Tmcya1dDczhneXQ2ckhZd1AzK3dRcjRJZklUbit5UCswVzJqQVdITTUvTE5w?=
 =?utf-8?B?NnRhRW9vN3llUzdEUXhiN1FRQ2Y3b2dqbGZxcWoxdFIxdXkxZEcrbGFkZTRW?=
 =?utf-8?B?MklEd1dhK3E1dDFVeTRnUE9MOXZGeGNEaVovQVBqaldVNW04RHZDOHp3alBy?=
 =?utf-8?B?N3RsMC8vdXhUU1ErT0V5UWprd1hLNzQ2UHJYZUR4dW83akNiVXhza3lNSW9n?=
 =?utf-8?B?QTA0ODg2SUFadGdLZkhZRTJEcXN0K2RyK0s1Q1VwanZESnpzakk5TWFXVWl0?=
 =?utf-8?B?Sy9pbDZkOG5jNWIzK0tkM2Z3SEREUzFwU2JnaFV1L3ZxeHU5Z3FBNHdNaTZU?=
 =?utf-8?B?THVVUkg0bjJKNGw2Vm0xYUNRU2F0K1FYbDlWUjJpeDdYSkhreE84M293N1pK?=
 =?utf-8?B?T0E2a3lBbjhPOUVwN0VIWm9Wa09vODNpVFlsOUxnWFR6a2tZQ0NwMUN2dTl3?=
 =?utf-8?B?NERRTUR0RUx6ZHBUNXMxLzhycmlXQzhCb0dZOThaalliQTh5QTdyKytxb3BQ?=
 =?utf-8?B?NXhQaVdKOWdGK1pkV1Z0am43UjNYT3BMYkxHL2g0bC9ZcTNYbHptSzJCM2Iv?=
 =?utf-8?B?M0NqVTAwRTFTa0NGY0h4dHRpYWVPZHhjZFNtUnpaay8ydkQwUUxsaCtyd3oy?=
 =?utf-8?B?QmtrSkNhditONGc5TEZPcE9WWDhSS1oxTGJ6bUErVGN2cEk4NVBsSVpoMzhZ?=
 =?utf-8?B?NnpjMGxDRHlDcTgrQm5CbHFUSFRLY29qWGIvbzNXdmpYWEpxcWhXWHlhbEtR?=
 =?utf-8?B?L0sxeWpLRHJVYk5SVlNLeHBWWEJLZW9SS21ZL1dPWlJHKzMvNk0wS3U0Ny8w?=
 =?utf-8?Q?J7fqtSGHogwaT37Vds=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clJmNGtMR3BpTUlCWm9KSW84ZnRJODEzNnE3MGN5Nm1ubmNIb3RmeE85Kzl4?=
 =?utf-8?B?ZmpoOHN5MTNGTGhsWlNjakthZHdiL3kyZWhkb0dER1hJd1g0RFBIYzJzOXdz?=
 =?utf-8?B?TjZoOWpmYTFQcE1YS0pYZk1jNWIvbnlYNHhVZDhDT1ZBRmpWaDFHcmFTNDMz?=
 =?utf-8?B?Zk1qYk5HU2ZQR0gxQkJQZ3VxWTNCMFg5bGI2ckE2UXRKTXVuVzZkWTRxKzMv?=
 =?utf-8?B?dkxPVFZUTFhubnJCb3VndVZ2QmZ4cWtoRElBL3JhWklTOWpkZEtlSGlodnpJ?=
 =?utf-8?B?dFA4ays2YjU4b2xudWpMdXhwQ0JDMlRxbkJSYkxkYjNMVjRaZjcwMDNHNUFv?=
 =?utf-8?B?cUUveU54NXQxcmlRbmhNL3BxSGRmbkI2UmxMZVEyb3g4NGJsREtFbDlRcFhU?=
 =?utf-8?B?eGFoT3pXaU9pUUVxYU9NSzl0YnJkdlh1bkVJdFlyOWdXNHF0cG95MEJKYTBw?=
 =?utf-8?B?REYvN1lYeWgxMVF2aVF1NFpiZVpDdDdzZ1gxdlZLN3ZqbjlGTnBwclpnMFdS?=
 =?utf-8?B?K3JQVm9zbzZoT2piVkhzZmhIcC9PSjNPbmFpSktMeEo0bDNEVUN2ZzZ0M2J1?=
 =?utf-8?B?RGtXWWlTcVVLUWJrbWZNVXA1Q3ZZNkpXYUI1cStrclZGQjNZS0k0Smhhck1B?=
 =?utf-8?B?anZ2Rm5NK2hUZitGblpteDBtMzZocHdseFZ0TmsvWUljYnJNYmRMTnlubGJt?=
 =?utf-8?B?dlpqbUs0S1ZVNFZrd1VXR0NvdzY1RTdpcUMzV1pWbzRuek10bHBsZzE1RldX?=
 =?utf-8?B?ZWFCVjVTemxnMkcweEhRQUhJbnQxYXBWSmZGdnlTM1dtWTVrMWVaOFVLQnVW?=
 =?utf-8?B?RFdJNEJnSlZSdWtua0FOQzA0RHhiYVJyL2RHQWlqSHJrcE1sbjl3QWovc3lB?=
 =?utf-8?B?U1JGOGtucTJqWXlqL3VnT2JJR1REeDZaVlVreFMwVVBYMlRFM2p3OEZyY290?=
 =?utf-8?B?MTR3RUZmTFU0RVlMa1k1clpETUVFQ3ltekJLYldmR2M2YnlNT25kU2EvWWRJ?=
 =?utf-8?B?T3lINGc3OCtpVzNrVCsvN3dWUkI0c2xxajY0QTQyQU12Q3FYdTlEVThPK05X?=
 =?utf-8?B?cWRjU3c5Q3hJYXR2WDdkZzZMUm9CWFpHRVI3VnJtSXJYTy9ETnhLS2E3Sm5a?=
 =?utf-8?B?c0VGd0djT2NCT3lJUER3ejZlUVUyYU9sYVRjVmR4bm1qRzJkZW5JTHdjWlhJ?=
 =?utf-8?B?UHNqb2p0cGNWc1VlRjlKeXhLeFg3eWRMMVN3UDFZY1NheEpra2E0Q2tHZHh6?=
 =?utf-8?B?dVBwbXVNeFZwWXdJRkdtYVhXdVUzWmRXdE16UnFRejFNaUU0SlF0RjVSR1JX?=
 =?utf-8?B?Y2srWVlYN1ltcjJXMFRIT29oemJkajlPeVkzaTVlRjFrWnlhLzc5MVRMWnZY?=
 =?utf-8?B?UWFZVEFHRXhWS2tYcTNhQWdyN1NPWVF2b21XRW1sV3ZjRWVnRnZJa3lsQjlT?=
 =?utf-8?B?V2FMd0RSaXVQamJRaTJTdUFnUSswT0dqS1VoTXRtMjlKaFNMc0h5dXY1WXhy?=
 =?utf-8?B?WlpsSDJtVmxQNmxuZ21YaVNHQnpMZ2poRkVMdnpqdXlvL3A2czVLRzRFUjhx?=
 =?utf-8?B?VFpTT2dzVkRvS1Bhc2ZrRytlVUZNRUZ4RDhoYVRIaWNnL2I1cStkQjIyakpV?=
 =?utf-8?B?OG9wMDBScVROOTZuSjZoeTNSeklINmQvbFlYaStOWGFCQTF5WHpWZ2xid1Fm?=
 =?utf-8?B?ZTIwVWd6a3dRZmlHR2ZPR0NER2Q5cFdiUXRzUG9DVUloczBzVkp1L3FsODVQ?=
 =?utf-8?B?UTh1MjdUakR3dEVZMWNjdWpGaWFXN1dJT2xCTnpRM1Z5RUZhWWR2MGd6aUN0?=
 =?utf-8?B?eUp1M1Q1RklRZ3oya0RLNVNWNXZZZEszTkIxOTdNSy9KaGpzN2Jnc1MxZExr?=
 =?utf-8?B?Y3ZBQVhvQ1hEYzNyM1pNK0RJOUpXZ3VzUGhTUTNiR24rQ0ZhbWQxYXNhMUN0?=
 =?utf-8?B?Q1pUVkV3L0VwdGVyVTFTTFp6Ym9iN05DUjkzK2tWYzBsQ2pMVGdFTHdGaDUz?=
 =?utf-8?B?MGpERUNYR1BNaHZmZVNwZGtrUU1kaEtUSC9kWWlvaUlxR3JVR1E3eVkwc1V3?=
 =?utf-8?B?QlZMYzE4amU1SGtIZDhxL3BtdjcwQU1wOFZDdTBzR2VYekJGaGJkMFVNQUV3?=
 =?utf-8?B?U0pReVRYUERwZ1IweU9scjA4dUNwSWI0VFEyL2pFZDBoTnJMcnN0dTl4UUIy?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d6a9de4-f616-4b4f-a088-08dcf42246d7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 11:52:03.7881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w8JLQ6mQZ9dspA79Sse/DQPkJWWb4vec3gLbYAafAOSZt0r6pa05/EMYaYqlOIQdkKfZts6cA5nkT8njzsr6hhmF5uPGmgO+TddcVFCYc1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8679
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


On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> With 6k resolution support for a single crtc being added
> bigjoiner will only come into picture when hdisplay > 6144
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb096be02ad..e0baad468d76 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1313,14 +1313,17 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
>   			   int num_joined_pipes)
>   {
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	int hdisplay_limit;
>   
>   	if (!intel_dp_has_joiner(intel_dp))
>   		return false;
>   
>   	num_joined_pipes /= 2;
>   
> +	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
> +
>   	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
> -	       hdisplay > num_joined_pipes * 5120;
> +	       hdisplay > num_joined_pipes * hdisplay_limit;
>   }
>   
>   int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
