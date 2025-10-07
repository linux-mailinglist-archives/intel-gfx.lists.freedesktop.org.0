Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD75BC0432
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 07:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C1F10E51C;
	Tue,  7 Oct 2025 05:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+BI7MAK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7275F10E51C;
 Tue,  7 Oct 2025 05:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759816378; x=1791352378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MpWgleqTxBZ2NP7AznLB49ZkaCg1w7JpvOOamW5X7/o=;
 b=d+BI7MAKa8Yb6zzsUs3tyD4RKMk3PRlrqvJ7gE1+x+1tKMu9Ir6y8uan
 g6kLk0uERxju2EIS7N3y+zZm2hLxkDDd3zWlJgompkg3zEDwm3IS2C1M5
 ZCKYn73Xq/GYXc4GX+TeZSEs+tbBXAAjYhQsz2FVtdbp9TvRnReB+wv59
 qoCVV6uoshh5u4+sP3dJSvqVM6s/HtdMFEAJamAEoreo9KIUpTTOrdSiK
 5bLEpPUkfO4krNbit5d+wf1Z1rJXGvbEexU7618vYofr5m8qU1tWhilT5
 9dm4UKxsnRpGf8IHu+ePxFQM6xGeRPh7W0mnVylY7roOQQLBHvKNIQkn4 w==;
X-CSE-ConnectionGUID: wFb2GoZdTuaqcOjHjDtApg==
X-CSE-MsgGUID: ug7Zn94sRxq7ZWjk/DwQ7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61702557"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="61702557"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 22:52:58 -0700
X-CSE-ConnectionGUID: wdEZsV86SOqsrxsxapUbbw==
X-CSE-MsgGUID: LED0XuL2QXKwMuD67lBhWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184433780"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 22:52:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 22:52:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 22:52:57 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 22:52:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWfJ11GCq8txeOBPbRLfIESBHNXgQSeyf1113/TjIrIM3kxPLm23NLJedjQWGWz8r4HfGJ2NlLndV2R2n3FbIjsHVWLnFXiXOWVWF1cclV4NBb7Yg/QMtQSVC1yeyUCR5zFFq370nHFB7UkTKaTTaBdTuoMRpi1E+G3szcCLG/mwEbmAxa4swIfcmds5c8Xu4o8UNmptbgQg0e6Izyllor4CjB3rAkuUkQYbbVzv+QquMkc7g4uIA1WDoY5yvzkZ2/BEh8A0FCjowl8atw2cTqUTZ7wJGpsXbo22vTC1AJJTXw2JsM7lH0Tn8b2PNVW6JFQDqJEWE8aSMLXLBV4NDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BIBbMUxmriPFtXtA254snrEOsWZhNL+LvNHfQTmiAI=;
 b=oYk9+rbdOZJ8UsK/ODMPLRltdoTH33rjttlBXlIKmj7sPBewknG24dlg2cHBGsEOCdbv+4yxEMMZVM295Rr1BILRhUZUxrwOf0CTdaJSCPl5XEonuRbbyj95qP85OPSsYjuZ1LjxltRBJTSXEOBYNDfgdZ/VZsBuNoSP/qseMkKpzB2I4zyw+gNc7HamyrtzCW9uGyATsiZxVYK0jv1w5qRJAj2JQW0fJWmwZB1opWJCU5v4cn+M3MvnJEqj6F7Pq5pwD1EoZUe8GYYh236TejP8GNAYtKDshDue5f9o4G2QXf2K5t5gD3cMouszCEi8bYpnYuyHeklsaNSCyfqDMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF4B1ECA5EA.namprd11.prod.outlook.com (2603:10b6:f:fc02::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 7 Oct
 2025 05:52:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Tue, 7 Oct 2025
 05:52:51 +0000
Message-ID: <f1a8c1bc-6977-4ba4-9ffc-b1a4922d3f43@intel.com>
Date: Tue, 7 Oct 2025 11:22:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/16] drm/i915/vblank: Add helper to get correct vblank
 length
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-12-ankit.k.nautiyal@intel.com>
 <aOQe_BRj8-dQmKGO@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aOQe_BRj8-dQmKGO@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF4B1ECA5EA:EE_
X-MS-Office365-Filtering-Correlation-Id: d9259d69-1c0e-4298-6b62-08de0565c032
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REZHeEt3MWJBWXAvd1BraGprL0tvODU0VWI4aU44TElUZzczcEw3dC9qTE1W?=
 =?utf-8?B?K1U5SkVjY2twcHFPd2pKSW1zdkQrdkNKdFVub0NUWEk5ZEh3Y3ZhYjBXOC9M?=
 =?utf-8?B?T3BYNUQvMWpzdDEvQ09vdnlZREV0cmhISUtWTDV0UmcwanN1UkxtZTF3OTIv?=
 =?utf-8?B?aDNtL1FtUEFnT0F3Y1cwOFd0UCtIM0pmTzRONEx2UTZsaU1FS1owblZMWEhX?=
 =?utf-8?B?MkVwRFNQaUtvUDhneC8wV1dUZUVqMnB4aFM3WVFRWCs2MGJVSjJtVjRNSUZo?=
 =?utf-8?B?a3VwSnBJbEl3MWIxdkJsV1ZjT1o4VlUyWitjanE1cURJR21xTlNPWUJ4N2wx?=
 =?utf-8?B?Q296Ni9iU1FSL1IvVXlpdlBURDF1Z3pXeVl4VnJDOTFjbEJVUEFXcDVyTk5H?=
 =?utf-8?B?TlZhV2R4Z3VDMk9Jc3N2dXBRdE1LUjZIUHVZSk5jenpseDBQV2RSRDljWDEw?=
 =?utf-8?B?R3RVK01hTHZ0TXlCRmpTUTFjZkMyelgxdmlKMk16WmgxVmQ0WXVBLzdicVh5?=
 =?utf-8?B?ZURHUldNVm1SeGZnTUczeWk0QWYxSjkxQTdpdVVKNERRS3QzV1dSVUZIOTRC?=
 =?utf-8?B?U2NzQ2NqNDFFTTJSbWlNRDVMRkJYUVR4OFNIZWhDUDIrRE8yVzJ4eEY3NVpt?=
 =?utf-8?B?ZG90UGE5M1B6eURxZlhnTjlHanFHbktLYkFrKzhISmdHMDd1SklhRFo3L2Vv?=
 =?utf-8?B?Q3VsVE1MM2JXWDVaWVRJTlp0NWNoKzA1OGE1MlpkVXlIelhTeXhqWjNrYWlm?=
 =?utf-8?B?aGJLWTRsM2U4b1p6VXZ6SFZXdldXOExSUndqanRyQVMzbXBnR2VXaUNtdFJR?=
 =?utf-8?B?dVZBY2hiYk5nNTVCbDNmV0lwN3M2WnZQeG1uc082UnlkMkx1Mjl6TnhManRo?=
 =?utf-8?B?OHlZV3dVb1ZqYTdVK1ZoUi9KTjdWQzdrMFMzRHhNYTcyUG1TdlNkRG1zSnY2?=
 =?utf-8?B?U0tCYkNqd05hdkxNTUxPVW5keVYrdENVVHZPS0FFaUdhZXJSUUlkdHYvSSs2?=
 =?utf-8?B?MGVrVGNnQ3g5eG45TU5BTld5RndXdHA4OXluVzgxS1FSOURSeU9sZkxaajd0?=
 =?utf-8?B?TlpzOGtCVEp5eVdTNzFKWTJidWU4UTNXWWhnRWI2VzdQeTRJOFBCUVpRbm94?=
 =?utf-8?B?UlFWc1IwSUtZZ0VBRjRRbmtxamFmMkhnVFMzSHVwbUtLcGlZL3Rxa09KaVhm?=
 =?utf-8?B?d21DT1pMRHhaQXZDQWliT3RIckJiU05Qd3JpQ1dCc2JCY3lLUWo5V0RLRDVP?=
 =?utf-8?B?NG9hRkhqZmVWRVQ3Y3RZenBEMjQ1SncvYXFqT09xbmhVMk0xUVFHVzl2dTdy?=
 =?utf-8?B?Nm52MU5rdE1CYVlyVHpwbGxkVnlvUTZKZzNERWxaR0Z6d3FTeGpPS01wK3J3?=
 =?utf-8?B?V0I3b25WalNIbmk4cytzNExjMk0wQ0RxWjVUL1IrUUVEWFdWb3hxclZWTnd2?=
 =?utf-8?B?WWRZbmVxcVBWck13RTNlK0lZanV4MkRHbnJXRFE4Y09qaFFlQ2lONlFweEhQ?=
 =?utf-8?B?eVBBdUJmeElhcEpXUWZNcEVCRHl5b3lUZE41OEY3WFZXVXdob3VPTWIxSXJq?=
 =?utf-8?B?SU5aQTRRZEdndlBRNjI4M1dPeHYrbnh6YTVkbEZLb0o0NzJmRm9GRzdaU1Va?=
 =?utf-8?B?a3BzbDRnYnlaeHByWlZGekhZUFQ1ak1jUzNac0g2Q1dhTWV1QjAwOGJiYWNJ?=
 =?utf-8?B?Y3ZNSTcwQUR1UXFUS296TCtQaFNSTWRLV0FjaW8zZUdDMmVrZ2dPOVNyWlFi?=
 =?utf-8?B?N0NibysrUkNDVEUybi80cmMySDJJQkNIc1JELzNmYnVRaEdEWmRCZGFHc1ZH?=
 =?utf-8?B?NGhLaVI3NzJLWkNLUE9IZHg4SjhxUTYrYWQzTHlNUjZnV0VxQVFnVmg1cllj?=
 =?utf-8?B?em1WVFExUC9yeVFTR01SMEVTQ1RRMmtuMEpIU3lpVzA1M1VYQlpUUXgwMHZW?=
 =?utf-8?Q?/3D95+8YkL7cx+B0DyMo71f1cmmOqcGw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnRnSld6UnpnSWlhdlBWT01yRHFyb0JQWTd3L0xhcWhwUkhZWVVNNWxsa3Iw?=
 =?utf-8?B?MFI4TzdxbStFVDFZMS9JZEk1eDM4VCt3NlBqQ3JDdHk2Ykt5cUwwZXZJY01s?=
 =?utf-8?B?UWpFUjlMTGRyVVVUcGs4a3A2MzNhcVhoRlFzcXBtYWE1STAxNkx6VGJucHEz?=
 =?utf-8?B?V1ltUXZLbGJWVVZNanc0ZmMzVzkyd0tmaWVZYnBFaDUvK010VFhmQis0UVFF?=
 =?utf-8?B?a2N3czRLNHN2VW5Qd3RpcFlvZU82Nml1RU9nQmJqUHhHWDVYdUZGeDZLQkll?=
 =?utf-8?B?WmRIbG9yMmJIb1FmY2RNN293WGdHLzI4NGdOeCt1aU5EQ0V3Zk9TcFRxZWFi?=
 =?utf-8?B?c1FLWGlnZ2o5M3dmYXN1aHRWbytnTGkzVDZNQUFxc21jVjZEeWU1REMxQ1c0?=
 =?utf-8?B?QlZiTUM3M1RHNEF6a2tBN1ROdUZzSS9SWUljek53WWhKc05wWW9mNkFsakhI?=
 =?utf-8?B?TVh0UUJOVkdRYXloMmtBU1UzMk1rM1owN1N2OGJJSU1zS3NxQkJaUFd4Q1ds?=
 =?utf-8?B?QVkxWXJCQ3lrZU9raUUwd1hPcnh4elpOT2dGc0Y4STQ0TVJqTE80d0cyUys3?=
 =?utf-8?B?UWtKM2VaL1lQL2JDRnFua255dDRIdXFCdnVPaEcxb3hJbTdBQXp1WU5SSzF0?=
 =?utf-8?B?UVp3OXk5SWhVelZZMG1qMldkOGVRN0hKbmo0ZVY2UyttbEtQK1YraXQ4UzJR?=
 =?utf-8?B?ZHhzWXpYZTlKSFI4T0tjYXRFUEdPbG1aUXB5K2U2ck5RdiswU2pGK1JTS0Z2?=
 =?utf-8?B?ZFB4a1ZWYkM0eE9xZDFsNElDdlp1VHJ5S284WENrVkFvY1VKVkxlQWdTN1lu?=
 =?utf-8?B?em1lUUZtUzIvbDF2U2VGQk1WemNYOEc0TTFHK2ZqTnNvWlRqcmVRV3VJNkxL?=
 =?utf-8?B?aysxK25lRkxQK29maEpQN1R5a0dhL01YZUNOb2d5MHhnTGtvbjhGUjZtQnZa?=
 =?utf-8?B?blpNS0lYSEVKQ1U3c2lxMXI3Q2I1Zkp2QTljMVdYRW9ybGUxeW9BWGZKWnlO?=
 =?utf-8?B?UHo2aHhsa0NWU2lSc296MHoweTVIK2J2Y040R2g0eTVHTUt6TUZJNUEvcWtu?=
 =?utf-8?B?VGhleEszZHM0VnVXQnl0TG9oVHAxVjJBRjBRcGVNUVYxZGtzQ2oxVG85Mkht?=
 =?utf-8?B?UCtabmt3OC8wUThwUzc5VnA2TnNKMitzbVd4cUhkUGJWK0JQbG9OWllBVUw3?=
 =?utf-8?B?Tm0vTlQzeEh5TmUzRktCelNKQVNvc09RMHlEQjF5TmlEQ1pTV21NL214K2pZ?=
 =?utf-8?B?dDBLdUEyYmZhTnN5ZlFhRlIzRmphS1BLS3cwOXRtcWUzU1F2aHFhYlVrSFAv?=
 =?utf-8?B?VHZncW9JNzJnVGFNbjZOcTJUSmF1OXZ2eWFxNkRSYlRXZ3JxNHFqd3dOeVNI?=
 =?utf-8?B?VFc3VDVZcnI1QW1ROUxwdzFBb1hlbnd5RUV2ZElLTG81Kzh1Sk1WWW0rR1E3?=
 =?utf-8?B?dWY3NDRJYWpPSmI1Y1pHVzROcS9DcnZJWEdFV0I5TGhZNnk3R3V3KzNBRFhS?=
 =?utf-8?B?cFhPeGNqdFIvdWlBa2J1TGM2dHAvb0k1RTl3clJuQUFna3dSMUNIeVA5WWRo?=
 =?utf-8?B?bGJ2eU91NitYZ0VSV1g1cnVnUnFCUzdzZnhDVUQyYnNZQkRpRUJFVUxaTCsy?=
 =?utf-8?B?WVpCVllmZlFkYmpqZ2IyYTR5MTFVRjlJWHZKM2orZEJIOWdOSlFLZWNOdEV5?=
 =?utf-8?B?T3pFOENWbk83UzNEcXc5Z2l5eXZWTUdkWnZ4T20xSm84elBIcUhrODYvZzho?=
 =?utf-8?B?SHNuc3RFTWxLWFpzd1hUNkhYaEwwc1hKM3Y4cTEzNjVkeW00Ym9VTm9LRDBM?=
 =?utf-8?B?WmNWQmhQa3NVelIvM2svb3pJRmJSWlhPV0NIOFY5VndVSVZVQXJlQ3ExaFVJ?=
 =?utf-8?B?cU15a3JhazJWUG9HMTZEZFYzYk1DZVNSZHFGVDN0b2QvTUJmUWdHMGpVd25J?=
 =?utf-8?B?ejlzbjQ0ZDJjdUJSLzhLSWFkb1F0ZWo3enlZNVFlM1lrVC9jcCs0Tm1UNjJt?=
 =?utf-8?B?aDJYbk5yNUdKU1lBV3JFSEhLcldpUmVGSlpOV0trZENKd09xb1dGM1h3R0NF?=
 =?utf-8?B?QVNMZmFPV0t4bGdCWUFzSWhsRnBIYXNRS0hrR1BaMysvK0FVakExa1hyb0pB?=
 =?utf-8?B?RE5BUDhtOXVsam15WmRIcWxwNDlNdk5JTE9jL2J1MTY2RFpjRXE0RzFEL0xR?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9259d69-1c0e-4298-6b62-08de0565c032
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 05:52:51.5428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MWWyfqcTnwB62q7L4k5/RcMiaEZIJfWeRF0Y6Qe2IwNu892hQ1pnVYB2KkDMl4P5J0nu+nMq+8WSBqaM02AxDC21q2K3Onbx7OU+RrVP+o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF4B1ECA5EA
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


On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
> On Mon, Oct 06, 2025 at 09:58:47AM +0530, Ankit Nautiyal wrote:
>> Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
>> refresh rate case. That value can be different from the variable refresh
>> rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
>> different due to the extra vblank delay, and also on adl+ it could be
>> different if we were to use an optimized guardband.
>>
>> So places where crtc_vblank_start is used to compute vblank length needs
>> change so as to account for cases where vrr is enabled. Specifically
>> with vrr.enable the effective vblank length is actually guardband.
>>
>> Add a helper to get the correct vblank length for both vrr and fixed
>> refresh rate cases. Use this helper where vblank_start is used to
>> compute the vblank length.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_pfit.c    | 11 +++++++----
>>   drivers/gpu/drm/i915/display/intel_psr.c     |  3 +--
>>   drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
>>   drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
>>   drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
>>   5 files changed, 22 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
>> index 68539e7c2a24..ebbaa1d419ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
>> @@ -14,6 +14,7 @@
>>   #include "intel_lvds_regs.h"
>>   #include "intel_pfit.h"
>>   #include "intel_pfit_regs.h"
>> +#include "intel_vblank.h"
>>   #include "skl_scaler.h"
>>   
>>   static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
>> @@ -306,14 +307,15 @@ centre_horizontally(struct drm_display_mode *adjusted_mode,
>>   }
>>   
>>   static void
>> -centre_vertically(struct drm_display_mode *adjusted_mode,
>> +centre_vertically(struct intel_crtc_state *crtc_state,
>> +		  struct drm_display_mode *adjusted_mode,
>>   		  int height)
>>   {
>>   	u32 border, sync_pos, blank_width, sync_width;
>>   
>>   	/* keep the vsync and vblank widths constant */
>>   	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
>> -	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
>> +	blank_width = intel_crtc_vblank_length(crtc_state);
> This pfit stuff is computed way before the guardband, and also only
> relevant for ancient gen2-4 hardware. So no point in touching this
> stuff IMO.

Alright can skip this stuff.


>
>>   	sync_pos = (blank_width - sync_width + 1) / 2;
>>   
>>   	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
>> @@ -392,7 +394,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
>>   					  PFIT_HORIZ_INTERP_BILINEAR);
>>   		}
>>   	} else if (scaled_width < scaled_height) { /* letter */
>> -		centre_vertically(adjusted_mode,
>> +		centre_vertically(crtc_state,
>> +				  adjusted_mode,
>>   				  scaled_width / pipe_src_w);
>>   
>>   		*border = LVDS_BORDER_ENABLE;
>> @@ -489,7 +492,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>>   		 * heights and modify the values programmed into the CRTC.
>>   		 */
>>   		centre_horizontally(adjusted_mode, pipe_src_w);
>> -		centre_vertically(adjusted_mode, pipe_src_h);
>> +		centre_vertically(crtc_state, adjusted_mode, pipe_src_h);
>>   		border = LVDS_BORDER_ENABLE;
>>   		break;
>>   	case DRM_MODE_SCALE_ASPECT:
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index f7115969b4c5..ae6b94a5d450 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1365,8 +1365,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
>>   				       bool aux_less)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>> -	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
>> -		crtc_state->hw.adjusted_mode.crtc_vblank_start;
>> +	int vblank = intel_crtc_vblank_length(crtc_state);
> I *think* this also gets computed during .compute_config() which is
> before the guardband calculation. So if this stuff actually depends on
> the guardband then we have a real problem here. And if it doesn't (as
> in it really interested in the undelayed vblank length) them maybe it
> should just compute it as crtc_vtotal-crtc_vactive.

As far as I understand it depends on guardband for VRR case.
For non vrr case : crtc_vtotal - crtc_vactive - scl lines
For vrr case: guardband length.

Currently since guardband is equal to vblank length this can be 
crtc_vtotal - crtc_vactive - scl lines.

Perhaps with the optimized guardband, we need to set the guardband 
during intel_vrr_compute_config().

Later intel_psr_compute_config gets called and then we can check the 
guardband.


>
>>   	int wake_lines;
>>   
>>   	if (aux_less)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>> index 0b7fcc05e64c..2fc0c1c0bb87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>> @@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>   
>>   	return scanline;
>>   }
>> +
>> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
>> +{
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +
>> +	if (crtc_state->vrr.enable)
>> +		return crtc_state->vrr.guardband;
>> +	else
>> +		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
> Maybe that should be crtc_vblank_end instead of crtc_vtotal? I guess it
> doesn't actually matter given where this gets used.

We can use Vblank end.

Apart from these places, do you think there are more places where 
vblank_start adjustement is required?
For evasion logic and wait for push in case of VRR, we are already using 
vmin_vtotal - guardband to get the delayed vblank start so we are covered.

Regards,

Ankit

>
> I think the only case where vblank_end!=vtotal is exactly than ancient
> gen2-4 pfit centering stuff. But I've never actually investigated
> whether the exact value of vblank_end there even matters. I should do
> that one day...
>
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
>> index 21fbb08d61d5..98d04cacd65f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
>> @@ -48,4 +48,6 @@ const struct intel_crtc_state *
>>   intel_pre_commit_crtc_state(struct intel_atomic_state *state,
>>   			    struct intel_crtc *crtc);
>>   
>> +int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
>> +
>>   #endif /* __INTEL_VBLANK_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 73e5b2d8ae83..6fb2c78fe29b 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -28,6 +28,7 @@
>>   #include "intel_flipq.h"
>>   #include "intel_pcode.h"
>>   #include "intel_plane.h"
>> +#include "intel_vblank.h"
>>   #include "intel_wm.h"
>>   #include "skl_universal_plane_regs.h"
>>   #include "skl_scaler.h"
>> @@ -2171,7 +2172,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>>   	return crtc_state->framestart_delay +
>>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>>   		wm0_lines >
>> -		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>> +		intel_crtc_vblank_length(crtc_state);
>>   }
>>   
>>   int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>> -- 
>> 2.45.2
