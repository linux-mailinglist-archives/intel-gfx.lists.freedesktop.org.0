Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A896B1DFA8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3994B10E499;
	Thu,  7 Aug 2025 23:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEz9JUh7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A0E10E499
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607725; x=1786143725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8ZReMmg3QVE1oTX2rlbmXs6lOjMMAKiuqgMA/kLqJVc=;
 b=VEz9JUh7TuTU8ZmQWwgSHdQc2Ec/uKLQi4V8jwZvQfwtHnjcl7ps9mJY
 cnhiPP9CrECRVxHmWMe1P8BCSs8e9njf9lOBg3rd/rKjwCf9Bz3c+1quf
 z+yjXMkHAA/B6F+UP7TvDmQa9GCzAQj/qbjoHIfzdefNHQgy+vmubD0ca
 LU5WArMgHUbsOjvgJ3O8RTUK4tcRPFG1ooKV0lZU774p3cFiPqzvZ4Ozf
 bIr7ybwJb7BhTHkRe/h9Yf4cDP/qWKCFsq/LuWHqzsYticJOAOyNnhrDT
 snjAAQ+5JhgDGuKqb1MxVg7h+/kBmhnbR3V9odouZwMFgdNZpOx7k/DEv w==;
X-CSE-ConnectionGUID: MGL3ZHxoTCWx0sJb0q9JsA==
X-CSE-MsgGUID: EBEcCYXKR/evNux9TtiwHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79510243"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79510243"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:05 -0700
X-CSE-ConnectionGUID: X0yFQLyyRsu8e0+iKWWMIQ==
X-CSE-MsgGUID: K2RECoqxTdq/icHRNyePoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164406554"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.79) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 16:02:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e2sa/kFm51RgpT+fAtaSzpWvlwf4R1PcoqMSPE3LdJZAwMh1zuASlGZ9QhGC1DFTWhnahzOX/mHUbiMDBNIkyV5P3ZkZD6hcRgG6UQH/6gFjqIlenh+8Rtq9c3KTgqnRL7jfTifXdro5f1OssGE7KZl45+WWcSN0yH/6o8IYIQkQQtqdVWoso5DJbFrq5Pk6s94zTVKtJBARmAkAjm4Ut1TButD/sXWppi1jsxR/74CyDD1gyvhZoMj8jDAf/1ysqaWsx/F1HNvP+PVhbba2AOK8IiEx31tZrSIZNAu3YzocUQv02Kq5TJyStGOVEkkAGrHGrHkaPvTrTzQR1AyTQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VkpueSnMOIEIoaw46ASAbs3zVoBBbnK8lW2C0v8o60c=;
 b=OzxjW3DnqUo6obQ4zHUAH6pmMsk+Di4ch/Gz6HsHEBzHFTQpgUS7klwVGGqIj4V8cGAl6iPyu+sWDEJcRsrgDpJ+tddh5MzIJvLIz/pDYiAjwyCBJRNULW0M5dfugOSVtLHkaWHJOGDhDj9yA9ESojFcHQzX0OLdPn66D/q6OvdkBw+dGr7lFzQUNXaPNhtCgFYePD5NM2knTWpHLnyQdmhWAJ8/3DF7ntPgnUb21oVZlCr8w96ngruDGBRja4g+VSaqNP4R/dcoyCgt6DzUL7SPdzpJXwzQf21ioODPwnsAEy0P8e5N5211x2EgRzyCWAsDh56gKfvHbzu10et9tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:02:02 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:01 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 4/9] drm/i915: Replace struct_mutex in intel_guc_log.c
Date: Thu, 7 Aug 2025 19:01:48 -0400
Message-ID: <20250807230146.128362-15-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR01CA0032.prod.exchangelabs.com (2603:10b6:a02:80::45)
 To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB6221:EE_
X-MS-Office365-Filtering-Correlation-Id: e2ce4e01-de60-438e-47cc-08ddd6066b2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekJvQjgra0JhdlJ3TERHS21xajhScjNjbTd1Yjh5TldNS1c2QTRFMTJLbDlH?=
 =?utf-8?B?WW9xajZ0NEIzMWNxWWExdFI0U0VaU080Tmw4bmdLRUkrSTBzR29zZWRvaVY5?=
 =?utf-8?B?UkZGN3hidk5Kb09lcG94YWhWU0hKRkdhdjhScUV2dDhkbjgrREcxenJiUWxH?=
 =?utf-8?B?Y21vcFg1cHg3TXdTbkVmTHZpVEZyVURzN1ljVncxemd4TTEyendGWjA4WjBO?=
 =?utf-8?B?L0FhM3VjSGNsRnl0aFM0Qy9KbXFYR2M4R0Y5VUVnQlJtSU5Db0hSWUFnVFJW?=
 =?utf-8?B?cGtSUzFHT0t0TUs1MVBQNjhTZGJqRTdVWUFqR1UxelBkYzB3NlF3N2dBUmlz?=
 =?utf-8?B?QndNL21YSVNVOEFLaGhUWUJYdC9VVFlFSkZRTVVOR1NPMnVpbVd3cVJuUmlB?=
 =?utf-8?B?blg5QmZFcDVhT29OaWJBVU9TdEJza3I3SXdBRGFJVS9EWnprWWJtVmJPdEsx?=
 =?utf-8?B?QjhkT3RuUnk5bXNuRUR5UmtrOXVQLzdOQWNPN09yYmlZYmllTHE2YkRTNXhX?=
 =?utf-8?B?RWNibTRRVDByQS9iZ1VRVmNuWHZBbzl3anh2QmUvNllsdWRZK05uUUxmRlBL?=
 =?utf-8?B?UHUzMHdCamVGWHVLRmFpd0RkUG11WlhOMjBTZzBJRHg3bUpzU3lPZFg3SlRj?=
 =?utf-8?B?TUIrdlFmeVgrc09WdE1Dem1iQ2VUN3VodWJFMlppKzFuTTIwclNsaFpLSkhT?=
 =?utf-8?B?VmQvckgyV1Z1bGVBRWNuSVBtZWcvK0ltNk45blJpQkpCbVhoMUQzeUM5aWgv?=
 =?utf-8?B?bHh6bXpUL3cvZWlzYkxZRk4zdklGNlYrSllkK2I0Yjg5WElRQmhXN3RWaWtp?=
 =?utf-8?B?VW5LZVB2b3pTdXBsSFdic3dEVzNRQVRyZ0V1TTROMWpVQmpjZHU1RWd6L0Z2?=
 =?utf-8?B?LzJLWGZLb2JOdDA4d0MxYzhJNExlK3V0aVRwMDBLTFN1WU9neC94VHZWNUxN?=
 =?utf-8?B?RWl6ZTlNbjlrUUo3ZXJmRkU5RjZzbGthdmsza2ZwUkx0S1NyQVBJUXVlTVdm?=
 =?utf-8?B?dVo1UmxydDBydVR6SWJJUWx0THpsQmltdytqdUV4R2V3WHZwb1cxc1FxeWNz?=
 =?utf-8?B?eVRWMlVVODdLMnZBRWdhTFRUWUl6WjhmVkR3SXBDV2lRV1dCTnpQWkZGM2Ja?=
 =?utf-8?B?R3ZKbitkQXpMM0FVemtEMDBzL2x6U3RoNW9Kc01lLzJ4OFZRR0pJVDZTL21r?=
 =?utf-8?B?WFQwd3M2UjlJUXdiWDZidFFIdDBmWTZ3Q3VULzkyY2dZRVpxUkRZNEhDYkxI?=
 =?utf-8?B?c0xFRTlHRlp6ekxXbjFWR0dOWlVaSnMrYTFQejZsMzF5Ym1YbVFxTllvNUl5?=
 =?utf-8?B?WS8zRFdhMjBCZ3B1aEp6S1dLcDVwbytaNkZPenZVY05BOUxhMXZEclNPRU1L?=
 =?utf-8?B?RkhNVmpwcGJTdyt4M3JCaDVuQ1lSNy9BMzNPOTBDeng3QXhOR1lQUlpodm8r?=
 =?utf-8?B?SnR5L1pYRThDUmNLSEZJNXp1bW5sa0NobU42YjNXUCtESzkxeThLZmNpb21y?=
 =?utf-8?B?ckZhOGhUVmZYM3lXWWF1YldNQVZLNkhLQ2JmbXAybTJwQXlCbjdVK1QxNmdP?=
 =?utf-8?B?SWUyaEFZdXE4MmdNVGpLWk5DNy9lR01MWWN3eWdzTlZ5cmpWTGl1YmRtVjFr?=
 =?utf-8?B?bFRLR3ZJRGxMR1BzWHNyRnZFb2lCU0lRbWNJYjFGYkp6QUVRM2xPWC9lSHVz?=
 =?utf-8?B?RlViV1o3eG9LemxBenNJRkJUL3liZ2JlbUhyaWpERU9zTkZjUUM4eFhvbUVk?=
 =?utf-8?B?Z3BVRmxuL2pXclhqMTlncVNwbFVJaFlTMkwydkk0RytxczlJWXhETWhicU1v?=
 =?utf-8?B?eWJhaWpHL0hKejE3UkVwV29VckZuVHpkRnF5SjJtODdYUyswL0R4Y1FGT3No?=
 =?utf-8?B?bzU1bEp1K0tNSlYvcDU5bEZ0NUNWUXdKNEpLSnRoVzRQMHJmdE9wK2dxTkd3?=
 =?utf-8?Q?esDi41uOlts=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b25ZRXZoZnU5SC95dGN3WVE4anVaOFcrOUU0TmFOcVdwbStiVkl4eDFUN284?=
 =?utf-8?B?MkFuYnEwNFZTOU5uclZGWUd5bDA5eFh1Y0p1ZVJjelJxM1NkQVJBbjlGNGZl?=
 =?utf-8?B?UmxudXFNS2JEQTh6Y3ZPLzRYWXdLTHRqaFZSZ1Q4NC8rZUhTc0FoK01GOWM3?=
 =?utf-8?B?SHI3SWkwSFZvQkt1SEFVcm9xaDk4TEFHQjNqdVpJZkRURGxLSXlCWDdDa3FL?=
 =?utf-8?B?SnpBaDRlK3FzVVh0TUc3K2dZMnY2YkJoV2FsWDNNUDdjcTQ3Q2x5bEN2S2lD?=
 =?utf-8?B?UEZTSCtBSkhiYnIxNzFnLzA1dnV3QmpHME1lbmxqYVhzODlhN09hZDlXV3lL?=
 =?utf-8?B?cStWS3VzZlFIckZTTlVvdHk5NVZCbkE0b1hJUGFXWk5WVnlpN3hBZllNR1Vj?=
 =?utf-8?B?Z0ljTVUrR3M1WURGK2pTT1FvcS8ySjEyZXZ2YXBpZ1NIZUw3QUt0c3JEcFAx?=
 =?utf-8?B?WWNjRlc2QStEM2ZadlFWQzNneW44UXd2REI0TzZPcnNocmRUNGtqU29QNzlX?=
 =?utf-8?B?MFZJeEgxUUpPTHBrSFRDbCt6anBRREYxbkl4VVUxaHhWa1p5cWtXZUFJM0tw?=
 =?utf-8?B?M0I1WkdmYldMQ2NkNDZwSTI4ZEswSExoZnErSVQvTjUweGFPc1V2Rkw3ZDBx?=
 =?utf-8?B?TGRrdjQ4WkxvYzNtaTFLbFZ5Slk2am56MU1kMDF1K1IvT2FLMUVVSENGNzhK?=
 =?utf-8?B?cXlCYzl2TEFpdm9tdkc5WU1WSGxhbTFvcURQV1hNMDE2dThzTThHdFlhZ2Rr?=
 =?utf-8?B?R09DZWRvU2JPeGQ3bE93NFRmRmNHaXFmSEN3MktRaHArdEpnZlh6SUZma0kw?=
 =?utf-8?B?TExKTGJUc1BzRm8xN0Q2dmhkMGpuZXc5cE8wS21naFlQamFnRTZrVmtqRGYw?=
 =?utf-8?B?N2w1Ty9XSWJldGxiTEFYblhJelVwMXFMUStvYnB2TkhqblBvQm83R2lPV3dK?=
 =?utf-8?B?STNaVjNJbE1Ba05ncEpDdFIzQ25kOFQrY254NWlPanNCT2ZMdHpENE1QbjJs?=
 =?utf-8?B?eklFekRPWDc3OGhDTTNldTZSU3l5U3VUYXAzRjRmN1hEdm1ELy8wTmN6dVE3?=
 =?utf-8?B?Y0JNYlZoWjZDOWQ0d2NFMDR4Ti94TVljT1d4UjNJS1h1WGVES2h2clZVUGo4?=
 =?utf-8?B?Y2ZHbmtrYm1JQ3F1bGsxajV0WUFONUhhK3NKdks5SjdkSDlOT0w5dkhsNTVw?=
 =?utf-8?B?NDFra0c5VHNpSGtXUjVrUU1IUHg3KzFQSVl2L0R5djdCSThBeXNsSy82dmll?=
 =?utf-8?B?YjhlK3dKOTMxZXVJU3JRYjhGanF4M1BFSEx2WkQ1UlpWOElnK1pHKzZHM2RX?=
 =?utf-8?B?a0dnTUl4N0Jnc0NvSGlrZ2FBRldyODFHdkczSjlLYWk0M2xXSXBsMmJnQWhG?=
 =?utf-8?B?SDBPMTZwQlJQc2RhNzRjY016aUFmei90WGxjSWlRMVJaaXJ3ZjBUOVEvWGw4?=
 =?utf-8?B?dHNHQ1FHSHc1T08ySVN3VVRnV1lja3l2S0dCMXQ4RThhTWlWbzV5UHoxR1dC?=
 =?utf-8?B?R3lLZWg4YTBmVE9wU3cyWmU2RGxKbEpidlUyYWRUbEpMcHZwZzIveW5SU0s0?=
 =?utf-8?B?Uk15VUZKQTRacTNQWWdSaVRIaG80M2xaVlUwN3dDdHUxeFlGcUxUK0UzaE5K?=
 =?utf-8?B?dkM4L3h2OXc2VXh5RXljMmZkQWp4UmlrM1pha2xUUWRBNysxQXNFTDFGVXQy?=
 =?utf-8?B?K1B6K3daMldKRTk2aE9wNVE0MVZ5ZTFsZFd6RGdGZTNsNmlCNnphU0RMbkZj?=
 =?utf-8?B?aForeElrcWJTa1dOQWM2ZzllUTZFRVZKb0REZ0FscWhNNjRKUGQ5aWRWeUdF?=
 =?utf-8?B?ZGJHZUZybGxnOGNXTGxzanJWZ1psVDNUV3hwL29aYzJhTEZkV3k5emdlZGhr?=
 =?utf-8?B?TmV1bTdtUE9UN210SzBPMXNPWmZDUnJKWGo3YzV3eFFUY1BGdnBtZk9XSitQ?=
 =?utf-8?B?Nlk4OExWNlB6SGo1NDRDQVY5S1dLUmxvNEdIbjVEdXlTUEFjVUxwQUNPeC9U?=
 =?utf-8?B?QmQxSXRveFQyUlNlM3NXNU5HaDE5a0VHOFc4RnpjTU9scDUxZ0tQSWFCekF4?=
 =?utf-8?B?VytSVXNOTzVRL0JEYWl3THRUVVNvOHppVnowVyttR1p1TGR2bjArRTNRSW5j?=
 =?utf-8?Q?Gds26O3duNqWMQ17wRMBxnQI5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ce4e01-de60-438e-47cc-08ddd6066b2a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:01.4471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIGhrlGeqs37zEQOMY249A8dIpF5wGyNaeYgL1AAcTCW6tc/RrgxM8axLGec2YCmptrSFVUFMGF0ymBIbTD30w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

Remove the use of struct_mutex from intel_guc_log.c and replace it with
a dedicated lock, guc_lock, defined within the intel_guc_log struct.
    
The struct_mutex was previously used to protect concurrent access and
modification of intel_guc_log->level in intel_guc_log_set_level().
However, it was suggested that the lock should reside within the
intel_guc_log struct itself.
    
Initialize the new guc_lock in intel_guc_log_init_early(), alongside the
existing relay.lock. The lock is initialized using drmm_mutex_init(),
which also ensures it is properly destroyed when the driver is unloaded.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 5 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h | 8 ++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 469173791394..0104fffd5852 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -518,6 +518,7 @@ void intel_guc_log_init_early(struct intel_guc_log *log)
 	struct drm_i915_private *i915 = guc_to_i915(guc);
 
 	drmm_mutex_init(&i915->drm, &log->relay.lock);
+	drmm_mutex_init(&i915->drm, &log->guc_lock);
 	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
@@ -683,7 +684,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->struct_mutex);
+	mutex_lock(&log->guc_lock);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -701,7 +702,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&i915->struct_mutex);
+	mutex_unlock(&log->guc_lock);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 02127703be80..13cb93ad0710 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -42,6 +42,14 @@ enum {
 struct intel_guc_log {
 	u32 level;
 
+	/*
+	 * Protects concurrent access and modification of intel_guc_log->level.
+	 *
+	 * This lock replaces the legacy struct_mutex usage in
+	 * intel_guc_log system.
+	 */
+	struct mutex guc_lock;
+
 	/* Allocation settings */
 	struct {
 		s32 bytes;	/* Size in bytes */
-- 
2.50.1

