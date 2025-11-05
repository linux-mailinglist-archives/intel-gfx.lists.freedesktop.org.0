Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D72C34074
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 07:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8871B10E1B5;
	Wed,  5 Nov 2025 06:02:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eir7m9gG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7A010E177;
 Wed,  5 Nov 2025 06:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762322540; x=1793858540;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QRvdSOCyManL+LXmz343GL8jzHPlE1gYFlXK6FIGHaQ=;
 b=Eir7m9gG+Fkt+Qaa1B+27tQUQLsygPXKxGN6QZ809pl/cg7BUoTtNxxw
 lTJ2Dn1iTq0LBFP3kr0Z93rM3x0JumBAiIB+sSvpaILvWs6O/x0L0YI0x
 ntY7FIMEBosIJ5PtMnmPWiR8Ab2tgT9WyFk8mQig2cvkTaXrGXY+NqIP1
 bhlVB93n/sPxOB41FZay9Ybbko9na62YYGMlVaZ7QR+5Z7jBMt9C9FrWb
 MggKE3QKFXVExCGozXahNavuhhlduio6xWV0fWBej+dQT42dZ0+Dhi2vD
 GylqYIFdbERUu4yKjVdx68l1jL5ymszRghJKrwLv7ovdQyaqYzzvLG7Id Q==;
X-CSE-ConnectionGUID: I6JPColeTW6NhuRxKvWMJA==
X-CSE-MsgGUID: u/uGT/iRSv68Ee+Ei+pnhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64352106"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64352106"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:02:20 -0800
X-CSE-ConnectionGUID: pvGP0XbDQ/avOn6y2aZDJg==
X-CSE-MsgGUID: A4wT1mXMQzOVI0XG3RtzEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="186609026"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:02:20 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:02:19 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 22:02:19 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:02:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ntn9xua7ZHwFYNuT1VqGDbaIpt1nRc8UtzGdCMG1dy4HR7/tfJ+eb9qhl3GTMb1N4FAS7KLvQv+2K8LjxmnpcVlHcW4Yx0v0a0H68VTq6eJORjL/lBCPuySUiih3ue3EPcsDqe0MOhlHeZuKap7eW7trB9ZGjLMgyJOZtwQkxlALG5wU6SS+XLAYbq/l/zPFN5vwSmjgbQPeKVGSefY7gkDfakUvsDjUTR6jrhY63jSMAepFJvcBFoxY1E0iUTcDsCAXFJv2UbA9WRXqUJY4anaA0mGt75DytYsY1Lo+d7veM84EGWZG6itYcdlluCDR2esLx7oJdG8BVRTivUa+IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNXZbcpfBpM2V8lRlrx4n5lyM5R9o8EySULSadu5Am4=;
 b=kirNGAXigtfjVgZQcmwHi4yNsEKFHWQ5HpSmGccgvtfhDT8vVSzPU77If3W0vtXlUR8Fec8QopvWUHYctEAfv+j1T2T5RHSH0TvoKb9MT0xoZ7U7wj8/7+eiNFlNg0b1xnUWCqerT/qp4JQXOhhhkjkNkkxSL4Be9EhowEtGhfkBVFiWNcg8kY3BFmmLDU0KJlVF5TWhQXgj4P0VwHrPhH3IPWWoGsMSAsg/W6+VJu5iCHpBEwrOd9ztG7hvYLVW8gTmpp6ynWRlPuzAz65GlEySK4hjruukFgmsNGhmic+pSvnweyehat4Ver/HFO47AkTpZhqXxNbXiJdwIEDTDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF027BB0053.namprd11.prod.outlook.com (2603:10b6:f:fc00::f05) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 06:02:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 06:02:11 +0000
Message-ID: <4f187216-43e0-433b-8a6c-371cb2682bec@intel.com>
Date: Wed, 5 Nov 2025 11:32:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 20/22] drm/i915/vrr: Enable Adaptive sync counter bit
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-21-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-21-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0105.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF027BB0053:EE_
X-MS-Office365-Filtering-Correlation-Id: c4aae24a-4d6a-411f-204e-08de1c30dc42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L240SnI0RmZzRkh6ZW0ycmtTUjRGTzFvU3RIM1BBNTNYOGpJUDRCYWdBLzhs?=
 =?utf-8?B?MVNZcHlzUE4xLzg5V09JS3R2dFphMzZpSVZuYW03Z1k0em1BdlpzU1hTNTdt?=
 =?utf-8?B?NUhNVldKZDlGMndPOURBSjhJUGlFNHgyZjlOK3F1TzFMTkNUQ1NieElqSkV5?=
 =?utf-8?B?MUtiOVZtNXc1STZTZVkyaGdEdVFDc3prTElxaEVyUkx4MmlWL0FVZXFQRzJr?=
 =?utf-8?B?Um4yWk9Mai9ybWp3MFBMSGhXVVVrcWQ5djhmc3NiTWNkYkJBYkFaUjJmRGZx?=
 =?utf-8?B?QnN4UlNZUmphK1R0anFJSkUrOHdoUWxmQmU1RlNQcDlvd29PdHBNRHpSenZO?=
 =?utf-8?B?Zjc1cStHZ1FqaHNQeTdmdHVTeEszbUg0d2RxQVBGbzBwQWd5MUlaZmJVcmxY?=
 =?utf-8?B?dENYMTRHRnBSNDZvbTZha3RVbDROMUVDUGpUbUpyWklsbS9xMGxIRDVvLzJT?=
 =?utf-8?B?MFVJeCs1ZHRyQ1pzenVydWlNN1lsM3FmYlRCbk1oVGhHbm1BNEhKcnZoL0lx?=
 =?utf-8?B?aFo2UjBva2F5VWFYVWxGcU41cXkvNkZ4MW1ZOGhFUUcwc3I2K1F1d2NOQ1dj?=
 =?utf-8?B?a0NkUkh2ZHYvRVdsZ3VPc1hjN3RkVC9YZ0dlUEtqT0wzSk1rYSs0SlFtMGpq?=
 =?utf-8?B?d1EreVZZWmlOZHpuSUJQY0t1V29veS9EOEdWVWpsMlhaejAxbXRtOUlFNWRv?=
 =?utf-8?B?anRBSlBTMU5za3RkYU1WR2VVbzZkQTd6ZU5YejZ3MUNGcFB1Y2t2aktpd3pR?=
 =?utf-8?B?dGovUGJjV0xvZnBpVU5oNDZvZWZ5T0I1ODVKY1Npd09KTHFKcUR6djVOcFhu?=
 =?utf-8?B?eW1XZHF4WXZub2l0azlENmNSdFFYMWVMem1jS2VacWZNWWZ5bFRPL25hdzda?=
 =?utf-8?B?UFJBMkhBQkxic3dqalpvRk43S3FyTjZRK1dJTDhwOVpXWFV6V2JKcWxmQ0t5?=
 =?utf-8?B?THR0ZHpRVjBvUlR1Z3FGVlBYcmpTSk9UYWdUMTJmY3lnTDRhL1dRQ1NGSW5R?=
 =?utf-8?B?Tm9HVlFxR2hXek1BdWhQNW9FUGFUVEF2TnJ6N1I2VUFBc3dCaEhXSGIxNXFP?=
 =?utf-8?B?U2p1UWJRcTVjcFBRSUxJTXRDY3J6dC9jb1daajFHbVlQcmVzUW1PRlp6czRG?=
 =?utf-8?B?blk3N3p4ZEh1Wm04VUhZNjJWUUFlaUVZVlhqSlE0Ym8zeVhoWXE1SG45NUJs?=
 =?utf-8?B?SXlpSXRUcE12VkZxLzd4a3VaYkJqa09kVkhQM04wbFlvYTkwSGhNdmhLU2s4?=
 =?utf-8?B?UXJQOWt0WWExcWdnb3FXOTMzVVVoTUpMUGdYSUF2c0V2YlNoOE5YRjZTcHdN?=
 =?utf-8?B?eFRhdDh1M0xaWlNtRkVjN2JyejdLVVdjYW0yOHY3WUJyMFNObnhBMjBhSjJm?=
 =?utf-8?B?MHJMRURZaWV3ZGcxY1NrWFFHWTZsNzEwMkcxa1IvUlY3Z1FlRElnNVphZlF6?=
 =?utf-8?B?eTIzeDNXQ1VjQU11TzVWMkZBMmV1TEhZRDBkUU5VYWg3THhMMGhEYzdRa0dV?=
 =?utf-8?B?Zi9kdDlqUDNHT29ORmJqVHBFLzNTd0xQQStQNEVxL0QyTXRpYlNWMmR3RTJn?=
 =?utf-8?B?S3BjdHBXNGRYVDJrRjk1SXNNdTkzMVdZNEtRR0ZWVER5clkvWU5GczZuQnNB?=
 =?utf-8?B?N2Ntc1o1Um1QZmcwYkNlU3phQ3c0OWF4enpPeURkbSsrbytHZ2lac3p6UXBV?=
 =?utf-8?B?Yk9uenJlVUkrRXplQVpUeVRMU1d6RmlsbnpMMnpsbEFHNkdLWWZQd0xmWmFK?=
 =?utf-8?B?SmRzNnpVdG9MNk93czBOK3hPVjJEMWR4UGlOaWdGaUh3RFlZNFJmTE9uTTI4?=
 =?utf-8?B?VWUrNVUzWTRxdHJTWGwvR1VFcjFtOVNpVVBUeXFvbTBQbXIrMERoblF1UG1R?=
 =?utf-8?B?dFVNRngxdy9qT2hDWW5XTTU0TzZpeEYzbUVVeTdZZy8rVXhGL2xZcUgyMnQx?=
 =?utf-8?Q?XgXhBebqdBGG4y3Z/y4OXiiclh4fOoMT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0RoMGQ5YktPc2g0Mm5mYlcvVGp3RzQ4d1hPNHd1SVg0QndPVFBzeklYcGJm?=
 =?utf-8?B?UVFnOTRabUZZeUE0VXFnVzVPUUNrUEc3Zm9wWUlBWm83U2ZtdGNZVFJScVVE?=
 =?utf-8?B?UFJyTWhsRTlnQzI4S1B5Q0RBR045dkhML1AvNU9BZHRpMmVlV0tESXhnc0hG?=
 =?utf-8?B?cTR2STA1dGg1SUNQVXJkMDdrb3p5bVNRZ3RDTC83ajd6MlJhcVJlZHF0clFR?=
 =?utf-8?B?RGE5TWJkb0t5akVkeUE0dy9IejZyV2prS3lJdjJDeGJpNnEycmVGQTZ2TERX?=
 =?utf-8?B?NitLdmF1QVI4S3VrVSttMlRrSzZha2ZLcXlqZHNJQkhXN05wRkZ4OXI4dS9v?=
 =?utf-8?B?OENJVjdJcnpUcTZKSlM4NmNlSU1sMmFHY2g1Uy8yVDg3Y2tsMXMxcXJ5Qlp0?=
 =?utf-8?B?OTE2NjVEbW01NW16RCthcW1qRmpxak0yUUhxaHpYNjRvcHh0VThsQWxvYnRy?=
 =?utf-8?B?VHBsY0tXNnlXUmp5UVgxZ1NHZHVIVmM5RzlxMUY5eW51Wi9WZHllbWhHVTFB?=
 =?utf-8?B?VGdHSjJ3YzlEeTBuQm5ZVGxPTElxbFNuV29NbU0wR0VyeFBTYnRWemJJcGll?=
 =?utf-8?B?bGs5aGV6anJ2VEFPbS9LN1NRUUhrTVdVKzgzQ1VRZzNaOS9pMGMrU29WY25y?=
 =?utf-8?B?c3RQbDNyWVozaEl2OHlVNjJiMTdYOVllRE1McURvenhMVDBsVzZ0MkRRdzVE?=
 =?utf-8?B?VS9SOUVoZ0RNSGVPZlp4VlhoR0tsOFdtTEFha2FTWEwrdFFHc2ROdko5VDBH?=
 =?utf-8?B?V0JUSTFCaWtqK2NwQW92WTVMQVkzLzFHZlA5eWFhR2o1UW9mcVdmMDl1b3R0?=
 =?utf-8?B?SlpNZ0NXSzI1SDhUajdUeHc5K3VFMHkxNVdTNXZSM3NlSXc2VkVWS2FjL1pU?=
 =?utf-8?B?akx2emtQSWtWUUxhVWoxeFVTZ3Noc0I3TFg4OVlZYUlqd0pJK29SYTNrNE1D?=
 =?utf-8?B?anBpSGVDN1Q3NHNzWXhwZitzY3ZaWGFVMEppUEhvODFqelg4RDEvVGg2S0x5?=
 =?utf-8?B?K2oyK0syU0JCYVVXOWhPa1NsZWRHdSs0VURqeXlmMmpEclk3YjFsbkdvOXMr?=
 =?utf-8?B?Mkd3RnRXdVhvR1dTa2srdlpiY3J2L2tqWG1laVN4N080TC8rbUREMko0Mjdv?=
 =?utf-8?B?cXZkdVE1ZlNTZXIrZ0hzYkNqNytsZVllN2hxbTB3VWkyUHIzK0cyb051dU5R?=
 =?utf-8?B?T21lc1laT1pCK1V4djR5UCtJVjk1ZlB6TnZtRzRtZmxWa2pxQjdZeVVNL29x?=
 =?utf-8?B?REN5Qy9ZOFp0RGNVSk5IU2dtQlRDNmg1SjV4ZklDM1NZZ2JtVzMzNGtaK1hs?=
 =?utf-8?B?YXoya1V3RU5FK1JwN0M0cFo1RmFMR0FYS2grNXFlMTFYNk5vZ2U2d25tMGxh?=
 =?utf-8?B?aUh6YkJiR1o4eS9INmtzRXJ4bWFVcTA1Nzd5bUZUZHE2dlVaakF1dDRtZjVZ?=
 =?utf-8?B?TFk4eFF2c09zUk1JYVllajRYUGlTNktPelpHTUdMU1VhanVXUUo4RTRXWHBC?=
 =?utf-8?B?L2pHZnBEZmdMMVNiRzVmdXlzNjBZSlR4TTlQcTNhajZlMnI3SWs0Zlc5bkpo?=
 =?utf-8?B?N2ExUkhtdHdiWFJFcThiK000bjM5UDAvbmxJemRmbEhyYTdmT3hUZjJMOXA2?=
 =?utf-8?B?b3Q3VnV6SGNWWmc2R3ByTGJnY2gxZUE0YzlsUFJSaENIcGloVFdBMFJhQWp4?=
 =?utf-8?B?NGVTZHVVTmlraUtxNTVPR3ZrM25RRXUwTUZMd3JPSFFJQmhXdm9STlpiQWFJ?=
 =?utf-8?B?d3JRRlBRY2hnZ0tYcENkL2QreWRIQ05SL3NpWldCeFpSR0pNOEtGeEs4Q1ls?=
 =?utf-8?B?bGxiZ0Zmeno2VGNPUmNNZk1tTzEvdHp1VXdpVG5FaWhUS1pNci9KdUI4Y3Bq?=
 =?utf-8?B?Y0dNZ0htZzZoZGZIMFVZU3dHWUFrSkgzKzBYclNhcGg1Yll1d0VTM25hWWQv?=
 =?utf-8?B?cmhjd0hNS09aWWpKam15T2tVbHFodWdwQ3gvZlJOOVhkcU5IV2FpR2RJb2pC?=
 =?utf-8?B?a2dnanZ5b09RL1JNbzBtd3E4Z3g2UkhMRjVKMGVzUEcvMW4xZG1tc3J4TW5q?=
 =?utf-8?B?RG9Ea0NHSXNhWWs4aXBNQjBkeFpITzlKcUVDV2MzQ05xWDdxSFFVRzk1bUZ3?=
 =?utf-8?B?US9zVEhDbUdrdmdYZ243YXplN0ZpUW8xYjBmK3VsTkFrT0tMbk82a2EveGJ4?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4aae24a-4d6a-411f-204e-08de1c30dc42
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 06:02:11.5875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 19DqmBOl4nwQJTNpkb0yldu3VGovlONv1JdSYhqasT2D/m5g+VtMpnzTKBzBzsp5h9yKuZEPfpU0Q3sfnvQ2idcekgTWxTSV1acXjptJGks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF027BB0053
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


On 11/3/2025 11:00 AM, Mitul Golani wrote:
> Add enable/disable frame counters for DC Balance odd and even
> frame count calculation.
>
> --v2:
> Update commit message
>
> --v3:
> - Driver should not control adjustment enable bit, as that
> is already being controlled by firmware. Release bit from
> driver computation.
> - Commit message update.
>
> --v4:
> - Configure PIPEDMC_EVT_CTL enable/disable call.
>
> --v5:
> - Add Adaptive sync counter enable.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4d56a4e8c7ca..4c4dc065d3ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -816,6 +816,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   
>   	if (crtc_state->vrr.dc_balance.enable) {
>   		intel_dmc_configure_dc_balance_event(display, pipe, true);
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> +			       ADAPTIVE_SYNC_COUNTER_EN);
>   		intel_pipedmc_dcb_enable(NULL, crtc);
>   	}
>   
> @@ -842,6 +844,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (old_crtc_state->vrr.dc_balance.enable) {
>   		intel_pipedmc_dcb_disable(NULL, crtc);
>   		intel_dmc_configure_dc_balance_event(display, pipe, false);
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);

This change can be part of Patch#12.


Regards,

Ankit

>   		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
>   		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
