Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974E2A6E8E8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 05:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835DF10E379;
	Tue, 25 Mar 2025 04:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwbEGeS/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1D210E36C;
 Tue, 25 Mar 2025 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742877385; x=1774413385;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZEVYJAvooxvHY6zFvkHlHl/apcOZZ6Vr0By+H3hudpM=;
 b=KwbEGeS/iigT0/GCPJoMDZTQI9we+alI0QKE/xhZTRwHxqFPMgPuVc5N
 YAHxmwC58juvj7wSsuL6LNZRxSJONudepwbAglHQ8BUn72M1eS+CTDjC+
 FnZFtFdXHTnKHA13u5py+fiZHl5StRtcdHgQDHdHglip2Mae/vYcEFC48
 nSG1RgnviczdPgDkYfxrAOjWtfunFfLv0QE3nAVMEEX4Da8ndMaGlbQXq
 UfaOy7aqjUC9zOS7vVl6Ij8CzV9y6PclMkX627BJ5sq27im/KoUuIPH+V
 6pfwjD9j3D4KJOGCeacpMEdIKWtyeKpuBPqHJ6z/Rx/HW1hD8eeCoTfFZ w==;
X-CSE-ConnectionGUID: tqPtFCBHRbS6XuDyfo08zQ==
X-CSE-MsgGUID: EUOd5/EyShWYPSF6H2utlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47982113"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47982113"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 21:36:25 -0700
X-CSE-ConnectionGUID: AkXq1OCqQ86uqRllG005KQ==
X-CSE-MsgGUID: AUPnen30SlyRLiNS2ctFag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="125039365"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 21:36:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 21:36:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 21:36:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 21:36:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=En8YZ1ZwBVU9u4kkimZztPhz/4ptGyjKX6uCScBtU7q+8kDcOiL0r9o8UA8eid7krNg8fgaQF1RhnCM6u/jzDJ3gBVYfmWpBJMUwh+x64NzoAkaUZxg124723fRukDjsId3dUsG+ihkWQ1xTFkMGFHl1olLlV8BTcJ2j8oILseNzEPYkVVHxx/1zI5xOlOWyir0p5ssHKAcGwpvcYde2T8D4fI9mYaMHpfMES7kwNeNTkPQTls4SOWQ9pF+Y2wAUy87StUDhVMs5i196FbSVtAcPm01VCwe7in8VRsQ28zLA1AA5kfRTDxacMxbuT6gfFgEN4flONGYW6qg+ePd7Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=94fK3DCkFeinUSwylRjU9E4vuQVKJMtHZMB9HvNxsqY=;
 b=H1WZpbC97oUcuKwcydrOU3sRlNezLRVpLV2JoYkuiDrioAGkL4oP6XpoEs0ieKcLkWuNipg244tR2AfvFmDpEwwg4VqP1bVXjA1V4YOKVF1SZSoIc9D3BRBgHHxljwA+LdNmovWugd/RFQb6WXwSbl72c4Pg9LEbezeu6TKz/Ps/elyGlF3AONNio1JozmQ3hTkXbm0QvXtzEa1wdCCIexYlyEkB0b+7MWuf5RTsG/i6B+jcve4ZZUwMfGojjng043tSV97BQmHFmgN2H99aFHcMtDi8kANCVPzuKXA9V54wct25CvsT1zEqvj25/PH9nAizpEpn2zaq/wWxyL5omA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6029.namprd11.prod.outlook.com (2603:10b6:510:1d0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 04:35:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 04:35:54 +0000
Message-ID: <5535b672-0f0c-4ad8-9630-5605236cc5b3@intel.com>
Date: Tue, 25 Mar 2025 10:05:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] drm/i915/dp_mst: Use VRR Timing generator for DP
 MST for fixed_rr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-3-ankit.k.nautiyal@intel.com>
 <Z-GZgQMTdRgTD585@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-GZgQMTdRgTD585@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6029:EE_
X-MS-Office365-Filtering-Correlation-Id: f26e0aeb-adee-4713-b524-08dd6b5687b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amZJcFdheFBINVBUMFN0OFc1dUo2SzNONGNWWFNMVGZJL3h5OTZVRFN2YXVs?=
 =?utf-8?B?VVVWZWxlbENQT2Z3NllhS0c5ZVlLTDgyTXFiejZEK1R5V1M0Q2ttMXNXTWlN?=
 =?utf-8?B?UnhTSUtUejZ1Zyt6b1JLR0swQ1dpRHJwVndPV1lpc0RnNzBTY2E4dVc4YW9j?=
 =?utf-8?B?RXFTZy83NkpTU0puNk8yZXNTY1ptaklzQXJiUnYyQ01rMFdqT0ttU0M0TWFk?=
 =?utf-8?B?UTdGdmxoN2NUVTZvWmYzbzhLTUNSbWZ1Vi9uclVvT1FDTGJuQlpZbW1TZmlB?=
 =?utf-8?B?Vy9hVThlTHhBTUtudkplUllnb2R5MjExdGZNaFQxNXFOUDRuVXBzNXkwL0lO?=
 =?utf-8?B?N0Z4Y2RaeS9aQllQK1ZYSnFtNU0zRWh5QkNZdWlCZ2wwdGVjVnNncWJNOFVv?=
 =?utf-8?B?WHVCVis4VTZub0JZaFNSbnpSVzRlK2Z3WVNneFBHdWpITzBXd3VkMk9NNVAx?=
 =?utf-8?B?ajljTkE4U0ZmbnZaQlp1ajlyTkFvTjlzeFdZOEpOQ05ORTRaQytuV2ZwYmRs?=
 =?utf-8?B?anphcG1iSzN4U3JTamkvSlhyRHBkN1AzaDFsczJFR0g2TEVKMXNFS2kyOUcx?=
 =?utf-8?B?a3pieFJ6V09FMWF6QzBCejBvTE5xMUpJZ0hPUEExYzl6dmtDbkhZV0xaN0JK?=
 =?utf-8?B?Z2ltYkJ1TkFjcWVkdGxmUGdhV0hlS3E4VVQvUE50c0ZFcGJLOFFBSHhyS1dt?=
 =?utf-8?B?aUtMNno1cnVYb0FUOFhNK0FxU2tCKzB3cUhYVUFYU0dsbm5jck5SN1ZFSm9R?=
 =?utf-8?B?RWVyd05Jd2NUWXlzMHpDK1JpZzVxVWRvaFFkQkFTRERHSDZOWTBETHE2cHU4?=
 =?utf-8?B?QXorMkFJS2xVZUhXaC9XeFg5dEpQQTZiRGlsMlV4TzBtTlR2d1MwYVN5aEdU?=
 =?utf-8?B?WTU3L2F2dlU0T2p5ZHc2Ym1YYklNdXBpcHkweU95SWdCaWFSQ2VzamF6ZFJK?=
 =?utf-8?B?bGJGUFJibTFrL1phSEJrdEJKaFRGdktHalZyZkJrYnlheDBTNjZLQU1QVzRV?=
 =?utf-8?B?QUdLWm9UTTQvVGZUQTJTanR4cEJOc0NSaDZoNGIzWjBBS0FvaCsraEMySm9G?=
 =?utf-8?B?VDByTEwzSStveHE0a3ZiMHlNT1lVU2M3OUhMNHRTNzJoUmRGdGo0QWpQbjBi?=
 =?utf-8?B?TFVia2YrZm52cFZNY2cwSlFrVmxST1VHSnpPd2Q0WXdYY0c2ZjB6MlRVMGc3?=
 =?utf-8?B?US9SRi9KQmZMRDVnbFZXM1AxU21LQitCeE5Pc1ZYeXR4UWhFUnFCUm1sNndz?=
 =?utf-8?B?aXhRNkpXcWZ0T3BGam1Ua2RTZXlKRkFDeUJSdU5xUExWOWFOVVY1azF5Njgy?=
 =?utf-8?B?SUhBaTRMVy9PTlVPWmtqNlFOOE9kbUh4UllDenpjVTM5dXEwc0psNmczMmYr?=
 =?utf-8?B?WWZKVGZxOFEzeHp3WnU2WUdEVDJNVDZBM1JYMUhEK3Y1V1Z3OFRlR2EzSVNx?=
 =?utf-8?B?OXNlSlVDMDVWZmlMVE41TzlBSzRCMHpzSzBWWS94MFBrL0hodlc0anVFdnRN?=
 =?utf-8?B?by81OW94bnpPcjFHb3BVVGlkQmpTR0lkU1BoWVZZTk8yMEVDb0NISXExZ2Zo?=
 =?utf-8?B?RVB3UmRlS2lsMXdlN0NDRk1JM0MrQXlPSlBOd2x4R2ZGcFpzVTZPa3doRTc1?=
 =?utf-8?B?dmk4TDZiMXRPalB5Mm5ENFRJejhvYlFCOEx6bTMyVXM1R2ZaV3ovU1pMRitT?=
 =?utf-8?B?clU2dGt4Q3ZnWms3SE1pVWZ1YnErYVQ4eDYrdzdFbEgrQm5FSmY4bDQ3cDFi?=
 =?utf-8?Q?xnqq6C/OuhM2rPZqNmminJEBCimSZJqoScW61mr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWl4NlZZVDFlYnRJQ3BBczRMdTZNbDdmZzhvcElQazR6WFkvK1ltazlVNXRw?=
 =?utf-8?B?VzhpaXY1Z3h4ZUNQbWp1V3hRS2xjMVd6VFcrRnFNK1k5aU1EdHVKV0Q5ak1u?=
 =?utf-8?B?bXMyVFBqQTd6bkpVZVNLYnZHd2lrTVNUeTg2a1VIWGgwdkE5RTJzMUEra1R5?=
 =?utf-8?B?WENUWDJ4c2MwSEV4Z2h5M25aOFEzYVdHdzd0TVdocUVUTEVKSGtiOFhjZXJB?=
 =?utf-8?B?dWllYWdoeDk5RnRXZWM2ZTFSdUoreUhBRlJiN1NjRU5zY0srS0JVcnZTbkky?=
 =?utf-8?B?UjZBWFdLamR4NWtMK2JpVkxrVkNUR3pIWlNydHBWV1R4RUpVYkpEWmZSQ09t?=
 =?utf-8?B?bVA3eVEyVXR6SHNNUVZ4NkpTVXJwVWtadkljYkN6cUFadExuU0l1Y2c1U3U4?=
 =?utf-8?B?NnF3UW5BUG1oNWdIay9SMHJ1TWlUWkdtVzNDaUxadWNaR252YnhrL2ZhTHlF?=
 =?utf-8?B?RmpHaFhPbjhGdG4xVng2M00yMVR6V01MWWo4MTI1RTFIUUFEWW82MkpId0M4?=
 =?utf-8?B?bkRJKzRSQlNKYUVJY1k0TCtZb3d4ZXNTRFA3alpCNzlZME44bS9DaDMwMW1R?=
 =?utf-8?B?WjN5ZVA1Zmwvck41WTVoVUR6VE9kalJ5ZVhtQ2wydEJGejU5ZENEK1d4RGNm?=
 =?utf-8?B?K2ZxenBCdzVUNjVFeXhoaTRrYkFSNG00V1F4N01kamlQellXWlRXempRdDNn?=
 =?utf-8?B?d3hPb2FPRm5GUmdtdVdDUEhuS3lYMDRtODc2UWVmeHl5SXVNN0ZXTnBPd2Nt?=
 =?utf-8?B?TXgyOXp0ZjBscTBxV3o0RmV3SzdTMzVoT3BDclJEY09nSi9YTUp3aFBNMVF2?=
 =?utf-8?B?VXBnTXlQbDFpSTRTYkJxbGoxM2IwR0txNVppNnJrRCtMaXR1bXl5UUlsY1h3?=
 =?utf-8?B?YU9TR2R0dFJkMVUwRXRLcVQyNERYeWM4dm1lMDJpSks4cno0MGxZWUxRVWtu?=
 =?utf-8?B?OTNVSWhra2ZLSDA3V1g4dEM1cTlWL2g3YmgzQWR2cnV4ZXk0QjBVcVBvZVU2?=
 =?utf-8?B?ajFiN2lmTE1xRityQXh6Q01ZUk8yakdiUHdaaGVMMDBTNWpqQ3hDdjVHek1V?=
 =?utf-8?B?L2VhREVJVjdCVlA5VTNqU3ZLVGIwc0hBR1IyQ092N3dRbzJHS2tkcnIwajNx?=
 =?utf-8?B?M055OWUzdVpma2lhblhLeUx3bG1iVGFXK0YwaHpHdlZNSG9mZW1Xd2JpME96?=
 =?utf-8?B?LzNmOXZLb1NIWi9FckEra0Y0VzNOWERiOE13U0xhU2Y2c042bWJHYkJMMy81?=
 =?utf-8?B?UDNIWm5Memt3OC9QTThyT2hjVFBLbmo4bkt1blVFcGVlSURaNTZ3ZDZwbFd4?=
 =?utf-8?B?R24ySmhuMTJhVUlQMHpMWHpMZ3JEbStsblJBLzZsZVY1MkVkTTJHc3M1N3Rw?=
 =?utf-8?B?U2x3S29DWjFXSkJyRXNpcW85NHo2SVB5ZG1FckpvRCtCVm9KaGl3SFdzYjRX?=
 =?utf-8?B?S1pjRUxiU21GNDJuMzc2bnlDc2xhUkJGWnJZTDByU290TnNVK0RSQzBQTUxR?=
 =?utf-8?B?T28xVDFnNEtQNUUrS1RmaTlkUW5WMkJtTm94UDdnOWFnWkFCOHR5S3o3aXRu?=
 =?utf-8?B?Ui9haEhOb3RNWFZwYi9UQ0JwNmtoL2pRUWVPaU1iM3NSRWwwRWJzZW5xaVRH?=
 =?utf-8?B?eEdWMzMrTGRoaVkySnRxaU5XajNuMDZQUWpSWU5ScEdWZzJ5NWFIY2djQkYw?=
 =?utf-8?B?aERmNDNCS3RmZjNpcnUvKzhhdEc1Wm5IRkd3M2lId01QZW16aC9sRzNQcUxa?=
 =?utf-8?B?c1ltOHFWTjRNalVSQ2EzR3hNYS8yTlFoL1dMNzFSSzdabTVmQlFBd1Z6NUNV?=
 =?utf-8?B?YkFlWmYxNUZHcE1VNWJ6Skp1Ny9oRTdua0M5ZmR3dW1wV3g1djFTdzhYNEdZ?=
 =?utf-8?B?SS9OMDFSZFRaSytQMVNTK2JJRDdVYlgzblg0VGtGOXJUVlV5ZnYvSjk0bFdz?=
 =?utf-8?B?TUs1SWJWU1laeGdkQlFFbzFKSjdibFlUK0dvbE9EdmJTTnhiWXVIQ2F2RkdC?=
 =?utf-8?B?RmRqYUJaZFhBa0VRTERqSlBocEsxZlBpSkFGdk95QzAxa3BMS011WDZQYXRh?=
 =?utf-8?B?bWlNTWpyV2Z5bjdLMDhLczFhZmVoM3ZBd1YrcmRNbkNqN0FxTzRia1ludE16?=
 =?utf-8?B?N1gyZ0xXRU1xZHVOeSs0a0xDdVZvc2MyZ2pCWUtLQkk1aUVEZGwyU3kzclRT?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f26e0aeb-adee-4713-b524-08dd6b5687b4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 04:35:54.5694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ZHNbynFuEgxAy44wvQT5M6jjCkD9U35jev7EPBSyduUhXRtQaY2G4vKDGzFV/6KeVsKQQLv/5qnoTC+kuDXKwfwGNW04mDA3SvaVcB3AJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6029
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


On 3/24/2025 11:12 PM, Ville Syrjälä wrote:
> On Mon, Mar 24, 2025 at 07:02:34PM +0530, Ankit Nautiyal wrote:
>> Currently the variable timings are supported only for DP and eDP and not
>> for DP MST. Call intel_vrr_compute_config() for MST which will configure
>> fixed refresh rate timings irrespective of whether VRR is supported or
>> not. Since vrr_capable still doesn't have support for DP MST this will be
>> just treated as non VRR case and vrr.vmin/vmax/flipline will be all set
>> to adjusted_mode->crtc_vtotal.
>>
>> This will help to move away from the legacy timing generator and
>> always use VRR timing generator by default.
>>
>> With this change, we need to exclude MST in intel_vrr_is_capable for
>> now, to avoid having LRR with MST.
>>
>> v2: Exclude MST in intel_vrr_is_capable() for now. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 2 ++
>>   2 files changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 02f95108c637..bd47cf127b4c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -52,6 +52,7 @@
>>   #include "intel_pfit.h"
>>   #include "intel_psr.h"
>>   #include "intel_vdsc.h"
>> +#include "intel_vrr.h"
>>   #include "skl_scaler.h"
>>   
>>   /*
>> @@ -710,6 +711,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>>   		pipe_config->lane_lat_optim_mask =
>>   			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>>   
>> +	intel_vrr_compute_config(pipe_config, conn_state);
>> +
>>   	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>>   
>>   	intel_ddi_compute_min_voltage_level(pipe_config);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 6bdcdfed4b9b..c682c487eb25 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -32,6 +32,8 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>>   			return false;
>>   		fallthrough;
>>   	case DRM_MODE_CONNECTOR_DisplayPort:
>> +		if (connector->mst.dp)
>> +			return false;
> The DP spec is pretty vague about this, but it looks to me like it's
> saying that the last MST branch device must support the "ignore MSA"
> bit in order to support adaptive sync. I guess we might need to do that
> stuff via remote DPCD. Or perhaps in the worst case we'd have iterate
> through the whole MST chain.
>
> Looks like there's at least this MST hub that claims adaptive sync
> support:
> https://club-3d.com/en/detail/2486/usb_type_c_3.2_gen_1_multi_stream_transport_(mst)hub_displayport1.4_triple_monitor/
> We should probably get one and see if we can get this working.

As you have highlighted some effort is required for DP + MST.

Thanks for digging up this, I have noted this down and will try to get 
or similar device for testing.

>
> In the meantime
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks again for the suggestion and reviews.

Regards,

Ankit


>
>>   		intel_dp = intel_attached_dp(connector);
>>   
>>   		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
>> -- 
>> 2.45.2
