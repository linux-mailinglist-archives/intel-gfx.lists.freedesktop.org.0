Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A5BFFAA7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7858C10E8A1;
	Thu, 23 Oct 2025 07:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXAVHNTE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605F810E8A3;
 Thu, 23 Oct 2025 07:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761205273; x=1792741273;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RVDDTaCqqpPZ2DOSsjFohr0tAS3P9DwL14wlpxzW/ss=;
 b=QXAVHNTEfBiE7L7ej6L2dXcJlRt7485wN/uVHpte8EBnIuCC+GWaAoMD
 24Vqm9lBMW7BtwqrgLLYxk0Mr7qhjP9kWBrCNELz9kcmW31CQ06rN6gUx
 fkYpIiSWSe7Vo8avxRdxSSG8c3czrrE+fxEsSf6rKsWG51THHukpg8f2+
 YEjd+6z4d0vIH8bk+4UBhdKwjwaLzjvd8j9pqLSUfeDlCPJN67Zftvq89
 GlXChc2jKqggdIxZ3yNO4kmKB3qLJeTfF53yPDFrbO3Gyzfv/OgI7cbJp
 A4pwUgMRlYPEh+QrjnoTMQ9YSIUvpb3FaCBpGP/UCEEXWsND76vaiNVCR g==;
X-CSE-ConnectionGUID: jzKFiOEJR+a+NFrxFPVphw==
X-CSE-MsgGUID: 4GtGrJJYSGilDlpBFnmPDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63515196"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63515196"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:41:13 -0700
X-CSE-ConnectionGUID: UusBuXg9Tu20AmwLv35JcA==
X-CSE-MsgGUID: T0G3rQWHRBiIhY08t4uBMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="215016216"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:41:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:41:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:41:12 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.17)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rgvXsUfeurEziljKDAdHwFJHYftosrzzArCVry+BXCdmk5IV4kNbE9tu3s2lxzi80iXQfRlWL1h+nGVIM0pSzQQe170F4XNJkYu7Bc1VwB17JWAAJHTzpoqrZSDYlVQyZ22PbrGxunrtUHiAkfxt38KFPNCtzWrE2/CbknhI1tfB6yCoPDz+fPazDsys/0aYoMNi8F9IegMlgCC+wKT2Yx4U/K/thntZTj+DtULnFVN63YtTj9LpExkNUrnQ/Ju073qaFXEiAAl/iHn7DxQiLQsw+F3UWRrDlrba/8d0Lv6CzZpN8glpNrdD9hl+VK1odLNrrRPgHUaXsgdryaKCvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+mOTjniK+TxG4DcqXBlamS8BCnsz9rXXYdPSjUqg54=;
 b=i13fZtwa50jO5bEygrVlZiCyMucF8SmrdU46zWlPXGFlHP3vv4IQN/h2DtmyjyhIrYuVaEiVUPyupjfLbTiL1l1snU+PjtRbUCLjgNm4bSJE5K18JJDiVmqg5GJXeJkwX5C/CDpbh5PbWJTTYtX/5BeOKInjqkNq5FxOCXzXc1z4wVSfPLg1AwTDsP/DX7yV9ojXiK/kwXzQZt1XnwM6NmabwmCcZzcjcGNk/crPuVn9o657LQYE0wjrA7pV1WGxmkmKD4UMXyR77ug6AzURA9Lqli/7F4gmuCWwiTvqW5SVkX2UEgAjzH+fafi4N7Ce1LIZE7UTQJ0HegR0By8bZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB6771.namprd11.prod.outlook.com (2603:10b6:510:1b5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 07:41:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:41:04 +0000
Message-ID: <cc92a49f-b9fc-456f-8b28-39d5cb76f937@intel.com>
Date: Thu, 23 Oct 2025 13:10:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/25] drm/i915/ltphy: Program the VDR PLL registers for
 LT PHY
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-9-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-9-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0168.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::10) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH7PR11MB6771:EE_
X-MS-Office365-Filtering-Correlation-Id: 428d4fff-1932-486a-355d-08de12078568
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QjRBSnEyb1pwcEo5a05kcEdWdW1jaktCK0tuZWlkZnZrajJwUkRJYUJHLzhu?=
 =?utf-8?B?dzBWRWFrTFVDdWNSMCtFbkMySFJ4d2pMSUg2WGRWNXBwYk5xaHMrSkNEcXla?=
 =?utf-8?B?R1dLTUp6UEtrRUhoeitMSmFpRWttU093bU01cnVrRS9XZ0czR1hLcVg2bkpY?=
 =?utf-8?B?VDd0THpsVEtqbTgwM0lEUlpwcHRLSWJxbWlnSU15RjIxWndnMXJPSFJnRHJR?=
 =?utf-8?B?bVUyaXd5OG03RUl1MmZwWXF1NGVWYjFSZzFOSjNVQ3gzRTFVNnVEbkh5ZEVz?=
 =?utf-8?B?THg4UDBCMzRWaG94elJCNDZ6UVhaVGxrejg0SmlDMUxHR29LdzkvU0RkazlZ?=
 =?utf-8?B?cGNCTURwT3dSMzNxaFhrblMrV3pNNGNjMTVMNjVpbG9mYTFsajBobno1MDZT?=
 =?utf-8?B?eVRtVVJPMjJFL3dPMVRMNkFnZXpyQTlIT2VKcEVVWEl2RjQxVGFpWGVMWGxP?=
 =?utf-8?B?cy9lTThQc3FKZlNGeTBvS0VtaGo0VTFzcno1VisxSGtIalgyVzc4aCtBcVVz?=
 =?utf-8?B?ak1IQXRzQWlkT3hCL1NUbXAxMmw2clVmUGdBN1hRMjh4T3U0QXEzR3JIWGdm?=
 =?utf-8?B?ZytIY3NIUDJTRWZKY2plT2F0b09BL096YTFPeDFDcHhkS2F2ZEJYNlZVUUVX?=
 =?utf-8?B?bmVwZmpxMHJHckhRRFVZQTgzQ0hid0dCRVBXQ050SXM4djBRYUNzb0RrcXBi?=
 =?utf-8?B?dmhGdDV0bXpMNjJPb0pJTHFWWGE0clMyN2g2OWt5WSsyYXBJamlydDB4RG1u?=
 =?utf-8?B?eWlPc1Z2Q3VEQ2ZTNHJ0dzFMbGErUEthb0kzTnJjeFpDa0FqT25wOC9sVzBZ?=
 =?utf-8?B?UUVYdlF3bGtNUE5LR1FUUGg2Y245MmxOQktwUWNqYU90OHEyZE5raU1iaDEz?=
 =?utf-8?B?cHQ5RVBxYmhFZkxCVFlkVlZwT2NaT3ZVQlFadkE5bytCSHRGbkpHNW15czNK?=
 =?utf-8?B?Zlptb3RCZHVIb3g5dXljR09LTGVKMVFMN05nMWlIb2R0NE1Pam84Q1VnN1Zv?=
 =?utf-8?B?WFI4WFdPTzlXaUdVSVRVNFpVK1k4cDBHVGoxTDhCaFVsY2FkMTFwUzFKdjhP?=
 =?utf-8?B?c2xjR1FGZ3dyMVhSVW1GOS9obk1LanFISll6MVhmeTlJSjBvSlNRd25SZ3A0?=
 =?utf-8?B?dnNaYmJ6d09ueHBrVVBYaFYwbUgvblJoNkxQei9aekE0Yk9pQ1dTVFllWk1U?=
 =?utf-8?B?T0pqUThwR3Y3R2dHMGdTcTJWUjZpOWlrL3UrVTRidmFZVlp4aExiYjdob1Av?=
 =?utf-8?B?eUZMUVByWHpocHZnTzl3NVk3MFdqSnZ2Tml3U2dKMEhpbjFrZEcrNFZjTWlv?=
 =?utf-8?B?bnA3SWQzYzFMUUswZXV4dGFKUFJLd1owZXd4VTg0ZXBoUmJLbkxPY0FpVGZY?=
 =?utf-8?B?YU9kWDNLYWpXYmNJTmFlQkNPa2hwYUViNW9NQU1paUordG9oa0dVQW9ZeUxr?=
 =?utf-8?B?SDkvOHFnSE5NTmZHMnk5eGJPL1FKK2t5WmhGQkgvcVhrU3BMYU9XNjhLOUVT?=
 =?utf-8?B?dCtka0VDaWZPWVdxc0V0cFBDL3MvcnNGaGtFTUs1aUxrMVl4eGFEYU5qb3Vs?=
 =?utf-8?B?MUJwQjhMWWpGRVUzSWpJSUVJWENreThXVmhQbkFNZUxoY0c4QWllOGVydkhJ?=
 =?utf-8?B?aVBFK0FKZkZjZUhMY3RCQlhZS1krdFB5dFVxcHBsY2FIMENGelNFYVZFYU1m?=
 =?utf-8?B?ekZ6Y1NGcUozRVF1L25CenhEVlJDM05iUzNmaUlwNDdsalBiaW5uOFRUeVFa?=
 =?utf-8?B?RGhGazF3UFhESklsa2Q5cjFNTFZoWEFqaUp5ckFNMzkwRFJVUHdqcStDbEtL?=
 =?utf-8?B?ZFo2M1NrSVNaYlFDRWw4c3l0aXE0dEpMa1R0K2NmME1FNHYrYzRIT3YwckZ4?=
 =?utf-8?B?WExQWWJ6L1llWDhJOVY0N0pPVkw5SXZieUk1VWJGT0l6QnpkcG5nUlBpNDk5?=
 =?utf-8?Q?whBcqO0MC8XTTdK9v1FtSmHNZTnkkeH8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEJmbUhiWmppVGFERDk3dzIxSy9Sc2t2UStnZ1JUVitCM1ZHYk5pcEk1RG51?=
 =?utf-8?B?VmJLeFVMeXc0UlE1cHpXWGRhUlNVM0RBNXd0MWI0a2VDM2lpTnpnUDdGWll4?=
 =?utf-8?B?NTFUMDdkU2pKYWZ1cXI0N1pnVHB6Y3dFbnRmWUpHUU9OcXlqSUlEWE1LaTdK?=
 =?utf-8?B?YnlVSmhnNmtZZXdMRHRGRzFPcFo0eWxMQ0NCdFNjbTRYZmpnZnk0cEVXaGR0?=
 =?utf-8?B?NG5EVHBGdGZJZWtHMHY2L3c5dzFMNDdwMENITjI4WkI5YmpOblJsdEhWVjFr?=
 =?utf-8?B?M1lPeXN2Ni9Id0tnMVhvZFNEZStJOTZXT1JTQ3pBOFBIcitDamdZc1Yvak5L?=
 =?utf-8?B?U0lybVcvTnBHVEp3NDRoL3gwVUpmSmNDekhtY002TGN1eXBlb0xjc2xLL3FD?=
 =?utf-8?B?bmQ0UmhHU2pmTUhTSTA1eW5peW10OUl0MWMxK2lxWks5UXNKVXNDeEUxYXdD?=
 =?utf-8?B?VTM2WVJIRzhZZW9iVm15NWYvUzR0VjhuZ2xYQmUzdmZwcjhmbFZ4dTE2VjRI?=
 =?utf-8?B?elI4Nk5lRFB6Y0l4WTNRdFFkRm5HbkJiUUNJT1F1OGJLMVBURmpkTUkwdy9h?=
 =?utf-8?B?NW95ay9RQUdOR2k1ald3OFl5dXJOcWVPWnBZNkdMM3lwNUJLY1M1bDZuMW0v?=
 =?utf-8?B?UHJkbmVEZCttV1JxdnRZd1ZCMnBIdFFhWmN4ZHlXL2hFb0tSbFB0Q29neTJ0?=
 =?utf-8?B?aW83S3JLdkdNaFI3MmdjeEdqNDArYTg2VGFBa21tVHJQNUpCZlcyL2xINmNY?=
 =?utf-8?B?NlBHOHNSeGFTakEweHBLZG1ZQnVodjFvdkRiN1VyL1NzTHVIUW5WOStwNFJE?=
 =?utf-8?B?K29NbW5KUjZwaFZpcjUyZVhLQkI4d1Z2OFd3NFA1cXZJVU1jQlhoRTYyR1RV?=
 =?utf-8?B?Y1pJT3ZFQ0xackxZZjg0MlY3dzdOZFBUMUxwanVMV0h6MDA5eUNDTTJvczFF?=
 =?utf-8?B?M01ta1N0ZjArR1ljaXNXTWNmZFc1NmU5b2hlYUN4WlhtcWNMaFhia3BWTDlM?=
 =?utf-8?B?anN4aEpSWlJFcnFwYlZNZWdDQU94SHlCN0pMaCs1NjBINnoxK3RjV3VkeFdr?=
 =?utf-8?B?N3BndFdWcTZvYzdrN0VRaUhVMWZiMm5nZ2xqQkpZQ3FRRGM4a1hoUHhMNW9x?=
 =?utf-8?B?ZG1LWFhYd2Q3UFB3bEhBNndNZDRwcHhVRjB5dE1sSVFjRGQ5b3ZwN0dFdFJF?=
 =?utf-8?B?NHkrUk1Ya2tIaWx3elI2Z254NGIzZ0dWM2lUOFovRVlHSTFWZUZMRlZOaGFi?=
 =?utf-8?B?RUcrT3M3NkQ3VUxyWS9ob3RSOG9FNFZDL0xIbDhoMmNSb0wvT05IYkwxekZs?=
 =?utf-8?B?cjM1L0l5bGhGWWVtazJKSUE0T0pobjQxdi9SNTlITGVHSXdZQlZrZGxEaFo0?=
 =?utf-8?B?UGtYOHBxTng2NTBGK0hVemtEVlh5Ky8yVjhvc1lGdmNndkluc1luQ3hzbGdq?=
 =?utf-8?B?cGg4NkRFSVZhNno5YmlzK28rY0U4dlUzcDdhQ1lhckZCT25EK0p5dkR5MGRw?=
 =?utf-8?B?WjdDOEd1cUs1NVk4V2V2M2JKV2RPSkRwbEJsOW9ycEx5WWVacDZIVkQrMUtO?=
 =?utf-8?B?NDM3MXRndXI3cnh3czNhU0dPSENvdlBWQVZjWmI0YWszNUtpSSs2c2tMQzI3?=
 =?utf-8?B?alY1bGNKb0xyZTNMSFBmQ0h6ZXQ5WWNzQUo0Ti9ZMkpNR1NsK0lUNU54d2h0?=
 =?utf-8?B?Mi9hR2NqVStsYVZJaHdsaFJNbUhCMSt3Z0dFK0dRbHV1K2tnczFUL1lSVDlV?=
 =?utf-8?B?aWhHOFk2aE9EMWo0Y0ZaemRlaFJmNTZ3L2xxeE5GdmM5M2xvZWFKTTBBMU1E?=
 =?utf-8?B?TzVtS0JpcmM4OEk0ZUZua1U1cFBTZWRsWEYwZE8vRlBCUEo2OExBQzZycG1t?=
 =?utf-8?B?Z3lFSW5KY0QyeHpoWXBBZUpDUTZtV2wyVzVFZEZlZFZybVlLWnBMNnM2QzMr?=
 =?utf-8?B?U2xSa3c0dDBCK2FtNGZIdUNxY3F1bnJyZ2IwWS9tbWtlU2pnSVdCcmY1L0Jr?=
 =?utf-8?B?Q0dtcWFqaHc0NVY4L1V3Wkt1b29wWFp0L2dPZGF2ZXpETzRmRHdubVNKQzZQ?=
 =?utf-8?B?dnAwK0dZQmxlY0ZGSFNCLy9pVjU2ZWZrSWkxeVpOQjgweWl2UThmZ3FkbHJB?=
 =?utf-8?B?djJjaUltT0NSVGJNWjkyemZ6WmFFc1BCQndYZWxmZjdSckUrREtFQUJhNEgy?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 428d4fff-1932-486a-355d-08de12078568
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 07:41:04.8723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vmiz/2LiI+vN3Isp1pFvAyZkY1M5NR4oToeehLXnn+hU+SiGdVCXIeWyoq/2w9+u/vt5PbOw8PUbgtx97Gp+5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6771
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

On 15-10-2025 09:38, Suraj Kandpal wrote:
> Calculate the tables which needs to be used and program it in

We dont do any calculation of the tables, its just getting the table 
with pre-filled swings.

Upon reframing the commit msg
Reviewd-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> the specified VDR register space. Everything is done over Lane0
> as mentioned in the tables.
>
> Bspec: 68862, 74500
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++--
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +++
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 38 ++++++++++++++++++++
>   3 files changed, 45 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4e074754a78f..c50233f17bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -23,9 +23,6 @@
>   #include "intel_snps_hdmi_pll.h"
>   #include "intel_tc.h"
>   
> -#define MB_WRITE_COMMITTED      true
> -#define MB_WRITE_UNCOMMITTED    false
> -
>   #define for_each_cx0_lane_in_mask(__lane_mask, __lane) \
>   	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
>   		for_each_if((__lane_mask) & BIT(__lane))
> @@ -359,8 +356,8 @@ static void __intel_cx0_write(struct intel_encoder *encoder,
>   		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
>   }
>   
> -static void intel_cx0_write(struct intel_encoder *encoder,
> -			    u8 lane_mask, u16 addr, u8 data, bool committed)
> +void intel_cx0_write(struct intel_encoder *encoder,
> +		     u8 lane_mask, u16 addr, u8 data, bool committed)
>   {
>   	int lane;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index b448ce936c37..283be36d5dff 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -8,6 +8,9 @@
>   
>   #include <linux/types.h>
>   
> +#define MB_WRITE_COMMITTED      true
> +#define MB_WRITE_UNCOMMITTED    false
> +
>   enum icl_port_dpll_id;
>   struct intel_atomic_state;
>   struct intel_c10pll_state;
> @@ -48,6 +51,8 @@ void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   bool intel_cx0_is_hdmi_frl(u32 clock);
>   u8 intel_cx0_read(struct intel_encoder *encoder,
>   		  u8 lane_mask, u16 addr);
> +void intel_cx0_write(struct intel_encoder *encoder,
> +		     u8 lane_mask, u16 addr, u8 data, bool committed);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c8910262efb6..9380ba530901 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -992,6 +992,12 @@ static u8 intel_lt_phy_read(struct intel_encoder *encoder,
>   	return intel_cx0_read(encoder, lane_mask, addr);
>   }
>   
> +static void intel_lt_phy_write(struct intel_encoder *encoder,
> +			       u8 lane_mask, u16 addr, u8 data, bool committed)
> +{
> +	intel_cx0_write(encoder, lane_mask, addr, data, committed);
> +}
> +
>   static void
>   intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
>   {
> @@ -1229,6 +1235,36 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   	return -EINVAL;
>   }
>   
> +static void
> +intel_lt_phy_program_pll(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	int i, j, k;
> +
> +	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_0_CONFIG,
> +			   crtc_state->dpll_hw_state.ltpll.config[0], MB_WRITE_COMMITTED);
> +	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG,
> +			   crtc_state->dpll_hw_state.ltpll.config[1], MB_WRITE_COMMITTED);
> +	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_2_CONFIG,
> +			   crtc_state->dpll_hw_state.ltpll.config[2], MB_WRITE_COMMITTED);
> +
> +	for (i = 0; i <= 12; i++) {
> +		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i),
> +				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
> +				   MB_WRITE_COMMITTED);
> +		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_LSB(i),
> +				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
> +				   MB_WRITE_COMMITTED);
> +
> +		for (j = 3, k = 0; j >= 0; j--, k++)
> +			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> +					   LT_PHY_VDR_X_DATAY(i, j),
> +					   crtc_state->dpll_hw_state.ltpll.data[i][k],
> +					   MB_WRITE_COMMITTED);
> +	}
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> @@ -1259,6 +1295,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
>   		 * frequency and protocol type
>   		 */
> +		intel_lt_phy_program_pll(encoder, crtc_state);
> +
>   		/* 6. Use the P2P transaction flow */
>   		/*
>   		 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY messag
