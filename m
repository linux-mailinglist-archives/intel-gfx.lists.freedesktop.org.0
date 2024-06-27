Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C52491AD5C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 19:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0185610E28A;
	Thu, 27 Jun 2024 17:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bCDNO6sG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B5F10E28A;
 Thu, 27 Jun 2024 17:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719507759; x=1751043759;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yNIhMkGGRAZdP0GwbJuZrDyjw7gE2gonuaBLWHPyocE=;
 b=bCDNO6sGL6ciOdnPlhk1XS01CGf2cYWGsw6ZnPFkusRE2N75PLr6oNzD
 j5sdMWht4uyZ3N2thaZXTZE71H13BYd5xh/ZRoyETNsPIofef8BkGsXb/
 YB3ur26nvuNaSepElDYY2d8+lSYV6PBSDxco5zunxUVs07DKwlJBDftoe
 0/t5ZDRseoTdfx+2MvQCMUii0dSjLrpdqwnfPx4B1N/5x7JKjLXIZxgw4
 AvNpS3FlBBcBZ4bTSXTbVr1et36+o7UNcKorjIA2pOEtJ7xEz8O3IY3tk
 6gkfUDTnTecp/6eAHMg8hwln/yRleAJo5jqt44mB5p/9WlnCv0FLgx9m1 g==;
X-CSE-ConnectionGUID: JN92OqnMTWK0ITcfcAK9Fw==
X-CSE-MsgGUID: qZ8XNnDoSS2/5BCnHfi5JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="39173479"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="39173479"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 10:02:38 -0700
X-CSE-ConnectionGUID: sO7F3TDEQHe00fWYL+ZGBg==
X-CSE-MsgGUID: oT02MTbeQhCeqSlVh/CoAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49410708"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 10:02:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:02:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:02:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 10:02:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 10:02:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dFLngTVd1HuNny/bQNmD8tHS9PuS5SPh0UV7WXJclniPNap8cJmTzj7vDidHcp/wKIWyRWChjbf1LXElqnz7TmS4Fy4FkzLqPgbb/1h4jni4F0ZtMlDUj+Uy3zfLEvDqRQC0nqsQgc76bDuVV1FGnxtEQ+MU8r5LXdlj4fxo/+whevhOwfhWVVLCpDU7FZZMK+YwXxh0Ox3GFuEf6F55EG/ZQVQN9D2T2A8P8whIt//m4Xgw7RdzeIn/AA1CMWRnTuVNjvDRCer9vCA+BEajpFyDUePxF6bgl2HJIdhiLJllYLNm6jigzVO06JCh6XL1sSJSw81gAkjdVvyomklWlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yn7BLEAmMm0U6O2TzxpmpjWCWxFMHv4ilYJQkGgJhPY=;
 b=PFARjnUVv+osIG7B0lOxOY6nDfj+nW/EXJDXg6iMfL/r1NABxCOMFGX0VivqWdF8JKoFlQmEJZIpBFoBZVn8zkqc5gxly35Mzo4Gsiq8C1xogiFYWfC2tpo6htAz3ly8Tx5/Y9TPQ3IlAOS9Wx6HDCj02wmxptuYsixnwATVjIx/tO1Bqg2wMPd/Glfaw0gPqQOrl5YHonX3bjGHxdHSKpzpbFNYPx/I4ZkA7GwtfIBcHsr/oFujK/J/eKqxWX9u2dovoqm+93PLxDZBXDXMnoJt35Va8WeffnHjhqRWlYUPi2qhiZNIFaAVDEwUaqaz5WWl7zKNA8Oetqjcaq6jdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB7702.namprd11.prod.outlook.com (2603:10b6:a03:4e2::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.35; Thu, 27 Jun
 2024 17:02:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7698.033; Thu, 27 Jun 2024
 17:02:31 +0000
Message-ID: <0d2f4cb3-c418-46c6-b0ca-8aa1650aeeff@intel.com>
Date: Thu, 27 Jun 2024 22:32:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mika.kahola@intel.com>,
 <matthew.d.roper@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
 <87v81wc904.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87v81wc904.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB7702:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f02e540-a3ec-42bd-e5e1-08dc96caee8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TkFKOXk3WDJUblNzdHNteGljb3RoODFkbHc0Ky9UN09TY2h5ZlY2TTlQR0kv?=
 =?utf-8?B?aGJTQzEzK3c5TDBVL2xSejdyTCsrRlVaNXNkVzVreS9odkpDa0lnL054K2xj?=
 =?utf-8?B?RmlHZ0ZwZVVQdmpSK1BrWDBNWjlNRUxaN240cUNIYUZTOWJzckdEczlHQ0Mr?=
 =?utf-8?B?MDJNa2laTXVkT2RHTVZYY3lZMXFuQnRXd2x0YUhYaGZXc3FycnpSanVSY2xi?=
 =?utf-8?B?aFUrUUZDbko3dmZlVUFpd2ZvZ0pITDh2NGNHRVNJMzJqUWNXejNLTFdqaVZG?=
 =?utf-8?B?NU1wMXV6S1FmdURVaFRJNnVHWXAxYTdRNXVQS3laRnF6Wnp5QUxTUWtNMjdV?=
 =?utf-8?B?ZWlIaXBnSXc5S0l1OXZzVWZpdVNvK1lCQkZTa0FGbFA1dVVXSG1qTDVCa0Fj?=
 =?utf-8?B?dzU5Q2NjSVFwSFkrRytzNDgvUjVKNDU3UmxQcU1lbHJzakRhOEVBUzBTbzB2?=
 =?utf-8?B?alJKUEEyYlpobUZMc2dMNWx1cFQ4WENXSDRGZUVuUTNITTNiQjR0WUZvOGRM?=
 =?utf-8?B?N0JmeU5iUTZXZm41ZCtCdFVCTUdhdFVuaVRna1JwRnd6dnkvbHkrTllMMG5w?=
 =?utf-8?B?RU5nM2tFMjFLc3pva1NrMWVHUzF0RkpIVlRvRldwemhkcnROSSsxcExocjhY?=
 =?utf-8?B?TVg5RGtINy9wUlk1d2F6U08vaCtSb1BRQWNyc3ovVkZmNGl2LzJDSmF6ZVhp?=
 =?utf-8?B?Zm9kNWpIRENuK1FxUGpPNW9VWkRmS1Z3c3Y5U0JzQUd3MnkwM3lERk9FVnk1?=
 =?utf-8?B?Q2NkZVBHYkgwcE1JQlFQZmZvek93QkxuTUI3MVVsWlhDMVB6Y1Jmb3VodkF1?=
 =?utf-8?B?ZmJUY0xWMkFnRTNEVktGMDF0dVZaYkhiUyttOWp4VVEzc1NQTjVWWWN3emxV?=
 =?utf-8?B?Tm9WZ1dnWVlPV1ZXa2ttalBOYTd1RTRVYmxzSFEwOFlrd3lHVUdkdGdqYml0?=
 =?utf-8?B?SnY2WTFWSXRJbzRFZ0l1Z2RrOVBUczM4ZURDdjRXc09CTHdyVHFib09TYXBI?=
 =?utf-8?B?ZUo3MXJqMzZ1bStSMklIU2xzb3U1bVJwbnB2cU9FUFRlM3J1NUpLK0huV2hu?=
 =?utf-8?B?SGlObFNOT0M1YkorTVV2N24renJEQjRTaTlMTXdjZTlOREU0TllxSU5weE10?=
 =?utf-8?B?Mnp3cThYTEZyeUptbHNlN1NQcjdlZUhHQ29LZE13bnFvSEVsSms2bDVZQnBV?=
 =?utf-8?B?a01wZTFhTjlBbHp5K3RLaVZkTmdKSkFWUnFHci9hNXpSaThuWU04TkRQV0tv?=
 =?utf-8?B?QklVUmFoY3VGZHNOMWJ1SUw1YmxMQVRjZ2tzZ0dNQlp4NFVkd0lPcDJzblZz?=
 =?utf-8?B?eEtQS25OV3lJYnlUSFRYeWlBdjdJUWdNV2lRSlh6VUJlankrYlRjVDBSSHdi?=
 =?utf-8?B?YzVoa1dGYldmU09rRjh1VUwzdHptd0JkdEMvR0thS3NFcUpDMHdVUHkxdkhq?=
 =?utf-8?B?V1JFNnJYZ3RaRGRTT1BOUmZTV21xMzVaNTdIUkU1Mng1SU5ZSGlRUnc4em5K?=
 =?utf-8?B?Si9ZL1cwZVFGcWNRNUNjUmE5SEIwdGhTcVYzT2lGU3kwT012QWVJV1JYeG51?=
 =?utf-8?B?amIzbWxUbDU3SWh2QXRveUlRcmxvWi9KcTVYWGNMWWp6YzFsa0dYRzBuUXF2?=
 =?utf-8?B?dXRtSTBHQmFiVE5zQ2FzUWY0MW53NlRBV1ZKaGFlV2RGVExpL2MyOG1iUU9j?=
 =?utf-8?B?Y08vVjA0WHRXeWJqbmFNYTZ2L245UzJKamc5L1Z4OGcvcHBLTWwzTXYvbFlt?=
 =?utf-8?B?Zjc3Y04rbjhzKytGUy9PTlp0Smlhb0IzUkh1N0JUKzhScHhWQTdoOERkYnV4?=
 =?utf-8?B?YVZmTnhwYWYzdUZ1blJQZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTEzMmRybVpLME45cGRIQTVIYjcwYmRweitNempkQWRpNVZtdHkramZSUmRr?=
 =?utf-8?B?NDNsZDlnaSt0UmlDQnF4d3NJSWdNNmRiSjUzdEFXZkg3R29qV3hGOVYvdzdS?=
 =?utf-8?B?M3pJZi9nVmthdmlDZFRlY3dkNjFvOHpQZ1lMYUFpV29RSzJNY0hvWHk5cDNw?=
 =?utf-8?B?OUZIL2lyRmFVdEZCSHVvRll1OWowUmZ5QlJoOURkR1hrNTg2UU1YRmdMOEoz?=
 =?utf-8?B?YkxJSmk0OG0wRnltR1Y1RGJjSFk2Q0NHMzkzUU10ZmpVSXk2WnlHZVZ5S3ph?=
 =?utf-8?B?ZGdGUWFaL3QvWEZCS3V5RjhVWDhCVTBiWGU1WmkwRVRBUUYyTG0yZmVLTWF5?=
 =?utf-8?B?VUxveDhCUFlTeGUyZHUzcStXS0dCcGhBQU5sWGxQdWIvMW41cGE3WXE0T0Fn?=
 =?utf-8?B?RFREZnRjUjlIQlByRU1TMlJLbCt4TmM5b1BRaHBQR04xRGdpdEJtbU5CcDNj?=
 =?utf-8?B?QzkwK3VvaEV1Sk81aXpLSzdOc0pDamFUWU9SbTNFQ0szZ1FxdDRNdnVWUnNZ?=
 =?utf-8?B?VWlTY29rQTBTVlhkcTd0bUIzRDlmVWVQS1N4OWdvU2I0bzNaOU9ITkplOUZl?=
 =?utf-8?B?RHpTdXFOTnhiN29DVXV5M2dHeGQyc3pocUVZNnlLTHhlOCt5MklPa2gyMXdt?=
 =?utf-8?B?RjAvRWdEMXVkb3dRdEVrMXQxV0JLWGMwU1NIVHdaWkZOWXBRZjk0UkRYY0I1?=
 =?utf-8?B?dnNIaEZnd0NDZUVXdDJMVE1YY25oL1V3NHBidkp3OEZkaVh0OU1ZOW53aGRN?=
 =?utf-8?B?ekZKZFBpOU1WNy9tZ1cyU3cvTWM3MFNPYlVBWjhrWGtYU1NEL2VZVEUzVEVS?=
 =?utf-8?B?S21lTVYrQlFnNTRnVjhkZUo2dmNhSjZYNkFUMDZpT3NwQ3BMT29JNGlTaFdt?=
 =?utf-8?B?OUthSVFvUkNKZHlqZlRDaXAvaVcvV3FFd0VkOFZJcngvSnUycitobDRrYi9j?=
 =?utf-8?B?Vm85ZC9INTVqZXhzQVRXUjd4ZnZVMk0rVW5wS2o1eHk0a2FiNVc0VE9LZDRw?=
 =?utf-8?B?bEllL2VIcisrOHp1b0I0Vi9pWFgzQzR6SGJzZWJScjdjT3hZUVlhaVhOSitP?=
 =?utf-8?B?S21mWHFDaVlvU1RadlFSNWsyN1NXRWZCL1duT2s1OXJzVUhpR0VzQ24vbURs?=
 =?utf-8?B?bWoyblQvWFp2L0Y0WWRFOWFzWXdVd2Y3ZW5JTkRMOTk4dHZ5V0JKVkZKeWJG?=
 =?utf-8?B?SFd0TDFWamxIaWRnQXN3NmZXRkZMUTh2SCtkb0NZUnNGcEhCUW9jL1d6UXZa?=
 =?utf-8?B?NTJRQnZmeXBzUDJ0ZWw3SVd2Wm5OKzkxYUhmb21vbmlVTUJpTHRtZjBKSDJv?=
 =?utf-8?B?YTVib3VLS2VLZFZreFJBMnlqV3hBUXJ2NCtlUUZTOHRyeGJ5bmM4cVhydVdy?=
 =?utf-8?B?SjJTMWRFY3A1cHk2VnBickFLci9WdnhSOUtJQ25SblB5bXo1WElodVhEQ0wy?=
 =?utf-8?B?YTE0RjdzK1plRCtuUnUvSExBa1NQMXhhcTQvYnFVZ3h4YVhtaVRlcElwVkpN?=
 =?utf-8?B?LzJvWVhDdWJwNVdKbCtzTmFYK3BTWWNuc1BpQk9xOEw4Y3RXNmI0TkdpZWpO?=
 =?utf-8?B?WWZlaDlpR1JhT01POEZvRzg2M2dMNFJmWHhUR0xDdFZjVmRReTl0Qk9FbFR0?=
 =?utf-8?B?V2VpWjI0QUcrNWF1MEdDdUVQL1FYMmV1eWZMYkl6SnltVksxQmpQYnVnSVRN?=
 =?utf-8?B?NlJOUktSK1R3L050T1BmUnFrcjlvc05JZ05JZWJBRmZUdUFYRFkxNG80RE9H?=
 =?utf-8?B?L0JGajllSTllQnlZV0U1cGhKd0dDNkVaQzIzM0EwS25sWVdnUDRCNFFleXhK?=
 =?utf-8?B?eGpIL0V6clJOVjcySUdYb0Rqd3lvUWJRVjZyaS9XZ0MrcWdqaFlNT0piQ2o3?=
 =?utf-8?B?ZXpLWXppdDRZSWJ6SlhLNGQ5OUhzZFp6SlhXSmNNMmJzWFVRRlBwTDdSWElw?=
 =?utf-8?B?eS96YlRiRUhjRytCZngyNWNhRVU2ZWY4UGtrNmdMcVBDN2JaL2xvUlFoQWt3?=
 =?utf-8?B?UCtOeWhlOGhQcjcvQU1Wa0RqcnVnamtYbjRheUFENlhZamhMSzVoOTFPUjR5?=
 =?utf-8?B?RVBFQThiUkFqNlFlQldjQ0RvUWxDQm5pbDNlSi9BTGJJcDh4bTVrSmpYcmIy?=
 =?utf-8?B?V2hkZlVVNWhJSnRuNHJqUXFrTnYzdEpwejMwSTBWczlaaXowd3Y5b0VNNUR5?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f02e540-a3ec-42bd-e5e1-08dc96caee8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 17:02:31.0675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S6g5JJNFqMpmXZxOf8hYytorqp97xyPXKu5OCjSNM1kYEOKR2TJUi8iD3mD0tTJyl2hNcrGYnQcizQAqH2Lu6vwvjlWdkvPCElGlh3cFBVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7702
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


On 6/26/2024 3:37 PM, Jani Nikula wrote:
> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Try SNPS_PHY HDMI tables computed using the algorithm, before using
>> consolidated tables.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_snps_phy.c | 20 ++++++++-----------
>>   1 file changed, 8 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> index e6df1f92def5..10fe28af0d11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -12,6 +12,7 @@
>>   #include "intel_display_types.h"
>>   #include "intel_snps_phy.h"
>>   #include "intel_snps_phy_regs.h"
>> +#include "intel_pll_algorithm.h"
> Keep includes sorted.
Noted. Thanks for pointing this out.
>
>>   
>>   /**
>>    * DOC: Synopsis PHY support
>> @@ -1787,22 +1788,14 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>>   int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>>   			   struct intel_encoder *encoder)
>>   {
>> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>   	const struct intel_mpllb_state * const *tables;
>>   	int i;
>>   
>>   	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> -		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
>> -		    != MODE_OK) {
>> -			/*
>> -			 * FIXME: Can only support fixed HDMI frequencies
>> -			 * until we have a proper algorithm under a valid
>> -			 * license.
>> -			 */
>> -			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
>> -				    crtc_state->port_clock);
>> -			return -EINVAL;
>> -		}
>> +		/* try computed SNPS_PHY HDMI tables before using consolidated tables */
> Computed tables vs. consolidated tables? Huh?
>
> Anyway, I think we have two choices here:
>
> - Always use computed values.
>
> - Prefer fixed tables, fall back to computed values.
>
> But we definitely should not try to compute first and fall back to fixed
> tables.

Hmm I was not sure if we need the fixed tables after this and whether we 
should remove them altogether.

But it makes more sense to use prefer the fixed tables and fall back to 
computed values.

I'll make the changes in the next version.


>
>> +		if (intel_snps_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
>> +							 &crtc_state->dpll_hw_state.mpllb) == 0)
>> +			return 0;
>>   	}
>>   
>>   	tables = intel_mpllb_tables_get(crtc_state, encoder);
>> @@ -1991,6 +1984,9 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
>>   			return MODE_OK;
>>   	}
>>   
>> +	if (clock >= 25175 && clock <= 594000)
>> +		return MODE_OK;
>> +
> How's this related to the patch at hand?

Currently we prune the modes if the clock does not match that given in 
the table.

Now that we support all clocks between 25175 and 594000 we need this, 
but perhaps will add as a separate patch.

Perhaps I can remove this function all together and put the condition in 
hdmi_port_clock valid, in separate patch.

Regards,

Ankit


>
>>   	return MODE_CLOCK_RANGE;
>>   }
