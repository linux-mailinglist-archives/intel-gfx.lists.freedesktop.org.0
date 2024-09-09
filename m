Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1682397135B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 11:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBEA10E34A;
	Mon,  9 Sep 2024 09:24:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZVnikHyN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A223B10E34A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 09:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725873847; x=1757409847;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VJSdM9aV3Vp1Yh/FiOIHrKVDWShJaMhK9lhFudSaLUY=;
 b=ZVnikHyNtl4va4yAons6lyIlqluJmvpdRpsDcpCdh6fGtsDvjh4oIUzO
 k4Jv1Fk0H3uWuk8AVsyYtuyyR/hFeJmJIway85eOASWryY868KW02LgAb
 YeUmO2vUk9g95oIpkM2oUYr4pOigsUbIioB7Kt0772D94tFtY2YuI3ecR
 tDUk91s50uSLSVLreEmqDOhGUTFDTSZrO8+A2pkC5rliGqt5W+6604Tem
 X9pwR0u3PTZ1HNF3OjRw0En971gUHBHIS8HoyiyPL1rDSIcqN462/zKJ4
 bfI+nH6JMVOhicMd8kA5Fj+kQobrpL3pY7lOzIV9TmSJrjo99gExKCAVK w==;
X-CSE-ConnectionGUID: 4g1NqH6BQoS6KwkvES7iqw==
X-CSE-MsgGUID: VQdnNla5S2GHGBxb6aeX3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24671817"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24671817"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 02:24:06 -0700
X-CSE-ConnectionGUID: ZOI1QT9xTjKz+4VKMPS3Cg==
X-CSE-MsgGUID: VrhP4CesSQqWPHYr9UhNag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="89886661"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 02:24:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 02:24:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 02:24:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 02:24:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pz1o/QAcmdFUDqhshSmpI9ouwenzePFPRgFkxNN6Vtck2ScTSS0taT1ORQUiKwFfxL7mdKV2LZlpuD3f/L+oKAUhNWWmFj3WPqPwEVFBtamDWcXo/C2GIltCu/5ncKTcpAJjobhnWWr+hFKI8UOkXZD0Liz5DhiEve9XhdDksboot5CO3BIxxrF6+CSlvb//hu8nGtPhTi9J7hkTU/46FAPmdiKQnsTSvOSryXqoP2m9ftoeWvGgz53+ecfeB167aeXQG0qoizZxf01Idu/zhdDxBrU0M52OeSC8iD95I69mVkLlHybfXyBYOAN/1saJ6xpi+LwmZgz7ZGOYWMkhkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJ/W5B6HpLEJqZ4gzk3SMNM1RnO++hYscuRerdl47C8=;
 b=lMnkbq757yJ3YDrSsphr15Z7xeJHXCujiAr6k8p2tD9T8mu56urO+BL/iwH5fB7G0yhZWJrOVXpKkhxZ9uHbYvg0JnpEH3ikhFiFiPMklKFdMq4o0P4ZTD8QHSZxtE7brcECwI0QvUHzeapTG+EvPUTI+1Zr100oUQIDTlILPxQy2N8QfqDO6aOUlNRzMovdT9PDgD5VmL20WZrAq4EThcFpBvYX4ChcLnq1XJyxRxblfMVHKmPiPgCExLdIlS1TzJszIt9M0y/s/wpzjmklG7ZJTuAwfTqiDPhFcqw5nB067uVnXydxyWX73b3I1HxQKLaJamHLj0leOx9vEiMyQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 9 Sep
 2024 09:24:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 09:24:03 +0000
Message-ID: <2898a6b5-ac09-4fb1-9184-68b79270a4b8@intel.com>
Date: Mon, 9 Sep 2024 14:53:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/14] drm/i915/display/vdsc: Add ultrajoiner support with
 DSC
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-11-ankit.k.nautiyal@intel.com>
 <ZtsuGMVpU89ow48_@intel.com> <ZtswRWzoCkWptOTG@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtswRWzoCkWptOTG@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0019.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6449:EE_
X-MS-Office365-Filtering-Correlation-Id: 530d0b02-742d-4d32-4e83-08dcd0b12512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzN5N3k5ZHVKc3JVb2xsUStwSWlwTlZLeWxvdTVqN3ZYQ2FCUElYUmJXTmFM?=
 =?utf-8?B?NE5SUC9uVC9RNDUrRi91a3Vxa1BJdGk0VmJaeFZ4a3NuMU1LU0FUMzNLTTZD?=
 =?utf-8?B?dDFJY0RDd2Q5MnI3cmNSdndXUW1HZ2gyWHNGSUN4c0NCZ1cwR21ZUWxuaFBH?=
 =?utf-8?B?UEl3T21USnhERXZ1cGhJbyttUVVtakt0MXNFaW9NTnRCSGZuV1RIQzd3b1d3?=
 =?utf-8?B?aTQ2TTNJNnl3SVd3aWZHb1A4cnZWc3JIM0xCWU9sbHpIL1dEUWVyeitnaGph?=
 =?utf-8?B?NDB6WExSSG1NUllYNjBydzNlZCs0YkxJNDRucXJid3oyZUhVVk9GKzB0bXFF?=
 =?utf-8?B?ZDN3aEpzeENCb3N3aEpicEl2cVdUT1hSU3pNNHRxN0hBem1EUzN3VDRCaHND?=
 =?utf-8?B?QlFLS01vTkZSMjNqVVhUUTNmOEd4RUpBcGY4K2VlOWV3b284cnZ0ejlmSXdu?=
 =?utf-8?B?WEViZ1hiMDJ6MTNiR1Jnb1hMMnhxWlZUOExvZlhxYUUrZElnem5weEtzR2hV?=
 =?utf-8?B?ZmZiZTducWNFcE5yNHU4WVM4dTBTYU0zNHFQbFNGelEyR251ZkFaanNJeTJ3?=
 =?utf-8?B?UEh1V3BPeEJSa1R4ZnEwTExRM0tYSVRBOHR6cDViTGtEU0w0KzRFQThuYURj?=
 =?utf-8?B?U0orb09LNTAyQUQvSVRWVm8rNmk5WEhpSXdHM0NuSUh5eVQ4eGdmOFZHTk1p?=
 =?utf-8?B?dzBsMWRDWlNidUVJWnJLTjdSS01kUzVFSHRRTXN1ak5RcmFhaVZJSVRkNmFs?=
 =?utf-8?B?ZjZ2QmxXajZ3TnZSbUEwazFEeEY5WEdHMmNlS3Y1Yll1aVRUM3lnWWFVbWFs?=
 =?utf-8?B?NjFUZHNaMzRNNGEyZ0NEcFBzVC9xOHZYTUJpUTdtWVczbjd1VWo4RmV2bHBI?=
 =?utf-8?B?OU1uTEhDak5GYy9PWlVXbTJ2NFd4eHVGS1FsRjZWUWxFaFZyNmxJcFVCKzls?=
 =?utf-8?B?dmNPSkVTeTgwUHBBMWZvUUwwcnpkWWF5empEbjZUTFNIS1UzckVwN0JYdVhB?=
 =?utf-8?B?QVczY3hwNGNWeWU4NFc0Nzg2cVpDUzZLKzF6V0luK3hOdDBjWnFTVGRXZElk?=
 =?utf-8?B?MEludEFPNW1mOUpBYmNrQTJJclJiS1J3UlZQQTV4cTd1NjlDb3UyT0pFbjBJ?=
 =?utf-8?B?ZGs0YWRFVC84TkxRZ2V1bndqZE1TL04zRmpvZGxoSDVXK3FiWE5nTGRyZklV?=
 =?utf-8?B?bTVXUUZOYlIyWmQzUG9mU3FYaERlN0RWQzhZbWNweElCMmxNSE5oZHJnVjVn?=
 =?utf-8?B?RGxVaXJCWFNaNVdIRDRrSVZIanhDdmVPT3VZT2tLZU5CaUlRbEFYbzZjTis4?=
 =?utf-8?B?dHArUTV6SDZMTGMyWG1NT3dzS1VyczNqVWZtSVpocTRZYnFtaHk5YWVsS0lV?=
 =?utf-8?B?UHh2bDBwRDNkd2NXYTJMd3gvbTM1Y01RK3U3SFQ2czkyQ1NKVXdlNWgydXBW?=
 =?utf-8?B?aTdDRkN6UzJYNk95STAzQVFkVUN6azhVMnYvNWRXNVVUTzZWZ2xYK0xpNTBF?=
 =?utf-8?B?dXZMbktrekt3aXRTY1BhbGdMNVZGWi84Ym4rSDNkaE1JMldmeXVPeTIxaGJs?=
 =?utf-8?B?MmdNcE05eGJVS0VtV3hzRDhjalhkVGlVUHdBY1A2Mnh2ZkczTWZqb2dyYmVW?=
 =?utf-8?B?L0dXWW9mclo4NGNnazNFcVJhMFNhNndUaXIyMFgxMTd4REk3VFMxZUJMTGtx?=
 =?utf-8?B?THk0TlZuc3c2L3libWt3Y3lUaFY3QjVLaitGcHpRWVN2U2FRbmpkMTY1TE0z?=
 =?utf-8?B?dWRPTHJCQzhVbENZQlVGVzZiRVlUM1pjTTl6SmdIdytrZ3I3SGtoQWw1enFa?=
 =?utf-8?B?L0xZL2JSRDI5RjdOVTkxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDlqemo3N1M1dU9vT2dQM0ZFK1hYRHVPMDlnUlN1QTBmaU9HUUtDVWFzbFha?=
 =?utf-8?B?VFJ3ZThaNm1XRVl1bkZlWVZ2MGptdjE4SDIrbUhYZk1IM2tJMUlPOUpmelpP?=
 =?utf-8?B?RURnemRWTk1ZNm9NWmtwdTBxczhJcHhkZDAzampidWZscGROaG9NYUl5bys5?=
 =?utf-8?B?MUtDTndiUE1WNnA4WURvS1owS3JYN3Vkb1dhd29wN1FibWc4UFpKY3JlWEZy?=
 =?utf-8?B?clZpemNTTVdUU28xVjBCRkVuZEtKQ0J2UmtieE0zd0U0MUVpc28xZ2o3bldX?=
 =?utf-8?B?akFkT3JoNk5LRHJZZC9Db3hyaGxLLzlJM1doc2t4Rk1NczhQdjF3SW9CcnJK?=
 =?utf-8?B?UEpwRUx6YkwvNnRGNFZ6R3VUSnhjSzFIdFRmRGpMSzZjTnRBN25NV0VPNUxz?=
 =?utf-8?B?eW9qdy9hdFZEMTZJc1g4QzJiQUk3L0E3K2dXZVVSVll3eFZrRVJqZGJjWXdu?=
 =?utf-8?B?Z25ZdGpBVUhhWE04VjRocXVIZ3hLTCtCcU9xK3Q2cW9SK1QzcXFCKysrOTBM?=
 =?utf-8?B?Sk5sRjdPWThYbXNkbG13S08vYktaN0k1NDE0VXB2SmpJQXVzNzRLWWlUL3g3?=
 =?utf-8?B?M2U5TjVWWHI3bmhBbC9CdWczV3hyRUFnUDZpMFBTMFFrakI3dTBKYVI1V1FQ?=
 =?utf-8?B?QjR4RzdGbnlVcEsvemVqaE5vakY4SkVzVjU1K1BudHRtdmdjTUhvelhtc0tL?=
 =?utf-8?B?MEdVNGRFbllrZWtPaWJ6a3U3bWFaaHR1WlYrWWJ2VThuN1ZpVC9Ea3YxaE1V?=
 =?utf-8?B?VWhVMUExaGJxYjRkc3dwa3hvb3NBMkdRM3ltV2MvcnptWUlnVnh0RlNuclk4?=
 =?utf-8?B?ZFZIUVZyV3ZOd0ZUWk5JMzBINktZSFlTR2JacU9SYlpRMVJYcnZnV3lHcy9O?=
 =?utf-8?B?SFBWbGY2TWNVb2FIZ1NKTTg4SUN0MUQvZ1VyS0l2U1d3RXJrbkR1Y3NPQWVw?=
 =?utf-8?B?U0Vjamp1Rk9GU0pzYUU5azJQRVhSWVRJQVdjV0k0QVJjY0swVDk0bnp2QWtw?=
 =?utf-8?B?L2VtS2VFYTYvejVCY2RTWjdleEd4OWViSG9YRjMxUlZqVHp4VFplUXJZb2FD?=
 =?utf-8?B?MlNxZXhYMlZBSWg5bHZsNk1WUWVHeWFhMUthYTl1emRRbG5haXF2RmhOdW1B?=
 =?utf-8?B?dWE4OXZkc2ZaSDdvM2puY3lRUXMzalFvMmJQUTBoVm5pMk9uc0pVQXB5RXcy?=
 =?utf-8?B?MWV6c0xFbVZ0eCtHUUk0Nko0ZVNCeExqS2d6aVkzTTdZczJHYlN5SDR3M0E5?=
 =?utf-8?B?S1ptVHZoN1BFbWNhejZ3ZjhDMmlWa2hqRlNSUlppcUd4WTRISndOaTJUOVl3?=
 =?utf-8?B?Y0puYVlUcXdmZm9OZVNFdHFIUjR0bWdOa05PeDlkQWRSLzZXejE0dWNLSEN0?=
 =?utf-8?B?dzlqVU9zR3ZBSjMwLzF0ZkJtSEhCeEVVLzBoYXhmTS9JZlR2OEY4QnlUc0FV?=
 =?utf-8?B?OVAzOFdNYnczZXFrcGVuVnN0TEZrdlFOKys0d21JclRJM1lOZERkODZNai9L?=
 =?utf-8?B?Mm5GYWJ2emgzTVBzL0F2ajdWeDZzZGw2RFRzVXIwa3VmQm9DUzUzbFc2WWlP?=
 =?utf-8?B?UzE5MGcyaW41YkI5eXFEaVZOdUJGRGRZZ25rTTJ3dWpnZ1I5WUV6Zmc0N2tZ?=
 =?utf-8?B?c2lQdXVESjU2VG9qU1cydjkzcUpjUERtWGw4RHZzWlpydXdteXNOQzBlTFhS?=
 =?utf-8?B?L1JZcXNjS24xWWFzNUsweUtOQ2h3YThUQXA0MWlaekw4dWd3OS9URlNWLzIx?=
 =?utf-8?B?RmZBblhGQ0NwKzhnUGlRMHQyNTVWeWplM29tOHdpNTRETXIrTFJST21peml5?=
 =?utf-8?B?SmVMRjFOTnc3aW1OWFR2VmpHTUxsNkdZZmsrL3d3ODA4ZTVmVlpETVo0aGlH?=
 =?utf-8?B?MnhQb2VuaGJVSVlwSTB3b2hhV0w0QWU4THF4RWdHdzlYWWhkemk0QVNTZUVQ?=
 =?utf-8?B?QlA4SXl2czM3NTZ0M3JzUVZDbkpTc1FyQzVxS29KR2FYQVRablpTNks4Unph?=
 =?utf-8?B?NXNXZkFLbTRvb0JYWEhHb0xOT1gvQ1JUQ3JibWpiYmdlREFjTk5kZytxUzNx?=
 =?utf-8?B?S1FtcnVNVmRqQkMwRzYvTy9Wd01majIxVFo3TjlVRnA3RGkrc1phbUVWV2xa?=
 =?utf-8?B?dzVZeUd2Y2Z0eUN3RTVRSjh6aHd0NCtsZTNYaG1RRVpmRFM3RGlpVHM3VUds?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 530d0b02-742d-4d32-4e83-08dcd0b12512
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 09:24:03.0557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t2hDfZlvbF2BkzRE3t4FEpHgAw/m0FR9UP7/UqDrnzZfNeQnHjDdvSpwj8REZzXHznBvUn62OFkS/KhXNistn4Pj6K2q9unXZPkADs5nUko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6449
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


On 9/6/2024 10:09 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 07:30:16PM +0300, Ville Syrjälä wrote:
>> On Fri, Sep 06, 2024 at 06:28:03PM +0530, Ankit Nautiyal wrote:
>>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>>
>>> Add changes to DSC which are required for Ultrajoiner.
>>>
>>> v2:
>>> -Use correct helper for setting bits for bigjoiner secondary. (Ankit)
>>> -Use enum for joiner pipe count instead magic numbers. (Suraj)
>>> -Use primary/secondary instead of master/slave. (Suraj)
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
>>>   1 file changed, 24 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index 8158e3702ed5..66e810c8de68 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -379,9 +379,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
>>>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
>>> +	int joined_pipes = intel_joiner_num_pipes(crtc_state);
>>>   
>>> -	if (crtc_state->joiner_pipes)
>>> -		num_vdsc_instances *= 2;
>>> +	if (joined_pipes == INTEL_BIG_JOINER_PIPES ||
>>> +	    joined_pipes == INTEL_ULTRA_JOINER_PIPES)
>>> +		num_vdsc_instances *= joined_pipes;
>>>   
>>>   	return num_vdsc_instances;
>>>   }
>>> @@ -751,6 +753,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>>>   	}
>>>   }
>>>   
>>> +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +
>>> +	return intel_joiner_num_pipes(crtc_state) == INTEL_ULTRA_JOINER_PIPES &&
>>> +	       crtc->pipe != PIPE_D;
>>> +}
>>> +
>>>   void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> @@ -770,7 +780,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>>>   		dss_ctl1_val |= JOINER_ENABLE;
>>>   	}
>>>   	if (crtc_state->joiner_pipes) {
>>> +		/*
>>> +		 * This bit doesn't seem to follow primary/secondary logic or
>>> +		 * any other logic, so lets just add helper function to
>>> +		 * at least hide this hassle..
>>> +		 */
>>> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
>> What is this crazyness? This would throw a big wrench into
>> the works, eg. the ultrajoiner readout would not work as intended.
> Hmm. I do see a note to this effect in bspec. But that doesn't make
> any real sense. I would expect that we either enable this for
> everything, or only for pipes A+C (the bigjoiner primaries).
> The latter would seem sensible, but it would also mean that
> we need to rethink the readout as well.

Yes as per bspec : The ULTRA_JOINER_ENABLE bit will be set for Pipe A, 
Pipe B and Pipe C only.

Are you suggesting to write this for D as well? or just for A and C?

Also PRIMARY_ULTRA_JOINER_ENABLE is to be set for A. For other pipes 
this bit will be reset.

Though only C is ultrajoiner secondary pipe, but since for other pipes 
this bit is reset, how to make that distinction between C and others.

I mean readout will tell ultrajoiner primary as A and ultrajoiner 
secondary as B,C,D as bit is reset for all three.

Currently we have secondary ultrajoiner pipes reading 0xE.

Regards,

Ankit

>>> +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
>>> +
>>> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
>>> +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
>>> +
>>>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
>>> +
>>>   		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>>>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>>>   	}
>>> -- 
>>> 2.45.2
>> -- 
>> Ville Syrjälä
>> Intel
