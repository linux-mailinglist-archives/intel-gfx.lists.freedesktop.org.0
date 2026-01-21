Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP7pIA/DcGkNZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 13:14:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E549956973
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 13:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB9A10E75D;
	Wed, 21 Jan 2026 12:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DfM6oCUX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F3C10E21E;
 Wed, 21 Jan 2026 12:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768997643; x=1800533643;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NpQj331aUB0/33G1L0MufmbWfze2T26jmYbar0XvY8Q=;
 b=DfM6oCUX7L4+nVjEjzZM+zams+AmZMfgv/Llp3rEsvxDdGJUCTdIRyQl
 1BAU45v/fVIjJyXn4tj/GHhmUjppUsuZiQIbwjsefiawMdxTdrrVlRtoN
 bByybRGrknCuPF5QEiRS87usKrKHdJQb5qfnJVsDeellZvUoBxNlFx1IU
 smOcaq0c4IQ+iEEuTxizfFMoaQaXo8XkWO08LS32opXiHntcxc1OKuIzp
 HksHM+go8wsE9xtXGdGbBThjj5A1+2D06pj7XuKUy/vLQ6ve/ftbDGS9v
 ruCrQCK+mCO2G95ZNaAMMqV6DD5bAMiTSyHDkL/e6pmwazaxEUoS+6JXf Q==;
X-CSE-ConnectionGUID: t0U/+XzUR5eej4Cs1Txwtw==
X-CSE-MsgGUID: NxaP6aMWTHy5VA4fIa9pdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="69947572"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="69947572"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:14:03 -0800
X-CSE-ConnectionGUID: P5RwyQBzRzmmgbNTG0jFEA==
X-CSE-MsgGUID: DbmqjFTITH+by/mbvicyqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="244003576"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:14:03 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:14:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 04:14:01 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.31)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:14:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MyoQA5RK1x8K3/O+H00KmgWzbQKmreTvb+GXN2B582DkzlMsRHDRjEiO9Df6k38aCAfFUngT8dKe5CnTFBXjHfIBKzAkBMS2Rhq6fG6YfNw1FfljeSo08tuRPnUUtb+J6fFkimRDLxAi9pevrb9Xtv5GljPklvMOamyTcxByLhVWXhTglkH8bhB54JBEuYTh5qQrowFRGo/Bho2/GmPIm65DmwC7fKPTCKA2J+wMq1bO8/vMVPzyKN1fzD152PPlkhVHaI7krenazlJQpRoEML6P9BieW9/bsO4MYw8sj5iB6zRClnex5KfAP90PrXqg367D7RMLn2rScQ2eHplXYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/PFO1MUM6JTRq6fDeKqS5OPJibhld9FosXtDmr6edY=;
 b=VTgeIEg7gWdc3HPfRzZnuC3LX/2Jf2esRJXnxMujAM41ba7lmCagXw8ofIELcEGoI0SKX/VydkeIfb0voO6Vam97czVt36Jtq2G/U8vJpTAUlckEX7e0bc5lIZkWTw1Y4hzMhjYcSdMgPeaq2NT6SJRQrHb+C34GCL3h5iUr129gQe982Y1eGMAG1S2yiMsPOeRwX3MPmOsbZ08KZS3OGboUhIJ38Tv2KL+M1jPvoIXeZ3sJL0vOcwAx+cFxm04C9ylHta50CWSjTuMUbRBuqsElOFx7V5rXAAQ5GJtf/1j7OBFmmopJ4iU8eft1XmGMwVShY/YL8Ysn/avqa1/R0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB7585.namprd11.prod.outlook.com (2603:10b6:510:28f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 12:13:59 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 12:13:59 +0000
Message-ID: <5d83c0d0-8f82-40a8-bca6-7052658a5fb6@intel.com>
Date: Wed, 21 Jan 2026 17:43:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20260115)
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <hansg@kernel.org>, "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-rt-devel@lists.linux.dev>, <sfr@canb.auug.org.au>,
 <ilpo.jarvinen@linux.intel.com>, <regressions@leemhuis.info>
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
 <20260121075348.5MyqcHFB@linutronix.de>
 <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
 <20260121090154.Lpaj9hrr@linutronix.de>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260121090154.Lpaj9hrr@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0154.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH0PR11MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 220cb45d-2a77-47ce-a9aa-08de58e68e9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXN1OFUyUHowanJhdXZLVmdaTWl5YmVKc3JyZmxTSW1HL2hTVDZFeVJ3dnlG?=
 =?utf-8?B?alJ6Znk4QUhEVTUvNS96Z3g2aXFvTnJYRnN4K3Y4NWtiSUl1bkFuS1hDaWN6?=
 =?utf-8?B?eTFVd3hxZW82L21zWGRMTnVobllKWEl6YjdhVUJmZ1dnUCttTUhUbDQ4L3hK?=
 =?utf-8?B?dnBodWRDaTZLeERnTzVheU5LajI0U0ZhckY5REdLTElTejdKRlNCL0pWZkxK?=
 =?utf-8?B?YTNrN3FMTFFicUJQUE1sUFBtTmZPZHpCU1gveVFZcVRVU0xuK1JRQll6dXNm?=
 =?utf-8?B?TzZ0Zi9RZW1GbEIzODBURkxXQ1BrNy9uSEhNZE96eml6VXJrYS9HdFRXejR1?=
 =?utf-8?B?enFwcStjb0hKK2M2RGVRWVBYN2hRT0hTcHlFTkpBdnBXVEJPZ3lOQzV6emxH?=
 =?utf-8?B?bUN4VjRzMzd2eDNXWUFOQVh0VDlqSkQ0bjZTMTNUbTg4NDdxSGRnczYvWW5W?=
 =?utf-8?B?b1UyMG9ETmZGdlZaM0ZoUXdOQW9McUhqL3I2c1lXOFArV1Jjam9qRFVUS2xx?=
 =?utf-8?B?NkRlZFl2MjNZMTFycHRXOG1zbUZjUzRWUTVsR3hpR1piV1pBajIvaHpQMEJL?=
 =?utf-8?B?VXdaak9IMGc2aE1wL1o5OWZzMzJNaURxbXFLaVFGSlFPSHBWY1R4akpxWHdh?=
 =?utf-8?B?RWVsNi9McFVSUFNnVXV2eW8xeVRwZ0l5SWh5TllmbHdySzBmK2ozQWNUdkVw?=
 =?utf-8?B?aE1GWEMxVlZvbXU0bEovY1RibHFXRmpjWDd6NTdsRW5pdzQ3blV3Q00xRUVR?=
 =?utf-8?B?Y0ZOWTBlOVhRbHhOY0hYWGpEMzVNQ0l5OXdOaGZESFh4UFRNc3FJdGlWZ0Zn?=
 =?utf-8?B?Q1Y2eXJxOTJRa3ZhQ0ozUzFaVEV6K083cGRPaDRUNmdKZDAwZjJ3VFRaSU1N?=
 =?utf-8?B?OGVhOUJPN2xTMUcyZXBPdWkzR0pBVERVbEFNNDJ5SjM3N3haZlhOQUczRGlB?=
 =?utf-8?B?bzNrNDVvcVk0WEpiU2c1bU8zUU5QamRERXVNdUhtZ2o2ZU5UYjdqWDNWU0pu?=
 =?utf-8?B?TWVzM21BTEROOUVDTXJTLzMwem14YUhuaEtmTFNmeWdPa3YrM0NGaCt1eXZ2?=
 =?utf-8?B?NG1FUHIwOGx3cHpHNTM2TExQZTd2Skk5L081Q0xzSDJuamNLOWU2akNFUXNh?=
 =?utf-8?B?dWg0UHVRU0xteFlYWFRBaXBpVzZveDJBbE54TS8vOXYrODVZZ0RnZFhQL0xu?=
 =?utf-8?B?cWo3RXZBTFpVVTlzZ3Y1V25aTEJuWjd2WXo4UmloTmx5WmpiU1UyKzU1Z2dr?=
 =?utf-8?B?ajRZa0ZPUStTd05acHlnZ2FVWlZ3eGNmdlo0dk9wL2FYeGZkWHFmUldsVVo4?=
 =?utf-8?B?d29teWJTQlpQQ3VLd2Q3ZFdmTU1YU0FIT0wwV3FQTng1N2s3V2IzemFORkhG?=
 =?utf-8?B?ZVhSdUtrZlRydXFnL0cvR25lR1RGWkRIUkRCcDlCbDA3dmVMbmlXOVhMS1Y5?=
 =?utf-8?B?cjJMQ1JqTThUNS9HRGVIMW5XMllCNjUwQ1FjWklkcG9mUVYrVEdITk0rVG1V?=
 =?utf-8?B?UUlrOFd2OUpia3RycWg4aUZaLzAyamltVnRsai9nL1huRUJXalRLc0VMQ1gy?=
 =?utf-8?B?czZJbXFKSExSQXhHQ3pXTjJIendIZjVqOG9ydFZhSEdFK0FFTERtSWlYekor?=
 =?utf-8?B?MG00QlRVOUNJbzZaeEkrTEY4UnNwZDRaeGdZcWw5a1BjZG04NFRhZ1dSOUpG?=
 =?utf-8?B?L21ZQ1QrTjJNL1MyN2NYTEM4eWNXTXlraTFOU3lnT2VxQ2VyZlA1cGd4RHh1?=
 =?utf-8?B?U3UrSWZTS3JBd09hUXg4MXFTUGxhcnhjclVIaGMxSC9JdkNBb09ZTHk0SXlm?=
 =?utf-8?B?bEVLMjRVdTlDSXhNS3M3SUhiRUNCNitta3MrRTkxeWFGS0xZV1NaK1FId1ll?=
 =?utf-8?B?OEl0Ny93UnAwdmNQamFadHZpK3l3TmpRczJOZ05nVVJrSUkrQXNrWUFaaUJ0?=
 =?utf-8?B?d05KMW5xVkhkNmNyR1ZPd21mUVE1d2M0aUlYejlaUUhZYm03TU1NckprSnp3?=
 =?utf-8?B?Ri9TWmlwQXBsSU5teWhNTGtZeHN0dGNCaHVla2FRajJkSFRGRFhGZlFVODBW?=
 =?utf-8?B?Mm41bElDQ3hMVFVCSHA0MEdIbHZnVkMrOWRXWkJMYitFWFVjVmRraW1SVWdG?=
 =?utf-8?Q?2xl4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3l1RUxPV2hQMFBiQXhwMTB5SjFocjN4U3hGV0MrSDdHdDRQMWdUZmdKS0pQ?=
 =?utf-8?B?aUtEL2pJUEpFRmVMS2VYalEwM1QyRVdhYlJlQkVwWWJUQ2N3ZlNLeHlsWUZD?=
 =?utf-8?B?dlpyOHlLWjlwdGJNYW5teFZrT2tVeDlvOGs3Y2I2M2t3WWE0M3JNRkZIZ2dE?=
 =?utf-8?B?QVhCRlRrR1dTNDlGVDlGeEU1QUpjUndVbzd1VWJ4YmdMVFp0VGMwVzFGcFhY?=
 =?utf-8?B?YWFpQTZaNTYwMWxqRGhGVWNQUDQxY1BJZlJacDBOcWFTVkVnQzBlQWt5VVVO?=
 =?utf-8?B?N0NCanczSGFubjQ4MXNhdThtNGlnWE1Bc3A2QU4zUjdNODBQRFFHVnlINENx?=
 =?utf-8?B?M1BEMWFiN01lK05MRzlkQXowTm5FK0lXVDg3ckpienRvemVsR0pxdVUvNmRT?=
 =?utf-8?B?cEozWnRTeXZVbEtnWHFUT21tcWk3bThtY3E2K2J0L05mNDBlRTU5UlNHUnF5?=
 =?utf-8?B?c0hpbnpVN1FVTm10LzNvKy81R2d1TTdlTHJ1K3Z5UGdpQ29tYUZDK2NFdlIw?=
 =?utf-8?B?aUI1VDNCcTVpdlNHSFdCUENYQ0FLcmoxQlI5S2JNMzByaUtQYVNKSmtuQVJs?=
 =?utf-8?B?YTFKQm82UjBxVFpTbFN6L1FhU1dPdEdhVEZrU3JOczd6Mk9HSEY3U0hoR2ZP?=
 =?utf-8?B?bDNxNHZCRHdlN3ZUTDljbTM2TGduUURaS2JybmQvd2VGb2hkYXEreEpZYTdn?=
 =?utf-8?B?cTZUbzhuc21aZVA2WkVhUW82bWdFcEc3ZUxZWXhRMzNXS3JSallHOE5OY2Fw?=
 =?utf-8?B?TlFxTE9VUEhlZk5QZFVldnhkSnlzL0lpN2dnVkNNNkIzTmJmYmMyWmx3VDA3?=
 =?utf-8?B?YXM3MHducUxYSUV2NUhzSCs5QURaYkhBb2FxSE82cEVHT0tjNWErT29uUEVk?=
 =?utf-8?B?blBRMXpkWDRtbWtIdXZUMkdxRVEvV0pwdks5WTZwT0FsMDZBN21Cc3hTV1h4?=
 =?utf-8?B?czRRejZ2RXRwUHB5T0h5QnpKRi9OaFlnekFEYlVZd3pXT21mUGUvL0F6Sk13?=
 =?utf-8?B?Z3ZvSGJ2YnpIYTVtMDlNTTM4NFJYZStldE02TUVIVkJxYk53Uk5XZ3JXYnR0?=
 =?utf-8?B?MUxpOVloUGFBbGlCYXAvekhXRjZzVHpCSUM0UmVLdGNVbXNoQzJzVjRwZzJM?=
 =?utf-8?B?RGwwTStzMkkxaDFKTzhzamRaUlU3OTZVczFSSTh5SUp6V0Uxcnh5M3FQSWFI?=
 =?utf-8?B?enpHcWFYaFlKS0NhY0dvQzE2UzVscXJ4dXc0WGUvRCtmTXU3S244RURYemRN?=
 =?utf-8?B?N2w0MStwZkFEVXdtODdONENwU2NCRERpVC81RWEvMDVkNVVtNlpoNFpSQzRm?=
 =?utf-8?B?YnNmYzFSR1ZkYkFNK1Fpa1p0cUt0OXRHNnZ1MTYxTVFhazdEblk5NjhFWlJM?=
 =?utf-8?B?alB6YkhTbzZuTG4zZEJEZUFwWHBzczQxdzV3SGFLRGh0b3RibVNBaWhSdGRK?=
 =?utf-8?B?dkhORXROaGM1U1dDN01HQTA4Y2tJdk1pY2NEQnRZRldhZWh1d0FoU21xRmN1?=
 =?utf-8?B?QkRhenFlNUdVVFJYdjhwVWFkVThKU3FZNWVPL0MreUhqRTBtQ1U2clZxNUZk?=
 =?utf-8?B?b0dEdTJKRDdiQzhWbkxWSUVrOFRMWjlwbmxINzVBVFdlQllWVStpKzg4bGxG?=
 =?utf-8?B?NC9mSnlZb1ZEZkNJNDB0VW5QOTF0cCt4WXpwcFdJMkZ2Nk9MT2IzbWNaM3E5?=
 =?utf-8?B?NjVnTHlwTTFERVRVTnlZQmlGN2JoS3ZiZmVXRVBrbUU1TWlWMWxqS3pPZGVh?=
 =?utf-8?B?R2d4bE83bDZ3ME05T0UrTzJLcGQ2SUw3ejBCd1U0NVhhcVVrRHk2YXRnOXV6?=
 =?utf-8?B?ZmYrK2dhMzdvTHRmNkY2eC9LSUxPS3hVbWtPZkhPaXdwZ0o0bHJlNDRLVlFF?=
 =?utf-8?B?RExlVjRqVTBkMVFmYTkyckQ3WXdOUzlTbHZuWFBZNHpWSWRRSlNvL2xvbjND?=
 =?utf-8?B?c1FRZFV3cXJ6K2FiNms0SW05dEZuK3lQSHNpdXlxQWlEVm92MVZwb3lDU0Zr?=
 =?utf-8?B?YWo4UzQ0TWEwWDY2WVdtMnN0MUlpcFlVMzk4aTFwbm4yS2k2dDhiVk81Q1Ba?=
 =?utf-8?B?cXhEbEt1VDdodW90VGJHODIrb2k5VWFCc2IwZktnYnRyTWppR1hld3E5UUYz?=
 =?utf-8?B?MFBwSmdlUFB0UTdFRi85YU03VzhOL090TTgzaXhhYWgrK2V0cGN5RElTUWpC?=
 =?utf-8?B?N25OZGp6RUF1bHdTNjRBVEg4by9VaFZSTGtOd0lkdm4wY0JOVmlEUTBvamh0?=
 =?utf-8?B?NlkrODR0WGdvSW9xMWxFR2hEb2lJUHRnZUFkQVIzdHprNzNLVFg2RXV5ekZQ?=
 =?utf-8?B?UDFURDhLeWtrVFdOOGpnV1RNTTB5TzdrR01XdFBaZDZIZXJyN1lOU3Q3cE94?=
 =?utf-8?Q?FerNIjY6xTmJSSOo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 220cb45d-2a77-47ce-a9aa-08de58e68e9c
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 12:13:59.4551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4JnilFHg51QMrGoMW85r/a1Til8xCXkbSf6X2xpS3FZouROXWxad3v7o3u0pR8K47fucfrGQfZKu/+7VPAQrr6jpsI5RgX7gD5JD0cE/SI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7585
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E549956973
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/21/2026 2:31 PM, Sebastian Andrzej Siewior wrote:
> On 2026-01-21 13:59:38 [+0530], Borah, Chaitanya Kumar wrote:
>>
>> Looks like it.
>>    9:          1          0  IO-APIC   9-fasteoi   acpi, INT0002
> 
> Does the following help?
> 
> diff --git a/drivers/platform/x86/intel/int0002_vgpio.c b/drivers/platform/x86/intel/int0002_vgpio.c
> index 6f5629dc3f8db..562e880256436 100644
> --- a/drivers/platform/x86/intel/int0002_vgpio.c
> +++ b/drivers/platform/x86/intel/int0002_vgpio.c
> @@ -206,8 +206,8 @@ static int int0002_probe(struct platform_device *pdev)
>   	 * FIXME: augment this if we managed to pull handling of shared
>   	 * IRQs into gpiolib.
>   	 */
> -	ret = devm_request_irq(dev, irq, int0002_irq,
> -			       IRQF_ONESHOT | IRQF_SHARED, "INT0002", chip);
> +	ret = devm_request_irq(dev, irq, int0002_irq, IRQF_SHARED, "INT0002",
> +			       chip);
>   	if (ret) {
>   		dev_err(dev, "Error requesting IRQ %d: %d\n", irq, ret);
>   		return ret;
> diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
> index 266f2b39213a0..b2bb878abd113 100644
> --- a/include/linux/interrupt.h
> +++ b/include/linux/interrupt.h
> @@ -228,7 +228,7 @@ static inline int __must_check
>   devm_request_irq(struct device *dev, unsigned int irq, irq_handler_t handler,
>   		 unsigned long irqflags, const char *devname, void *dev_id)
>   {
> -	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags,
> +	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags | IRQF_COND_ONESHOT,
>   					 devname, dev_id);
>   }
>   
> My guess would be that the int0002_vgpio.c results in a warning without
> requesting the interrupt while the interrupt.h change should fix it and
> the warning should be gone.
> 

This helps. Thank you for the patch. Would you be floating it soon?

==
Chaitanya


