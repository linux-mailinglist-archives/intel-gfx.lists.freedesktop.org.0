Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6CA98F2B7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935F010E081;
	Thu,  3 Oct 2024 15:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaGKqFvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B7C10E081
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 15:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727969943; x=1759505943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tuczxn19JFzMpLVGqBQgEP6SAPs9ymqlOkRHJsohTcA=;
 b=RaGKqFvpCVAQfFtBk1DkOpj+ykSbuxuUO8iNyx/uU8j3CTHl6phsSJeC
 FJ7Bbf70jFxbJ+LX1UKCIe9bivFD8RK5RyunuxW4XjEDXgPHNhiDQIvo8
 /1I6d6NKqsIRGX7gHMxXKbEjrDy7ZgTgRnNhqWiRzAUgt0/gigcykhsMq
 8SlrGuQqSvjMhBqOClr5/BwpaEKalUzIByjyInAORI/p7X6GkZwTjgaeA
 1RXTeEBr1fVW+hoK5kq9nXZ5UCd43oubuDy3oIc9oh5wfpQiMkvC38yL5
 VdvWWkHDQdEENSEZMeBJVgWu55Cf7K8/Vg9kJz5S4lMKNOOfAT7hANSgT g==;
X-CSE-ConnectionGUID: ispVbQcsRL+IwNBcmArUkQ==
X-CSE-MsgGUID: Nx4kHw8RRtquCBbRIHAVyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27322991"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27322991"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 08:39:02 -0700
X-CSE-ConnectionGUID: JjwNfXgNSnyz9DtUw1ewFA==
X-CSE-MsgGUID: wCtKyIMCQiyCFUtISVCQ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="73977205"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 08:39:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 08:39:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 08:39:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 08:39:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 08:39:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z0r637DBeAfJQQdZmcIsVv0UhrxH4YfXgkysd8H54qfCKdEtq1ufg2+brHrR02fPaQg691mUOZ+f4tpGPr17ipXZeR03tiv32WAfWDbHdJMR/kRIOpopArk618w3d3/mBH5KF6AlycpwGlqirEt4WJkl5hXpoxnO9WV7RZFWj0nhsQC0VmtD8v3jr3KxiVRdq6UP7mPH1k4dLOR8el10mQtRHzE8M+BNaf+uMlbc3uLfi1FTz5QxUzh1dtBfimaUma3jlcCk2EDHLjZ0fE+OOtfvqLpS3r03+7aqMFLU54a2tYd2SyqaahdPGGGQ5mIqYcB406ft/FsIxUJTSE13XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q45TJSkGpAVCb53ZL24d5FtYxxiSabJU+qMBfXfefWY=;
 b=MBOTd4XDV6CKJw7F/V7ILizvxlMBJlRS/LrMhBkkj2P3Mqq8eiOvAVbPi0rUNUZmmgb16YMxlpWHXjnIvUc9hbJIzirNDDOIq4eXaNwLQKHvv8H4J7gWoMeaPNZ7zU5gY0GJSM0ZVVDqlPsjIZ/0kQTLUR39Dq6ipo5LAUXw8Y3xjwlhQptn3s/1Mn+HHdW0bSsJEuu/UlQ03Iyjci8T+6Q+ZVsGJ7kSTF6iQ4QWHqPox5uqtYoIzlad38aKUcOrbgyQi9/DrnDp/WBUf6ICeD1wy9GiJi66/2/+rbEVirojQGn7wLq62Fvl0FOjBH+1zDbXnqvZAGmAan4Wnr/oFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CH0PR11MB5218.namprd11.prod.outlook.com (2603:10b6:610:e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 15:38:59 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 15:38:59 +0000
Message-ID: <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com>
Date: Thu, 3 Oct 2024 21:08:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Matt
 Roper" <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <Zv6xBKixcWn_gJEW@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::10) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CH0PR11MB5218:EE_
X-MS-Office365-Filtering-Correlation-Id: 52c8cccb-0cd8-49a3-95c4-08dce3c17f55
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkM0bEFuYWQyY3ZHTnVjRzVFb2d4aDRYdjd6MVpHbHhkT29QT3RGNU94UWRV?=
 =?utf-8?B?MEk0SzhydFZXSHpCSW1ibzlZejMxY2o0Q3ByK0FZak50K1ZBbjgvV2REa1Q0?=
 =?utf-8?B?TjJjUFNuVWhnZEloRTNQcGRLRUhFa2xTcHBOOGhJS1pRN2RodDh2SEc0MGZh?=
 =?utf-8?B?SGhTc09MbHpVblJWNVlua3BDMnJFNG81Vi82VDg0aGduOWxsK1F6UnkxWFNI?=
 =?utf-8?B?OC9DMUtheElyMVFqeFJrMXBuSkdvR2VOU2NVT3ZqcENuTWhITVFGT25nUFBi?=
 =?utf-8?B?TktzS2NnNmp1eUNUeUc5aThUR0d1QnV3TEwvSkVsNHN3M0ttK052RzlFaFJU?=
 =?utf-8?B?WCtDWEQzMzJ5ZkFLekFPcDJpczJZcnhPUzdGZkdIdVJFOUN5aWg0OHIrc2tt?=
 =?utf-8?B?cDlQK3ZqVUNRUjFHc1ZadXJMQk1CRFpqbkxZbTRLV2VBaW9iR2xOY0NKaktN?=
 =?utf-8?B?U1AybDZSVWhsbEdob25DNEdxOTJKdXVXdkkwMmNjTzVSUXY1bmRXbVNXTGN2?=
 =?utf-8?B?Q3hyQ2NrVmFzV09mMzFkZ2pGSUJwWXlTQjVnekRJdjVNVFREbjZ3OUxzbVBE?=
 =?utf-8?B?ejVZTE5ORFVRU3Q4Q3ZvU25ITEZTU0JzT3hUYStlQ3Y2OHM4bDk4Z3BYS0t4?=
 =?utf-8?B?clhyOWM2K1pRTHhpSGdnRGk0bFoyNlQ0Zkw3Q1duNWJvK3p4aytvZnJtNXU0?=
 =?utf-8?B?ZDZJU0xYVG5Eb0t4ZHdKNmYvOTUvWDlsb2FDTzdJOENReVVxVXBFUUhOQklk?=
 =?utf-8?B?c3pCV2p0bExRNm5DaklkYWpCWUNuOVhKbGtoR3krV1djMFJtMFFHSzVQT2M2?=
 =?utf-8?B?WjZ6TVNtNEpYb2FhcmgyelphMWduK2xJaFg2WEkrVEQ2VnFqMG9qVUl2blZE?=
 =?utf-8?B?dXkyQ01UYVoxT2g2RVNQSmN1WmpxTnV2cHVDTEZFcU96a1F5Y0N2b3N5azdI?=
 =?utf-8?B?WnBnbFI4djJUcDJYeVlYWlg0cm9VelZkWDJGaEJmemUvNnNvdlJGSTAvcWdr?=
 =?utf-8?B?bGh4eDNQYXpUTFdKTDdaVE9sUHEvSGlmSkd0SWVRcUNvVWlWVkx1THEyS1Fm?=
 =?utf-8?B?dkRXMWN3NjZyS1pLdkU2Qmd3c29sQmw0VG4wdWlZeXpyNnFxMERURCs4bXZF?=
 =?utf-8?B?ZDlYaVpiZkU0b3dSbUxORlRndTBaTmszbUdscFJMMS8vK056Zis1Z0FpekRI?=
 =?utf-8?B?SERkTEJTOGlDM0hsU1VxTHluK0JMdWwxYjcrdlQweTNMM3AxN3U5NFZoQW9i?=
 =?utf-8?B?REhCKy84V1l2dGtpUHczelVMSkc3WmF0ODFNNGZONzBYVTllbmNZeCtNZnJn?=
 =?utf-8?B?S0VBT2NGY212N3NpNmMyb04xSDNlK3Vxdy8zUHd4dDNHb1JrTUhvWEs3a1V2?=
 =?utf-8?B?d2cra005SHVWUmVqQnpCcS9WNC8wdnFhMk9uY2NwZ2FERlF3WFZaWUxiSzdP?=
 =?utf-8?B?azhvQWRBNnJSZjlabmRPREplT2J4Wk13UXJxWlVNZ1A4WTdGTEVnQmx4QVls?=
 =?utf-8?B?V1pVOGZjZ2xqb3M2emlyOThqbjYwbWJlUmpFRDN2b3NpSG1XYUsvbENUaWdS?=
 =?utf-8?B?eE8wQnpRWHFlTTVWRE05TEFVMkZZdll1NWsyLzRIWkdjMnJUR2lpdGtVczJH?=
 =?utf-8?B?WWdQdC9rellYR1diN0h4cU9Ja2NlWGhJSWVnVUlMd0N1YTh0c0NMVllOeEJE?=
 =?utf-8?B?ZkVCdFdFVUg0OUYyUk8rOGdEbzh1enhnZDNPYnZ5dy9sUHh6bGhtZ0NRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amJDeDEzcld2NDJPRkorMGhzMVhhVTV5ZUJ0VVlxWktyZy8zTXA1WC9iUnZL?=
 =?utf-8?B?Q3U0N09JeHlLK24xNE9nN2NHNFVCTk1mZitWZjR6OVJmUnNKSDFuVmREdG1P?=
 =?utf-8?B?eEtqMFFRNGJteVlQb0hSVVA3dkhZVmRFUHIwR1R6RGswTkdmK1BycVZRMUYx?=
 =?utf-8?B?R0loeGpTZUdWVW12SVJ1RTFEdWt2VFlrOXhMK3gzVkhWL1luZ3M2a01sUlJC?=
 =?utf-8?B?aWpXOWpLMmN3cTJ0M09WK1dBclNROVlRbWJtMlBnZWh6ZjZWYXd4ZWdCZVNE?=
 =?utf-8?B?WjlscXYxb3RSbFNQSnowaGVIbXpnelNTK05ISlE2cVppL0g0c1FBbWl0Njh3?=
 =?utf-8?B?VjRUeTJKWHpDUVlGaFh4aXhwZmwwQzQvenJhWEJVcFFuRHQ4RTZTRmJlZEUy?=
 =?utf-8?B?TEltaG9FL1VKNlV1QXFhQ2o1czNwdFY1ZHI3azBNSGdQSFNqSk9xTVFrY0Vu?=
 =?utf-8?B?WmVqMGljdU5Ga1Q4ejEvUk5YZXVGc3ZCRG94S2EySXEvb1JmYWxUODN3dnpr?=
 =?utf-8?B?ZThnd2w1aTRsbS9ZTFlUWVlYd1pVWG42Q0dUYUp0TFBPT2hzaHAvdHVVSGh6?=
 =?utf-8?B?Qk1haVhIYmE0ZjhNcWR5Z2JySSt5Nmo3M2pzYUpnR2huRkh3WWVuNUhuRFg1?=
 =?utf-8?B?N0dscWlRbHlPRk9EZjRCMlJZNHJRN1EwWDE2QzFXdU50bjFoYm9tbWhxa1pC?=
 =?utf-8?B?Q1drY29kcGlMYVU4c3F1Z3IvUnpaNUlueThuRU5EREdROVJvb1YwTzR5R3pO?=
 =?utf-8?B?VU0wUzZyTVF1UmtxcS8xbHdQMS9DTTV6dWlUZkNPd0tlQWIzYTBPQm5iUHlh?=
 =?utf-8?B?bTExVVZVakNrSkhZbTlVOW5hOGJlUkRYWW1WZHBLN0JVSDZ5UUkxTjlLREto?=
 =?utf-8?B?aHhQQlJrb2xXOFhqK0J5eGJEa0Y3OThaMHB2M1lVMzZPNW91anZtMHZqRVNC?=
 =?utf-8?B?NDh5NVQ2S2RqZ3pVSTJsMmo4b1BleWVCYnB6eGpDZDVPWEdkY3UrbU1JTmhI?=
 =?utf-8?B?cGlBNDlDQzIxOGw3Z1RuRk5Bb0drdkt6bXNISGJoeXJxYmVTVGNMWU1Xa1lE?=
 =?utf-8?B?SlEveUVkM0NqUnhsZ29hRThKOUhqeFRXS3BLOHgvK0JhRXJCSnFYblhIZUtB?=
 =?utf-8?B?dVJoYzE4VmRLbVpieGhwOHZWeWJoVFA5czZhS09BMmdoOURMZ1hzcHNsZzlV?=
 =?utf-8?B?alJCSG9TQkUxU2FhVXpmODE0MjMwb05zalhaazlmZlhLejRjMUZoSjA3ckJ0?=
 =?utf-8?B?WnJnUWN5UzdONXd6cG45SzdmMkowMUdyd1h2ZVNzOGMyZVY0Q3FuOUVlWGFl?=
 =?utf-8?B?Z3JmMmljd0xlSUcrckl0QVNuNUtvc0hVUzYzTEFzRjczME5lcTdYam54clNu?=
 =?utf-8?B?cnZXL2IwK2tQWThsbEIwa3IyV1Y2d2tCckI4S0krQ1E4SUp6UkhWTXZFdjdD?=
 =?utf-8?B?d0o4b0dLQ3p2RmFaZVJxZWpnUzlYcGtIVG05RU0xbHpscHI1Q2d5cjRKN3Fa?=
 =?utf-8?B?a0lGQWxSdGZSamQyUS80ZkduYU5uVXBmVE9nYTR3N3dvRzhwU3pDRG0vM0lR?=
 =?utf-8?B?TGRHMXVvdVJVQ2tjb2JjZi92NVBEWEIyMGYxdWxXTkFudHhBSS9OdjVlSkZ2?=
 =?utf-8?B?a3RQN0tUd0I0ZmRkckVCcldObzdsVnBkUHRtV210elNvT3EydFpxbTBZYmpu?=
 =?utf-8?B?RE1NcGE5MDFqVWpwd2tNWGgzSGkweDRrNHZ0UEF6LzhVMDdtUjBuYURFSVIx?=
 =?utf-8?B?TXIwM1BoNlkrRWRHcTVYTy9ESzNlbGFmUithUzNIc2V6aGRnZzR4YVo1WWlQ?=
 =?utf-8?B?RUxwb3pQR3dRQ3F1bkhxM243UlFIZzdyUVlEKzBHajdQN213Z2dwazFxNmJL?=
 =?utf-8?B?akNWbnRvaWJxOC9SclluWGxPRnpFWnNCTHF1dkcrcGd0RjN5aVJ2TklPbjhl?=
 =?utf-8?B?cjlPOWFpT2x5RHJMWEtVVjBWY0tPWStUaTJHOE4xQzdZelFEQVN5bE9uTWh0?=
 =?utf-8?B?dFMvamYra1BBUUZTcVE4aEpsdEs3V3IrNlhDRVNEQytBSTMxUHBPWFA2c2ds?=
 =?utf-8?B?Vk8yQ1RTOTdyTGxvL29MRThFNmhFNDRCcERIQkhzOGVCYWlCQjVxK01mc2Nv?=
 =?utf-8?B?YXhwaXk1T1dBL1BWMUxEWmZScEVZR0hCT0pBTWlaSjA1dXRod25ZOTdVL1BQ?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c8cccb-0cd8-49a3-95c4-08dce3c17f55
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 15:38:59.0792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4s4kwLT9Y+qGDYs22ZGcGdl+qW1oC128aZNKHYp0iNtUqzBZjVfW2MAIKby193QrI5CwiqLwdYAETJDoQ/b9mKwwP4+vnay1BNH0Ap7e3DM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5218
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


On 03-10-2024 20:28, Ville Syrjälä wrote:
> On Thu, Oct 03, 2024 at 05:32:56PM +0300, Ville Syrjälä wrote:
>> On Thu, Oct 03, 2024 at 07:22:37AM -0700, Matt Roper wrote:
>>> On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
>>>> On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
>>>>> With ICL, we have a way to check if gamma and csc are enabled on
>>>>> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
>>>>> along with the existing BOTTOM_COLOR checks.
>>>>>
>>>>> BSpec: 7463, 7466
>>>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
>>>>>   1 file changed, 22 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>>>> index 50f41aeb3c28..1bf36898dc7e 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>>>> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>>>>>   		crtc_state->csc_enable = true;
>>>>>   }
>>>>>   
>>>>> +static void icl_get_config(struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>>> +	u32 bottom_color;
>>>>> +
>>>>> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
>>>>> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
>>>>> +
>>>>> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
>>>>> +
>>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
>>>>> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
>>>>> +		crtc_state->gamma_enable = true;
>>>>> +
>>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
>>>>> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
>>>>> +		crtc_state->csc_enable = true;
>>>> We don't use the old per-plane/bottom color way of enabling these.
>>>> So this is not right.
>>> I think that's the reason for the patch --- today we use
>>> skl_get_config() which *only* checks the bottom color settings.  And
>>> that approach is documented as being deprecated (although still
>>> supported on current platforms).
>>>
>>> If we're reading out pre-OS state programmed by the vbios, we probably
>>> need to handle whichever approach it took, right?  Or are we sanitizing
>>> this away to "off" somewhere that makes it okay to miss what was
>>> programmed?
>> I think we're not doing anything. I suppose some kind of
>> assert_legacy_color_stuff_is_off() thing somewhere could be a
>> decent addition.
> Or maybe we don't need to do anything. The state checker will catch
> this problem with the current code as far as the pipe bottom color
> is concerned. It won't catch inconsistent plane programming though.
> But we also don't have such a consistency check for older platforms
> either.

So, are we essentially saying that we can completely remove BOTTOM_COLOR 
from here and just move to using GAMMA_MODE, CSC_MODE for setting 
gamma_enable and csc_enable?

