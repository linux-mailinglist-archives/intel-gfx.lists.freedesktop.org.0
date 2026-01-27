Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PsZExpLeGkKpQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:20:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACED090113
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433F910E278;
	Tue, 27 Jan 2026 05:20:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlLrBCgv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8142810E06F;
 Tue, 27 Jan 2026 05:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769491222; x=1801027222;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YInOgY+zif7iSX5o6KJrIcWebWxQOQJQ+8bK2/3AiD8=;
 b=PlLrBCgvVttbQhWgKg5QDFiAiVwr4IyZQOLteYlDXZz2fwBosQtgA77B
 sFe/srJ9iTVegZvUKZXRDDDtIgo7GxhIfXRh2gWWMYb7KiZB4hViTRTHY
 hKaxBMWjwne3LcG5o+QUnxG30Vs8jdYrvla7qpuiOwEgJ2jSq3Oa8tMik
 Jvjvwc0LQKHmWJzeYSvFduuTlJblH9aV5H7ht24RTdjCinjFc2CgeyNcK
 mk763Egt1EVOec6Wnpgllg/ftL0E9ndia6lmx48CPvneWC6jnGkne2tBK
 mQR+CrQSsu6fsowpedT6lVq7e6TbEFBUE6Gp1rPkHHQhcDHF3haRnr3Af A==;
X-CSE-ConnectionGUID: 5sFh0m+ARC2KL2G6bwZ6jw==
X-CSE-MsgGUID: sFy895XSS2GZX1Biv8c8PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82107102"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="82107102"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:20:22 -0800
X-CSE-ConnectionGUID: wu/AK8FUSDyVxoReDZW74Q==
X-CSE-MsgGUID: dWlPCWmHSZ2bn4W3cqcMOw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:20:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:20:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 21:20:20 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:20:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SA0nZg1JBI7uYeefXh8l2Y1abl/sy91AksWe8Uxcl0ymYUYXqz3388UdhmSUGt7qU1orzHwNAk2Xb4pDhhtjDNdN6i04Xk1nmAUx1ysV8t9AJkzxgn2zOEensqIFU4Bpdc3Opqw4xZ6k0WcDnheS1gIyrBNGSZtx/2zEBNwDE+WjPfshR/XsRJh8mxUgzd2p6iemgPAdI0ep2F4Ke1xZC1o36OQYRFAu5KM5Hg62YYeXYjG+mkw+PLTPziIEvBurKlf8srsfGbHZVCLP2IQX3OJ5UzdMPTCwvuN5bPxUmB882aKl4V9ri0IqoDINgALWyxo3zeoB1KG/JiAniVcRiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/4ZAnoyGcWL+lxbNllGrZzh8ZziOMT3nYt+9Qs6nZ4=;
 b=GSNM6PWyvwszh5h7hf7NwIWQ2hayWCx4H9aXxEu/8mcJHUYPRUseo+GN2wXnY1avb8e/tGbzyxFDabpGKLBLSxbigi44KFZ0o1tZhanuilKFPQEoFj04ThCqGmWmOCRbz09oIHAt9LqHTCjPErhLVRe72sZh5AtScCKlLvFIHzIh+AfuuTVdEdNT9nEdprQiDE/3NKfZw5a6DXtRVvyPIpA/3n2OsxEmNiJ9OVQK2jifN/89cfO0EQqleyOqqAK+5EKi4Fvx5822m7XQ67PsQEIbU8uCKhs6oiOEoXzkytge0PTib8hMXe7IyAAa2UaKd1GbIQz3ojnuv7mf8oLsAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8801.namprd11.prod.outlook.com (2603:10b6:208:599::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 05:20:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 05:20:18 +0000
Message-ID: <94019eb5-250a-4d87-8516-f084b5b82409@intel.com>
Date: Tue, 27 Jan 2026 10:50:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 02/10] drm/i915/psr: Add intel_psr_use_trans_push to
 query if TRANS_PUSH is used
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0120.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8801:EE_
X-MS-Office365-Filtering-Correlation-Id: 786a4787-d96c-4112-86a4-08de5d63c28c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TE1jNm9DOUJTYzUvVE43TThranhuRWVscnZvWHJLWUNsSW1FcWlnMG9EYzg4?=
 =?utf-8?B?aTRWc1IwbG1MNDFZSzZIbWNRakhTem5pVDliUmU0RHpnTWc1TFlEakxET3dp?=
 =?utf-8?B?Tmp1M2krdkE0UEY2d1J3QVBaSW9ZbFFPWW9vRndpVDhkZkt5THpWOTN3Wnoy?=
 =?utf-8?B?OHFBY3hFYTRzN3VQWjh0S0RXQjJLbTh5dCt6MGV2TXQvZXUrZnVQMGNsZ1Rj?=
 =?utf-8?B?bFF4M1paczI0MEduRHdjN3VsMk0vNU5EamtCa2NsYzZiK0t4NmphM25YNlRY?=
 =?utf-8?B?dmIwRHVzMkIxR2RBbElKZjNNZ3lzQmdyWUF0bzkwZXJCZHZ6aFhIdFJTaVJX?=
 =?utf-8?B?dG1QbmZ5QWxONXpMYWtHcXFMZTB2ZTh0S1UvMjc2S3dnOVZuYVd3dnRWMnE0?=
 =?utf-8?B?Ti9USDNBS3R2azhRbWMzZ2VXVEY5V3NaK3lyaFRDbmd3RldqRGpwU0hpTGQ1?=
 =?utf-8?B?ZXpEckZvTWxtM1Mrd3FXSGFTR1JUcE02d2xqTmI5YmpPb2xHWXBoNDlnRndn?=
 =?utf-8?B?Y3NIaTRaZkNxOGF1ODFURWtIWjU2M0pQcmxoaDI4OUswREJzUW9NL0JPSlRS?=
 =?utf-8?B?QXZZUlpieHpUZm5lWnp1ZHRYUjZCSkw3YmZJZjA1NFE0bzVPd2VVZkNuNkdD?=
 =?utf-8?B?OGx5b3cvZDg2cTRqTU9MYjFIckJKY2F2RlVyUkxDaXAyMVl6M2RHS3Ard2V0?=
 =?utf-8?B?N3J2TGZ4UERVUkpwNXExdkdNL0xRQ1RPb29pQi91U3FWS1NrYXBEeUh5MDBC?=
 =?utf-8?B?eEtOS2pVWnNqeUcrN3J5b3JaOCs5a1F6cUJJNDY5Q2hwSnZCUkxnZVdHQWJk?=
 =?utf-8?B?RFBRbG5WSGhUci9ZVTdmL2M4S3lRR25oUWZaNnFGQW1LUzVYS28rUDBXamwv?=
 =?utf-8?B?TC9GM1BDbDdoS25lSUNMWmJTT0lacVJKV1p5czdvZ0hBRUFKdUxRanVvblV2?=
 =?utf-8?B?RzkxWmJPbnVadVh6Q2h6VFpFbGJjN2g4L1RlZEJ5dEc5UXF4MHVxU3BXcmQy?=
 =?utf-8?B?MVlFZGI2eGU3QXdlNGZ0R3h0eEMycllFcmVlNkxJVUl2RHVZZXloaGxSWFZo?=
 =?utf-8?B?Vklvc1dEd24zWkF3bEhzaUMvUU9tM0syWXU1T0J1Y2R4TU9SRnlsY2REK1hS?=
 =?utf-8?B?UVZONG5zZGFFWHFxQnhISkg5cDJ3QTlhbG13OFdZc2NCQllRSFNFa1ZiSHhr?=
 =?utf-8?B?dE5ISU9tZkdCUUN1VzZqY0NPSndtL3RlZnVna2RJM3IzaUlrNFYvc21oVDJl?=
 =?utf-8?B?S1pzcEVrc3lSNFVCazFkdWg0bThLWlBQU09Dd014Qk9MWENaRlZud0JrcjF3?=
 =?utf-8?B?Y0pOWHhBU05sMFNMN2ZWSnBhUFBMRktjaXZEN1RqRmlkVDN5WG0rWnI4dG96?=
 =?utf-8?B?akVkUk8wc2xjNGovLzZSS3Vuc2N1NWp5UEhrYlJxUy9pakYvQVR6dU9YUmpO?=
 =?utf-8?B?RXhOMmNMTDl1YTJld3hwcnU1UFJHN09QNUVtcVUzR1YxY0JQNlRsRFlLRmYr?=
 =?utf-8?B?Y0FUUVFTdVhQSW1FVTZkVGQyRVhyZnM1WkkrUm9IYm5BaDJ5cWlpajU4QXlq?=
 =?utf-8?B?aWxwaVZiRG9ZclR4MUxqbW1NVWx6SXJyQjhZR0E4T1VkamxqWVlQSFJqNmIr?=
 =?utf-8?B?NjZ4czBJSThqMjNKRDVGU3BtbW1URVVUN09CUXJhaDhXcFk1UUYrbHpDQlV4?=
 =?utf-8?B?UmFJR0JGWlF2aUxDNUNjSFFRL1F2clRQcVdVNWRxN0JnUXFZaCtBaVJqTWpP?=
 =?utf-8?B?SzhxOXhCS25WODMzZXNITGhXRjZnQnpUZElsb0hOU3Z3c1VsL3dIRFN1SGlJ?=
 =?utf-8?B?Zi8xL0V3NXZHNndscjVoTUVuQVFYZ1FGaTQySHhFNmxjNWFIUVppQ0U5b3hF?=
 =?utf-8?B?NElHa2VXNW1UYnY3MEFCbnEvS2pVdGVtazc4blk1OGs1R20zYWtsQlFhakUz?=
 =?utf-8?B?SFJUNFZVRmpVbkJNcWZvTGtqV0w5WjlraUViZHIrdTEzMGF2bEMrS3BjMTZZ?=
 =?utf-8?B?Y0MyQ3pVYlVuSVJUZEIzSHk4MStDN2lVak9YMEQrSmd2WTlLelZYVDBIenZZ?=
 =?utf-8?B?L2kyOThKdnY1VVZYQ1Z0OVROY1hzL1JHTWU3dVg2Mm9yQmNDSE5va3prUXJZ?=
 =?utf-8?Q?f2bo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1YxTm5oZWpCVEZRaW8zNG92K1dJTVRJRC9OT1ZqaU56SWdJQlhWdll0Vzdm?=
 =?utf-8?B?cE50YUdCUU4xRFhPbUhseU9yaGpnOEljaDVKWloxSjNYa053TE13ZWZFK0Iz?=
 =?utf-8?B?QXRaeFA5eGt1WkpkWGpKNm1TMFNWcHpnVkUzK0lZamorOXZyOVhoK3R4Y2Fv?=
 =?utf-8?B?SElPY29FRnNxYkxKSm9hQlB3NXdXUHY5N2Z1VTBKNGVxZDJNWElhU0ZlUVpl?=
 =?utf-8?B?cVNBbXFBM2x3QkY1MmlXaE5xNVhYTXhxR1dtM3JiYk9oTmRxVm8vRENBUEVC?=
 =?utf-8?B?d2pMQWdZdm00bHZyZjJUYmdJRGhiQk8zV2plYnpsbkhCcTZFQmpQSUI4MFMy?=
 =?utf-8?B?Rkw0c3JhU1dLTUdER3NTa2psdDdvU0xveENJNWJSTmYwMElQaHlkaEdYRFpW?=
 =?utf-8?B?dnYxY2F1T2N1bGNCc2xwZTJtQVV3NUsrNlJ5RXA0aEIyWTZjU0tQZFN3RWYv?=
 =?utf-8?B?M1VRdm1jaUlpQkYxY0YyRDd6ZVBQeHQ5cWgxano3QWU1TmFFZlFWNThCMEZI?=
 =?utf-8?B?RnFrcUw4bklCdmpyZWVuNFBBS0o1ZXpxL1QxcElLSG04VVppeldhYzN2NTQz?=
 =?utf-8?B?SlhVdUxnbXNqQlVrQmltSExob2NuSGllK2tHZGMvM0ltQk51ZXljaFhkMXlX?=
 =?utf-8?B?dkZHVU9yckJGYmpaRy84VExXN3pabUdQdG5ZU2xkSTNpZXdTaTM2eWowdFNt?=
 =?utf-8?B?OW9PTEo4b2xiV2JSLzNEUWFIOG0rSDJZWWNlQ3o4ZWVLMkFTazNKSU12Unpu?=
 =?utf-8?B?MXBvRWdUcTBKUDFlU0RQc1B2MDdYSWtYZHYzQTBkNFhFVWU2R2NlN0k4UmNv?=
 =?utf-8?B?QVhqc1lQbE1oUW5YdVVJYWV4WU9xTkg1MVNQR25sUlhtb1YzM052Yzdha3N2?=
 =?utf-8?B?Skt3MmwvMXZMbmtObVREZS9Ucng2dW9RRXBJeGxHaXQ0MmtCd1h2a3FEY2V6?=
 =?utf-8?B?TWZtWDJoQkhWaktadlVYdzNnazVHZm1qUkdvMmZKNzl5c2NEVlBrMnJidnc5?=
 =?utf-8?B?eUtJcWlVb2pkN0VZcFEzTElreTBLTGlmaEdNYS9kRTRtM0hIMXdTTCtJVFJ3?=
 =?utf-8?B?MXFZaWJhTjcrQnlUNVNOYmVTOXZHb0JnK2RxM1ZDQklsVkxScmY3c2NyNzJM?=
 =?utf-8?B?SjByOWNmVjFjMGY5TGFwSlcyR1BLa3p3Y2FWSkNYUGtHa3BteFlFdzNHWEhS?=
 =?utf-8?B?eEJRbHZUYVdBZG9BUW1CMW5qVmFYS09pbkdOc2pUSHlnSmtqRGtHckxKVzQr?=
 =?utf-8?B?REdIMUhLRGhWV1Vxdjg1WEtvdTdJbERSRVV0S0kvaXQ4TVpjaU5SSkEvZFZo?=
 =?utf-8?B?UkYvMk5qTmxtK3lYUnRFSjEvSkwrVkZ0TXdMbzByemNFcmdsb3U5ekZDd3JW?=
 =?utf-8?B?YmpKaXFNMmlkTC9OU3JuVXhUYWV4WW9HNEdHRUlEZVlXVW9IcE82bTg4cEsv?=
 =?utf-8?B?RnlnSEZrSDBDWFFiajVtdjRXUURqYzRDSGk4a3FnQldJWlNpWS8rdi8rT1E5?=
 =?utf-8?B?R3k0bGxMYXBsaW9hSjZKRlJnTkdFdmNSMy95QW9rYVM4ZkRFNnNkdklqSnVa?=
 =?utf-8?B?aEUxTmgremMxQlY5cEo5RGZQakFJT3pzU3IzVUV1QTBVWVB1Rm9EbTlFdllO?=
 =?utf-8?B?aXBScE5UVVR0UTUwV2MwS0VFUUIzSC9RSW5BWDlEdW9VY1c3WHlMWGpkV0Fa?=
 =?utf-8?B?UER6R0RnY2J3T3p6bTUvMGxsZGU0ZkJzdkk0TG1NK2JrM0UzNEVzQ3Vocjhh?=
 =?utf-8?B?RGVDcXV5T3JkMGxzNzJTVHpPMlRwdE1aT1R5cHNtMXZ6T0pEMWhSSFY1VGhm?=
 =?utf-8?B?UUg2cTFBVXRWd1VTYmpualYyUExDUVdOaHI3RHROOC91ejVWaUJwK3BHaHlB?=
 =?utf-8?B?NlZ4eTVBaVJCTDF6cEJDTFprcmVLRXpOaXZLdDdFQ1lpbjBDMjlpa3gwTXk4?=
 =?utf-8?B?Yk4yMUdhL3BTN2l1OGNsMDhqWDZFRWNPVy9ubzdsK3ZrcWxDanQxaTliNmp5?=
 =?utf-8?B?VFUxTlVJNitHb1JIMXpGemkvSnoyQUZHWWo5L0dTb2lSazQ1QURDQXUvU05L?=
 =?utf-8?B?dWI2eFVKcUdKVkVwYUcrTmthRHR1K2NQRG01TUpYT3BRQUlHNGliQjNrazZN?=
 =?utf-8?B?QmJoSjg3Y25nWjU4c3gvQ0Z5eEpmRnc3NHRmbk9LcU9tWExMT3F0TUFHdU1u?=
 =?utf-8?B?SnJHZGRYdXE4Vk4wbUZ1R0ttNnVoWXJLOStDOEZjcEJ5V29ZY0c3Y1FZb1or?=
 =?utf-8?B?eitmbzhWWmpha0ZoekRWQ1ZpR01BY0Z2MmZrWDVzcXRFSEdpYWdMclJXWEFI?=
 =?utf-8?B?cXZ1U3p3K2d1RTdoZXdrU1BIdDNENldJSzE2dzV4czhhbERrT2NHditoMWVT?=
 =?utf-8?Q?2l+57jYENMbZIjU4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 786a4787-d96c-4112-86a4-08de5d63c28c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 05:20:18.3687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oqJsBCsuUb+8zn2slh1QzVRk4DTP8FTur5CZVjSfHg1U3CkEocQhCTHw96RCxb52/RDtsxsu9DeY+u5mWuULGB+4YfB+hFpD5NDgM7OKbQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8801
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: ACED090113
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> This is a preparation to start using trans push as a PSR "Frame Change"
> event. It adds intel_psr_use_trans_push placeholder which return false for
> now until we have everything in place.
>
> v2:
>    - modify commit message
>    - add TODO
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>   drivers/gpu/drm/i915/display/intel_psr.h | 1 +
>   2 files changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 62208ffc5101..b0d72c04db45 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4562,3 +4562,9 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
>   
>   	return psr_min_guardband;
>   }
> +
> +bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
> +{
> +	/* TODO: Enable using trans push when everything is in place */
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index b41dc4d44ff2..394b641840b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>   void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>   				   struct intel_crtc_state *crtc_state);
>   int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
> +bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_PSR_H__ */
