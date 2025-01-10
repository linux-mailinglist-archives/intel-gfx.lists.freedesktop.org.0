Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77288A090C8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 13:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2BB10F091;
	Fri, 10 Jan 2025 12:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQ3ihqwx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F7A10F091
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 12:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736512955; x=1768048955;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BPGRiS40sqSIsVbL5Ym3TDGNDJuxPGxi9HvsV9UaxyI=;
 b=lQ3ihqwxt/Jrj7qVe3DNRVKyY0bqrN7xJgySiCQPzLH0cvtkAHXZrW34
 TttVKy9zOe3+7bf/UMMauHt2Aj+uHEHsXDBKdwMfMiRdbgkmvCvaUNyrd
 Qulo7J9VuvmR+LB+ZyGPPzjI7Z96Yk+utLRn5RhdovaUSg4uWD9KSCQgD
 IbvKtBnjQtCRzVeFr3aarnu30ocUBNMTJB1tX0IzcNpPZJdeGUJM9FYOG
 UbhgqxGOadLWaWrdiL8BL7jHql6jVf6g9ZaNWdjQ9Uz4gcaXaVp2aVFpr
 9zHU0QqBQLzksL6ZbFqRooLNTh5+LtWOesEHZBilfZatD6rb0qO6jmxSG Q==;
X-CSE-ConnectionGUID: KvCLJxAqTWe8hRtlKgHEmQ==
X-CSE-MsgGUID: WwwPwTrYS3i7EKmWZK/ybg==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="24410357"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="24410357"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 04:42:35 -0800
X-CSE-ConnectionGUID: NafiKD02TsaTGlvCLmjfrA==
X-CSE-MsgGUID: 7ZLISq8sRwmZFlb4hgvwqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134562548"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 04:42:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 04:42:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 04:42:34 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 04:42:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QO5w7QsvgOqSGI4J2YjilfZiQpqKHa7qExN1n27PLwsfsI9MnNHmf9fbR2HwDNjeCPhBubEYEpL3cvM2un10dZkZvW5hSh4fcNnMjQBVKEBWQrGghpCxgSRg0274/61KrNl8usRUddRyq5u0g/DnA4fmvkmCPYc5/tXbsVwHypCkGLzojh5q4kyD1WFHlS02fJbRE/Tq94jldditCyl2dkl833TNVjyGhlTS3VHKPTuwmfwAODMcx85Ilxp5YnNo9m28RwlDGkvAugFyyrMrVdkbvfvC65uVKOHyPTrLvOYjaWsA88N5//j2sEGSroVcmEkSaCriCu4TPkSu1dUEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHEh3serFVnnNUS9IDHCdA8f+tudxrY839uBqZmLXAw=;
 b=lhw3EnVyTFfbA73VOHH2OiN7s+NqI6vmx8/Wtn7zz+ngrbpGXg6eWBf+Yr4AWfHmJm1uvbnK8dFYUPF7+R3FnS9VESpp/CFIdeWY5MPkxxJeQYX/4IAx5VQ1F759hkZOQHGcKRhFPVmJfzZiS7VIjoNufzKy8ur0ydvWyms3NPEfuoGTWXVT8FrPBYeYwRzSFfP4wYhDR0vSUIlloq5IxWU8BsKdaN6HTqlm0ApcFvStC48mCJQ4D5kVwBODxDvpk+tNfHVd9EC4q9Jn9tLoYLwH96nsQ2VLRpfA50B6gH5Gjk4lI4nxTWsEVI3Tx7Z7JR4ojd30z6hABTNt+RgODA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6556.namprd11.prod.outlook.com (2603:10b6:510:1aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 12:42:30 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8335.012; Fri, 10 Jan 2025
 12:42:29 +0000
Date: Fri, 10 Jan 2025 12:42:18 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, John Harrison
 <John.C.Harrison@intel.com>, Matthew Brost <matthew.brost@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Debug print LRC state entries only if the
 context is pinned
Message-ID: <mgcj3cofzro7d35hahqymnq4re52esfa2gyffozjoeiplek3ai@pis5y3wrofhs>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
X-ClientProxiedBy: MI0P293CA0013.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6556:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d0dd85-a6cd-43c8-9bd6-08dd31743ec5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzBIaWhmOXp2WVJua01VY2xNa1F3RGFPZ2tDaXNlL2NMWHBKWXNyQ3lZcGFZ?=
 =?utf-8?B?R3BHd2NFOHR2OFFBbWFWamc5RVQ3L1BiK2hFWTZiV3dFSHNQOWtaTWQ0WlVN?=
 =?utf-8?B?NTFLQTRCa3BVNlYrOTUvTnBEeHVrYUU2a3ZDVWtCOEhSWEUrdkozYll6UHVh?=
 =?utf-8?B?cmlXRk9PaW9NdWc3cVVpSGNzMlFoakVnWG5PZklUajlBMkRtK0pybnd6eExv?=
 =?utf-8?B?bVRJMVh3QXloQkpjU0tJSnBzN2Rhdno5YTFSQWZOVXoxcHRMbWh2TFFubytY?=
 =?utf-8?B?cm5CZFEvOHk2NnBoN0JqQldtZ0w5VHB1V2xEYWQ2elFFaEpxYzhvekpnSDdM?=
 =?utf-8?B?cU9ZVjZuYUFVc291aktuSHIxUDNNbmo2cmRIbjI5dWdlWWJjQmdJdDZCMWRI?=
 =?utf-8?B?OTBSNFNjSjNiaUJGMUF0WWdZVWlud3lvdUs5bmNhTkRWMzhOdlFkV1MrYy9v?=
 =?utf-8?B?UFJIejB4Vkc5U3hHQkgwQlc2eWF5QmRTVjRpZUJybDBaVjdBTkJ1R29ZeHg5?=
 =?utf-8?B?TEQ4TnNoY3cwOGQyd0t2S2dOV1ZqUytRbmF3eWdSbDhteG5CMm9RNzB6bHFy?=
 =?utf-8?B?eElzU2YrNlhZVStRdEtFSEFDaE9zVE12SXE4RnlEQi9wM3FBazUwRWZHcjdJ?=
 =?utf-8?B?ZWh0TlN4ZU50cnF6VnVUS2FDVmNjL1V0bTlSbjZrM2NjdUd0ZldIN3M1RXkv?=
 =?utf-8?B?ZnRrWVIwYTBkb2lpTGJCTTdaNWw0UEhFRldUYXRScnpkZFNRaVpkdmZuaVFp?=
 =?utf-8?B?VlAvNEFjQlFxVEE0SVJxaGlZbzBRc3F1UmZheFFaY3JWVlN6MEltd3ZhOTFt?=
 =?utf-8?B?QlduWmY5V0NvaDlFNWdYZS9XdmNycnpTc0hvdDZVQ2pZOVNHQ0Q4L0p1dWda?=
 =?utf-8?B?NE1TMGlSZk5RSll6R3BQa28wS2hRcjRMSFl5UEdEUFl6L0NyY0hzQjVWVHhR?=
 =?utf-8?B?Tk1tYXVWN2RrQ0hwVTE0ZitJbGhsTWV3RlVDZlIzV1RPVGMrN0ovWSt0bVhn?=
 =?utf-8?B?SEJvUWR1NHhuNEtrWThodTJwSU42bUg5VzZDRGxzcnBvYjJJUHZzTm4weXFw?=
 =?utf-8?B?Z09kblpPUzRSOW9TR1FKY3FzbnhTNWhDVHBHd1kwTmw0Y2k2akVsRmhueUN1?=
 =?utf-8?B?MTJpeE5IdFF5RzRyNFdld2lJNGIrVU5tZHpZQU1qbHhNMjhuYWJWRVdNWEJz?=
 =?utf-8?B?eFFmOG1UNXkrcVdJb2xwNDZKL1JXZUk1bXFVZzJ0MDRBL2w4cGlhTGtrZjFa?=
 =?utf-8?B?OHAraUhPU1pjS1ZZVzFkaHRlRUJvVHZNTE1jRzI0MXFUT0xML3EwbVorZnFQ?=
 =?utf-8?B?U1haL1Q3OUtWL2l3czZTNS9HQUR3Z01mYTRoV2o0Zm9GMjNNdGtTK0h2ZkRh?=
 =?utf-8?B?ekZKTFZkbnBGQ083VHplSlNzUXVZby9nZXNxZW85NCs2cjFsL2g4L2ludElh?=
 =?utf-8?B?RUpOWDV6K2F4R3RyeWtLQ0pERE91STdwTmJDSkd2WnJrUmNUVC9UWHk3OTlE?=
 =?utf-8?B?TFRVb3dFUHVUVGNab2V5aHIzTlJzRWdEOWJXK1dHUEQ5VVNFK1M1OTJSUEg0?=
 =?utf-8?B?a1pSdUkrcVZHWGY3cnpjVFZWa09HTE92MjViMjNhY2RmOUVBbW56YXRnWEdq?=
 =?utf-8?B?OURFSk5OZUdVQkpzRWozYUt5TlJNeUtLU3VyU2FCV1RNWDZlRk9mdlZCOW9H?=
 =?utf-8?B?TTZHQXhVOFBNRCtnblJaZFc1NmNTb3VBWXh0N2Q0WXRYSE9LaUVPMitnZnpS?=
 =?utf-8?B?V1B0eFBCVGtvdE9TdUF4UmNsbW44K1l3WU8wNTVQS0VMR0xtcUdJdGZPTDJP?=
 =?utf-8?B?TU5HT1ZSWkl0MTNrMlczSS9Ba2xzZmN3WTFjb2RXazBOdWdrZnVDOWhMNkw3?=
 =?utf-8?Q?Lb0bKasWXgINL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STBYSytsWlZlcVFnMGdjQ2U1VERMcmRQNjkxbDRYOEN6YWVQL1JBcmxRaUFm?=
 =?utf-8?B?Y2FrK1ZPTlB4Qk1wTGs2RkVtejJCK3FIWTVEa09GR2lPV0N3REMwdFh0RTBy?=
 =?utf-8?B?Y1VuV0VDdkR0NTlMYUFGV0xxUWxmYXNrcjZNa1NJamhpUXJNRHVrbkVXRzhm?=
 =?utf-8?B?UlhhOXBuZlR6aFViQU5leENoQ2JTakpmZ0wrcjhlcEcxMjVtc2dmUDA1YXFx?=
 =?utf-8?B?VlA1VTRRb29oQ1M0RGtwNHlBQWNXWlBUZVU3WHFOVUFzbys0RUNoaHlSOHN6?=
 =?utf-8?B?RThHM3AvVlBsODdMSWtNRStVV1dDamc2djR6b3hYb1RvZi9GVVU2cFVDMlk5?=
 =?utf-8?B?bUlndWQrVWZwa3pxNy83OEl1NjVpQTN3WFZvK3h6TlFaVGQ2TFE5SmxwSGYr?=
 =?utf-8?B?L3o3VUtlSTJaVlhDcGpBTnplZ1I1bkgyenZnMmFKZGJRKzVjOUcvQ1hBZWRw?=
 =?utf-8?B?UzBkRW9hQ0R3MkFHdjJiQ2owV0h6K1FUNmFLTy9neW0rTGRBYTZ4TGZxYkda?=
 =?utf-8?B?L2JjQUM2K1dtcHJ6bmVTNTlDMFpHZXN4WEJyVjhsNXNPdjVTNC9pK24wVWxw?=
 =?utf-8?B?NzlWWUErNFpuQzFLbEc5aXYrc2lVVnRtR0ZwVlBMYmVDV2hZWk5LczVMWlpL?=
 =?utf-8?B?eFNIVVAzbXU1N2wyaS93bTFUZE1mR09zaWEyZUJYbldxSFd1ZnJDbTBNZDhP?=
 =?utf-8?B?a1I1cFd4QUs3TmhsMGZ2SmZwY0ZWcE9SZkpyQ2RtT2dYTUphYW9tTHd3WGdZ?=
 =?utf-8?B?V1JIZW1xU3ArK3Q3Ym5WaFF6ellJMGF4TUxxM2FLN0JwVHlmbW1QVEdIMUJr?=
 =?utf-8?B?SmVtRENLNWo4MHp2WURXVFdzTDZ5Y2hKczc1K3hHcGVsUEQ5dGpPN09FQ1FX?=
 =?utf-8?B?dEZtaDcwYXQzdURyRzduakoxTEtjYm1DQ3Z2SXhWRWEyYkJtRjhqRkRlVldP?=
 =?utf-8?B?TTBRWG1BVEl4STUwaVpQSDgxWDFXN3FvVzFxc0tiTUhTNkdlV1JRL01tNEV3?=
 =?utf-8?B?SnpoREI2emZRVHpJTzZvc1JIbmRuaFV5OFZwMUlCd2I2ZHlNS214TmoxSmJo?=
 =?utf-8?B?UHh6RG92MUt4bzRMUTgvN0ZLLzlPbEl6QmY2RnF5QWp3M3MwdHBtWk44UG5o?=
 =?utf-8?B?K1pOdUFWMXh1RTNjczhYTlJlV3RkQmwwVFZaR1NmMk1QTE0yNkovT0d1SVp1?=
 =?utf-8?B?UHJRbG9oZWhERWN2b25BL3oxdDhJdDZ5T2pKLzVZL01rMUh1Z25nZDVaNU5l?=
 =?utf-8?B?V21xTE1YekJhWkNOTGVTVlpnZEM4M1NaMVBzTFJCd3NPY0FPNGovVnBwUXE0?=
 =?utf-8?B?THUyV0ViQmM0NGdKMkdSdDNaVVVaSm5SbHRxRXllSjBwSjVBS0pJc3lFRnRx?=
 =?utf-8?B?NjBjMGhVQUh2cGJ1ZFAzK2lGQUtmQTE5VjdYOEk2SHVDM3c3Yys4d0gzblFo?=
 =?utf-8?B?QXlMMDZOVEFqTXVGN3M1OHBwbms1WG1kaWx1UFArQU54OWg4WUVpd1FJb2tz?=
 =?utf-8?B?SG9nVzl1ZDNEVzROVFZjSFlqdWNrVFZRZnpwWkYzVzZRN21lUjREdEgvZ0li?=
 =?utf-8?B?VGZYTGE2eklMYk1VMk9sTHJQdHNqbjc0SGNhYTJKR1ZPbmJIYVdyNHJNdGND?=
 =?utf-8?B?YVZqSE5TVnlPeGFCVFB4UUt5aVNlUVFYcU5HbVdZZ2x3T0tBMnF3WlZuVE9t?=
 =?utf-8?B?L2JoZTJTVDJJbk1LbmVkZndUUEN6MW52UWZyci9jcXg4TnIyNmJuMVh2eFcr?=
 =?utf-8?B?aDI3NTFFVTVWa0ZHVzYrWkpkakdwd2F6RzJXeEdFV1hSL3kvZllNRmNqcDFT?=
 =?utf-8?B?TmZDU2tzRWJEUmtTWUVWajludm8zYmhrWktKa2xtMEc5dm5mUGx5UXFCUzZO?=
 =?utf-8?B?U0pDSUc5UStSYVRiblRmaStuUGNQUm1FN1dmVXZERkkzbFkydXhsYktUNDdM?=
 =?utf-8?B?SWQ4S2pTZmhrN05FVU9LS2JrYXFtY0MxZkJ1blJLdlJSeG84cHRLVTlLcDd1?=
 =?utf-8?B?N2VpRkZsT2tXZlF4TnlmL3VOSGg5YWpwQUpvMXFmeUU3WGwwZ3ljdjY4Nlh2?=
 =?utf-8?B?Zko1MDJIb25yU0dnQmwydjBFcTIrZWU5SXdNWXcxbWVQUFM3RGJUblIxbWpw?=
 =?utf-8?B?cEt6L0x2TlYvVnE3VDlMNUJjUi9qVTY3cEFkWEY0T2hIdzVxZTkwaDU0dkRY?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d0dd85-a6cd-43c8-9bd6-08dd31743ec5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 12:42:29.8937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Itr8t5GB7bdoDeo3q4z1qJN0KPxlec8qovF6fcMWHAkrDrJjd5KQFPSeknAqdV7X+Xh00pqSBg3EXgVfPcoRlRUzDUlDpkUs9SjAKRG0T/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6556
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

Hi Daniele,

> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -5519,12 +5519,20 @@ static inline void guc_log_context(struct drm_printer *p,
>  {
>  	drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id.id);
>  	drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> -	drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> -		   ce->ring->head,
> -		   ce->lrc_reg_state[CTX_RING_HEAD]);
> -	drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> -		   ce->ring->tail,
> -		   ce->lrc_reg_state[CTX_RING_TAIL]);
> +	if (intel_context_pin_if_active(ce)) {
> +		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> +			ce->ring->head,
> +			ce->lrc_reg_state[CTX_RING_HEAD]);
> +		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> +			ce->ring->tail,
> +			ce->lrc_reg_state[CTX_RING_TAIL]);
> +		intel_context_unpin(ce);
> +	} else {
> +		drm_printf(p, "\t\tLRC Head: Internal %u, Memory not pinned\n",
> +			ce->ring->head);
> +		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory not pinned\n",
> +			ce->ring->tail);
> +	}
Please note the warnings from checkpatch.pl job. These lines should be
aligned differently.

Krzysztof
> 
