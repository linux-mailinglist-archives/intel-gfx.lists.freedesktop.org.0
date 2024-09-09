Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72051971260
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 10:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A41510E33C;
	Mon,  9 Sep 2024 08:44:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgWaRi4B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3588210E331
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 08:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725871457; x=1757407457;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OBR+skjvrg/kF0KC28yjGN2IyMK6Gfm5aqT132dOmOs=;
 b=KgWaRi4B+LHW6wisKNzRauf5pcoFABy184yd8pgcl/vWzFgDQr0qm8cv
 B2DewTn+kYRIZKaPeAc4mbF4plg2Yeyu5gguBijbod5MtmYo/UgCHeITq
 4uq0SeJIPgK+M8OaLA4JZrlk0f/XmB1smuPjWwu7ByIbs2nbSoY/WhSJ7
 vNTKQn2n+NlNivYMF5SngZwuYQFVt6fSm637seDSZWsQO+S2icMAk8Jfc
 9nfjVkJJrje8u+e1puZIdfehmrSQ2+DnCLKB7K/4FgI0OQsBKberTeN0X
 z/spCLa0ECLocADeJd8dbEL+UnmX6SXiwEPVvAGmTlnVhFyDORvLJ8ukt w==;
X-CSE-ConnectionGUID: 5MRDQYasTbWfPT2XV0WlOQ==
X-CSE-MsgGUID: i8IrgSvATNG0rn6VRP+Rrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24748929"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24748929"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 01:44:17 -0700
X-CSE-ConnectionGUID: Gq4BMHzVQAS3Ox72Y7shbw==
X-CSE-MsgGUID: MqxonEK4Q8GHGDVX0s/zqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="66388903"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 01:44:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 01:44:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 01:44:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 01:44:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xhkFfO905k6lzvvnkS9/zLiIVZYMry256BckXl6Rhj6lmQzNQZFhmA9EvbEq2w2YDj3Hm1WbL9qNO+E0mxYUljy9P91ugoH1zW6iFY3SYVVo/qNJch7OrUWoWSXShmGzWCVumDfGd1HuTEjpxOSkMlc8n/q3+hpNrGDVHptYeXhweFEIjNLg0U2WZ5pptoOLsD5MuMP/BfeUxJB3DT22bCatsdxzk5b46hKLAbLoxpN2HdR/hBRiuvdByy7KSAbkyVwcfJrR7zNs7niEoDi2wWG0/fInwmiP6Bs8+5KYznHE3AfpOSZnWr8wBDWF+W0+P+zaQfJtYjocgdaIKl+xdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oojKd93lTXjbgSX5XCnAN+dJwjJ6kZO4ITfXPnpF9Ao=;
 b=uQle9gSRwZvvAQr4vhpFR6FUSpmMTdS8JA91MbDdu0jOujrljYr+d7vH2RMtjHh7h0j4bcO4sy+EYJRZS4CZ8nZWp/8FwtTq5FRgBjR5TqtcVo+NYZwhEmhyCKREuciPzqaEBgGgg558cLR2A++9sLEhf3/YeJ7lwpD4ZjPnmV6uuYWCC6rR1gi3JH50Qn6LUKf2YFWJg4YCUyXL4t70D/wc1ztnH4n0Ozk+YXSrX02FUp0QhnwA/fb3xdZrXOoSa0MeAuCnTtRV2ZoXBp6izOA2H6kpKFH6yPmAanp7gM8ev0Rj25rfv6R5wAXi2jvq1B3uRDOip2TsUiaHdCJwSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4599.namprd11.prod.outlook.com (2603:10b6:208:26d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Mon, 9 Sep
 2024 08:44:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 08:44:13 +0000
Message-ID: <3ef1ddac-f8c4-474e-acba-3df447f89dc2@intel.com>
Date: Mon, 9 Sep 2024 14:14:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/14] drm/i915: Implement hw state readout and checks for
 ultrajoiner
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-9-ankit.k.nautiyal@intel.com>
 <ZtsmsqFxRVLM2g1t@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtsmsqFxRVLM2g1t@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0018.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4599:EE_
X-MS-Office365-Filtering-Correlation-Id: f93df5bd-fd48-4bb6-3452-08dcd0ab9509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFkrVS9VYm5EZVJWamdCNWxmN2NOdmdBaWQvM3c1Y0R1M2JhVWFDV3RYZkQr?=
 =?utf-8?B?MElQYW5SNTFxRXdnTURUT3VWNk9ha3o0VFh2VnhRSllCWWxDUnp5TXJSSEtH?=
 =?utf-8?B?Tmd5ZGtINVRKZ2kvbGFqWWFnN3VDc3diTm4yVjU1UTZvZDUrekIwenVXVHdZ?=
 =?utf-8?B?L0M1SnkzdFpaM2taOHlDUmtKSjExS3k3aHdabDRKRGJNOFREQmlZM3JaZjNl?=
 =?utf-8?B?QjdzWkJYOVZUQktxSE1Uc29qajRiMFgvUFlXY2V5NG1JWEd0WkVaVzAwOGVl?=
 =?utf-8?B?bkxneGliZktJZk9LejhqeGdiVEh1d1YycmNQNlhDQ1dBa3lNZlV1WUFyVlll?=
 =?utf-8?B?MVg5YkxFd0htTklaaXBiRS8vUGVBZ29OUkVBR3JGV1A0eHZMNjlkYks1dFFn?=
 =?utf-8?B?S2ZnRm04OUFZajExU05hTzYyVUJCcEpPVlJjcFR5MXlaTnI5ZUJtRFZibkU0?=
 =?utf-8?B?dWNSN1gxVzllejFxR3lxZkhkNTJPRGJFNWR3cmJuQzBlaVl0amtCTDJVUUFh?=
 =?utf-8?B?dXEvLzczSWxYUndWd3lBMEh5V1cwQXk3YzZBcGUrdW1pVENEYktOUDljbGJm?=
 =?utf-8?B?NldUR01lWVU4OXFsVHBuV2Z0a29TSUFlcHc2WFU5STA5TzlRTFNaUW1QNWJr?=
 =?utf-8?B?N2xTQUJnMC9zb0hNMVlnbGJQbklOUXBrdkFxRlF1YmRwYUtZUHpFL3hibjIr?=
 =?utf-8?B?VWpTMmduTzgrNVBtZG5NL1N6OHc0OCtMWU02WE1SZXFiYm43blc4MytsZEJl?=
 =?utf-8?B?b3NDVng4SFJEc2grS2xpYnc1MFVEblhPQVJZWU1IM0E4MUVMQkRPOWd3RFNL?=
 =?utf-8?B?bElwMUlBaW1XU2lRR3VoMkNvOGVleHRyOFdUOGNnZjEvR2ZiYlRRaUFsUEo2?=
 =?utf-8?B?Q2gzR3lhbFRxZkpNWVNtMGYxSlpKaHhQZGUzeURsU0UySU9XeEk5L3hYVVFk?=
 =?utf-8?B?VGlSTVM2MjIvb0lTU2U4bHdkRWlIMEwwOVVJUVM3K0NxZStNdjZMMUdnT3Rh?=
 =?utf-8?B?QWt5Vlp0MFVEbHhkYUFjNnpJaWlvYnd6d1lRbFVMM3Y0WVNKb2hxazR3U2Vu?=
 =?utf-8?B?OXpxMkhDYlZmSTl3N3JySEk1bEhXTUNZVlFJY09VZndVODVuWFJwQ2YrdFNU?=
 =?utf-8?B?K0gwaVlXRmhLa3kxSHZEZE83SDJnQS9tR2x2WnJ3VlFFUVMzem8wZHRuaGxH?=
 =?utf-8?B?ZjBNNytOU281TGphZnFLOFNaRUMxTi9iaGV4eDcwZWJ6T09KVHl5eVVScTRU?=
 =?utf-8?B?dGx4QU9KT08vTHdyR1QrTFJhdGs4ckpSMllHd205WlN1ZjFRYm1FNmszVG9a?=
 =?utf-8?B?cjV3LzlsQlVHMEE1WGZGWnpOcDUxanBmTlBGTUk5RnpGT2dTOUNrV0tKN3Ny?=
 =?utf-8?B?QnEyU1NYRllGQndGdTRnUjRyTlJtWlFLYXg3dVptVEw3SE9Zb2krczBmRDA3?=
 =?utf-8?B?ei9kb2owMTVzMTZ5VEp4dldTcmVoUk53SmdKdXZKQnRTbU1icVJ0SzRQSWlj?=
 =?utf-8?B?eXl6NVI4YUNWMG5EVG5iOStOMTlnV09TUWIrQUhPT3RxN3FEbkdpd1Q2eGxh?=
 =?utf-8?B?T2xiQXU4YzdXYnRhZC9lbU9mdFo3ZUJDOE9ydHE4dmJSVDliaEJFTUxQdTVU?=
 =?utf-8?B?eGNpdG02ajVkeXJ3NGVrZXozZEkrVWZvOS9NMjdFUCtVL0hzTnpoSEE5Ukdh?=
 =?utf-8?B?ZXZYSzBjZVlYZHQ3ckl6bmFsdFhFMkVsS1ZtZm5KWitJWDQ2a1BhVExRUVBP?=
 =?utf-8?B?Y1k5MThVM1puQnFuWHM0aDBUVGRBNVRnMFBVYk9HSlNab25tamVDMWd1d1ds?=
 =?utf-8?B?TVdib05hU2dMZDBmcjJxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWZ2TlpnMHlVeWZheWxuNzR5ZDJXR1ZzUENtUk92VE53eVNNM1hnUDhja1Nl?=
 =?utf-8?B?TTh4QlEzcjZ1V21waHNNeVdhQ3lEN01TNEoyZWdadGtOeU5rVnN3R2pSYTRx?=
 =?utf-8?B?Q1AwcEJhWTRQZXUvTVV0ZHV6ZUYwTmt3RTFKb2ZvM09USkpRWGM2Zzg0S0Zm?=
 =?utf-8?B?ajl5WEh3SnNjTkhWL05IMm4zRzExeDF2S2ovT3dmOVZoWlp2bFdUek5HdjBq?=
 =?utf-8?B?OFNNRFpTcE9EZTlCalRQcmgyZ2t6TTNTa1gySHBHcDZhLzlrSUt5QjRGUzhY?=
 =?utf-8?B?dmY1eExQaFpkSDBXWGZpWGpCQ1lwRFRWaWhJSW1ORkpaK1RxMS83bUp6c0Fi?=
 =?utf-8?B?NFNqQWt2VEdTbTc4aDdwc2RIdk5ncU5Eb1JyQmZiQUlhaWxuTUJvWlBVWFNH?=
 =?utf-8?B?SkdDNG1Fei81YWdmWXEwZ1RtV1JuVW1xdUNYVjVrNHVhTDNXL2lNNFZxK3Uw?=
 =?utf-8?B?RGdmNW5UdXNaKzJna2lNU3RDenpqYy9qQVpUdzQvU2d6eE9JMnl4V0t5ZGdH?=
 =?utf-8?B?eDhvY2RtLzJCSFhzV3h4TTNjeXFsRGxDYjJ4TjlwejIyMjNORE9YTlc0cFNi?=
 =?utf-8?B?RDlHUXNKTFJsZC9adEhXc0F3QWhDb3ZoNC9IbE9JbytYUDhJYVVudm1qZFpt?=
 =?utf-8?B?Qk8rRGNMc2FnU0dmVXhqQ0dVSDJJUzBmdldSVWZXb3NXMU9laWNuZDg4TUYw?=
 =?utf-8?B?Y2VTUFhVZEMrNXorZVdqNWVnaGRrNEVQVTBGVVZCamJ2c3VmSDdkSFV5T2tn?=
 =?utf-8?B?UDV5MkxhVlU1djBpWFMweTBsMUw3RnFqVmpoa2tRSGxHM25yWnVsWEszMVdi?=
 =?utf-8?B?RDNjZCtmZ2NPQjFIS3oxUTI5cS9uZHJMelVFVzVJejhFMHBDcWJNNm5pODdh?=
 =?utf-8?B?YjdrRW1jOWEyb3lKK21EUDlWcGd6RzlJcmxnbFdxMGpTdzN0SWFieEhpR01x?=
 =?utf-8?B?UzVjb0o4OFhFTlQxNWVYS1lIcmxoY0dUS0hKcUVtL2tHNGxoUjRyeDliTzJH?=
 =?utf-8?B?dlJNY0h2NGQ0OEtEN0dSRXlNSVA2MzVITUkvSVlvb0hXVHc0eGFaUmF6RDll?=
 =?utf-8?B?dXlmbERUOThONjVSKzdSa0pxb1daaXNSb2FJOUwwQUROQ1lYUzhvUkRCajRK?=
 =?utf-8?B?UWJ6ZXJHYTMxa0FQQS9NYTBPWTVHaWZBNEczNUgwdmw5clRJOHRCdDNSbWN3?=
 =?utf-8?B?Rkp3ZEJCaVEzOTRsNDVtaFp6ZDlaSVFWeWZJRFF5QzRjZmUySU1OcGJ2azlF?=
 =?utf-8?B?SWRpS0JlRnkzaWkrdXViWlZuYzBVZHpmT0o2OUtXbGlMM1QzWjB0V0xjY1Bz?=
 =?utf-8?B?NGdiSXZiSndDNUUzVVVURmtiSGNmcEpSeVdDcHBLajN3TFVjekhFZERBVUpW?=
 =?utf-8?B?Nlo4dExISkN2SndjbHVQRkxKdGVPbDlQUzBDUUNPTXBYUXhFZEwzeTE3TEhZ?=
 =?utf-8?B?MXJlQk5rY0NhRWRoVW5ueUo4V0ZDeHROVzZ6R3VkTEFFS2RUenhNSWxPMHBn?=
 =?utf-8?B?RmJBWHlyZ1pCVTYyRVJ5K0NTTHNKNWdndytUSnkrcnMxMkRNaDZISU4xT0RZ?=
 =?utf-8?B?QUx1RWlTU1IzVGcrZG00QlMxZk9YSnBQcWczbjA4Vkc2cWc4Qlc1OXpLWDNX?=
 =?utf-8?B?UzZNQWNFbXNoaWFkeXdxbzhwYW1WQXVoRXpEdjBMYTF0QXYxN2ZtTjhEMFJr?=
 =?utf-8?B?NnIyM0lXSHlnc2tjeGIycitTcyt3eGc5V1d2NGh2djFMbDZmczh5a010eUZ0?=
 =?utf-8?B?TXlEeVBpQlFmZUh6eDZwclNhR1NWQjB5OHA5UUpWaElubDE3WnU5SEVvcHJK?=
 =?utf-8?B?R2VGMTh6cG1KaDdEUlhpMmE1VHNxTS8wUklEWTN0VnR0M29oNWxYNjBVYVF0?=
 =?utf-8?B?ZkRDVDM4anBGc2pUMk9DeDVuRkJYVm13K1oyNldNUUhjUnVFQTF3bEhJTmwv?=
 =?utf-8?B?RVZFb3ZQbHZLMWVKZWU2bnBucEJ5bVJWMXRIVXN0aGF2UG5QVGpGcUt5V2hD?=
 =?utf-8?B?S240RlVTVXlXbjZhdDQrVWR1TlltSHAwVnI5QkNTTkFKbVcwT2kveGxFbEZY?=
 =?utf-8?B?QWtQOHVxMXI0SFhzQ1k4Z2Rvc0NtZzhoT1A5Y252STUvQjlzK0dZRHZxRnhq?=
 =?utf-8?B?cW5tME1XbVFIT0d3cFBpK01sRFpYa0UvTDlSekk5ZFdkN0J5SjhJWnZ0bGV5?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f93df5bd-fd48-4bb6-3452-08dcd0ab9509
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 08:44:13.9100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qd5yP3LH6olpRo/FtXc4KVlZm24lkWo64chwFbF9I0n3WHsX2ukdYURAthKT6kFHnXTL02BEmZhwULMEcdJyuPYXrbS06viXOtyTt6YTmqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4599
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


On 9/6/2024 9:28 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:28:01PM +0530, Ankit Nautiyal wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> Ultrajoiner mode has some new bits and states to be
>> read out from the hw. Lets make changes accordingly.
>>
>> v2: Fix checkpatch warnings. (Ankit)
>> v3: Add separate functions for computing expected secondary_big/ultrajoiner
>> pipes. (Ankit)
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 133 ++++++++++++++----
>>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
>>   2 files changed, 108 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 6f098383479f..1243e4b24acc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3638,17 +3638,63 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
>>   	}
>>   }
>>   
>> -static u8 expected_secondary_pipes(u8 primary_pipes)
>> +static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
>> +				      u8 *primary_pipes, u8 *secondary_pipes)
>>   {
>> +	struct intel_crtc *crtc;
>> +
>> +	*primary_pipes = 0;
>> +	*secondary_pipes = 0;
>> +
>> +	if (DISPLAY_VER(i915) < 14)
>> +		return;
>> +
>> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
>> +					 joiner_pipes(i915)) {
>> +		enum intel_display_power_domain power_domain;
>> +		enum pipe pipe = crtc->pipe;
>> +		intel_wakeref_t wakeref;
>> +
>> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
>> +		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
>> +			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
>> +
>> +			if (!(tmp & ULTRA_JOINER_ENABLE))
>> +				continue;
>> +
>> +			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
>> +				*primary_pipes |= BIT(pipe);
>> +			else
>> +				*secondary_pipes |= BIT(pipe);
>> +		}
>> +	}
>> +}
>> +
>> +static u8 expected_secondary_bigjoiner_pipes(u8 primary_pipes)
>> +{
>> +	if (!primary_pipes)
>> +		return 0;
>> +
>>   	return primary_pipes << 1;
> What is "0 << 1"?
>
>>   }
>>   
>> +static u8 expected_secondary_ultrajoiner_pipes(u8 primary_pipes)
>> +{
>> +	if (!primary_pipes)
>> +		return 0;
>> +
>> +	return GENMASK(2, primary_pipes);
> That looks like nonsense.
>
> Looks like I had some ideas how to do these in a generic fashion:
> https://lore.kernel.org/intel-gfx/ZoMA2T5qTKB7wdwl@intel.com/

Will try this out and get back.


>
>> +}
>> +
>>   static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>> -				 u8 *primary_pipes, u8 *secondary_pipes)
>> +				 u8 *primary_pipes, u8 *secondary_pipes,
>> +				 bool *ultrajoiner_used)
>>   {
>>   	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>> +	u8 primary_ultrajoiner_pipes;
>>   	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
>> -	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>> +	u8 secondary_ultrajoiner_pipes;
>> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
>>   
>>   	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
>>   					  &secondary_uncompressed_joiner_pipes);
>> @@ -3656,33 +3702,50 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>   	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>>   				&secondary_bigjoiner_pipes);
>>   
>> +	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
>> +				  &secondary_ultrajoiner_pipes);
>> +
>>   	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
>>   				    secondary_uncompressed_joiner_pipes;
>>   	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
>> +	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
>> +	*ultrajoiner_used = ultrajoiner_pipes != 0;
>>   
>>   	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
>>   		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
>>   		 uncompressed_joiner_pipes, bigjoiner_pipes);
>> +	drm_WARN(&dev_priv->drm, (ultrajoiner_pipes & bigjoiner_pipes) != ultrajoiner_pipes,
>> +		 "Ultrajoiner pipes(%x) should be bigjoiner pipes(%x)\n",
>> +		 ultrajoiner_pipes, bigjoiner_pipes);
>> +
>>   	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
>> -		 expected_secondary_pipes(primary_bigjoiner_pipes),
>> +		 expected_secondary_bigjoiner_pipes(primary_bigjoiner_pipes),
>>   		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
>> -		 expected_secondary_pipes(primary_bigjoiner_pipes),
>> +		 expected_secondary_bigjoiner_pipes(primary_bigjoiner_pipes),
>>   		 secondary_bigjoiner_pipes);
>>   	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
>> -		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>> +		 expected_secondary_bigjoiner_pipes(primary_uncompressed_joiner_pipes),
>>   		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
>> -		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>> +		 expected_secondary_bigjoiner_pipes(primary_uncompressed_joiner_pipes),
>>   		 secondary_uncompressed_joiner_pipes);
>> +	drm_WARN(&dev_priv->drm, secondary_ultrajoiner_pipes !=
>> +		 expected_secondary_ultrajoiner_pipes(primary_ultrajoiner_pipes),
>> +		 "Wrong secondary ultrajoiner pipes(expected %x, current %x)\n",
>> +		 expected_secondary_ultrajoiner_pipes(primary_ultrajoiner_pipes),
>> +		 secondary_ultrajoiner_pipes);
>>   
>>   	*primary_pipes = 0;
>>   	*secondary_pipes = 0;
>>   
>> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
>> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
>> +			 primary_ultrajoiner_pipes;
>>   
>> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
>> +			 secondary_ultrajoiner_pipes;
>>   }
>>   
>> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>> +static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
>> +					 u8 secondary_pipes, bool ultrajoiner_used)
>>   {
>>   	if ((secondary_pipes & BIT(pipe)) == 0)
>>   		return pipe;
>> @@ -3690,27 +3753,37 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
>>   	/* ignore everything above our pipe */
>>   	primary_pipes &= ~GENMASK(7, pipe);
>>   
>> -	/* highest remaining bit should be our primary pipe */
>> -	return fls(primary_pipes) - 1;
>> +	if (!ultrajoiner_used)
>> +		/* highest remaining bit should be our master pipe */
>> +		return fls(primary_pipes) - 1;
>> +
>> +	/* lowest remaining bit should be our primary master pipe */
>> +	return ffs(primary_pipes) - 1;
>>   }
>>   
>> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>> +static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes,
>> +				     u8 secondary_pipes, bool ultrajoiner_used)
>>   {
>>   	enum pipe primary_pipe, next_primary_pipe;
>>   
>> -	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
>> +	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes,
>> +					       secondary_pipes, ultrajoiner_used);
>>   
>>   	if ((primary_pipes & BIT(primary_pipe)) == 0)
>>   		return 0;
>>   
>> -	/* ignore our primary pipe and everything below it */
>> -	primary_pipes &= ~GENMASK(primary_pipe, 0);
>> -	/* make sure a high bit is set for the ffs() */
>> -	primary_pipes |= BIT(7);
>> -	/* lowest remaining bit should be the next primary pipe */
>> -	next_primary_pipe = ffs(primary_pipes) - 1;
>> +	if (!ultrajoiner_used) {
>> +		/* ignore our primary pipe and everything below it */
>> +		primary_pipes &= ~GENMASK(primary_pipe, 0);
>> +		/* make sure a high bit is set for the ffs() */
>> +		primary_pipes |= BIT(7);
>> +		/* lowest remaining bit should be the next primary pipe */
>> +		next_primary_pipe = ffs(primary_pipes) - 1;
>>   
>> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
>> +		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
>> +	} else {
>> +		return (secondary_pipes | primary_pipes) & ~BIT(primary_pipe);
>> +	}
> There are far too many things happening in this one patch.
> Needs to be split into sensible parts.

Agreed, will split this into separate changes.


Regards,

Ankit

>
>>   }
>>   
>>   static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
>> @@ -3731,6 +3804,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>>   	enum transcoder cpu_transcoder;
>>   	u8 primary_pipes, secondary_pipes;
>>   	u8 enabled_transcoders = 0;
>> +	bool ultrajoiner_used;
>>   
>>   	/*
>>   	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
>> @@ -3781,11 +3855,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>>   	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>>   		enabled_transcoders |= BIT(cpu_transcoder);
>>   
>> -	/* joiner secondary -> consider the primary pipe's transcoder as well */
>> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
>> +	/* joiner slave -> consider the master pipe's transcoder as well */
>> +	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
>>   	if (secondary_pipes & BIT(crtc->pipe)) {
>>   		cpu_transcoder = (enum transcoder)
>> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
>> +			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
>> +						secondary_pipes, ultrajoiner_used);
>>   		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>>   			enabled_transcoders |= BIT(cpu_transcoder);
>>   	}
>> @@ -3917,16 +3992,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>   	u8 primary_pipes, secondary_pipes;
>> +	bool ultrajoiner_used;
>>   	enum pipe pipe = crtc->pipe;
>>   
>> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
>> +	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
>>   
>>   	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>>   		return;
>>   
>> -	crtc_state->joiner_pipes =
>> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
>> -		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
>> +	crtc_state->joiner_pipes = BIT(get_joiner_primary_pipe(pipe, primary_pipes,
>> +							       secondary_pipes, ultrajoiner_used)) |
>> +				   get_joiner_secondary_pipes(pipe, primary_pipes,
>> +							      secondary_pipes, ultrajoiner_used);
>>   }
>>   
>>   static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> index f921ad67b587..db07c9775892 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> @@ -37,6 +37,9 @@
>>   #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>>   #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>>   #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
>> +
>> +#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
>> +#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
>>   #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>>   #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>>   
>> -- 
>> 2.45.2
