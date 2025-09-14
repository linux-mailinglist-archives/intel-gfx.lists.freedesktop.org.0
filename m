Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18426B56704
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 08:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9572C10E0E6;
	Sun, 14 Sep 2025 06:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGZ61XT/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2026410E056;
 Sun, 14 Sep 2025 06:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757829903; x=1789365903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zwu+YYb/Sf7BHuMnQ+9wVRv1mrx982gReLwCGMF5oPk=;
 b=IGZ61XT/F3g0/TGtpiIannzYiABL0qQsorsMSR4Q8nXjTeOTW1VO8MC0
 Cwxoq8peS/01xhzErohofe3+H1PBCyYc6BG2ANvErowg6ZUxw+K5Uunh7
 fj2qOK3QH8jGHFxWiRjJp5m9WoefTO/ngjgbxF7tU3Xl6/E+mk0A9SXZx
 Um/y513o3ppuiGFRu19pXX66OXGwoFP1LJkVtxmUDz9MGSyc3fCk7LmqP
 0pnmbofoZvX3mOCqGGKdxOsfoA+xMLMueiAxApNM90mnroBqP2JVEMlUs
 OUgiXH7+NvV15yrDba6A8qMrhQaVXjOi8oygoeSUcxsUpLa+UzvGthBjV g==;
X-CSE-ConnectionGUID: GraOzX53Q/a4/UVN3iGXWw==
X-CSE-MsgGUID: +ZWh2gq0Rk2/KqqnDiIExw==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="47685845"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="47685845"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:05:03 -0700
X-CSE-ConnectionGUID: cgZxwAyiSF+9jmdvrDi7QQ==
X-CSE-MsgGUID: sEmkHpW7Q+2CtSaLbWAyXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="174720610"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 23:05:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:05:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 23:05:02 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.66)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 23:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Byey+2DshrpuQOGAFPDm8w0CgNLVFz7uQxtLPN5zJCZq2Z+cmKqFUi3rFdWwDxCx7W6OYZFyUaDnfOctSgCblobsTLdW0J5k/kJv9ON248lRBDAEA098rg1+klaUrJ/ScoXLeWNeDJmzG10nfUyQ/6o1NZcKbMLmNKLiSrVz8SS12mOwtOI9XfygpMr7ClRUoeLC6hS9l7sGECkqSXqcY5gNaBkiXb77/0vSrL4CH54hJk44Avneq+1FB0yNDgOtclCYqySGxvQyGCVNeNqioE5MfgeGqWMcLWQ1eoj6KAaKBl0yCPwE4mb1hfQxeEQuctJDnF178VetHLG2uzYSbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InBgxt5T6iVkU63fMvR1f6RIGhU3AiWy7yDJ1m8Qu18=;
 b=DzuM1ADrHesw7s8OvW2BRTCCYyZ0tRRy69OFbGmRXrE7mFNGWh4HXzKMjSnMcQ0GR1NMeunAzhjwIDC6hQ9nhALyf0RKoc1PZBgMfY0rgVRT03+Mf0evrscNHycQAV0SNjA0wpdusjM3A8AXv0Yk8xJPD1thxAhcFQdxTRbibRN6qrhCwF+D3jFAlBlCnjHLea75AOdNO+Xd84rmOVwBa9AWaSpWjy96bxDcZUhYm0uJ4tEaTe/z02GAuUFoxXPQ7b7vwmUAWGtaWEIRtOqHYvw+rTOxTezQMQVsHRARbB6MOiZAVbsDGhwdn/vGAyi/L7gG9nqqIQ/3NeimazevkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 06:04:59 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%3]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 06:04:59 +0000
Message-ID: <dd421a46-ee11-4d42-9ced-f73a93dd8d89@intel.com>
Date: Sun, 14 Sep 2025 11:34:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/15] drm/i915/skl_watermark: Remove redundant latency
 checks from vblank validation
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-11-ankit.k.nautiyal@intel.com>
 <aMLbD4g6iB9s_FWU@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLbD4g6iB9s_FWU@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::9) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: 766a9b3a-c167-4994-d246-08ddf354a1e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UnZNT0VxVjluYnpiQ3BzZzU1YWNUU0pqTUhFVDA1MER0clBuZjRiVllXTmFP?=
 =?utf-8?B?SjZ1VmgxL3BCWUhCQTUvdVZtUGg0UDBtcDNtbGFVV1FnanBUc2VNVnZucTVE?=
 =?utf-8?B?RFh6MWFhYXl2UklZNkZyZmFIZjYzQk00WXh2SG5QdjR6RWlZOE1aK21iNkR0?=
 =?utf-8?B?V2UrOTVCcUJuZW5VbzIyWlFqNVBIL3Nkd2hDcGE5VnRTKzdVa05IdXgvb0VW?=
 =?utf-8?B?aGN3U1E3QmtBRjdJTGNPaUo2NFM1ODdITWNSK25UbnRaWkpCZW91NUx6bUdS?=
 =?utf-8?B?MEtXaFJwUUpPcEJXbkFjTWw2YTV3MXFSbFBueDV2OFRPZmtWMW1aZ3VKUWJw?=
 =?utf-8?B?Z0hzK1RKZEt6WHRETkIxdXZ3QmFzQ0dudVUyNHd3VmRSZ3NXekVzT09DS1Ex?=
 =?utf-8?B?SjZ0VmR6aHVrQWdKZUVTaTFKNnFPa0NBa2pVbmpKK1hTb3dQZ0FGUTJYeHBp?=
 =?utf-8?B?dDk2bXNXSUNPZm9CbWtDL3N6TlRoRDBKVnpMS2Z6SWdhZmNZNnRMbHc4b1JF?=
 =?utf-8?B?YjBNZTZPcndOWjRDbDRqK05kc2J6YVcrd0xDenVJOU9pcWcwVEhlVU1xSjV5?=
 =?utf-8?B?eTE2Z2U1eGpWbXc2Qzhtb0FNbTJtb2pOcTBSY3BBbXhoQklaUGtTeTR0TU13?=
 =?utf-8?B?NVlKTG9JU3lyRFIxb0ZZRjFPd05RdjM5dW9PZlZheDgyK2tBMHU3cU5BbTFn?=
 =?utf-8?B?OTk1ZWlSWmtWa3BONzk1aGIrenJMa0tud3poK0dSZE1NTm9kSlo1d0xkNHJr?=
 =?utf-8?B?VXFSMnNkNEVTLzNlL0RkSnYrUHNnaEdxZnVEc2hPQklZZExGRWJjaDdweUtO?=
 =?utf-8?B?cENVbHZNejVObXNneUtzVVRaVFVIdHlXRE4zRnJmbEJNc0ZKeTRzbHR3T1Bo?=
 =?utf-8?B?elNjekE4TkRlTmZPbzZpVXpIek1tK3NXODlLY0FpSC9NeXo0ZFdiUUYyTDRF?=
 =?utf-8?B?THhuZWVLUXMyT1pZWmx4c0gxeGtyTzF0UXpLMm5kTy9ETHJjcFZzUVozTTgr?=
 =?utf-8?B?c2RsenozemY5bU0ycHVJS1dHMnhqUU4xMTJsR3FQNUN2T0VMc0NxZHFEZFQ1?=
 =?utf-8?B?ZDJCMXZYYWQ5azhJMS9rTzlUUjd3WWVLNU9NNWU3RXY1YmRMRUtibWFETi9C?=
 =?utf-8?B?Z3BweFJYQ08rRCtjMVlScWVMcG1mb09tWWVQeEw2N244U0ljNHArenFBTUtq?=
 =?utf-8?B?RmtucG44M1NCMHVLWFN3eWN2S2VrTlBrc3JZQ1FoZktCcTdxNWJNd05hVS9I?=
 =?utf-8?B?VnVIYnIzL2xrUXpMZ3JLVEREcmllZCt2V3pJTjJQU3IyWUsra2xJNjFnL0Vp?=
 =?utf-8?B?WjcvNW9wWVZlV3BqcGI2S3lSLzRqZm81V2J1Y2hpTUZUWVRwSkRaRHF4R2Jv?=
 =?utf-8?B?bUNLR3ZOK3g1d0didm04S0VpZjJHa0U2Tlc1THJaOXFpQ2loMFZPVTZEMEM0?=
 =?utf-8?B?K3RqTDlSTURTdDVwR1YxZGE5aE81aHRvVnYzRjk2Tkt1TEt2dGxVZForaVZJ?=
 =?utf-8?B?MFpac1lNa0tXNVRKd2Y2M2F5VGsvWS9zVklRL29HUlRxZlZycXF1TDJuNEVl?=
 =?utf-8?B?ZmZMTlF0dUtjbU5lMXE1TkhwTy9QcytkWTVnUUhGVHN3Mm9RRVFLaWVXMWRo?=
 =?utf-8?B?RkVJZ1N4ODNmRDhSUkdCaU5xVHJIY0V0N2xMK0dqSkE3NUIzYWV0ZHNmeXk4?=
 =?utf-8?B?a1VCaGRoYWN0dUpHaTZvelBpeXFxbUF4U01PWEsrZUw1alB6NWZQSHFZVHR5?=
 =?utf-8?B?bjlLZkI0SnBJS1dpbmV0dU9EZVhjSVE4cU1qY0lJd01MUVZkcWdmd2JtVXlk?=
 =?utf-8?B?Z3VNMVF4YWUxSmo5NUJTZnVtYTNZek1Xc2hCUXdRZEQ1M25ObUpCbnhHSTkz?=
 =?utf-8?B?OVZRcXVhL0FiM0hJVXJnWStBaFA1cjVTbU9FU0NCeVVMMC85K1NBT3hYYWV6?=
 =?utf-8?Q?hGuvW0u77rA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVFZM1ZqU0Q0UEhVek1sUGtMY3F4ZCtzTWEzb05Qd1JKdE13MmIrOG85R3lI?=
 =?utf-8?B?YnNsRTkwYjUxVXhGWlF2OHo4aEFFdTlwWlgvSW9sZXdiOWZDMkdISDlrODEz?=
 =?utf-8?B?Z05TU1BIQ3d0cWkvcENjT0kxTUVvbS9JVGJpdjhUb2dEY0RBWGdDSGFYWGVp?=
 =?utf-8?B?UitTclE4WTM5STRaL1ZjU3p4RHFyM0xGV0ZvaytjNERRUndXeE5nc3Y5N3Jl?=
 =?utf-8?B?UzNmQk5uQW9NOUUyRm5pY0hIR3drOFd4ZVVScGJ0OG1uTXJCR3lXbUgva3JZ?=
 =?utf-8?B?RHdMNUcvRmUxUy81ZXY5OUpsYSt4UGVnZHhKL1JQSEJlQm9tWTVZWmM3cVlP?=
 =?utf-8?B?Tm44UGl1eVRoZjA2S3VHU2d1bmdWczl4NG0vOXBzNTBoT0ZoMGF3NFdBSGwr?=
 =?utf-8?B?djBzMGk1Sk04Z2NLT2YzbHJzY2JkYU9uZXdVUzVLQ0t6eG1EbjRQUEdxYVJX?=
 =?utf-8?B?THFURFVxcWN2Q2M2NlBoU3BTcE1RaGN2RE1nQldtWmpUZHRPSXI4VVBvT2Qx?=
 =?utf-8?B?ckNPNGRldTkzQzh1MFJNY0xQWXQyeG9RNDFjWnNEano5cENTcU1xSGZmUlBB?=
 =?utf-8?B?aU0yMFdHaTl6ejJuR3JmVS96TFRVN1pPeTlCcGkwNHptbjc4Q1NzdWZYYlYx?=
 =?utf-8?B?ZlhoTFZoNzQrdW1nWC9HVGxvK2ZqdkppRDNTenpJVGNmMGo3c2dUWkIzRSsv?=
 =?utf-8?B?UkFlMXRITG5XUC9BVnlHZjhZRmJ6SzFTcVV0cDBBRW40V0NUL2p0YlNGSDVU?=
 =?utf-8?B?SXlHRzVobis1SDkrSFlXYzFUaHZmMUdwZ0FzNEtMeStHeXBrSGR4cVB5R0dw?=
 =?utf-8?B?bm81L3ZOaXhteklNYXZYRWcvZ1FObXIxUVpnVUd5dFdOemZSR1d0NkFZNHdy?=
 =?utf-8?B?MlZhaUtmWERnWlFIT29mTm1RKzBaYm5HU1BsdmhKUHhCdWtnMDNZcFBBVkE3?=
 =?utf-8?B?M1lSWFJTYytOVjgvbWREQm9EU0hXOWpYa2hmNk9vRTZ3NlI5ajRHbXRqM1Q4?=
 =?utf-8?B?cWhvYVZTUWZLdk82ZldURnRSaXlNZ0JBYnJ2RThGU0x3Ky9QMmx1UHdDYnZR?=
 =?utf-8?B?Y1Q1RXFINHp1NnFXV0hYaTJqMHBZK29ySXNtanJhTFVLejU5cHlyZjJuWDhQ?=
 =?utf-8?B?SUh0SU5ibUNwY0MvWUtScFM1ODJjaWhNWlNlKzVoYlNhSTA5c2QvMjZLYWhW?=
 =?utf-8?B?cWV4QStsR3BrNlh2MisvTkw1NjdIUHQ2TkxRRlloNFg3WmRtS3ozRkRxeStQ?=
 =?utf-8?B?aXlTK0NGbjFwRnJ6MHR3M256Z3pDaGFiRlBLdnpUc1RjSXNBd3BXTUV1N3Q0?=
 =?utf-8?B?dWRBWHprS3R5K056MGtTR3hRUTBJQnllWVdoai9YWGl3a2ZBM1BvZXNXVmt3?=
 =?utf-8?B?U0FZcTBRMTRRYkg1VWQzenpKVGhwek1hdTh1MlZSMW5OV1Q5WUQ0WVIzVXlq?=
 =?utf-8?B?cFZqcFRMUExEbmpXcnpBaWFXVkhJUzk3dm92V2ovYXE4cUVpVFMyRlRQbDQv?=
 =?utf-8?B?OTJRa0lIK2hVVHE5RERxUCtCREdCNzJHSE92d1lweld0dXVTOVZqMFR1TVNk?=
 =?utf-8?B?WjcvV2lNUUVLVkJCaExoZEIwZXZzRlB5bnpLaTU5LzhPUkxqcmhWcUFydUFr?=
 =?utf-8?B?UUtPSC9WNGM2c3RwSUtHcDFCeWVjcHcycE1UNGNwWkRKOHVkaWZXY1Rtblor?=
 =?utf-8?B?UFMxVW5OS1ZvbUQ4aXoxS2wzNFJvZWw1V1NWYnQ4QU0rM21LUDdiNEZBWlFy?=
 =?utf-8?B?dUZmaGZWWHZHb1ZDNk5vb1djeml5U1p5bW9jRkdQWW42TXo0YVdzOHdNa0N5?=
 =?utf-8?B?ZzQ1RjJiVmJPV0MvNUt4MnUzMjJFZGZxTFdDelZUdlVGZ1RGenhib1JXK2Qx?=
 =?utf-8?B?enA5M0xiTkhZbCt2L1pxZHZObnJtNFh2TWl1bU5CbHJzalVUMXlxTThaREZj?=
 =?utf-8?B?THdjQkdHRVVYcG5NSjVBQzFQMTlmREd3Z0hmRGVMK2E5QXB0SER6aHozRmlt?=
 =?utf-8?B?TTNxRXBGRzlncDJuVnRCaEVyaEJ0ZEl0SXByL1VuRnptNjFvczBPVUZjdUpo?=
 =?utf-8?B?aU5pTWdwcG5waTZ4RWRqWGtIcXgwbGk1NlVHTWYzN3MxTTBIbXpzV1J3bERE?=
 =?utf-8?B?ak9jc0RCS0V4WktlWTZGczZxdUkvM1Jyemx1NjlUVDBWOFM1b2M2OHpxYUU0?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 766a9b3a-c167-4994-d246-08ddf354a1e3
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 06:04:59.2756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ti6rv01hXiVXozOk3ns7SskBeatpYmdOaumjbbWuhcrcC26xH1+qSmYsaB6jdGjImBYhiRwy2tlUxQ+5Cv/yZrhrhJPsv9GeK2Opop6xb2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


On 9/11/2025 7:52 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:49AM +0530, Ankit Nautiyal wrote:
>> Drop DSC and scaler prefill latency checks from skl_is_vblank_too_short().
>> These are now covered by the guardband validation added during the atomic
>> CRTC check phase.
>>
>> This cleanup prepares for future changes where the guardband will be
>> optimized independently of vblank length, making vblank-based checks
>> obsolete.
> This looks very wrong, at least for platforms that don't have a
> programmable guardband.

As far as I understand we need to take care of these latencies only for 
guardband and we had put these checks in vblank check because guardband 
was matching vblank length, so that, If we check for vblank length we 
are good for guardband.
I can either let these changes as it is for other platforms in 
skl_watermark.c.
Or else , In the previous patch I can remove the check 
intel_vrr_always_use_vrr_tg() so that we have new checks for all 
platforms that support VRR and guardband.

Regards,

Ankit


>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 79 --------------------
>>   1 file changed, 79 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 83ac26004f05..07589096b143 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -28,7 +28,6 @@
>>   #include "intel_flipq.h"
>>   #include "intel_pcode.h"
>>   #include "intel_plane.h"
>> -#include "intel_vrr.h"
>>   #include "intel_wm.h"
>>   #include "skl_universal_plane_regs.h"
>>   #include "skl_scaler.h"
>> @@ -2159,93 +2158,15 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>>   	return 0;
>>   }
>>   
>> -static int
>> -cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>> -{
>> -	struct intel_display *display = to_intel_display(crtc_state);
>> -	struct intel_atomic_state *state =
>> -		to_intel_atomic_state(crtc_state->uapi.state);
>> -	const struct intel_cdclk_state *cdclk_state;
>> -
>> -	cdclk_state = intel_atomic_get_cdclk_state(state);
>> -	if (IS_ERR(cdclk_state)) {
>> -		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
>> -		return 1;
>> -	}
>> -
>> -	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
>> -				   2 * intel_cdclk_logical(cdclk_state)));
>> -}
>> -
>> -static int
>> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>> -{
>> -	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> -	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> -	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> -	u32 dsc_prefill_latency = 0;
>> -
>> -	if (!crtc_state->dsc.compression_enable ||
>> -	    !num_scaler_users ||
>> -	    num_scaler_users > crtc->num_scalers)
>> -		return dsc_prefill_latency;
>> -
>> -	for (int i = 0; i < num_scaler_users; i++) {
>> -		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> -		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>> -	}
>> -
>> -	dsc_prefill_latency =
>> -		intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
>> -						chroma_downscaling_factor,
>> -						cdclk_prefill_adjustment(crtc_state),
>> -						linetime);
>> -
>> -	return dsc_prefill_latency;
>> -}
>> -
>> -static int
>> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>> -{
>> -	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> -	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> -	u64 hscale_k = 0, vscale_k = 0;
>> -	int scaler_prefill_latency = 0;
>> -
>> -	if (!num_scaler_users)
>> -		return scaler_prefill_latency;
>> -
>> -	if (num_scaler_users > 1) {
>> -		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> -		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>> -	}
>> -
>> -	scaler_prefill_latency =
>> -		intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
>> -						   chroma_downscaling_factor,
>> -						   cdclk_prefill_adjustment(crtc_state),
>> -						   linetime);
>> -
>> -	return scaler_prefill_latency;
>> -}
>> -
>>   static bool
>>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>>   			int wm0_lines, int latency)
>>   {
>>   	const struct drm_display_mode *adjusted_mode =
>>   		&crtc_state->hw.adjusted_mode;
>> -	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
>> -				    adjusted_mode->clock);
>>   
>>   	return crtc_state->framestart_delay +
>>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>> -		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
>> -		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +
>>   		wm0_lines >
>>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>>   }
>> -- 
>> 2.45.2
