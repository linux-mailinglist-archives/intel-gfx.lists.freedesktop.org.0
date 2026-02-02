Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ3WHCxjgGml7gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:41:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBFFC9BDE
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7335C10E39F;
	Mon,  2 Feb 2026 08:41:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sk18yRJf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6A710E286;
 Mon,  2 Feb 2026 08:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770021672; x=1801557672;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lmRpa1QcvM1GQ15Lh+yDlk89eMgU60hbHA6XTYmV+SY=;
 b=Sk18yRJfxMu/dro+U3XBKiOhQrc6wkMa1R6RE9i3AFdy0qC9Oo1AIiaw
 RXlxhVDN54Tpoa/HkX1fmMYZEWdimLeeAZQYJn5CD7E8NxoZEijLZlXvl
 XWrEYVb8/EzSGdKBGtqa5UzQb4TJYAgUDyP+UtXZdZv0Jhwsiktw95JZT
 WyJfGmsTqNr5rOnU7CN6g9j9FUXbR3y/kOzJJOvmJ2TNowRnPPSKxAOyB
 HMGXEkB/TtsyqfyCi0tWfqBxKVLsMlUs10Yqn7h7lOtzmr4l2b1OMYXL8
 RaLlktRatPztFrdYBPG7ToxvZRJxnvjGqzCPCTvWMHlz5LeBLAdcB9gj3 Q==;
X-CSE-ConnectionGUID: yP3WyD/5SBGnCCMIyQTsgA==
X-CSE-MsgGUID: /ZQem9EkS2iwifgRgvR6tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71156945"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71156945"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:41:09 -0800
X-CSE-ConnectionGUID: yVkREdouTmmfFrL67oML8g==
X-CSE-MsgGUID: 0iU6duCFSb2xwgxK/Cb2nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="209318005"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:41:07 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:41:07 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:41:07 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.4) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:41:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZkzvJXocQiJnToccETgS0sK1XT0tj224TtTrPouUwekemrbgSo8tL6kPrw7y2WXkLgWX0oDSemqHixdeT4R37BBJZvzl3DgAff9Vmat7p6bROVDgyZQFeioLIjWN6Ql21s025mk/ZDEzlGfzpMntxctfhEgNlHUpZVQ93AbHCiyXxK+eWE6ym4nHoHWpG05su5W2E/fXWCQttprX8ov51HlH6eqpBNehBWYkRTurWPgHHAQEz/lp3qZV1ejuAQMymObDo804mCw+sAv96GOHHP8mj7ES2NMP85nqWbLYm3r8+EXOZI6TVNvS6ztdFb1CcDvejqZs8ETi9IzulztWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NPQBTPPIjNQaJpeZGEM7MtX2ur9KNLrzwof+P2xOZdc=;
 b=UcFeAHUB+tsPEJ0kxXO8vwW7Y9UatSmw/qs+8+BrQyB2ttPdgK73wbOJYXUtJuq9b6wLDLStFvticL/1fWibWYbY923Uha+G+nvoVnNLCuQiQaJwqvyYeESd836g7BirSNq8MWE4iipFuumHo9HzCBOijmE97AVpJOr7ce7GZTtjzQFqRp60KZ3zjaJygew0ljXWdxWTmvBZa9GwWeul342qJ7hMBci3f+7QAaPWoE2YJLmj4Fm9oAdJavW6RrOwaAtQJTXBFosvUOjUSe2kwHJOcLNE+kOb0UJYUjmiuHwjQ7GbPw9g15Bi8L7GwbiZFXMTZ++FeXTjCbGFu22MJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7091.namprd11.prod.outlook.com (2603:10b6:806:29a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 08:41:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:41:04 +0000
Date: Mon, 2 Feb 2026 10:40:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 04/17] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aYBi67v7ks4V3C1e@ideak-desk.lan>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0006.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7091:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ff025dd-8d06-4d63-57af-08de6236cd36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L1lRdTdOSW83YS9tK2hubHB0TERHUkc3bGxyWHRyV2tJc3NBZCtScENndkJP?=
 =?utf-8?B?UzF4QTR3RDRpT1dEQWNvcW4xanRaVVlHU2FpTVYwc2N3NUZHNnFWaGJjKzN6?=
 =?utf-8?B?OXJKdjgvS2dhbjd0cktNYTVJMGlTWEJPckNleHVhalZZcW5tUkJCcVpGZzFa?=
 =?utf-8?B?WFN0UFQrd0tlTHJNR0lUZFBGa0hXaWVWRmhUbW1NSDhnZkczY0NWMnhyRXhr?=
 =?utf-8?B?RUJoaGpoQVQ4bTZxRExlTWVBOXE2UnhmVGdGamlzZE9jTXdKcU5kS3ZYVzJS?=
 =?utf-8?B?dFlXcXVPNjZMK3RQOFoyQ3EybnY0M1VTd3hnQ3lqSkVWN2RMeDRlU2NOWkhK?=
 =?utf-8?B?NkIvb2o3ZG52Y3JvenBvZHh0OXVhcjVmTDRhWWwrNlphNGo3VzJkcFNCRG9O?=
 =?utf-8?B?UDFHMGJDQmJJeGgzanJMWnRXcjNxaFp4ZFN0ZUZmcnduUm5DZXNDUVVkWG1J?=
 =?utf-8?B?UlJYN2VGeXhnRFoyOXk4dmF4c3JhSmRDZmRsTE13L21LNU9aU0JjUExIU2xY?=
 =?utf-8?B?M29GbGtxR01MaGt3WEFlbnVhRnM1NE95aHdvQmk5SlBHa3lYM2tDVHhYSExR?=
 =?utf-8?B?SUhWcGxDa3dGOVY3ZjRDcjRVOEtmTkVQTStUb2dteEdUVFhmL0xRTy9lUGN0?=
 =?utf-8?B?MldSSGVvV2dzM2RwUDFYdXBhcTU5TkE2YmpMcE5XZUtyZWlRZFhuR2F0b1p6?=
 =?utf-8?B?V3RNSVZoQWthR1FGYSt6SERCRXREM25hTmRoQnJIYWY3T1BtOU5ibTltRk41?=
 =?utf-8?B?TjF2VEhuaGQwSCswdFAyVEdLcnFXVDFCOFRwZ0JBd2NmVWtoTDJXcmZ6TjdK?=
 =?utf-8?B?dWlNYUYvRGlnWFE1ZGJCMm4zSEZtY1lEbW1qL2V2ZFhBRjhiRWlCejROdFgv?=
 =?utf-8?B?ekJ0YTBNTVNWTXRoQjVSZy9mcXJNRTNnT3lhaTNvdGJhS0xVbk1OOXdNWmo1?=
 =?utf-8?B?RTV6R2dZdXRYZUlIS3BBR2FlVjlnQjdicGVtdzBhOUVsWmpwNXAyWktFbVpu?=
 =?utf-8?B?dVhYOVlKUXRNbnFqTUFIME5SOEJ3ZEdZV3RtZEZHeHZ3MXZxY0h1SzZHb1ZN?=
 =?utf-8?B?V09idTQ2ajFVY3AxSXlBNHA5Z010SnVQRmNXK3psRHFMOHNONFp5Q21SeWlQ?=
 =?utf-8?B?UVNhRzNOWlk0SVdnRWJJY1Q3STNZVVV0cGl2L2w0RkIzRDVhSGpCTDQ4SDNN?=
 =?utf-8?B?REFrMGtkU1JMQmV4ZTRaSWlsTjZqM3VJdWNYQzk0TEtWZVZKUUxHWVlIK2Jy?=
 =?utf-8?B?T0JOYlNtWm1KRTFzdUQrVFMzaFVzQStZVmhmNzc0SFZZZTRWRWRSUUR0MUxj?=
 =?utf-8?B?Znl3QnViVHJIVm1QOEdTYy80THdLT3BQRjVrZkNycllWdmhhZ09ZRFJQcWtC?=
 =?utf-8?B?Y3pHUStxWUo4NGpWY0lWOUJJaCtTTDYza1lUNmJoUTg2VHBRT2NpRmhuNWo1?=
 =?utf-8?B?aE91eTZpT3dWNGNXcVRFQTNBeFEyS1RaNnB0SXlUdEd6NmVzdDRybnU0b1B1?=
 =?utf-8?B?d1Q3VUhsakY3R2tkTisvTWZRQ09wMWdOZlJ6M2VNcWdtRUQ1Q2NkNExtVkcz?=
 =?utf-8?B?TGdCOTd3aDRERDR6M1Q5aWRMZ3d0Q01TV1lid0dtMm1TVFl4QWdaL21Pakh2?=
 =?utf-8?B?REpnSGtqL2F5ZXFhM2pweXR5alVrYnZkdHlwMWxjNEE0UkFLd0gyMW80bjdB?=
 =?utf-8?B?M0ROREx6T2toUUVCeUNrcWx3b0lMS0V2YlNIQThHdWgrYWt0YnRZK2k5UnNn?=
 =?utf-8?B?WmVaWTAvTlRWMmZuNlVEbG5WSUVXdTFiZFF1OExjT2lMTTdsSFErTWt1RklY?=
 =?utf-8?B?cmFlWW9CdDlpSFRleXJ6cURpUEpnMHpBL0VBSzdtK1ovR2hwVVdoVVNqUTg0?=
 =?utf-8?B?TnI4UkRObkN5ZTZaUFpKU254MHZQbUxDOEQvTW1Ydm8xVDNEdnZpOTQrR3Rn?=
 =?utf-8?B?ZldMMEZIdGJnRE0vaEZLekx1UmZwK3RaR1FRQTdXc3lXbWJwZ0g0OExlZnhy?=
 =?utf-8?B?N0tDRWp0eFNaNTJFZUhJZ3hxcWJyU2YwYXVqM2NPNFRWQ045WFYvN25ONnJ3?=
 =?utf-8?B?K3JVZkFNK2Y4Nmx4Z1ljMlp2VDZuL2hvcUg3eUNlVnJvanhwSm00dGF3ejQr?=
 =?utf-8?Q?zAzU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1RtZkVqRlJQZklkakllc1IydUdIZkxhdk15aldQbkk0RUNnakhZR0hRRlh0?=
 =?utf-8?B?aFpBTUJUNTJkS2NKVktKMDBmTXlkd05MMlZpZi9hdW9KT0hjejgzay9peHhi?=
 =?utf-8?B?T3VwY1ZjaG91c3M5ZGM5TzI3MUYwdnFaWHk4MWdoRmlZV2JJYW5wTlJ2ZGc5?=
 =?utf-8?B?ejZmTnRtaHJ0bUExakhEVHJrcVl6M1FWL21MREVBWW95cWJvaS9TQU84cVJl?=
 =?utf-8?B?RVppK3dZMVFqSzV5YU5jbVYzdkpEVmxmaXE0ZVhVUUFtZ3FWTFJJSS9Eb2dJ?=
 =?utf-8?B?VUs3YTlZY010V2Q4S3NOTTdqSU9mRi9qeTdDWUtYQkdLVDNORHVWK0RmM2NY?=
 =?utf-8?B?bDVvYXNnak5KZTAxRWY1UCtBZndrWGFoUlIzb0ZVRTJkekVsQWpKWVdnaVlr?=
 =?utf-8?B?V1duM1R6a2xSNVJCbVRRK3JyOGJhc0ZIaEkzbjhzb2R2dDNyd0lhWFlxUTdV?=
 =?utf-8?B?TUtlWDZtK1dSTUxwM1d5Ui9tOWNVRktRa29ETHJPNXNpRzhSL2NibUVKb3pU?=
 =?utf-8?B?akdSQ3ZZQ1M3VEdEYUw3VXE1WVVZMEpENERUUjluYXBjVXRKU0pmK2R3Rk5h?=
 =?utf-8?B?UmlKWno3ZWkzUTZvOFhmQVc0TlkxaThjcEtlZlN5SEhoMkRjbnNDTk5rTWp5?=
 =?utf-8?B?NWdYQzN1OTZTdnZSdmJnK1E1ZWwxZ0NQclpCRTlvWEszQXdRNTNNTndkVWJl?=
 =?utf-8?B?TlpuSDVhRDhHUVVjVUdrUXhNbnhYNjd1ejF6aUU0eWUxNkF3RXAxR2t1cExr?=
 =?utf-8?B?QXE1Y3ErK2NvQlNDOW16OHFBNkdpblJzRFloUktyTGhaV2pMa3BDVnZBUXFH?=
 =?utf-8?B?UDd2MVFJTGtIbzg2NTU2c2NaUUpPSEFHNVZLaTRPL2ZscGpvM3VwWGRjMlh6?=
 =?utf-8?B?ekdhSktCeWxFT2RpaTduOEdSbWhnc050ajZJN3dhMHF1aUtydFY2c0pIRThK?=
 =?utf-8?B?V1JIU0Z2WUhGSEswc0QrcmN3bi8yUytFcnk1SmMxbDVMWlZ2MXZsSW5oZUFS?=
 =?utf-8?B?T2l1OUFOYjUyN290MWMxZ0tncWM0bGpnZldzTXNkeVZaK1pTZnVlVVBHUHZz?=
 =?utf-8?B?RS80MjlHS0d3OTBjVDBsYU5LY1lUZEIyNlFpdXdoTkxteEpndU1peHdtTEFT?=
 =?utf-8?B?ZENFbUtLZTNDSERnTVR0VlBNcDZiTjRKOWU0WjZqTEVld3RRV1gwbkdyakNs?=
 =?utf-8?B?K3kxQUZKOXA4a2xpL3FuS1ZtejBnSWNXWmFtRTN1WVcybUg0VFR0SmRINFl1?=
 =?utf-8?B?UE5OMkt6YURnZ3lPVHB3d3pjMXNTNEFyRkpOc1F4cGNSdFZFSFEzVzNTOFRn?=
 =?utf-8?B?M3Y2S2hzOWNnR3cxejlNUC9nbFVGV25ua2dBWVpLVFFXRkxkK05LNlVncjA1?=
 =?utf-8?B?Umc4WVdqdzFpSTNZME1aSzl1ejVrZGVNTXJCMnhmUXZPck0waWYvdFV6Uy9p?=
 =?utf-8?B?blFIU0M0WmlvSTUvNnlPaTJFV3ByTUlsNlNkZ2lVaXlOTU1yK1BUN0Zjci9o?=
 =?utf-8?B?cTZCV2p3blEwYlZPazF1NDltNGpXQTVjM2U1citoa3lpQjFmL1B4R2xyUTlK?=
 =?utf-8?B?SHRzZEY4VXh6cUgvQnZYeEtxY0tQMkxtUjR0ZTJzaGd1L29HOUxkVkRJQ1hU?=
 =?utf-8?B?QjNaaUx2eUltcWdEOGxMY3RpemQwVjc1cmhBMWVwR2tyL045TnlCeVFvL3RO?=
 =?utf-8?B?c0lSM3dudk1ZQ1lab0lnTGRVV0Jjb25xTDRkUDR4MFB4ZHplMDZycXRWb3hR?=
 =?utf-8?B?RXFoMFpvZGlCL0VGY3B4OWEzKzVJdTcySzdDaUlZeTN1NHhuTUJiK3dyaFFh?=
 =?utf-8?B?SS9nbldFR3NCUjI5aGZEcFlKNC9wTE11clc3dU8yVjlvVG1wcHNUS1pQVGll?=
 =?utf-8?B?UXZVMmlsdGlxRFRib0pIRzhFNnBIZytCRXY2NkRIdnE2RU8rUkJUK25ZZjBV?=
 =?utf-8?B?b09JWnpVWGk5ejduYVhLd1h6R2hIbmhpMWFiV2ZiQUo2VHVsblRwTHZuT2FN?=
 =?utf-8?B?QmF3UXdWeFZsVzl1Ym9aSjY1aFY5MXhpbmJFaUZFOGFwczhoMmtNM1pzYkpK?=
 =?utf-8?B?S1JhUjZSaXNlK09RWUFNSmcwQ1B4UGJiN0N3NkE2K2ttenBSYlR3MzNLbm9a?=
 =?utf-8?B?d2gwRFRkY1JYUmNqTFZzQ0d0cmdValhGQ3JWSERNeThCNHgzcm9PWkZwV2Fz?=
 =?utf-8?B?QTRnY0Zua2toTThQNGgveng4ZUtmZTFrbGhpVWZwbEcxNk1RM2JNZWhLMnRj?=
 =?utf-8?B?WkRwV1U3N210YS8yZllwZXlzK2V6NWhxSkpQQWZPWldzdmxWd29JclNGR3JQ?=
 =?utf-8?B?TjVUS1ZvSUNBaFF3ckh5SVl2VXZMTzJWaTI5RzhvUHlIMEFTbVZQdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ff025dd-8d06-4d63-57af-08de6236cd36
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:41:04.6664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: deX4ufBDf+iin/x8O49uVFI++7oq0w1Tol1Q7PE/I86FcD3jMIaMrGOXz10vY1KBMmnsMbhYqbnMG436YHnMVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7091
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CCBFFC9BDE
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 01:47:59PM +0530, Ankit Nautiyal wrote:
> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
> required before deciding whether DSC is needed. This ordering prevents us
> from accounting for DSC-related overhead when determining pipe
> requirements.
> 
> It is not possible to first decide whether DSC is needed and then compute
> the required number of joined pipes, because the two depend on each other:
> 
>  - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>    DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
> 
>  - Whether a given pipe‑join configuration is sufficient depends on
>    effective bandwidth, which itself changes when DSC is used.
> 
> As a result, the only correct approach is to iterate candidate pipe counts.
> 
> So, refactor the logic to start with a single pipe and incrementally try
> additional pipes only if needed. While DSC overhead is not yet computed
> here, this restructuring prepares the code to support that in a follow-up
> changes.
> 
> If a forced joiner configuration is present, we just check for that
> configuration. If it fails, we bailout and return instead of trying with
> other joiner configurations.
> 
> v2:
>  - Iterate over number of pipes to be joined instead of joiner
>    candidates. (Jani)
>  - Document the rationale of iterating over number of joined pipes.
>    (Imre)
> v3:
>  - In case the force joiner configuration doesn't work, do not fallback
>    to the normal routine, bailout instead of trying other joiner
>    configurations. (Imre)
> v4:
>  - Use num_joined_pipes instead of num_pipes. (Imre)
>  - Inititialize status before the loops starts. (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

There is still one issue, see below.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++--------
>  1 file changed, 89 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4c3a1b6d0015..dbe63efc1694 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +static
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes)
> +{
> +	switch (num_joined_pipes) {
> +	case 1:
> +		return true;
> +	case 2:
> +		return HAS_BIGJOINER(display) ||
> +		       HAS_UNCOMPRESSED_JOINER(display);
> +	case 4:
> +		return HAS_ULTRAJOINER(display);
> +	default:
> +		return false;
> +	}
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1445,7 +1462,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
> @@ -1488,66 +1504,93 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   target_clock, mode->hdisplay,
>  					   link_bpp_x16, 0);
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> +	/*
> +	 * We cannot determine the required pipe‑join count before knowing whether
> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
> +	 * count.
> +	 * Because of this dependency cycle, the only correct approach is to iterate
> +	 * over candidate pipe counts and evaluate each combination.
> +	 */
> +	status = MODE_CLOCK_HIGH;
> +	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (target_clock > max_dotclk)
> -		return MODE_CLOCK_HIGH;
> +		if (connector->force_joined_pipes &&
> +		    num_joined_pipes != connector->force_joined_pipes)
> +			continue;
>  
> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> -	if (status != MODE_OK)
> -		return status;
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
>  
> -	if (intel_dp_has_dsc(connector)) {
> -		int pipe_bpp;
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
>  
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;

I missed it in my review of this particular patch, even though
I did mention the similar issue elsewhere:

status is guaranteed to be MODE_OK at this point and then ...

>  
> -		/*
> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> -		 * integer value since we support only integer values of bpp.
> -		 */
> -		if (intel_dp_is_edp(intel_dp)) {
> -			dsc_max_compressed_bpp =
> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> +		if (intel_dp_has_dsc(connector)) {
> +			int pipe_bpp;
>  
> -			dsc_slice_count =
> -				intel_dp_dsc_get_slice_count(connector,
> -							     target_clock,
> -							     mode->hdisplay,
> -							     num_joined_pipes);
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>  
> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -			unsigned long bw_overhead_flags = 0;
> +			/*
> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> +			 * integer value since we support only integer values of bpp.
> +			 */
> +			if (intel_dp_is_edp(intel_dp)) {
> +				dsc_max_compressed_bpp =
> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>  
> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +				dsc_slice_count =
> +					intel_dp_dsc_get_slice_count(connector,
> +								     target_clock,
> +								     mode->hdisplay,
> +								     num_joined_pipes);
>  
> -			dsc = intel_dp_mode_valid_with_dsc(connector,
> -							   max_link_clock, max_lanes,
> -							   target_clock, mode->hdisplay,
> -							   num_joined_pipes,
> -							   output_format, pipe_bpp,
> -							   bw_overhead_flags);
> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +				unsigned long bw_overhead_flags = 0;
> +
> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +				dsc = intel_dp_mode_valid_with_dsc(connector,
> +								   max_link_clock, max_lanes,
> +								   target_clock, mode->hdisplay,
> +								   num_joined_pipes,
> +								   output_format, pipe_bpp,
> +								   bw_overhead_flags);
> +			}
>  		}
> +
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;

... this will continue with status == MODE_OK and the loop can terminate
like that. So need a status = MODE_CLOCK_HIGH before continue.

> +
> +		if (mode_rate > max_rate && !dsc)

This needs a status = MODE_CLOCK_HIGH as well.

With the above fixed:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +			continue;
> +
> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +		if (status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (target_clock > max_dotclk) {
> +			status = MODE_CLOCK_HIGH;
> +			continue;
> +		}
> +
> +		break;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>  	if (status != MODE_OK)
>  		return status;
>  
> -	if (mode_rate > max_rate && !dsc)
> -		return MODE_CLOCK_HIGH;
> -
>  	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>  }
>  
> -- 
> 2.45.2
> 
