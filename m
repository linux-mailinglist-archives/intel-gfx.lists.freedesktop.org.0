Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANHlFj2nhGmI3wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:20:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E057F3E2A
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C49010E8DE;
	Thu,  5 Feb 2026 14:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cSuMrPPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD3010E8DE;
 Thu,  5 Feb 2026 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770301241; x=1801837241;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QVPjjejFlYrMljF3G1hRHzpnof2R9DOrO3e5mDp/ybo=;
 b=cSuMrPPRn6cK5OzpqijRDj43WNPmLX19sfmG9T4fI1MACpc0yEIEOC5c
 C3hUnxagW6JWH92qZWbtUAcJsMygopB1wEMkQ+ps2rqrcxoxb+7auCfAD
 m9LSg/Yu0nmLJJBEpms5b6JtH/4k5KhTZF+TttnEDbLCARWd7lZ0Lknrn
 tliRTVy6YN9ywtADcjaohymEe2D5uFqvkn5kmZtMBz0lUL0QZVuIXTvCe
 DpkMd1m+ZdUYvOVI5Iua/d2dQAv/6W9tZrZ3tCgIL29dMsVHZMXvmo+j1
 x0KeaSubUyMP34yBWOnsDbPgR3ofu3Q8nPn3NhOwx9yFQBYG/Mz5dBnGp g==;
X-CSE-ConnectionGUID: y50ZoTw4R7KLJBjQwl8d9g==
X-CSE-MsgGUID: eh4hRMP6S/KqekhDx0HaPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75354279"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75354279"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:20:41 -0800
X-CSE-ConnectionGUID: dYi+QrSlRFiPzQ9I3g0z6w==
X-CSE-MsgGUID: PG9YazeETgak9e5lz8tuzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215036614"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:20:40 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 06:20:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 06:20:38 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 06:20:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l5guAFTwWJWQgMMYZeFxHUi++yvWY+R3jX1XP6RaBycUkrE38kMVrf5gbC4dSGZA/PNMK56oooXF7JPhfbcOxnVW4VsWh4QzeiT/T6Ga42ax1elUCBPi0x0TxP4SUrwJgrDwsK2btpYd3mDUunxIFu3n+CqS/zKb32PZvkfVAO1C6mKiy8Yw1y7NFGfY+521obggOVjvKV/xtl1/ULTg4ZAX13ajCMYPcaKOrvD+OmFkBsbrUdb/uWmOm4m+d4aeBZS0klIjHpuDulGs4vgfCghp/hGJSpGfCC9c27JHZ4Myol6BEfNEPADiQs3Si8OYrHrc1Y5+1Oh4s/sE35l1iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVRHvL631ZqK4R9gxKeb0hCYbkgq822jasmAISfqNeA=;
 b=YxGGWBNjqVF13qbBsFPuJylTmJZ9yArqYP8/i8PMeFxXUGn0UF1KaZkLy2U43rGbrQMl8SId0TpVPeUU35TQq/eED4rJGKPiWKLNZ7eROHLHYw1DbCIFgD7GzGTBUylWIUveO27Qiz5B2j1mVZ8xyPLXOKI89Iko+JifeHcQlGapVof9BFAv/SNY/OHM2hgFajPav21xRcCugTOUmcBDzUxnJ21pJ6Dm4zr2eAkujH8ADsyBK50zzKWdTogyA2ntK4SwaRaKrHp7C/ae9wGtTVu7Sx8aScBKJOoJPD3PkHFvXBrqBEs0zQf+3ahViHh1bRwDDNpLSP3a7FMDV0191w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6899.namprd11.prod.outlook.com (2603:10b6:806:2a7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 14:20:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 5 Feb 2026
 14:20:30 +0000
Message-ID: <6f94a19b-2982-45ea-964c-e342b6a5fe1b@intel.com>
Date: Thu, 5 Feb 2026 19:50:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
 <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
 <aYRlrws-fvk3feUU@ideak-desk.lan>
 <db09f0bf-c782-4d9f-9e9f-0dacbbc77cfb@intel.com>
 <aYSSsZXAl1AkTglZ@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYSSsZXAl1AkTglZ@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0093.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6899:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f28c095-2291-4bd7-e91f-08de64c1b747
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ujh6aWtJMncxMEpvSHFtOFVkSlJTYWtsdEh5WExaZjZDdVUzd3hEVnd5dHMw?=
 =?utf-8?B?TVRHZXgvcTVCM2VINjNiZDB4bWFDUTZpMzcxdGU0TGh3YThqM3FFK2F4bTNy?=
 =?utf-8?B?VWFXT2l4TTZieVhQdWlWb0c5eEUyVFN3NFREWGp4V1VYSmxIZVF4bk0xYVJX?=
 =?utf-8?B?ek9Kc3M2S1ZIQkQ3VDU2TUtCVUdJVmo0R3R6UEJMYjdqNkt0YlFKUHlXYTRU?=
 =?utf-8?B?ZjVldGhMUFRXbUp4amFYSE14YzgrSWdnVi9NS2ZSWGxUM3FBUDlSbjJwNjZW?=
 =?utf-8?B?TGE4UjFXNklEQVRtOFBuQ09SUnlNUFczdGJuZDIzcGFwUlN4dUVBdUpUd2Zp?=
 =?utf-8?B?ZmM5TGhYK00ycHlnZDdQb1JhcGZ1RDB5dGMrUEhlQTRST0JiVWdxaVRqdDMv?=
 =?utf-8?B?Z3l5cURSTmNRUHR5ck5TWDhsTmFVcDJDV1ZVcjlTVWRqQkRjcGhvTmVFYytw?=
 =?utf-8?B?b1Z1UmpOcGg2RHVjMTM2anlOREc4cVNpREovYjMwVnJvb2NBSisvb0tOSUE3?=
 =?utf-8?B?Q1NRUU9pdWdXT0pqWi9SVlA3ZVRSQ1JFY0FVTkRCNHdjdDNlLzdpeUJmQUcy?=
 =?utf-8?B?Z1ZBUkJJTnlCcjJHVVU3QVJzRC8rSE8wTmQ0T2lVbVQ3Zlh2RzFsdXltVlhq?=
 =?utf-8?B?NUNlV1Vhck8zbUZGNmNla2kzd1ZHajZrcFhMNktOOXV6NUFUOXF3VThZT3Ux?=
 =?utf-8?B?RVA1ZHpWSmhpdnFDVWc4WHdTekpra3czZEN1WWdJbHBFSFdhZU5GeDgwUnVW?=
 =?utf-8?B?UmZnNlNKb1NQa0JzcDVoeGFERUVJMnJaaHpiVjE0cUErUzJRN09MMnE1RFVo?=
 =?utf-8?B?NHB3NVpWV0JQZ3JkeStLQWUyMWs2UHY3WUhzL0xZbFZSZElxbnNVYlVQWE15?=
 =?utf-8?B?Zkt0d1pMSDhhR1FIQUtQZ3pqVnNaT1V6Q3ZKYmlrMTBXVEdEajY5VzlPbEx4?=
 =?utf-8?B?Q283SG1XSkJpeDJRem5TUEZIUGtBTzlHSWdSUzZBUFhBU0tZTjZkOGQ2RjY1?=
 =?utf-8?B?M2VvaVJxeXg5WGZ4dC9CbWhJOUNwM0haOUNFcmJZSkkyRnl6NTZ6ZFF4Mkxi?=
 =?utf-8?B?c1BuZ2poZ0d4blV6dEd4cHRYVVNGS0w2cHMrNE9wSWlxZExkcTFQQXhEQ0dj?=
 =?utf-8?B?dW45V3p6TmM2bDlsM2xCaWJSbHZKUmFTdlVkdVNPbDhiaFlWbVZndm5zeUxj?=
 =?utf-8?B?VFI3UFUwWnE4N3VNanFEL3NsWUozZUFNbjE0ckE5TFRORjFHcEhhU1hsbi9I?=
 =?utf-8?B?Ky9EdE13THVTYWtsRHkvUDRsL1FPSGFrS3RUcDhSYzZacUFFUFJpZTFpZlph?=
 =?utf-8?B?RUFwUU5tdFhNekJwd3lrcFVhUTQzM1pqakdhSmNlbHFNS3BlMGpzclNta3U3?=
 =?utf-8?B?WFlDNlhnM0pGanVDMXBUUHhCM3puMFNHOFVvbC9EMm5tSFB1cDQ1ak5GWW1v?=
 =?utf-8?B?d3RBa1Z5UmYzTEVlV1A3UTMxZ2RYMWtRWnRrK1pHc3J0VDdzQWwrbGNMbG90?=
 =?utf-8?B?MzdhMlRZZU5YK1pOcDEwNmhNbWlWY1FiZ2wvRk5Kb0g2TUZqRk53b0VBQ003?=
 =?utf-8?B?cDdMZ0VIOElla1lVRHJQMFh0dytRSWlnZXh2ZzNqdkRTQ0g2dkEyNDZucnUx?=
 =?utf-8?B?NlNqK1JtYXF3REEyMnBpWE1mVi9QT2FmOU0wYnlwMmR2QWljbkVvdnVMWVZh?=
 =?utf-8?B?aHBTQ0lYWnlINmkzK1p5VFh1TkJiMUNiazRKdUJUVUg1bFJTcnMrZXptS2tJ?=
 =?utf-8?B?L0doY2ZkaVpyRHBUaFB2bXNManVkNExOc0tRZVdYeU5BTzZvekpZS0wrSkJF?=
 =?utf-8?B?U1h0MkFNalFCQmpncXIwUWZGdDZPRTVscDZrejhxa0FaSXRiMU1BdVhoeG5p?=
 =?utf-8?B?SFVGVlk0by8vM1RPNlExd2dTQXBOeTJYRGVpUitEano5M0NObGtpVGVXUUlW?=
 =?utf-8?B?ZFQrRmVDMytZL0FHSFdFayt0YzNnSGpDeDhoemViVlpFK3JxZmhOU0pvTlNJ?=
 =?utf-8?B?NGV1M0NBUGtieHJyMVExMjNoMm4yTUlQVzFHS0JkVFRvc016elF4akZwNjZ1?=
 =?utf-8?B?THJIMzA0aS9HZ3RjWEd1VkI4dTB3N2k1RGg4RWlRazZhUy9vN0VsZXJRYmF6?=
 =?utf-8?Q?xA+s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUdwcU5BN1hyMjg2eUZpbXpjelNhU0hUK1JOYzR4eU03c3hqbXpQbVJUOUcy?=
 =?utf-8?B?bERWcEV0V3h2S0ZSZkR1QlphcitEVDN2a3lTNkVnM2I1amo0eXhGRGFuZ0Vj?=
 =?utf-8?B?RUFuYVRrcDNiSk4vdjM1aEVwQUdDQnlEVTk3ajJlUzU2bkI2MG5hOE1Vam1X?=
 =?utf-8?B?Y3dSd2RjYkR0SXMvTTM1cHI3MTlKUHFOOGxSS3doWnUvSHVudWJ0cVRxZk9H?=
 =?utf-8?B?MHhPdVdLSGJlUWY2emhGclBaNm10YWNBVjdVeXBQclA3MXkybEFPd0tHUWU2?=
 =?utf-8?B?OHBRdjh5ZEc2bk9sUWNtbFZ2WHlFdkdCSGttaXp3VXZMa21ZNEdSMEplZXU1?=
 =?utf-8?B?NnlicU9TOUcwT3Q3cmtFY2gyOWczNzYvMlpFTm53Y0FrNnVBbEFuN3Y5YWJk?=
 =?utf-8?B?dHE4aklIYzhZNmRtWXdCMTE1OU9KYis3MXdXRTY1SG9TWWtFZVFJZHpuR3Q1?=
 =?utf-8?B?RUVZL2Zrb0xHczBrbUJUWEZDMmhPNlB3dk5BbkN5WENicVdtSXJERjh3RHZM?=
 =?utf-8?B?a2hZYTVTTHVlb25oZEE4ZC9rNlVRUWl0NlphVXdJcU15VUp5OTZRd2I3d1Zi?=
 =?utf-8?B?R2NnVVg3VCtaV01IL1dSVi9Rem1tM0NSNUgzcWo3SWNWRSttMHVEZUl0UVF3?=
 =?utf-8?B?d2F5WExKanVzMWY5aTBNRmltdnFoMVREZHk1WHRaZkFZYmpRbm1hR3dCYmhu?=
 =?utf-8?B?QmFLaUJ4VU1jR1U5K0RNSElCMFZ1cHE3cGdIUWNaWVNHL1BWSnBlc1VKOWEx?=
 =?utf-8?B?eWdKNzJXd21zc1ViTHZjaWc0aFdxamp0MFRLdXNSNUF5Y0hhTWtTS0NyK0dE?=
 =?utf-8?B?ZGFxbFlhVVJ1SEFIYkNRVCs0Q3FhYURKcUxuZ1ZrWldhcFF0NUI4OUlPaEJu?=
 =?utf-8?B?Y2xYenJnZ0xGdS9kMmhyV1NmbmxNK3NhU3EzQ3BlYmtmMEZ1K1NCalpBRmRr?=
 =?utf-8?B?T2JEcFpWVk11Njh6MVQrMHlCd3R2Y0E3aUhnOE9ERkwwNDRpK2RxTWI0NnZi?=
 =?utf-8?B?bnkwMllmNFl3QmtUTVllSEl4anZzSTJSNFNTRUZ3YzhkRlo2Nm5KRXYwSHoz?=
 =?utf-8?B?d1J6SUJ1b0hDenBkeUJHYUFtdzRiYkdwL3FzQnJVRG9NcSszZ3V5dkJwVzJr?=
 =?utf-8?B?U1d3S1F3d2dYYVlIVjNtR0hkc2NQWUtSRW9KUGRhU1FadWV5U2p1UUtYV21O?=
 =?utf-8?B?QkRyM2JFVUR4cDZ0WTYzL0F1bE05L0d1RU1yMy8yUDFqRlg1MXZ4MGdVUkE1?=
 =?utf-8?B?ZHNTREk4WWF5eW1pcFFMUG9FR2haN2xmdTZJMThpNWVCWm54eTBKOWlhZitq?=
 =?utf-8?B?czl0TnEzT2sxUy9ETDlOWVBFcUd3cWVkZkc2aFlEQWxIVFdoUlJEQWhRRjE5?=
 =?utf-8?B?YXVjK3ExOUhJV29IUW1nZmRZU2xydG44N2czWjZIUE45RVp5SjQ2S2VaL0x3?=
 =?utf-8?B?RUcraGRnMHJKT245L2U1MkNzb0g0aTF6RVh2RGJESSsxaGt5V3QrN1ZwcUpC?=
 =?utf-8?B?RmJKKy90S3VRM080Q2pVSnFvZk1NbHlvbmMvRE5vTWNRdGJhZWFrTnhhczdL?=
 =?utf-8?B?N2wxYmg2Q21hYmNsVDdGVkx0Z1NQK0JzM0VLZk9zeFZ0bkJtZDNDSkd3Znht?=
 =?utf-8?B?R1ZrN3RYbEJ4d01hMDNVa2p4WFh6YjJZRkQzU3JWVjY0MjNGZU9rSnhKQ3gw?=
 =?utf-8?B?Y2wrbVE3STB6U09RNG1sb3BDVUpFWkRnYzBFTWUvVVNYRXV2QTNMQkFPRDBk?=
 =?utf-8?B?VkRITDJQTVMxVzNhekdURkorM21DZ3N6Z3Y2dUJTeUM4WFBKY2Q0dUJqQ2ZE?=
 =?utf-8?B?T0YrbWhNbmdMeFBEMGRpc2E2MWIzT3lMTW9qZ20rMzd1U3VMNk95bWJzSmsr?=
 =?utf-8?B?amtPdGYwTlFMdmNxMTBEcXovT2lMTVVjaVlDQkhZSGwvS0h0amhwaWpMYWpB?=
 =?utf-8?B?VTlwMHdIelBHTGVSTUhvVGRqRXZoejRocmZMYjQ1N3ZpQWdxUng0TUlCN0p2?=
 =?utf-8?B?OUV3S2lpeHFiWTZON3hKV0JQWk03cyt2dGpLdTJWVzM4T0hXenJqZFBqQXlX?=
 =?utf-8?B?UW5jcGxJSHh3R0ZBWlA5Vzk3SDlla0xFWVFQU3NOVVprU1pBWHgweGIyb3JI?=
 =?utf-8?B?WlV1WnN6R0FHV3VBZ0xtN1BFOXFxeXl2aURhdm94ZHg4MUtSQWFhRGRYU1Nj?=
 =?utf-8?B?ODhQcDZkZmpqRUcxMTlzaFBnSU15U2lpM2thMXIvSENyNitTSlZ5Z3FvT1ZW?=
 =?utf-8?B?aXFuZnU0dlcyaUNIY1pReG4zdEhBanA3bStya1hSUStmZm9td3pBVE9NZUhr?=
 =?utf-8?B?eWZHQ2VzblY4eTdoS0NieFB1NG5KY0FBWURJZlV0VmNSMFVBUWJSckROZ01a?=
 =?utf-8?Q?RRH3Hv/zGan1BDO4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f28c095-2291-4bd7-e91f-08de64c1b747
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 14:20:30.3321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wgkRTItIccWL8Akwa2Rw2IAyF1D1zOUtK73CWdlAF8mjCDssolzPJMf9plyqo2HMLEcYgJCN+fH4q3gigXQSfMVA2GY913Ha5RgQTLizs5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6899
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8E057F3E2A
X-Rspamd-Action: no action


On 2/5/2026 6:23 PM, Imre Deak wrote:
> On Thu, Feb 05, 2026 at 06:07:44PM +0530, Nautiyal, Ankit K wrote:
>> On 2/5/2026 3:11 PM, Imre Deak wrote:
>>> On Thu, Feb 05, 2026 at 02:06:23PM +0530, Ankit Nautiyal wrote:
>>>> Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
>>>> replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
>>>> iteration. The previous code implicitly checked for DP joiner capability
>>>> via intel_dp_has_joiner(), but this check was lost during the refactor.
>>>>
>>>> Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
>>>> that DP specific joiner conditions are taken into account.
>>>>
>>>> This change also requires propagating struct intel_dp * from the callers
>>>> down to the new check.
>>>>
>>>> Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Cc: Imre Deak <imre.deak@intel.com>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c     | 16 +++++++++++-----
>>>>    drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++---
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
>>>>    3 files changed, 17 insertions(+), 10 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 4f5b89f80e55..3021c64d0f85 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>>>    }
>>>>    static
>>>> -bool intel_dp_can_join(struct intel_display *display,
>>>> +bool intel_dp_can_join(struct intel_dp *intel_dp,
>>>>    		       int num_joined_pipes)
>>>>    {
>>>> +	struct intel_display *display = to_intel_display(intel_dp);
>>>> +
>>>> +	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
>>>> +		return false;
>>>> +
>>>>    	switch (num_joined_pipes) {
>>>>    	case 1:
>>>>    		return true;
>>>> @@ -1496,7 +1501,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    	 * over candidate pipe counts and evaluate each combination.
>>>>    	 */
>>>>    	status = MODE_CLOCK_HIGH;
>>>> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>>>> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>>>>    		int dsc_slice_count = 0;
>>>>    		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>>>> @@ -2895,7 +2900,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>>>    	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>>>>    		return -EINVAL;
>>>> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>>>> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>>>>    		/*
>>>>    		 * NOTE:
>>>>    		 * The crtc_state->joiner_pipes should have been set at the end
>>>> @@ -7213,13 +7218,14 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>>>>    	return sdp_guardband;
>>>>    }
>>>> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
>>>> +				     struct intel_connector *connector,
>>>>    				     int hdisplay,
>>>>    				     int num_joined_pipes)
>>> intel_dp can be always deducted from the connector, via
>>> intel_attached_dp(), so no need to pass intel_dp separately.
>> Since this function is called from the iterator macro for DP MST also, I was
>> wondering if for MST case we need to get it via encoder/dig_port.
> No, intel_attached_dp() works for MST connectors as well.

Oh ok, then I will just use intel_attached_dp().


Thanks & Regards,

Ankit

>
>> Regards,
>>
>> Ankit
>>
>>
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(connector);
>>>> -	if (!intel_dp_can_join(display, num_joined_pipes))
>>>> +	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
>>>>    		return false;
>>>>    	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index cbd7fcd3789f..37302ebe1cf9 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -227,12 +227,13 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>>>    			   int htotal,
>>>>    			   int dsc_slice_count,
>>>>    			   int num_joined_pipes);
>>>> -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>> +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
>>>> +				     struct intel_connector *connector,
>>>>    				     int hdisplay,
>>>>    				     int num_joined_pipes);
>>>> -#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>>> +#define for_each_joiner_candidate(__intel_dp, __connector, __mode, __num_joined_pipes) \
>>>>    	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>>> -		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>>> +		for_each_if(intel_dp_joiner_candidate_valid(__intel_dp, __connector, (__mode)->hdisplay, __num_joined_pipes))
>>>>    #endif /* __INTEL_DP_H__ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> index 29713075e413..b2d3f35edd78 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> @@ -720,7 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>>>>    	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    	pipe_config->has_pch_encoder = false;
>>>> -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>>>> +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
>>>>    		if (num_joined_pipes > 1)
>>>>    			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
>>>>    							    crtc->pipe);
>>>> @@ -1524,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>>>    	}
>>>>    	*status = MODE_CLOCK_HIGH;
>>>> -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>>>> +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
>>>>    		int dsc_slice_count = 0;
>>>>    		if (intel_dp_has_dsc(connector) &&
>>>> -- 
>>>> 2.45.2
>>>>
