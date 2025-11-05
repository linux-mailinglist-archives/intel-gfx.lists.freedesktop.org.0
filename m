Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43281C33F57
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D00EA10E6B5;
	Wed,  5 Nov 2025 04:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hem0DS0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C8E10E6B4;
 Wed,  5 Nov 2025 04:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762318675; x=1793854675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GrqvCbyS/uai9wKQ1jeSXmbVVAMvkew7SRdJFehhdVI=;
 b=hem0DS0c0fvHc4EIeaaBQzVeXPZdQSjkOg+lLxK2BtIH2hHpjBh0I2wT
 UyW7RF7Gkt7NoT+tryc98mAlwR0/XAyHj+jiZs3kH3GMKwFqJZVSVua+b
 XBFe/15qvEaBcEmmbTY+wAXVICIzkea7GZxvp2SSiJNDZlYWin+DFmgTw
 5zUzDU7ZgrZeAYPqGVEfxKBlKhE6KmtozulCXeg811lpWIeVd94y8C42P
 nE550cNSnyeF6Wy1DMp2gWRS+J5WhGl9P+EEQWrMHGjlEZvBcYiH1Yous
 ksEEXDwJAffKjGsM0Wt4HJXbkuX4CHZXVWBPrxHlo4hj8FIuPYt95cWjQ Q==;
X-CSE-ConnectionGUID: ogzAneKMQTasQssl+AzmkQ==
X-CSE-MsgGUID: 5PZzWNoWTHCgVJhw9O/ZWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63433701"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="63433701"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:57:55 -0800
X-CSE-ConnectionGUID: q6P9+AXTSriW+iZMDNgSPA==
X-CSE-MsgGUID: FZ7M7arOSgWxaZILlqfp7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187039187"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:57:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:57:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:57:54 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:57:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tD2PUKj2A12+hq8c2FUQAtyB23WAYRkyzj9TrHW96zI/fYU9sifjy34+cuJh0utuHzMN/8W8pHzEYWEHCTU1Gvb+NEj6asFMq56Jf6zijzQHTYZKdKQzdQUTFh61tub+5uwWKe5+Db1SQlJIUmrqtUEYM2PjFqcQWTrCDp0yEd+2t1tkqhOyMGZUOrwSCnf9sX6E4Ibtn2nOjfpvkZouAEOi1EiBJpRugU+jEivBbN3YcTmh+3k9jd/TAljZ9qUgxdQY1qEDsW2JY5Oep8xmFyxZBHYL418PVwKbUmaxzCmMSm7SStPZsD1lUH6yZIWhXyc2a/gG80mQx2+WRGrP+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bvbCwV+5dXiobj+2Rjxn4djgm+6DDAilDdkjAaxy2Y=;
 b=mb273sv/yYOk6HVtqBmfsncslwF4dXXTrD0tnT4nhZGG44/wst0Eo6dAuCSQ/gErIsEAHfhIGmbn2oid4a9l/EAAym5kEaunlf4ZO4ndEPkJB+uGLHN5ZSln4VioC4ro7w9NmCkQtPOREF1vyUTQr+6FCohB/h0vXmpMCubAtHsFRU9XLZAUEgJQb0G78GEq3rL+8ueAAGekRLGasH/m1KlBEDAGVfxiqKH82bIbxaXBcksryHnoa2qxT1ybr4QnH0DkERBY4Ltzdo+yefozzN6NJjBqhJDB1CxQlNBW3mDqIZxyxvQwFqI0bfT2S5LlBaVytrj9NzZTDTX1dxcbCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 04:57:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:57:52 +0000
Message-ID: <e278d184-e63b-4501-8f5b-34c4f80f86fa@intel.com>
Date: Wed, 5 Nov 2025 10:27:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 13/22] drm/i915/vrr: Configure DC balance flipline
 adjustment
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0044.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5832:EE_
X-MS-Office365-Filtering-Correlation-Id: b9dd9bc4-b506-4e72-2989-08de1c27e003
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHdtRmxZSDFCUVNYUWN1d2JVQWgxdVhHa2VudzJkcEpiei93Skl4bkVJS2xO?=
 =?utf-8?B?OVlDZzVrNkY0NjVNNU1VclZCcGpuQXhlM2IxQlZwYm9Pdmdoc1MyRy9MbFgy?=
 =?utf-8?B?Y2NIbGcxTE5PU2RZNTR4V1NYaDBRNWo2WHpVcFpnOGZGc3VOVmFyYmZVNGN0?=
 =?utf-8?B?TUhDYkwzVmVNNmJsaEtYbHhwWEN4TkRwVHplUWhrcmdwQ2tqOUk1RG8xcUVV?=
 =?utf-8?B?VzBWMlRVVzJmaHpqUFl5L3hYTDBGQzdsZ3RZdW9GY0JHOSt2RHNFWE8xVHJk?=
 =?utf-8?B?UTJvZUJSQzlEYjJuUm94NDI2VzdNSHN6ajFpTHJCQllCbGF6QWt4a0JUTHRl?=
 =?utf-8?B?dm5LQW1zbHFBSS94K01ibGROZUNicEdPWmNZcGxkYThlaS91V3VvN1hVdm5R?=
 =?utf-8?B?cm5iR2pyRms3dDJRUjRHY014ZUNxbHNUdHM1V1VHUEtuNXFpZmkzMVFTYXF3?=
 =?utf-8?B?WVZvVXRuenVwblhYeWRwSm96SDdsL29aTGtKb0ZSOEZFM1ZVTE1hS2IwYTlt?=
 =?utf-8?B?d1NabkhkSnc1UTA1Qm81RXpLNWdiRSt2RlM2dWZlek5ZazNoeWV6SlBzUGpa?=
 =?utf-8?B?OGJVb2hTRHFEQWh2SllkZVdnRmpkQ1k0NE5HSjdHVVBNV3pDRVdYSm5PZlUv?=
 =?utf-8?B?WTlnSEM2YmRMdFliVnNVYk10aDZBRnphYmpkSUZQVCttdUFwL3dBK2gyZCtO?=
 =?utf-8?B?b2g3aTl0MW5GWmw4WWVHNEpvV3hjWmlSd3J0cWZsZDloNkQ5OEM4YUFlcmJp?=
 =?utf-8?B?bW9PMG0rZE5xZXhSSXE2TW9XSWRnOWR2TkIwYnc0NzhzWWVSM0JoVDZoMTF0?=
 =?utf-8?B?cEg4UlhiVzNuV3hUaXhITVB3Y0dQcGtxSTQwMzJEK2lxdHRZa2tWZ2h4NmFI?=
 =?utf-8?B?VWk2VUZYd2hMbDZKb0xEQW0zbk9uNlFvTis3a3Vua3RvRHRLTU5ZcXFqN2hJ?=
 =?utf-8?B?bWxNWU5xcTlIVkhyV1g5M3hyZHFya1VSa2JHbVZYK1ZnMmNrUk91cTR6WmJx?=
 =?utf-8?B?U1dYNGRVSEY0YXJ1NU0yTXV0TTN3OVJGVjFCUmJyYXE5aXpCUktVT2I5Qm53?=
 =?utf-8?B?cjNadzh1Lzc2bU9jOG1ZaHVQTmtNb09oQ0NSUDhkWXBPZlc0eWVlUDJicGQv?=
 =?utf-8?B?L2ZtaSs4M2pIdms5Z3RyOTFJL25WdnVacWczczNod3R2cHFvQnNUNW4xc0RB?=
 =?utf-8?B?TWpEZjZla1hLeXBDbWk3MFNQRytzTnk3UmhJQ3o3Q1JQMG9IbTFzd1R3bCtn?=
 =?utf-8?B?ZEp5UWs1Tjc1N2JWZXd1R2FrSnR5R09uZ250V3M2ZDZqaC9Yd1JmRnZNN2hK?=
 =?utf-8?B?aFFjeFR5NkdBVTZMUlRNZWs4UXZQTVR2c1dPS2RrSXpUR2pQZFIzbWVDMEk0?=
 =?utf-8?B?OS8zdVVNWm10YllrcVN5WHFwdE90dHZHaC9HVkE3WjMzdFg3WEpTMmhkRXc3?=
 =?utf-8?B?dThkV0ZkSFA5YmdCVVZtZmF5MlRmOUw1dHZCQnNrcUtNSTUwVkhJRkNqMTVx?=
 =?utf-8?B?eGUrWFZkRW9oL2MyZTZEbThkZ2NKcWphcCtocSs0dkpJdkxYOGJOU3oram83?=
 =?utf-8?B?S2FqU2Vac3Q0ZldDQzl5aWZUWC8vOUZ1TFVsZVk2dUVBQ3pieUZUcGdFT3lY?=
 =?utf-8?B?ZUkzWStBZTZ0cUszWlNMT05ZY2dpdnVBR0RtY3hYWDBFaml4UThlamJyVW1I?=
 =?utf-8?B?YXpnTUpQQ2RlNWc2WTRnQnVQc1BnUFk0UmN6YVNJRVd4V0Rpb0J3RndDK3V6?=
 =?utf-8?B?QVU1MUpyamNLN3ZTVzVsTldGRXcxeENxNFFjS0J5VytSdzROUVRIZXpBU205?=
 =?utf-8?B?QnhHN0M1dldGSGpSWUVOcVlaS05HZ1VCV2JnN2wzeUlIRWhEV0dTYkg4Q0pE?=
 =?utf-8?B?Wnk0NHVucUVzSUc0dVdNbkx4TFFVSUU0c012OE5OcTNDOWNnR0JZMDV2K1NT?=
 =?utf-8?Q?PLdBHyf31uvVOkU9jq53rApGW44kIrGT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEoyR3loTTluSTdyR0pzS0M5dTFSek0rTU9FaUdSSGk3dDRLcmlLQkFCMDlr?=
 =?utf-8?B?UjBGdTdydExNQ3hmbTlBaHBzQkdHMEU5MVNqRGQ4bDl6cURTZkkyMEhKT1E1?=
 =?utf-8?B?QXdxRTFZeGNST0RMSWFRUFFJc1dJbENSbzFQQlVPZjJubVNaTDZNbC9Heksx?=
 =?utf-8?B?S0lDKzFiaWY0RVhSZHRnTGlzRnAvYmpteHkvNVVCWnJMOGN5djhwSDE3NGVq?=
 =?utf-8?B?dzA3UTkrZFdRMkFxRHBzVjYrVFM1bkpYSXB5NkN3Zm5YY0tGV2JhS1BxUHNt?=
 =?utf-8?B?NTB2eFVPZ1RjekFXcWxmSS9lZG5oQkNoS1VNNmVNUVFyaDl2dWZ2RldWUlBt?=
 =?utf-8?B?NDV5V3h5bHR2TmhDNklsUkdPS09oREppRzlQS3VMOFo4SmVUVTdJNEk4VWFl?=
 =?utf-8?B?eXB3bHFRY3VuRkNRU29RTVlyS1lFL1VXdWovSkdiS3NrajNLcnJ3bnVuRk5r?=
 =?utf-8?B?b2RydzgwdUtaNi93T2JNME1WbGJQQkt0eExTd0g4WVl1K3BhYVBES0g3ZHd4?=
 =?utf-8?B?Q1d4UDlaMlBzemZWOUlHc0RKdWw3SERUZnFmT0N0dFowVnhDQ3Y2OEZPRGVr?=
 =?utf-8?B?VUIvV3J3Z3QvbWVES3pOM05FQVk0ejEvL3hZbnFaNkdTZnhaT1VibVdqdU1M?=
 =?utf-8?B?OHVtUGR2cCtlNXMvZWJjNG1taGErZVcxM0loNUxGanJ0cXNnUUhSNndUUjA0?=
 =?utf-8?B?TzR1YUNKSEIvUEhDckt5a0l4S3VIU1VZcFNPWTZ2bzZrR01FemNKMWZZM3VN?=
 =?utf-8?B?b0hWaEtReXJjRVA2bDY2bHJrT1VrdGdCd1Z3NitlSEE2b3drZUdSQ2h5QlZr?=
 =?utf-8?B?TWx3TkZib0k0TUo3K3NDUWtlQU1tSWJ4ME5GTEdhUEdXdElSL3NacTViVHo4?=
 =?utf-8?B?Sk9hZ3luMGZWOWFhektXN2d2ejBwelpJZ3dMT2lPWGlFVHJpRTAzZldjTWdQ?=
 =?utf-8?B?R2xuNHo0b0lZNEtPZ1J4NHVINUZGVUNyZHpXZzRhVEJhL2s3cExtNXFRMEVv?=
 =?utf-8?B?TEZDZHhkMmRuSnNDdy9zdGRtdVppeWhVMXpzSGhjQThFRzFacXRuS2dCT0dH?=
 =?utf-8?B?b0xENGpxSUNaeGNPajh0QnZNc0xxWThaV0wrQVpmWndHWGZlMzQyUE9VaFcz?=
 =?utf-8?B?VXdkSnBldVJKM0NNSnNlMTRNVVRlQ0wxZ0o0TnJJUTErSmorWHVldkpMMVgy?=
 =?utf-8?B?Zk9LSzVia2pGWHk5b3kzZmM2ZjlRcG1oYXYrd2N1Y3VHcFMvcGR4MitrOWVB?=
 =?utf-8?B?eE5iQkpZNWJyL3FVb2UvOHhyYjlDSnhWblJBenVpbFdOYUpmcnhSSUJ3bnpJ?=
 =?utf-8?B?U1pKMVFhdGZJVXVrSXZuQzZ3aDBYSHBUNE14TVZ0WlhtOTRVaHNocm5uUG0r?=
 =?utf-8?B?bGFMb25WYzlnZ3F6MmRLNksxQW51M0p3Sit5Ti9sK1JhMTBZWXpUSnZnbjNQ?=
 =?utf-8?B?dXVJM1FrS1ROOFBPaVpTclk2TkRXL1dLckZIYmNRbktsZjVLangyV1o4bXlG?=
 =?utf-8?B?ajNybitDZTJ2eFUvNkg5THE1Nm9Bc0NpVUZiMHdkd3pIdW5PcHQ1MC96dEZp?=
 =?utf-8?B?cHBOSlZWb1RzL000Q043U2dMdE1zcmFPejNqWXYrOTFqN09PSVRrTTlIRkxv?=
 =?utf-8?B?aXpKb3F0Y283cGNta2tlNzczVDU5OWZvdERBYXZ4ZlhxcXh4b2JmSVQ0anNw?=
 =?utf-8?B?ZnJkVitlamtJSXAyZldhbXU4NnBDbkpEU3R0NE5taE0zTTZnRjltUTZ4MkNK?=
 =?utf-8?B?OEZQMGgzbU1mRFdORjJjM21MNmVwRXJMN282WkhpeHlPNE5QTE9CMjNaSWZI?=
 =?utf-8?B?WjRvWlJCWlhrVkJ6V2pHTjNiaGh4OGkyVGF6SkZWbHBaanMyU0ZRLzU5aG91?=
 =?utf-8?B?SjVUUVEvZzU4QWwvSTFWYWxBN1JsejJWdUVid3lidEVXYzlyOEVrMS9zSWRU?=
 =?utf-8?B?aVFUczloL3Fub1NNeGVVYWJwMDJHZVJDWlp5NTF6a2VhRXNic3hadlEzRDF3?=
 =?utf-8?B?RnFrVmtJZEtid3pucUd5M0lqSDhrZXR1bzY0RkZxTlVZMjU3TVQ1SXZqVWVP?=
 =?utf-8?B?SlluYTkybFFMdmlqRlFBTjNGOEFhaWVuRkQ4OXY4VDlCc2ZBNUFIWW1STDNR?=
 =?utf-8?B?UkFvUmFlMVlMOGNQMTl6SXRUaUNvV1M2MFM5MXpURFhlQy9VOFdQMXlCbVk1?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9dd9bc4-b506-4e72-2989-08de1c27e003
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:57:52.4038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QA6HFXq5QliQ00uhaxOGr7MbxdzdA5bC2KkPpy4BgJWO8uuRgCQknjd+dWCjIs9NhiMGxcZlNIwS/PYq+JWljZERdS6/33RF8tYwPWIj5lg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5832
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
> Configure DC Balance Flipline adjustment once after other
> DC balance adjustment registers are written.
>
> Bspec: 68935
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2d418f45569f..97949ff782aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -785,6 +785,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
>   		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
>   			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
> +			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));

This can be part of the earlier patch.


Regards,

Ankit

>   		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
>   			       crtc_state->vrr.dc_balance.vmin - 1);
>   		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
