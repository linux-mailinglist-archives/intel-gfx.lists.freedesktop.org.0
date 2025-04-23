Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C14AA98B70
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 15:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C795410E6AB;
	Wed, 23 Apr 2025 13:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrivujKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CBC10E6A8;
 Wed, 23 Apr 2025 13:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745415557; x=1776951557;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iC2jBaS4HR5EAE5547zaAQRH9e/hw6LugGdfVExJi/o=;
 b=OrivujKcq5Jq1MFvm/GQtCJsy7jEwI//ZZPqREQtks9AUOFIyogqXU1I
 /M6v46AudAEjXs8oMHl5Mv0SqGr3vs+4O5J+sHTlRSuH4pem69GzB7H3u
 YSEwrDOkpzV2WAHhCiPKRy2d5IvEKKHu2u189Cm0NJAV9QwEcM0/HAoB+
 kjTRedCBIB7W0qEu4YXD6ga9vgD9CHfI07vvnoJcvV2NKL3qo/crFSka1
 MzsKKjVcZ5ijSYjXUqIqYmo59Dk2bdNuJjgIx68K7RkiY+DaIqxWXqY05
 BFdSrLSuA6nGOuq0jcHpGGIdpqLKpAJj8qqZaHhG8lL+ksvWFBreDlmZ3 g==;
X-CSE-ConnectionGUID: 6P97yQ3ZS2OpIXMQ3dN30w==
X-CSE-MsgGUID: yt7E5o3gRZCrFOZ94LUrJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="50839130"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="50839130"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 06:39:17 -0700
X-CSE-ConnectionGUID: S+gD7Ni3SC+tHVZR+1WZcA==
X-CSE-MsgGUID: v+jHcE+6QmWg8H0cWeo53g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137392157"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 06:34:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 06:34:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 06:34:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 06:34:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpJsD8CJuedGfdLQ1DgqUM0UTJLHg+Hq54eGHngDu1j1H/1AoDTnOqXkbX7mo0MwxfT8FpIiE0YtLbra/DEvOvsj9jKI9VeVoW4LvyRau4ZAlfdXWVTkI2VTyS5ZFc7XSno5+Ax2vWzlqYRVUpC1IyxIM1pD1Sy+02d6JiZyuYMsAuYR5+fcnp2LQM8bbsEO45fmlfr4mLiPnMYnOCfdAr2WspnOWG3XNJWulcJfjnUeP6OEdxyN9UEICeuG6znKyjK1+QSc6qFE9p9uwJGnEL5dt6ocgoTM3mUVqnfUH7yDPIcqf+IUcrMNl2b8mtBWu6xjPdtfhYLv2dTuoG0WNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiSwKn65fIQlOHZ6q7He4H3YqucbIw5tyPd2zUzMgWI=;
 b=Q38FU2GqG7hvr8FcVSczRYXii9vQbURY95QIdsx5ppyBbQz7895ntFEeFZ6Mc29+bnNNDFMoIEaLqrjr4Gb/4rcwPR9CBYolVJM+BgcdQ8liIVDt1j6pXKgR1Sr93I+HNWx0x7U9gfmBJOoFdLgmG3XRNkUkBz4EeSvbfaS7itlc3ndEKSRmUkYOldGlZ3n7t9ipHe6cUPv+G/KrnEgt5E46F34qV/tzzVLiUM6hSH76xwbySG1AVJXh+AlWOymImq8KZvFO+qYGD4wz/QNq0FHicsaq+5GguC0wFGEq+xKf8KmyoRtcYEJwuNEdqTuJuBdzern+4S2eoE5UC4StaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8501.namprd11.prod.outlook.com (2603:10b6:510:308::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 13:34:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 13:34:15 +0000
Message-ID: <96d3eb65-d548-4ff8-b11b-85b2817203b5@intel.com>
Date: Wed, 23 Apr 2025 19:04:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
 <4e9d1da5-3a5a-49c7-8117-8b43439b23ed@intel.com>
Content-Language: en-US
In-Reply-To: <4e9d1da5-3a5a-49c7-8117-8b43439b23ed@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8501:EE_
X-MS-Office365-Filtering-Correlation-Id: 43e40396-3f4a-45b0-f7eb-08dd826b8a8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGloVU9TcURzUExwUktBU0JsZlBpYnhESjQ3UE9OYkNGYk05YW5jK3F0WTV2?=
 =?utf-8?B?S24wM29pclNtSGphbUIvYlVacWtnYWhCOFYvZVZYT095aklmNnRvOHZRcFRU?=
 =?utf-8?B?cjJoRlVvQVlnaXF4MUtHTC85eWFJS0NZRzNqSStYTmJBbVJndVNzVUg5bVNk?=
 =?utf-8?B?SUhwYXhibHlUSVM4bEI0U0h0R2szOXFDTnpmL0JVNm9meUVuZ2dmYXMwa2xz?=
 =?utf-8?B?enVjRVFENk1lMy9NOGNqTVRzOW1ZbnU4VXRuMU9kRDNlTUR1RWlnR3FjZ2ox?=
 =?utf-8?B?S3VBa21OTzk5c0VFalFHWG9pa1BYaXZobnQxaG5sRUJxRWxPMnBjYTNIdHB0?=
 =?utf-8?B?aVh5a3B3bUx0VFZxUksvUmxEV2dUQXRTZXJpRzBVendDT1JsS3N4Q0hVL1FX?=
 =?utf-8?B?Q0drenNhUmZxUnAwWXBvZy9OOWgrWUhoMnBaMHNZMjczQm9RdCt4TTRqRm9C?=
 =?utf-8?B?Mktjd2M0bW9Ya3B1Smtzd1I3RTNRM3dLRjI4cVR2cUJ2MFg5VGZTZXZjQUNa?=
 =?utf-8?B?WmxqcUdjMHdnTjNZUnIwU1AwNWVnOVBjcE9wMk9WYkh0U3libWp3WmxkOHlD?=
 =?utf-8?B?RUVnN0k0N0orT3ZvSWVuSWxWQXRwYUcwM2dXeFZna3ZNRTI1YWRFNGg3LzJ6?=
 =?utf-8?B?eTd4VHFqR3Jyai9NZkNxdXdNcjJGL3F0Z2dlVEFKVWl5WWZRM20xQ1pFb3Vi?=
 =?utf-8?B?bXh4YlF4VDJVY1QyMFJ1a3dnSHNXUTdTbkprMDZYTnY5cFdSMzZUWVVrRllS?=
 =?utf-8?B?ZFgzcC92RWQ5ekkrOVo0L2pKTnlVTll0cHlHdktHZlN5UGdNZUFXMkhBSlQx?=
 =?utf-8?B?MGFtcHVUanVwRnhMbUdNYnZnci9ub2VsSjk1SFhKd2Q4eXQ5NVhDZTVVL1lJ?=
 =?utf-8?B?T1dvZnUrV3RyVUNXYkhucDMxZ3VlZ3p5ZVhHWDdYUmdQdDRDbFo5VHl2T2tJ?=
 =?utf-8?B?SEg1Rk4wTDd2TkNBS2ZRVW9EL3JvenVraVVBWjdwUGxQSTVtekZoMDFTQTNB?=
 =?utf-8?B?cjNCaEM0aGxTNUF5WDZBbzU4V1RxQ3RZMjBvTnQwSUVzL24zUFhWWWFheXdV?=
 =?utf-8?B?dmk0ajJRY3JmalNPQ2MyN1djUjBocHZ4US85RG5Jb1VIOVBOSnJuWkh6dnIx?=
 =?utf-8?B?cThIQ1N2UVM3bWFhMDNqY2d1Wk5LQUREbEhaNUFINVo1ZnJEdk5pb0Y4bWVw?=
 =?utf-8?B?WEIzRHdqZ1MzNTdyTmw0UTdmRmxxZWYwdGF6UUwrSXdvbEc1SnhrU0M1bkVp?=
 =?utf-8?B?dG9laGNzVm9obkRKNVlleW9YMjF5OHZ0MzV4Sk5vaEl0aTBPVTFuZEVoK29J?=
 =?utf-8?B?TU1XTjgrSTd5M3NobXJqYTM5WGhjM05xTUQ3WnVzQXJ5RkN4TTIwNEVlTFZt?=
 =?utf-8?B?b3lyZjNiYnJRVm9pd3JuOUJnTys2RTFDMENnVDVNYVgvam5DVGtGdjF5M096?=
 =?utf-8?B?V2RlT2JRQTh4NlVFOEZnS2E1eGhrcFB5NzlXeEExQ0F3MU9pTk5sU2wvSHEy?=
 =?utf-8?B?amhORTlZWTdNTzFnR2NwNjhpeEZEanY2R09EM1VzR2ZoeUdiNkdWdDBnbFZy?=
 =?utf-8?B?QmJyQk5saUR4Z0cvRXkrNk5WdjZaV3N4dTViOXFia1h0SjRQK1FZOTlXS01M?=
 =?utf-8?B?QVRVYWs4bHBLREFxSXBVREJFaVRSUGxaQ2JxaTFxM1JabGhMOWxYRExxTUgr?=
 =?utf-8?B?d3NQUVZMdy8wU1lienZSaC84cktzNHBCZ29LR0MyRVRyY09qYVVwWFNXak1H?=
 =?utf-8?B?YWVvWGdXVUVPZDg2T0U4aUxXSUVQRVB4Q2NUZTRQeCtqS0RVT09PZ2NFenVj?=
 =?utf-8?B?a2JCMWRySTUxY28rdUFML1M3SEFBVDRHK2RBbFBZT1FDVk9JeER1bzMya3B5?=
 =?utf-8?B?SVpRMi9FejZhZ1RIZXBsckUvdnhJMHkrM2NxNzVLUmhXdWE1U0E4b1BWa0Vl?=
 =?utf-8?Q?1HWocdVKsZk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnh2SGNvbE1oRVM0bEhnN2gxNE0vL0oxblduYXdTbFBUOVZBWGhQZHdOWkl0?=
 =?utf-8?B?aUlOZjR5WWpweWpTZS83bVhKNis1Njc2ZSt3YytIenpJSkZWUkI1YVh1ZjVI?=
 =?utf-8?B?OGVObURBemlBNVFsbVBFamY3NzkwZnFsZGhaMXFQY1luUUNmcWVXT2s2aWFn?=
 =?utf-8?B?eXhaSytoc0F2aFdZcDN4c2UzVnovNU82N2dReU0zcnliOEpaTTU1d1E1aGRP?=
 =?utf-8?B?Zmk3NlFOMXBDZ3BxRDRHRTRpOEdaS2tIMXBJVzhHTGlKZWxWYXpjZ00vcXha?=
 =?utf-8?B?WlZRSVY3eno3UEx0aXExU25LUEE4dW9qeDNsMXZ4RTdZejBjalZjL1pRRDRa?=
 =?utf-8?B?VGcwdFVuNEMrZFF6eFpITTFXQTRYQWdIeVc2dE03MWZ3VjN3eTUyNnZuMzFN?=
 =?utf-8?B?T0l2UUYrT0VpdGR1Yk1RU21Nb0dqcnVtTGpValN2U1FtVkFBaFFQdTZBeWM3?=
 =?utf-8?B?N0RpMDFRTHlFS1NtcURYQkVDTFFLbElMZXZTczNnYy9RcG91Y3pMSjhvdU9Y?=
 =?utf-8?B?UU1zTEVkaEVPQnk1SlZuT0Job0htS1lROEtqWm5vQWwydm92MzJUUmtiNFJ6?=
 =?utf-8?B?Z3dpVGZkNnZZSGczVVRKd1BjQXFXajdDTm0vN2paU1pZZDJxOTFqTnM3bHhB?=
 =?utf-8?B?MmwzZm1RY3Z0YzFNUmNUSnRDMVFHMGdyR0ZZdjlaVXFDUzV6c2NiZmdzWnA1?=
 =?utf-8?B?aURrVmkvOFloRmszQVJKTGk5S1U0Y1FvcnZCdlVMQWNCODY0QnQyVHQzZ25N?=
 =?utf-8?B?NnJpc3ZxZW41MzdhcWh5WStoSSthQkxEZ2F3RGpEYnFvN2h3SWIwOVBTVGlH?=
 =?utf-8?B?YS9jWSt4dUl6c3lUT1YrU2JNeDFFQTl3V0t0bnYvWktUMVZpdmd3cEJWb3dJ?=
 =?utf-8?B?NmZkYUpvZnVyUXoxMnhnQUptck11MUlWUWJ5WGd1ZDhRdy9jR3JXL09wMVdL?=
 =?utf-8?B?dGFoK3A2bW5UYU84UjV6ZTBvMzlUMFlOeXVheEU2cERTRE5Pdmw4cnRzTkFy?=
 =?utf-8?B?aDNJaUx0bnlOZ2MzL3k1Ynd6TmlraWVMTXlOUWttSDVsUEhQN3dzcHRJSTVl?=
 =?utf-8?B?aFo5dHhnY1pJV0E1VjU4SU1hcFoyaG1IU2t6NXZPN0VZNlNsRWkyN2ZEUGhB?=
 =?utf-8?B?TmdJdkJyZTB0ZVJpRUJQbVdqcWw5YnFwcnB2Z1pDNW43bnJLWUYzbEcyaDVP?=
 =?utf-8?B?OXdqY2xEbVVlVmlIc3o5UEUyZ1c0aXlnb1YvN052SlZRMlRLSnhYaHE1R3Vp?=
 =?utf-8?B?ZGVsMHUwVG5NMVhWV3VsWDFsNzNKc2MvRjRpdFMwR2FDOFhVS3dvTDRlZ2Zq?=
 =?utf-8?B?Y3ZFb0QwVDZ2Zi9UdHE5aUZTZloxL2hiM1NPVlJqWXNvV29jUE5oRFRNTnRB?=
 =?utf-8?B?QUpucWF2K0hWVkV6Q1ZGbkh1MUZUQzhaS0N0UDl6bVIwTHB1RWozeEw4WEp4?=
 =?utf-8?B?cCtFVERWcVorTE52NUxHQmFIRVpwdUZ0RWgyWmZhM1hwUmRoMU5sdG51QklV?=
 =?utf-8?B?N1FENGxGbzhoZC8vdFE0dm5RUUtjaVkwbjdzbU5IWVNwZVJTQlpIY3o3VVFN?=
 =?utf-8?B?TjNrWFpKTi9tV2U2cGk4ZUg2WTBIakh2ZVk1SlNhczR4T3pqWE9BRG9YQkVL?=
 =?utf-8?B?VXREd2NsUSs0MlZsMjAxSnJ1aXBOTlJ6SGNMUWpkT09uV2xtdWIxN2hLZVFK?=
 =?utf-8?B?UzBJUTRzQkdJS050WW5NU0diZ0RsTzBZMU15dXFiVmlQbStvaGo4U3lVTDNo?=
 =?utf-8?B?cEZyRnB5ZTJWWEFKZ0kxcEdIUUNWSzlad1krWkNQdHU1WXMyVjRkV2U3YkJy?=
 =?utf-8?B?emxuZ28yTlhDSE5JOGhCbi9MTWsxdzZvRkhpSCs0ODNyVmk0dzYySjk2RG41?=
 =?utf-8?B?T1JyUkZoekZzOHhCanF2VmVqUkJGVmFIdnlwUE85R281M2N0K0pnaXI3U0RF?=
 =?utf-8?B?UTRHejNTR01BczZLbGFLbFNCa2xpNjAxUHdDL1EyUjFySDUxOTdOTnVMSjdH?=
 =?utf-8?B?VkZsakNOUy9jTllJZ3RBT0oyd0pGOXdpSktJTnZqMUY2MVJ1ZDZzSXpHUjlS?=
 =?utf-8?B?NDFsa1dWVEN2SDRoejFUQnRIMGlCOURwREhzejRCNElicXpyMnRrNklvNmwz?=
 =?utf-8?B?OTR3WUZ2UnVyeFg3RG9RL1ZxWnpya293YlJrSXc5YVlhSy8wVG00UnJraXov?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43e40396-3f4a-45b0-f7eb-08dd826b8a8d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 13:34:15.8821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: srwWqYoJDRFDq6d+/5vzsms/qVkmDhliGnbWgV3aRskwAqBLeZn4dIqKCmAE1Y3vZrhQQOLlg2HWD/Tm0XmwSFTLe/kVsd+sh5DMz25SN8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8501
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


On 4/23/2025 6:47 PM, Nautiyal, Ankit K wrote:
>
> On 4/21/2025 9:18 PM, Mitul Golani wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Calculate delayed vblank start position with the help of added
>> vmin/vmax stuff for next frame and final computation.
>>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 57 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.h      |  5 ++
>>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 ++++++++++++++
>>   3 files changed, 106 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index adfd231eb578..1c0eaa08927b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -746,3 +746,60 @@ void intel_vrr_get_config(struct 
>> intel_crtc_state *crtc_state)
>>       if (crtc_state->vrr.enable)
>>           crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> +
>> +int intel_vrr_dcb_vmin_vblank_start_next(const struct 
>> intel_crtc_state *crtc_state)
>> +{
>> +    struct intel_display *display = to_intel_display(crtc_state);
>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +    u32 tmp;
>> +
>> +    tmp = intel_de_read(display,
>> +                TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, 
>> cpu_transcoder));
>
> These might be needing a check for HAS_DC_BALANCE. This might explain 
> the BAT issues.


Scratch that, these are used only when vrr.dc_balance.enable is set, so 
these might not be the cause.


>
> Regards,
>
> Ankit
>
>> +
>> +    if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
>> +        return -1;
>> +
>> +    return intel_vrr_vblank_start(crtc_state,
>> +                      REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_MASK, tmp) 
>> + 1);
>> +}
>> +
>> +int intel_vrr_dcb_vmax_vblank_start_next(const struct 
>> intel_crtc_state *crtc_state)
>> +{
>> +    struct intel_display *display = to_intel_display(crtc_state);
>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +    u32 tmp;
>> +
>> +    tmp = intel_de_read(display,
>> +                TRANS_VRR_DCB_ADJ_VMAX_CFG(display, cpu_transcoder));
>> +
>> +    if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
>> +        return -1;
>> +
>> +    return intel_vrr_vblank_start(crtc_state,
>> +                      REG_FIELD_GET(VRR_DCB_ADJ_VMAX_MASK, tmp) + 1);
>> +}
>> +
>> +int intel_vrr_dcb_vmin_vblank_start_final(const struct 
>> intel_crtc_state *crtc_state)
>> +{
>> +    struct intel_display *display = to_intel_display(crtc_state);
>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +    u32 tmp;
>> +
>> +    tmp = intel_de_read(display,
>> +                TRANS_VRR_FLIPLINE_DCB(display, cpu_transcoder));
>> +
>> +    return intel_vrr_vblank_start(crtc_state,
>> +                      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
>> +}
>> +
>> +int intel_vrr_dcb_vmax_vblank_start_final(const struct 
>> intel_crtc_state *crtc_state)
>> +{
>> +    struct intel_display *display = to_intel_display(crtc_state);
>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +    u32 tmp;
>> +
>> +    tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(display, 
>> cpu_transcoder));
>> +
>> +    return intel_vrr_vblank_start(crtc_state,
>> +                      REG_FIELD_GET(VRR_VMAX_DCB_MASK, tmp) + 1);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h 
>> b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 38bf9996b883..e62b8b50aec6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -42,4 +42,9 @@ void intel_vrr_transcoder_disable(const struct 
>> intel_crtc_state *crtc_state);
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state 
>> *crtc_state);
>>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>>   +int intel_vrr_dcb_vmin_vblank_start_next(const struct 
>> intel_crtc_state *crtc_state);
>> +int intel_vrr_dcb_vmax_vblank_start_next(const struct 
>> intel_crtc_state *crtc_state);
>> +int intel_vrr_dcb_vmin_vblank_start_final(const struct 
>> intel_crtc_state *crtc_state);
>> +int intel_vrr_dcb_vmax_vblank_start_final(const struct 
>> intel_crtc_state *crtc_state);
>> +
>>   #endif /* __INTEL_VRR_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h 
>> b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> index 6ed0e0dc97e7..2214c10d4084 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> @@ -9,6 +9,50 @@
>>   #include "intel_display_reg_defs.h"
>>     /* VRR registers */
>> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A        0x604D4
>> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B        0x614D4
>> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C        0x624D4
>> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D        0x634D4
>> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_E        0x6B4D4
>> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)    \
>> +                    _MMIO_TRANS2(dev_priv, \
>> +                             trans, \
>> +                             _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
>> +
>> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A            0x604D8
>> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B            0x614D8
>> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C            0x624D8
>> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D            0x634D8
>> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_E            0x6B4D8
>> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans) 
>> _MMIO_TRANS2(dev_priv, \
>> +                                     trans, \
>> + _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
>> +
>> +#define _TRANS_VRR_FLIPLINE_DCB_A        0x60418
>> +#define _TRANS_VRR_FLIPLINE_DCB_B        0x61418
>> +#define _TRANS_VRR_FLIPLINE_DCB_C        0x62418
>> +#define _TRANS_VRR_FLIPLINE_DCB_D        0x63418
>> +#define _TRANS_VRR_FLIPLINE_DCB_E        0x6B418
>> +#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) 
>> _MMIO_TRANS2(dev_priv, \
>> +                                 trans, \
>> +                                 _TRANS_VRR_FLIPLINE_DCB_A)
>> +
>> +#define _TRANS_VRR_VMAX_DCB_A            0x60414
>> +#define _TRANS_VRR_VMAX_DCB_B            0x61414
>> +#define _TRANS_VRR_VMAX_DCB_C            0x62414
>> +#define _TRANS_VRR_VMAX_DCB_D            0x63414
>> +#define _TRANS_VRR_VMAX_DCB_E            0x6B414
>> +#define TRANS_VRR_VMAX_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
>> +                                 trans, \
>> +                                 _TRANS_VRR_VMAX_DCB_A)
>> +
>> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK        REG_GENMASK(31, 24)
>> +#define VRR_DCB_ADJ_FLIPLINE_MASK        REG_GENMASK(19, 0)
>> +#define VRR_DCB_ADJ_VMAX_CNT_MASK        REG_GENMASK(31, 24)
>> +#define VRR_DCB_ADJ_VMAX_MASK            REG_GENMASK(19, 0)
>> +#define VRR_FLIPLINE_DCB_MASK            REG_GENMASK(19, 0)
>> +#define VRR_VMAX_DCB_MASK            REG_GENMASK(19, 0)
>> +
>>   #define _TRANS_VRR_CTL_A            0x60420
>>   #define _TRANS_VRR_CTL_B            0x61420
>>   #define _TRANS_VRR_CTL_C            0x62420
