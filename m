Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36571C067A2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307B110E1F5;
	Fri, 24 Oct 2025 13:25:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvsnPGrg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45A810E1F5;
 Fri, 24 Oct 2025 13:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312309; x=1792848309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nluooxjoRfgZKbNgL+7jr7LZjXi0yKKO4lvMYkqOnvY=;
 b=PvsnPGrga4qAnneyDd9DgNQDk2MlZcB2K0W3FfDyqGFwUWcAr+LuuO+H
 MAk2ol4JcLo/LlxhoqegiTKoDKPRjapWAU7fSlaq0A39vMWdqUdPqmmmh
 EOSaL/sSfHEX2Sg4CuVApeRDpY52icjYSbuvtRaBGlRwdfMPSDN7OJEag
 A/Uxf/7RKTLrvMbMPpxrDpG3bBfwwVdNoles+/Bs4Lpnr1afQNEReCB5J
 iHMkDonzX2wGfRfUQFAvA8fasyCIxuSPHDrJy7gDJP+5f4xTMbP+QLBre
 5U57TG5iA8Q7GPeEbAvWf8GJ7X87spU8ey9Q66bGYPbu62lsS7GIZrmr8 Q==;
X-CSE-ConnectionGUID: O3TyNADITNaO+EEke4OCZg==
X-CSE-MsgGUID: ZUNnvsuXQX2J6f394RROIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81120536"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="81120536"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:25:09 -0700
X-CSE-ConnectionGUID: Vly4CXY1Qq24exTdLz6N/Q==
X-CSE-MsgGUID: hnhGQJgaTYSLVAsynUJZDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189555743"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:25:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:25:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:25:08 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:25:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nNEXsieY/PUs55TlAVhmi0SxvYDzSpNbIJpYU9uF6XEkTbM+QK9gdCMWSBElL1Ukg8mjqM3AS1xAhdktAlrPdRUCpdsutIfPvyQ2PdCLaS2y/iDTOGuvc0bXPRCAkhvDUzI0ZbDQ2A6qpO9+Oqg53oPtWeukToK1+ggwUSqyWQkAzMrWuCzDcN+Oo4eQtJOoRYZshVJsV7kVyi32vANLQltTZSDUn1gCHyTL6U6FLGVT21/8Xd2G9MM+3asOzbC7Z8hefOL8ARtjqwyawz3B5RK39kAcff7MBYJUJXK2x3CX1ynC25VvVMMoDnu3K051wsmJmgb3d0qlUaClgrSoTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tLDq4oqLKLvuaKTG52XmhG/rvCY3BCYVMNU0MlOtJb4=;
 b=YmCSk9tXbgg61gTOPy29WFRdobLspY8k0p2v5fsUb9VIWf4CSx4SDm9bP3aiUxDAp/4I39fQ5Y0YApP9bNxt6bgShDFyBdUBxowyb+xR8nwQkhXVQDHYx1UhDyGkYuM9F0rjkJlV60sFCk8ol5PAj0bBOFaneyQ8vBpDCwv+RlbLE2UVckdH895vj5ZTdgQt0W/i9M9HwqM7uWi9Xa+ImpyTkGLc6rRvKyx9pI+SIqv4IU4Uwg4elktdZ6GCyuryCHvm0tXVMtpAJDN0Un+iFNVEz1mJRZMVSsoma81xdq3HhZkJkdfoY78UeWtItbZpHq2FYXd2oaw8zTQs76TSBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:25:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:25:06 +0000
Message-ID: <d0af2963-279d-4e9f-a50c-c8df84fc5288@intel.com>
Date: Fri, 24 Oct 2025 18:54:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/22] drm/i915/vrr: Fix
 intel_vrr_always_use_vrr_tg()==true on TGL
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0160.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8170:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ba1b77b-e3f1-4e70-8a8c-08de1300bf0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STU1UWNuQWlObyt5OVc2dy9mV3JVNXQ2dkFteExqQTVBcXRtdG9zMVpiSnhk?=
 =?utf-8?B?Q2E0VytjNEJZcU9UcXVlWlM3Yi9GYzJXWFlQbmFGQzF5OXJSWWkrOUxRT0Vi?=
 =?utf-8?B?cE1aVmxEQlMyODNWQnh1cjh2U3lDdzJRbnRzQXZQYTJxeUJpU2NtTVUxR1Fl?=
 =?utf-8?B?M2pzeDhDczJxNzV5REdNWEdBK1N5SStBQU1LVTBxYmpsVk45MVh6eGM0dmZN?=
 =?utf-8?B?MFFJSXVwbDdPUkJRUTZyMDY1QVp2Vyt5UkFWb0NTbWlXY0hOdzFJZUlyZXFP?=
 =?utf-8?B?ZVpINzE4SXFkS2FwTlRwZUo3TTJIZU1PUExFeHRvV3RaWm9zZkdreUdvNXJI?=
 =?utf-8?B?YTlLMFdXRWtGeTZHNGV2SWtQb09HWkcxNHA3aWpVVzJYS2JMdHRYdDlSZnMy?=
 =?utf-8?B?RWxpZ1I5OG5NZVBZdWw3N1RMczN4bHpFM3FlTmFPZUJBSjBaS1dNNEtTejUw?=
 =?utf-8?B?dEQ2cjNlOVdJZnhCaUlXMHczSStpa2xiL3RoRjR4elpPcUc4RFgzTnpVckxB?=
 =?utf-8?B?cERYbGUzdEI5TjFaR21tSjQ4b1ZkZWxTL1lXK0Rxc0FXK215NDBzK1E0SnFN?=
 =?utf-8?B?dVBJOUVTSDdQQ05DRnpVZEtaWkVLU2RPZVI0Zzl0MFVGVmZjVWNXNGNCekk2?=
 =?utf-8?B?d3BwemEwWXM1YnBoVHZNTDZ2STZwbUlVVU5XU3R2WUxTaUkwaFA1Y1E3clc0?=
 =?utf-8?B?T2IrYjZBTlEyZ1dyeTNkdXhuZ1ZvVXBEKzhDOHJQZ3lkSVZWQVpGL09rQ1da?=
 =?utf-8?B?cU8vSTBzcDVDM1pqbVJuWk9RcHZzTXp5ZzJWRGRLNnRNRU52ZDhoQk5oUU9I?=
 =?utf-8?B?emE1bFc3V0QvbmV0RTZZQ3kraFNJeW5uaFR6Z2tmTmE3MEVPSS9VNnVka1F2?=
 =?utf-8?B?bC9HNzlPNWdqYVRhazR1eGpTVi85UmpVam41bGZoYTAxdHg1aHc0cGRmOW9J?=
 =?utf-8?B?MXd4dlpoZ0F0cS9la29NZWFnSWUyYXB4N1pNME91NTQ2aUIydFlVT01BWE1i?=
 =?utf-8?B?WDBWdDFPOEREK2dMUDU2ZjlnWWVRVHhsN29Xc1hlcldyeW5oTHlId0l5S1hh?=
 =?utf-8?B?RCs4UEppUE45V2xKYll6WkUyREVjZStvRWVJOTdnR1dZWHJNem5sVENKSEg5?=
 =?utf-8?B?NFhDUXJFNGFHY08wR2hPT0N6QUljVDJQU0loUDJJY3VsRUE2ZGFDd2RBMlpz?=
 =?utf-8?B?TEZyd0VuUEo1Z3UvbE43a1NnYVFWWlVyNVBrMFd5QkR5QndYMVpFUEVPY2pu?=
 =?utf-8?B?dS9iczFXSVlXL0IzMUI4VHlobDlxR1hIc1h3SUdiODQ2OWtQUkxTOFRKVWU2?=
 =?utf-8?B?K2plaFBFNytlaFdwVWFQMlZVMDJrd0w1TDJaVWQrbXZ5K3Z3dkM0YlVBT212?=
 =?utf-8?B?VmlnV0g4cXBmUWw1Wk1QMktVOFpLM05QQWNRc2VJV1FGTU1vci9tZDRUV2RW?=
 =?utf-8?B?QjNjcWJYZms5a0FlYytseTBjSkdad2h4OFFtZzUvUithdlBsVVdaRTRKR1Jj?=
 =?utf-8?B?WHVVMzZNNTNVMkU1OE5hVmdMa3BkcFRRWDBBYU5yc2M3T3RlWVg1bEV0OXNt?=
 =?utf-8?B?bGkwTTJDSHNoMDNvMDdZM24vZEtUNkFtTFBJakc0dFFOSXd6R3hCWmZUbGQ1?=
 =?utf-8?B?WWNWUFYzMUF5WVFXbUVQQUU0d3d3Slc0Y2VSaG4xZFRBU3U3blJOQ3ZHa0FV?=
 =?utf-8?B?N3dPTFp2a2tQdnY5NUsvODRMSXBuWGF1Qnd1V0NhWjdVYVc3OHFpSHowQlo0?=
 =?utf-8?B?Q1E4aXFOdjZXOVU5OGVpYTBGTlBtTGFyV3VEMUNKNGkySmIzcFNmRDdXcHVJ?=
 =?utf-8?B?dmo4WFZjTExBckJ4bWNRRmRMQmkxL05xSWIrMjV3ZmRjVDFXK1crOEtzY1gz?=
 =?utf-8?B?bFJKbVVHU3VwUlhJVUJsMzYyZHNRR21yRC8vdnQ0aGRRZ3Vqb05VUk92c1pO?=
 =?utf-8?Q?mtSiqk3BQlaEZCVF44yTilIwtPijweB+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnIzOEZvbk42NkFvejIwZ2ZOZ3lGWGZ4cU90dUxVclE1aGNOdnJ3Q1JhU0d6?=
 =?utf-8?B?TXNCL256QkRXWnBWcTJyQW9qTjJRRkVLdmxPTmQ4amNWWm9OQmdxWnF3YWZT?=
 =?utf-8?B?QVZ1enV4bWRrRWZYOU5Rb0hJWHZna2lLNEJRTW5yNXVyejZCT01ucG9QMDhI?=
 =?utf-8?B?em9SaFZacVZueW92c3J2MmZkVnVrRlR5dmZEL0pCbTVBL0hqcXRJT1ZKdmwz?=
 =?utf-8?B?aTRCNUVBVERVN214VWxCdjV0RXZLWmlIVk04ZDFLeEFnSE9OMzVOS05UdHlw?=
 =?utf-8?B?QWJwdSttNmg2NHk3UE15K1NKRnZYU01pZE4xencxWGswMXdBWHhXK3dkaXVh?=
 =?utf-8?B?Mk5aY2d4Rm9ZaDdKSk9mWHM1T1RJSGNWZ1VMclNkWFJ2bnBHSmh6cjRHY2wv?=
 =?utf-8?B?SjJtbzdWV3ROU0lCZzA0V0hWbWtHUnlialVUdkJYMWlQSExnd0NXRzY3V3da?=
 =?utf-8?B?UDgyanJWQXJ1V04xRml1S2hPc1MvZUFES3NQcUZLQkJZUTBWMUlxUFdoNXVi?=
 =?utf-8?B?d1ZpbTRURlBySWNqby93SndVVUV0OUlWQXdPaUlmem5MUG9WNmRLQnZvaWNq?=
 =?utf-8?B?ZUtaUFBqaFc2SXFoWkxPM3hmTE9nNUloYWlFa1VJbWx2RHlXL0JjYnZvMGJX?=
 =?utf-8?B?MnRwOGovL1o3cEFjcGdjcnlUcU9oSVpEODBoSVFrOUlDZ0gyZU05QmFnUERD?=
 =?utf-8?B?YWs3M3E2UXRSOUJ4M1FnVEk5bFIrTFg4aXczWVI2UkdTR01CdmJyTTEyNlN1?=
 =?utf-8?B?cmF1U1BiSERYN2E1QmhCZmJNY3ZrcS95aCtTNWdTYmE3dWxNNHc1K1ZxZDNN?=
 =?utf-8?B?R3ZDYWRuL0pqOS9MTHM0SUQxYmcreGtPdW5ESUdvTGlSYlFUVmQ4ZTQza1By?=
 =?utf-8?B?bGVjUWlKN2d0WWlFNExZcE5jMDRNWEhhS0hmeE1nendSb21icjI1QUZRQzFE?=
 =?utf-8?B?MHMxMy9SWERMeFhKUTcrLzVsdDFUMHJvblZ1aWRwaGJWNTZHWXRCVCttcWRW?=
 =?utf-8?B?WVhHMHVkZ2gvV0dlSThjQVdOU3dwVDU2WjBlajdMNjBLQnBUKzVvMTZwR1ls?=
 =?utf-8?B?dVZtaUhUbldTWkc2TCt1b05JTE91VG92eHVSTG5PVFVoaHpwMSsxS2J6M0wz?=
 =?utf-8?B?YzBIMVNwbUZMOEduRmxhUUNURlltMDFCUzRxc1k3MjFBTER3YmFqMkhSa3Zl?=
 =?utf-8?B?YXZjSVBsNzVzM3RuTHloeDdSSE9xakRwTFlHdUd2ZEdudkNoUksyNlJQbVd1?=
 =?utf-8?B?RGFDL01rSEJRZG0ydGZoSGlxQmlmZ0hoQ1I3WTBqekJPV25wQS9kanNmWFhH?=
 =?utf-8?B?NW8zZUp1bVpLOFBsclpsWWg5aTZ2WEVHVWN1WExsVzFwczRJLzQzYXlwaGVz?=
 =?utf-8?B?VEowZGVOa0tUUXU2TTErWGJwVEVwMnl5TnVhNVp2KzRPb2hHSGFYdUc3M1dz?=
 =?utf-8?B?NHpZeUdvY1JnWGY4cWl1NFF0S09jKzlrR3NHZUNFQzB5dlJESnNtUU1PWHNH?=
 =?utf-8?B?Nm14QXJ0Z0V3Z3l3Vzc3ejVseE9Yd3NTbGtVZDgxbWVicUY1YXYveGpRaFBq?=
 =?utf-8?B?TGVNWFhJbjFpZVQ4WWx6UTFwbml0OUk2aTdrUlNmVXVTRUE0Tm9TaUh0OURL?=
 =?utf-8?B?ZWZ4ZDNtWXVMTVVUeUpYZURyRVAvNWE2UmVFUml6ZloycDFnOTYvSTlmSmZY?=
 =?utf-8?B?UmVkZk1ycmlPa3hjWUNqUlZxdld5WkROaHhISFZVYWJ3eWcxb1UxSHpEZFha?=
 =?utf-8?B?YjlrMTNXZjNwZXQ1Ty85alEzZHIycjRBZElveXBWTkRPaGh0a0NWK09LQnht?=
 =?utf-8?B?TVBUaXRUay83NktqSFF3WFRxSkZkeXNHUEVMdGdwMnUxQUZURU1FZU0yVGlD?=
 =?utf-8?B?MEdJdEhFRm5qTmUwQ29CQ0NDZ2xmYXNyTit1aDFXNlhqRWd5UVM5cFRXVDV4?=
 =?utf-8?B?VGg0aWZ3RHZBMXB5UHI4NkZUOXJ0ODlPSVRmam9YNGpla2w5L0k1M0RFcTRr?=
 =?utf-8?B?MmVWdG8xTVNUV0tVdUJ2RU5GdkVycGlTeWdvd3VadndtR1FkR0drVGRhOGxo?=
 =?utf-8?B?K0ZSYnBmSFVDd04vdzgvZ1ZSTkVMQ3NKWFE1cDFuUFFMQm1qM25xSXlzZGMv?=
 =?utf-8?B?VXcyc3JYcnlCa3JWdmRYMXZlb2xrNzNDdjMyR01FWm85RCt3bFBrazJSSXVy?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ba1b77b-e3f1-4e70-8a8c-08de1300bf0b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:25:06.4211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sr0oVd8BFoMJBvUSjNzyAw+cINIxPRS38Y3kVe52KZzVELjvhvowFVK2Rp7z+Z6812mj6wySlU5B7ejcqnpskvFXL+yb1ERXXEp2qXoAgVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> On TGL the hardware always needs TRANS_VBLANK.VBLANK_START
> to be programemd with VACTIVE+SCL. Make it so.
>
> The current way of programming it with crtc_vblank_start only
> works for the legacy timing generator, as there the delayed
> vblank does happen exactly at VACTIVE+SCL.
>
> But if one tries to change intel_vrr_always_use_vrr_tg() to
> always use the VRR timing generator on TGL, crtc_vblank_start
> will point to the VRR timing generator's delayed vblank,
> which may not match VACTIVE+SCL.
>
> Fortunately the state checker caught the issue right away
> when I tried intel_vrr_always_use_vrr_tg()==true on TGL.

Hmm. TGL doesn't have SCL register, and still needs Vblank.start.
So irrespective of VRR TG or Legacy TG it needs this value.
Readout for vblank.start temporarily sets 
adjusted_mode->crtc_vblank_start to  vactive + SCL,
we use it for deriving crtc_state->set_context_latency and then 
adjusted_mode->crtc_vblank_start gets overwritten to point to delayed 
vblank, and everything falls in place.

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a8b4619de347..09d3eb422ad4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2631,6 +2631,9 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>   		 * to make it stand out in register dumps.
>   		 */
>   		crtc_vblank_start = 1;
> +	} else if (DISPLAY_VER(display) == 12) {
> +		/* VBLANK_START - VACTIVE defines SCL on TGL */
> +		crtc_vblank_start = crtc_vdisplay + crtc_state->set_context_latency;
>   	}
>   
>   	if (DISPLAY_VER(display) >= 4)
> @@ -2721,6 +2724,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>   		 * to make it stand out in register dumps.
>   		 */
>   		crtc_vblank_start = 1;
> +	} else if (DISPLAY_VER(display) == 12) {
> +		/* VBLANK_START - VACTIVE defines SCL on TGL */
> +		crtc_vblank_start = crtc_vdisplay + crtc_state->set_context_latency;
>   	}
>   
>   	/*
