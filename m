Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B353CC780F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 13:10:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0653A10E02D;
	Wed, 17 Dec 2025 12:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsKG+KdV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5F910E02D;
 Wed, 17 Dec 2025 12:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765973433; x=1797509433;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:references:in-reply-to:mime-version;
 bh=lh5kDOMAc+ByP+m/6AGvTs5a3pEo1+RVA+ZZohyxhok=;
 b=AsKG+KdVoaaGLQYzh6dzncoioUm+vPUzEt3c+oiabFX8Q2wHCl/MZeQl
 OOEtNGxLYKzMvxtwkSrvqgO4uXWThGse6ZF2PC4E/S7hWmU89V7m4RMQ4
 ozXKdjKpgGM0liDv0nnfMIILubrGDacdkhmkYzQb7NLnoIWYUgnCEvzGw
 EUG0BTwxjZzmCE3T87O4sBS0Wict76efEk7bejpkASRbMaEjXHILQXG9l
 RgBypoPfIR3qAMSf1Nv0k7FelSHagGb2sPCxfAMT1uuA3lN1luS7q3R3D
 DMhZyuXL9j6mymEhtPmDbKgDIQ9jRBMiLRsLytRuwwX21s4AWwhvamjyX w==;
X-CSE-ConnectionGUID: W5VXSBkQR/SHKvpKO2txRQ==
X-CSE-MsgGUID: t0juUpwIQgm3YGrBJDNsrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="93383373"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="93383373"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 04:10:32 -0800
X-CSE-ConnectionGUID: RFnPtDU0SMeaWSQ91u8PDw==
X-CSE-MsgGUID: YlfCfG5sSpGeqi7zEubN/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198541283"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 04:10:32 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 04:10:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 04:10:31 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.35) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 04:10:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cPKzrjX2Oh7/ZDtMa/IR0fhiPO50LO2coUGOJ+oxXlmSwAwRxvkBvV6/jeRauhzRN8JsDJVVJ2DPEvMQqvIxaYccNZwppoy/5HW6KH8H18Zvo80MPylUdsV5/+iij9SCK6Ty3csmKfR9s/ML3/q6vdgCN4NV6Jl2mPDS2XNwXOuyJrkyJDDslanZjYC4KGuZqHQ1jYGojNDch44xMZpHEjszdGjhIABeqyKrKGeyC1Vh6q+PGMzcbcurWwnP73jo1L77NSjKF96FlfiWabCNj3KW7lT1bBVok6uf8dPf2CqYKxgp0I7NmjUsd3+MrUha+AMto4FS+lJRm21yBz1HwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmhfNA371uo3R6rtB9Voayx0IFz8mLFZMDDdPcXfY24=;
 b=tlYcLdB1YFA2/DL2tWWmkK8+8mApqs6GBQtp5t2/7Q5WcO9n2tOoo+SbyidnG43HxEg+lmfc6WdA0tWsw/nJ6eeT3g14LIHHPWfS6/ny0VQ3v55c3t3Hu2fi5/fcYfLo5QpFR6rPvJ4IBotCEM1lMrupLds+tZ91THtEZNpCzOG3Yd3yOn7qwW6NZ0Qei4Ql+14hBmsDZrfzztnjOGxKACxSloWcA6KFkq4QdcCb7FNdJZN/Y5+fJreiWEABacACsJrSAF5SOkJFYw/DetvokBwPevZNgLLu5wIS159sm+t1snjHaqVPR7e7tGWkjp+kIBSygqNC6cGdPYGgVfbkRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by IA3PR11MB9349.namprd11.prod.outlook.com (2603:10b6:208:571::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 12:10:30 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9412.005; Wed, 17 Dec 2025
 12:10:30 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 17 Dec 2025 13:10:36 +0100
Message-ID: <DF0HC4USP7Q7.BH9R0UFGNJKZ@intel.com>
Subject: =?utf-8?q?Re:_=E2=9C=97_i915.CI.Full:_failure_for_drm/i915/gt:_use_design?=
 =?utf-8?q?ated_initializers_for_intel=5Fgt=5Fdebugfs=5Ffile_(rev5)?=
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <I915-ci-infra@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
 <176597303896.97631.12852918908528754241@a3b018990fe9>
In-Reply-To: <176597303896.97631.12852918908528754241@a3b018990fe9>
X-ClientProxiedBy: WA2P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|IA3PR11MB9349:EE_
X-MS-Office365-Filtering-Correlation-Id: 44c24180-7a61-4b26-440f-08de3d65459b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ykp1N1p1MHYvRGR3WWJmVGZLUVdoQjZOcEUyTkJTTnZMRkhJdXhGTG9Ia3ht?=
 =?utf-8?B?KzVDK2FPbFZzL0NlWnl1ZzAxbmhGc0RRL1JkcEJJN2Vib0ttRmVzdnZLSGwx?=
 =?utf-8?B?Q2hjbk4zSnlNNVdHeGY4TTlpNTVWWVdNaitDVTdNamRaci9GQVJPTnpZOE9p?=
 =?utf-8?B?ZzJTVnJoeURTRTlUdFZxNEM1aWFJaUlnSnhsYzB3TW9NVmIrUnNvSTVqVjJY?=
 =?utf-8?B?RDY2eEgxSkpCc3F2a3lua3Z0YktmaUJuZWdWV292b0YvZzJ1RFlQdFFqaWhE?=
 =?utf-8?B?OXJZeDIzS1pqZjQ5Qk15YitHNTEwbjdMQ0lMM1R1cnIxeDdUaTE5dEtrMGEz?=
 =?utf-8?B?VkhvS1U0b05abWg1d0NCdzJtTzJwd05hTXlsNzVJL3ZxUFZRQndZZ01zVE1w?=
 =?utf-8?B?ZDFUc3FSQ3I2aGVvcVUrbTViOFlXM2FZcjVwNC91V3kvdlNTWlhhVWxRQmxl?=
 =?utf-8?B?b3BSRTQvMkgvaWlEUm5JQmxRZGVhTElPZWVxT003UWp0VEtSQWtDeGNuOHEw?=
 =?utf-8?B?aVpJUW1NQ0tCSHc0S29lNnpjek9QYXBMZlpiYjNoWUlpdlduZDdSY1dKcjND?=
 =?utf-8?B?aDFwWDgvRjVPZGM0UDRyV2k5YjJLcmJlbkRUeHFWNEk2MEVWY1lJZzRvaU1h?=
 =?utf-8?B?S1NaaEZ2dExhZWo2MjlRbGpvKzBrd1FmbFo1eDFKRTFPN3RsVWtYUllTV2x1?=
 =?utf-8?B?SHE1Yll6MTVZazJkNnNoYXNaaUpvN2pGVnNTTllOYThXc201VS9IR2wranha?=
 =?utf-8?B?Qm1rVGpHaDZxeWFVbWlYcllneEs5bFBGNmJONmFQZWVzcHpnLzVUSWxSUFBi?=
 =?utf-8?B?a2pnYUhGTEIxTWYwTFRDeDFEck8zUVdvckgweXk1MTZBZ2RIN1pEWFhhcWdi?=
 =?utf-8?B?R2xZcnRVbXlJSUZzZEZpODZEd3R6elJJa3VwNWhlcFI0ZmV6MVVSSC9UOUVB?=
 =?utf-8?B?b29LczI4b1Z6akVtZW5hKytHMzVYTHNNTTZ1c0FSalRhYzE2REhQZEdtTmRs?=
 =?utf-8?B?dXFKUEt5bnVXVytwcDJVeGVYRkRPdzhKbStMQ2JUeXFibTF4MHcrRWtVZjJm?=
 =?utf-8?B?d3k2MXI4UEk4ME56bWhBUlVyU3F0bjIrbW54VzJkb3htcFRDL2ZEYzFOc21U?=
 =?utf-8?B?TnZQVVRwWFdOL0hNL3B0RTVDYVZ0M3laZ2ZKUEdHdG9LK3JwYmN2TFIzLzB1?=
 =?utf-8?B?WENwTEZqRVZ6ZUdOSFBpMjQ1UGpucVR4ZDRPTUlIK29NWHVwZ1hZTnd0eHJV?=
 =?utf-8?B?QmVIZUw0aWw1STRoUWdrbWhWRlpEOWtkU1BJK3lESnZrMnEzQ29rZFp1ZWtu?=
 =?utf-8?B?TXRjQmRaUGl5UVBNR0lFOFVyckF6VUxNU3Y1WlltQXU1VmVoakN5eWM1aDkw?=
 =?utf-8?B?VUlCM3pTMGVwU3RmV0FzMDBaTjRoNkRpQllFUm1RNkNQUDRoRG81RFRuL0lF?=
 =?utf-8?B?RVBXOVQ2V3JtVW4wNUlXQXZtVzJVWE0wR2kwNkhOa3BRU3BXTGJaTUpONjJ2?=
 =?utf-8?B?UGpMTklSeHBXS1RucEJTSHY0bENxSDhaUHFsb2Zjb2lOa0dEVjAvYkhUSUVt?=
 =?utf-8?B?UGtncXFZcXFCMkNmb0pUcTVRcXFyRytldlFkUzhFbmh2Y3N5bGZRWEc5eFpq?=
 =?utf-8?B?Y3Vtb1B1bzJVZVZnZElFYVZKTlpTMnpIb3pCellSYkRkdUxLTXU2N3RyeVp1?=
 =?utf-8?B?ODdnaVd4djdSYmtWNHJUN1B0SXZzUHYxMWR5YUxGVnNjckxyR0FrTmFCTUpm?=
 =?utf-8?B?Umt3djVhNnZnS1lCQ0JmZkN0WDMyN0JFZW5ERjljTnJhcGQ1UUxpRGpzSTJC?=
 =?utf-8?B?dmgybnVrMXRSTGFNaHpySlFOUlpKQlF1TkNtc045Z0RKZHpVSG13QzBKb1gv?=
 =?utf-8?B?dDQrN0lLTHBxT3RLd3V6dHNwZW1jWTUxZkhDMUxOZk5PTVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGhieGloK2ZUdmNLY3o4OHhkSWg2WE0za21TWEJvZmpaZlpiTTBVVWZkSWhU?=
 =?utf-8?B?NnJWS0l0RnZ5QVhUbWx1SkZLQ3g1TkxhMkRVOTNJcDlIaWN6bElXMHZWTkZN?=
 =?utf-8?B?b3BsTXdFY3Q3eEt3T2pqdnhubVJWRXhMK0pyV0JpT1g4VG9jdVROaXJEQXdM?=
 =?utf-8?B?RWE3V1JwVnE5amVjWlYrVVFrM21lbDJGcWVPQ2RaSmRGY2FpbDlNd1J0dUZr?=
 =?utf-8?B?RHZ6TWF6RGo5cmx6a0pkc2owMVdmNFlIRlpaTVZuYktZZGh5RklMTVJkTkFQ?=
 =?utf-8?B?T0RIQnhmQXV6ZS9UV2NKeVk0YVllb21OVmVkbkloYnZkSGo3S1ZGcWcwSHFO?=
 =?utf-8?B?MjJxSXMrWXVBUVU4L3NGRHg2cGlpT1BhQXBUbnMzd2dpWTlIUmFTQmtCTnRU?=
 =?utf-8?B?ZXJncVI4NUFTUjliTkhZZFpjVFZnSlREYkxWbUY0TGx6bE5HcXd5VDZFaDV4?=
 =?utf-8?B?WE95dkZKZVg2ejFyVFEyNHRHVSttdnhQYWo3L1dHbTUwVzc1UHZvK2NlMDZs?=
 =?utf-8?B?b0dLclp4VlIzbElUVWlWRThuRjF3cFFuTzliUTJiTVdtbHEzSXBvS04wWWcx?=
 =?utf-8?B?ZWpRNDJybFpkWXoyYTlZNVdYeHlzZ29Paytpa2l5LzlhSkh4bk4xYUk0NUhw?=
 =?utf-8?B?VGFCMHNYUWsyU2ZmY211U2dpd1h4WHBPWnZqSkZZNFBGUGhlVEVsVVY3eWxy?=
 =?utf-8?B?alBlSkdram9sOFdxRC92Vit4ZnZPSVI0MHZ0akdpMHkxV3RnNWpKbm1QQ20w?=
 =?utf-8?B?Ulk0WGdBWndOY3gxa1JKUy93dkRQVW53ZUJ0aVFpZXZTS3kzakNnVGRBWGYv?=
 =?utf-8?B?cVpFTUUwMjFteXBpVjBpV3pBMHkxK3RMUU5BOGFEWmVIMVFiajVTemc2Y09T?=
 =?utf-8?B?eTBuSkdNUE1ZSkZXNHJZMmhNSUtpOHIwbXNGRWc1YTJpb2tyeERtSG5ucGFT?=
 =?utf-8?B?Z1RoMy94VGFKZlpqZ3J6cVZVdVFZZmVwSUttU21nVkhLbWVGWGZ0SmoyaG94?=
 =?utf-8?B?NnA3clYvUG1TUS9BNldDYVg0VUhPTUpKZm1BeTdRR0tuR1ZJYVVBVVkzakhy?=
 =?utf-8?B?bU9DQzRQckFvZ2ttWUdxM2NhOVJKTlF1U1NRSXBqYVVmTitpS1E4VDU5ZEVl?=
 =?utf-8?B?VTAxR2t2Y2ZzZSs0dUhmZTRQOHVMMkY2NStQaUNSQlM2VDhFV2VJT1AzU3Rx?=
 =?utf-8?B?ZWpWdEFlWUFXOWw4WnllNzlPTVN2M3NiL0pLN2F4eXFqZ3FFNTJlSy9hcE9G?=
 =?utf-8?B?ZXNvN3V5RWtkQWJLYWFlMWRIVjJqNjFiVWNlTFBObDN2czczaDJKbHNpTGFk?=
 =?utf-8?B?TjQ1cjQwU2hpOUdGRlhlaTc4bEhQTkRyblVCSmRFVG9rM3JzRUhJVmdEUWVk?=
 =?utf-8?B?Sk9JQ0dlU053b1l1UHhrRm5obDcwWFM0cVNEMDdwYklvZWZWU3RVKytaWmZX?=
 =?utf-8?B?a2s5VU0yZGZreS9Hb2kyK0M0UEhPVXIvNi9ndmtaRWYrbzV3b0lUTTdCbUVm?=
 =?utf-8?B?UWZ3eEJzWEVwWkdFOWc3WGoyR01XNGhYSVpOWDhYZkQyL0pNWURtQUd1NUUw?=
 =?utf-8?B?ZmtpUGY3RkxNaVhzSVd1UzIrSC9vUmswUkt0d3RVOEpWWjVDUWQyL25UNHFW?=
 =?utf-8?B?T2EzOHBOQU1qcGNFTmpocGl2RTNYZlRmdkVOZzBGUDZmT004WXFGN3pYdXZL?=
 =?utf-8?B?dkRNQW53dEozajdDUVg2MWQ5bzN4bGh4ZS9ITXdaei9SWFN5Y25DbjdlQUJL?=
 =?utf-8?B?TUVaZXdpNi9mZDBySVA5bHcyWmUzamdraWVEbzQ2WTlKWU5VWGxrYkxWZjlU?=
 =?utf-8?B?TnZIbFB1TkJOaHdRaUF1QzZDVDB1M3FUbjVMUktuTTlkazUwNnpvbXRNelUr?=
 =?utf-8?B?WncyRkdlODhjUFowaDRpemdEYksvamFvTUU3K0h5UE0za2ozMzVOZU5CbFhz?=
 =?utf-8?B?TUR2Z0UySGxLUVV3dytGRG1zYlFBbnZGemQvUlJObVZQVjBoTFVvUDVmWXJ0?=
 =?utf-8?B?aHhRUHhXb1lrTlpPVlVDbVNKVStjanpoZnhyOFlPUXdSSzVWWWkwVEg5RzNo?=
 =?utf-8?B?RGI5bDlyUk9FOTk0QUE1TVZFNWhaVE11OTRZV1BxRlVDQXRKaXdhQjFmYTFD?=
 =?utf-8?B?OTBVdzczRU1Fb2RRQVpqODEvRWhzSVNRc2drY2xQV09qeFFadjF0L0NiSFVH?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c24180-7a61-4b26-440f-08de3d65459b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 12:10:30.2804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tib974fjdgmC4MBd5azUQYJ+BXnz5BJ/h6ap6IP/98DYR/et50E2TxKBFRwDtIQ1ilhEawZTLSD06czvC3dA1Oc8/njzbS1pLY1c1+5km8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9349
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

Hi CI-team,

On Wed Dec 17, 2025 at 1:03 PM CET, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>
> Series: drm/i915/gt: use designated initializers for intel_gt_debugfs_fil=
e (rev5)
> URL   : https://patchwork.freedesktop.org/series/158761/
> State : failure
>
> =3D=3D Summary =3D=3D
>
> CI Bug Log - changes from CI_DRM_17694_full -> Patchwork_158761v5_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_158761v5_full absolutely =
need to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158761v5_full, please notify your bug team (I91=
5-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>
>  =20
>
> Participating hosts (9 -> 9)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork=
_158761v5_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@gem_exec_parallel@engines:
>     - shard-dg1:          [PASS][1] -> [ABORT][2] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-1=
7/igt@gem_exec_parallel@engines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-dg1-14/igt@gem_exec_parallel@engines.html
>
>   * igt@gem_mmap_offset@clear@lmem0:
>     - shard-dg2:          [PASS][3] -> [INCOMPLETE][4] +1 other test inco=
mplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3=
/igt@gem_mmap_offset@clear@lmem0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-dg2-1/igt@gem_mmap_offset@clear@lmem0.html
>
These new failures appear to be unrelated to the patch itself.

--=20
Best regards,
Sebastian

