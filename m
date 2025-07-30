Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8A4B15F2A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 13:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AE510E67E;
	Wed, 30 Jul 2025 11:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoADtpTI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BF710E67B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 11:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753874367; x=1785410367;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:references:in-reply-to:mime-version;
 bh=xq8ywBhMpSH9vdUfPRxyx02I//t2EKYHdn+SvITpEnY=;
 b=AoADtpTIDh8sHH5/+yOPK7inQhJXQDqH4muFlheomnvxY33c0jMrOP4W
 A/wj1RYc5kzULxXLMZZLK3llj67mL7TTZ9bHYAUvlrKiCYOIwk7ErcM8L
 TisLERyADI7iNdinQ80Z3gZ42GzSlDmOAiP3TeLFHmAeRHFQVNrO8+ECi
 PaX/UOYicxLaZY9FUkBOx6S3TyOlE7yZ0nbGFRsSx2Ocy7lke11ksiBuS
 YvQjXZbhUeKBvymWdI82/bQkhNExdtV0pOXYBQpmMF1X2BkXxvxJ7dt6K
 cUyHht28oVR53J9pAtOI8sNZYH40JUhEYYmz5fx6JbTtImQXvIfTLjrbl A==;
X-CSE-ConnectionGUID: jm48H5q3Q02kgecY1MM9mA==
X-CSE-MsgGUID: G94aT51BQYmeJQneG+aNww==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="59997701"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="59997701"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:19:26 -0700
X-CSE-ConnectionGUID: mQyqihZTRZyDuwxEQWKD6Q==
X-CSE-MsgGUID: fSaQgJ4aT/+H81aDkkoe9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162681181"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:19:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 04:19:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 04:19:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 04:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y9DFdsXuC4zGJ6LSQEhxJw1FahlOXKUlsaCa4yRR24BxjkqIoBxblTxQdyE3OykYgiVy9lN+fEQ2sG9JcCucuJx2dWEBDT3QosnV8h6rfr+PvyrQcvn+p0E78WjRxdzeO1NIQzpfN54x3UHuqLQNKPVemQJrumQbdk2P5LjLWfqFv2TNEvR+d+ERwldkMhzFsLNjT0T8XT6VgXXVZXTS4v1Nx+8h3Dsh6+7kigO3wzqI4/iFTv2zsevOyde/GoApza321Jk7H5M9VrsLa5manEUWe+kD5I5S2Mn2hWMwjOn/WADjtmXAhvdAVBp5RpJdCBJzsU/i9yO7KoReAGo+Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xq8ywBhMpSH9vdUfPRxyx02I//t2EKYHdn+SvITpEnY=;
 b=vexXAuovP4oEYr/K3v6EEeK1xmtHeZ17fOrQA26iVyrTBT0JPqQFoSGR4GhQRl2N/pKxDVnCNOWnG239I+MmPIcfg/PluM7XiJ2iHL/qeKRNg92HIyQHFVbUUlXhyE7PJnRWxlG67rrIN7RwOjaT2qctRbgUmzmYVCOjhthXqTkQkPFqGqEWt6P2nFEfCR9rk0PQFbBorD37I2p1EV+W7OhMRqSKF3Dn+77lsWJSqi6j5tjTFD8X1SZcjABW07TOilrBhWj04VWfhLy7Hrp5UhFBMXMr+j3IPFuZZBFEa+A8LEdL7/qPKQ+grK3wC8s35WNBXYF+SMTYTsPAZp22RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Wed, 30 Jul
 2025 11:18:41 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 11:18:41 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 30 Jul 2025 11:18:38 +0000
Message-ID: <DBPCK2PXREZ4.316I43O5NGBRQ@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/selftests: Do not overwrite error code
 after intel_context_migrate_clear() call
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <cover.1753859971.git.krzysztof.karas@intel.com>
 <c0348e052bcb2870acdc15d60f5389fbdf4ef886.1753859971.git.krzysztof.karas@intel.com>
In-Reply-To: <c0348e052bcb2870acdc15d60f5389fbdf4ef886.1753859971.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DUZPR01CA0098.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::29) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB5073:EE_
X-MS-Office365-Filtering-Correlation-Id: f61b4033-51ff-40f8-80d4-08ddcf5ad6d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3J5NUhoaHlLd00yY3Axa0x6UHBsb09wYmZaQmtNNW5iTnhabVM5Q1VhVC9t?=
 =?utf-8?B?aHdvbys1aDVmaldwQjdmeExZUEtacm42K2RwRjBVc3dqSWZTR1llVnFlWlg5?=
 =?utf-8?B?TytYTDNJWmhkbThad0UyYndHeVhWMUpLbGxDN3BSRGdkLzJwT2lmbmNzQnpJ?=
 =?utf-8?B?QzVTU0ZWcFlueHg4RnNaZnlydzVvTUxocU9SSWhOOXpLSVRkazZwcm1INzhu?=
 =?utf-8?B?eG9oWTBFc0ROK3cxNlhUTWRUdVdybVJiZ0tEajBzaFN6R292YTd6dEdhWUZL?=
 =?utf-8?B?dGlDUVpuR2ZOT2ZMdldNdldHamZaMldseDZEZTIwZXlHRS85Y1dEY095TTRy?=
 =?utf-8?B?Ly85T1ZIRCtBaUlLUDBTZWZSenVHenl6ZGNGWFkrQTdLNTRrVlNEakpBUWdQ?=
 =?utf-8?B?aDJsa2Zsa2w2Q2Q1TWQ0ajh6R1B4MXdVS1p4RjRpd3NiY0IzVGZEaE9FUy9x?=
 =?utf-8?B?Z2RtQi9UeU5KR09qdm5xZlllbjcvbFFxS3ZSZ0Qrbmc0eWRINzYrTTRHamJG?=
 =?utf-8?B?WkZvdDZkQWdRemlFcFRORnRVRXM2ZkpyLzhUTmRKZjRsWWtPMFgvUVJjcEpH?=
 =?utf-8?B?ejU2SDVCc1M4Mi9xbDRXZmNZY1lMeHlaUjJ1NnVlMVo5T2FIRytxY0xEN2Fw?=
 =?utf-8?B?dFpqdUlsMGFHa1dudm93aUxvRDU4NFN1cEhqTFJCVkZsa0ZHVGF3SGJVZjAy?=
 =?utf-8?B?blY1MnJGaHJyVTdrRGpCaytzNHZMMHJ2WnpsazRxOEV3SnFaSHp2RjlqNUJH?=
 =?utf-8?B?Q1hQeGM4SEUwTDRGTit6K1Z4aEtzbFRvbXEwT2pkS2psSndUU0szWi9JdW5C?=
 =?utf-8?B?RjJaK0FrNDFGTFBVZWVIRmxXRmNiLzJOeWpTYWp2cnY1Y0x4Y2ZKZGdkbksr?=
 =?utf-8?B?bWpmd1BTbmhGNktCQmhQVlZPK1E3dWp6ckNxZmNiRDdvKzdYYm41LzBpdSth?=
 =?utf-8?B?R2tnaDYyT0VqVkJkMi9ZelFoZldJQXJNbVVmRktOVVJXbVZDL01jWm5IS2Mv?=
 =?utf-8?B?Nkh1WnlSa0JSMEdHOTF6dVFNRjMybE5veG1HVmdHYm5WM1NBZ0xmNC9PUW13?=
 =?utf-8?B?Y1JFb2ZDTEN1S2dSbHRhZlNqR0pEQVRwRUZDT3VwZU9VS2kzVERwYkRhK051?=
 =?utf-8?B?WnpTOVNocHp5akF3QitvMm5nVHpKOVpBaXV3MHBNV1FISlhxTWJLbGNoT3Qr?=
 =?utf-8?B?R0VGMnN4dW54UzFWUFZMOGZBd3BHZnhHbU00cnNFS0QzbEpQeGc5T3JPMWtX?=
 =?utf-8?B?SnBTQVJQS05PQlZEWXFoSzJvaHBybVd4QlFaSHF1cDNScElsdG1OekJMcDFI?=
 =?utf-8?B?ZlM5UGROTnpiL28zZ3QyeUtyK0RlVXN1bVRKV3Z5K2FUbUtjcmYyWlYraUJ0?=
 =?utf-8?B?bVp5dzcyM09SdWRXVzBkU1M1ZzNpSnBsdGo2eGk5ckR5M3ByaTZOWmVQTi91?=
 =?utf-8?B?VEl6dHlUa01MYThkUmRxb1JaMjcyeklLV2d1MytoK0FYRXBGQTFpZ2N2R1FW?=
 =?utf-8?B?NkFydW5ZUTBRVC9jS3hMdmtvTFFTVXVpUEVLYkJaeG4wVWcvN1Y1RGxrQWY5?=
 =?utf-8?B?L2J6cnVicm5odUpKUGZHeTgrY2RGMmhkV1FvZ2pIaHRQVXBZaDZpamZKM0ho?=
 =?utf-8?B?VU01ZGNBVHRwU2htQmFXSEYwaXlHQmVWdlAyVjZaUDRGMmFsWkZGY1B1WmdD?=
 =?utf-8?B?Y2Z5M3crSkdPV2dTOVl4Z29Hdy9yeVp5NzFGME9sZ0QrVHRJYlE4Qzl6VS90?=
 =?utf-8?B?YnoyU2FYRytMaGlyWEQwK04ySnVrcytWQS9qR1YzZXNmanQxMTl4UzI2OG1x?=
 =?utf-8?B?NjFyV1hXOUZkejhKWGV6Wk1PODFZWHZaTUxwMWtURUFXRUNiakVTS1FiVTFO?=
 =?utf-8?B?dHJxS3ZNTEN3d2NiVVVVNkFQODVzN3lhVnFhUWczWFVkVmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnM2SUJEVzc0OEt3WGFKeThuQS9nMGZxaVdJQlZNTDNqVVk1RGJzcGhLMnM1?=
 =?utf-8?B?cG90endCeEhNa0hrc2xGVjJKTXBJb2lxbnJnMW5xK25IMmpXOW42cUdmTXJo?=
 =?utf-8?B?THB5bUVlNzZsY1BBYTlWZ005c0lRRnE5NkVlU2tOYzNtUVVYeTdaMWFMTHFz?=
 =?utf-8?B?ZVF3ZVZkQjlpWVhhVFJHN3prdmY0Yk5sNC95UHQ4U0RFeDJkTm96MkY0Y3NF?=
 =?utf-8?B?dFpYdmlnSkJNbUFjdExXb3kraFhHdzZ5a1RGWTJSSm1iR0RtWlNIc2pubmxu?=
 =?utf-8?B?d1Z1NVk0RWNHUlZ5ME9odVZuS0pYakJjT3ZzQnRyTmZtY1YzNUZCbzdqSEps?=
 =?utf-8?B?LzVOTVc1KzV2aVVHV3lXZ0xpQU9uOEVGWkd2QWEzSzJPM1lmY3V0YzBzRE5R?=
 =?utf-8?B?bnFkSnczVkZnWDA0M2lab0lUcEZYQ2tOSWZNUVJLaU9sdDQ0ZlAxRXRVdTNM?=
 =?utf-8?B?Zkc2L0UwWjRkaEVQTU9HUzRxakJtU2Y1MW1OSVVnY1h2V3VDMjN3UDA1SHZw?=
 =?utf-8?B?TXhnRk5PbFNoSEtnTUhwUzFJdmJSYUhaQ2ZvSjR1ejdsZU4vWmgrdEM4Q2NP?=
 =?utf-8?B?WHF5dDRtWWlkb25ydWdkb3VucTMvRlpHbW9FVUJMbE5ueGRjdjhTZ3ZpNHR5?=
 =?utf-8?B?L3dFSjY0WDdiU2JuMU90ZTd5a3pEczMwcXA0OC9oRFVJelRZeExta0dlREw0?=
 =?utf-8?B?aXV1MkQyVEN4OC9SMGloL2JuMjdYRGkxcmkwbGkrZlQwZ3YzTkFYZk5tZkF5?=
 =?utf-8?B?SWVSakZIQVBNQXF4cUFGVFhDbktWdWFiUVgvNmpQUXhKRFhsbUo2emhpcnhY?=
 =?utf-8?B?ajhZK2xjbXJPRmZCUWdyQW5pdE11bUw0TXBxd29McWFxa2N4Ym1lc0hMdzRO?=
 =?utf-8?B?QS9HdU1menpsOGk0dVhHdkZaNGlzeEp1SzBoVWJtVnhYVy9SajFJaUdiakoy?=
 =?utf-8?B?QzV6T3Y1VGU4bit2ZFdIV0xKSDhraEtFMEhZZmo1eW14RkFBQXZnSWl1Skh3?=
 =?utf-8?B?QlBscTBBTjVxbXRmSkxOK091Q1E1S1lwTm5NWjh6cGdGbUw5bWMzMytiN0JJ?=
 =?utf-8?B?dnQ2NnJ2MnF4LzdoYUVHYkZ0T3hSeHIxVDVUWU84UU1qMzlMWGErUFNVbVRE?=
 =?utf-8?B?aG0xdlpsWGRCOUREbkNNVlNFbUhBTVpBQTNvOHJteFVDSTk3TUlyWEppSnRK?=
 =?utf-8?B?ZG44M05EVHIrV0o0cUppNzduSjNXcHdWL2dmY1M1b09kaG41YkM5QzMxcnl2?=
 =?utf-8?B?ZFVDcTlQVXlkS1prWjN2aWhCSDN3b2c2Q3BLc2dzK0g0OTMrdGlhZFVCY1Fn?=
 =?utf-8?B?Ym42M3hNMWYwTCtjUXdaKzVrS3dJTW1IckJCM0pmSGtnbVRSNlcra1o0STBN?=
 =?utf-8?B?SVl4M3VkM3ZuR2xaUnlWVXc2STZiM2FUZy9YZ2NSclErOUVkNlhsNTBPaVlW?=
 =?utf-8?B?bnNQZzlwakw5d0tteVRyQXg2L0JvYnh3L3F5ZkhRVGh3RHFLQk1zRGVzSUcw?=
 =?utf-8?B?K3pSY2I3WlpUZ0lQSENDSm95VzFqbUNrQWhqVnNzZ0lYVmo0TlJXcCtyY0xU?=
 =?utf-8?B?T3UzbW82MjNNT1grN0FnK2tSNkRpck1qVDgrakk0NmRKN01XYnNvNVBJTEda?=
 =?utf-8?B?R2ROakIrcGk2Mi9EbVdETXgvMmpqdGpMZVRZVVczTTZHZ3h4OWFQSlNVU1Zz?=
 =?utf-8?B?R1c5azFHb0tMUnBwdmZPUXdmNFhxSjlyKzJyUHh3TDk5UWZyQzBUQkJGM1Nv?=
 =?utf-8?B?U3crYUhCNDQ5VDg2ai9Gb3d6SGRrblFERGhDbHZwNWI4ekhQalUxOTJ0eTli?=
 =?utf-8?B?QjdYbHRxL2FwNWQ2dkpnZnBwZUU0bGVFbU90SEMzNXJ1VnBNK2REaVJBbGFW?=
 =?utf-8?B?ZDhKS3ltS3VNajA3clVzNHN2T0ZuMTJkTzh6TVBTZlNQOHIrQUtzZFJQd3B4?=
 =?utf-8?B?MDhjYU11WVQzeFpiM1N3b0VuTGFUM2FjV0d6NlpBazNXZ0ZnSlNLaWhQVEZx?=
 =?utf-8?B?V01XTFlROE4zU1E5Yy9PbzFtZE1iblFlb1NRREJKTUhESmZib2UxVWwrck1z?=
 =?utf-8?B?MXZERXVOSzBTSE1LU0xKRzh4SEZKbWJnNnV4TkZWd2lTQmtSRW1Ca3BZcXdH?=
 =?utf-8?B?T1JQbmxUaGVRMmpvM05mY21iNzUyWmZtUE5sTDYyVUt5SzZEQmozM1plSFRC?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f61b4033-51ff-40f8-80d4-08ddcf5ad6d7
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 11:18:41.6718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BIflnGFjr6Xb8L9tHQbTistwy3zZf0ueH8oSgT/s/IehSPB024yQtgF+1jK2ojMpnz3jKVHrrbxt1l3Pfmjvg+Y5XNqhmkw9HH3gVnPVmIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
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

Hi Krzysztof

On Wed Jul 30, 2025 at 7:39 AM UTC, Krzysztof Karas wrote:
> Currently this function's error code is stored in err variable,
> which, if a i915_request is present, will be immediately
> overwritten by return from dma_resv_reserve_fences(). Call DMA
> functions only if intel_context_migrate_clear() succeeded.
>
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

