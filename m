Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF112D202EB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470DD10E628;
	Wed, 14 Jan 2026 16:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hpMdgP28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38AEE10E625;
 Wed, 14 Jan 2026 16:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407789; x=1799943789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tcf7aGQKYnDf+iUYzm15ncCGO/yRJ7U0Tfv/BNM8ToQ=;
 b=hpMdgP28vB1xEi55Lwed3Xo14DQzhizSvcnKuWF4u2FXn0QRMdjdKiMp
 w4CkQGJWJ+UXaikSrzYngaz/IvWJql0ehGYnB30fn+Ag3AU9mMlPnm5fG
 uxVkvP7hrDPgRwYMFfe6Ctu8Js3L9qI64CiXj3V5wRHOgVAKgao1ekHeF
 t03vwknCeEcCZn2rwLUB6Bmibl9Lz5ktRY9SOihfSYELG1xFZpmvH+Ma8
 kvVd/iyzHAPM1cDPmL9YqBsLS9Sw6qbd7lTBT5qUqBlRLfcxJZyHv5Jaw
 +DlL4KQ8KZzPtX3D80r53Ysna4Jd/BMtbYG3cA+AAyxXWa/bnbi26pWIt w==;
X-CSE-ConnectionGUID: SOudJ65qSwy7LeGsi8MHNg==
X-CSE-MsgGUID: G2eDQIekTw6UUFZ37/JSZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551566"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551566"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:09 -0800
X-CSE-ConnectionGUID: Y/x9IlMwTE6UsrZf1gZq0Q==
X-CSE-MsgGUID: BX89Y0huS0auEnqCAzHupQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611138"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:08 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:08 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iFjIkbSTk5AfcQ8vJWB4+DbF5Am7gh77B13eolFaVVPWhyZmmQsarjBa7MSw0hJuvbg98tCSwS25WXXMvUyn8BG47BLhJg/muQNpZYmUXjco4RkHXyNAj0AyRnxLvKIfFL0FUCirMrMup4qyG7ctCFjTR8UTkpaBIhWd9ZFtUBTGi2SRKsoEiEM3bzo6uaw3loJ1tdircmxMnqhQ8pT5EFfO+LiWN8g6QMY+IUS/hdpBpAKXyV0HE00UPgCU5cLLrMROhDm6fLgz3O1XXy1sL8l7rQwo76HF7DP+XgtFu/pCnk3TDYlXrMHgnOZn7ExzPzoB0sKQxDkBsLAYynICDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HxptaW9jfNN/5SQWE+rg8NXViNVckeJCBBVaiGBNCSc=;
 b=LPPfsHKQXy9SsjqKo7HSXKk++HAvCHYpTljAPnHfKQDPAVbeibdvpLXOu9yzlXIzQtiex585HPELFKT6d79fGHUWw023EgedLM+rAnTsh2jeMR11eIjdV3d3qF+VeX9xMRLKD85iBb2KBX93Z9nLn3zh9+IDMDqM4J0cUTfslzX+t6DGL8HUgTT5Hy33BKaEIRGphxsfWgSrIzwnSjTS/gRfJEBaBEkG0zz+j1nmbIXkb0TUSDNA0/iqw5DXE2meaxFDHKjZDcV9S7GiDgqRXIAInLlFT9sp3C0hYvYKI1kHclIZl/WeNn/iHd0WGRt5ibkrS5LP3pmUsdyK1N//Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 07/15] drm/i915/dp: Factor out intel_dp_dsc_min_slice_count()
Date: Wed, 14 Jan 2026 18:22:24 +0200
Message-ID: <20260114162232.92731-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: dcda20d9-279c-4419-5acb-08de5389307e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjZnSGxOa0JRV3VOdEwxUjRQUjNSMTJWWVkwTUJFaDV1QWFzZ09hb1RMMFc4?=
 =?utf-8?B?V1dUVisrQUpCc2kvRVg5Y2tCeGJiYjhnU1FIK0g3VWtZMzhLakFscjVBQ255?=
 =?utf-8?B?a3lLbjhEMmNFNVNyWkgxcFNDcDhUKzl3dHFLZGttMlFMUG4wRFg0b29yNjI0?=
 =?utf-8?B?bjhrdzJoZHJOMDIyU1NzMld6TTFjTWpEZWNSWUczTnZEUFBIK3A0aElZRHlI?=
 =?utf-8?B?NGZMZVp4L0hVZGNCMjFjdm5TQ004NG5hZVUvSDhRWCtMOHFoK3JUSFJkcFVR?=
 =?utf-8?B?Y3paRGJ5cnkzQjI4STVXOU1QakRRWjJZWWRtVWVISUZiVnU5eGRYcmhoWGFq?=
 =?utf-8?B?L1BYU1NITVA1Rnpxalo5MmlPOFRqSXlYSFlzaGxjeCtoUU1iQ2d6eTVqWXVs?=
 =?utf-8?B?SXNSK1dkcDd5V0NEcDJEM0Vtckt6UnBJYTRva3o2TGdUWW0wRVg0bnpZOXZ2?=
 =?utf-8?B?V1ZiTkRacnFoL2ZUbEttRlBJYUVCSFZKaWJWdy9DVWxwcHBmRGVIbnFubVRL?=
 =?utf-8?B?WjZDYUVpMUN3T2IvRnpaQSs4S1lOU0txUW51MmFyZVRmZElFa2s3dFg1cFhq?=
 =?utf-8?B?K2p6LzNGMjJoVTJjWkFUb1dSWktlNmVzZnJMeXN0NWdkQWlublZUMC94RC9t?=
 =?utf-8?B?anRlQ2xGVDBDSXIwa3JUY3IxNmx4L2trd2tmcDdFU2h6RjRZV2p3U2RlS3NC?=
 =?utf-8?B?bDNtVFN1NCtWMGx2MHVFeGNWNXJvdkFMY3JMNHo3K0xRRzY5blZSZWNHUVFZ?=
 =?utf-8?B?ck5WNGNwZCtINUxTN0Y4SC94U2d1ZjU5UWtlVG1xSm5nMWFoaEZ2VmRSdGJj?=
 =?utf-8?B?QWVNbzQ5a1ByMHVSam1URW1LOXhqNzBOcmlxT1hIY2MzeWxqTUJxQ2hDVlYv?=
 =?utf-8?B?cmJSNnNUVFZYVWhMRVZQTmZpOTlibmxLdEkxc0JUY2Q1RXNHeUNhbFJrWnNM?=
 =?utf-8?B?NW9kRmdOYXlpUXp6aVo5K2lkOUlXNk9RUCtGZWN3UFJtNmZQallWVCsvYUVF?=
 =?utf-8?B?aUZkbEJnYWNkU0FMWVMvUGUza2E0Y2pjMm1uaURaTklwM0pVeDgvT3hTZXMv?=
 =?utf-8?B?dFdiYkg0Uk41akt0TnJhVjI0UEJVL3FxNlNaWXhNQ1pGa0pIMzllV0VudEV0?=
 =?utf-8?B?RVh6ZVR3MDFwb3NnQmNqZG5ZY0xtY2hZaWZyMFgxMDJwTDVxd0d1Zzc3NDFW?=
 =?utf-8?B?b1N5bU83WE5BQ0UyNkNlTmNpWUxZVVNhUmdTMnNORklZMDhzcXgxMzFwWitx?=
 =?utf-8?B?cFdOOVpKMmo0aXRkNFZpdnNXVENzMjBoNit4OVVwSjVqU2ZMdGxSQXFkT2Ra?=
 =?utf-8?B?QWdNcy9VcFlxS0FoeUpkU2JzdlJaMnVReWMyLzBGbWxvMm1abGhycmgyaExz?=
 =?utf-8?B?SVFDVnVLN1Z6Y1h2RXA4YkFZbUhCSUo5TEllRzNwRmtGaVUrL0RudlZBamRr?=
 =?utf-8?B?SERHV1dWaUpUcnRoK0EvTjVMK2dpUE84SjNSanUvdEd4ckExcWppVS91TkZn?=
 =?utf-8?B?QU5BcGNxZndXVHUwQlE2aEhOZElVNEQ5amVCdlUxa0lKb0RIS2pWN0tNSHNv?=
 =?utf-8?B?S21VQVdZbjY5UVNYTm1tNys2N29mZXB4WVR1NndCYThMRkNTK1ZRSk1LRFZN?=
 =?utf-8?B?OWc4c29NeS9KZWkyN04zdFZTc2E2UjZTSEMwbGdlNzhpYmVDOGJBcWFuNFFn?=
 =?utf-8?B?YnRPa3JlbUVKMnRkaGtnVTljTi9CL1RMQkx4bGk5b0NZOU4ramZZeVl3YXFh?=
 =?utf-8?B?aXBVVjNpU01HTkpmdnB4bXgwSTBrS05UdzVCUVdNY2JEd0VtYlVnUnkzVzRo?=
 =?utf-8?B?Wi9MazhNb1VuVmxoK0sreXA5eFFYVWFpVGFkMEpBUDJjd0JxNHU3ZGszWCtN?=
 =?utf-8?B?OE1meFV5cDdhZTdFUmdVaTJQc2NOcDhGNUFHYmVnTHNFdjk1NExiWW1GSDVW?=
 =?utf-8?B?QngyRWhZTG00YmZQaEVLZFpydjB3by9ndkdhOVlCb2VBbGROM2ttVENxYUs0?=
 =?utf-8?B?TCtxTFZLeUJyWFUvTytaR0Q1NWlaellJY0w0QUtFN3Z1TWtIVmoxcUYxVW1j?=
 =?utf-8?B?aGlCakkyWUVwNXRSSnJTVWQ3R2RXaWx1ZmMrUzdDNzJQOHlzZ0djYWtZRW5G?=
 =?utf-8?Q?FJmY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk54NldIOUlkQkF1QU53V1RYcXRRWWZHTEkra1hkajhHT0pXSm5aVUdKMkJv?=
 =?utf-8?B?Y0x1SjloUUJ0SEtJSlVQdE8xWUhuZTFieTk4d0RhWXV4RTJxK1hxMHpCU09N?=
 =?utf-8?B?ZGFCWGVPb0NjRS84UW9QU0djZzlMVVdmUXRTYlY1NmJuVkpxUVdNRkZaK0l0?=
 =?utf-8?B?eWVmZXlaWUpBUUVnTndkcjZIUXMxUmlzTEdQMjJVaGhJVy9neEJQbUpjZURH?=
 =?utf-8?B?Y0hadzlUVGhLRlpid2JVNTVVT09vTHZmOEVwTUNvbVVkbFQ5VXhnbGZoUVI3?=
 =?utf-8?B?dlBJdEVFTkRMSGJVUzhEa2FRaFhON1RFTHlxSHJDN2EydnZBZUMxNXdFVTZU?=
 =?utf-8?B?R0xqQW9rajBseW9hV0xCNEZaOFdYbERXVm9aaTgvUEVlTGtPcGVNQ2xBT1l1?=
 =?utf-8?B?NDhjUVp3TWNUdFh0bUJhdTJQN1VWQjdESzNEZDRQaFg0dDNka1lIYWhBK0pS?=
 =?utf-8?B?ZjRQMzVoc1k3OHE4Z0NZSnRzVTkwaHh3T3R5VytIOFhtK2VIU0RtZTk1ck9I?=
 =?utf-8?B?UEtVY2ZQaExoS0ZOL3RqOUpiZUVjazhIM1dIYUoyTGRlR2RDWkxKb2UzUlIy?=
 =?utf-8?B?OW01aDNTQmNaUW5Wb05RODVQTlZlV0t5ZHV2Q1NKRUdIbmkrWkk4Vk9WUDhz?=
 =?utf-8?B?UnBDN2FTUUU3U1dSSk9QNHNIN1BaS3d6S1ZCVzNWZEw2bjlWbk42TWVaTlJl?=
 =?utf-8?B?alpCbThvNXdCS3FMazYzUS94aVI3dWozYkFsbkJDdkJ3Zzh0Nm9sRm1wV2NW?=
 =?utf-8?B?azFHQUhZRys2MHorclU0ZUVLT3UxUnozUUNveDYvN1F3M2w3ektXeWdhdWUv?=
 =?utf-8?B?MG5JSWdqTUpZVFNOckZmWXluQUpOTDlndnYyODQxbWRvSDlGaVRJLytHNDhJ?=
 =?utf-8?B?SFlnVmhsUThLZHNZaHRuak5VYnJNZjJ2bVprcHRSSlo1Q2lIbmZJSGk5dnBH?=
 =?utf-8?B?NWgwd0FTVmdvNnhTRmMwd2tRcUxlRTNiZFE2REdQb3FWQ091LzRPeHd1T0Ew?=
 =?utf-8?B?K0JaY1VUNklTMEdXNndHOC9yS1ZyODZkUWJFcXpZbi9ZRjBGUTJKbWlVcTEr?=
 =?utf-8?B?OHB6T2d1VkJ1eVEwcU9KZVJ2RHh4TC9QMkEvemVJRWRiTVVEQXd0OUd6NnBq?=
 =?utf-8?B?aFUzM0k4Y2ZoVUJxdWNGcG44ZFBLa3N5a21Fa1FtYjQ5K0pIbFZzYVdvQlNT?=
 =?utf-8?B?V0M2K0dvNDZ2b21wdlBxU2RzVHhJWVQrVzYyRHJjdVhqd3lqQWhWTFZXV1NM?=
 =?utf-8?B?NUFmQm80VFVZSGp0VUhWM2FQSUhiWE9vb293TWExWXJYZEQ0Y2RoV3ZwRS96?=
 =?utf-8?B?LzdqN1liNDh1Rm04RjBVV2dTU01sTnQydmlGUUpBczBKVkQ5SW9pOHowRGwr?=
 =?utf-8?B?dEZDY2szVEZwcERVM0FVR1BkeVZhTXcwelh0dS90SHhPUHQ0dDVzbHI3M1ZE?=
 =?utf-8?B?Q1A5dEwyWjdyYnJSSW5nL1o3ZkI5b29VQld3VlhzSG95OG82cUNlbkxGS2VF?=
 =?utf-8?B?TERKd2NrLy9VazVWeEZBaFhOQjBUMEo1bEJ6NDZ5Ti85UHRETnQ4TEczclg3?=
 =?utf-8?B?TVZDTWdJN0pUbzBCMVhBc1FJdHJrVlIrUjVNVDZRdHVKMmtqWHlsVmNjN1VF?=
 =?utf-8?B?RXhha2k0MkhUSXE3aXBCN2hEanBRSmtHWkV5VC9qRlBOS0ZCL04xRTZBTXdv?=
 =?utf-8?B?RVUzQmx3QzFoc25uSnhCZTY5QTRoazlhc09VS2IxT1U3RGs0V1EzL1B1YU15?=
 =?utf-8?B?M08reVkyZkc4QStoQXp3QUgwQUZXUnVoYXU5LytoOWthMi84TjMxUFJ1Wmtw?=
 =?utf-8?B?dklLQnlROGFFUGpYamJsR1FWdDFpaFpXL3ZKRGpkSVBFZ0RRNkVuUlJLODlM?=
 =?utf-8?B?MFZtdlNIbm9ualZkcEVqcy9ZRWVObkdqSXpPRHZGLzJ0aXNPa0hyOEF3SG9K?=
 =?utf-8?B?cDZHbHdiTitnN1RlVlB3N014QUVJTkhwdVJUazJPdHlYZVhQSHhvWWFmdFY5?=
 =?utf-8?B?ckRFNTRrUnZPNVVERGtiVnBRT0hsSTlTeUJ2dTNBU3RJcnFZMUFjdnRxMlU0?=
 =?utf-8?B?NmNhdEdHZWNORTRXckIrcEh0aGVlbnE4cnVyaWZXWHJnSG5vU0xlZGJ6ekhV?=
 =?utf-8?B?VkVmWHM5MjBCbUZPdTVORUMramZUd2VLc3NYRVNSSkxOdjlPQVg1d3RhL3Y4?=
 =?utf-8?B?dG1WcUpza0owUGVGdmpNMjNOamd5Tkd5a2JDcS9yMmlMbmZadElQc2dxY0lH?=
 =?utf-8?B?bFdBSHdVWHhpQnQ3TTNJWjJBTm9TY3hOVmtIcG1UMXJjbk9hMDhOdTJkN0d0?=
 =?utf-8?B?NWRLTW9iYXpGVm1EOEMwQlhpMDdOSE8vbFVSQU5Kd0RhVzdXWC9lRG1ab3BU?=
 =?utf-8?Q?/eER/onb9uRcxUVL5/BMT73BBLtZanH9l1rxe2tKPl0Tz?=
X-MS-Exchange-AntiSpam-MessageData-1: 3pqu2fQdxD4npA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dcda20d9-279c-4419-5acb-08de5389307e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:02.3523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JA4eICGSoxvo2sbHl8V3dg5Q6L56j3rDpHvDw0UifqoraW6XfmkfpU0+GyiQGUOwHhA2jkSSxvbiXT7RztVTpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Factor out intel_dp_dsc_min_slice_count() for making
intel_dp_dsc_get_slice_count() more readable and also to prepare for a
follow-up change unifying the eDP and DP slice count/config computation.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3a12156cd6e56..4455d0a2e59cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -959,14 +959,11 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
-u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
-				int mode_clock, int mode_hdisplay,
-				int num_joined_pipes)
+static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
+					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
-	u32 sink_slice_count_mask =
-		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
-	u8 min_slice_count, i;
+	u8 min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
@@ -1025,6 +1022,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				DIV_ROUND_UP(mode_hdisplay,
 					     max_slice_width));
 
+	return min_slice_count;
+}
+
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
+				int mode_clock, int mode_hdisplay,
+				int num_joined_pipes)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int min_slice_count =
+		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
+	u32 sink_slice_count_mask =
+		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
+	int i;
+
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
 		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
-- 
2.49.1

