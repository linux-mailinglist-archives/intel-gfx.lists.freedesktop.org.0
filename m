Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qI2qGp3gemnD/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:22:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF58ABA78
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD89310E7BB;
	Thu, 29 Jan 2026 04:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7HKXfxo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C0310E1F4;
 Thu, 29 Jan 2026 04:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769660569; x=1801196569;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Nq0wqrxbdqoZYQkxDD2X9VQu4unjE293LEpmJSA2Mx4=;
 b=M7HKXfxohVFDs53CX3we5bJUG4OxWXAz51pdJaiYGa39T2adKUlJidbL
 l0PhKRk7H7U4ECRJeXxPZ2WZlGhQqA7c6FN9Tpc0Y6QHRlK5hghZ+aEbs
 +ev+ni7Ax9JTR/YIoOopdH0xeeJLq5J1OWJgrGrwOqYB7bc5O0A5HWSS8
 fN7HsNpzW5FHMFJTdStAaEK+SHTWxgDHshx7gkSFF0mHaC/hwKVQrexaK
 RGYPcviX4YnlV+VKuomFWmO7sGZvj4EXTNr3ZuZokN3wWHToiXEYq2AWX
 /cazDvWiFI7x1BecBukSpYf+2lHFbNmJHSv3Ofd8ZWe8dq6QD+DhfQzQW Q==;
X-CSE-ConnectionGUID: J8inZt4qTRujZkCGqMpz7g==
X-CSE-MsgGUID: nCX+JigMTTWHDRHAO2M+ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70791069"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70791069"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:22:49 -0800
X-CSE-ConnectionGUID: YIXqq7rfS0KH6Ma8vQVlJw==
X-CSE-MsgGUID: sRlejqn2Rimc3Lm0dDpmig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239703224"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:22:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:22:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 20:22:48 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:22:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I81eA1WkJzxFcbi2VBYEPre74G9ihtzYVMphgs+5zKyM5KLQ4Pnu6NE88hM9DugM1VQr7K2RYuqN+dYcTVnM+GnaS558+JJW8vjgNDxI/iFd08adSoidUxYy/JjtH+HC0YMIFalDbgES02vN7RdUW1ZPv289BNf/yNSiWuxI5aVQlUi0dpT/mDttbV68KUjyq4uGiQYXrClflF5t85/E/4s6mj/W8OP2ARFyoWbcoYUrpbI/hhwx59p2cgjU+xPabLaE3R488sNm5543lD1c0ZdOrVyKzQEbWUgfMvAuMv7a1WZdX0ddWp+WqQJTwP152ekExApgmBjftKhVuu/CgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43+PtUhe0eegGjFM37Z6R2TQPXTG7jN8FFj9gX88fyw=;
 b=uXcqK7yLhFNaj9zqriRIqcZor6c6Ev1tGTfSfngb4cJtbvn2OrXAFGBxul6U6E26UV84Z/QW5TA8G4JMbc0Y2rspOBsM3EfsWtZQYdAJ83oXTbWC6tmc4bw9uxz3jLCW62gqGv4+iHtc9hb9xGGDF04hNxNc7HBQeBavOzM2+xZSIFfU0bPNUi+BXukKFIK2RFaCDwMD45m/5zwRumGUicitbIzUmZWnN1b4mu+fkgf5Ud378vfm8TsG2Xihu9XRuvHA379GFe03kZz5+SjQ0pCXBhZXWViACF8yYtXThTVwTqjnlF3S+7n//E8kcNUKz5DaWDhFJrOZdw9x1hmQHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPFE99BD3AEE.namprd11.prod.outlook.com (2603:10b6:f:fc02::5d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Thu, 29 Jan
 2026 04:22:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 04:22:46 +0000
Message-ID: <e7e398d8-6604-4dcc-a664-59a37fbfb2d2@intel.com>
Date: Thu, 29 Jan 2026 09:52:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915/display: move enum aux_ch to
 intel_display_limits.h
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1769612208.git.jani.nikula@intel.com>
 <86ccc91ee1ca96fa145b750e2f1935918ec288d0.1769612208.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <86ccc91ee1ca96fa145b750e2f1935918ec288d0.1769612208.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0048.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPFE99BD3AEE:EE_
X-MS-Office365-Filtering-Correlation-Id: 86b65ada-6182-4614-839a-08de5eee0e16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjVjUnNBNFU1K3o2T0o3b1pJcS9GM2pVbzF2NlJSQ2RweUlqc2lRTHRxRXFK?=
 =?utf-8?B?Q21FeW9haW02MFFhWXBhNkw1V3c1a1BFOGYyNjJnZmhwQW1pUnlhWUFKcFJl?=
 =?utf-8?B?ODNaTWxFcXpqdjJmWDRnbldOa3NaeDJacmYwdzI3TkhoaElnd01rYlRTQWhp?=
 =?utf-8?B?dlBiYXBkb3JobTZ6a3RYNFFwMUpqN3ZnVEhISVpxYlBHbTFRTXJxZWExeS9H?=
 =?utf-8?B?Y3lZNkN6ZUQ1Z1g5ejkyQnR3L0N5dzhFa3RuS0JIbkZkL3U1ZEoxR2hydmZh?=
 =?utf-8?B?U1JJWnp6SEpBM0l4bkVwbjVYazdTeHRXSFgwcTFsOGk1OTl1UHpIMzhzV1A4?=
 =?utf-8?B?SnQ5MENQYmRLRFI4TXlpS1YxRVVRSTJJYlQwTHdGSXA2WkdpMEN3TWFhVU84?=
 =?utf-8?B?VEFFWUQ3MVRKSzNpMlk4N3h5N3dvV20yb2pUcHJEbTdhb1JKbzduNXUwdHhr?=
 =?utf-8?B?V2srSkNCWFc4RlQ5SDFZV21lVE5RUzNaeitKUFAwekZEekdBby82VVpBTThT?=
 =?utf-8?B?ajhaQkU5Y3A1NnZLZnJ6MUdtYVQ2Um13L2JZZlBrNTFqQ1ZLZ2xMbVpkcWVI?=
 =?utf-8?B?bjVYdG5OMmFhL0FNR1pzQ05VOUcwWExiMWkwQ3N0NnlReGRSK25kZzViLzQz?=
 =?utf-8?B?cTRNdTQ0WjFZcytqU0c5cXA3a0VSam1XMXpTaWtPb3BycjM2SUFBSVgxSkZh?=
 =?utf-8?B?UDVYMjc2VmRxaEVKc3lCd2FZTUViZ2JCQ0J6ekZUQmxhOFZldTk2VUgxZ2Z1?=
 =?utf-8?B?OW9lQ0lsblhsYWd5b0JiZjQ4emhWN2kveXlNSG5YR1lDNmNnd3FENEpObGFY?=
 =?utf-8?B?UlZyRzNVTFpyUkkya2R3TmxqNjB0NkFUQ2lFYkxnODY5L2ErWVh1NFJSaDZO?=
 =?utf-8?B?bzd3TXVsVG02eWtTQnVGWUdkTmVuNzFPOExlaE0vb3hJQlNxeHpiWmYxTklt?=
 =?utf-8?B?aHFFTjJuWDRtUUNHSTl3dnhNdjlxMis4Q2dzdVVwVWprSGdWbDJ1bk1FekNa?=
 =?utf-8?B?b1F6b3M5TlJKOXhORUVVWHI4L2hlOXR3VXZmTU5Nbng1NWhMcFY3R2NCc2R4?=
 =?utf-8?B?L2RGbjRoa2JOUkkvcm5FelJIM2dDQVh3R3hEdHJBNjRuRDV6cGk5ZkxrK1E4?=
 =?utf-8?B?Zk9IZEJJZld4VExNbStnbnFJWlZUNFpISld0dmtiMDVhMFk2YmlGcThYNHZZ?=
 =?utf-8?B?azRTdHA0SHdGWjlTMkNoa3dBd1dadnFvR0grTkFrcUg3VFJBWEVmUzhJVWc3?=
 =?utf-8?B?dk8rVTN1NkVFZEtjdndpTEJ0c3dGbWFmZ0dUTjJpaGlMV2hKUDEvMUxMcklT?=
 =?utf-8?B?dDBxc1hrWGVBcDAvSUF2NytJR21ZcWl0U0VZZ3g4ZFBxYmR6elF3Y1dFUUZ6?=
 =?utf-8?B?YTlCQ2JuRDBBL3ZjMUd2eGhkelNkMFZrUUp1eCtHSHhjSUhSTVhzTkRpbXlH?=
 =?utf-8?B?ZnRHNzhBQjhLSzlFTFFMSkw2UzYrSHJkZHlaWmdxUXVvb0taUmp1cTcvS01Z?=
 =?utf-8?B?ZjZvOC9MeGxkZ3lCK1J3clpYYUFoR3VxYWZ6Q2F4VDJnV1hhZ2hNb29zRDZV?=
 =?utf-8?B?VDdtNzVQSDdXdVRhRlN3S1lNaFRPeDR2SEgwMUFNbUFhd1ZwU3liWS9xTUdj?=
 =?utf-8?B?cHN0cnAzb0ZiaW5jK1F5ZWllSkE3RDJlaVR6ekJjdk5QVDFYQ205bVBFVVRL?=
 =?utf-8?B?di9yUVhOSHd4NGkxWE5hWkM5cWJhLzE0YzNPQjgyY3ZwcGVmYWJOc0k3S2xk?=
 =?utf-8?B?WjZBQlhpRU9UNi9xdjFQRHpkVXVMUHVOMU8xN1dhaE5YbGdSUkpHQ3p0VnJ3?=
 =?utf-8?B?Qm12N0VRSTRkV1ZQcFJnQ1RSZGFlaVA0c0tWMDg4NkF6b2hwcWxseW83dnRQ?=
 =?utf-8?B?Yk90VjQ2S0MrU01EYk9CUzhhNmNpdkhoeGt0OUs0K2NmMTBSUTliTU1GdC9M?=
 =?utf-8?B?QTdwdWxZYiswb2doMHVGNVlzYm1SU1hoZXRJN09kREh4bFdSNmV0NmFGVC9P?=
 =?utf-8?B?d01TcWQxSUdpNElaTDZ4SnQvTDhwK000NzhOeTRFSFpLL2l2eDl3SDBmbktG?=
 =?utf-8?B?ZVNoRGdFRmNuUy9WQXNwclNCeEV1d0ZtNmZXNTV5ZlY4OFJGNkNMZU1KdTJJ?=
 =?utf-8?Q?sls8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzUzTnhycjVTVUtab1FHZG9SdWM3TmtwLzRsNUNIRWRRcVlseU0vNWlaMzQz?=
 =?utf-8?B?d1J4S1A4L0dlZDJHSVhRcCtzMGUvaE5PbWdVdWtjbnBYTmE4V3JOZVdIUklH?=
 =?utf-8?B?SmE1ZzBkbHhrUXVsSlJGWk8zdXVWcHRCbUVSeCs1MDVvL2ZpNG50U0ZUc21C?=
 =?utf-8?B?WjFNVXNLczBreDUvalp1L0FQWXMzVTk0VnRlV2JuMmNHQXRFS01nZUJhbjFo?=
 =?utf-8?B?OGhzYmtzZnhaTEp1LzlXUWhqRDBraDFTalM3NWxrYVJvQlZGSHNhTlpkd3NN?=
 =?utf-8?B?S0dLcHhRQjIzdm9wY25GckZ6TE9lT0YyYzUyK3lmb0JsOWZoQXI2TGhwUVV2?=
 =?utf-8?B?MHFtR2NuQ3BlZzNBQXQ1QVB1ZHVUVk0rRGR5d0V1ZVM5TjFxYWZvU0Z0VTV4?=
 =?utf-8?B?TmtFVXFUeko4OUJ6Q2hMMnZ4RlNOZEhDZnJ2VldhY1BnbDJldEhKOVgvcFR2?=
 =?utf-8?B?OTNzSk0xbVhlWG1WVUVWNXN3RnRtQkFJR0tRWVJqV3FtbUpvZUJ2U0VQVlFl?=
 =?utf-8?B?U0JqVWdIUjgwRUFQZXFRSHNJa2lDSnlGZ3QwVGh5aTl0THZHMlIvSGJkbU9a?=
 =?utf-8?B?NUtxcnhHRTBscTFDNzZpbmFhY3dZVVpiOWdBbHovNjlUQWMzaDRBck4wUWEr?=
 =?utf-8?B?aVltZXVMbER0eHJwY2dKK2J4aU54eXBTR2VCeEQ3c0krK0RYZWlqOTFtTmFh?=
 =?utf-8?B?bStMV3lLeGpNSTdrNWI3clU1aWdHallFSmcwY3d5NHoxQy9BNnh3SFhBZjUv?=
 =?utf-8?B?TUhURXZOcFUzL3dJYkd4ZEFyV2Yrd2JacUd0dng3UkZMK0RYRi9VN1M0cmo3?=
 =?utf-8?B?OGRMenB3NGxhZHdlZEtjaUszb3BGdFFxcXBEaDFXVWNCRldISTlQYnhXMlNu?=
 =?utf-8?B?Tmh3YkdnbDBkVlMvcUNORjhxNld6MEJXajVaYTRNdEpraEl1bGxIODJxdXB5?=
 =?utf-8?B?UDBTTkloNEEvVHVWbm12amZxM3JRSURpaXFKQUtlc1NCVDFXcno2c2hiNnVv?=
 =?utf-8?B?VVo0czBBd1VHQUxHM0c3YSt0cWo1dzlsTXlMemVpeGRtS2t2VG9xY01XQzhM?=
 =?utf-8?B?eFYrSmU1L2dxY0U1eEFIZ3RhRnZ5bFJVMkRaM05ZQlFxMGJyMDByOGVCbm1v?=
 =?utf-8?B?UU9WUFhtbzBGekZOeU9TUUgxSmZoWVQ0aHB2bVZHMnNkcGNBYmNRN3R0SW04?=
 =?utf-8?B?OHlsWmtVSnZ6RlFxOEh3MFpNYXU2SC9YQ3MzeEVjaHZXeDFNVHFrY013RVhi?=
 =?utf-8?B?RVU1cytmVWlueEdacUpmcjhHQlF4QnMxbFZXRUlLS0VsT0JaVC9WMEVVZm1S?=
 =?utf-8?B?eVFLWXFMcXQ3a0w3anpVWDRMNE1xTEhnY2l1amx4Z2tzeC9wZUhtSS9DZUlU?=
 =?utf-8?B?YmJaZHdhWXFaemtTdVZNcUxBNkV4YU9GZUlQV09tNmIwYmZRMFVWVUQ1RnVv?=
 =?utf-8?B?eERnTmhyS3VXaWNtNE5pOUR3cVg5QTd6dVNZQ2hZNHFPeDk1a011cjRJZndW?=
 =?utf-8?B?NWRPaEI0V1NQV2M5bE5VY2hmbFNBMXNBVVY4aWpuVTdyMTk5S0FGOXZYOU1U?=
 =?utf-8?B?OFdvWEV6VEgwMTVteXdhdzBWdFk0OXlGYlBPUjF1SGE5V2lRU3pUM1dwY1ow?=
 =?utf-8?B?Rm1xMHJjTXl4WFkxY09sNEV4dnBUaERTakVndHExbTlZeHdNUDhVeVhWZ04w?=
 =?utf-8?B?Sk5aVFpMVy9oWmpEYUZTOXdiY0x3UU80UG9zT0ZobWl5bW00dmo0cFNONGhS?=
 =?utf-8?B?VFI1TDdlSXYvY3Y0S3dOVGluSC9wQjUxejIrWlh5Rjl5QmozbzFkOXVaSlpM?=
 =?utf-8?B?Mm4xMzJTcDE5S3pQVjZMcWpVaGdoZkZVSXpzUnk5S0xsS1Z3aWRGbDJxWHRJ?=
 =?utf-8?B?Tk5kZjZZZ3ZELzYyaXo5UjZXYWRFMk1sT245Y1gyakJCTGV4eCtWSjkyVDVK?=
 =?utf-8?B?S2VLZTM0SU1MTnA0QmdKQzkzYVlOaThDS3QxQXlzc3dwTlRVZVcxSFJudXZk?=
 =?utf-8?B?MDRlcWJjbXYrTUsvYjh6ZCsvRWlLaWN2cHY1Q3dkS1d3eC9pWTFqR1FraWhr?=
 =?utf-8?B?V3hSK25hUTJ4UkNTdjErVmJuYWdyTVV2UmJnMDBSUVpSZCswMis0VXVBTHlR?=
 =?utf-8?B?eDE2enJManNSR1U0RmhtelZiZGxIanA2ZzVBVHFsQzdrTkhpUkk5aHVyMmxN?=
 =?utf-8?B?ZUdDWXdITHhVam5VdkdTVzFHN0FDVGdYckVNY3g4cTAvZXlCYzdHVlBLV09Z?=
 =?utf-8?B?MzYwUFBIZEQ1d0g0RXJ0ZFA0WnBnVEpjbXlzNlkzTm5QbVlFMUU3TjlnbXky?=
 =?utf-8?B?R0h6TEhtSFVzbWNIcU45NElCN1JYSDRDdm9lSGdSczlOTmFFUWY2QjBiMTd2?=
 =?utf-8?Q?C+JG8WUrqCIud7tg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b65ada-6182-4614-839a-08de5eee0e16
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 04:22:46.8115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tf25zCV0V3cn7yixT6pw4pvR7+PL3PyIkGS2IWeQGzIy5NWphcOYiazNBjQqwtaYPY52lmSqqGMsxnWqWRnpxJL7l2QRXam1IZDjeYrGlHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE99BD3AEE
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
X-Rspamd-Queue-Id: CAF58ABA78
X-Rspamd-Action: no action


On 1/28/2026 8:29 PM, Jani Nikula wrote:
> Move enum aux_ch from intel_display.h to intel_display_limits.h to avoid
> having to include the former from gvt. This currently happens via
> intel_display_types.h, which we can also drop in favour of
> intel_display_limits.h in intel_gvt_mmio_table.c.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.h  | 26 -------------------
>   .../drm/i915/display/intel_display_limits.h   | 26 +++++++++++++++++++
>   drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
>   3 files changed, 27 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index f8e6e4e82722..4cced16af8ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -135,32 +135,6 @@ enum tc_port {
>   	I915_MAX_TC_PORTS
>   };
>   
> -enum aux_ch {
> -	AUX_CH_NONE = -1,
> -
> -	AUX_CH_A,
> -	AUX_CH_B,
> -	AUX_CH_C,
> -	AUX_CH_D,
> -	AUX_CH_E, /* ICL+ */
> -	AUX_CH_F,
> -	AUX_CH_G,
> -	AUX_CH_H,
> -	AUX_CH_I,
> -
> -	/* tgl+ */
> -	AUX_CH_USBC1 = AUX_CH_D,
> -	AUX_CH_USBC2,
> -	AUX_CH_USBC3,
> -	AUX_CH_USBC4,
> -	AUX_CH_USBC5,
> -	AUX_CH_USBC6,
> -
> -	/* XE_LPD repositions D/E offsets and bitfields */
> -	AUX_CH_D_XELPD = AUX_CH_USBC5,
> -	AUX_CH_E_XELPD,
> -};
> -
>   enum phy {
>   	PHY_NONE = -1,
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index cb3c9c665c44..453f7b720815 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -138,6 +138,32 @@ enum hpd_pin {
>   	HPD_NUM_PINS
>   };
>   
> +enum aux_ch {
> +	AUX_CH_NONE = -1,
> +
> +	AUX_CH_A,
> +	AUX_CH_B,
> +	AUX_CH_C,
> +	AUX_CH_D,
> +	AUX_CH_E, /* ICL+ */
> +	AUX_CH_F,
> +	AUX_CH_G,
> +	AUX_CH_H,
> +	AUX_CH_I,
> +
> +	/* tgl+ */
> +	AUX_CH_USBC1 = AUX_CH_D,
> +	AUX_CH_USBC2,
> +	AUX_CH_USBC3,
> +	AUX_CH_USBC4,
> +	AUX_CH_USBC5,
> +	AUX_CH_USBC6,
> +
> +	/* XE_LPD repositions D/E offsets and bitfields */
> +	AUX_CH_D_XELPD = AUX_CH_USBC5,
> +	AUX_CH_E_XELPD,
> +};
> +
>   enum intel_color_block {
>   	INTEL_PLANE_CB_PRE_CSC_LUT,
>   	INTEL_PLANE_CB_CSC,
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 052596ac83a0..c0154fd77fc9 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -11,8 +11,8 @@
>   #include "display/intel_color_regs.h"
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
> +#include "display/intel_display_limits.h"
>   #include "display/intel_display_regs.h"
> -#include "display/intel_display_types.h"
>   #include "display/intel_dmc_regs.h"
>   #include "display/intel_dp_aux_regs.h"
>   #include "display/intel_dpio_phy.h"
