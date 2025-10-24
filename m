Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3258AC06808
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBD010EA8E;
	Fri, 24 Oct 2025 13:29:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfGwROtC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2A110EA8E;
 Fri, 24 Oct 2025 13:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312575; x=1792848575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ec7DaHVQEHiS+euPdfUVCVIEUgxFfyxfroP+jRdoEVg=;
 b=nfGwROtCmnIqki2ULUtw28qolpV0BDi/cVMSuHunz/FKZxy95+k/swjA
 PjAK/0fam+fV3k0KHsNADsnUk/9zFS/8GDJc/FbOFIuxzj1ds+DVlSnNH
 3BSHkbC1qvc7URKr5hNCMODMI51BZj6cvKR8xq26aPCtAnygkBhciSCB5
 Brzqf3w1CkeRvr35auufp7452eUZ6WaF1GfdW/4fEC9dgSyk/3xbdlbqK
 OkUdu6TC3vTgNKiE0w/L0bIlQ61OSBwxui9jXtSKUuETvYDMICe/JxctQ
 U/kf72pyC3cdviqXM9jh9x7xnrWKwEuyQJAAOXd6a+2ixkCcL4snMxFXf Q==;
X-CSE-ConnectionGUID: eP9mPXJFTxq+4hnyQ9PqUA==
X-CSE-MsgGUID: SMrVszb3Tfy+0c83gBxgSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="86124021"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="86124021"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:29:34 -0700
X-CSE-ConnectionGUID: If2yfl2wSdKaoP/f2zhbrA==
X-CSE-MsgGUID: dktdLNb4THCcFxi7wNxNpg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:29:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:29:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:29:33 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:29:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WcbN7CGVqzAOrgcmALJzd30x5xr5hTmNLB/E4sLs49fnZ0tXqVGmvGAm0hCrYN3XDCbGA2Ergac93iVzIkilkLizwQmLKlrnq3ovg0pgrjTU3p/dWW7H6MBYltjlb/9sNqu65Yzg7XCe25vDUTe+E2ZTKcvzASKhx4rM1HC6V6xIx5g61nCqxAhLoSVEACsGpzwLIY4v3KBEuaFpM88cK8BaFwQyoHrhdoiXBFn6htUiXymjOPO3vUIQp8y/WJK9MaSWT1pLj+uEoROwvm1/hjlXpm0mh9M5n+Ll4HbjTL5igVvG5C1HG03ZbqLaGtOArOridUC/KzVbRMfeQdt8/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfnIxSh6DYmpY8wAtXZ8aNv4rNtBJIl0UZgeMU78Jv8=;
 b=c3uCCA9ed8URXcLgvl0mNDp39Ha6kBHl0xyx4scmmvkLaBes07XoRwc7MDE3CVGfSYBD7YIwFZ5sc6mT5PojSJxMzilsQGuJwzAMkGRYlWd+6ucPFelui0JnkPKZiMFYuHKcDoXuZwtN0kiz3NX+ChV51cxmYSkq5+vYSRIgFQHo+uj/zIuEBgV67z2zFBPN6UCdD1QqjagRO9p87GrNSaAjQKKqk2bF8t+QfTM2AYW1UtVVwkG6LVCekdMJIdC5Mry/a+oykZetaOgapyowYxC0GDAY+Wcq1z2ZH7YnBKaDQN88qVELMIfrVBSHWLxhHCpaxA66cpd5eEGHssDepQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:29:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:29:30 +0000
Message-ID: <6fb8c6cf-1c37-4e5f-99ce-241a281fadb3@intel.com>
Date: Fri, 24 Oct 2025 18:59:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/22] drm/i915/vrr: Move compute_fixed_rr_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-8-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: 48b207c7-6d25-4b27-4996-08de13015cc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yk9sRUM0bkxWVTRLOUVtT0QwQjhuc3RZMmlmY3p1aEJPd0hEV0tSNjMrY1JG?=
 =?utf-8?B?MmNoQzF4R3Z5Z3kzd2NLWmVrdDQrUlNGRkFsb1VzeG9yYnZCbSt4cDFLTFBa?=
 =?utf-8?B?VjByZkZvcHBNRU9TcjUvREVoUlZ0OEhyYVYvSXhKbDNFSDcyL3NLcmk5clFZ?=
 =?utf-8?B?Z2tmaVZ6MFhmcWtSYlFjMm8xVDJSNE9Qb21tM2xJempZZ3NwVXdMcVlGdHJl?=
 =?utf-8?B?SEllUmVFODMvZWd4SkQ3T2ZrMXFKdUlaclFpYTNjK1ZWVHAvUnM2SmlCemJZ?=
 =?utf-8?B?MzNGUDA4dmVBMjM3alNGVXMvWlJyeVpaTzU4cUxNQmoza0ZWdlNhTTRtalB2?=
 =?utf-8?B?UG5DbUtQdW1SSHh3d2IyRFJkd1Axb3czTjJ2aWpFRmZJMFpGL2VNNVdvMFVI?=
 =?utf-8?B?VHJUMjNxTUZnZWlWcE50cXVtYmo5YktSdHdhOFh1YlJySExBWXlRYXdydjZy?=
 =?utf-8?B?ZkZwc0lINVgxaWppeVpFUk9yNThOQUZGcUxUSGpmb2FUMzEyVGQyUjdJZTht?=
 =?utf-8?B?NkJJczNWVC9hSjFnTGdwZ29ORlBoV1UxY05MZ2RVQ2RmZzFJenNkU3RoaVNK?=
 =?utf-8?B?VnVTd3ZOKzJJNjBUVU1LeVlVU3o2MEQ2OEo5QUF3ODdSa2REVThpaWNOKzIv?=
 =?utf-8?B?SHBja1J3K0dnOVZrRUt1N2xpQk9ESCtBZ0hqd0t4YVQ1TjRvYkFyUmZ4VU8z?=
 =?utf-8?B?UU9WV1RMYWtYOGROakdTL251b2dhbVlZSll1NWpGQmRuZXFyQ0JNdHU3RElz?=
 =?utf-8?B?dTExNDFuSm1qT3VGTHlPdjNDaVhQbld2Mm93S243RHVqYkJXcDZiZEIzbyti?=
 =?utf-8?B?QU5CdUVENytCaU9IVTdEd2lQTkZpa2ZXUTQ0OHVPSXNpREwyTnZQeDJ4djRp?=
 =?utf-8?B?YjVhNjVVcjkvdjZ2Z0lvejNraFJEUytFdVZ4Rk1VVk93YmFSQVQxa0tCbVV5?=
 =?utf-8?B?QzdPeGppL0YwMVRWeEN3TWE0SU5vN0IxLzYvWXJ5YzRwWlRCTzl2aXVUK1dN?=
 =?utf-8?B?SzlELzdvY2RQY1NmQTBnK3U2SjV4T2J2MUkvRVdKOFJBY2NheTlDakp5Ym9N?=
 =?utf-8?B?Z2FEbnhVOHpIMTJJMExWaVk2Slh6Q2dFdWF1TDVQWTltZWNxYzVlNjlVUnQ4?=
 =?utf-8?B?dkc1TU16K3hHOU0wM0tENXc3Z2ZrSExjS1VMdi9sQVM3dUtOdTNIUEtrVXpj?=
 =?utf-8?B?VllhUFBXcXhPdHpWRWJCZjhNU09uQ3RvRW8yY3h6RENzZVB3blpoSGxaeUZV?=
 =?utf-8?B?QzQ4ekh4MXZNMWJoUnQ4RndjOE1xS3ZrR20rV1VGKzdhcmZFVHMrQmZLV3pT?=
 =?utf-8?B?N1h1cmxmSHR6Q2Q5SUE5R0R4dW41UW5wVlQyc29UbFdDZ051YkZ6d25rUDFl?=
 =?utf-8?B?bVc3UjhOaitvQjE2aXV3RXBiTHB6SzJXTlhRN3VNcmZST0Ziczg4aG5ZRVh0?=
 =?utf-8?B?R3ZOdmFiN0Z2dHNBei90K09acFphaUJpMzRHU0I2bU4wQlhPRGpGZFhYWlVr?=
 =?utf-8?B?Y0E0YXgxSlBGUEVBbjdLWGxTRXZlZWJmRU5wYndUS29qSnYxQVZsT2J6NDdF?=
 =?utf-8?B?cW5CM3E3SHpUOFFyYjZEWEkvaGhkc2ZHOGM2Zkl1MGRwcmFZZVZoUi8xK0Q0?=
 =?utf-8?B?NlBpTnpDTjN2alVVUXlPMVhXZXJqd2JRMW9oci83UERLeDVRQTJ3WG9VSDFU?=
 =?utf-8?B?OEJPc081ekJQYmlDbEJJWGNQdTZvbEJERGlTU1JzNTFYU1FXTWdpbUJtVmdv?=
 =?utf-8?B?YnRxZmpYdnkrOHhwa3FmWTI1bkNXMTdoVWdlQkpWbmpXeE0wSHp2NzVvTHg0?=
 =?utf-8?B?UXIxL0hKOTkyMXptZWxhS0NDeGpMQ1I2Ukdtalh0U2NEamNrQWdvSHBkaUpH?=
 =?utf-8?B?SG1lbm4rU2pvUmpZVjFnUnZOQW5uMEhESDFSdDVKK2NjbHJsREhKdHpLYXdN?=
 =?utf-8?Q?E7D/shKdX19c0SU5OwnZOwKZRc1iEh9C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWxyYWhtbzlZWmZhUTJML0dGWm91U3ZVcDlEcGxldy9sdXRBTmdWMWpyOVVp?=
 =?utf-8?B?eVpCdk94SGdQSGpFaTJFVWJwTjNNdnJWci9aSjQ0azRacjJQTDkvKzh3a0FG?=
 =?utf-8?B?VVQ3NTdsVzhHQVFLZGhxYm5vTTNvWWx1TG5TamN2R0FkMkY3WHVpNWlXUG9E?=
 =?utf-8?B?L2JpbHJGVzRkaDM0UHBSWjgrRWkrVDk5VFJNcGFvWXBrMGN1bXhUd2JxUVYz?=
 =?utf-8?B?SSs3SlAxK1JBS2VvcGdHZy9seUJWMDlySXNRYlUxTkgyQktGUDNwYnExTEcy?=
 =?utf-8?B?M05hMWMyTTBwS1F4VTJOdjVxOWsxVU16ZkRMeVdBbjFYOWVHazhxU3NrdXVM?=
 =?utf-8?B?YUNHTXlLaVorQ01UUUovNmJMdGdDYU96SThzSUhUbHVTMHo1TmRGamVnSVFY?=
 =?utf-8?B?OHZVTTA5Z0xjTzlMQW13NkQ1S2d6Q3hBZk5ma1Z4M2JiamdMUTFiMlhHSk1W?=
 =?utf-8?B?Umd6SzN2TkU0d3BXRnA1eVRJSHdIM3hCMHBLV2pOYmcrZkoybVUzSzNJSXpo?=
 =?utf-8?B?NWJmVHRDVVJlbkFwdlY5V0ZrM2wxSmNFbW5jeUlRZEtOM3hkSGk5SEtFRmN5?=
 =?utf-8?B?a3RUSGFZaW83K05nTDFZY2VyWUFNVEFFNDhib0phL1JONlNvWElNdC9hODRJ?=
 =?utf-8?B?T0lUSXQvZGtWVGtkdEVSbU9nbzB6RENtcTlhMUt3Nnk4dTYyZjA0djg0azJY?=
 =?utf-8?B?bjNuTC9JYmxJd3o5L3dLd1A1L1BTaWRSNHF5Q04xc2l2QlJGbkhjMDFtZjZv?=
 =?utf-8?B?WU92ZFhlcjU4M2dZZWpPVGlGekhob0F2dTdYdk1FQkRpTHFRenNuc3NMN2w5?=
 =?utf-8?B?SFpsTVNpamlJSGZtUjR1TWFucitpMlhuSFJsQTVmek8vSXZJb3ZJWXkwcitu?=
 =?utf-8?B?VHRqUnNHS1JWZ3RUQlJiR09UNnBTclhKTld0SWovejhoZVJYWE5raWh0b09m?=
 =?utf-8?B?S0R3MVFwZmt4OTEza0lTRG1pQWVSNncvWnFQcmIzOGQ1TWxkYk1zM1VKbDly?=
 =?utf-8?B?bEFFdnkwVnIxeGNtTnFvZUMyVDFmcGE3V2xzQUNPaGNYWkJWWkJwbkdjRGhi?=
 =?utf-8?B?ajVhRXR5eUNTdnlZbk1CZk1MRmlRczhxVTZDUkx5MVhnY25pMHZCcEFicVJB?=
 =?utf-8?B?Z3JsTjFSODFJQkJDQW9POWRxaWtzbVFmazVCTWNDZGU0SFZRRmhHeVdZMG5H?=
 =?utf-8?B?NDdiSXVCZlFhais3SjFFcGRkWEpoUEM3ZzdLUXhwMitHQlQvMHhzWG5JeThC?=
 =?utf-8?B?dlZ6dFhQY0dhdEdsbmlMdDIwWjN0YTRtVnh5YjgyNFRET0EyaGN6M0hDQ3hl?=
 =?utf-8?B?RUNBaDRmajdYR3dQZDNwazJHYWtiQjNKdHVFVzRNRkhiMmljVk1SNU5pUUVp?=
 =?utf-8?B?dGNQTTlNMWxYbGM2WXcwNE9UZmcwUHlVZGJReDRNMDFBdDBYajErNFZabUtB?=
 =?utf-8?B?eEtWWnhZVTVSTUxmUnBIMnZ3MmhHdExaWmo3UUIySTYycVkycTlDOHhPOUxW?=
 =?utf-8?B?MkZNQW1hdEM5RHBGcHFzdFNoVlp5akw5UklCWjFvaE5hTkRJTExJVUVVM09G?=
 =?utf-8?B?Mk9zcUxtUHoyUk85RG9oUnNHUDN2YjR6S2lvU2dhMlIvdUlSQ2ZSY29SMHVS?=
 =?utf-8?B?ZnQ3V0MrNnJCUlkxNmtRM0ltbUJzMXlTZFVlckRqL0FCMFBVQnllWDRjT3hP?=
 =?utf-8?B?MHFSTHkvVzN6UytXNDdvN1ByTjh2V25JVTZwSzgyT2JXLy9FVkpUVXZNOFVB?=
 =?utf-8?B?VGV3c2FMYnJWUEdxMFlxNkVtTW1kbkd5RnJRVHE4UDZEUXVwRmppMVgzWEd1?=
 =?utf-8?B?L0liZllVbkp1OG9UZDZISGQ5SDlUOW5PRDYrbFpmUVZsZzhvZWlGN1RobzFI?=
 =?utf-8?B?OUxOMVloVUU0YlE3VjN6UytnVm10V0xIemNJYmQ1MHIxUmFseDk3N3JVL1k1?=
 =?utf-8?B?VFNDaDFxR2laa2FtS3dSeVIzQmZYUGdUZWhCYVpCck5TOVZVUVB0djZkMmk0?=
 =?utf-8?B?eVFMMnV2QllJWFJNL3JTd2Qrdm15Sk1yNGl2bW5ZWUVsQXdzcEpnZmpmYjA0?=
 =?utf-8?B?TE13S2JBa05XVEpkU0RtOTY5RmVaQyt6cXdUOXBzUDBTVm9hWHp6ZmtkK1JK?=
 =?utf-8?B?UXdUODQ2UmlKODNaVHNIaENsTlRPdlNZTXFwQ0RlazJWdlZMTWl3QWJrYW51?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48b207c7-6d25-4b27-4996-08de13015cc8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:29:30.9017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KHdVBkh3Ypkx5wnL4JosFNfBvgrz6ddnWK5MGm2d9w20t8jq7O0zoPZOH3ut1oM6LDSDiLKQH/WbVf6wN9U6Q1eK3GrTZgxkmuqIPQ9yc7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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
> Relocate intel_vrr_compute_fixed_rr_timings() next to its
> VRR and CMRR counterparts.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++---------
>   1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9179ad53a2e7..99e10943368d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -246,6 +246,15 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
> +static
> +void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
> +{
> +	/* For fixed rr,  vmin = vmax = flipline */
> +	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
> +	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +}
> +
>   static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>   			      int value)
>   {
> @@ -308,15 +317,6 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
>   }
>   
> -static
> -void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
> -{
> -	/* For fixed rr,  vmin = vmax = flipline */
> -	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> -}
> -
>   static
>   int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>   {
