Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879E9A13A5C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 14:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED35710E596;
	Thu, 16 Jan 2025 13:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wrb78tvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CCA10E587;
 Thu, 16 Jan 2025 13:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737032548; x=1768568548;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J9an05XnlrQ8NtnZ2YfqnVqRw81YqlULgFb/Zqpre9Y=;
 b=Wrb78tvFW27dJneQloNvOlr5C/dhEpjSmUAALx5065ZERTJpgq1EsnEB
 51IyWCCOyhWGpEZapezQVqeK5wqiv39Izu367rosrU8j8Bp9JDl5K48ia
 dCSWzohXiosuRVnXARTIh2DYlEy12U0ygpGKwanwJQxkr6kiJCZaIaoww
 K23I6N08xZswBU35R5LXFxWM5YbxWfjI9QNrL0/EAtDP9xb8J1iAuz8Oi
 n5DfserbSZXfVBpNYCLFuzowLztCcPj3rbYm6eAs790ryRGQZCwHXA3ND
 HCRXfHE4CL8OANj/IeZ0j/UiZbVl6W9iMvd/NHOAtLl5UDisjWe10A9iM A==;
X-CSE-ConnectionGUID: QVqi5fgySvW2fo5iD3ZM6Q==
X-CSE-MsgGUID: wAKhCBfZTGOu3XPlakXuyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37445486"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37445486"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:02:27 -0800
X-CSE-ConnectionGUID: OtH2JTb9Qb2skZ6eOt/PEQ==
X-CSE-MsgGUID: x+jdB9ToRdeLNHP+SyESXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="105439905"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 05:02:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 05:02:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 05:02:26 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 05:02:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XRm6qiYA/aqV/ycyeZYZublSF1xE5p3Leav3EF8qwfhLGky8OP/5MLTZEz1ixB4DcMhBgJ6JvYW8xQaah49ayWnNrxPsfVUgCV6b+iZxOivgeRsziLh3QSlqdrHkJFdvAvrfvjowQFOwDi9fDAGbhqWHbzbBTFNIg8ugrA20lJtpguZ54NzP430X11bdI8ed0QzldCFvgtdaqCezUDJjyhjGe+lbLiqnyBja7vAOMjl5NgVoI8Fu1Jw11PXmU96TSw7m0KA2vG0or393bN7bcRFJjSul3wRHVx8i2Dksb/ag8KExaEFANl06ctM0TXzjizyy1jVRxMTCymPHHhNhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JwFo7vUrpzNC2+UXlrwygd+479LH0XJ7aj6cFYdM2R0=;
 b=qRINcCU34Bt+CfNruQEU/sOeE3E9fqW4HU9dO0c7S7xcoWDhbjzikVLeejbijmVtkSfiYAKRJ0M6GmybdL3TGUJOrg/VB6aREzFoShf3E1+k4ld7qOqHPWJ+GP1Qxg1bGsvBn1stuZUJPK70fm/gBHfiA0wPi57Jx3DHXrCB0SHw1zJxfILSRvUq3Flp+jNYHVQW3Du0frQRDMtTrMnGHci0YgMB8tRZCraOu61mQawVqZYJMWkz3UglhZhY3E2RgRMpQBQM35ovk83pbNNtU3wYVDEouYXnIhlZ8SSQ1xLkkKGcX6+smZLXrx9TTM2HCh17brDXdsg0/DzwSQ4Sxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7823.namprd11.prod.outlook.com (2603:10b6:208:3f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Thu, 16 Jan
 2025 13:01:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 13:01:40 +0000
Message-ID: <d670e094-18d5-4616-ae5a-28bd5d1365e2@intel.com>
Date: Thu, 16 Jan 2025 18:31:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <v5-000intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250115151714.3665211-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250115151714.3665211-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0245.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7823:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ee1854d-3e02-47c7-975d-08dd362deaed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1RaUCs1TkpCRkNJUEpvMXVkeFl0cEk0Z24rbVluRzdJbUxzUGZGcHdGa3B2?=
 =?utf-8?B?SE9oYk5HdEZMMTJWQXR0SkhMV0cyNmxkMVRVdDZGOWVKYnNLU3lHeFhoOWJH?=
 =?utf-8?B?RUszTm02ZmhkeFhoNVRwUldHVzRqSmhETFJXT2NmaGdKZ0JWdmRxZExuVU04?=
 =?utf-8?B?N1RQOUZEM0prdUVWMktLWEVLNGJBUENuM2R6ZU9QejdDS1lpTTlIN0x5RnVD?=
 =?utf-8?B?REt5Q0lsTHBwT3JHOGJqRWRFOGtDdCtuZnV0RkZPY05ocVJoZHZWNFpCWHgx?=
 =?utf-8?B?QlNhQXI3L2FNTG9tRUxHb3YrdkwybElKZzJxT0JRcGlzdGpiTDhVcDJhUlla?=
 =?utf-8?B?OXpleFUrVGE5czFSek80WnU0TVNGM3BkME45czM3MCtBTTdGS3pQUThPZ1Qy?=
 =?utf-8?B?QkNsME0xMXVLUk0zdTRzOHQrSEtyY0xWU3h5UmRiYnFYR3JvR0k3QUp1TEth?=
 =?utf-8?B?UXZPZ0Z0ejE4NTVTV0xhdmJWTCtEcVV6M1RTVEwzNXlGNE11aFZ3OTNBSlds?=
 =?utf-8?B?RGhKK28rRzZEVzFXN2hsVTdwemc3cXJVRkdSdzZObWZaYTlxTCtrRGVaWlNS?=
 =?utf-8?B?WVU1Vk5FMGprb2dBSVJxTXdSZTVFZVVwMktwWnhmQWVoQmxoUCtRcEdadlEx?=
 =?utf-8?B?MWppR1F2RTBvWkhJWE1BM3lUcmZHK1lRcExjKzY1R055dWFGUkZreFpGUWtZ?=
 =?utf-8?B?eWt5NWxVK0hIc25GTzdvNTFWbE9xclJuWkhnOXo4dGhDb09lQWlqVm1DdSs0?=
 =?utf-8?B?OWVISFE1K3VIK0o2azFpWUNPNG5ONlpmTGVIZXdWMmp4U29mWTZEZ3JMbXlk?=
 =?utf-8?B?R25qczdudXQzV2J3ZnRMR3B6TS91K1N1aURQMGVnMkpzR080QklPUjhOZytq?=
 =?utf-8?B?M3NnSmNmVTM0WFNqU3hOcHIwVFZVeHorK2NSVENiSjZmWGI0aEhRL1JqN1Iv?=
 =?utf-8?B?eldpWFFENndRMjVobWE2TjNBbWtVK0gxNU4vQWRYOUxQMGxkSVE0RWpiT3dO?=
 =?utf-8?B?bEhPNzhQaTliY2VXcit2MWVGTmdhSitORHB5aG9TU3lRTkdHWE81SVc0MWVP?=
 =?utf-8?B?SVRjRVRXanZnYzJpbi9BZjNtRlBUZ1ZwQktRZ2E5ZGZYTGJ3QW1wZzBMdS8z?=
 =?utf-8?B?YXhscVh2SEFETXJ5NEFtZkw5R3hpa3FjZVppQ1RuRUFld1YwT0Mxd1pjN2Rt?=
 =?utf-8?B?a0diYWMremxzeXo0MFZReU8xRDBjelc2My9BU3gySHdJQk1ianR6Q1NON2JD?=
 =?utf-8?B?bC9zdjF4MGgwamlLd2I1SmlYKzk5eDVpQkwvN285M0VqaGxzMkppbTBRcDk5?=
 =?utf-8?B?OG9ETnczbTVGL3JRNlZ0WWVQSnNPTFoxUmduY3prM0Rpc3ozSnlSNlluaE5T?=
 =?utf-8?B?a3FHMHZCbzl6bmFTWmI2aTJHSE5PRmdzUUtEdWZjUXVQM1Z0L1lURUtud1p1?=
 =?utf-8?B?OEZwOVcwZGZyTk5HN3NObjRPcGVLZGM1Vzlydm5leGo1RGpsYlQ0eUpLWUts?=
 =?utf-8?B?Q1VneFd3R1J4OE1yekd3RmJ3ZU9Pd1dFU3lhOVJqREg4ZHovek5saElma2x3?=
 =?utf-8?B?L2d5VXZRNjJ6YzJpYW1PMUtXT0p0cmIrbUNlMnpNMlRTa1BEZHVlc2hnbG1H?=
 =?utf-8?B?VWZESnA2dGR6dmdvWlJRQThJTGg0ZzJwdHNxNmwwTXJhdnBvU1VyUlFlWEEx?=
 =?utf-8?B?YmlFV2NLS0c3dkpQZUtHSHlQa1VKbkdmYllqd0hNd2NmRXRPSkFHNzdWd2Fo?=
 =?utf-8?B?M1RSTksrMDFmQVdRbEFValFVc1ZPSDc3d2U3UFpOWEJFSkt6VXIreEJQbEd1?=
 =?utf-8?B?MFFsVUJBWmovRHZlNFcrS2ZqZzgxeEVEVjd6VXdlR3ZuS2QrSDhUWWU2akVx?=
 =?utf-8?Q?BbWQTFMQtXVTr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUgzVklEZFg3K1puSlZCOWZVNE5ycnJTNW5yQ1ZSWTI5MkdMdU44b2tZaGlM?=
 =?utf-8?B?SXM3OXZMSHY2bElMOWlqT3BhYzNmc0R6eVd5V1M5dlE1R2RFUzZZQ0xvTHN0?=
 =?utf-8?B?M0xMWDdNQWFGWFF2aEJGTUk3MHAxcEs0cnJtMlhIckRRWldITDlRVHFSaHNF?=
 =?utf-8?B?Wnl2VFBUeEdCZjhDc0NRRG9RbEZFaTBOM2poYUpUU3hwZGdZMHR2bHc5Z05Y?=
 =?utf-8?B?ZUs5LzRSV3BYOWlBRjRTUTFGa2FWUVV2YUd0YStFdjE1UWlIcGcrejlMM2tC?=
 =?utf-8?B?TFBWUUp5c09NbGlNRnlpSTRualg3TXNZVTdvM2lBTElsSDNPUFFEbDRseFcr?=
 =?utf-8?B?Ull2TlZVczdCNWdFdVY0N2I5SWdvYnQ4bnRBZ2E1Rjg0T010ay9URE5yaDBh?=
 =?utf-8?B?eGRpSmlscmdSaDdIR0FTRmQvRDNmelphc1BUWFpSNWE1aENkM2RTZWphZE16?=
 =?utf-8?B?U0d3N3ExSlJrYjFtUmZVcVl5YVMzWkFndWlHWnU1WmZqclZVQU1JdDlkajk5?=
 =?utf-8?B?UUl2QVh4VXVrWUhQSjczRFVYcnRkNHhMQlBPSXpUWHJkZGxwdURqc2ZiT0w5?=
 =?utf-8?B?TGNoeEZ6WUF3cUxOZUFNTUtPNWttTW1FUTNRODBqTUx6YmhMd2R0YXBhdUZR?=
 =?utf-8?B?NjgxY2x1SHI3U2pqN1FaVE1PTXRFYjVrZ3pza3lMaVR6Z1dpYzBpdFY3aitN?=
 =?utf-8?B?YXhxYWFWQUJtVjI4VTlBWVg0U2dSd1NRTVpTUTVDaldIVERDVStEMFFmbTA4?=
 =?utf-8?B?SWhMaDRtQ3lJZURpNTVuUmkzOWJ6L1FLMmdoTUYrNWt6Y2k1L3hidmxudW9p?=
 =?utf-8?B?SFZrSGExL1dUMlBqbkY4QklZVkQvb0ZZM0RYZXNHaDN3cHNqVmk2R2NHejNX?=
 =?utf-8?B?OUJqSHFoSG1OaEViSUwvZkNQTGh1VzFYdDA1V1p4aFNGQkR5T2tCOEZXV3VN?=
 =?utf-8?B?UFlaR2RhSEZZNCtqOXhIc2FyZ1g3ODNYajJZekRCUGZwcUFMb1FkQnQzN1JG?=
 =?utf-8?B?UUtDbk54R2ZIR0Zqajk2TTZVc2VUZTN3dTd3SnoxWGxmbkpPY1JqV3lOSHRV?=
 =?utf-8?B?M0ltVXR6ejI3dEltUXlqaGhENDlReXZEZm5reWU5THhiSHl0UmRwVjlQMHlx?=
 =?utf-8?B?UnBNMlVPRk9qblZ3ZWhzK0x0d21GRFdCRjVZaUZ6NGQ4REZacU1VaUJaaWtG?=
 =?utf-8?B?N2J5emxvZmtGWnVoWWttK0MxSTRaVFVwSU5MbWcrNmVGcXVFTzJSeVlHUjRX?=
 =?utf-8?B?b3pnbkFPN2VFSG5GYkFBbXpjVDluNy9qR2NQWENyTy9nVEFwUWFObjZKbVMx?=
 =?utf-8?B?THZVQnlMcU5uSkU3RmZxdEhpQVpFNXc4Vjl3VitDa0Q5SzlFNHdoQURmUkhm?=
 =?utf-8?B?a05icUVMZCsxdWRydVhDWjVuNlZiMWZTTWdZNGdFUHRNWHlRYm0rb1JBM0sz?=
 =?utf-8?B?dW9tRVROMDNoNlVVVXBuNTV6MnRtL1ZDaG1DOEc2YjRPaGtqZXhCN3ZGMVRj?=
 =?utf-8?B?dEFvM2NHZXl5eWg5Qk5vSWhDSjdhU0E4TndYT3o5MU5tTTR6eDR0VjRvQTJZ?=
 =?utf-8?B?bGxUV2wxU3poTitqZW1kU3NJS2Job2p6SE83TmZPbjFtYVRtcXdOYW9tVDh4?=
 =?utf-8?B?dTBza0svU2VnS09FREJvTVJub1J2OW00SFNqd092N0g5TnFWUklMdzdUbzBM?=
 =?utf-8?B?YVBGOFA5bDRBSlZvSGFvNXpFMy82R2tjZ0Uwdy9oa2I2M1dNejdFRmNxbVhW?=
 =?utf-8?B?SzBRaWc3UEVGVm5ZOURYZm5BQmJVNWhnY1lZUCtlK0w0T0dWT3pBamxuMCtr?=
 =?utf-8?B?aXlUaXB6V0ZnazBsUEJWOXNuOW1aR0dOZmFDUVluT3lsdStJV3lxdHdkU2Iy?=
 =?utf-8?B?alBlZlM5NklpRC8weU5lK1ozWHlKeEdWT1U5UG85U0pIa0pmaCtlWkVRbXZU?=
 =?utf-8?B?Z2NxRkc0RmZBZjB1RHFzdys3azExenY2dURJdGtSdzh0YU1iYkkrcmk1bVht?=
 =?utf-8?B?VFdNckhubG5nRExvSUR5WVg3MjA4VTlMRGZJczkrZW9Jem84R3BhTm9KblBj?=
 =?utf-8?B?em16ZWhJSmpSM3FJanJjQ2hDVXQyZXRLQUg3ZzFpTGdmTGlkQ0tQclVNbjh0?=
 =?utf-8?B?cUN6T29XbDgvRHlpRmZHaUVWRXIrVXJNQ2dRaTVNNFFrWmlNSW1qNzRDUmxu?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee1854d-3e02-47c7-975d-08dd362deaed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 13:01:40.3092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: scZb10zAAkpawDOeFa/BHTfgi8j/MZcW0lZoAegOtUZvd02cGe4YY9+lsXNA4Ad+ojzFqGTjECpKROePqegDMlwRW9/lF9YKzCiy0RlfGaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7823
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


On 1/15/2025 8:47 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> enabled scaler users.
>
> Bspec: 70151
>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> --v3:
> - hscale_k and vscale_k values are already left shifted
> by 16, after multiplying by 1000, those need to be right
> shifted to 16. [Ankit]
> - Replace YCBCR444 to YCBCR420. [Ankit]
> - Divide by 1000 * 1000 in end to get correct precision. [Ankit]
> - Initialise latency to 0 to avoid any garbage.
>
> --v4:
> - Elaborate commit message and add Bspec number. [Ankit]
> - Improvise latency calculation. [Ankit]
> - Use ceiling value for down scaling factor when less than 1
> as per bspec. [Ankit]
> - Correct linetime calculation. [Ankit]
> - Consider cdclk prefill adjustment while prefill
> computation.[Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 49 ++++++++++++++++++++
>   1 file changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f4458d1185b3..ca9d5677c356 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,54 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_atomic_state *state =
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state = intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * cdclk_state->logical.cdclk));

I am not sure about this, perhaps need to use : 
intel_crtc_compute_min_cdclk().


> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int latency = 0;
> +	int linetime =
> +		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> +					 DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> +						      crtc_state->pixel_rate));
> +	long long  hscale_k, vscale_k;
u64 will be more appropriate.
> +
> +	if (!num_scaler_users)
> +		return latency;
> +
> +	latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 4 * linetime);
> +
> +	if (num_scaler_users > 1) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> +
> +		latency += chroma_downscaling_factor *
> +			   DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k),
> +					    1000000);
> +		latency *= cdclk_prefill_adjustment(crtc_state);
> +	}
> +
> +	return latency;

If only 1 scaler, cdclk_prefill_adjustment is missing.

Regards,

Ankit

> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2302,6 +2350,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
