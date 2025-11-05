Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8AEC34068
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 06:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1182010E049;
	Wed,  5 Nov 2025 05:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzLTo6FU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCCA10E049;
 Wed,  5 Nov 2025 05:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762322377; x=1793858377;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ImifsuevM2O6iRjGyzh0jVPN7lF+96FlLCxMBlRyDyw=;
 b=XzLTo6FUqLSVoVh8r858K+2mNo7JaSm1Oqua8phwBZNoSBO3TohS2b0G
 A9ypIedJMAqX1irFVLbY1WQATLjRJuY31unlQ3QzVE13CwpZBLOfYDs/H
 1Tsdo8N63w3wJgum0JjtzMZEw03V2pWWioVsMFSILiw9LgTi4+NfEHAd4
 KavsCJqjvGgXfvOEZrTxTeMsXJV4CP0dOR19+4pbuE6Avbnh5K04snOyu
 JqeCrBNY782npIWCHq6ABdWBN355gxRFzK5yKB2CRqNtYB3XTuDI0wN9j
 w0wEvqGauLRfTX5PEOv46ulns1XmOeInv4alee6hdThrSkLmf5CpaqDQG w==;
X-CSE-ConnectionGUID: wXnSo02USFa0OgOIJSFo6A==
X-CSE-MsgGUID: yS1QziJuRByDLwT7VhUyFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64465737"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64465737"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 21:59:36 -0800
X-CSE-ConnectionGUID: Ef49MM3iTDWOGR7509IrcQ==
X-CSE-MsgGUID: o4QbfQOsTfu5f5d2imAWjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="192440827"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 21:59:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 21:59:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 21:59:34 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 21:59:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjE3PHlp6CoB7oeRADwspbq9nr8P41+pTNjsjw9netwnq96ljumdzuOQbX251yLXCh0MODX+KgZuGG1qYlgIno+9fnE25ziDSxeq56x9veqWLg+Ot37pK1EHXtnO2A9VVJRi/r52L4SbX3q69fOm9G/u3JkW/sE+QsrJT7u/r08KFTqg6lMnkMKL96+GLksYGGN+e77hzEl1JV1MVrAE8h39pjfBpac7Siua2iZ5wsViTCkQyGbUuHsjU0I7f9tOnFNvMMSPNK/GdGFNhSOlokrtZJqFW3HWqrfOsuSTUYgWYKZEMR7pPB1wQy5qVum3SNw3pnLHEokivwnYD8L9FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ei5zijgcSmAc03spHnxa02dX+Wzb0u4p01NgxVczbZk=;
 b=CcnkL+HD8TTXlg3SvPvfaVpnqeZXoDqjnhkgLU2y22e8PjDOPxccF1OBnfisUMwDYxxV2rpKlSd7fUKvIdJlH7cHELgDgx4ad+zpWLDlAP+GY60E39je413qXie0pGOVhVn+/HJe0VpofQ0guiHFQI10xeeaeU5iAOmyNQXo5LZgsP2Oh96ECYW1MAcpyp1L5gcy56ACLIz0rhMILvY6IZFe1Y3+kiXuYr9cuXKkDLsjFAfBGXE1nEd1RDjahSKmW76Aewfx9f7DovZi1oVYPsULpzObMIss7bR3NZMZW5zpO+0cMgKD4TUN/P858QueWIoCdoY5SB9UKqiQT9QaCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7109.namprd11.prod.outlook.com (2603:10b6:806:2ba::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 05:59:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 05:59:32 +0000
Message-ID: <6e1a0a32-65be-4bb3-8a8a-45c67c55c23f@intel.com>
Date: Wed, 5 Nov 2025 11:29:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 16/22] drm/i915/display: Wait for VRR PUSH status update
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0108.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7109:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dbee4da-559a-4277-4e5b-08de1c307d56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlFIOW15MXVFbDVtRDlqR2Q0amlmcFZnOG1YdmtzMHhzbkV4Rkw5dUsxQjF1?=
 =?utf-8?B?M3VwZXRhR3VkQkJPbVE3eFFQVjBvUVhrREpsZnVFTTcyVzdsc2FOTVJBVXN0?=
 =?utf-8?B?cGZIdEVFYTkxbGllb1lZWktMQ2VSZThjQkpsSEN5cG9WT2VuUkhOanpkcHFN?=
 =?utf-8?B?c2FrbVl3c3NqQmZjelBoN2VrVFF4TmlvY1NvVUp1ZU9IVmNiVTVCbWNzdHFR?=
 =?utf-8?B?a2tGWnlBdnNETi95dVhzOFBmeUpJSEhnaHZEdVU4Z0xydjdQbFUzNkF5eGNq?=
 =?utf-8?B?dCtjQ0RxOUxnb3d1Yis0aEQ1cW5tRzNjcGtIdGZHVlB2OWhqd3BpU1BvZXlP?=
 =?utf-8?B?OElCMmMxUXFqc1N0TFh6MkROVDNUck9kWFFyUnJuKzc5ZzY3SnFtc2lQY2V2?=
 =?utf-8?B?OGxGMFZFdmg5S1IyUmpPbUgvR3I3eTZGSURiTWhXSU5yL1ZsdnFOM1lMT3JI?=
 =?utf-8?B?WkJNMlh2L1pCMEhGNUx6Q04zSFduRUxCQS9EM3N3M3pRdStZdWpLMUgwdzhH?=
 =?utf-8?B?R0Y4cUEvRWdTNkQ3OW5sOVluR0ZjMENvSDhTTkFQMHUrQmYrY2l3aHZaWmdI?=
 =?utf-8?B?VWlXNGZvOENubVBSSUhsL0gvY2h3d3gyZWxEeXd1YmdRS1pRT3RqdnRJM0Yz?=
 =?utf-8?B?SjB4RC90RWtUNDlaU3BPT3JRNDdSaGlvMHNEb09mc1FwaGcrL0JORW5Yd3Yw?=
 =?utf-8?B?d2srVE5weWJMcTcyNnpRazBmSUtmbUJwWlJsWFJNV3orcFg4TUdHVElGbGpL?=
 =?utf-8?B?enVXNnRpUlVGQ0FtTDIvRUp5N2NHRzdzaGFtS1psOHVEZi9lblFwTXcvZzFx?=
 =?utf-8?B?TzZwbDQwbEQ2c09QeGNvUXJnbmh4U0VxQ1pqRURjbXRGdE1hd1VqME92aGR6?=
 =?utf-8?B?VEZVR3NSV0tmeHNCZHYwdkt6c0cvWkNsS2xlVjBYWnFlK2Zua0c4OXFhMVQ4?=
 =?utf-8?B?T2VLUHpLWnlzNkxLUEJpblBMdjJ6UXJ0dnZ3dkhvREFGdGQ1OXNwQXg2V2dO?=
 =?utf-8?B?MUVyWUIzLzUrR2VSN2ZPTEdINnA0YjI3ZkVySmlxRzkvc2JXNjZwTUtTbnlO?=
 =?utf-8?B?cjNZTXZuYmlTa1hkQ05aa21JMmtWOCtFN0k3RitFK0V1TzQrWnBaays3dUpy?=
 =?utf-8?B?YTdtMndqbnN4cVZjVkJVYkg1OTJpTzdla2ZwMnlLSFgyNXFPbU5wTHdyeHY4?=
 =?utf-8?B?MXcrd2VIOUQrcGIyV1lHMHdhK0xYdzVNcnNpSW1zSXErUnQ5ajJqNFZSVXJN?=
 =?utf-8?B?TEVBMTNOc2hOeGRxeWlzMXYwdzVsaUFZRnEyRVFwdEh4WFFVSEVUYVBqanNl?=
 =?utf-8?B?TFJxT3BWbGdnSGZwaGNrNFhSaWM2SmJubmMydW5uMzZad3ErQzlMZHVBS0tz?=
 =?utf-8?B?VnZDb05pRklVaVFIVm5DS293cWs4bVJ4S3orWStQZm4rclRmbGFRbmE0UTh5?=
 =?utf-8?B?RENVQjBMdFBoNGkvRWJNUjB3RnUvUUE0WkNkSUFmaDJZTUJwZTZMakZHVG9C?=
 =?utf-8?B?WW9NSFNtNVhwWS84Q0pXNHJ2Qmo3WWw4N1RkVTZxL3dTZDRkRkhSNnRsSjdn?=
 =?utf-8?B?Q05kak1mTnZiWWRUYjQySjFheTJYYStSVHk5Qk16bDhZZWVVOWg2RGp4RWdl?=
 =?utf-8?B?QnFhOHRVWnRGUmNtYU9HRTUzTU41RFRLQ3ZuZ1BnSnVCOEVqNnZPcVdpT3ZO?=
 =?utf-8?B?NitnaUtFb0xSd3BCR2VrU0t4UEsxUUxmdVNNVmRob2xjZ3EzbWp4UElNenBW?=
 =?utf-8?B?MDJBYU0rWEdzZnBlNC9rN0VuVXVhT1IzSlRaaHNkam9TOU53RjN3YXRKcnhX?=
 =?utf-8?B?N0oxeFp2WU5kVFNNZzhNVnNSbkhHbWdLeHNQaFZVZnVCTkRUdnl2b0t1R0tH?=
 =?utf-8?B?alB0TkpCMVAwT1dwemIzOVUyaXhhOUFKZjNvaGdIdStBTk5WQW1zL2x2YzY4?=
 =?utf-8?Q?BAY5WlSGkuiJ31lxvN/mbFcncouTn+9h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ry9mWElVL0N0VUplODhraGhHeUo5L2tVbmJFNnBPdmNVV25sWGRVZmN3UWJV?=
 =?utf-8?B?LzBFVS9HYXZEcmhub20ybjZEbXVtNml5aG1KWjBDdU9uS3l0S2VqekpGM1dk?=
 =?utf-8?B?V2NCQVZVa0VmK3pqV2tYS1I5eC9pYlZ0L3FQSzVhWmpwUldmWVduN1JYQ25K?=
 =?utf-8?B?cUxrak1RUVpWMlh2bmorbVo0VXUrN1BvNEdMeVpQZHFQWUxzQTEvOEVqbVFt?=
 =?utf-8?B?VDVodDhOdGd2aFBQTkJmWkVBS2JPMnljaC9CVEV1dmFNZ2VwS3dSSzd0T2Uw?=
 =?utf-8?B?VVcyZ21SVWQ4by9BVjZoV255UEUxQnVNZVZCRFpMaHVUc2laMGxEcCtyUTRi?=
 =?utf-8?B?SWZ3Q2o1a1d1WE5POWZKMTZidjV3aDRYdXY2ckFTQVRHdlVVdi85OU1PRTcx?=
 =?utf-8?B?bWNwV2dGV2srWnNqbkpDUFBKR0ZuR3g2V21xZEcvV0xsZFZOMGg0S2JpTWZP?=
 =?utf-8?B?MHdIcFhNTExyOUNDaHBvSU93QS93aTV1eUlZZEt3U0x0a2MwN2ZPTzlPRVp3?=
 =?utf-8?B?ek9mdE4zUU5IUU5Zakc5bkp2QW1ZclRnemd1bFM3akxmQ1dZQmhFSWlaNmgy?=
 =?utf-8?B?aTNMYnV5STFySFFjQzRQb2JFbGRtZUR1VzY2Z0x5ZkRPaHhneGJuOUZiYXdj?=
 =?utf-8?B?bllKcGk5cmRHeGwrMFdLSlZVaENLUWlUdVBSTW51SVNoV3FqVGJzNTVwTU54?=
 =?utf-8?B?VjZXYXdoRndKck9nWkYzU3hoaU1VOTFvY0hKckdOc3VOc29zSXdtbnRwTlVT?=
 =?utf-8?B?Y0xqaEJROG9CemJSRDh6N3k0dHVSUGthWndzb1FWdmM5SXgyVmpTZDZnQkMy?=
 =?utf-8?B?WnNEcXlVVWtPOXFGcko2RlFwaEx0Szg3S1pIRHBwOTI2dEhIUjlLdGIzQWdD?=
 =?utf-8?B?cmZGU29hTUZubVhhNDJWMndzM0dkVnFraDFMV0F0MjJ2RUJ4YkRQeXZpanVx?=
 =?utf-8?B?VXZDeXo1QjU1VXJEMTlqSWJhMHVMeERvSDRkYWxyS0FmTmJlVW9UR1pycTV3?=
 =?utf-8?B?Q25XcHk3bUY0bXpOektvKzJ0WFo4aDJHdkRHc0Q4SUVtbGx5MGwzRzRta2xG?=
 =?utf-8?B?MldnUFRXUTJSaldiOUVibzRoYTY2anJtMVFEYm1GRFRkZlp0S2preitEQUhr?=
 =?utf-8?B?UFE4SW1FQjZ0VVc0NnBNT1hWaUk3YURaZzk0UUtRWGpjYlF1MEsyUVJSZlk0?=
 =?utf-8?B?MkMraGMvcUswWlJ2K1FpTjltMDJzUFVLc0luZE5iRjJraXRxMWRON3NISjNI?=
 =?utf-8?B?QXhoanozU0hrRVFjRHFVd2VtVkQvZTU3Sm1PelBkNmpkM0FnVEhyNDJCUSsy?=
 =?utf-8?B?a292S0RMSlVUcEw1b2x3RVNnb2tTcmR3aU0zYklwZzJFdDRQditjUFgya3Js?=
 =?utf-8?B?Z0o1cU1OUnQwUGhxN21Za1BIa2JMbXBIQ1VnbXd2R3FCQ0xWYk43RVgvS2h1?=
 =?utf-8?B?L0U2UVQwNmFmaHNtMkNadzFicHQ4VjFPMjVOeWtaRzNocVhrVVl4bEJra1oz?=
 =?utf-8?B?QTgwbFpJaWlPTGxzSFNVcUxmalM0WE5BRzFSWlJNaFJNRkVQUVV5Nk01MlR5?=
 =?utf-8?B?cS9JaktiNTNwZFhOa01ZOUkwV1hleVhub3FocmkxRFBBM3F1bFhuLzUxK0tL?=
 =?utf-8?B?UFl5TFdLWllMT3pycnF4M3RRSTRQUWlZYlB0bGVxMXN4N09TSVB6Wm9PYUpn?=
 =?utf-8?B?R3ZSRWMweGQ3QUlvdnA1dWQvVGNUMEhEU1NoNXRiOHRpK3k4MFIvRXdvM2la?=
 =?utf-8?B?WkhUK0haWFV4ZG9Xci94eVMzSTl4WFdFY01VM0ppN0I3ZVkyQUZPbyt1Zy91?=
 =?utf-8?B?RkhxcEEvRkhBR0lDZTFLY1Z6UDBRejh4bVZMV0t3WGo3NVBmWHNPanQxV3Qz?=
 =?utf-8?B?ZkJQRS9oWmlrZ0ErVXF5am9CQWxIbHc2VlZZTXVrd2ZZYXpIUFByNUhTbEp1?=
 =?utf-8?B?S2lvSE91b1RYYlVFTVppMVVIaWxLQS9WblJVN1dXZHJOUXpGRi9PU0dJTk85?=
 =?utf-8?B?Sm5adzFHazJhV1ZnWUR6YjFiWjloZW5CRjIyY0VTTW9UOTJXMDEvNVdoaUFR?=
 =?utf-8?B?aklkdnRCZzdta2x6QlhXSEtwcGlGSlJlQXBZQnRpQmxXTnREUm9zUHcycHNv?=
 =?utf-8?B?bllyTHhVQmJhdXRYWEZIK2Ftem1KMmtEZW4vTE9vVFh3VUt2c3VlTFhMTGI2?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dbee4da-559a-4277-4e5b-08de1c307d56
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 05:59:32.4222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Tz/UwWjZ44T8PkNC8mRZvl0PTSttOt7qgHDlj4DNgmcvNai8Px8iHVfdOF3eYvIwmgNn4ex9BppJd8j4xvoUZZQRU3P9fv2yTRxix6D+qA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7109
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> After VRR Push is sent, need to wait till flipline decision boundary
> to get Push bit to get cleared.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
>   1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b256517d58cf..faec325e7652 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7287,6 +7287,22 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
>   	intel_color_prepare_commit(state, crtc);
>   }
>   
> +static int
> +dcb_vmin_vblank_start(struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +}
> +
> +static int
> +dcb_vmax_vblank_start(struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmax_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmax_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
> +}
> +
>   static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   				    struct intel_crtc *crtc)
>   {
> @@ -7371,6 +7387,13 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
> +
> +		if (new_crtc_state->vrr.dc_balance.enable) {
> +			intel_dsb_wait_scanline_in(state, new_crtc_state->dsb_commit,
> +						   dcb_vmin_vblank_start(new_crtc_state),
> +						   dcb_vmax_vblank_start(new_crtc_state));
> +		}


Hmm... lets not add this as a separate thing. The idea is to wait for 
vmin safe window, so that after that we are exactly SCL lines away from 
the delayed vblank.

As I understand, DMC FW will adjust the VRR timings so we need to use 
the Live values from the registers.

  I think we need to use the TRANS_VRR_DCB_FLIPLINE_LIVE value for 
computing thevrr vmin safe window end in 
intel_dsb_wait_for_delayed_vblank() when DC balancing is enabled.


Regards,

Ankit



> +
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>   					  new_crtc_state);
>   		intel_dsb_interrupt(new_crtc_state->dsb_commit);
