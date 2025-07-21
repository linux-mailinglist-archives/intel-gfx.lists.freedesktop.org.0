Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD46B0C755
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 17:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D16F10E56B;
	Mon, 21 Jul 2025 15:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSm6v8iJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6817010E2AF;
 Mon, 21 Jul 2025 15:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753111089; x=1784647089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DBMsWrfOJ8aaLqnbhd+WBzWJWYVnsaEX+rg6K9hZA9g=;
 b=nSm6v8iJT96Hr9078l24PABU6uF/PxSNfcQ6yaOyFzTe3LXoXdG5bWPR
 Ceu62k2QnoitXPe/fH5mW6jjO2+NRt9qXc1Kf73Qob5zu3PSJMsMR4PVi
 c5yIvY41Hv5D6k3TuF6fjcoV/q/YenYLeQXasbsSZFjWnS+bJd3QDj4iE
 OO0Lg8rnZVeZXMZ5Z8YCBrrOvp9h6K5nQHKOoYSg5ZiXQtZxf/JPYEaIT
 rent84WpWqfbdhn/FRk590HXZA6o9w2At+doS3qn2JcVV91/oGxV52rRW
 7lkdDRuLCAT7uXqg07XNZaY96S0rqIvkxgdUCfBnopZ/m7rXuE7rTHiS1 A==;
X-CSE-ConnectionGUID: XN6SNNMFSOOhNhjJ55//FA==
X-CSE-MsgGUID: KCFAxL9JQ2a/5OEXomtcIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55209408"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="55209408"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 08:18:09 -0700
X-CSE-ConnectionGUID: Ayi14rZzSDa6SbgP6z2Wlg==
X-CSE-MsgGUID: c2E0vEfrRh6u702eTjdXUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="163412316"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 08:18:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 08:18:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 08:18:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.84)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 21 Jul 2025 08:18:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dpb7HUeFYcYSwPC4pMbJrnFZ6m021/9zZESgHpW5h0mtvU8AUTk5f99yHFQKazRwKubx/Hixdd7FvSsYOIkXMIX6CTunt/edjFhNuF6NRIyWLJHGQpPeerZvMnRRZSgXOPh5yBxi+PrBcSfs6c9icxil7M4Gf5OeuP3I5Qb8RFHcIZqz6PLOY2OYZebz1GrXqQ3S9EEtR33pKA4ZjUMlHOKDHNyvCN5nVR3wN4uW0wkybgWKBybhktcHdMwGlVm8AngDUQRmRcQkj8K9l8NH3kQv5NFmykLOPZcT5AKFoctEUNbn8lepTDWn/mJzieAq0SmzvWE7bgZASzXbFtHiwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5cN4IYZWTcjJetDvCgY/uQXjSfMG+HXk/H2CLS5sj0=;
 b=JUP/bzrwcIPx3h3RmBHgBNa5P/XfwsUyoEoe9MVy1PFduJNrtqOU8YY+sNoWxmOpVtJ0xpw6RyhvFgBZbq/wiACJS38VmiRJ0IKyEYTpxJQIlFXwfcIrR/pwUnToqaNemQHmrVvzn7HfuZEDbBn1vSnyOQWhZ3lEPhnfOdP9QBIzy2xF4H56oeTaTIPvPz+GxPLcPOmoSaNTYaWDnQdwHybBBlH6gmFO1i5fKuhteVbtu3oXZ2dUk7/wIwp2lJLBZfv4/j8caQVxYulTOtoe0S+PK3gAfJaP6nfAHoHFMY0zAIsD7aDq0ku5QgaxevMmtjzppTsxMNFoGHLxgQ7AHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 15:18:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 15:18:04 +0000
Message-ID: <4dd05412-8f3e-4c2f-9ade-7158d5478b22@intel.com>
Date: Mon, 21 Jul 2025 20:47:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
To: <imre.deak@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
 <aHqBlQ-yY2Lc8TuV@ideak-desk>
 <175286978035.1474.9787252535829745230@intel.com>
 <aHt1hKImGHBVXDBI@ideak-desk>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aHt1hKImGHBVXDBI@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::17) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: ddc534c6-02c3-4bef-63de-08ddc869c959
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NjhHb0FwdTQyZXVaOEZjTHIrMEtCY3JSVjBRZzd1N3F2dFh2OUhUeEUwTFhr?=
 =?utf-8?B?VEplSVZvK08zQTlTTmsrTkxNS2VqNzh3NnU5a2YyS2dhN1U2eCtvKzJnbm5y?=
 =?utf-8?B?VjRUM1R2T3VZR0pIbTNCa2x3blo5clBSNXowTUVHZzlJMHN1OWN4cnp0TndR?=
 =?utf-8?B?aGI4NjVCTGN5endHcW5tZjZOZjdyQk5SczVXdXpPSGVQN3FJMDF1V0VOVlF0?=
 =?utf-8?B?eGpHR2R6WWxvdVF5ZmxlbEFsd0RQUWFtdWIxYW1pYzUyb2k3UjVqQnkxNEhU?=
 =?utf-8?B?bkUvdDU4NFZwbUVOWkdPNlRpUU5VbjJSQ29qRnZqNkdONCtGbkorVkFBbWpq?=
 =?utf-8?B?clJrcFRLOWVzVTZscW4za3lNSHNLNHIxdlduRWMrVjZ0UGFmT054dzhJdEVB?=
 =?utf-8?B?M3ZwUnROU2U4TExwQ0xHNXpzQ3IzWFZmb0trUnpsS3liTW1ack9uaFRFYlpI?=
 =?utf-8?B?eWx5ME1zQWdXWjJqN2V3SWVzdENMOG44K2ZrRmpjU3p3UzU2Q0wrMnJEbUZ3?=
 =?utf-8?B?bHhHcVpOM1RpQjF4NGNqZlAxZmowMGhTTHUxSXQvRTBxVmVWNnd3SFE5V0Ru?=
 =?utf-8?B?WVkvY1BKSE5PQlh0LzJxcnZ0T1FWelQ5RGxyV2MwWGRYZFd2cmczVWcyZU9K?=
 =?utf-8?B?Y1k4emwzN0ZWOGhLQzBJRENqc2czN0piTUZwQTZhYjdsUlhVQVY4L2hiMXRl?=
 =?utf-8?B?RFdyazZVTEJFTUxFaTRVdlpDMCsxaGRkRWdaRUVpdHErRVVpdG0wbyt0ZE4x?=
 =?utf-8?B?WGJ0Um94NnJIcDM3WFNWekdrUkF2SnY5U3FlQmhkV2NKOHlOSE9iSHh0cGhh?=
 =?utf-8?B?Q09FeHlZNURZNU1DR0NCYTBOQ0VEQnFxUk9WMCtzcUQ0dkJJcEh3V2NrMm55?=
 =?utf-8?B?YW8yK212Umg1K1FDaks3RTd0Y0hCTm14SDR3QStKWGlWWXorVXA3M3ZMU2VD?=
 =?utf-8?B?OUhrKzhnRUE2MGlFZi9nREU5TWREcnNRa0JZclptZUFPUWNacTBsWDVDS2pY?=
 =?utf-8?B?VWZjbmNEdjRqUmt4VHJ5UGNvVUNMTUY4YklDaVhZMTltT0pjZURYYUc3cXBN?=
 =?utf-8?B?b1ZFNUZ3dFZZU2dqK3BzTXlsSmY5b1ZFc1JwYndWQ09RbXJGbEd3ZS90RUgy?=
 =?utf-8?B?WkZXZDdPYjNXdWs4UFg1ZHU2WmJQVTh0Wm5Eb2ZKYkZSYldXVmJlcFR6VzU4?=
 =?utf-8?B?Z09yaG1mVFhVamZDRGF6UkZZV2ROODlPYWlTZ1NqOGdOYWk3aE5Talo3N0gx?=
 =?utf-8?B?aHNCd3gySVNYS1g4aGNPcU45U09RanJsd3AxTVlGSE0rRzNoY0xVT1JWeGda?=
 =?utf-8?B?ZExHVnE2MmJXWjA1ZWFFaTdtcW1icnpaVXZBSDNtT0dzb25mT3JPb0ZpdGJD?=
 =?utf-8?B?R3lwY21ka216VkpSazZHeWU2b1l5eWtQL1V3MEJHVUNYbWhlM0hscE0xZDNI?=
 =?utf-8?B?czhmMEdMbXpoTHVtYU5vbU53V1FUTlJ5N1FGVVlRZTZGWHdSa1VxQUg2dy9p?=
 =?utf-8?B?bHpZRnZIbGlNZEduYVgvUVh5U0thUlowd2pKWWdnRVIxemorQndYeVZXZ0Ji?=
 =?utf-8?B?SU9nT0s5NjlQMVMxYTBlRlZpcWdRRVJoRlVnOXYwUHp4NkU3WGRuT1RQcDRQ?=
 =?utf-8?B?NHd4cHl2ZkI1TUNYdmd2MHYvR3VNdVRBTi9INGwzN280TzdaUWwvd2E4MXEz?=
 =?utf-8?B?YUNMdlVYVzlqZ3JLa3lTQXQycG5OZWw5YWErSTBzd1Zwd1pQNCtiL0RyaGZs?=
 =?utf-8?B?Y3ZyQ09JSHVvQlR6VzNGOVhJNy81QVp6UDBNNlROMHVmVG9lQ1BIU1UwUlRq?=
 =?utf-8?B?SVZQdHBPWS9ydEN5NGZWWVFUb0Irdy9uTE43cWFrYW5ycmlzVmZ0aDBiRG1U?=
 =?utf-8?B?M25HOGJYenhQV054d2pvL05BNlVxZFJEWDBOMmpwUDVhVis5NjlQTWhXL1Zj?=
 =?utf-8?Q?KZi2cP5Ckbk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wk5CdmVhM0I1VmJLK2tSS0xpMXlGdjI3SmM2U2xsZngyY3BlcVFweDZJQnBt?=
 =?utf-8?B?Zkdic0N0dlI1WXhOckQ3UUtEZWYrRnhsY3VrOHhVbWtCMnNaK0s0b3RBWTJh?=
 =?utf-8?B?SEtNb3pOTU9HYTBzZlkyWExoMmdGQmYrOFRDdE5JT251cmY5Skszb01SRHJZ?=
 =?utf-8?B?V1NBWFNnM1dXQmU0VHliNHJnU3ZnbXRWb0tjZ1hrRXN1ZG51cU5IZk9kY3BC?=
 =?utf-8?B?MEt0RGQzZnE1VW8yMGdrSzE1NGVpTDNObm8rODdWQzhpQ0Z3K2JkV0JMQ2VE?=
 =?utf-8?B?aVBhZ1VhZzE2bXA2bExxaWVLeWdGbWVhbjcvNG4wT0xGRWZCSGlsNXV3YjMw?=
 =?utf-8?B?UHZWNzMzYTYrUVZjQTh1VzQ3SkpxUUNTNWZDbmN0cVJzWEx2VlpqUXJubFpQ?=
 =?utf-8?B?SXk2QnNrUnplaGxhejUraWRGVnB0aGFqY25MN0lDdlZ4a3Y0VWNBNU9yQWFh?=
 =?utf-8?B?M3dodnZuNU9NaWNVQzVyS2h5TmZWNW9qWkxCNWpYQWlLamtUVWJzT3R5MDd3?=
 =?utf-8?B?TnVzRFBMQzhHUFB3RDF6eXRUb1BQU2JyWDZ4VkVXaDl1M0o5NlNDV2ZZRG8z?=
 =?utf-8?B?YnRncTAxdGROOGpacEY3aDJwekJmTndQdkpyczJKNWtmN3VKanZBZWVmemdM?=
 =?utf-8?B?bmFCRFpYV3dIbUdpVzZTMVJDTU5Dbk1DaGN0MUk1aTRDZkp3ZE5OVzFyRldV?=
 =?utf-8?B?YXhIK3pyUThJbCt6dWZsUzUybzFKaGtmeittMWxwcHlzWHJSMWRRRGJCcHV3?=
 =?utf-8?B?cUNsVEs4MVdvMldWTlhJRENaN0kwZDYvUFFwQmFKYkF1UXNUSHNyQnZXdVRt?=
 =?utf-8?B?aXVZVzB3WU4xUFNtaDQ1Q29kY2hxbFRjd1haaG9JN0loZzZoZTVvWEpiczBP?=
 =?utf-8?B?RTVOdVBEUURzdDRadlBqZVB2WkUzTVFFeFdrak80YW1sZTZDRlcyWDYxSmxL?=
 =?utf-8?B?WnlwK1g2S1JqMnIxSThBU2EwWlBqelM1bWJVeDE2MXlxdG53Snp0WTZqb3Jy?=
 =?utf-8?B?eFV1aWxCQXl6cXRETy84YzN5aXBreFhxci82d0RTSVlZSTF1QSs3aCtmVlJY?=
 =?utf-8?B?VElRS1hJRlo3ZVpGSnBSMTlET1orajdxZEJLUWt1Z1BEYWdxNmZTWnBkbkZa?=
 =?utf-8?B?UkEzbEVOeVQrRFMwbkhZUDhMMlk4Q3ltQU1WUkRzK1VTSjBLaEljZ0xsanUv?=
 =?utf-8?B?cHpBYUpNdTlRTi9lcEU4UjRhTk5raUFVSTJWYW1HSVc3Y1J4VjRUeWorMjFH?=
 =?utf-8?B?MnJVT21JemEzOGZFT0VZSWxpeGdCZlIvbVVmdE5SekYvZnpHaVQrTDhTVFlr?=
 =?utf-8?B?VUpmeDIrbnpXTGZGYjhmTCs5bHpYcnRxdVUvd0Nlam1SUTc2Z3Z1ZlVPVjFD?=
 =?utf-8?B?MnVKcWR6SEE4QXB4TEl6UTZsajJCM3pTejNHWUZMcllLMWFpVGpoRm5CWm5l?=
 =?utf-8?B?akI3ZWxkbTR5ZWJUWG1RVEMzMnhUeEVXRXFQTjRyQjdCd1FhMDdzNk5EM2x5?=
 =?utf-8?B?RTdndUNHbGpEM3FJVkhOOXRQTGdRZFBOSW5NYVFyQ0pYK2ZOcytacFloT2wv?=
 =?utf-8?B?VDdSRURFdEF5UmRMUGpYSitZVXJlWlMvc21hQ0cyMmZEVEltUjFLaE9DUlE2?=
 =?utf-8?B?MTBORmRtYlFva1B1Si82NjhhU2I5UjF0TFRBZmNIRjVqYTlVMzRlWUxnZVNw?=
 =?utf-8?B?K2ZORDN3d0hZMy9ibEZTRTUwbW14OS9odjFBay9WakkvVDduaXMxclBTT0o3?=
 =?utf-8?B?Uml3ejZNRno0L3h3UDVWVkk5aER6ZlIzR1hpbzBsV1laWklyZHp1d2djeFVS?=
 =?utf-8?B?Z3hIMEhtazdrYm5Pbk5xSUhMVnl1NGtGZFVBVnFjOFh2NjB4d2hXTXdheDN4?=
 =?utf-8?B?SmdIMllMUUJlSXlDWXJLeEtCbi9CRHpFMWhEc0hNUEFGMnovY1I1emliUU1D?=
 =?utf-8?B?aTVYaEdRcVB3SFV3VFg4Tjc0U29JNmVmejZzTFRmMjZTWUs1WVlzMEJOcHRy?=
 =?utf-8?B?TDUxOHJ6bERLdk03WGFZU2RWUkZrWWpmU2Q0cXZMT0FRL21nd0JicFFBemds?=
 =?utf-8?B?cHU2a0NGY0JYWUpybkowckNOK0k0cVpTRWE5QUtiUzB0cURZSTQzZUZHeUEy?=
 =?utf-8?B?blFjbG1MQXJBRWUvNHRmOElISjlXUHpBVmdBeWI2RjNGUVFOdzVKVS9YUVpw?=
 =?utf-8?Q?i9eW220+mOIOXogO6FnaX/Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddc534c6-02c3-4bef-63de-08ddc869c959
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 15:18:03.8346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZFH6vdwI963hCNi58pVr8s0pAsaFa6hzoI/5aP9VYj8U9b3l/uE3d+wT4fFdBTiuyTn4zZcavH2UdG5cvT1Q/c5XuEj0j+RV/yx2g/YxWEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
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


On 7/19/2025 4:07 PM, Imre Deak wrote:
> On Fri, Jul 18, 2025 at 05:16:20PM -0300, Gustavo Sousa wrote:
> ...
>
> DDI TC3/4 are never wired on WCL, so I'd still confirm the above, i.e.
> do the PORT_AUX_CTL_USBC3/4 registers exist indeed (they do based on the
> spec) and do the 'PHY Power Request' / 'PHY Power State' flags get
> updated if the request bit is set/cleared as expected?
>
>>   * As you explained in a previous reply, the driver needs to deal with
>>     power wells of fused-off pipes to ensure those get properly powered
>>     off in case whatever was controlling display before the driver takes
>>     control let them enabled.
>>
>> So, I guess we could either
>>
>>    (1) go back to Chaitanya's original patch;
>>    (2) or tweak this patch to use a mask of pipes supported by the
>>        display IP instead of non-fused-off ones.
>>
>> I personally would prefer (1), since then we would make the presence of
>> power wells and mapping more explicit in the code;
> Agreed, I'd also prefer (1). I'd still check if registering the
> AUX_TC3/4 power wells is correct based on the above.
>
I had a version of my first patch that excluded AUX_TC3/4.

That lead to the following warning. I need to dig deeper to understand 
the failure but it might be more obvious to one of you.
At the time I just assumed that these power wells are actually present.

[    4.223342] ------------[ cut here ]------------
[    4.223343] xe 0000:00:02.0: [drm] drm_WARN_ON(aux_powered)
[    4.223367] WARNING: CPU: 0 PID: 145 at 
drivers/gpu/drm/i915/display/intel_tc.c:1447 
intel_tc_port_reset_mode+0x135/0x350 [xe]
[    4.223583] Modules linked in: xe(+) drm_ttm_helper ttm 
drm_suballoc_helper cec rc_core drm_buddy gpu_sched drm_gpuvm drm_exec 
drm_gpusvm drm_display_helper mac_hid video wmi pinctrl_intel_platform 
pinctrl_intel pwm_lpss
...
[    4.223801] Call Trace:
[    4.223803]  <TASK>
[    4.223806]  __intel_tc_port_lock+0xdf/0x130 [xe]
[    4.223943]  intel_tc_port_lock+0x1e/0x30 [xe]
[    4.224062]  intel_digital_port_connected+0x33/0xa0 [xe]
[    4.224258]  intel_dp_detect+0xef/0x860 [xe]
[    4.224474]  ? ww_mutex_lock+0xfd/0x110
[    4.224482]  detect_connector_status+0x1e/0x50
[    4.224490]  drm_helper_probe_detect+0x4b/0x80
[    4.224495] drm_helper_probe_single_connector_modes+0x3f4/0x680
[    4.224502]  drm_client_modeset_probe+0x251/0x1a40
[    4.224506]  ? kmem_cache_alloc_lru_noprof+0x2cd/0x3b0
[    4.224512]  ? __d_alloc+0x2e/0x1f0
[    4.224519]  ? __kmalloc_node_track_caller_noprof+0x347/0x4c0
[    4.224524] __drm_fb_helper_initial_config_and_unlock+0x3e/0x560
[    4.224529]  ? kstrdup+0x3c/0x70
[    4.224533]  ? kstrdup+0x52/0x70
[    4.224536]  drm_fb_helper_initial_config+0x36/0x40
[    4.224540]  drm_fbdev_client_hotplug+0x76/0xc0
[    4.224543]  drm_client_register+0x68/0xb0
[    4.224549]  drm_fbdev_client_setup+0xe8/0x1d0
[    4.224552]  drm_client_setup+0x5b/0x80
[    4.224555]  drm_client_setup_with_color_mode+0x29/0x40
[    4.224557]  intel_fbdev_setup+0x20f/0x4c0 [xe]
[    4.224699]  intel_display_driver_register+0xb9/0x100 [xe]
[    4.224905]  ? __pfx___drm_printfn_dbg+0x10/0x10
[    4.224909]  ? intel_display_driver_register+0x32/0x100 [xe]
[    4.225108]  xe_display_register+0x2c/0x40 [xe]
[    4.225321]  xe_device_probe+0x4af/0x580 [xe]
[    4.225467]  xe_pci_probe+0x9a2/0xcd0 [xe]
[    4.225653]  local_pci_probe+0x4c/0xb0
[    4.225657]  pci_device_probe+0xdb/0x230
[    4.225660]  really_probe+0xe2/0x390
[    4.225665]  __driver_probe_device+0x7e/0x160
[    4.225669]  driver_probe_device+0x23/0xa0
[    4.225673]  __driver_attach+0xe8/0x1e0
[    4.225677]  ? __pfx___driver_attach+0x10/0x10
[    4.225681]  bus_for_each_dev+0x7d/0xd0
[    4.225684]  driver_attach+0x22/0x30
[    4.225687]  bus_add_driver+0x118/0x240
[    4.225691]  driver_register+0x68/0x130
[    4.225695]  __pci_register_driver+0x65/0x70
[    4.225697]  xe_register_pci_driver+0x27/0x30 [xe]
[    4.225875]  xe_init+0x35/0x90 [xe]
[    4.226005]  ? __pfx_xe_init+0x10/0x10 [xe]
[    4.226131]  do_one_initcall+0x49/0x330
[    4.226137]  do_init_module+0x6a/0x2a0
[    4.226141]  load_module+0x21e6/0x22b0
[    4.226145]  ? kernel_read_file+0x240/0x2c0
[    4.226150]  init_module_from_file+0x9b/0xe0
[    4.226153]  ? init_module_from_file+0x9b/0xe0
[    4.226156]  idempotent_init_module+0x170/0x270
[    4.226159]  __x64_sys_finit_module+0x6f/0xe0
[    4.226162]  x64_sys_call+0x1b7a/0x2150
[    4.226165]  do_syscall_64+0x56/0x860
[    4.226169]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[    4.226172] RIP: 0033:0x7fab2003b25d
...
[    4.226190] ---[ end trace 0000000000000000 ]---

- Chaitanya

>
>> but I wouldn't be against (2).
>>
>> --
>> Gustavo Sousa
>>
>>>>>> * If the power well that has irq_pipe_mask is also used to power
>>>>>>    something else than the pipes, we could have issues if pipes in that
>>>>>>    mask are fused off.
>>>>>>
>>>>>> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
>>>>>> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
>>>>>> have some idea of how to do that without rewriting code to use a
>>>>>> hierarchical structure (which IMO would be ideal, but takes more
>>>>>> effort).
>>>>>>
>>>>>> The idea is to, during runtime and initialization of the mapping, set
>>>>>> the bit respective to POWER_DOMAIN_INIT in each power well that has the
>>>>>> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
>>>>>> also require removing the POWER_DOMAIN_INIT from the static mapping for
>>>>>> power wells directly responsible for POWER_DOMAIN_PIPE_*.
>>>>> Power wells that don't exist on a platform shouldn't be registered in
>>>>> the first place, so it's not enough to only remove them from the power
>>>>> well->domain mapping, while still registering the power well. Otherwise
>>>>> these non-existant power wells would still be accessed while disabling
>>>>> any unused power well during driver loading/resume. Also these power
>>>>> wells non-existant on a platform would be incorrectly listed in debugfs
>>>>> and other state dumps.
>>>>>
>>>>> However, I realized that pipe power wells that do exist on a platform,
>>>>> but for which the corresponing pipe is fused off (for instance pipe
>>>>> A/B/C on WCL) we still need to register the power well. On some
>>>>> platforms at least such power wells may be enabled after HW reset/by
>>>>> BIOS and so these still need to be checked and disabled if needed during
>>>>> driver loading/resume. I.e. instead of the above
>>>> Ah, I see. Yeah, that makes sense. Thanks for the details!
>>>>
>>>> Well, although Bspec overview page tells that WCL's display has only
>>>> pipes A, B and C, the page specific for power wells still lists power
>>>> well D. So I'm wondering if WCL display just has pipe D fused off and
>>>> the power well still exists or if power well D being listed in Bspec is
>>>> just a documentation mistake. I'll check with the hardware team.
>>>>
>>>>> DISPLAY_RUNTIME_INFO(display)->pipe_mask
>>>>>
>>>>> something like the following should be used:
>>>>>
>>>>> u8 pipe_pw_mask(display)
>>>>> {
>>>>>         if (DISPLAY_VERx100(display) == 3002)
>>>>>                 return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
>>>>>
>>>>>         return BIT(I915_MAX_PIPES + 1) - 1;
>>>>> }
>>>> Well, if power well D does not exist indeed (i.e. not a case of pipe D
>>>> fused-off), we need either this above or maybe go back to Chaitanya's
>>>> original patch.
>>>>
>>>> I think I prefer the original patch, making the power well mapping
>>>> explicit.
>>>>
>>>> --
>>>> Gustavo Sousa
>>>>
>>>>>> --
>>>>>> Gustavo Sousa
>>>>>>
>>>>>>> +                return false;
>>>>>>> +
>>>>>>> +        return true;
>>>>>>> +}
>>>>>>> +
>>>>>>> static int
>>>>>>> __set_power_wells(struct i915_power_domains *power_domains,
>>>>>>>                    const struct i915_power_well_desc_list *power_well_descs,
>>>>>>> @@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
>>>>>>>          int power_well_count = 0;
>>>>>>>          int plt_idx = 0;
>>>>>>>
>>>>>>> -        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
>>>>>>> -                power_well_count++;
>>>>>>> +        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
>>>>>>> +                if (is_power_well_available(display, desc))
>>>>>>> +                        power_well_count++;
>>>>>>> +        }
>>>>>>>
>>>>>>>          power_domains->power_well_count = power_well_count;
>>>>>>>          power_domains->power_wells =
>>>>>>> @@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
>>>>>>>                  struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
>>>>>>>                  enum i915_power_well_id id = inst->id;
>>>>>>>
>>>>>>> +                if (!is_power_well_available(display, desc))
>>>>>>> +                        continue;
>>>>>>> +
>>>>>>>                  pw->desc = desc;
>>>>>>>                  drm_WARN_ON(display->drm,
>>>>>>>                              overflows_type(inst - desc->instances->list, pw->instance_idx));
>>>>>>> -- 
>>>>>>> 2.25.1
>>>>>>>
