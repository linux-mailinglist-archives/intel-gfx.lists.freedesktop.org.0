Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767FCC8934A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 11:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0383B10E5A6;
	Wed, 26 Nov 2025 10:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjQBBKwZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A2710E59E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 10:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764152007; x=1795688007;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=4950+iTcJaCnkZZdqUjQglcGjVOm/41VcIWdjyIz+gc=;
 b=WjQBBKwZBMacFeFr6WwEjCkIJv9HIzFhAKKh9qundpIatRstAVWHqpoO
 VkHt4BKgphy1YTVJoTv3mvMMXoK7va9ukbJ3jAly5xdUAzXdDsKTvp97m
 OVC7YdIo7pcIZvBdYRnb1v5/nfNcE9heiY6iLRYWnFxq7CBbONuAB4Ynz
 rNHIID530xrrZflY28ZSKWmByJ4NXjLuH4Dbfnb6rrbLx1HIBD13Ne9BR
 znGk2aK4g3sCtOSiht7luicAamt9ISSxfxRYh92eUPwUj0ftHDDzLVblH
 XJzoIPQRMWEc6I7ZKwJHXUwKQojvBGJa3QuAK7eM+IKc47D1Od4+3dpNo g==;
X-CSE-ConnectionGUID: FUKhu/wYS6aJli1uwIfqBA==
X-CSE-MsgGUID: /G2BV+AYT5GpGv21h+Z8Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65892740"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="65892740"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:13:26 -0800
X-CSE-ConnectionGUID: wydQjpH9R2Guzezauddn6Q==
X-CSE-MsgGUID: mKiajMgwT36yujteoTScqw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:13:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 02:13:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 02:13:26 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 02:13:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HKs6hwynu0OS2ZwD9GtxYlv04cdt+DMUqiLAeGgRphTffnxf9HjX3yXqZgqsY8FS9y+SfeQM8ZvWKVnJ55EanJWUWhxTt8/MX8JwwJV3ZlcB12t5Z3G/ypOqCnL5VG9IhqFi20rrgLYTdcee1g7tJ0HxPrXl7gRZFfPRljjc3W0amTyCc+XlfA+CUf320ZngGNElD5tpCrGF1OlYltVDuasPqo+/Z+/pH6XEVkkJcYKGuBi3/LCqhCKpdw+j2ZgFpVbqYr4DVJsdwEbR59jIxaHhzQe8RulMce2P7wUjGMWYmlfrD9ULPVvrTJf8EbKNTol6Y4k72kgfhv2LKGUTag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gk57Zs0Eber1L1adBrnW3mL3Qy69V2fcoMlCoHmnghQ=;
 b=Dv3NBXoE80rDOoMicC+ZmfFDUj1FysyDo2bhIjhsBLzP3akcS3bseE2OegKpgCjzfKPsmQulnVLNm9pamBY6aivGpcBYS74Vj/dlq9CI/uEqhYCZt0S6zSo/qOkF8QIysID/C88GOPUMUND4pIzyOZXImG+uven/IcGA/B+HsSDeZq8KOb0s6o2SDpEujXh2HmWB/wvvcK1Oldq7E3hfiSRYvI8iRlII2NA4JcrDl3sHvA8el5soQbwQIH/kXdAPNvcXjDPpLUGU3Hfztenk4xs+NeEsmJLJ9VVCuBN0Qx8Z0VX8PLtYsVTIfW04wf+va4VAkodRPGoRa0XApRP2kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH3PPFDC3198517.namprd11.prod.outlook.com (2603:10b6:518:1::d55)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 10:13:23 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9343.011; Wed, 26 Nov 2025
 10:13:23 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 26 Nov 2025 10:13:19 +0000
Message-ID: <DEIJOW3JZAAF.11FJU0X7ITGYL@intel.com>
CC: Matthew Auld <matthew.auld@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH RESEND v4] drm/i915/selftests: Keep mock file open
 during unfaultable migrate with fill
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
In-Reply-To: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
X-ClientProxiedBy: WA0P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::17) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH3PPFDC3198517:EE_
X-MS-Office365-Filtering-Correlation-Id: 387c189c-0533-4757-5216-08de2cd46e5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXpzbkFKVENsTlp1VlN1M1FtNnJUSG51WEpaZVpOLzhSbjlhTzE1RE5VYTEy?=
 =?utf-8?B?K0I4NkJRdXAxMmp4N2ErQVhZb2dtSjNsTWsxN3d1b01TUEYxK3I1VXgwV2dE?=
 =?utf-8?B?T1dmUFIxNEZvd1NyLzZZcWpWRDc3citvSTlTZC9pM3BIamNnUnh2OTNJb2pS?=
 =?utf-8?B?cVVkbUJHVjhpNnFreGt4MEF2bXdvVlN0QUlQRWJYMW1RMll5dzk3YjBDWUFv?=
 =?utf-8?B?TmFnSEZpVDFQWHVWc0ZRUzhkUUo2K0pkMnpPQ1NtV2I5SThWQ3VWTGs2U25P?=
 =?utf-8?B?dy92SnYwLzgwelpRdlYyblQvR2tKUE0yNGxhdVFCU2d0UXdMU3FTM3gzNFpl?=
 =?utf-8?B?VDdRWHUzWlhsRzRVenhmTXJ2dmN6L3hoNm5NM05wZWx4S2RMcGhSWXhZaGVG?=
 =?utf-8?B?L05NSmt2R05RR1VQZkhuc0RpS0ExeXp0Z3djMjdVdGRZQXhMblZVUXB4U1JS?=
 =?utf-8?B?LzFpRnViYzVtT05WY0xYbDQrSGVHUzRobmRwS3BUaXpRL2JyY2pNN2ZtczRQ?=
 =?utf-8?B?d2lQQktGczB1TWo3K3dJbnY1aFg3cEQwZ0VFVHkzcFBEZklHcHNiZVVBdFhO?=
 =?utf-8?B?K29rTjJ3NURXOW1EK216Q3lyeVYyN0dPMWxhRGY0bW5MNG5CclJ6Z3Fsb0VX?=
 =?utf-8?B?Q1RhYnZFODVNWUlPemxXNFcrVkdra2lPR1czS3NxVWFkMm0rWHFSbGtoV0pW?=
 =?utf-8?B?elNxQzQxQkxpT1A5YXM0UHYwb0VERlN0NXV1L2tNVlpBSUE2aHdVM3ZIbUtv?=
 =?utf-8?B?enlVQUs4dmdzYTdUNGZMTHFITk5iaXhlZ21sNTZWbnRLUHJSL2JkMExVbGJn?=
 =?utf-8?B?Mi92ZW9mTGhYUDRtM1o1Sks4eWdlVDc5Mko2dVMrSWRkT3NxRy9VeGVBT3Fy?=
 =?utf-8?B?YXNBaTBoK1Qrdkt5V0NnMEhTRGpHQ3hjNmUreUlrNWJNN212QmlJYWxIc2cv?=
 =?utf-8?B?L2MyV3dualZyTnI4WDU4VkFKZHE4Z3hqY2pJLzF3Zjc5RVVwMmJuU2I4Vnlo?=
 =?utf-8?B?bjZ1dFAyOFpMUUlGN2drblNveGV1cGVLRjkvZC9nSHdSMW9QSkV3bjQxVmZ6?=
 =?utf-8?B?QUpxVmwrWGNaSEdNeEYzTEhJZWxJUW9PNTZGbGcydmpLNEFiS1JSdXZBbE1r?=
 =?utf-8?B?QzhjK3M5M1pTcThxZjlxTHM2Q2NDcUpsZU9RMEVMTHVrS1BqbHAvaGJraitY?=
 =?utf-8?B?Z2hONWpsaXZMY2dnVDBqVTI0YUhBdGVsOWVJaTA2Y3FuUnlkQTE2OWRUTzdB?=
 =?utf-8?B?QWJVMVRWWG4zaXlPblp3R0JIVkpaODFmMUhnQU5LL01MMjN5TUZtMGd6TnZV?=
 =?utf-8?B?NDRnTUhDS0h0d0hTM2hLeGw5V2FFQ2JEV3l4L2V1S05HbUF2UFAvMVJ4a0g1?=
 =?utf-8?B?SFQvUGpHdVZhTDg4Zm5iTkJBR2FNL0FxNnVVT2FnY1lVYklaL0NweVNqWWRG?=
 =?utf-8?B?akFRUzc0TWllWVFPZVplWWpOb3ZjdnZPcURLQjhlSHgrM20xazVqenFLSkpW?=
 =?utf-8?B?RVl2NnF2UTFKN0VtZTdwUjlQM0tGWTZ0aUxOamp5VjZIMzA1eUpSMGM2OVlY?=
 =?utf-8?B?cmdVcTluYWFvUm05WmJXMFFaVXFoWll4SzRYb291UnN6U2M5dmVkcjFiNVBq?=
 =?utf-8?B?WEdGbWlZakFoUElab3hmZjZrNWt2akZwNldWWk1jOWZWZEs1TUdkV1FmMElE?=
 =?utf-8?B?VGpKQXN3MFNlME13RWVUSW56SlNzTHhwZk1HazhUblpLZjM4R1ZxUUhVcklS?=
 =?utf-8?B?SkRlaks2ZTk1anRrUm9Pcjd4NW9uNWtOVmhrb2srZXpmbzl2eEFQNHpCT29V?=
 =?utf-8?B?c1dlckQ0OFI3cW9RUEc1Z09DbGpEcWJQampsQlBad1owNkwyVUxkZzVRdTQr?=
 =?utf-8?B?WENkbkk4Y3FreHRJTENhNmZjUWJ2TGNuM0sxQzludk9CdUpZbklwNUdLT2Vx?=
 =?utf-8?Q?tr7dau4hYYaKi59sK+H8juw3ZnnEh+sO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3RhM3lRV25WQ0tNYVRmWFNsWE9RbWRoaWlqMUF4UHFKa05jWHVMNzVqTDNo?=
 =?utf-8?B?V1diRUZndFJNQ1c3VXkvcElkUUY4NVhzNVVWRzc1VmRUWmIzQjBSQWw1VWlu?=
 =?utf-8?B?UUo2ejhkaTFoRFpzQm9oNVU3YWVqT1J6OVM2WnQ4RkNIbWRwa3hab1g5ekoz?=
 =?utf-8?B?VGJlelRyTWlYemVFUlY1L3RLeUZMQzNhaUUyMENOM2F4YUFkZElwTWtuTVZO?=
 =?utf-8?B?UVoxTUpqbzFBV0VlSnJnbDlORFpmemdNdXJFd0Z0cjBDQjlQbWkxUDlMQnpx?=
 =?utf-8?B?cHJRZjMvd1JzTHl3WXJJMnZMQ2NsQXdqK0xlaGJpSWxHS09RRUdJSm1zcWtY?=
 =?utf-8?B?K3FDUWpKK0t0KytyMGpDR0YzQ3ppbTJ4WDJHMTZGV2lUYjgxNkRGQTFmbm1R?=
 =?utf-8?B?b2hLVC9RU0VPa3pyL3M0NFp1a2hyRW9XcjhIUHZBMklJdy9mRVMwK1FqbTVx?=
 =?utf-8?B?WUl6QnVoRXRDOExoSTRMVEFwellQUzBCSzBkZXhldlN6SWszUmFKcDA4NHZ4?=
 =?utf-8?B?d052cm9wY0RRaFByUVFvT0xOZ2tKOXJscDV6QnRKcTJPRlkzYk5MQmtISG81?=
 =?utf-8?B?ZGtNRWRYM0hxeTgrcVpVZ3F0RzZ1dUxiZUtjYzlEUDh2YVQ5RU1CRU1LVnRL?=
 =?utf-8?B?aUUzRFRmbVRVOFYwY2cvYlRGcS9Da3BFcjNBUTFHMnVRMVdxcnRoOU5hWC85?=
 =?utf-8?B?ZDBjdVNXbkxTWkZJRjdBU0cvWFp5b3ZJNUhJRUF4emNBSkJIbkZuZUlzMXlY?=
 =?utf-8?B?dTNxTVBoc1FKMmZpemNIZjcwd3d5SmRxcVR5R0laUGJwTXlkbXJIZTlmaUNj?=
 =?utf-8?B?dlgxSCs4YUd0RFRWSEZXQWpGR2cwN3hPcDIyOG9pcHdnOG9laGZNNm5YL1BN?=
 =?utf-8?B?U2F1VlhpYmlEaE1DcDZzcHUxcDY2aTJMZ1M1WVkweXlWdU4rZi9qMTZWL3Iy?=
 =?utf-8?B?SmFVcFlQdnVnZEMrMUVSUTFmR0VlMDlnWUdlMXN6UWVhdzFibTRrdGI2U1Vp?=
 =?utf-8?B?NE5PeHNlQkIvUjJXRnNhTFZ1U285b25mOWRGYm1tR1BIeld3VGYwQ0tXU0Vn?=
 =?utf-8?B?Y3RDTGVxUVVGWFF3ZzRERFAzWGpzSzFuLzNtUmJOQlZoblJ2VHZ1QUpHU2Ft?=
 =?utf-8?B?bDBQeUkveE9WT1dYVS9nZG1FS29VN3gxbDNYYi9ncnRobnE4ajZ1NGZZajNq?=
 =?utf-8?B?enNpdEJ1NnBRY0VNUnplYWJaeUlLSDhaUnYvdW8wbHcvVU93THphWCsvT3Zx?=
 =?utf-8?B?cEVNVUJnb1c0RXZpTncva0ZQVUVPS3Nzbm5raEJFeXd2TVppM1U3QVhieTdy?=
 =?utf-8?B?UENmeWhLOFlnR1c4SXluYnZXNzEvd1FWREUwZExXMFFReHozZDkyc2JZRFN0?=
 =?utf-8?B?cW5ZdWhwY2pHbFpGYjg2amZmOXRKdUFZQWp0Q2x5N0U3UnA5ZVpWLzBkMExh?=
 =?utf-8?B?UVNqRmdEWElZK3QwRU8xNm94UVZYUVNCWk1ma0taR1JlZ3hMMTRoaGFySzhy?=
 =?utf-8?B?V1dkVkV2YzJrVHdEL2UzTVBGMUpPWVJJbTlDMm11dUxsOUU5T3JNQkFmTnF4?=
 =?utf-8?B?NFp1NTVwa0QwZjVNb3h0eE5QTkpTWXhvcEhBMUhWM1VHQitvVG9oZGdiS3dH?=
 =?utf-8?B?MzZob3dyLzlFZDk1SWs1clcvTHpDQm5waFRKcFRLM0t6UC9icjUxZkMwYlNm?=
 =?utf-8?B?clgzdGJwUDgxOGl3WU13V3FKVlptM0k5VTlwVnVsOTY3TEtwdmRhODRkc3lx?=
 =?utf-8?B?U0JQVksxMUNKT0hqcFB4amlUQWpHMjlBYXFzYk5QSlUyVDFMaXFNM2RXSVBq?=
 =?utf-8?B?anRNb1czM25sOWQyVlVUb0YxTkh3SlhkeEovV3JIaHVVNUdiU250N2g3OTlu?=
 =?utf-8?B?YlMvb2NkSU9Obm5UakRIMEhVQWp4YUZuVjhKbnBJU3I0emtvU0dqaWJvaXor?=
 =?utf-8?B?ZURQYjNTRGZ1aE55RVFEYlplaW9EbnNncWFCald2T0hOWi9rdHduU0Z2SEY1?=
 =?utf-8?B?TmlUZXBwYzU1TTBnenpkNHVQZElnR3poRGVxNHRBeUt0TjdObWMyYklySHRV?=
 =?utf-8?B?WUFVZEpWUy9XZ3c3MjF2ZUowOWh0eXZwc3hiOXBRakZSeWYrMmhEb3g3T1BV?=
 =?utf-8?B?MUpQTHpkRTlpUHNwdG5heC8vSnp3VVNYMU9LNGgyK3BwV1NUZmNNWHJWcXZC?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 387c189c-0533-4757-5216-08de2cd46e5b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 10:13:23.2062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C8VsecREPzf9EvkyOcRpXBhGLRcDv3ryGIGNF8YeJqBvwyHMvgbHHunahg4rBKTWaN1SBYO0m8j4tKrlC8F9uQh7BDfJjk0f2U1610VGUmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFDC3198517
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

On Wed Nov 26, 2025 at 7:49 AM UTC, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test, a mock file is opened in
> igt_mmap_offset(), which results in allocating GEM objects for
> page table structures and scratch in GPU mappable memory.
>
> Then, also in igt_mmap_offset(), the file is closed (fput) and
> the cleanup of these objects is scheduled on a delayed worqueue,
> which is designed to execute after unspecified amount of time.
>
> Next, the test calls igt_fill_mappable() to fill mappable GPU
> memory. At this point, three scenarios are possible
> (N =3D max size of GPU memory for this test in MiB):
>  1) the objects allocated for the mock file get cleaned up after
>     crucial part of the test is over, so the memory is full with
>     the 1 MiB they occupy and N - 1 MiB added by
>     igt_fill_mappable(), so the migration fails properly;
>  2) the object cleanup fires before igt_fill_mappable()
>     completes, so the whole memory is populated with N MiB from
>     igt_fill_mappable(), so migration fails as well;
>  3) the object cleanup is performed right after fill is done,
>     so only N - 1 MiB are in the mappable portion of GPU memory,
>     allowing the migration to succeed - we'd expect no space
>     left to perform migration, but an object was able to fit in
>     the remaining 1 MiB, which caused get_user() to succeed, so
>     a page fault did not fail.
>
> The test incorrectly assumes that the GPU mappable memory state
> is unchanging during the test. Amend this by keeping the mock
> file open until migration and page fault checking is complete.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> Resending, because the patch did not get any reviews.
>
> There are 7 GEM objects in total allocated as a result of mock
> file creation:
> a) 1 object from __i915_gem_object_create_lmem_with_ps()
>  -> i915_gem_object_create_region(),
> b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
>  -> alloc_pt_lmem(),
> c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
>  -> alloc_pt_lmem().
>
> I inspected the behavior of this test on ATS-M and DG2
> platforms. The latter always freed the GEM objects originating
> from mock file creation at the end of the test. ATS-M, on the
> other hand, performed the release much sooner - around the time
> a call to igt_fill_mappable() would be returning, so there was
> not much leeway in the timing. I confirmed this by delaying the
> fill operation by one second and that did away with the issue.
> On the other end, adding a delay to __i915_gem_free_objects()
> produced 100% reproduction rate of the issue. However, I felt
> that juggling delays would not have resolved the problem, only
> decreased the probability of this race, so I decided to increase
> control over the contents of mappable memory instead.
>
> Chris Wilson had a suspicion that this patch papers over leaking
> vm_area struct, which was addressed in
> f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
> resolve the original issue.
>
> v2:
> * change ownership of the file used in igt_mmap_offset*
>   functions to the caller (Krzysztof, Sebastian);
> * rename igt_mmap_offset_get_file() to
>   igt_mmap_offset_with_file();
>
> v3:
> * remove double fput() call (Krzysztof);
>
> v4:
> * extend the comment above mock_drm_getfile();
> * reword commit message to contain information about GEM
>   objects;
> * rebase;
>
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 23 +++++++---
>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 46 +++++++++++++------
>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
>  3 files changed, 57 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers=
/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 0d250d57496a..c561df41ba49 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
>  	struct drm_i915_gem_object *obj;
>  	struct i915_request *rq =3D NULL;
>  	struct vm_area_struct *area;
> +	struct file *mock_file;
>  	unsigned long addr;
>  	LIST_HEAD(objects);
>  	u64 offset;
> @@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory=
_region **placements,
>  		goto out_put;
> =20
>  	/*
> -	 * This will eventually create a GEM context, due to opening dummy drm
> -	 * file, which needs a tiny amount of mappable device memory for the to=
p
> -	 * level paging structures(and perhaps scratch), so make sure we
> -	 * allocate early, to avoid tears.
> +	 * Pretend to open("/dev/dri/card0"), which will eventually create a GE=
M
> +	 * context along with multiple GEM objects (for paging structures and
> +	 * scratch) that are placed in mappable portion of GPU memory.
> +	 * Calling fput() on the file places objects' cleanup routines in delay=
ed
> +	 * worqueues, which execute after unspecified amount of time.
> +	 * Keep the file open until migration and page fault checks are done to
> +	 * make sure object cleanup is not executed after igt_fill_mappable()
> +	 * finishes and before migration is attempted - that would leave a gap
> +	 * large enough for the migration to succeed, when we'd expect it to fa=
il.
>  	 */
> -	addr =3D igt_mmap_offset(i915, offset, obj->base.size,
> -			       PROT_WRITE, MAP_SHARED);
> +	mock_file =3D mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(mock_file))
> +		return PTR_ERR(mock_file);
> +
> +	addr =3D igt_mmap_offset_with_file(i915, offset, obj->base.size,
> +					 PROT_WRITE, MAP_SHARED, mock_file);
>  	if (IS_ERR_VALUE(addr)) {
>  		err =3D addr;
>  		goto out_put;
> @@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
>  	vm_munmap(addr, obj->base.size);
> =20
>  out_put:
> +	fput(mock_file);
>  	i915_gem_object_put(obj);
>  	igt_close_objects(i915, &objects);
>  	return err;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/=
i915/selftests/igt_mmap.c
> index e920a461bd36..6f1b6d5cc2d3 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> @@ -9,17 +9,22 @@
>  #include "i915_drv.h"
>  #include "igt_mmap.h"
> =20
> -unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> -			      u64 offset,
> -			      unsigned long size,
> -			      unsigned long prot,
> -			      unsigned long flags)
> +unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
> +					u64 offset,
> +					unsigned long size,
> +					unsigned long prot,
> +					unsigned long flags,
> +					struct file *file)
>  {
>  	struct drm_vma_offset_node *node;
> -	struct file *file;
>  	unsigned long addr;
>  	int err;
> =20
> +	if (!file) {
Minor suggestion, consider using WARN_ON() here for better debugging.

This patch seems okay from my perspective.
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

