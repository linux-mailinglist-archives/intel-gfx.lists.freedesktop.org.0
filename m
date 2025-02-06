Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433D8A2A52B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 10:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72B210E7F3;
	Thu,  6 Feb 2025 09:52:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XOBolA7K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AFB10E7F2;
 Thu,  6 Feb 2025 09:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738835578; x=1770371578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DKmZp96kaOBUmqK2vYS+1m2lW2I84Xe6thgVWdi3UiA=;
 b=XOBolA7KhSA9U2+2vKAfA34dAzrM0dh4SmCdlrbJM90oJswJhTzC70yx
 Z1nuVNlxwHj795YJ8XczSlxUxQ4ole5U3orN2o071sEfrWxLvNCMEDCVI
 IfPYRljwZ8z3BwO+wMMcrFwxDUs34Oy6YORw4lh8oo0N/8NzUJHeh8orn
 SkXQYNkuijoAr0zMgSyfVDQcJRLCEBfa0KafzMpOhAEKM83CeiXyugWwk
 P/oBq/SBV4rq6HVr9gXkhue9cD8XnQiX1IkngVQ/9oiixS0v7BJOr3AFa
 eo1ugwoeAH9Gefyu52c1vBvrPUvkI/izgA6fAIT0GMSt00y4DoIVidHrd w==;
X-CSE-ConnectionGUID: ANFHetqPSpmFoX3Ws6vpKw==
X-CSE-MsgGUID: OuL5A8K5TH+hZ5+3WH1TRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39546370"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39546370"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 01:52:58 -0800
X-CSE-ConnectionGUID: O+NUG3J6QJG6ArLTHok/VA==
X-CSE-MsgGUID: W8iEN0xmTbKQJ3rX1KVsbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="111086286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 01:52:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 01:52:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 01:52:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 01:52:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qp8NOgTlHBsHzI/POqcyiJA1wSlAYKZgWh3ZQZLjbZXkF5GzO3pjRXsI0TlC0cAwxvGvFXmpq232wcyrskYA5TS9PTdzMq/IAGuHx3x6VdxePiuSmGYJsnvhUvK91fXHXYJfG/32/vFCeKQ9zuUw2I5k5Pp5OxOT1E6wK/kaTX81cjriQuaruaB7zRbtGA5Uv5ei1WO9l0vqNVkdKMHoyf+clXFs6OWq8a38mvf3GLicpQkoP28Eg8K4w/NQOPfRorUjz3kyApGsWbPVvoLdnsWkDt1myjEHB0nHRMcWJR/z0raWesJ+JdxKysdL7jBwnGzzXnLizSNHSXl7gspjMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gERz6hBC8k2HJW9reFLO6hrB/f32yMR8xDazMzX2H6I=;
 b=UoUAIWS4P+jrmjkPQgW6KIEyaCfCWFYeOQrPmnR5bmXDic6PMzP56Kn2CTHu/f0YqdyV3osU7ulmeJf8UmscikXUPkofkE7Pk2wfcQec077znJP4eDGExDUh0u8mokK2YTmBy5/07+MLhRyq+Hn1PcnTm0CnZtcZ3MmpcXavpQ6fHzVs0f+Ae+6LzVjQTJm58t2y+9GDA2LIAz68salKFaWx9j0sYzWc9e3KvHgFw+GzBMBC4S9L6SucF6+++QysfAcI2/qWWpmidXvXphVe0kqo5hWXYaMo9oWt7ShrjGI2WvJlnivN/Jx6Xvt6WhnQLzVss/sJMp608knbRf41Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Thu, 6 Feb
 2025 09:52:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Thu, 6 Feb 2025
 09:52:21 +0000
Message-ID: <d9e9f4a8-4f1c-4351-ac00-f8c4b674fb95@intel.com>
Date: Thu, 6 Feb 2025 15:22:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/vrr: Poll for the push send bit to clear on
 the DSB
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
 <20250130184518.22353-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130184518.22353-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7364:EE_
X-MS-Office365-Filtering-Correlation-Id: 61d49237-67f3-4f29-60d0-08dd4693f31e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU84c1IybXR6dmIyVEQ0aHV3MU10MlRLcE1xR0Z2eUV4aXozTm0rZG00MVdE?=
 =?utf-8?B?YlZqUGg2NGRQZmVVYytCb2Y4bUx3aWQ5ZXpRTmJZNEV4UVJtOXdOcVpFRlg1?=
 =?utf-8?B?QTFKL3M3UW1lWW9SQXhsV2M0MUx2UXU1ekgrWVB3WjJDbUsvNEQrejNzZnh2?=
 =?utf-8?B?WTBpNzR0a256N0FzVXNJM2VZSytzeTlpUkUyVUVhN3lvM2FTN2RqMWM2QTJJ?=
 =?utf-8?B?N2dTSzRKakEzajg1RmVYaGc5Tk1taWVKalVUd3Vrbzl0ZnZBR3pJa0preEEx?=
 =?utf-8?B?bEg2ejV2MmFGWnFkNENpR1JncXBmSWVoQm1DZTMvVTJFdlFBVVR1NlVkUG96?=
 =?utf-8?B?Tk9sY2lmVlpJT0hCVXlldE42VDlhckxleUU5dys5M092S2k2d0lzUDFCRXlt?=
 =?utf-8?B?aG00QjlQN1c3SEhmelMvbVBlQW5IdVFEMk1ZNXZmMTJocTVjNHh4R1NRTDVG?=
 =?utf-8?B?NlRjMHVmL2FBM2ErVmNuT3RGMFFIKysxT2QyMVNPRU9lZEFFUWNmRmt2bHhF?=
 =?utf-8?B?bGNBdDVCNXZ3UDUzSFZqOHhFV1JzZW9LR0I4dUxoZ2VvZWQ2NmFVSlQvY2R3?=
 =?utf-8?B?SjZPc0k3clJSOFhVbEoxMTdmeGsrRTV0QnY3WVVDcXRDaGF4ZnhHTjRJYk5k?=
 =?utf-8?B?N0E1cnA2Y3ZoZkRmVFI1SEtZV2I1VXErNWVOUFdwdFVoUU9GZHhJVFNTQjNI?=
 =?utf-8?B?UFo3UDNiWU55bENXMm1BQldrMlQrR2dnNHFYMGI1ZWxjaHVPbGJzWHZYcE56?=
 =?utf-8?B?U1JJeHRMdVRWUzY3dGYrZzI0ZERadDZ0ckh1WTJLN2N1dk9LYi9Xc3d2N0E4?=
 =?utf-8?B?K1RSQ3c3TkRDQzlHT3k2SU1SQTFLSktlL0hNWng1aFV6REhLZ3JsdlkrdnlO?=
 =?utf-8?B?OTFjd1hWV1JoakhKeVYwSlVxaFhqNzloUTB1N0ltRGZnQ1FGU1B3OGI2akp4?=
 =?utf-8?B?eFlieS9Qelk3UGgyb0lYczNtZ2RmRHNadGo4MUdCRnVDVWc1M3BSanlKakc2?=
 =?utf-8?B?dnZYbE4rWDJpYmQrdElQK0MyRjlhanFpdEJwTWYyWEVHL0tSSXZ3RnNEVmlW?=
 =?utf-8?B?bjMrUFUraklmQjZOdlZqaXp6VExpeGJrTmJLazRUN0d0bkRONm9JWjNEeU1l?=
 =?utf-8?B?aXBNWStOdkdWMDBMRHorVXlhbi9GOVFaRDRaUDBZWXVaVkZGQmlua3N0Wlo5?=
 =?utf-8?B?OFlDYmxHYzdDTVVxaWhRZGVOMGhYL2ZmZThnNHVIaXdZZ2E0M1lFYzhTY09I?=
 =?utf-8?B?cDdheW82TkJNcUQwbUMyMExibDJkRC9sR2htM1kydmVGTmM3anNRM2tISmVI?=
 =?utf-8?B?ZEJDRDlERmhacHJpbHUxcmk0U1BhYllXQlE1cnlXRVpRb1RUK253bzQyRits?=
 =?utf-8?B?bFYvNzdWUS91SkhPd1ZlREJ1N0dvbkZXTEdvTTJIZTVhUTBSWDFBVUUwdS9a?=
 =?utf-8?B?NjdNUS81aUhMVStxa1BWR2RuRW5od3JoUG9GSnJMKytSdVY0ZXlwTlhSMUto?=
 =?utf-8?B?SElpTndxVXNEYjRvWnRhSURha3lHUDRFRE83NExtSS9mQnIyNm42SkM0a0Zm?=
 =?utf-8?B?WnJMVVorQ082WWRaNjBwb0tTd2hWc0R2bTRYTGVvSHdWMTlHSlVpUmJZWE1v?=
 =?utf-8?B?MUJNSVI0bXNRVm5lM3VzVWcvTEMxUGVRREpoaTVkMVlqcWtzaHJpWGtGK3lE?=
 =?utf-8?B?c2xmQlZObDFwakhDblNnUGo4MWpGVlQrR1BxNTNsZ2F6N1gyeFk5YjdWc2Fv?=
 =?utf-8?B?UmlLaTg4eTc2RWYvVVppY0EyVkgwSkpNdHFoQ1BXSlJ5TzZ2RStaQ0lQcHAr?=
 =?utf-8?B?ZlJiY3BqeWxqY0lsSUFLUVhOZ0pqcndpTGpQRmpDdSsxcGhac29DL0tEMk9r?=
 =?utf-8?Q?M4GoPUaQjqrhh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OE0vbHVDUklDbG1CLzVlREFNUnl0cm52Znpyd2RXalN1TE5aTWNNVzVORCt0?=
 =?utf-8?B?YkF3YUdLUGVERklrS0lNbVlqTTU3SGVrM1BGa0hFbFFVVnRvUEQ3dngxU0Zl?=
 =?utf-8?B?WUVkSDFKNzY2QU9HTk5xdWtNckUrWlEzenp3OUdYSDRmTW5QdzQ2WHNjaU8w?=
 =?utf-8?B?RDdwT25VWVdyL2l1elJEeTNtWnd0MGRqUXkrSE1GZ1dEeTltUEQ2NWZIOUVE?=
 =?utf-8?B?MHJJSmtKbUJJTjBDZUdKOWVsY25tZmFWNm5wQ2h2QmdtWERPWm5JWTZUc1lz?=
 =?utf-8?B?VTlaNXQrUENuZkhveWw0U1FScGUyUGtIRzQ5V3RWT3ZUSGNPcjc1Q0lYekMr?=
 =?utf-8?B?dG9CVVE2cStuRTFVbk9rRU04bVZEN1FYTXZSYmVqdzdYVjMycU5OcVFzbEhx?=
 =?utf-8?B?OGdUQzJySHQ2aWlUSzVSM2tOZXl1NzQ4UFJseitrTm95Wm9SeFo2QnJwODg5?=
 =?utf-8?B?WE9XRC9QUGVpSFk0YmJlSVgzRHZNZkpMS005UzJpdEVyNkEzelRqVWdSY0Zs?=
 =?utf-8?B?L29CMmtKMVh0YmJsMXBYbUNaRVFSZy9hMVlrbFl3Y1h3NVJWakhCNGhWakhY?=
 =?utf-8?B?aW1BQWNQZUU1c2d0eUppeUV0bHlxSlpXT3ZNUTBkQ0RTQitGK3JSc0IyOFZm?=
 =?utf-8?B?NlFkbGpMZFZIYUZCdTJxNFl0ZUJKQWp5V29QMXIvUmNiTmRwMW5Jd2lLQStW?=
 =?utf-8?B?NGZrQkIvV3dHRDJRakp4eFRXUEpiSGVONmNTVkdDV0RyTTBHZUhXVHY3NVl1?=
 =?utf-8?B?Z3lMK1hVOTJ0YjM5YlNJd2lLS0tONjdFYkNMdGozZUY4RUlOeU1Ma3pBcGVi?=
 =?utf-8?B?SkVNT2FFVlN4UUl3eGtqcThsUmpkT0oybFJXOGo5T0FYNU0ySnlidGRGSDE5?=
 =?utf-8?B?SFBqM2pVS2U0YjJZcDFFbWxWYkFoMHk3NkVsSG1DZlgzcTlHN2ZSckx6cXVM?=
 =?utf-8?B?d0NsN0JIYS9YejNGOHgzblB0ZHBpZWU2ZTJ6b1dZTTdnYStrTnpPRjM5bG5P?=
 =?utf-8?B?R0ZXSDdUU2J6NmpZZHRablNuME9TYURiak5NQ3A5NVNOM24zL1VNcEZ2S3c4?=
 =?utf-8?B?MEhUNTBiQVRaQlBmUlRwZ0R3OTRZQUlEZ2JpQXFOYnNqOWV1eW5IbnBtRUts?=
 =?utf-8?B?L2crMnc5eGRuaXFOSDJuMXBPSkdSY1ZCajBqT3QxMjUraWVBc004N3BsdFY3?=
 =?utf-8?B?dEtnOTBydEpXb1dJMWlLWDQrWThQbmVjTWxrdEh0a2lPeDdpK1Fzc1UySHpX?=
 =?utf-8?B?VkRrWHpPcmZlaFFuL090NlJlOXQ0MFZhZXEwQ0MxUkNzaEZza2s0cENFSXFX?=
 =?utf-8?B?V3hiTHdzZzhia1lKbWlVUjJBUWhxQkZYMUcyV0N2U0U4Skc3Ykhka05tdnp0?=
 =?utf-8?B?T1huL3M3UkxPdVdXWGJDb3ZMaG15YTRnRE1pakdXdXJRbFVaSm9EWlA1dG1r?=
 =?utf-8?B?aGRFYXVtOVZqak9MT1l6UDVINUxCN0RnUEY1NW1za1d2c2lIaGc3ZndJaDBm?=
 =?utf-8?B?M1hvNVN0ajB1ZG5GZnU4Z0ZWTmxmT0xPLzdJT3hWRkhTT29mSWJ0bkJFaFhJ?=
 =?utf-8?B?VmhYaUltWklOcngxODhpSW9RWDJtbnZQcUhJdWtoaGVlSHNiQkgvTXdLV0lo?=
 =?utf-8?B?UjNHWmQ1SCtnZ3NoWGJyMTBwdE02QXF1MXlBNk1yRW1kanVoWTFYUVdOUC9V?=
 =?utf-8?B?QysxdStrV3lWOW9VUS8wcWp1MDZOdDN2SXFoVUlmajdwN05ETC9mS3AvTVdP?=
 =?utf-8?B?dHJOU05GSEd4bVcwNlB6S2tMNDBGaE9ZMlVqRGJVWldRRVVUYThTQ09hc2hD?=
 =?utf-8?B?TGtidS9raG1NOFVHZEE3aFh2MldJUERuZkJRRjdpemtSTC9WZEJnNUdmQmRV?=
 =?utf-8?B?VHdhTlpoaGVmWDl5R3RZWVlkKzBPZ1FXWEYyY3p4bmkxZ0dQczRhVEJqVk55?=
 =?utf-8?B?UDlwdm41VXV3QURwOEFLQVpINDdJTXhSSk5peE5jRXBTenQyak5wKzdIbm1L?=
 =?utf-8?B?cU9pVGZtNGoxMWk4bnFlVmVQVlI4bk94aWJEY3hUVDRHcTdKeFBsYUR3Q1hw?=
 =?utf-8?B?SmppWkpaUUNsQkduSWZrRlZVd2ZXQTgvSUZzQUVKU3VIY2JFR1NaNFlzUTd3?=
 =?utf-8?B?ajk3SFlGeWpOMUlZYWQ2M3lmRzFVYVNTeW1BcWpuK0J3UUorTldJdjNQNFN4?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d49237-67f3-4f29-60d0-08dd4693f31e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 09:52:21.7808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tN0dCr0YXZZKmKgm7ciD824bqkhudOh91Pi/K6TSooXQrRCylczh3PtshyQBiJQVviOExXQwBvckmkV7ficsLz9n9F2azQvlciHLCYeCSlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7364
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


On 1/31/2025 12:15 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Since we now do the "wait for safe window" before triggering
> the push send, there is a theoretical possibity that we may
> have screwed up the vblank evasion and the push has slipped
> past the vmax decision boundary. In that case the push would
> only happen after the next frame's vactive, while we've
> already signalled the flip to have completed via the DSB
> interrupt immediately after triggering the push.
>
> To make sure we catch such screwups let's poll for the push
> send bit to clear. Assuming vblank delay has been dealt with
> already it should clear within ~1 scanline. But for safety
> let's give it ~2 scanlines. If the bit does not clear within
> that time the DSB will raise the poll error interrupt to inform
> us that something went wrong.
>
> Also I suppose it might generally be a good idea to make sure
> the send bit has cleared before we complete the commit because
> we're not supposed to send a new push while the previous one
> is still pending.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 31 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>   4 files changed, 35 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index be2691a80227..964a4bde3c88 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1990,6 +1990,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   
>   	intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
>   	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> +	intel_vrr_dsb_wait_push_sent(crtc_state->dsb_color_vblank, crtc_state);
>   	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
>   
>   	intel_dsb_finish(crtc_state->dsb_color_vblank);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 69dbb0eb5ca1..3fc61c1848b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7732,6 +7732,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   
>   			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> +			intel_vrr_dsb_wait_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index adb51609d0a3..2925a013f708 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -5,6 +5,7 @@
>    */
>   
>   #include "i915_reg.h"
> +#include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> @@ -416,6 +417,36 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   		intel_dsb_nonpost_end(dsb);
>   }
>   
> +void intel_vrr_dsb_wait_push_sent(struct intel_dsb *dsb,
> +				  const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	int wait, count;
> +
> +	/* not to be used in mmio codepaths */
> +	if (drm_WARN_ON(display->drm, !dsb))
> +		return;
> +
> +	/*
> +	 * We always do the send after the "wait for safe window", thus
> +	 * the push should happen within ~1 scanline. Poll for ~2 scanlines
> +	 * to make sure it does. If the bit does not clear DSB will raise
> +	 * the poll error interrupt as an indication that we failed to
> +	 * sequence things correctly.
> +	 *
> +	 * Note that vblank delay does postpone the bit clearing, but
> +	 * we can ignore that by assuming that our caller has already
> +	 * dealt with it via intel_dsb_wait_vblank_delay() after
> +	 * triggering the push.
> +	 */
> +	wait = 2; /* usecs */
> +	count = DIV_ROUND_UP(intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode, 2), wait);
> +
> +	intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
> +		       TRANS_PUSH_SEND, 0, wait, count);
> +}
> +
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 899cbf40f880..19a5aa671eae 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dsb_wait_push_sent(struct intel_dsb *dsb,
> +				  const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
