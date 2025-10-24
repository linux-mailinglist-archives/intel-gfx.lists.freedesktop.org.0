Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4FEC067EA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD2E10EA8D;
	Fri, 24 Oct 2025 13:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R23buGhx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D6B10EA8A;
 Fri, 24 Oct 2025 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312499; x=1792848499;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=az73m4fTKXFTnaEbVhV6QDq4mPf1VNF4MAeTP9GbdYY=;
 b=R23buGhxvi+JnXs3Es5svjp/nNEuFGvCURolvvyrh7drUcu0XPKcy8v4
 kgav9AJjPSiGbvkxuyVqfJS27QoWUaoAYXp7XaYBg/S6Vbij5EWnjlstI
 2qcV5CCll2kPJYcvJXQY04dy/xwzMEeTQcRTHgtcj8RGTRAsAgxOpO2PL
 rEp3mcOCfu5d1VL8zr+TwaFKGi62ucZ73Xn4s0KLkNgtIvQW3gRUMvpbi
 lYEFKGrAtic64QmGdWAxowwkl0YdrXziMFLslJlNfL+xNcjfs8iMxohHR
 e9x53+ixUBf7nw0L6a5vm8Upxx5dQS+0S1hW5P4y8kgCpOPcWtzY5aXsg w==;
X-CSE-ConnectionGUID: dCzrUXGSRaag086kFZfz8w==
X-CSE-MsgGUID: /Fg4sru9RruJZCOsVaMJqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62702312"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="62702312"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:28:18 -0700
X-CSE-ConnectionGUID: gD3G7ZiMQw6anj/Th/C/rg==
X-CSE-MsgGUID: tbkoYBn2SjuqSd93GPNUpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="188493094"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:28:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:28:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:28:17 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=whKxW7Ov7R8lKFj6BWO0Nx+RLl9DngSbui4d7crqIOsXcz7b6BuVvv+UuIWddK5sCKBjFiYvE2uiieTIasiG1CWO0jTTCPkzJlEphI67BJ3quPZG+pXFa8p+v94768TWBNNyQdwQhqoKCDovYhcKNf0SlE1a/UNiKyhzM46oA+oW/vmv7C51p6bSMSISRqoHjYlXOLxgiU6/A5co45YqQSVY9nHdVyZjCHMkRe4nEzCy1YYXmSkeIyQHObmFD++09VvjBnoK32+m62uOhKqYLvyphkLTF5p+cqxfEnDdVB6rfCnPlOj8v3BmDkW4BK9cKpkQw+s6j8i9XIOs4ni5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y29FYqty+A9fQBZZGWXN4nrYh+KopUSE4P0g0cfxxLc=;
 b=dDa66d+u15HrwyKFKeR8APSY5frJBvHfE7/gEOLf0RXTpDglcegtLWpKXOSRt+/u5VkdSxpd1hGosxBF6FOsZX3YwgJjH5/+DDLu0uGF7daY20TPd8Az/R+3PDbiavuZnweFI1dwf5LMeDMGuVwzt6b3TTYgvyeAqc1UpTHbnsog/4Ignuc2ScYYnIXdC8SAJ7ULYux6XWlNObt2VRvB/6Qg31bnc4fQ+JckuvsyLg+VSfy+nVaQVHYiHNoPIYy3dYu8IYiz49Pr3L02TULnaXdn1+EE6i0XRDsI0ahqp1+SZn0q1X9hn7K2tXZ6or0ku+wgJs/7K/s1o+IBBVvqmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:28:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:28:15 +0000
Message-ID: <6c69946a-6902-4542-b004-02ba60a9c1b5@intel.com>
Date: Fri, 24 Oct 2025 18:58:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/22] drm/i915/vrr: Reorganize
 intel_vrr_compute_cmrr_timings() a bit
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0142.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: a085ef25-2ee1-4a88-7a0c-08de13012fb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tm5ma1pubmNpakV0LzdOS0kweW1PbWJmREdKMFp4MVlBRndPZHhTa1BGWHIx?=
 =?utf-8?B?cHRtM0F5aHpkWXZlaUNycytiSkV2VWFlNEpTT2l4WnR4cmUvVTVBVDA3SFZq?=
 =?utf-8?B?Z2R0aVVJWVJuQjAyU0xLQkY3WlprZDF1N3Z5T0QxQ0dhSzVRZTBxNFNvQXhL?=
 =?utf-8?B?MFFnbFZud2dRREJtelBpWnhyeDJJSkFmTTZ6SkdndVdzOWJadVRDa1BZNjVS?=
 =?utf-8?B?U0tNUUVnNXBQTTRKaHV2b0FkejF5Y3NiR0NGY1NKb0JWdkFMNEM2WFppOUR1?=
 =?utf-8?B?cUFYaGVFMVo0cExpNWlYSmFlMWJZQllkbUdhM2d4ME9ORmMzSHUxd2xYbk9h?=
 =?utf-8?B?S3dMME1hKy9XUTNLVGh1NW90cGVNWm1pOWF4czdNYnhPUmQ5SllZRmEzeXlU?=
 =?utf-8?B?UmEwaFBOcmN2bElERFcyUC96Y2g3QzcyVE9KRktyUEFEZXhiWmhkM1g4cm9t?=
 =?utf-8?B?MW51Z2JQZkZiN0UwaFNoRzhuR0NiYmdCTFAvdDE4TWhOMlhYNll3eSt4Zm9v?=
 =?utf-8?B?UHJRM2Rqc3VPdFZIMDFYWVliaDk4eVJTRDNQN3lqS3pscVJnQlM4eSs4YzJs?=
 =?utf-8?B?RzhKZWxTVDMzTWVLSGxpQVVzd1RhTlB0TUl5VTZSM2hlTHZkRDA5MjZwOVhJ?=
 =?utf-8?B?TzFqcDZXWUJyYzRjRVppc1VqczRObUVCQldsa2dRT0Z3UXJITTNzRkhtbEE2?=
 =?utf-8?B?SktCNmwwUVdIMnRVY2RUWW1XSnluNUNQd0FBY28vai8rQjZ3Q3hDRytvek56?=
 =?utf-8?B?Z3dhbFdoMmFNKzVFQ0FPYkpicFgxU0s4b2FwNVd0dGhBc0lJUm1PNmdXbTdB?=
 =?utf-8?B?cDJoTVZFR3F4WndTVjBuRjdPT281M0I3M2FWbmVaUjVrMW9QR0ZBcXI4UGdU?=
 =?utf-8?B?M0EyQ2Z6QmJQei9TZC9yeW41Z2VPbXlza2ZUQmRKZXEwZGNFNXJ3Y1d0OEow?=
 =?utf-8?B?RFlUckFCZENzT1VDTitkTDU3SHJwTDVJRnNwcEczZHN4QXpoNVEzaWl4ZWF0?=
 =?utf-8?B?WWt4RFMrbnVaWG5mVWozckNPRTBJaGJDTTBYbHBKdEhJaTIwVmZySnltZTVi?=
 =?utf-8?B?QTRpcG5uQ25vWWxEVjlEbms5bE9iYlVSVWppMDB5MXRLdHJSV2pycEo4Q3Y3?=
 =?utf-8?B?VjlmZGZudU9yckZqWUVXVUZaaWhaTVZnWHMwZ1pYSVU3WUhGYStEU2J3dnls?=
 =?utf-8?B?K2FBc3ptQ3JldGU5M1EzVDBIZDVFenRFYlgwTHVqZzl0emhHQk9TbFdiaDEx?=
 =?utf-8?B?T0V5ejV0eUg1T1hna200ZWtpUUpWZkZDT2xYQngvUXRyNFgyUjZ6cnBIYWt4?=
 =?utf-8?B?TFJodTVPMjNmak8zYk53VFBiVUVVVmVnL095bWFiaTM5KzV2Z0R6QTRuWkJ6?=
 =?utf-8?B?YmdVYmNUS3BTNGx4a0dWdW9YVnJPMmtINGx1T3lRaVFNQXgyNVlTd0FZYWRU?=
 =?utf-8?B?KzhVMmdVVDFWN0p2eGVUSmsxZ1BubHJ1UW5WMmp3UEcrZWZsbHBBQVFtRWJO?=
 =?utf-8?B?T0pMNXdwSGxXQ3l1ZXVnYytZeWRRM2xFc2lrdUZPcGtRbm9BM05qWjhaM1BU?=
 =?utf-8?B?RUUvaDNqV0M2TlIxVlBuSW1FVTBYWTF4NXZuclZ3T3B5OE9LR0tVaTJlVHdS?=
 =?utf-8?B?a24yQVJ0QnJQb0lSOUsrV1BoU3VYRGVIc1VBKzBnUFNaaDJhM0w0V0hnSGtu?=
 =?utf-8?B?OVNRSVVucEowbEFPVkdBWFBCOUNLWC9ORTlHZTlNblZiSllIVTlnUG5YZUp1?=
 =?utf-8?B?aUM2QVVNajh1M3JNVTJBK3pUbUZReExuaHAwbjMrOFF4TWJGd01VWURuY2pI?=
 =?utf-8?B?alUwUWJwbzRyYW9JNnNhbE5ZNFEvUjFPeVBrMjNsWjFkRVRjMVc5NUpEQlNO?=
 =?utf-8?B?SkxnY2U0VE5DR21tV2JmaU42cWZUOEExcjhWcUd4WG1Ub1U4ZXdyOWtXUUJN?=
 =?utf-8?Q?ridY9A9CdbbrlXQ0LmeoICe7McjDCRrP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTM2US8rdkMrU2YvTzlBK1pYTWtOajVFU0x3RVYxMHlSdkFxSzNDS2I5UjVp?=
 =?utf-8?B?ejByRWJ5UVBmS3dVbFIwaGppbU8wWHd1ckE3dzdGMlEyVG1GWGJvK3RyVmhI?=
 =?utf-8?B?VXRyNHF3bTJUV3Z2dytPcXRqckxHREcra25xREE5eEE3bkl4L0x0MDBldXhy?=
 =?utf-8?B?QThHMVdJUDdnUmJTcnA5d1BiYS9uRFRrWWVUazd5SkhRNGxQQjNOcFppTWN2?=
 =?utf-8?B?SDZRZzVsNUM1cXlxcmd3VThhdnZjM1NPK3puai9MRU5KZkxld3BMNnZHOHRV?=
 =?utf-8?B?aVRaSFJmQmUwR2RYQ2xTd0NLU2tMemdiNlAxTklHbWM5bW4wN0h2dWpScGRh?=
 =?utf-8?B?ZzVXM3pGL2RhSmhFeTk0OHpNYzRsSGxxZXZIWWtERGJLb1pEWHFxbS9tWnVn?=
 =?utf-8?B?NnY2b0kwNzBiTm93WjMySm9ibTllNHBZdW5icWh4VDNONTh3eEJ1eE1ZQUli?=
 =?utf-8?B?anF3cHE2dEErRXVVbjU4WFF0VjkwbUxJdXR2MEZWdUpUdEFiY3dkQmsvSmNN?=
 =?utf-8?B?dW1ud0laa2M2RWl2VWNvRS94TUR4ZDRkTW1SVXFpNjF0cmdIc05aaDJrZjNU?=
 =?utf-8?B?NHlkbHNINm4vMnMvcHVZMXoraG1mbldTMGozZ0MxM08rT0hvd1ZKdTJBU1hI?=
 =?utf-8?B?WHpnR1RYT1VoNDJKRkFlQjdvYi8xRWNtcmtKZllxMmVQcENHdDN1MS9xME92?=
 =?utf-8?B?aUxXWXdpNnVvempuc0dVcEhLTnRiMkNUSTU5VWlPcFJQa0RONXVEZkppVDRH?=
 =?utf-8?B?emVTOGgxMGhkWFlrRXhVWHJyUWlITUU4RUhDUGg0bjByZnNTcFVyK0kyT1Zh?=
 =?utf-8?B?djFCRVlFU2NGYUREWjlBUFppZy9SVUREbkxlejA2aXNxWnNqZ0lhamprOFNh?=
 =?utf-8?B?RG1Za2NjN0RBYjNxQ08wRGlnNHoxUlIxdlAxWmdzZnI2Y3p6WjFDWkdaL1Aw?=
 =?utf-8?B?QzhXS1Z1SXBwMUtNOW9WQU8vRS9CZ1VqZ1JxYTB2VFhHT3YrdTd5MmFpR1lk?=
 =?utf-8?B?Zks5dGFWSjVJblpCMCt2M2IyNGVSbTVDVVd6WWo0STdCSGZocVpBMlc0aStk?=
 =?utf-8?B?TXkxcTN0VFV4Z3B2VVlQNVY3cDU4RVhMYTBINXcvV0tnNk1YSk5UOHJTNXRX?=
 =?utf-8?B?TW5uZVd3UWZML2s3bmV3UFNEeHNXcXFTMVUvOGExZjRrTE9KaTF1SXNidFFn?=
 =?utf-8?B?aVR3UkFUdUZwZGhrTXJKWnZGdDFmeDRlT0tkMEFRbTF6U2xIMlpKMy9wU1N0?=
 =?utf-8?B?b1JycFdMV0MrRFJ0VEVlT1I3aDl6OXBTSVg3ZEdjSFFHRTRnV1pxUDlZTU1U?=
 =?utf-8?B?VUhhZHlsd1RkQXV2Y1hiRjV5MUlYRkhxbUR4RE5ma1ZLOFQxbWoyeGhXd3lq?=
 =?utf-8?B?V3JlYjV3eVJjZ1dCSjhGemJyYlUwUHI5bFY4cC9PZ2lYMzRmS25hYjJRQS9y?=
 =?utf-8?B?NE8zK1A1K0pvUlUwekVNWHhsc3VtVS9CL0ptSVhOcGo2M21aZE9SM3NRd3Vs?=
 =?utf-8?B?V3ZjaFhzMGIxUXR4eE9qencwNlEwQ0MwV1g0TWNFK25iaFZxQmdjS2ZJMGxk?=
 =?utf-8?B?clNOakpCN1FQTFZzd0wzT25idDVTZURERkxEVVg0Ty9yWG5pd0dNZi95cllB?=
 =?utf-8?B?VnBoMjA5cmRRQnRnUjJjYTEzT1dqZDRsTVRUR21VTjR1Q0VabW1xM29Ka3p4?=
 =?utf-8?B?bVgvWi96OTN0aFQ0cUcrZ3hXU250ZVZ3SnovcVlWcUExSjE3ZmVRNlZySmtK?=
 =?utf-8?B?L2EvOFNMVmJUVHMrWmF1WmRhRkoySDE5Z1VXR2EweVdKMmFpVC9jZXhZZ3Fa?=
 =?utf-8?B?VmlLVDExSC9MUTF3Sk04OXUwUzUydTBKWDI3WnpyU0xNdGRoKzFwSGwzaWhR?=
 =?utf-8?B?QTJ6bmZVKzhJYTcyMGdtL3hFWml2UHBkdXh1Z3hwN1dPeUdMc1NOdkQ5MFJP?=
 =?utf-8?B?WUFFWk5UWHJxSlVVK1JkMi92WmpHVTFINFUwUHEyK1luVzJxYk5ZQjgxajBx?=
 =?utf-8?B?Rmp5NG9Xc2ozWFlRVDNhbDJmWTNLalpSNndRb1lOZzVpbkpvbmxLcmdPeHk0?=
 =?utf-8?B?UkV5ZlphRGN6U1BzUysraW1XMlpkdWhtNm1EWS9YSnFETzlaT2YwUmhvZmxJ?=
 =?utf-8?B?eWx5WFo4SFV3eHo5UTlmQUR2L1JsUE5sMExoSjNlNW1sUlN0bEU2VDVrRGJK?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a085ef25-2ee1-4a88-7a0c-08de13012fb9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:28:15.3512 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SPhrdR+xH4timczIOyZ4cx2odmXYA91pz5vUzSlFKakxk0MYJeuz8wGKYgQPYJdIyNDmJiU3P3h/kNxvfJdfPEPwRrIwf0HtA/cNjk15Q5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Move the cmrr.enable assignment next to the mode_flags assignment
> to keep things in a bit more logical order in
> intel_vrr_compute_cmrr_timings().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 510dc199376f..01cb9cfe08e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -220,7 +220,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>   static
>   void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   {
> -	crtc_state->cmrr.enable = true;
>   	/*
>   	 * TODO: Compute precise target refresh rate to determine
>   	 * if video_mode_required should be true. Currently set to
> @@ -230,6 +229,8 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
>   	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +
> +	crtc_state->cmrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
