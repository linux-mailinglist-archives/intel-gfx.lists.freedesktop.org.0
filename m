Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C184696BD98
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443B610E7B7;
	Wed,  4 Sep 2024 13:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CAetw4qM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB4F10E7B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725455018; x=1756991018;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8tC8QiYzg4eIAYfi/OuHBLxpyLAsBMeXUZPiliw+4qM=;
 b=CAetw4qMptW9R7+ldjnhsw1kavNDTQTEIEZcsiwKQfJtE7s/lW/vqMY/
 /WgQC/edRRLXh09FnwXjEgm9UuyiQxieGOUphb1fLNuMuspCK3p1wX16O
 wReQLYPBpguSufMuJagAKs1lLxx4Oa6xZTHqZ+Xz43WgsPres4pWxWbsm
 xuU3sjZkM/+KKYRP2gcdxsNFmEqrdPODgzdFEh6HkxI8/5aG2/cYQe9AH
 eC2V3oU80pncOei/EqKpxIKrrleMlBUkgaP1MEBEMSwGW0RDeRt03sNrf
 9r7hQfhNXNaR8qBHuYMhuqZir6lwLNI/tblKqtrmRezNENjNbJXOelrTo w==;
X-CSE-ConnectionGUID: +G4T9tokR+6qus9XtN7Ieg==
X-CSE-MsgGUID: +if0W1bTRmerDooPKrRxug==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="41585341"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="41585341"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:03:06 -0700
X-CSE-ConnectionGUID: s8LFcyf9Qe+mg1dV7coRTg==
X-CSE-MsgGUID: 5GvF8eEOSwy5GdozrfzPOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="102676409"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 06:03:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:03:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:03:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 06:03:05 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 06:03:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xNa2gO3OY48GUsmL6PBR3t1RxiDc/2Kr9Ny/QHStVOBJtRJvTGLFfIkI4BMoH+P5ZvBV99H3O7L4gzDT545LNBGEmg9PG2zKdEXl+HpC7LxfBxF49Z7wd0fqOGuyvaJQp9CN71F+E9EbDicV6hsvPIoKyWHjGZJY4P+RhjNNt65KHt6GJ89wxG4FhbD8BethNQkChkGIz3Z4+IRKevQD64nhjoCv3YCRAT6mDqY8hTuMMIsTz47eT9BRHm9s9Y10VTEiv0F6vR7nCOe53qK8YGD1JYkQ9O2rI3wZ3EGQSnlGS4lvMRdL2Zp1wexnIZoQRWfwpowRcX1KOx63yl2GSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Tp58wtMHrIRJLL8LL0zNLyMIIxPsYu5MLkcdi7A3eU=;
 b=fcQ9WQGvluyEE5Fi9CBEZoCjj61yKlNSKLaMsXAz8yTsme78+OJoSJv//5blMJ2sQ5xkp6o+10vBF8hvwyI32QrWw9KdRzRxzcFBVo61WQx35/JkwDMrGzdU0nhKiKlGNtOMfzrhbN2o9/Q3HW5wxSCf73LHhmXo3a80ufb6aAomNFAy6vlDjlA8Ok5vrMg2tY68mtNhgdO37+NbMk7wwqCPzICM6RoKFtcDO7PJ1cMBznlD6f21A5Uda4zlGCDkjAVFm6wnXWhNRupqOu6iwXw/KIi2EEDyeRlj25tOO+SgOw0U6wT4PKQTeeWiON8ui2CQaBCrX3rRhG2HVnc37Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6084.namprd11.prod.outlook.com (2603:10b6:a03:489::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 13:03:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 13:03:01 +0000
Message-ID: <83b4eb28-2da6-4f91-ab36-7981b6b4381a@intel.com>
Date: Wed, 4 Sep 2024 18:32:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/13] drm/i915/vrr: Handle joiner with vrr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-12-ankit.k.nautiyal@intel.com>
 <ZtcJU0VaLeDthGw_@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtcJU0VaLeDthGw_@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6084:EE_
X-MS-Office365-Filtering-Correlation-Id: 550b55f8-9d19-436b-13be-08dccce1e7de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bktOZHBqTGl0RlNjUi9odmE1RTgyaVdkZG9CS0YzN1hDK0dxTkRSU3g3VDJr?=
 =?utf-8?B?dFdmVTZGeXdmZXlBL1o2cGNRQk9Pb01OaUJrUHNxbUE5cHdiSzY1QUV6VjZZ?=
 =?utf-8?B?TlJka0xPQzlzbjl1b3BIanhYM3VYVUtYUE94NmVXMEI4anRaMmhpT3pSQ1lz?=
 =?utf-8?B?N3JOVTBWVTJ3dzNCaE9TbmNpNzMxL0RKQUxMSTVEL3BTMmd6TzBmd0l6ZDhM?=
 =?utf-8?B?c1pqRmtuVG9xSnhQeU95dFBJamExK0VyY2crVlV6eHhab0dJbDVLNExZL0cx?=
 =?utf-8?B?UU1tL25qUy9vVUc3MlhsNmwxdTFCdnh4T0R2b1d4V0hXR2N6dkJJa0hPaEdL?=
 =?utf-8?B?L2pBeWgxaUVDQzB3ejZwU09rbVM1VGorTUI4UDIzeFVIbGxFU091VmlQb0Zt?=
 =?utf-8?B?N3VCZzNyU2FPNlZORHJtN0NVek5Ia3ErckRocXdOSDFaMUZjdXRRZWR4TDB4?=
 =?utf-8?B?VjVqM0JZclFDSEtUQjlYWDNENzl5OTNEZFQwb2NrK0hvWCtJT1VBU3p5SnUr?=
 =?utf-8?B?c3k4aGZFajI2eElxRk5YZVZLd1dSam8wSTI4N0trZlBPUGR4V2oya2lGd21q?=
 =?utf-8?B?ZSs4RXRhNE1nYkZ2bG51bjZvUDQvUnhCRmptOHhTVDdyMldzZnBWQ2JGQ0Vn?=
 =?utf-8?B?QXhUdUp3VlpjazFYbXRJSVlrdVhhRXhiZ0kyK1BkQXUyRnZmTVNKRklxMXFr?=
 =?utf-8?B?NGNXUzRnTC90R0Q5V3lYTFpvRkg4bVpZNTh3b1NkSWllTldoVjRyc1poQXVJ?=
 =?utf-8?B?UnJIMFV0R2xCd0NrRWVQamtoYit0cTBkbUhRd1NOMWM3MzhtdUNHcjJoZm9u?=
 =?utf-8?B?Y3dSUFVuLzVhY3dUbzhUNEp3Z0hYQXFxbXRUc0NOdnJ1VUlUVW5MWVRjL1Zj?=
 =?utf-8?B?enExOUdDcVN1WmpTcG0wR3BTQ212NkVNcVJXUm8yQUFuQk5IamFiTDNzV1ZP?=
 =?utf-8?B?eFNRcEVES3hkcnBaQVlxcFY5LzFLWlZzMThBVlRXR2x5bHA0c2loNDJVdDJj?=
 =?utf-8?B?NVJPdFRXSFIyc3FYVW41dGl0blBoK3YyQTVqVWFWZTFOUmtrYjREOXJsMW4x?=
 =?utf-8?B?TnhVV0dwZ2pMTFQ5L3ZSdVZCU1piQ1EyZmFZVFdHOCtYMDR3V0NEaXVCbmJ6?=
 =?utf-8?B?OVZrRnVBTVF1c3NmQ1lGbW9sR3JYazd5VytiR1d1NDZrZ3U2aEpkUjJFR2xQ?=
 =?utf-8?B?V0d0TW8xWnI4RFFTTVQremtBSkRXVTJ5YUpmbmY4eExhSW1nTkV1N2s4R09Q?=
 =?utf-8?B?Qk00NzExM1VtdkR5N0h6cDIvUHR3WWpDcWZVekNGUWlNYU9Ld0RZUVBSMUQ0?=
 =?utf-8?B?SnYyaTc3a1ZKT1RYaWlwbDNJMDhUaTZPYkczNGc0ZXhhTitzU1UzY0xDWHNu?=
 =?utf-8?B?NVY3d3BBYzFpQjJrU05CdWJ3UGZXTGlXbTRSTGVEQ3dvaHdBcmhhQTE4MUdt?=
 =?utf-8?B?OTU1TTBDaW4yWGJmV0kwbXIwQmhSNXByem1OYllwdEY1SnhYczlYZTZJejAy?=
 =?utf-8?B?VDkvSWxWdE1Zd0phNHVldkhoUVBpYlh5UFVXSmlNZVRWKzRVV1EybG5nOUty?=
 =?utf-8?B?dmd1UDRyajA4WmFWNXduaFFKazA5WlBhUVNHVGJWSHFQRlVocFdFY2hKa3JH?=
 =?utf-8?B?MVpER2JlQnZxZm5JWUNWL3cycVlBdlhLdTBOWW45SGZpajdiMmR5dDFlVHVs?=
 =?utf-8?B?K0xQcmxlZkxySWc4MXhQcUt2WFJSaHk5R2tsRHlDUGNzSE1jRXlzYkFLWndi?=
 =?utf-8?B?bjNhMkwvODhZQmtqZjZXVkJSaVUzNHZFUHVSMUNIYkxXL3U1UUM0c0VVeTFj?=
 =?utf-8?B?MklRTi9KTWswUEg4MEZhdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGR6M2JzVGpQYXQ1NnZGNGpzLy9kNUtFOWVuMm5UZ1Bva2JMdUNIcHdGNGVr?=
 =?utf-8?B?QjBtVXN3dGF4UExoRlhVbVRHY1RWSUZGbGxXcE42cEJyZUJEV1dpaGQvcmtK?=
 =?utf-8?B?WTE3VUIvRDVhMytuSU5TaGI4K2gvZDl1SjNHV3pzZmRpbUpPOGZjMEpKT0Rx?=
 =?utf-8?B?cXlLNm9nUXZlK0UrVVVVUXlnbklpOGF1dGxmeTAxRHUxcGJzaHY5OW9aY3RP?=
 =?utf-8?B?RmxmK21rUDFGMDJsTFNOU1hadTR1U213akdPc0p0cUluVjc0UjN2ZEFwVUt5?=
 =?utf-8?B?V05LNFNmYVo3ZldtTWlZZDIrYWZxZE04QTh4bjZiOVVyNWgyZ1B6N0xLOXNR?=
 =?utf-8?B?THdGdGNMVjlEcXFTaEdpVTlsVzlXN29URnNJN2xaNE15eVBSdlhuNk13MHha?=
 =?utf-8?B?VER4cnFPeGJjS3FVVUlyMGZWUXM1QjBCY1JLbGhiSmk2WnNvQkt5d3ZjQzdN?=
 =?utf-8?B?UFpQRXpSM01qUnlibHdYSlFYNmV5UDZJNGRURnd0RXJ2d0dDdkkrcHQ2S2hO?=
 =?utf-8?B?WVpBT2h6S3VadjJHNXZxVXlJb2JiakwrL2tuemJlalMwZWFPaTBYTit4a0N2?=
 =?utf-8?B?ZkI5NlU5dnB3d0g4NmEySlBrRDBlZlYwemdEZlZJTjFwRUVJUlpKRnRsZW1a?=
 =?utf-8?B?R1g1K0VVcmhDNVR0U1VFNkpCaDZiWXhhL2tFdnRheWpaNVJQWkdQZkVWbVVD?=
 =?utf-8?B?OW5JQm5WcWlhVVgvblZmT1dnUXh6bGowTlkvdVdERFhyYU1Ba3piUjQ5ZHFy?=
 =?utf-8?B?anp3K05OanhWSVpIWFFaT2lqajRzb1pMK2hiR3dVNHEzZTdjSGY4U0t3Vk1x?=
 =?utf-8?B?VVNRZUN1Qm1ObjNQdUE4QUhkYU80QlFKdm56biszaU42VFcxK3J5NzZlVUxE?=
 =?utf-8?B?Wit2c2Y1R2txeHhQL3hvalBJN2RTb2VkeW5LWjl0VU5oOFRuayttL0xSOU00?=
 =?utf-8?B?NmZVeFZ0UitXeHFkWnlYV0FRMzVYRzllcnVhVkIzUFIvNjZqYWF6TkpYcjda?=
 =?utf-8?B?Rk9ZK0ZuaW5ma3YzbVpPVG1vZ29nNHFnU20yVTJBdlpyajJoZEJacnU3S0Zh?=
 =?utf-8?B?SmRTNU4zNm01Y3pySWl1TFlHMEZtS3R1dmxnemE5cmdXSWVEeDZtUjB2elQw?=
 =?utf-8?B?eE9XSDBxdmQwdWhsS3ZaVGU3Q0FFbVF4KzN2dnVhOW1iN0QvM3o2eS9hKzZN?=
 =?utf-8?B?bzBrZ0pweHFLZk5MR2trQ08wNFV1ckM2bzgrUXdLanJjTHg2VTh2VmF1czN4?=
 =?utf-8?B?R2NUdkhNcVgrOUVGOGNlRUwwVEMxbm44OVMxSnZ4K3YyNmlJUUR6MGhSOEhQ?=
 =?utf-8?B?ME03dDdrMndsV1pKVmVjV01DSmpsKzBIZGdCMTl1dVcrUmk5WUVRQjlJdVRh?=
 =?utf-8?B?RmVvZForUDl1L2ZvczZDR01RYlg3dWI2Qm9rOEJTWG9VOFJkaUU0VWNSRlRC?=
 =?utf-8?B?QnFjOFdPT216UVZNbDJrcTJxb3ZlLzhSVXVyclBWSTdaQ0kwQ044bXA2MjBY?=
 =?utf-8?B?MXdRVDE0eTZocUpSc2FVU2NCQzllNlJDVTJpeDdkeGpUWFpyTU5JYnNJTFF2?=
 =?utf-8?B?M1dlNFpvUFdwQVJsMm91Q0N1SVVYMVpMbGVZWkZ0WmJzcHN0L2xlQmFKcHkx?=
 =?utf-8?B?QWZqR3ZmTVNmUEpxMk1FZjBtSEFsM0EzS2haOXRDVTh2cDJKOGdpRkIvMzVx?=
 =?utf-8?B?a0xLa1lYemgyVXl5VjZ6b05OaXRKOC9ibUVPWGFSK0dSaUJNU1UydkZlcWI4?=
 =?utf-8?B?SGJYVlpPcmNvQmV5a3pTRStIN0tIcGovN0plSksvRHRsck9Ua1QzRytoVExR?=
 =?utf-8?B?eDVrZXVVbEpYRW5WYjFwYWhQNlZ2alo4VVMxQmtFZVc4SmtaRkUwUUdFNHc0?=
 =?utf-8?B?MXBkb09IRFhZd2FzUlFnc0hvdGVtVGlZUVE2ZTJBT0hTeVN1UXlJUFQxSmRs?=
 =?utf-8?B?d24yeVFSY1RhRXE5QkgyWUI5SkpVS3ZVQm5EMFB1U3owRzEwMDY4UEtZMTRS?=
 =?utf-8?B?Rk1GMFoyWit6L2wvRUN4ZE5IVFU5Q2ViYnQvQ3ovN1kzdjVQVFlPWVBxOTdC?=
 =?utf-8?B?a2ozcnA4QTg5cXNhc1crMytPTGFnWHRETDdERXFUWnJaTSs5b2xPQ0VsUzJz?=
 =?utf-8?B?M0VtR2tBby85SHFSYTdMcVRtc0psSW5lSWVoSFZDOW5VNytpTE1IYzlwZk9p?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 550b55f8-9d19-436b-13be-08dccce1e7de
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 13:03:01.3258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QfUFTs8OqbLiJ5s4nX9UiDgGrT6ZuFlBs8X4iMP2LB2gnpWSBZqtAGPDt9WcEyMRYobgN8drpJmUeCLrLG4ajBK5Kt01PCsl8rkHqpY4ts0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6084
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


On 9/3/2024 6:34 PM, Ville Syrjälä wrote:
> On Mon, Sep 02, 2024 at 01:36:32PM +0530, Ankit Nautiyal wrote:
>> Do not program transcoder registers for VRR for the secondary pipe of
>> the joiner. Remove check to skip VRR for joiner case.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>>   1 file changed, 12 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 5e947465c6e0..e01d4b4b8fa7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -169,13 +169,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	const struct drm_display_info *info = &connector->base.display_info;
>>   	int vmin, vmax;
>>   
>> -	/*
>> -	 * FIXME all joined pipes share the same transcoder.
>> -	 * Need to account for that during VRR toggle/push/etc.
>> -	 */
>> -	if (crtc_state->joiner_pipes)
>> -		return;
> There's more to this than just sprinkling the secondary checks.
> Namely, we need to make sure the timing changes happen in the
> correct spot in the sequence for both primary and secondary pipes.

Yeah, I was not very confident about this.

Whether calling intel_vrr_set_transcoder_timings, intel_vrr_enable, 
intel_vrr_send_push for each joined pipe in reverse order will work.
I think currently they are part of intel_pre_update_crtc, 
intel_update_crtc and intel_pipe_update_end respectively, but called for 
each pipe not in reverse order?

I am still not very sure though.

Regards,

Ankit

>
>> -
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>   		return;
>>   
>> @@ -272,6 +265,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	/*
>>   	 * This bit seems to have two meanings depending on the platform:
>>   	 * TGL: generate VRR "safe window" for DSB vblank waits
>> @@ -313,6 +309,9 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>>   		return;
>>   
>> @@ -336,6 +335,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		return;
>> +
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> @@ -364,6 +366,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	struct intel_display *display = to_intel_display(old_crtc_state);
>>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>>   
>> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
>> +		return;
>> +
>>   	if (!old_crtc_state->vrr.enable)
>>   		return;
>>   
>> -- 
>> 2.45.2
