Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7EABE7DCF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CBB10EB94;
	Fri, 17 Oct 2025 09:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YXO9KoBy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FF010EB91;
 Fri, 17 Oct 2025 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760694293; x=1792230293;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=O9AL2eaLfbLF6JG+2S9IK8EdivGONhTq/9kXiXTLt+4=;
 b=YXO9KoBy1D+RBu0vmSULLBTGGbWb8rgtSdw1ZVTAiWq9LIcNOZLPXkh5
 k1Twgx5Atku2DaSrMnezL3NXwgG9IhwR+pfXYhqgEW7324ENNor8HtGf9
 QorcEcuDyzLDri2NjrJoluIfYIbWNi6tCPBToi3e05S9KgT7eZccncVyl
 EzSjzDVbYKBkdtq1Mz2mDQnZbFL1dGxKMYPdf25x3l3wjYEpx290I2sJ4
 iwc0GuVVmmq2NbKTvA+vEHh9ymmH+XlwHziyT2wFC18h+huThwDyFQvMO
 SIyLogShQuvWKuCZpDIEVW7tdOgVZIampjaYD0VgPlvZOlHzZca9VfPXD w==;
X-CSE-ConnectionGUID: uQ1S2wN6RCKYwNz0rtya2Q==
X-CSE-MsgGUID: Epz2rtgFQpSaWEW7URwyhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74344144"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74344144"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:44:53 -0700
X-CSE-ConnectionGUID: o2RXELfOT+GEXQdGqYxCPg==
X-CSE-MsgGUID: BM7VvdNSSOqayf9wlhotcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182636625"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:44:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:44:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:44:52 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IX8s+Ro7ViyHHFtMUWJQSpGcRZSBKplkpDMsYI0D+aeL2z7XTjgJmz0jOvcPQIFhi12wVmaYOp6gfYxQWF9Tzi4whtVJuYJ5SdL9d1BnLmPiRVT51kH68QA/fKz+SaZUfUa/ELxi8mMpRsyoJfj+xogByy00HuKhhxdN+pG3oyRO5RbzMKrKO/0cHw6RDoFk3Q2k0gkrddpNIkmPyGm87xJ1RDCStH+m5MeIztaEFZsoS1wzalstv+8uvR+QZbmbiOyrpMcPriRcqJFiahrCF1LVwlfs3U5D3qm0hbm+tUIiS5SVa4Vc9BVuw7tCJohbIfRSpNIv9hyF6kWdUU96EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JmW2V7936i1vP+GUfUvRO2BMhiv7onhFP+Oo9hdZGxg=;
 b=irBntEp6Rva0oijN5kWL8bqZuOYGLnWmDGP0BZ7qrHBF5RW4u2amWOk0FvLx2YWpmpOGJRlA762DmR750anfE8L/Bus8T+ZtisGi+bIISElOIA6QeCWRa7jvJOCZFrwb9XnEVOABEY6ZqRIvp/4ygc6P1y3wN5GH4wfPiVWn14BDSPBynoluEx0yE/CHBNqK7SqbItz4cpAM0l07i7dFkqNwy1O2rpN97c+EB+dZ6VWn4d2FQGm1Y1+zwK5CyEuYbVgJwXnH1fkBF/DbBWOIffi6NJTR1Czc9x3MJH8HIPRpso5ziMCeIXcxeVv4lWuf1vve+ELIZVHBpaOWq6fMcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Fri, 17 Oct
 2025 09:44:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:44:49 +0000
Date: Fri, 17 Oct 2025 12:44:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Grabski, Mateusz" <mateusz.grabski@intel.com>
CC: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 drm/i915/dp: Fix panel replay in DSC mode (rev2)
Message-ID: <aPIQDenBHF0yR1xs@ideak-desk>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <176055989763.19094.12450157913190398736@97596180aaec>
 <aPIMx-HJrhuM_xo7@ideak-desk>
 <SN7PR11MB75892D2FE6A7DB8E0EDA8311E7F6A@SN7PR11MB7589.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB75892D2FE6A7DB8E0EDA8311E7F6A@SN7PR11MB7589.namprd11.prod.outlook.com>
X-ClientProxiedBy: DB9PR02CA0013.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 7581080c-62e6-4afd-c84b-08de0d61d081
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wm95QnRUalpiNi9LMmFkcjIrZGxqS1JQSGFMUXVKbHV3Tm0rVEhaQUthbFNv?=
 =?utf-8?B?cW5mTUsxUlRVYkxNUzJJeE5iTGlXVWd6ay8rOFQ3aWIwQUVDQXJMWFRDN2Mv?=
 =?utf-8?B?azh5aWFPVExPbWJiL2NFY1lsQTUvOXVwS3p5dTVFMk5UZXdGMUtFcC8rcFlO?=
 =?utf-8?B?bS9vQlQvcm5jVjFOZXpRdkVqWEtWUWNpU3NXNE1hZ3doYy9XMmlpZGwxMDVs?=
 =?utf-8?B?Yy9NVEVDWVdsUW5ZUVlxRUVhdUJGKzFET0hoUlhaOHcxbE5sSC91R3hOZlBO?=
 =?utf-8?B?eW1sTWFEWnNVeFJQeW9acWpmcFJBeG1neDBTU2pCbnV3Z2dTeWZMOUc4MEg3?=
 =?utf-8?B?SnV3S2c3Kys2Nm80Vm4zd1hQdGhJUlBINk9pa0QrWWtWSFdYSEt2VndnRVNG?=
 =?utf-8?B?bGVhY3hGMUFWdTFRQ0tzT2xhaHBuN1liV08rREtPY0tSOWhZV1gzL3Fwc0Rt?=
 =?utf-8?B?N0xTU2xLem9SdjFiRnRQR2FmdHhkM3Nka0dsNTc4S1pLbVp4Tm5XYXp3bnBj?=
 =?utf-8?B?NkxNTzVici85T0ZQTExwRlNCSHJnUUEyaTZ4SGJIWHFLZDYwZCtlZkpJNHBQ?=
 =?utf-8?B?VWhBcTZ3Z0ZtRXFxUGYvaE1RQ1lIYktxN2grb0doenZxb3JVQVduczB5V2hm?=
 =?utf-8?B?THN0ajNTS2xIS0xxbUZ3NG9mSzE3WlR4YWN0b2o0RTdrei9sRXl4dkRXVFFL?=
 =?utf-8?B?NitQOHIxdjZsaGRxQld2OHBJTW1GVTk5c1Yvd1I0TEJJSHlPeU45Sk1oMTNV?=
 =?utf-8?B?aFgwUVVocTlpdWM3MkNtRFMwQlRUaWh1aStyRUp1MUlrZ1pta0JJc2hGLys0?=
 =?utf-8?B?dDJ4YjRRTWNsVWZibHNxQkJFblJNQUZSSW44dU9idEdCSFptTFI0K0JLcElQ?=
 =?utf-8?B?LzJyVVdtdDNFdTR1UCtlNXM0emtKcy9heHBIWEpDTTFzZnlDRldJUStlUGQx?=
 =?utf-8?B?SVVoY1pxVm9xOWcwUWk0MlIvWkR2aU8yOWtpRFZMVTE4THBoVmxaRE9xSFI2?=
 =?utf-8?B?dDZDcVZCZmFhczFYbEp6R2JGQXVIQWQ2SWlCNlp2YUI4NWtRV3FzaGJwN1Zz?=
 =?utf-8?B?SXJlQjVtSTVnTFVCNUpoQ3lhc0luVDRXMUJDbDZlMU5WMG1UNVoydzJ6MkxQ?=
 =?utf-8?B?emhMNG1mbnZEOEZheVRrSml3UkVPM0VjcFlEd0MyTkFlRlF2SzBtQVkzcXd1?=
 =?utf-8?B?WVFwOVI5TWpLZ3VFM0pzcDhQSkI0NFUvUFZscVZCQU5KSE9NUGtNTlRxYXRG?=
 =?utf-8?B?VXJkazhvdDZPQkROZm5zK2VxWnIwTEZTb08rcVcwdWYwRlVLTzdRTEVKbkQv?=
 =?utf-8?B?bmR2Smszd1hqemNPNWdqbXZhT1FnYzdNZzF3N1dTN3N3aWFvbUhUSVEvdll0?=
 =?utf-8?B?a3UrSDFhNGhoRkFKWHNHNDlzQVNESHZDNlUxVi9iNUV6ODNVc0ZEdlc0MGUy?=
 =?utf-8?B?WUs4Zm9sQnBlMnFzblgxUjd4czJGcTBCUmJZTUp0cUcwSmJiWkd2SHRiQzBs?=
 =?utf-8?B?Tm13bzRiWldiOE11TEZNaVdsbEF5c2pnbGVJRnFlUTY3ZnBDb0pobFEzdnhw?=
 =?utf-8?B?T1lJN3lmQndYeDU3aWZybHZsaDZCTzhoVTV6NHhTVlVSTDM1UG01UHdEdHdp?=
 =?utf-8?B?bElDNnhCcDdvYjE3ekc2TkVwWVJ1UjhQaW9jN3VmVTJwVG1PN1k3MlhQQUQ1?=
 =?utf-8?B?bUtOOE9FZzJJM1RUaTJPa25KcjVMUzRqVmc5OXJqZkJUa2RUam1EanFsTW9V?=
 =?utf-8?B?Y3ZGOHRNZ2pNMEwrUStxWGRCY1B6M2Y4eTdJTVJYSkZBTXpBTmF4WDJJMml2?=
 =?utf-8?B?YlNHODV1SkVlYytFekxpMTJ5NmwyVzRVVUxndmUrTUJ3US9mc012S2dYRUJk?=
 =?utf-8?B?TzZGQjhrYTN5aTJndVRSM2hiNUloU0RTYm1BQkRQWVhWUFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1lKcWEvVGZOaFJKa2RXSUoyWnRJN0wzeGJHSGFjQlNpVi9XTUluTStwY3M1?=
 =?utf-8?B?ZW5Na240N1g5TzJ0OEsramhRSlFGQStSRGJzWTR1MkNlOHd2WFloTEVuOTFs?=
 =?utf-8?B?WjA5aHlVcTZyVGFVRUFUUzNmMWkxdmxBN1RBVnhORnZRd1hFcHRFR0pnSUY5?=
 =?utf-8?B?L09BcVRodnpFVk53Sk5LdHZIenJKR2JWY29zUHRKQU1pc0ZYaHlQSCtwUmdN?=
 =?utf-8?B?VTdTYSttdEdMSlh1bEdFRFJVaWk4Z2RVbHpzYmlQYlp2b09GdVZ6WUFsMUdB?=
 =?utf-8?B?TXRlN09Hc25PaGthRDd1Z2ZhRDJOZVkwMWsvMVpXZ2JBTk5jSjZhbXF6aSto?=
 =?utf-8?B?TDJIMGFzK0ZRemxybjhPYzhZUTgvMWJNR015K21ERlRRNTErZ21sN2xrSGF2?=
 =?utf-8?B?YmJ1L2xJSzMyRUZDeEI3UXp6WEtnZGU4MHN3L2pFNFd6VS8yVVVSTnhLd0tx?=
 =?utf-8?B?NHdxL2F6cjY1bE5nNVdJUFh0dDlIdjhFWC80TmM5ZUxFV08wcm1UR0g0OWpP?=
 =?utf-8?B?b0ZRRUo3NlhFdmRoYWpkYWpDeEx1ZDl6M2dpWWRYY0Q4cWs0MTZVeTBXcGcw?=
 =?utf-8?B?aXBvdUcyVmVFWEE3WTUraGVGUmpYQjQ2cTAvSWI4aGhQbWlzaDVLY0o0Z3Qz?=
 =?utf-8?B?Z3VvU3dVZWZvaXRUMTRMOEZjQlBFV3Bic0RCcEN0ZkFJUzcvcmpZbkhrZEJX?=
 =?utf-8?B?OUdJQ1FVbXdqZEhuWEJ6ekQ4c1Fmd1BzQ3VndkxaYjhCN0hwdHpRbjlQVXZ3?=
 =?utf-8?B?OWZxZDNTYzdKekR6R09xMHFram96a2ROMFphWUI1ckJzOEl3bURIRzZsRTJH?=
 =?utf-8?B?MGtCZmNGY05qTVZtNUFpVTNEbnViL3c1NXZUVDVjN1RDWEtsVzhueVZ5WDV4?=
 =?utf-8?B?Y1BEdURmS215c0hNdTBlN2QxQ3M5ZExiU1d5bHF3KzcxNlVGcXdCSzhBd09x?=
 =?utf-8?B?Mkk4bUh1L01idlZLREJmeG1sNVhyeWJWMVF0UG5IdWkyNE83VEphTitRYjhC?=
 =?utf-8?B?SHRwRDdJNWQ3bXlvSzNqWVA3M2FzaXNhaHh4S0RkclJOTDkwaXBieGFJb2gr?=
 =?utf-8?B?eTczY2I1anBtNzFISlFEWnhlMzlGS1dsdE45Wm5JUVA5U01PNGFOQjRFYis3?=
 =?utf-8?B?OGV6enpJM3loNG03ZE92ZzJsaHZ0Mm4yRmlZQ3ZYR2FZK3pQNnY2emxoTHlh?=
 =?utf-8?B?M2JaTEtrdVRaUGZYSXBLWXZyYjVSRzk2OEJKRVpNU1gxTmd2M3VrajZBOFJV?=
 =?utf-8?B?Qk9YVWFnUndSTVhhN2hMekNLQm1oL3NBUi81Q04vTHpMMjc0SzNYeWlkd1Rm?=
 =?utf-8?B?a2VBaERFK2tJSjkvYjJ4b0tCdVFSaTRibXdRa0UyaEIyQXpkYzlLMmd2UTB4?=
 =?utf-8?B?TTZPZXo2ZTZUeFBjc3pkNGVyWWpNNlZGU3dUSnQvcXU0WUI3YVpzVnM0V2Ex?=
 =?utf-8?B?UmFUdjAzZ3AyMVpxeExoUWNiemRLNEJ1Z3lBaFZnK0VuTWZCdmhaREVOMmFr?=
 =?utf-8?B?eXdVUE1KUFgzV1Azc0xDcFJDOTRLYjdGS2ZsSmFWZHd2ZzZ3OEdCVGFXVGc4?=
 =?utf-8?B?M2V1b3JndzNqU1NyYmJZKzBzaEp0SlNWQmNheGZ0Z2l6aTROSHZYYS84WUVr?=
 =?utf-8?B?ZEZEM2ppTmtaMWVVOEROWG5hanBTY29TUEwrQlRCRWNPbmZxelpNMTdYZSs2?=
 =?utf-8?B?RGNyQ2h1K0lFVmUyUGY2M0RUaXU1SUxRK0xGNUZDdTlud2Rac1FSMzBVSnM3?=
 =?utf-8?B?cWVjTlZQMEM3eit5ekVqSjgvMGNKL2MrWmRGbCtpVElwQ0s4cnh3QWJnOTdr?=
 =?utf-8?B?RllOclYyVXVBYVVldUQ4RCtDTzVtc01kT1kxR2ltTnFNQURHTkFzOSswYmxO?=
 =?utf-8?B?ZGNPWDhQNjA0NnRBbmdxNjVNU1lUZWMrdDNsaFJXQW1STFpkL1BDOGJkOUNX?=
 =?utf-8?B?aTFEWGV1bGsyVTFZdUFYMXpURUZEbnVjaUlHRnVvOHFhYTFYNnZlb2JnZWFa?=
 =?utf-8?B?bWlOL1B0NTNwTjBwMXhQS2tKVjdjZjNESmdFaHQ5dTQ3WGdUbnVYN21Cdk1J?=
 =?utf-8?B?RUpBbzRNY2VGdjA3V3RFVTFPMXZRTzhTd3lSSUdCdlY4MkU4SjZ0RldFRjB5?=
 =?utf-8?B?WlkyRnpZbDcwVUh1R0dkTHdnWFhYc096Ulhha2lyZHlEWmNIYjhhUkpORVlh?=
 =?utf-8?Q?ZHnLWMERIkWVlBgpe/1xcb5lOkyvBkWWQSWtcnobIQrg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7581080c-62e6-4afd-c84b-08de0d61d081
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 09:44:49.5137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EMCkHe/lgZSQ6Pyu8grzaCtAihV5HO3xtbpabN12olSQDYxTLo6hR7NyNt2UI/iUkzBA96c1VMNUqm9OuMd1PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 17, 2025 at 12:43:36PM +0300, Grabski, Mateusz wrote:
> Hello, Imre
> 
> I will queue shards for you.

Thanks.

> Regards
> Mateusz
> 
> -----Original Message-----
> From: I915-ci-infra <i915-ci-infra-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> Sent: Friday, October 17, 2025 11:31 AM
> To: I915-ci-infra@lists.freedesktop.org
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: ✗ i915.CI.BAT: failure for drm/i915/dp: Fix panel replay in DSC mode (rev2)
> 
> Hi CI team,
> 
> the failure is unrelated to the changes, see below for details, could you please forward the patchset to testing on shards as well?
> 
> On Wed, Oct 15, 2025 at 08:24:57PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/dp: Fix panel replay in DSC mode (rev2)
> > URL   : https://patchwork.freedesktop.org/series/155587/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_17368 -> Patchwork_155587v2 
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_155587v2 absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_155587v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   External URL: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/index.html
> > 
> > Participating hosts (40 -> 38)
> > ------------------------------
> > 
> >   Missing    (2): fi-snb-2520m bat-adls-6 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_155587v2:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_sync@basic-each:
> >     - fi-kbl-guc:         [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-kbl-guc/igt@gem_sync@basic-each.html
> >    [2]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-kbl-guc
> > /igt@gem_sync@basic-each.html
> 
> There doesn't seem to be any display connected to fi-kbl-guc, so the display specific changes in the patchset are unrelated to the failure.
> 
> It took me a while to determine that no display is connected. Is an empty "i915_display_info0" linked on the CI result page supposed to indicat this always? Could you indicate in a more obvious way that "No display connected" on the results page?
> 
> The failure imo, is either due to a network connection issue (no WARNs, errors in the log, dmesg ending with a flood of 0 bytes read) or some GFX device DC6 -> DC0 transition or some GFX GEM related issue, see more below. There are no pstore or other post-mortem logs available, so it's impossible to know the root cause for sure. Putting much more effort into making such logs available everywhere would be really appreciated.
> 
> The fact that the connection is lost while the system is active, so not around system suspend/resume (where network device failures were typical in the past) makes the likelihood of a network device failure lower.
> 
> I see the GFX device being in DC6 when the connection is lost, so it's possible the machine hangs when GFX is trying to exit to DC0.
> 
> A recent similar connection lost failure during a GEM/GT test on the same fi-kbl-guc machine is:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154881v1/fi-kbl-guc/igt@i915_selftest@live@requests.html
> 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_155587v2 that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@dmabuf@all-tests:
> >     - bat-apl-1:          [PASS][3] -> [ABORT][4] ([i915#12904]) +1 other test abort
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-apl-1/igt@dmabuf@all-tests.html
> >    [4]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-apl-1/
> > igt@dmabuf@all-tests.html
> > 
> >   * igt@i915_selftest@live@late_gt_pm:
> >     - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#13735]) +80 other tests dmesg-warn
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
> >    [6]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-cfl-810
> > 9u/igt@i915_selftest@live@late_gt_pm.html
> > 
> >   * igt@i915_selftest@live@workarounds:
> >     - bat-dg2-9:          [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> >     - bat-arls-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-arls-6/igt@i915_selftest@live@workarounds.html
> >    [10]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-arls-6
> > /igt@i915_selftest@live@workarounds.html
> > 
> >   * igt@kms_pipe_crc_basic@read-crc:
> >     - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735] / [i915#13890]) +49 other tests dmesg-warn
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
> >    [12]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-cfl-810
> > 9u/igt@kms_pipe_crc_basic@read-crc.html
> > 
> >   
> >   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
> >   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
> >   [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
> >   [i915#13890]: 
> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_17368 -> Patchwork_155587v2
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_17368: 69ca30df000b382e7657f300148be505083377f2 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_8585: 8585
> >   Patchwork_155587v2: 69ca30df000b382e7657f300148be505083377f2 @ 
> > git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > == Logs ==
> > 
> > For more details see: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/index.html
