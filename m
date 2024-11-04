Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3546F9BAC97
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 07:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADACD10E37E;
	Mon,  4 Nov 2024 06:35:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmaYMiHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D61F10E37A;
 Mon,  4 Nov 2024 06:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730702130; x=1762238130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JAJbsmcj+FKpz0NXwPIl+mj6JLEI5HQMFmtwC6O5dv4=;
 b=QmaYMiHVe7aTWrDP3/HdkYbKx9gpZrsbXVyrYy9rtPfwh8Ao6WRK7jJa
 3MqXRbEeV2829KfJoMfv40shb3fKOR42xt+EJor6F5ip1wKNJWwGsP2ps
 Yu3oEzU7Mr3GzwU/J0b0FZeYxJiAyx8Hg2R3MncGwhmUGPyHHtb6vW9s5
 eiiR3v6PImrtFhzw6ipP3dDOpYqAx7XYLSiCGUPN06ekROFJWsgpCaBdg
 daMKV80ojZ6zZ+1sGYaxr35LKUdu7iU+pB0SHi/P6gLxx87POXsInZ3G6
 l+mCoqB6K9m+LYuGjmtn/PHYsDhYLC+1vdcaHa9yGbmOT5jmOZBRVC/ES Q==;
X-CSE-ConnectionGUID: tNrIa1b0QX29tcQfztCHfw==
X-CSE-MsgGUID: jyT+q5giQCa3m1aWmj7u7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41757011"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41757011"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 22:35:19 -0800
X-CSE-ConnectionGUID: 5G5F/KDQRAysjB6QXAGHbA==
X-CSE-MsgGUID: jU2h4sUjS9qzSzWVraaxug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="84369462"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2024 22:34:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 3 Nov 2024 22:34:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 3 Nov 2024 22:34:47 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 3 Nov 2024 22:34:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F3xNHiIhqSYSYvNDbqUsFda8fMw66miANWlo4pMdpdUSIUs0kvWI8dM9yH7u1p1/xY5rt5dLuNmX11bggJVH0PeIcXhViGGkDCL7a/sf5HM1pIbAUrSTNC5SJtKyY3tAXmFvSYoFERU2GUngBxRn97eDIHmrMWsVJLmYzxfR/zx4HVws5MGj1xUgGQyh3bdWP34ovcmgDnIXJmTu0QZZ4fIhbyfJnXwqu1TIfiP+Tq+1m4gJ+1cm9ajuNggrcvzu3jyxykz5J1+5Yc7I48esGMY10QYAwEM2Mzff1j/nG02SeR/FSluphMjyckaUP3as1DPTDlNxXE+E70AhQrx4+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvsL8njVN5vMVRs+WXxovFgp7QnN+UdncTGoS4sif/g=;
 b=GOsXpRGhIUiF1wAYHZtLeIWi/2j9BEn0TBguJa4Zgf5Zu0naRh+5v/INbuYzNx8pRluy4yCGlqdmBrf+XonsN9FE0N8HapNdYC4zU+dzFycOmpg3a4OoiGlSvlY2xkJH16ecXokUrs0+QUkGnQrdVRjxgnCzQKd3zY16JwZn8kaSIqUxOYuyvI+xD7i0qb0jq5xffCwGPGK5vDXZI3bbC6GykQ6dvF+2eXdtuCEm/8k3ZWrSrlsww9fv3B95ubr+QSU7Gp2t+Wo5LQT7XirMs11fjF88vZXooGR3tHyyaTwcRgHpUTutN1FYKFM7JuU1lNRgvB7SyJ32PuTewBiqHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.26; Mon, 4 Nov 2024 06:34:44 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 06:34:44 +0000
Message-ID: <093b3a7b-e79a-4a5e-85b5-144a8f4e641b@intel.com>
Date: Mon, 4 Nov 2024 12:04:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/xe/pmu: Add pmu tests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20241030205232.1511031-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241030205232.1511031-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0111.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::29) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|CY5PR11MB6090:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bcb1796-f15d-4e45-0e92-08dcfc9ac542
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THVkQkhhK0FaRW4zejcxNnlyVUM0Tk8rUjdnN1M2R2d1SjJvc0ZiY3BLdGg0?=
 =?utf-8?B?VFFKaHFMS0ZVVU81YWhKV3poaXI1RUYxYWxWam9iVDYxREQvL2xmTm9NZkVX?=
 =?utf-8?B?cnNrdVZZY1dvRXJXWHhzWGwvUXF1YjVZS2MzSzlHalZEOGdrMEdUcXV5N253?=
 =?utf-8?B?Z0h4dXU4M1B0dzNhelU5SkZZVFNaTHBxeVV3Z1VMWXhPRDdDQVlYSDVrQUpF?=
 =?utf-8?B?OVNiVjQ0WEkwd1B2WGxRMDBxcVVXMlBPWG1waGNGcldYKzZmNlFmQ0xlREo4?=
 =?utf-8?B?R1pocm5PbllhaFpEYytYazU3Yk1YYkhnaGliamZXUFJ0SVhWbWUwclp2cHpa?=
 =?utf-8?B?WlNGQ3AzcElrd0djWVFRLzZ0cmEvS3UvTUJMWEtldnpYaTFtL2dTV1AwZHJk?=
 =?utf-8?B?aFZ3NUYxdmpXWUttMk1Ya3Jabjc3WlNNQ2g0V3ZXeU93YzRXUWl1SXVELzNI?=
 =?utf-8?B?L2RTc3lkcUtzNm0yNjhsZyttdCsvNlVSdXJMR2ZSa0ExQ3F4OGRraGFCUTNp?=
 =?utf-8?B?YUh6OW1jTjIvenppWG5LempLUEx6aVQ1MU4xdE5ETWRhbXY2TThNbmtKYUgw?=
 =?utf-8?B?ZjZiczlQeWZsSWw2SXVseUtpMGVmOHlTMVAwR0Y1Z2RaekJHd3o0amQwbmYz?=
 =?utf-8?B?djRIQ2hsMzkvTnFhYVhMVEt3cml1cUZKSlFxTHBEcTJFTFdudmUyOC9nd0g1?=
 =?utf-8?B?TzhvcCtITmFRK09ocEhMWlI2WlJkK2xRY2o4bWVBZUpkNVNKa0psbzVQeXNJ?=
 =?utf-8?B?ZGRqTzdseHM5S1NlL0haSVNmRG9SSTFIWXdZY0VYL2V3dmpIVEJ4cm1yV0pR?=
 =?utf-8?B?TkFYZ3VPK3dsZ1Q4MlI0Z25TTVpZM0c5QlhWTGVPY2JFaWVmVEJWN2FkQ2gz?=
 =?utf-8?B?MWRyVURrYUtGZjI4aVRwd1ZHSlV1dGs5VHlIaVIvUlNSdXowRlg0YUk5L1c1?=
 =?utf-8?B?ZmRaT253MVRsSSszTE9lWTd3QzllUGtGV0xjWnU4QTBFTVJ0TlJWUENOblBV?=
 =?utf-8?B?NzhEeFdMLzk1eVlGY3l0V0ppVHk5Wm9STG12N1lMaFp0a00rb05RdjFLWWU4?=
 =?utf-8?B?MU5qOVkyZklVS0xML1BGQlFaRU5tcExKWGZJNSt2MHgvZ1h2QXFydzR2K1Nu?=
 =?utf-8?B?eWg3RzRROXlDK01PeGFrQXp0b2lNTjBmU01zRm4yeTBuZVU2WHpWSmhMN0cr?=
 =?utf-8?B?TE42aWZLaUMvK3crWk1FRVVnc2VBWDRwSy94MlNmeG9XTU1qd0ZqVHBqblRI?=
 =?utf-8?B?MFNIaG83dHJJbUFZYVVRQTB6eGRpMWErdlNBQ3dDYi8zUHJ3bmMvM3FMY2ZO?=
 =?utf-8?B?L3Fhb01uWUJseFVjRmNYQW9jRVJxVEVwRm03a0dzVWVTd3lobDVaZXoyZ3ZS?=
 =?utf-8?B?OUF6djV4NUdpMHp3czBUSVZUajM1ZmJacTJUZlN5S0tJSlF0QWxvOUc4d1pB?=
 =?utf-8?B?Z01UTTF3M0tLbWNQM00rNkI5Q3JWMWFoUHd2Vkd3TjBJTVRucnAwQllNZFYy?=
 =?utf-8?B?NzM0Z0JpbkVVVklCaWxoQ1E5ZjQxem5SN0Nnc0tNRUF4eHdUTXZDeXBNWFpQ?=
 =?utf-8?B?Y0lwcHp0dngzSTZCZUkxcmFRYVFjd2ZlYVRuQVpPc0JxUDVrQ1NJQnNXU0FC?=
 =?utf-8?B?V2JmSkZQUkNsSmZpU0NDUUZxWmdhVXNib1pQNVNBQWdvb0ZBRVBSbkNZdVdx?=
 =?utf-8?Q?vg7P9/BYzfW8RUJ1gcXW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkhSemRUVDF6a0pBVmwxbjRtV0NENGFkYVZKb05DUFVwblhLTWltQXBjQjFK?=
 =?utf-8?B?SEZpYThCemZudVZzaVFjVVNxT0NubXlMOWZrRFJuaHRsSUJTdSt2d3dhMEE1?=
 =?utf-8?B?czExUHdrenlyN2xUZFo2eWVocGdqMnpCTnZDZk02dGZUQnRDeWFWVS9iMzdD?=
 =?utf-8?B?RXZXdXBiY2srOVNDYm9CRndtUU1iREplV0c3RGFHMTBHbXJxaloycFIwUTRa?=
 =?utf-8?B?bml5NzB5NlpLanZJaXlTcGJkNkN4S0xPRnE3UkNoSUhxRFV2S3c4dk1xVDhF?=
 =?utf-8?B?Rm1iQ1ZzeTlTWm5IeTU3ZExWWXV2d01qVGw4cFlDbmpNUi96Qy9pQi9qU2xl?=
 =?utf-8?B?UHV5QjY4bUR3L1BpdmM2NXBiZGJKUTAvY1MrblBGOU4zaFpTVGhWVHljRnQr?=
 =?utf-8?B?QVAxajJTR0UxRjRyc2M3bTNTMEVDN0dvU28vdFBTTXRUbmtET0s1ai9ZcmZF?=
 =?utf-8?B?alE0UmJLWlpBK1crVUh0VFhZS3p2UmtaVm9OSWxHQUlLUzBzOWxYVDEraDJu?=
 =?utf-8?B?WnpkZC9rayttNkl1QUlrV09NVzQ1VkdWWi9xT1hxcjBRSnd3NUphT2ZDekFm?=
 =?utf-8?B?eURVc1l1VnUvWWZESllKbGFTZ0NlY201NG10SjhUUG9zcWtDUlB4WlNOa1Bk?=
 =?utf-8?B?d1dFWnJsNlloUlNxTnBKNzUzUlNIT21qN0RsS2dhUzVuSzE5NnpBNmVnOVRJ?=
 =?utf-8?B?em5RSFRmS1FkT0pmR1pOdzk0aWZtZkx3ZjJpdisyRmVmZUkwZjBDa2JTYXAw?=
 =?utf-8?B?VmVhWnNybW91UDhDbFJVVm80NjNRYnoweUxVMXdtcW5vcW9HUEl1UlYxVVNy?=
 =?utf-8?B?clF2UG9MNEJxN1ZDRytSbFVueTk3NEExcU5LcnpCWmU1T21HZzl6ZWxaY3hT?=
 =?utf-8?B?Y2FxUjUvTlRFcGF4VW5HUUpuUmdYVjNMa0xBT1RTdW5pMkRDZTZaSUtrSi8v?=
 =?utf-8?B?TElzL0p6cU9sbm0xaHh1bHdwYld4RzZJQVFSQ0txK1FiUFZUUXRCb1BhSUht?=
 =?utf-8?B?MFZHY3JvT2hVek1uZXh0dnRIU2lrK01RU1F4Y2ZVREJaRjhvbmFhb3c1aGEv?=
 =?utf-8?B?U0lsaFQxa2FKRldSL1lZODYwdzBKSnBzemQwUWxzSEswRHBHWTA0dGVPdWpZ?=
 =?utf-8?B?Y2p3eGZRV0tsaFhJb1VRdllmZjFFL0M1cnRva2JqS3FENzdTU09GM1hrcVBu?=
 =?utf-8?B?OTdJZy9UcFRHUlVUcFllQkFTWHlES3ZkWWNKb1M0M2hGdE1VQ2FOZFJmLzhh?=
 =?utf-8?B?dWZLUHlacWpIVkJ4bFJza0YwMlQ2MVFFbjlqYyt1anpmZEw5TktXWnFFK1lF?=
 =?utf-8?B?TDRKSVo3dTRkcU5XUm8rOGQ5Smpkc1ppK2d2YjFzU0w0eHdQZGFJQ1dXRFo3?=
 =?utf-8?B?Y3EvZ1k2Z2ZZSDR2UzV0V1poNXFPRU9Zekk2N1V0SzRmRFI4S3duZTRleVVy?=
 =?utf-8?B?QnMzRUdWRDQ4VE5uYmg5SnBNR2ZxTkZzZFJOcTcweXNhUE8vemFTRnVEYTRv?=
 =?utf-8?B?U01aM3Q4RDMvcndjNjFBcGpZTTZ6T2dpRkhXNjVqellFMUJ0UWR4Si91ZEdR?=
 =?utf-8?B?UHRvQmtRZWJpT0gwVThyN2xuNWxpYmM4MkMvMG8rNkxiS2NHUUN2cDcwVzJj?=
 =?utf-8?B?QlVubTkrS2ljdHE5cVozMldXTFJBUmZ3aCtKWXdqdy9zTVpBUDExaDFSMk5O?=
 =?utf-8?B?MTV5L29CMVQzTWVrYmQwV1dXOTBrLzZrWHp6N0VCbmc2MUh5MXlXOTVoNmRE?=
 =?utf-8?B?dk5ZeXVNYTdvWHdLNFhvVGgvYU51ZncvSDdob2I4c0VQbm1TblR5WDRWMkpo?=
 =?utf-8?B?TTFRQnhheGNHMnFKL3dlU3dsdzNhWXBJVldSa1Z0T1FmNlFyWWxYRVUyUWtt?=
 =?utf-8?B?MmFnRzR4dVorOXNOWVdNd1ZLai9TWUZzMmlVTnRZejRJQ3prMHY1THd6Smht?=
 =?utf-8?B?R2NURjY0dTMvL05peXhOVmRwanZ3WHZQbllZdWdmNlM1aDgrVjhnL2pQOXJS?=
 =?utf-8?B?NCtObGJXK1NINDZWVlNzQ1FrRTNPSVhGVmlEdGlaSDZtNXBaNzN0bkgwUllL?=
 =?utf-8?B?MWtwcEtwR0lzQkNXUmdzMDRxOHhmZklnTzFCVDdPMDhJNTlBMi92blVvOUxF?=
 =?utf-8?Q?sKxsAv8ik1cNaAzU8rVFgLiaZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bcb1796-f15d-4e45-0e92-08dcfc9ac542
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 06:34:44.5556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kF1KKJyUynEPsh5cVxUUYlmDf8GLC4REN8Scf0ThvlL0XQSLvAXHZ88+5gTf3k1loemSCdDrAY3cVVZtRqRFcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6090
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

Hi Vinay

On 10/31/2024 2:22 AM, Vinay Belgaumkar wrote:
> Simple tests for validating the PMU implementation for GT C6
> residencies and frequency.
> 
> These tests validate the kernel series which is currently in review
> here - https://patchwork.freedesktop.org/series/139121/
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   lib/igt_perf.c       |  18 ++
>   lib/igt_perf.h       |   2 +
>   tests/intel/xe_pmu.c | 412 +++++++++++++++++++++++++++++++++++++++++++
>   tests/meson.build    |   1 +
>   4 files changed, 433 insertions(+)
>   create mode 100644 tests/intel/xe_pmu.c
> 
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index 3866c6d77..88ea66ffc 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -129,6 +129,18 @@ uint64_t igt_perf_type_id(const char *device)
>   	return strtoull(buf, NULL, 0);
>   }
>   
> +int igt_xe_perf_events_dir(int xe)
> +{
> +	char buf[80];
> +	char path[PATH_MAX];
> +
> +	memset(buf, 0, sizeof(buf));
> +
> +	xe_perf_device(xe, buf, sizeof(buf));
> +	snprintf(path, sizeof(path), "/sys/bus/event_source/devices/%s/events", buf);
> +	return open(path, O_RDONLY);
> +}
> +
existing lib function igt_perf_events_dir can be modified to pass buf as 
parameter.
The function will be common for both i915 and xe
>   int igt_perf_events_dir(int i915)
>   {
>   	char buf[80];
> @@ -183,6 +195,12 @@ int perf_xe_open(int xe, uint64_t config)
>   			PERF_FORMAT_TOTAL_TIME_ENABLED);
>   }
>   
> +int perf_xe_open_group(int xe, uint64_t config, int group)
> +{
> +	return _perf_open(xe_perf_type_id(xe), config, group,
> +			  PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_GROUP);
> +}

A new function is not needed

Can use  igt_perf_open_group(xe_perf_type_id(xe), config, group) directly
> +
>   int perf_i915_open(int i915, uint64_t config)
>   {
>   	return _perf_open(i915_perf_type_id(i915), config, -1,
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index 3d9ba2917..8aff78d0e 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -55,6 +55,7 @@ perf_event_open(struct perf_event_attr *attr,
>   
>   uint64_t igt_perf_type_id(const char *device);
>   int igt_perf_events_dir(int i915);
> +int igt_xe_perf_events_dir(int xe);
>   int igt_perf_open(uint64_t type, uint64_t config);
>   int igt_perf_open_group(uint64_t type, uint64_t config, int group);
>   
> @@ -71,5 +72,6 @@ int perf_i915_open(int i915, uint64_t config);
>   int perf_i915_open_group(int i915, uint64_t config, int group);
>   
>   int perf_xe_open(int xe, uint64_t config);
> +int perf_xe_open_group(int xe, uint64_t config, int group);
>   
>   #endif /* I915_PERF_H */
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> new file mode 100644
> index 000000000..f5ef24757
> --- /dev/null
> +++ b/tests/intel/xe_pmu.c
> @@ -0,0 +1,412 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +/**
> + * TEST: Test Xe PMU functionality
> + * Category: Perf Monitoring Unit
> + * Mega feature: Perf Monitoring Unit
> + * Sub-category: Power Management
> + * Functionality: Power/Perf
> + * Test category: Functional tests
> + */
> +
> +#include <fcntl.h>
> +#include <limits.h>
> +#include <time.h>
> +#include <errno.h>
> +#include <dirent.h>
> +#include <string.h>
> +#include <sys/time.h>
alphabetical
> +
> +#include "igt.h"
> +#include "igt_device.h"
> +#include "igt_power.h"
> +#include "igt_sysfs.h"
> +#include "igt_perf.h"
> +
> +#include "lib/igt_syncobj.h"
> +#include "xe/xe_ioctl.h"
> +#include "xe/xe_query.h"
> +#include "xe/xe_spin.h"
> +#include "xe/xe_util.h"
> +
> +#define SLEEP_DURATION 2 /* in seconds */
> +const double tolerance = 0.1;
> +const unsigned long batch_duration_ns = 500e6;
> +const char *no_debug_data = "\0";
> +
> +#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
> +	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> +		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> +		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
> +		     #x, #ref, (double)(x), \
> +		     (tol_up) * 100.0, (tol_down) * 100.0, \
> +		     (double)(ref), debug_data)
debug_data is not being used in this file. We can have the assert 
without this parameter
> +
> +#define assert_within_epsilon(x, ref, tolerance) \
> +	__assert_within_epsilon(x, ref, tolerance, tolerance, no_debug_data)
> +
> +#define assert_within_epsilon_debug(x, ref, tolerance, debug_data) \
> +	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)
> +
> +struct workload {
> +	struct drm_xe_sync sync[2];
> +	struct drm_xe_exec exec;
> +	uint64_t addr;
> +	struct xe_spin_opts spin_opts;
> +	struct xe_spin *spin;
> +	uint32_t exec_queue;
> +	uint32_t syncobj;
> +	size_t bo_size;
> +	uint32_t bo;
> +	uint32_t vm;
> +};
> +
> +static int open_pmu(int xe, uint64_t config)
> +{
> +	int fd;
> +
> +	fd = perf_xe_open(xe, config);
> +	igt_skip_on(fd < 0 && errno == ENODEV);
> +	igt_assert(fd >= 0);
> +
> +	return fd;
> +}
> +
> +static int open_group(int xe, uint64_t config, int group)
> +{
> +	int fd;
> +
> +	fd = perf_xe_open_group(xe, config, group);
> +	igt_skip_on(fd < 0 && errno == ENODEV);
> +	igt_assert(fd >= 0);
> +
> +	return fd;
> +}
> +
> +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
> +{
> +	uint64_t data[2];
> +
> +	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
> +	if (ts)
> +		*ts = data[1];
> +
> +	return data[0];
> +}
> +
> +static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
> +{
> +	uint64_t buf[2 + num];
> +	unsigned int i;
> +
> +	igt_assert_eq(read(fd, buf, sizeof(buf)), sizeof(buf));
> +
> +	for (i = 0; i < num; i++)
> +		val[i] = buf[2 + i];
> +
> +	return buf[1];
> +}
> +
> +static unsigned long read_pmu_config(int fd, char *pmu_str)
> +{
> +	int dir_fd;
> +	int ret;
> +	unsigned long config;
> +	char config_str[128];
> +
> +	dir_fd = igt_xe_perf_events_dir(fd);
> +	igt_assert(dir_fd >= 0);
> +	igt_assert_eq(igt_sysfs_scanf(dir_fd, pmu_str, "%127s", config_str), 1);
> +	ret = sscanf(config_str, "config=0x%lx", &config);
> +	igt_assert(ret == 1);
> +
> +	close(dir_fd);
> +
> +	return config;
> +}
> +
> +/**
> + * SUBTEST: c6
> + * Description: Basic residency test to validate idle residency
> + *		measured over a time interval is within the tolerance
> + *
> + * SUBTEST: frequency
> + * Description: Read requested freq and actual frequency via PMU within
> + *		specified time interval while workload runs
> + */
The description should be above the test functions or start of file
> +static unsigned int measured_usleep(unsigned int usec)
> +{
> +	struct timespec ts = { };
> +	unsigned int slept;
> +
> +	slept = igt_nsec_elapsed(&ts);
> +	igt_assert(slept == 0);
> +	do {
> +		usleep(usec - slept);
> +		slept = igt_nsec_elapsed(&ts) / 1000;
> +	} while (slept < usec);
> +
> +	return igt_nsec_elapsed(&ts) / 1000;
> +}
> +
> +static unsigned long read_idle_residency(int fd, int gt)
> +{
> +	unsigned long residency = 0;
> +	int gt_fd;
> +
> +	gt_fd = xe_sysfs_gt_open(fd, gt);
> +	igt_assert(gt_fd >= 0);
> +	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
> +	close(gt_fd);
> +
> +	return residency;
> +}
> +
> +static void test_rc6(int xe, unsigned int gt)
Should be test_c6/ test_gt_c6 as Xe uses a generic name
> +{
> +	int pmu_fd;
> +	int pmu_config;
> +	char event_str[100];
> +	uint64_t ts[2];
> +	unsigned long slept, start, end;
> +	uint64_t val;
Inverted xmas tree pattern?
> +
> +	sprintf(event_str, "rc6-residency-gt%d", gt);
Should be c6-residency/gt-c6-residnecy as Xe uses a generic name

Thanks,
Riana
> +	pmu_config = read_pmu_config(xe, event_str);
> +	pmu_fd = open_pmu(xe, pmu_config);
> +
> +	igt_assert_f(igt_wait(xe_is_gt_in_c6(xe, gt), 3000, 1), "GT %d not in C6\n", gt);
> +
> +	/* While idle check full RC6. */
> +	start = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[0]);
> +	slept = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
> +	end = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
> +
> +	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
> +		  gt, slept,  val);
> +
> +	igt_debug("Start res: %lu, end_res: %lu", start, end);
> +
> +	assert_within_epsilon(val,
> +			      (ts[1] - ts[0])/1000000,
> +			      tolerance);
> +	close(pmu_fd);
> +}
> +
> +static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
> +{
> +	int ret = -EAGAIN;
> +	char freq_attr[22];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert(gt_fd >= 0);
> +
> +	while (ret == -EAGAIN)
> +		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
> +
> +	close(gt_fd);
> +	return ret;
> +}
> +
> +static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
> +{
> +	uint32_t freq;
> +	int err = -EAGAIN;
> +	char freq_attr[22];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert(gt_fd >= 0);
> +
> +	while (err == -EAGAIN)
> +		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
> +
> +	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
> +
> +	close(gt_fd);
> +	return freq;
> +}
> +
> +static void run_workload(int fd, int gt, struct drm_xe_engine_class_instance *eci,
> +			 struct workload *wl)
> +{
> +	struct drm_xe_sync sync[2] = {
> +		{ .type = DRM_XE_SYNC_TYPE_SYNCOBJ, .flags = DRM_XE_SYNC_FLAG_SIGNAL, },
> +		{ .type = DRM_XE_SYNC_TYPE_SYNCOBJ, .flags = DRM_XE_SYNC_FLAG_SIGNAL, },
> +	};
> +	struct drm_xe_exec exec = {
> +		.num_batch_buffer = 1,
> +		.num_syncs = 2,
> +		.syncs = to_user_pointer(sync),
> +	};
> +	struct xe_spin_opts spin_opts = {
> +		.addr = 0x1a0000,
> +		.preempt = false
> +	};
> +	struct xe_spin *spin;
> +
> +	wl->addr = 0x1a0000;
> +
> +	wl->vm = xe_vm_create(fd, 0, 0);
> +	wl->bo_size = sizeof(*spin);
> +	wl->bo_size = xe_bb_size(fd, wl->bo_size);
> +
> +	wl->bo = xe_bo_create(fd, wl->vm, wl->bo_size,
> +			  vram_if_possible(fd, eci->gt_id), 0);
> +	wl->spin = xe_bo_map(fd, wl->bo, wl->bo_size);
> +
> +	wl->exec_queue = xe_exec_queue_create(fd, wl->vm, eci, 0);
> +	wl->syncobj = syncobj_create(fd, 0);
> +
> +	sync[0].handle = syncobj_create(fd, 0);
> +	xe_vm_bind_async(fd, wl->vm, 0, wl->bo, 0, wl->addr, wl->bo_size, sync, 1);
> +
> +	xe_spin_init(wl->spin, &spin_opts);
> +
> +	sync[0].flags &= ~DRM_XE_SYNC_FLAG_SIGNAL;
> +	sync[1].flags |= DRM_XE_SYNC_FLAG_SIGNAL;
> +	sync[1].handle = wl->syncobj;
> +
> +	exec.exec_queue_id = wl->exec_queue;
> +	exec.address = wl->addr;
> +	xe_exec(fd, &exec);
> +
> +	xe_spin_wait_started(wl->spin);
> +	usleep(50000);
> +	igt_assert(!syncobj_wait(fd, &wl->syncobj, 1, 1, 0, NULL));
> +
> +	igt_info("Running on GT %d Engine %s:%d\n", eci->gt_id,
> +		 xe_engine_class_string(eci->engine_class), eci->engine_instance);
> +
> +	/* Save it for the end_workload function */
> +	wl->sync[0] = sync[0];
> +	wl->sync[1] = sync[1];
> +}
> +
> +static void end_workload(int fd, struct workload *wl)
> +{
> +	xe_spin_end(wl->spin);
> +
> +	igt_assert(syncobj_wait(fd, &wl->syncobj, 1, INT64_MAX, 0, NULL));
> +	igt_assert(syncobj_wait(fd, &wl->sync[0].handle, 1, INT64_MAX, 0, NULL));
> +
> +	wl->sync[0].flags |= DRM_XE_SYNC_FLAG_SIGNAL;
> +	xe_vm_unbind_async(fd, wl->vm, 0, 0, wl->addr, wl->bo_size, wl->sync, 1);
> +	igt_assert(syncobj_wait(fd, &wl->sync[0].handle, 1, INT64_MAX, 0, NULL));
> +
> +	syncobj_destroy(fd, wl->sync[0].handle);
> +	syncobj_destroy(fd, wl->syncobj);
> +	xe_exec_queue_destroy(fd, wl->exec_queue);
> +
> +	munmap(wl->spin, wl->bo_size);
> +	gem_close(fd, wl->bo);
> +	xe_vm_destroy(fd, wl->vm);
> +}
> +
> +static void test_frequency(int fd, int gt, struct drm_xe_engine_class_instance *eci)
> +{
> +	struct workload wl;
> +
> +	uint64_t val[2], start[2], slept;
> +	double min[2], max[2];
> +	int pmu_fd[2];
> +	uint32_t orig_min = get_freq(fd, gt, "min");
> +	uint32_t orig_max = get_freq(fd, gt, "max");
> +	unsigned long config_rq_freq, config_act_freq;
> +	char event_str[100];
> +
> +
> +	sprintf(event_str, "requested-frequency-gt%d", gt);
> +	config_rq_freq = read_pmu_config(fd, event_str);
> +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
> +
> +	memset(event_str, 0, 100);
> +	sprintf(event_str, "actual-frequency-gt%d", gt);
> +	config_act_freq = read_pmu_config(fd, event_str);
> +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
> +
> +	run_workload(fd, gt, eci, &wl);
> +	/*
> +	 * Set GPU to min frequency and read PMU counters.
> +	 */
> +	igt_assert(set_freq(fd, gt, "max", orig_min) > 0);
> +	igt_assert(get_freq(fd, gt, "max") == orig_min);
> +
> +	slept = pmu_read_multi(pmu_fd[0], 2, start);
> +	measured_usleep(batch_duration_ns / 1000);
> +	slept = pmu_read_multi(pmu_fd[0], 2, val) - slept;
> +
> +	min[0] = 1e9*(val[0] - start[0]) / slept;
> +	min[1] = 1e9*(val[1] - start[1]) / slept;
> +
> +	/*
> +	 * Set GPU to max frequency and read PMU counters.
> +	 */
> +	igt_assert(set_freq(fd, gt, "max", orig_max) > 0);
> +	igt_assert(get_freq(fd, gt, "max") == orig_max);
> +	igt_assert(set_freq(fd, gt, "min", orig_max) > 0);
> +	igt_assert(get_freq(fd, gt, "min") == orig_max);
> +
> +	slept = pmu_read_multi(pmu_fd[0], 2, start);
> +	measured_usleep(batch_duration_ns / 1000);
> +	slept = pmu_read_multi(pmu_fd[0], 2, val) - slept;
> +
> +	max[0] = 1e9*(val[0] - start[0]) / slept;
> +	max[1] = 1e9*(val[1] - start[1]) / slept;
> +
> +	/*
> +	 * Restore min/max.
> +	 */
> +	igt_assert(set_freq(fd, gt, "min", orig_min) > 0);
> +	igt_assert(get_freq(fd, gt, "min") == orig_min);
> +
> +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
> +		 min[0], min[1]);
> +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
> +		 max[0], max[1]);
> +
> +	close(pmu_fd[0]);
> +	close(pmu_fd[1]);
> +
> +	end_workload(fd, &wl);
> +
> +	assert_within_epsilon(min[0], orig_min, tolerance);
> +	/*
> +	 * On thermally throttled devices we cannot be sure maximum frequency
> +	 * can be reached so use larger tolerance downards.
> +	 */
> +	__assert_within_epsilon(max[0], orig_max, tolerance, 0.15f, no_debug_data);
> +}
> +
> +igt_main
> +{
> +	int fd, gt;
> +	struct drm_xe_engine_class_instance *hwe;
> +
> +	igt_fixture {
> +		fd = drm_open_driver(DRIVER_XE);
> +		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
> +	}
> +
> +	igt_describe("Validate PMU C6 residency counters");
> +	igt_subtest("c6")
> +		xe_for_each_gt(fd, gt)
> +			test_rc6(fd, gt);
> +
> +	igt_describe("Validate PMU GT freq measured over a time interval is within the tolerance");
> +	igt_subtest("frequency")
> +		xe_for_each_engine(fd, hwe)
> +			test_frequency(fd, hwe->gt_id, hwe);
> +
> +	igt_fixture {
> +		close(fd);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 34b87b125..dc84ef748 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -308,6 +308,7 @@ intel_xe_progs = [
>   	'xe_pat',
>   	'xe_peer2peer',
>   	'xe_pm',
> +	'xe_pmu',
>   	'xe_pm_residency',
>   	'xe_prime_self_import',
>   	'xe_query',

