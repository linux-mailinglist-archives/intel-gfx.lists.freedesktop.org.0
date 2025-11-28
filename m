Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0612FC92133
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8876710E168;
	Fri, 28 Nov 2025 13:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQJueoO6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3283810E168;
 Fri, 28 Nov 2025 13:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764335461; x=1795871461;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tKajR8HtgucydStNH62qcqpYn1hUsYWPCcXiARUzajM=;
 b=kQJueoO6BWHnW9xjBHH8F8HH0oETyt7ciiMfk8fprGA2nZKhEh1Lt0bM
 RwMMF5VGKj0SfE4bsMPH05fhVN4lgmRhhGBQYAiu0nAqj+BvaYLRW2i4N
 tGGaAaekU63QKnBlW1/KDegXfH/NgwKhkn3RlbIzTPtuIAID2JTsIiyeT
 Zixy45W5bf2n8VlwhkyYtPXtZorRdfO/HCEJrI/BX4DHdSq2mkS4Q8/4m
 phPhdyR5/W5lReSue0FH45y2ppSvyeZ9hl1zMiAa2GoW1WzGLU1QmtynM
 41/DQjxccy+akUQC6UlzpYzo0vxJt4LyxEAhRBZpVqXSCwJpyHC73vhNa A==;
X-CSE-ConnectionGUID: rxlK7tyBQbm28wdi9XB8gA==
X-CSE-MsgGUID: 6G8dPrQESwWtFmajLt/D+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="91843727"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="91843727"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:11:01 -0800
X-CSE-ConnectionGUID: Q8jWO8s6TsSO3HhAwyoUHQ==
X-CSE-MsgGUID: jZaxVjGDQ9+rZEATC0gZdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193556736"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:11:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:11:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:11:00 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.26)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:10:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VZpyhLlWKQVhBINdTrPTxi1oNVn+3RuqjDqrrpZslEKYTGQG5R+LVCiTlAsaLsiLvSynC/poxDJNA46hwNK2/5PpvG41b9CBFa16Gsc9EgIMvNE3jgjV5VXE6CrImrWnjTMZ5NOgnLDPysLhDIPlDPwZK5FoiMPRxDbFEvW7cZgj7lvXSZ8RAG038Kbtlxl8T3PaxnA1T/SqPUMbJQw8OobNI6B4eBI3BVjFo3GGnL7UVoY4uWskQQIDL1LuEQqszd431K0WHRimtuQDVpbE6oPgSqcWOhJSUbdOK/UnusOkY2fMJDoTIps8GNT+t3Ajr/rE4ctPXTgyXt1oIEie7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fde6c+SgJB3Te3gB6gbjXEcckZCCL9NWqG3YYNsOHQ=;
 b=j93DGFP9KIaxt2QIqo1OAKzp6MWvtJ/oe08873LzI2IjStqVsv0EIwRVYDvgMBcwGEMQcK3eL5LFtpztgkX4KggseZ/PHMIggFb8W1tO0t+pOBcTX9Og+5X4k7rDvOpTc0orq4ZLH4+/ruKbFvaCvmatzqtv8mQJSOQvz7r407wETig9JzrEI8BH8htkeNcMLYWVafekevMo7IRkLjcQxn7/eytd43jN80WebIQh06lqEhiGopW1Pp627wDFduuvEUbm6BgvG1w/xmVLJjYHf166T69o2tuuvfCvKmsnB4v2m6YltErNv/LWsMyVrfTERq6LtjQRnRZWj66DVP0WuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.16; Fri, 28 Nov
 2025 13:10:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:10:57 +0000
Message-ID: <6846bfec-7ff4-415a-bc7b-c49009a32e6f@intel.com>
Date: Fri, 28 Nov 2025 18:40:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 01/17] drm/i915/display: Add source param for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4733:EE_
X-MS-Office365-Filtering-Correlation-Id: a7e55308-ec3c-4f8a-4faa-08de2e7f918f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2FFcUFKb0UrMzRsbDRrK2lRMzNxQXlweFlWMUJCVzdDTlZkTjErWU5KRXpo?=
 =?utf-8?B?NklIZ3RhTkpVU3lGNktURENXU0tSQjd0UTdVaWgxellDQVNWd2VPMlpEbkdU?=
 =?utf-8?B?Vk8zTk04UythMHU5blArYXpqaGtpK2ZPOXNmcW5qblJOek9RRXIyNE9WYTNS?=
 =?utf-8?B?aTBZSkFicmR4NkpkQlc4Q0pLR0tqNVJsZVE0WHFTK3g4OExOalhQeFpWZHJB?=
 =?utf-8?B?NlJIRGRFQmtJcFJvYVpJZ0JrYjAzUWRYYnVxVENrUC93NjJXczZvQS9QODR2?=
 =?utf-8?B?dkVRTloxY1JxMDBYRjVoOFl4bkhuL0k0ZGp5bUczc2tVOXd6cjlwR1VpSU1z?=
 =?utf-8?B?NVAvczhmTmRFalJpdmEyUWRaR3VvOGF1Sy96OUV3WktFM1dYMTNMYkxVMHhB?=
 =?utf-8?B?UUY5ZHVCdnl5UFdwVmhzNmZxaDg3ZE9BMEU4TStsNEZnL0lrTG11bnNYK1Z6?=
 =?utf-8?B?anJ4czFGNFAxdTQvV2xXV2VXcEhJOUVzQy8wS09JREJPYzRYdEU3ZWlCdDMv?=
 =?utf-8?B?eGdIR1FLMzhUM1Fab3VNUS9ZYzB6UWZxQ3lEL09QaCtydVpsNXBHTk5saHpl?=
 =?utf-8?B?NFR6dStMT3dXVWdUenltR3lMNy9QSFVHNUlkcUpLME5tcFltT1BEN1hEdDZS?=
 =?utf-8?B?dklMSE1UYnY0NFdFU0dlMWM0NjNLMEwwVisrVE5jS2lZeHZpL1JRaVNRODI0?=
 =?utf-8?B?bDlSUnNGQzdYUmdhemRyWWpJQ1d6bnRVU0phNnhhTmx1dkI3Y1pQM3Z1Nlg3?=
 =?utf-8?B?Qzc1UjBIUlJlUnQ4am1RMEd2RGRqRXdMYTIxb3pLbmV2SmF2cnFOeXBOeHVq?=
 =?utf-8?B?SEN1RzhMb1VFTkNCeWtJQ1BXSzE4c0ZTdXVXQ3k2akpjdmU3ZWxZNHlBYk9B?=
 =?utf-8?B?NDFVRnNOUVdJaU1LNzZFOW5naSt2SitTa2o2QzRQWjVrKzZpUG4vWHF0RFJt?=
 =?utf-8?B?YkVqNnVidjhxRkJ5cTRIK1FzdGgrWFA2cjVyUXdJUTU2WnVJWU44TVlFcnlq?=
 =?utf-8?B?ZHM2aVBuQkVWWDhkR1lIaU5KeTR6UEtxZW5kRGhKcVpHMWc5ZkU0cHhBTXp1?=
 =?utf-8?B?RFE4aUpIVEJsL1RnZCsrTmJNdHlWZUlIZHFrdFloZkE2M0NlYU15SVVYSFBr?=
 =?utf-8?B?RUF4ZytqeXYwRUR6NFA3MGx1MnE1bmZvcnhtdkYwekJKeG5Qd2hoUElCU0Q5?=
 =?utf-8?B?cDdHS25HL01za3VLSGpXK2FSVWNhRXU0ajQ0REFTazExZjBhLzVndEZaZFBx?=
 =?utf-8?B?UHVyVEszTUdiVUFpaTFJTzBQc2l0NkMwTnErQ21QMHdJWGVHMk15Wit5N0tS?=
 =?utf-8?B?ZGRtZVMzRmJ1NGZTOHkxUEhWSS9GS3h2QStLdkhGZFpuQjdyWjRjaDdqa2tG?=
 =?utf-8?B?ZFV3b2RmWDJwa1hBRmRHQTcreHpqTExOeVNvV2lwSXVZblVtSUxyaFFXTFE3?=
 =?utf-8?B?MHJkNytXTk43OGcya1JNZUxzR05xK2pnYW56NWNPd2xqaWdLcmZVS3NLSXFT?=
 =?utf-8?B?L3ZTRnVIdlpPOW44YmtZZ2VpckdWL3NqSFQrSHpVYnBqMkxJU0Q2NEJOd2tq?=
 =?utf-8?B?NHE5UkRWUllIMWJZbHowSytGTW40SU5hNlRSNXV6U2QxTEl5MFFrVWFMdGdF?=
 =?utf-8?B?WHY4R2J3QURRbU56Y2J1T0J5STBCWUFNeGYyMTZqSDlYYUl4TE5ZT1VnT2RB?=
 =?utf-8?B?V0loaFRnRVFGS3JVUlRTOGFhdnlqT09Tcy9BMFgvYU1IUkZlcHBMc0dBT1B2?=
 =?utf-8?B?K0hUcTBPdUhIZVh4ZTBLaENSUU5naVNvT2krZ09uOGFiYnNLV0ZCOVEvMVpX?=
 =?utf-8?B?RmlTN1VlQjRoUzk0NHRqZENxWmxDUUNta3VVZHhhVlVxeDVpcDg3ek9ndXlQ?=
 =?utf-8?B?T1NCUGRSMlVsYWtwczFjdHhudGNXaTk3OWRDeEtOdVZBcmpORForay9uOHYz?=
 =?utf-8?Q?3VTitFuyAXFDmE4t6408MwRgEbc58IG5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am9KTUFiWVlNTktrWjQxZEVBeXVzalJYeTJ2VlM5SVhDWU12VU94d2hrWW5E?=
 =?utf-8?B?UlM1OURzM1ZLZkJEd2ZoV1NBY3h3WHBUS1h2MnlUSlNRQ2I2RXBTTnd6SmQr?=
 =?utf-8?B?TEpPYldDRUJZUzZkTnJaRTRlTy9rUStWT05Cd1IzUy83Y3BxaS9HY1BKNXVO?=
 =?utf-8?B?Si9wRXZMNEQ0eGxkd2tuRGdrUzlEWFZjejhzbTNnTXNVUThEVjI1UURoaVph?=
 =?utf-8?B?L0sxLzVrazJMbU93UlVER2hRYkZtc0dnOW1qRnZLK0FvNU1Jb0tkdDFGM2Vo?=
 =?utf-8?B?TXFqZFVrUkJKNTFTVnRDZ1lXeGRlNzlvU3Bzd0R6Q0J5d05MQVFoV1hlYnNO?=
 =?utf-8?B?RkxlTEZzMWJtYzZNMWhzUklhbm12VU1jcFk4a0tQQVhRRHgvaG0yWnphcGZG?=
 =?utf-8?B?UGphbVZ2NjNCTzR1WmFBY205b3dlQVp5T1VhakpZYmhIVFA1UEo5dWdJbU1R?=
 =?utf-8?B?VGdHK29udHhMZHdWcDllTS9VcHZNaThtblBEU1JqNkxXeWhwcnRMZzBoR3dT?=
 =?utf-8?B?aGVQQmR5NVNhK2gvS3JjbWhpbjhtOVQ4d0cvWkNSVUh1ZndoYTV0djJSOWgx?=
 =?utf-8?B?dnRwdGZQdXRsRUZ1anpVa1YyZzArUVRUZ2ZPdlJpZU9JN0VQVURCVU01OHpY?=
 =?utf-8?B?MHliQkdWbzF0MnQ3dEQ3S01md21yMnVVZWgyTnpCVEsrNURjQVVqdWpQTHNW?=
 =?utf-8?B?cmFSb3FXL2FCai9TVThPWnZWc3dyRmJXdHVqVWVxZXRNZjRVU0F4WUZZTUVU?=
 =?utf-8?B?VGpIQklyWW5vOEwyLzdLaHhkK0NERFV3dVVNVkVMbzBuUUxYOWVtcVFkRTNj?=
 =?utf-8?B?M1FkZ0J3RTk4d0E1YjVrOXN2bHplcjA2QUJaN1A1ZWNjQkd5RTNRTVBmV3Zk?=
 =?utf-8?B?QUhGeHdSQXZrOEFld3dCTHdIcUJJdUR3UHNzL2FXblZ1ZTBuTjgyK2pzRzFw?=
 =?utf-8?B?R29YMUNBdXVhUjR6aXRxclp1WWU0ZGxDWEx1aUpSbTFFVWpXb1ZnM3NuU3Bq?=
 =?utf-8?B?U0pEa0MvSjVUNk9YdmNYMXBKck12Q2MzS3Yrb0N0NXhNL09tM01uRmFCSEZG?=
 =?utf-8?B?MXhpMDM1YVo4V2w3N08wSjdaVkd6MjV5cURXV0lTcWFxRmY1VmVqMXpBZ1FZ?=
 =?utf-8?B?Vjg1T2Y3YUJmdER3TmhmTmlmSmFTV0VIOEswZ1pPRDI3Q2JPQlFQM01vTHBI?=
 =?utf-8?B?RXpaNFZZekpBODdPU3lnT3NMQ1Irc1dzc1ZIa0sydHQ5UkJRZnh3ZXdidFFo?=
 =?utf-8?B?YnpzWmlONlUvQVZORGYrV2djeUtHNithRElzclpibEFTbUowelB4MnZxOXFL?=
 =?utf-8?B?cGpHbXZLOFRNblhIUkFtWWZ5VTJsRHovYm9uMG9qOHBrN0FQcU1NZVhYZjEv?=
 =?utf-8?B?WnF0QVVzWUEvam1XYWdrbUJKc2NEb3dXZkpFSXdvVzVRK3FSTlk5VThqKzJH?=
 =?utf-8?B?OWhlQ1lacS94TWlVdmdZT2JZa1VJTTNTcVB6Z2RkUmFjUit4eGFqbHNmSUc1?=
 =?utf-8?B?TFBBQzhIOVV4WDVRUFluWjBCNmFpNDBYZ3ZHTytyb2V6c1J6elZCR2l3bUcr?=
 =?utf-8?B?SS85MmpDa2lHR2ViemRyK2xVUUY0bTJGeXFjM3NMLzhHY0NySTlhb2xCRnda?=
 =?utf-8?B?TitXZkxUVk11akczNGxRdEhFL3BzQTE1cmx5ZVRHZEdTUnpKL0paeDJZOUI0?=
 =?utf-8?B?aitDb01vMUdNdFI5NWtmeHFJa2Z6bXVjNjV2UlJWa0MrQlhYQkVWeGxWMi9P?=
 =?utf-8?B?WENrMkgwWHVuaDRZSWJDcVdudVBObi9NMm1RM0pPbnhqMzU4U1I0ZHdvY2Jo?=
 =?utf-8?B?cnFHdzBIVjR1ZUc5eWhXbEVzaEJJc0Y4SFk0Q0hGbHEvRU1PSFR2czA5dTA2?=
 =?utf-8?B?QXBERWlZWHpZaFBDUDVKbUtKVUhkYzBuV2RSbVVoMUoxMXkzQytya2ZwbjFY?=
 =?utf-8?B?WFRZMXAyQUJmbUpZL01rajUzUTRoZ1NDc05UMHcrVTFvdlJMclZJZ0ZoLzRF?=
 =?utf-8?B?QzRUUG1QR1RNU1IwSEU5NERjQXBjdzVlUUw2QnZvK3BUUXVacnovbTlwVytK?=
 =?utf-8?B?UW9vOXpsdW1kUjZ1WWtpK1M4Y1dqZ1Uyb3NVWURmS2pDME1KSElLeWxFLzl0?=
 =?utf-8?B?aHd2TTBBQmFOd01CbDU3NmRNKzlDV1pLWFpUeU9kZGZVRlVXSm9RYmdMakpW?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7e55308-ec3c-4f8a-4faa-08de2e7f918f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:10:57.4802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aOBlNwIs+qk5EW7FtEoL0TpSo8UKOfHpu17ADWlwUKPYI6XOuL5at7WLzLLaxM2HbYRzGex7U/dCoSMwkTVu5iCjObainTIiIiNMAC5lL4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
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


On 11/27/2025 2:45 PM, Mitul Golani wrote:
> Add source param for dc balance enablement.
>
> --v2:
> - Arrange in alphabetic order. (Ankit)
> - Update name. (Ankit)
>
> --v3:
> - Commit message update. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b559ef43d547..7ad49e9529f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -200,6 +200,7 @@ struct intel_display_platforms {
>   #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
>   					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> +#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
>   #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
