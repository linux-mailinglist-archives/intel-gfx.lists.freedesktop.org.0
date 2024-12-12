Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B059EDF21
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 06:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A06E10EA15;
	Thu, 12 Dec 2024 05:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hs0Uo0T1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5395110E7A4;
 Thu, 12 Dec 2024 05:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733983139; x=1765519139;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kw5yYKVVFl09B+8BAwnDgWm5ThB3O4Hr2BL59uUDYkA=;
 b=Hs0Uo0T185Tk1cnctpvDy3FKWyBoPYA3Sr86wIdaVhdPGV8hwHZZmzxF
 NO3/qduXeJidzMWHTPXnKKi/c95gWqfA2Zw0DzcyqNpJesq/kTMhwCK0J
 Vv8dKZLkIcXdhRGhgHOUWX5/IgwEK3ySsZsaSnbwgPzH7vphDDB9FbrJn
 SR8+UMkVfXSPUXUMjJdOdOLV6C5AaKCp+g0CGoDtwlrzwe0GPAsuRRa39
 NrHxmNk4wtsYfCSw4W3lTv5woPQ9SMBKKFcWQBi2MDi+K2wbkX2uqizMB
 gZpxP+J1hl9Zs9lKa2/A0QIRps0sSCml5niu9gpGJ2Y/8lnyv7/a2e3Ga w==;
X-CSE-ConnectionGUID: 31DC41ufRQ+l3VzHVVYF/A==
X-CSE-MsgGUID: jvodm7aUSx2ijrr3vmLRKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34305992"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="34305992"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 21:58:58 -0800
X-CSE-ConnectionGUID: Ec8vAPhkQLahPjKi99mHtg==
X-CSE-MsgGUID: flk7xgs1QmmdWZP5NFelrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127100451"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 21:58:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 11 Dec 2024 21:58:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 11 Dec 2024 21:58:57 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 21:58:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=icnSu2dTGHPUISrutrzFfGyFm4z6VcT/yNrrV29NbdHmCfUlJJckVNwZBtbuqMuaBlPfeO2n8tCa+7vve6PWUeV0E0oZ3p66Vi+fH4kqQ1HUKAJzAeCcWNQaA0ky52pkUv3K2HVsj50kbQ3pDOKtnpyAD966gAgwx14P/Kr2//GX5JvCjXsfFpATfo6PE/M1krGtxnn+YiiYbfPia6TEvhRyldHsc09rWr4BasOK7tJtqwSF0GB85F1nGgfbQrEoJb2jqxJKqi1LIk9kUfZRANNWFE/ROYqrLIG2r4VNFBKDpnMKRC4FKXZ0Pl3YV1bOfLFW4/Gp2jXSpzO/3mwNBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ehz3ef+lEqZp2X2nHsKoYc7GN4zmisI/6i5pxcAFkyo=;
 b=G2TaMDo7+E0ai+HbASCb0lGoRWywHZs/8jtNSZjwtD3Et5pLDQZMx1qJj9sMrVlAtWwwAJYdfKdoZEv5KLVUp5e7oiZUmRfvJzf+gR+75ihJxqn6cgX045gy1+1C8tHePz+qOUHPgUI9TL2lqh5H+MBvRcPoj3xEzpgdkKx0QQxVXgOkX4wxT1zctiWaVOHFiIiLGD6ZbgDl0TBnKnQT0bdFalvVwcdKz8COqcbdRjUf5pjMtMrK4h2FTExKP9owi8TaHgYfFg5xnFrRh42U8jK/JED/k7+IUczEnQDVt+Tmv2E2Qqgbmj7AzMUxuMXUg4EJQXUci8KI2nKdPNiCsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6656.namprd11.prod.outlook.com (2603:10b6:806:26e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Thu, 12 Dec
 2024 05:58:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 05:58:49 +0000
Message-ID: <3021fedd-0c64-4eb1-8b2b-bb6d16aa6a08@intel.com>
Date: Thu, 12 Dec 2024 11:28:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/display: Add registers and compute the
 strength
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20241114101825.3413688-1-nemesa.garg@intel.com>
 <20241114101825.3413688-5-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241114101825.3413688-5-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0243.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6656:EE_
X-MS-Office365-Filtering-Correlation-Id: e88ce90e-292c-4b67-915a-08dd1a720c26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXJKMHVSbVhwd3NQL0xJL2lPWmJnT0h0aFJVZEpHdng1a1BHMmNYNjM2RnFO?=
 =?utf-8?B?bU1DY0hoRVg4K3JxWCt4V294N0FOVXh3YmF6ekE4VE5nYW9aMHFnU3B4NTJt?=
 =?utf-8?B?ZkNXMkJWZEdBRTllOWFKWlhSY014Q0lXdHJSREVScStBWmRKSVRrSlRoallI?=
 =?utf-8?B?MVRFcHVESEVVSnNEVWhyUmVsWlFacFZVbGRKaG9iU2JoSUpueHlkK255ZHZ5?=
 =?utf-8?B?THliUUFJM1l5UU92T0RPUWk1SWxLQy9XQ0hzQ0ZDcHNIRzhweHUrY0RuN0JI?=
 =?utf-8?B?T1JxL1RYcWVrbkpMS2dxaHVSWS9aQ2hLRWVxT0tCMnJqWGJSemdsRm1XTjlX?=
 =?utf-8?B?Y3c3OW1XeU9FUnZxSGhmVWQrQWxvbDNrTkxrb2UveXpUK2gwcVkvWFhnSE5R?=
 =?utf-8?B?bVpodnh1TW9aZG16b3BFNVhQM1FjQllFM1lKakp5ZUF3cnJZbXl6RktsQWsv?=
 =?utf-8?B?ZStiZ05nYlVQa3lNSFF5aUNYSk9XZHNGa29WdFFMeGE4am5QbWFyVjBYS2pC?=
 =?utf-8?B?aTRjUGNrOEFaWURtMitUbHVocnRuMGVMcEdQMkJNWEw4MHdKS3VxeEZMMmxz?=
 =?utf-8?B?YWVjWlRNUk1UVjNGUVFpWTJMZ3NTb2JZOTRmRFU2WktyckpsQ0ExZG9PVGlp?=
 =?utf-8?B?bU9mSVFjeWhaanFZa1B4cmRaQWlRVEozRWRXTlhDams0NzhpNERkNXRTdGxo?=
 =?utf-8?B?dStNd2tJbUhpVzM3aXNFZjFFaG9udmRRWUdUMmRFUEhsKzlNTCtZZ1ozbk1O?=
 =?utf-8?B?OEVhVjk0VDUxTFJkd2x2Vk5uZURXYk5EY0NCYk0xa2dCMWlvZks3WXlMcTdF?=
 =?utf-8?B?eUo3N1lmVlZKMHpVR2ZnQXkxeDVud2ZzOEhoRVNWeTZuVlRLYlpZZ1pwUGtW?=
 =?utf-8?B?MnhGbnkvcnBBY3pQUTMxcG13TWxxaVhXLzdOMHNycWVZS0c3S1Z6amw2QVNK?=
 =?utf-8?B?bjZjRnRKUGQvWXlnM1BYdERKU0h3VlE2eEovOVQwVTRucmV2ejNhRDlUNVVJ?=
 =?utf-8?B?TUVDYTQwTGgySHNreXVmQzh6TEJReVJ0NGVaYUtmOUpCL0FRbFAzcU1hZmdx?=
 =?utf-8?B?L3pKRjhWY2E4blhEelcwaW1rT3I3UVdhRlFpT0hxbjBWTmU3OHV1RjBtcXlr?=
 =?utf-8?B?VklvYlJPV2Y0T3FZWDBJc1RFS3gyZXpzT1NtZjJVUkpwMHl0KzBmeU01L1pk?=
 =?utf-8?B?Z0ZFZ1dpbmxMMVVoYnBVTVNlMzBaaTYwU0lmWEtaUVpXREJBRlMyaHI3aWV1?=
 =?utf-8?B?Skl6aXE2b2dhMGJBMmxSOXA1Z2pZU3BLR1J3MkVSWElIVHRsUUV0OFVEdjNr?=
 =?utf-8?B?MWJpY3RXbndON1FmQmRUMEwzOWl0dkdnU0Irb2hlbVFxWWJ4T2hUT3VaUENU?=
 =?utf-8?B?MVJKL01BRjZnTFhMR0RiT1ZLNG8xQmdLb3hQQVhsOXFxYkdidUo1QUtnZnFU?=
 =?utf-8?B?VWh4VnhtbTZQWXltZDJ3S0FJSFp3MHlmeFlBK1RlRU5pYW01Vm5SWWdKU3FK?=
 =?utf-8?B?V3FPTHBTbTlQcktDSE9jZzhvL3lMSW85VC9UTHZoTTlPMGc0THJWbmU4enE0?=
 =?utf-8?B?S2pLYSthak16aWNETmdWSzhOTUlwOWNjQmpWdC9NVzlTVXBSWkM2Y2prR1RY?=
 =?utf-8?B?N1ZmVnBQNnV2U1M0cHBQRGpCMjNTMVlkTXZmQWw1ZHlFZTNBZm4wbCtSRzIw?=
 =?utf-8?B?VGgvY2Nzc2hpeVFnZm4xVkZJWlJXYkowK011TTdrREp0eEk4R25mdHVhQnpS?=
 =?utf-8?B?a0NPQm14WmpyUzJMUDh5OERDVHFKUFFLa1A2T1I5TlJwc1YvRHBqRzhvSDR4?=
 =?utf-8?B?ekpuL2xjSGRjZURWTm1idz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnZmYUhON25tQzA2d1FwOHMvSXMrR2VsVmhZbXEraUZkR2VtdVpRTjNNVWRv?=
 =?utf-8?B?VlVZUE9XVFluUlRldWs3Vk9QRVltN3ZRSU1wOUlPK3pNL3hyamNPUDN6MFNP?=
 =?utf-8?B?ZEFSNGRLcGZhdUF2VzZWY0hyN3J2RmFCWlc0M1kzYk9idWxIc2RPNkNNd2hL?=
 =?utf-8?B?TlZQMlROMlY0c3pjS3k0Tm9lSGYzUkFBZFB4eDcwVjllUitVMS9jR3hRTXlM?=
 =?utf-8?B?cFlIaXBMOEVnOC9QNHVCT2xrU2V5UnJTdldHUldZWjUxTkQ0V0F1bDU0bDVI?=
 =?utf-8?B?TytibzJYT25jRGNaU2hGYVJ5TUczZ0tJN2lRN2o4Z3BKdTc0RGR2dFJ4akFn?=
 =?utf-8?B?QVptaC9CSjBCdkpIRDBoU2ZzK1dGNUUwYzF0M2hLUnAvNEFDZzRLUTlsakJT?=
 =?utf-8?B?OW9LTlhoeU9LVkxraHMxVTdSOElYcXY0K3lQSTloYVRQeGR3RitxcEJhcGQ0?=
 =?utf-8?B?ZjFwRzBxSERlcFVDVGh6VHI3MEJIMkhuRjA0b3EwS2k2UVFRZjFYOUpZeDhQ?=
 =?utf-8?B?MmFRTEs5RmFqSTllZUhWRWxqaVdVcmNMamVJL0EzbGtMUFp1eVpTcjZROTFW?=
 =?utf-8?B?WXVWbldQSHVvcTFTZlJnQXRKeTB0WWRpLzNvcFVyeWQ2a0JacFNwRlRiNHZh?=
 =?utf-8?B?QmwxVTAwZ2VkWW1RalcybG1PL3VSZTYvbWxiNmdkMmYxb3pNcVJWSDc0NjhQ?=
 =?utf-8?B?d2c0UHkrMkk3OUNMcnhJZWtvODl4K3VJRFcyOUFRc1RKZWs0eGZhc21SMnhr?=
 =?utf-8?B?dXdibjdNVVJmWmpjU0RIeHBwWkk5YXV6L1hPTnpsU0kxWkhCbTBmU2ZybzFJ?=
 =?utf-8?B?M0Q2ZkFQRUM3Y1JuaHhRUXZMNjlNeUVqdVF4TWdKNWFhNVorVngzVzQyR1I1?=
 =?utf-8?B?MlRjY0ZKTENzS011OGlUdFgyS211UlNkSm9lVDZTZUYzeG03TXAxUHNCZEUy?=
 =?utf-8?B?WnlmYmJoTzhrQk5ORWY3UjNLLzdrcTVVQm1XY25hOUZGSUZWUnlSaHZ5R1Q4?=
 =?utf-8?B?TUFRTmVScDFYMTVuN2tpdGpSdHNhK3VNeFRsQUpNRHdtOFhUelkzWFpOMkUr?=
 =?utf-8?B?WUc4djduWFViOXRxbjlMNGZzMlNsRTB4dHVQT3NFOE9GTUxlbEg0R3ZSeTI2?=
 =?utf-8?B?ZXV1WGVybXJwR0hsK0EvSzZuaGJzKzl0UVcwdXg1L1drL0xBL1Mzdk54NS93?=
 =?utf-8?B?MlViNkI0QkN0QUcwYnREUjFUT3Q4N0prM2ZpWStwVGJVNFJqVUJqYXY1dlJQ?=
 =?utf-8?B?cm1EeCtuV3laSVNXeG5oQmNhVU9MbFlYSldDMTNNS2VkVGRIL0dQVi94dlN5?=
 =?utf-8?B?RnlUWjJ2Q0Yyak5ycHJLWHMvZ1Awcjl0Y0pybDlPVXVXdW1pcTVFalEwbjZS?=
 =?utf-8?B?R3FlZWpyVURNVERlcGt5bC8xNUZ2N0FIM0pZR0E4NHozdXJURWRIMEE0ZFRV?=
 =?utf-8?B?UG9NdCtnWU55VGpYZUZMYWhtRzZhWjR5Z1JtUU50cVloNk1iU2RMbDFuK3M1?=
 =?utf-8?B?ZUpneFFJMlZ2L0tsVzNWQ2JxN3JleUJhY04wTjJYSVZ5c0tqKzk3YzNGZU9q?=
 =?utf-8?B?RE1zTkFSQ0VTdnpZNzRhM2k1ZnlEb0pjbXZXYlE0b1k1WUFjQjRvdGNpQ2hk?=
 =?utf-8?B?Mk1NMFFnNGQxeTJxSWp6NWE1Q0RpdXEydmFUTUV0R0tlSmJIWGFDM0N0M2I4?=
 =?utf-8?B?YVF6RVNaSk9PTjAxZjE5K1JrQk53anZQZXdHSVJBUDNUS1I4SnBlSldEKzN1?=
 =?utf-8?B?SnM4aGozTG1ROTBibXFDcE5sRWVZRTBqTDZleUs3dHBsS3NQNi9wTVFWSDU5?=
 =?utf-8?B?bWREbWNhWHVOQkVZaUNSeGYybEdKMEhkRGVlT0U4aklNVmRnR0s0YVNXV21F?=
 =?utf-8?B?NkUwREtScjAvREZxNm11MTNTUkRZWXpCMDgwQ0JER0hQK3BxQUo5MFpSb0t5?=
 =?utf-8?B?cEQ3Q0FEalhwUi85VG1mSytDdGV0QTM0cy9BVXAwL25rZG9TbXNqNzZ4UExp?=
 =?utf-8?B?dGw3dGN3MUQrVDRLVFlldUxiOEJpdmV6NkJpUFNhT0xERVdtNmU4c0dBL25Q?=
 =?utf-8?B?NkprRFBKaUd3Yk0yVGZoUUE1UjVCa2JXeFUrMmVpWm1PRkZBbzVrSHpSWllt?=
 =?utf-8?B?eWh3NUFZUWw3M25WTVh5aVZwa2pFVUZnVFdueEhDVHJMYXR4VENBdzJZV01R?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e88ce90e-292c-4b67-915a-08dd1a720c26
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 05:58:49.2615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NVcMJuwYs9apKotTG9upsenL8g/OzimX2/qzf1IJ09yDTMe4SQ2iUqT6HTAZHGEpGW5teffD+2S7hnef3FYBafiRDrGAbTzM1NtZgbbu0Pc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6656
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


On 11/14/2024 3:48 PM, Nemesa Garg wrote:
> Add new registers and related bits. Compute the strength
> value and tap value based on display mode.
>
> v2: Replace i915/dev_priv with display[Jani]
> v3: Create separate file for defining register[Jani]
>      Add display->drm in debug prints[Jani]
> v4: Rebase
> v5: Fix build issue
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_casf.c     | 114 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_casf.h     |   7 ++
>   .../gpu/drm/i915/display/intel_casf_regs.h    |  17 +++
>   drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
>   4 files changed, 144 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index fce0b997ae62..396a9d0d6d61 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -17,6 +17,9 @@
>   #define FILTER_COEFF_0_0 0
>   #define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
>   
> +#define MAX_PIXELS_FOR_3_TAP_FILTER (1920 * 1080)
> +#define MAX_PIXELS_FOR_5_TAP_FILTER (3840 * 2160)
> +
>   /**
>    * DOC: Content Adaptive Sharpness Filter (CASF)
>    *
> @@ -55,12 +58,92 @@ static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
>   	return coeff;
>   }
>   
> +/* Default LUT values to be loaded one time. */
> +static const u16 lut_data[] = {
> +	4095, 2047, 1364, 1022, 816, 678, 579,
> +	504, 444, 397, 357, 323, 293, 268, 244, 224,
> +	204, 187, 170, 154, 139, 125, 111, 98, 85,
> +	73, 60, 48, 36, 24, 12, 0
> +};
> +
> +void intel_filter_lut_load(struct intel_crtc *crtc,
> +			   const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	int i;
> +
> +	intel_de_write(display, SHRPLUT_INDEX(display, cpu_transcoder),
> +		       INDEX_AUTO_INCR | INDEX_VALUE(0));
> +
> +	for (i = 0; i < ARRAY_SIZE(lut_data); i++)
> +		intel_de_write(display, SHRPLUT_DATA(display, cpu_transcoder),
> +			       lut_data[i]);
> +}
> +
> +static void intel_casf_size_compute(struct intel_crtc_state *crtc_state)
> +{
> +	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
> +	u16 total_pixels = mode->hdisplay * mode->vdisplay;
> +
> +	if (total_pixels <= MAX_PIXELS_FOR_3_TAP_FILTER)
> +		crtc_state->hw.casf_params.win_size = 0;
> +	else if (total_pixels <= MAX_PIXELS_FOR_5_TAP_FILTER)
> +		crtc_state->hw.casf_params.win_size = 1;
> +	else
> +		crtc_state->hw.casf_params.win_size = 2;
> +}
> +
> +bool intel_casf_strength_changed(struct intel_atomic_state *state)
> +{
> +	int i;
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_crtc *crtc;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (new_crtc_state->uapi.sharpness_strength !=
> +				old_crtc_state->uapi.sharpness_strength)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>   void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	int id = crtc_state->scaler_state.scaler_id;
>   	int i;
> +	u32 sharpness_ctl;
> +	u8 val;
> +
> +	if (crtc_state->uapi.sharpness_strength == 0 ||
> +	    crtc_state->pch_pfit.enabled) {
> +		intel_casf_disable(crtc_state);
> +
> +		return;
> +	}
> +
> +	/*
> +	 * HW takes a value in form (1.0 + strength) in 4.4 fixed format.
> +	 * Strength is from 0.0-14.9375 ie from 0-239.
> +	 * User can give value from 0-255 but is clamped to 239.
> +	 * Ex. User gives 85 which is 5.3125 and adding 1.0 gives 6.3125.
> +	 * 6.3125 in 4.4 format is 01100101 which is equal to 101.
> +	 * Also 85 + 16 = 101.
> +	 */
> +	val = min(crtc_state->uapi.sharpness_strength, 0xEF) + 0x10;
> +
> +	drm_dbg(display->drm, "Filter strength value: %d\n", val);
> +
> +	sharpness_ctl =	FILTER_EN | FILTER_STRENGTH(val) |
> +		FILTER_SIZE(crtc_state->hw.casf_params.win_size);
> +
> +	intel_de_write(display, SHARPNESS_CTL(display, cpu_transcoder),
> +		       sharpness_ctl);
>   
>   	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 0),
>   			  PS_COEF_INDEX_AUTO_INC);
> @@ -89,9 +172,23 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   
>   int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (crtc_state->uapi.sharpness_strength == 0) {
> +		crtc_state->hw.casf_params.need_scaler = false;
> +		return 0;
> +	}
> +
> +	if (crtc_state->pch_pfit.enabled)
> +		return -EINVAL;
> +
>   	if (!crtc_state->pch_pfit.enabled)
>   		crtc_state->hw.casf_params.need_scaler = true;
>   
> +	intel_casf_size_compute(crtc_state);
> +	drm_dbg(display->drm, "Tap Size: %d\n",
> +		crtc_state->hw.casf_params.win_size);
> +
>   	return 0;
>   }
>   
> @@ -136,3 +233,20 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
>   					      filter_coeff[i]);
>   	}
>   }
> +
> +void intel_casf_disable(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, SHARPNESS_CTL(display, cpu_transcoder), 0);
> +	drm_dbg(display->drm, "Filter strength value: %d\n", 0);
> +}
> +
> +bool intel_casf_compute(struct intel_crtc_state *crtc_state)
> +{
> +	if (!(FILTER_EN & 1) && crtc_state->uapi.sharpness_strength != 0)

This is not very clear. I think (FILTER_EN & 1) gotadded erroneously.


> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index 568e0f8083eb..05b0abddd917 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -9,9 +9,16 @@
>   #include <linux/types.h>
>   
>   struct intel_crtc_state;
> +struct intel_atomic_state;
> +struct intel_crtc;
>   
>   void intel_casf_enable(struct intel_crtc_state *crtc_state);
>   void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
>   int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
> +void intel_filter_lut_load(struct intel_crtc *crtc,
> +			   const struct intel_crtc_state *crtc_state);
> +bool intel_casf_strength_changed(struct intel_atomic_state *state);
> +void intel_casf_disable(struct intel_crtc_state *crtc_state);
> +bool intel_casf_compute(struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> index 0b3fcdb22c0c..fb92978e386a 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> @@ -15,5 +15,22 @@
>   #define MANTISSA_MASK			REG_GENMASK(11, 3)
>   #define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
>   
> +#define _SHARPNESS_CTL_A                0x682B0
> +#define SHARPNESS_CTL(display, trans)   _MMIO_PIPE2(display, trans, _SHARPNESS_CTL_A)
> +#define   FILTER_EN                     REG_BIT(31)
> +#define   FILTER_STRENGTH_MASK          REG_GENMASK(15, 8)
> +#define   FILTER_STRENGTH(x)            REG_FIELD_PREP(FILTER_STRENGTH_MASK, (x))
> +#define   FILTER_SIZE_MASK              REG_GENMASK(1, 0)
> +#define   FILTER_SIZE(x)                REG_FIELD_PREP(FILTER_SIZE_MASK, (x))
> +
> +#define _SHRPLUT_DATA_A                 0x682B8
> +#define SHRPLUT_DATA(display, trans)    _MMIO_PIPE2(display, trans, _SHRPLUT_DATA_A)
> +
> +#define _SHRPLUT_INDEX_A                0x682B4
> +#define SHRPLUT_INDEX(display, trans)   _MMIO_PIPE2(display, trans, _SHRPLUT_INDEX_A)
> +#define   INDEX_AUTO_INCR               REG_BIT(10)
> +#define   INDEX_VALUE_MASK              REG_GENMASK(4, 0)
> +#define   INDEX_VALUE(x)                REG_FIELD_PREP(INDEX_VALUE_MASK, (x))
> +
>   #endif /* __INTEL_CASF_REGS__ */
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1b1335e0af68..f5e837310309 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6198,7 +6198,12 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>   		if (ret)
>   			return ret;
>   
> -		intel_casf_scaler_compute_config(new_crtc_state);
> +		if (intel_casf_compute(new_crtc_state)) {
> +			intel_casf_scaler_compute_config(new_crtc_state);
> +			ret = intel_casf_compute_config(new_crtc_state);

As mentioned earlier, you need just one function 
intel_casf_compute_config() that calls intel_casf_scaler_compute_config().

Regards,

Ankit

> +			if (ret)
> +				return ret;
> +		}
>   
>   		/*
>   		 * On some platforms the number of active planes affects
