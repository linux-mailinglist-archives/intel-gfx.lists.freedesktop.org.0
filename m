Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2794B08E52
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 15:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D265A10E02B;
	Thu, 17 Jul 2025 13:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/c3UDFP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008FC10E02B;
 Thu, 17 Jul 2025 13:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752759220; x=1784295220;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=zfoKA+7kTdCkBbN3GWWU+6eewpYOpDwAi9320t6b140=;
 b=B/c3UDFP2iuhVMdN2ep9/Nm2vLBApgb81vuoCpAW+hgGC19nZmxLXh2n
 fNNmRRp6skr+8yd6wJAux9knNWwrWIM+BobopUCliNsk+SltrEqMYApN9
 iTBltHj0eTle1GnKDvZZp9vWSMkyWtaZgO70PVMGpxiKgHkgbSkfVApbX
 mnswtdJ/+5NtZI1Cbb6OYGbcwANQ2fn19+GFzYSe+tUNaOJqVIAX76Y67
 uWOwa6a2BHiwybqmIibMwbxUDz1rWCBAntanukMLjYR5fUIjDRygH6cjJ
 EJo8kSr6Yscujk1aqqkDA2G1/+o+mQ2V/dMUDhmnhF0IJqaibger49KPc A==;
X-CSE-ConnectionGUID: 9JZFSgKRTDmpfbSb4LY5qQ==
X-CSE-MsgGUID: GhCkjNdETQCBulcJEYd7wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55002755"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="55002755"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 06:31:53 -0700
X-CSE-ConnectionGUID: rxNR3qAgQpKE9F+FeRIP9Q==
X-CSE-MsgGUID: m935Ui+AT+uWEKOpimqBwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="158498156"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 06:31:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 06:31:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 06:31:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 17 Jul 2025 06:31:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k2BRLsdgsu+MO9B6M2scZ+tL7ItMDlz6ACAv8NevEihz35VJgPg11MKBF77ibXww6I1mFq4Y7TY9wo/NmGCY/70dPC1prxIp8TsYnAcD3poGFTrGLo12aRemn9IsOoXqi4TPKf/zjkTosI3b6Cxy1B/1lNN0HzE+wrPsX5cg033OhcCxJppZPUhiPmn/APMAEfKTzOmSt5PAuizIRjnla/DMO55iSxn8Ax11lShgavQgBP6J5Y/S/ageR2fLkw+jMbfdgd0EOGryN1yS4nEn7TGWkro58z5XbNiiK7CleH5dxTTmaICArKZ0YpTCpgsTCBxJN5ohAVdtESkNve3nAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/OrZ5PnZZR7LlCBLjDVpFRqIQoF2spIxVUh43ppMnw0=;
 b=Ye6zgLbNx3ZIZaTReqBC3l0XuU9g49OOy+CFbmniLUguAEfdkn7uNn2Qid1Vr37MLGCLDWmjRziysdiQAjC6g3jheWv2Cv9tHUXp6MsHtKlIHjtuqiTIZPBJ47l2pMrAQhLioXEMQ6+vZVLjPPPnpBShw2wdX67n3fSb9of+jsbHbUI+rDs2o5iiVtn5TR8Z6V/zbw575PRNByOURsjMjkEz32PZlDDgf1OG8dv3yjjSA3F6WJ4kNoEOmNd3kKL+H/5tS9u/1/2Wq8AMwEslkJZ8F5xkuQy+7V1R2Bt7sVZR92VEucMf8BOw4TSW6YdRoBz60qpKZdY/N5MmrkIvXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 13:31:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 17 Jul 2025
 13:31:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250717063259.440086-1-jouni.hogander@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 17 Jul 2025 10:31:39 -0300
Message-ID: <175275909975.1809.8747168482147911326@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P221CA0008.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: eed3cab5-8641-4bdf-757c-08ddc53647aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXFkOWxRNGcyOTdkQVhxSzgwK1ROZTM5V1JZL043OVpHNXp0MUpFUnE3VXJZ?=
 =?utf-8?B?Uzk4dnQ1WU9EMHdnalQ4a1hiMmExc1BzRlJicmcwKzRIZVlicFIyNzgzKzcv?=
 =?utf-8?B?WnZPYVZ1RkM0T3E3QnAzMzUrK2x3MUJZbWZGZ25iandlYVdpSUU4NG43TUli?=
 =?utf-8?B?eUx1TTQvMFlFaHpkUVNTUGlGV0dUWEZScFVwVXQxcWwzRmVZMVNNUlNNUUgy?=
 =?utf-8?B?MDIyVEJkVkJqalZ3MHJYK1B3UVRXR0E5YjZIT00vcXhSS09BK0FvYXNFcmZi?=
 =?utf-8?B?cmtOamdKdlp5V0RBMExDT0NEbkUxVldHUXU4bnRuL0VZTjVxSStBRXBNRXBl?=
 =?utf-8?B?WG8rWUR6bW1vOTd0NUs1eW0wNDVlZ1IxbjYvaVNyMEVwSWhlUEl5cVF1b0ta?=
 =?utf-8?B?Vld0eDdCWnEyTUJ2WXI0RmZIMkFjbWxNQVNFNGI2aURmS2xUM084eDJmeEZG?=
 =?utf-8?B?Ylg2TGQvNTVoV0hUdlFxYm9NMURreityYlQrSmlVMU9tWEpBZ0dId1BaVTk0?=
 =?utf-8?B?bzFHRVk0b0VsS2FKM3ZNR3Vlb0JrSVdVQXVVclU3ZjAyMEJHZG9jN1ozUzV0?=
 =?utf-8?B?QVJFc1QxR2ROdlZzblRBTkQxRXp6N1BDeFB6QkJDOG9VOUVGQXhodFByWmo4?=
 =?utf-8?B?MWVITUh5TDg0Sitjalh1Q3dETWFISzI1dm9lanMybmhmWlNmaHBXRFAyMnZi?=
 =?utf-8?B?QVFHTnc1aUhFb0wwQzU4REZxMUx5RDFWT2hkTEhhVW1lVnlhNzZOM0ZXRDd0?=
 =?utf-8?B?OHB1bGYwY1hUNGxpNGVqRFdKRUQvYlo4QzZiTnRreXZuM0Y0MW8xSTlKTFg3?=
 =?utf-8?B?V0p2S2M1RmpUblViUGNGRExmdGZiZ1o2YkRGaHkwSURhWlNacUNieHFTbUtK?=
 =?utf-8?B?OXg4RzloQmxlaW5oa2k5TE1XanhmSmhUaUJ2L1hYaGJFdkhhU08vNmI4OEhk?=
 =?utf-8?B?WVJuZnhEL3FSKzFiSkxPOTc2UURZU1F4Z2RrRHcrcGt6K3RFMmRBUm94UUZG?=
 =?utf-8?B?UnphUndpalJRN0Z4dXBOclRBWTUvRzcveVVtWFFub0VFOG85Ti9pWHFLdXlI?=
 =?utf-8?B?ZG95T0J6d1ZBajZ0cVlZSUdmem1OVFJzb3lpSDQ2VjFCc1h4S2NTZGliMDB5?=
 =?utf-8?B?TVdOQ2JLSXp4VEZiclVNbnB2QisyNUpsSWRReGRMRXpDb3lxUzZVR3ZYQ08w?=
 =?utf-8?B?SWI3YlUzaDdaRG9qV3RBSEcwdTQ4ZEpKTWgwbE5FOGJJSkpXZFB2MnZjUjdh?=
 =?utf-8?B?UldoUjFDL1hIZ3R3YTJ5VXlkYXEvQ2Z4UXZzdVFIanQ0akczWldmTGlrenVj?=
 =?utf-8?B?Z1A1dWhGbjJGZy84YzJZeVBrcElmdXRhOXY0OHhsUE1meklEb3ZEQXNPUlFz?=
 =?utf-8?B?aE1BWnpXMVJ6bGNPS20vdXdnSE9RbEFyaXpvb2M4Uk9UalFSRURncHRJV1Bk?=
 =?utf-8?B?TU9Va1dPTDduWGRRTUpZcDd5empUb3hMSzhIQmtaQnJ0R2g3ckF0Sk9MbVhU?=
 =?utf-8?B?Vm9nZVQ2M0UwTzNYdk02eC8xeHVGQ09CTDJzWncrUTEwYzZMRkFRVk95UFpa?=
 =?utf-8?B?cHp2anIyQUF3RC9QUStHeW5uRXh4Z3V3dVBseHl0T0lRdExoK29qT3dhWDN2?=
 =?utf-8?B?bzVPQ09hclhSYzcxaHcxTUVxK2d3RU9JQUFjcjNJSXVpS2dZalF5OGIzdUY2?=
 =?utf-8?B?VXQ3bVNGb1lTdHZxejhWZmt6U3R4VWJKZGFEQmFxU3E3SzhxSVUwOUtYS1Zi?=
 =?utf-8?B?Z0owbWJQODZFT0F6RWJLYnZrckdNQjAvU2E2Q3hhM001YVBqY3RtR1lHK2Fv?=
 =?utf-8?B?UmZ4Y1F0UEJhYkhHV1Q4NWJYTFlXdXl6WTFjSEs1b1VKaXl4V3BUZ1RlVnE2?=
 =?utf-8?B?YVV0UE50Y0hmTzg1RWt5aFNHVmJRdmFPZS81SjNxeEtqaWxiazZCUVc2Z2ZZ?=
 =?utf-8?Q?sqnbiB/ikcU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDJmSExMUmhmZS9mcTNDalJRMDdzZ3RsUUcreGZ6WkowYVVRUjJkR282Rnd6?=
 =?utf-8?B?eElkUElEZDJxcUhYYkJBSDZTWEFMTmlyK24zcVNDakNVczNUdldoMWdjdFk1?=
 =?utf-8?B?WFU3cTdUYi9HUWxZYUJCdzhKUlJNSHF2ZGJwdm5QZGJ5SEsvOHR2KzdicUIy?=
 =?utf-8?B?N3g4NWQyeTYwbE44KzA4OU5aOHBQdk1hY1BQSXdTRm1aZXJlMmhWRkJKT2ln?=
 =?utf-8?B?NWtSQWs2b3dTZW1qQ3owM1Z1SGl0cVZnZ0VhY21Bb0pBcXgzNTNLcksxMVRr?=
 =?utf-8?B?cDNudC9sSEpPdS9LUC9HSktyUjM5amVDQzU3SE5CRlRTWWZZK1BhWk1VR3Uv?=
 =?utf-8?B?V0JNQjFqbUZIamNhVzd3cXY5V2ZUcVIwUk42eDJaaHlscDg1TkFWVjVSbDJl?=
 =?utf-8?B?RUhhaTNKNzhPQXZ2TjByQTdiZmNRbkhwZ2JuaG1tc1B4WGxyOHBUZEFNRzl0?=
 =?utf-8?B?QVRmVi9ndElNZVpDc0JLRlQrNXA1ZTF3Q0VsbHJJdDlmTE5lcnlDSnEwWnlN?=
 =?utf-8?B?bDJENnp5V1A0eGlpSW54ODFJVW9LVTFYWjE5QTB3azU1SzcxZUJ6MVZ1Rjlq?=
 =?utf-8?B?blQ4VXNIV2VVSThZNHhxcThpMU4wWHNpR084UWFiSllBOEs3dUZ1QWhVejJM?=
 =?utf-8?B?UC9OcUdQdHJJOFFXM0RERFEvMFlhQjQzOEs5bVZhKzZWcDlzbnFaSmljbW1K?=
 =?utf-8?B?MGtZMnN6cVFHMnBiRldpZmhaWmhKYXVVSlJ1OExMbEZidU9GNzdMUHpDMjIv?=
 =?utf-8?B?Szh5NmNGTkNwZzBBVjg4K0Y0SGhTNWRFTnNDUmQzSmdrc3pIWU1CVWEwWjlX?=
 =?utf-8?B?cXNLYmdhNDl5VkMybyt6MUJBbTZXMGFYYjkxYTF2VDlrdGhXZTMyS1BSVi91?=
 =?utf-8?B?NW1HbmRJUXZkTkJQL00rL2daNWdjQ2Z1RGFkN0FEYXRqZ3JmMzJDUk9FTkNW?=
 =?utf-8?B?ZEVKd2FUcTFDMGJJVWlHVXppVnFIVDBqcGs2bjFCWWFPS0FsdEJyOGxSeGZT?=
 =?utf-8?B?Q1lNanlJdWtmSlF6Um5Gc0xRNENSUEFRMXJsOE5ubFVHeVB1dmRSRVJ0ZjBl?=
 =?utf-8?B?YXJBdXBlUzRlVTVSbkZEMVRpWENlMjQwSlFiSXNzdDM0THlXeUVuQ3ZyYWpQ?=
 =?utf-8?B?cCtDYlFRL3V6cmZIWUE0RFZWV3Y3T1ZCdUpSZjVsSlYvcjY4STJkT3pyNFdC?=
 =?utf-8?B?U2hMYnREOTJjQzFVQVFFN1FPaDVkTTY1aHc3Wmd2YmJJMGhxSnJORUtxVHZm?=
 =?utf-8?B?T1dHb1VYMTQwOUtkcStMVnZGR2RMNWdPYWFtU1V3ZjF5MjBZUE9WOWJhdFpz?=
 =?utf-8?B?eVBRVEdJUUhQMldHanBtdzQwMDZDcithSGtzaGJUZE1ndmNUOGpOWG90c0FJ?=
 =?utf-8?B?UEdaMzhFeVA2UnZHUldpaVhhVVoyYjNXU01wQ3RrU3FSTTNUUk02b3JFNmZa?=
 =?utf-8?B?NHY4NFZpdENXRTlPc1NiZkI5Y3dkL0JMZWVXcy9MNzdqM0tEVGlobmVJSTY1?=
 =?utf-8?B?WnNYa1BJOUJOM0xBVW1QNEc2T29vMjlqUjlSV2hhZlVkdXBNLzQ1R0ZtaCs4?=
 =?utf-8?B?bU40c1pqdDVwSStEYVYzTS9qZWVrWHM5VGEvdTlGWUw0RGFtQVZVR0cwcG42?=
 =?utf-8?B?QmUvQ3ZTQXBUQ0EzLy9yeXlsZjVyeG8ybk90V3Irdm80STdDYnBXNTluSzBP?=
 =?utf-8?B?VVgzWVhscnBCalJKVnhVazhlL3pmSy9yWTJkR1VDeW05NFRjWFlFTlZBVnl5?=
 =?utf-8?B?dkdSYUlYZDRDbDFhbFNaWGpwRDhlQVVxNTc1ZFBXaWdaU2VRaWt4S04ybWkx?=
 =?utf-8?B?UlpnTWU5bnVDbmQvYlFLdHlsa09mNVdtQitPdlFSR1E0WkZFZTAxTUJLN2Fn?=
 =?utf-8?B?RmY3QjdDdlZVVUtXSU9kNTlDNi9YZFZ6YnV6MXB0c2NvM1p3NHBua3lWM1JF?=
 =?utf-8?B?RXBHTnBVemQ4ajE5bHRMNXlmSkRDK3J0MTBXelE1UUtrbGhRME9pb20yZkxv?=
 =?utf-8?B?Y2hWU3VEazRMdVdiRHJpYlo1cHpqQ1M0VEJiM3JMbmhVS2Q3RnVuMlUrdkNa?=
 =?utf-8?B?Mkp5eUZEMENvWnRoU3ZnRzhjNU5IbTliY0FtVHBUZkIwbkJ1YXBvRGd1bllJ?=
 =?utf-8?B?T25relY1UkxuY1d5YkI0UHg0Z2F2c0NOenVwREhBQ0p6Y0FONE41Y2lOSHVn?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eed3cab5-8641-4bdf-757c-08ddc53647aa
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 13:31:48.0644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eUGP79VwEVdbzUhk3SZGIa+nQ1yFzG8hNBJP2I5hVWPJ3WeTCT3g/9tzB86zSn8kleIzBG9lp3MtCplzPDodsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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

Quoting Jouni H=C3=B6gander (2025-07-17 03:32:58-03:00)
>We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
>since we started configuring LFPS sending. According to Bspec Configuring
>LFPS sending is needed only when using AUXLess ALPM. This patch avoids
>these failures by configuring LFPS sending only when using AUXLess ALPM.

Hm... But then with this patch we are missing writing zero to that bit
when necessary, no?

Could the timeouts be happening because intel_cx0_rmw() is getting
called without calling
intel_cx0_phy_transaction_begin()/intel_cx0_phy_transaction_end()?

>
>Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sen=
ding")
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++------
> 1 file changed, 5 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index ed8e640b96b0..9cfc3187aeab 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3239,14 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct intel_enco=
der *encoder,
>                                  const struct intel_crtc_state *crtc_stat=
e)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>-        u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>-        bool enable =3D intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encod=
er),
>-                                                  crtc_state);
>+        u8 owned_lane_mask;
>         int i;
>=20
>-        if (DISPLAY_VER(display) < 20)
>+        if (DISPLAY_VER(display) < 20 ||
>+            !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_s=
tate))
>                 return;
>=20
>+        owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);

This optimization could be on it's own patch.

--
Gustavo Sousa

>         for (i =3D 0; i < 4; i++) {
>                 int tx =3D i % 2 + 1;
>                 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE=
1;
>@@ -3256,8 +3256,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encode=
r *encoder,
>=20
>                 intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0)=
,
>                               CONTROL0_MAC_TRANSMIT_LFPS,
>-                              enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
>-                              MB_WRITE_COMMITTED);
>+                              CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMIT=
TED);
>         }
> }
>=20
>--=20
>2.43.0
>
