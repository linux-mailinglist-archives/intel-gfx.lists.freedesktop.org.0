Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701ECB06397
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 17:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BB210E600;
	Tue, 15 Jul 2025 15:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JeClOZk4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 020E610E38F;
 Tue, 15 Jul 2025 15:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752594998; x=1784130998;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2DtYGI1wC3vqWbeUiywdSQMGteQz+tjEVNpqQHk5P/s=;
 b=JeClOZk4/6oFpOgjZtZCnpNmGpCCxoUsXr5rlC3n3vwzGeOiuXGPCwrr
 56ZZmN75/r0UpBJ0EvqsvE10Bsv1m3UOubR+cHFEDOMCJi9/qzWqqgYbr
 RXQ720RriZWwwRTS8Ezw3hS9RTzh9U/YC46xX377kBEDn2MGEM1OGm8KL
 b7vXbcQf+S5mI4iXfiaopfqT5YSrHhFfn0AMMJDJ43rakfeVWaVe5nulx
 g1LvHrYkczGGw8Uf3NWKdxNBo7eTc/4XOca43Ia2X9csQlrlFM+Oq1hSE
 Z4LEe6gfo3/XWeSG38oH3RQGVvCAmQI2VCxKesh/XR53E3cy3A28w7Mo1 A==;
X-CSE-ConnectionGUID: YgoJylS4RFWxA+U09Qh+7w==
X-CSE-MsgGUID: QaorUtLYQAeFd2m/nwS+0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65888610"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="65888610"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 08:56:37 -0700
X-CSE-ConnectionGUID: MfQmfXuCTImWASjfSKYU/w==
X-CSE-MsgGUID: /iIC0Z7MS62LKeCL9T94IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161577474"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 08:56:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 08:56:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 08:56:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.82)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 15 Jul 2025 08:56:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GKQ2yRChvkJvMDQJ9f2gBEy8PC2Ah1tgR6wT7XZ0T6ueqxYi0c4X3dsrLT3NE9REFTk03wZdGwmrlHGspuiCKyeArP3GFUsxZiP4lzAOw3QEOHAvIiQEqjqEO10HIahDhDuTgNkVN261vjl1bl2vnMDlxh5e/7gbZQUO/jW4vmgtGTWs/Wiyhu/FApIMYewj1LbkQkWEv5yhwi+fGR586rKtz5QcvMFtms8d/0884kFaruY083O6tbBISGnEyATYiJIldnZtZ9QmJ9JPprG6cQQ7MO84a1AmLQq1WSV+koeLLI53rJRg5bCR/tAUu46gMZyP3RyPlG+XYk726WBnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rz159v+gExi29D3I8miEi+a4u1mqZCEJco4mKS2HALM=;
 b=fiW2YAq0XO+HO9F3/KH6l1DEswiMrHjKi2UXke7gLT78tNTlaEjoGBcpBCfCoe9u1dg65lDm3R/K1fnCmlotFfyN9MYiO+tEUE9WL9JITe4ERbr2lr3pQw52ymjs9Z3Gn9+d6hbDH7O0BN7nb8qZ1BkywsKyb3B2MIyVKmLv0HpJd+X5n4mTgCggWyFGedi8vAjqHmJ4V5A1eKNmjIJKnBUeHuaubw4VN9hRcSiovTywnQSKye8surbqHbGFSa921pED2jvEaHW0lmRHtgQnEi4oXBojkL2ODUsZ3BNuineCV1a5x8T6z2L2NlT5Rn4pnDz0azNAVwBREdjgRcbzPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6539.namprd11.prod.outlook.com (2603:10b6:208:3a1::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Tue, 15 Jul
 2025 15:56:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Tue, 15 Jul 2025
 15:56:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250715142211.3145299-1-ankit.k.nautiyal@intel.com>
References: <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
 <20250715142211.3145299-1-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for
 bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 15 Jul 2025 12:56:30 -0300
Message-ID: <175259499067.1809.11312877925739565990@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:303:b8::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6539:EE_
X-MS-Office365-Filtering-Correlation-Id: 3af38eab-2798-459a-1fa7-08ddc3b82c5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2doN2YyZHhHUVc0ZHIxRER4WW1UelFVbDFpYjl5dlNFQ0NiVWdXV2d3WlZr?=
 =?utf-8?B?S1BlT0tlZ0VqRTFscUk1c2JHaG5uMWcrbHFjT2JKNWYxSnUra0MzbmRHemht?=
 =?utf-8?B?VVFsS3l6RksxL1MyWHN4M2lRSmJ2S2FkWlhadGZjalVOa1Z1SmtLYTBRYmEv?=
 =?utf-8?B?eEdIVU9lbkYzMWRIZzRwMFdKRnc2L3BUMUUvV1ZSbkZtNmx3SXkxaHQ2b0kz?=
 =?utf-8?B?dC8rMTdVMlErVHd2NmZkcldtcVJQKy9JUFRrdmU0SUhnOTVBRk44S01RQUlj?=
 =?utf-8?B?aW0wZjRiejhlamM0VC9CRnhIeGhPb0QxZjkzRUtVdmordjE5VE1qL3JtcDYz?=
 =?utf-8?B?dC9JNnFIQUUvdFdoY3N1cklucVZSOWZjK2hja3FHR1JBbVdSZ0QxK3oxay9x?=
 =?utf-8?B?cVhib01SSm92S2NialNDYWJkNFdVUzEyV2gvVGtqSWxBMUhTTWdZbzByM2FS?=
 =?utf-8?B?QVh4QSsvU2w0TnFTN3FSNmE2UjhoMFFaZTFlVitOK05POWdNMkdPRXhGT0I3?=
 =?utf-8?B?TEFlMlpLbWYwcDFSVDRoUWhhRGJkNk9OMjc0aUZtVWttTjRQeFJzQnJTQmRU?=
 =?utf-8?B?YlhvYk9kUTJlc08ybG9MZzVvYVZsWjNpcVI5SHNLbit0NjVVczM4R0M5MFdj?=
 =?utf-8?B?bHNLeEJMbmJRTE5BbGU3MDBjK3ZYTElLTnI0eEEvdDUvSThsU3RxTVJtbmpk?=
 =?utf-8?B?OXBmRUJkWTBpUzVabitxWFo0bENzWXNsV21LdkdsS2hQZGRxY3VrZENadVZ3?=
 =?utf-8?B?cS9xUXNVSVNTOU5SYW8vSW1jVitySjZsMzB2Nk11VGtrNi9XRVdmWUI4QlM4?=
 =?utf-8?B?UmxnQndFcVBCQnN1YWM1K0ZLOGtXRFBaT2pGN21MRCtWcVhuWDFCbEJwS1Zn?=
 =?utf-8?B?MjdMV0RjdHNTUG9lRlFyYTF6Vkg0VW9pT0poMzZJeksyWHZLazY0aUJvMVMv?=
 =?utf-8?B?U1RNWUJ2enJkY2h2U2FReU5NWXJZUDJyYW1VOCtKeEwrc0R0VWRqSWttZzh4?=
 =?utf-8?B?eVZCOU41d3ZTempYTFREMmNQL3U4cGZCTlVyZ2ZZMi9GVDVoRFlSKzAwWmRt?=
 =?utf-8?B?ajhZeG9GcUNxVEMzdlNrYTQyU2JveVhPVHkwQXJPdS9SSy9CNXFWdkF3VEVr?=
 =?utf-8?B?QktCak83cnpKKzk0YzBQdm1EUUZGMHVsbXlJWEN0QlBxSVlBUzh4N0ZUbFJB?=
 =?utf-8?B?aGNWcWZkTm1MY2xDVm91WTdZOEJaNTJmY29VTFZSU3RvS21KZjloMEE4OXdJ?=
 =?utf-8?B?dVZINERrTis4WUVTZmFOMDFYY3hTUTFKampZakNtWkU1SDg5Z2VQdVNyMita?=
 =?utf-8?B?Z0NrNjZldmxpMkorNjhUQ3RNeExPV1BrMUN6YVNPZW9hMURnVHczTGg3bHdn?=
 =?utf-8?B?ZUFxMUVhSTVxZTFFV01wcWR3UitjQmtmWm80QXVzemF5cnZVb2NRSHEzNkRP?=
 =?utf-8?B?MVk3QkpxOWZSZ2F3OGt5SjIyY3hXZC83Z3AwR2hYMUQ4emtoelJMTThDT2lQ?=
 =?utf-8?B?VklSUFU2RVk4M25OK3FjL0kzVSs2dGtSaTVqaXpSM3BkS0hDWFBKTjViVE1S?=
 =?utf-8?B?MlZlSHhSZDZVSG5FSGVMeVA1NTlNRVV5eUw4WFhFZTY1WTNObUl5M2lMQWZR?=
 =?utf-8?B?Z0Y4MFU3NWU3bzloamNmSEN2U2JsVWg3SEFEbW02dGl3RU1sWU5FUldmY1RT?=
 =?utf-8?B?cC9pbFh1S0dTQjhsTVJJbC9LZkpYcTNsdGZ2TVpROFJQQzl0bzdaU2NqY1pt?=
 =?utf-8?B?TktDYitRSDU5NFhaZURObERaWEViUk9TdFhXbTZtT2oyWDNZUGc1V2Q4Mm5t?=
 =?utf-8?B?cjM3enJaWHNzQWxkQlhtM2w0REdSQTBET1FaWk1ySEpKb0M0NGdTSERVa0JH?=
 =?utf-8?B?SmhOZG9hZjhud3BpVmxDVUUxS2I3K2JMVlZQT1RwUHNJdXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bU8vOTZaSjQvMEFmZW81ZlkzMTh2dmVFU3pyVEdNUjNoamhTM0hQYXVPVTJj?=
 =?utf-8?B?TGFldTlhTGpVa1NhU3M1M3JHWHRBT2tobHdnSmFmd1hzYzM5K2VhVXVKUWZv?=
 =?utf-8?B?ZVBSbmp5NTFmVG9GMUFCemNEUjJMekdKaFdWNlVTYUM4OTJkUkxySmUzSWdQ?=
 =?utf-8?B?SlZRUWtxQ24vWndMaDlhaHdQeDdtT3JLRGRqdDZWOFJVbEVGWG9BcWVTcmI2?=
 =?utf-8?B?STNabnlLck1pQ1BoeC9Qai9zSWJHMlRCcFZudzVJZ29zd3VZTTJMTUpnUXR6?=
 =?utf-8?B?M1VMRWFsM0N4RDEvalIyak1HWnd6bVdaY3lham9Pb2tTZHhFWkJDTmpESENH?=
 =?utf-8?B?WGh6TUF6cGlxYWdTQktYM3Vic2NIaUNGZGw0RjY0SGVBS0xXM3lQRllOTjEy?=
 =?utf-8?B?YUNsZ1A4RXlJQmFST1VZUEJzWkhheEtTUHN2YXE3WEhlci9TcjRiNmlyNzVk?=
 =?utf-8?B?TzJlbjhiLzNIZUNpUjFQVzUzK1JQZ1NEMDRpSTRWbTI3VnJpV3pPcDFxSU40?=
 =?utf-8?B?MkFjZmJqUDk3MThxcUVzWGcvVHpLT1JqZk5ObjRUQzFVb0dkWExadjdvVnov?=
 =?utf-8?B?ODJRYWdaeTMzbnkrVzh1MndvZFR2RHpzOWZiVHozVmNxSmdTelk5MWFFbFp2?=
 =?utf-8?B?ZjRpVTJIN2RtcktuNWlUY05TRjdNaGFvbENTeStDeW1Ocno1OElWdllxbHhl?=
 =?utf-8?B?N1dLVXN6VHZ0dDJ6bEVENEx1UThhNXkwV2ZoRGN6TXJpOUE3U2hwRzhML0Yy?=
 =?utf-8?B?cFl1S2xDdStVNncxZzRNeHNZT2hyTHdvYkg3akYvTVhNdGNUTnpQczYvei9v?=
 =?utf-8?B?NStjamN2V1lCMmRsTDdOYTA3a1NtL04xU1JqZjBhcWc0US9jMDNWTE4vVWV5?=
 =?utf-8?B?VUlJTDJKZG5HT0lDV2d1V0NZSDVoRlVVMFNXS1paVHA3aTh5S1REeFdxcDhP?=
 =?utf-8?B?SFowQmEzSmIwU2h3aUFMSGVtYjhldUFWVll0dVpPd0V2MlQwWlFSWXRYTTJy?=
 =?utf-8?B?b2pJYmg2dFB2VGZDZVpUd2pRcURBRTJNK2dTUWRFNmdBTStDR3VCL0NwT292?=
 =?utf-8?B?QUpoZFBnZ2tqMmlqZHdQU09UdVVjTzR5dEU3ZHU4ekVrVEJwMkI1cHVha2hh?=
 =?utf-8?B?Qk1FbFRyeU9Bd0RwbXpnK1ZCTGFaWVZFWnp1bXFuaGZkWCtzWjNGRzhpSjFP?=
 =?utf-8?B?N3ZCajhLNit0MXBUNlJpdGpoamJLUFYybUNXSkRpZFRObEJlUzd6d1ByRUZQ?=
 =?utf-8?B?SEVpMGhQZEoyMFVscmV0YUtuVlI5UXEyTUlIWnBIbHYxN3RrWnp5N2FsN0w1?=
 =?utf-8?B?aEdEb2FTeFFBdWxWK1F1MDBmbTloQVg0by94NElnZWFMMHdrY3dUSlBueGlD?=
 =?utf-8?B?NDUzdlRqVnR3RDJHQ0RGNWU5N2I3U0Q1MTFmV1RVbTBNcStyQk9mdzNnS0gr?=
 =?utf-8?B?Z2ZYQThDbnN2N0o4cWZ3dWNNVksyN0N0bGN0VE1EdmVPUzZjMjZsRGRXeTZC?=
 =?utf-8?B?RCtkeEtUUmFtMHRyTkJNZDNFeXE5UCtuN2N3SExYSkFRdWVkUU5UaGlnMHJH?=
 =?utf-8?B?aVV0aHhEMHBtSlZBTkIyVWNHSm9EQzVUaTZnMlBZTUs0MG8yS01CUjdQTUVV?=
 =?utf-8?B?L2laZ2hPR1IrdzRVY2RVY3NVYnM3V1hlcHZrNk1kbDZTaCsyejUxejZBNlFl?=
 =?utf-8?B?eXU5c1pKZTBKdExwa29tT3NyN2Z0S0oxUE5RUEdPd2lHZVRGeU5kejRnb3Z0?=
 =?utf-8?B?QlZNalJMSDl4Uy9hU1pld0pmcklkM1N6cStQOVZZK01SMzFRcThVMlFTTXBn?=
 =?utf-8?B?enBSN0hsSkQ4cGVVaFZYQjBEN240NWQ5ZFJYU2JXS1duZ0RzOXY1TWV0SVpq?=
 =?utf-8?B?TVo4L1NzR0lTMTVXS2JsdWkzSGxvWDBKdUJ0Ums1T1U1Z01EeDdOb0VIUjZL?=
 =?utf-8?B?aUY3VEsyY1ArZVE0VUp1TFJaMlEvN3hhUzZpeFZWbklIcEl3ZGlnNTRjejIr?=
 =?utf-8?B?YjBSbzZXNEdjdXF2RnQ5ZTE3RldPUGxiVzY2bnJJVUhFc0hoRTVjbmZWbExW?=
 =?utf-8?B?TTVMbXd6Yk9FNUd3amcxNUNBUHlIOGVudWZlRDZtYmNGb2wxUENOT25GWXZW?=
 =?utf-8?B?OEIzNEM3dU1yYTh5K1RTdE9KaXdUbGUyZk5tUE0vTXdUWWlzeW0rc3liN1Nl?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af38eab-2798-459a-1fa7-08ddc3b82c5f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 15:56:34.5328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 12ArhvQIHN39PFO9HKbVg1ynu8DFcc6LDCs5myU0CvSdVl7Z1cDgxDDnenV6nDwqakJeY9vmcpFInQAQCP1tWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6539
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

Quoting Ankit Nautiyal (2025-07-15 11:22:11-03:00)
>As per Wa_16025573575 for PTL/WCL, set the GPIO masks bit before starting
>bit-bashing and maintain value through the bit-bashing sequence. After the
>bit-bashing sequence is done, clear the GPIO masks bits.
>
>v2:
>-Use new helper for display workarounds. (Jani)
>-Use a separate if-block for the workaround. (Gustavo)
>
>v3:
>-Document the workaround details in intel_display_wa.c
>-Extend the workaround to WCL too. (Gustavo)
>
>v4:
>-Fix the platform check. (Gustavo)
>-Avoid read when preserve bits are 0. (Gustavo)
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../gpu/drm/i915/display/intel_display_wa.c   | 12 ++++++
> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> drivers/gpu/drm/i915/display/intel_gmbus.c    | 39 ++++++++++++++++---
> 3 files changed, 47 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index 32719e2c6025..399c08902413 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -42,11 +42,23 @@ void intel_display_wa_apply(struct intel_display *disp=
lay)
>                 gen11_display_wa_apply(display);
> }
>=20
>+/*
>+ * Wa_16025573575:
>+ * Fixes: Issue with bitbashing on Xe3 based platforms.
>+ * Workaround: Set masks bits in GPIO CTL and preserve it during bitbashi=
ng sequence.
>+ */
>+static bool intel_display_needs_wa_16025573575(struct intel_display *disp=
lay)
>+{
>+        return DISPLAY_VERx100(display) =3D=3D 3000 || DISPLAY_VERx100(di=
splay) =3D=3D 3002;
>+}
>+
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name)
> {
>         switch (wa) {
>         case INTEL_DISPLAY_WA_16023588340:
>                 return intel_display_needs_wa_16023588340(display);
>+        case INTEL_DISPLAY_WA_16025573575:
>+                return intel_display_needs_wa_16025573575(display);
>         default:
>                 drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name=
);
>                 break;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index 8319e16eb460..aedea4cfa3ce 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_dis=
play *display);
>=20
> enum intel_display_wa {
>         INTEL_DISPLAY_WA_16023588340,
>+        INTEL_DISPLAY_WA_16025573575,
> };
>=20
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name);
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index 0d73f32fe7f1..637f0f23f163 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -39,6 +39,7 @@
> #include "intel_de.h"
> #include "intel_display_regs.h"
> #include "intel_display_types.h"
>+#include "intel_display_wa.h"
> #include "intel_gmbus.h"
> #include "intel_gmbus_regs.h"
>=20
>@@ -240,14 +241,20 @@ static void bxt_gmbus_clock_gating(struct intel_disp=
lay *display,
> static u32 get_reserved(struct intel_gmbus *bus)
> {
>         struct intel_display *display =3D bus->display;
>-        u32 reserved =3D 0;
>+        u32 preserve_bits =3D 0;
>+
>+        if (display->platform.i830 || display->platform.i845g)
>+                return 0;
>=20
>         /* On most chips, these bits must be preserved in software. */
>-        if (!display->platform.i830 && !display->platform.i845g)
>-                reserved =3D intel_de_read_notrace(display, bus->gpio_reg=
) &
>-                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DIS=
ABLE);
>+        preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_D=
ISABLE;
>+
>+        /* Wa_16025573575: the masks bits need to be preserved through ou=
t */
>+        if (intel_display_wa(display, 16025573575))
>+                preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_M=
ASK |
>+                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>=20
>-        return reserved;
>+        return intel_de_read_notrace(display, bus->gpio_reg) & preserve_b=
its;
> }
>=20
> static int get_clock(void *data)
>@@ -308,6 +315,22 @@ static void set_data(void *data, int state_high)
>         intel_de_posting_read(display, bus->gpio_reg);
> }
>=20
>+static void
>+ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>+{
>+        struct intel_display *display =3D bus->display;
>+        u32 reg_val =3D intel_de_read_notrace(display, bus->gpio_reg);
>+        u32 mask_bits =3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>+                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+        if (set)
>+                reg_val |=3D mask_bits;
>+        else
>+                reg_val &=3D ~mask_bits;
>+
>+        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>+        intel_de_posting_read(display, bus->gpio_reg);
>+}
>+
> static int
> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
> {
>@@ -319,6 +342,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, false);
>=20
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, true);
>+
>         set_data(bus, 1);
>         set_clock(bus, 1);
>         udelay(I2C_RISEFALL_TIME);
>@@ -336,6 +362,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>=20
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, true);
>+
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, false);
> }
>=20
> static void
>--=20
>2.45.2
>
