Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C9DGxl0y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:13:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E172E364E39
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:13:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040A10E883;
	Tue, 31 Mar 2026 07:13:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R1Gi8QXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D990710E883;
 Tue, 31 Mar 2026 07:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941206; x=1806477206;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=afC6LHHP5GFbLGw4kajANKjKhPlYf0CiNxAGvBifE0k=;
 b=R1Gi8QXmg7nk3hjwOX01bYXWDkES2OQwySRl+RLzmvEpxjR1+6bC41l5
 Et/HAg7GJq+VM4zTat94IOafzz484cirzcfs0qcTF6If7ySAuphM4zVA7
 786qbJr9lvkSjkxg0oEUes0wLJo6JJIv4ZSfEO2fKUmMCnhQM8lTJw9wX
 rP4fTB0KcQAmdA8esfLHDL3vw2Cj3fMsiT9Nbzc4aNjvudB9u2dZowIAl
 Iloua5pqst3qgCXSC+Bx+P1WkU83+++oCeALZzB9XDmLqquEW56d6eMCw
 mO2BO3PKQAvxo2WoboESKOEZxDOXwGH2FT8weiRmCitwfSTS5cy7nGkV+ Q==;
X-CSE-ConnectionGUID: Ksc2tpwqR++dEBDVM7/nvA==
X-CSE-MsgGUID: PW0JEEf8SmWxJIhr9kZTmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="98554134"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="98554134"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:13:25 -0700
X-CSE-ConnectionGUID: CrlvDvp1Qm2STRhMbZzUBw==
X-CSE-MsgGUID: LmhawYLoQxaS41H0Ux46Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226533792"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:13:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:13:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:13:24 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:13:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hFJIkKXzWxDXiufqijgDB4sMiVQ4DUtR+Kx3NddDTaAmF/gyk3bgmUxQL6IwOp3kkGYBVNnsZLvzmG2rpbTqk42gKGFM2rgi5Wf0lmKXX9oDlWdQVzN8E6MsqFe5q0C57sUbrgnRYPuA34Lmx9RxvSHnj0M8TMhGf8OlF3ptVSUlOWpk2FXlTK68xlQJTjHTgMHFD/sUcfHLGzvgCK0UuPC52pN/2UncpMf1M+qQe04jU1/KCQnO+VbHLkNGiv2LL7vvVUEisr//iKW7dxQzBl0QPLK2WvhJC7Zy15RS3NckZ/D4WmZp8NCAE9TVyJlvqi8m2Sp0U2NPeDupiUyiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GGtxUhoWgbQA9yjS6FU/f2csRvBtVwDI4b/1Xskafg=;
 b=G4cAfVnzzfWXbxwgUELc7S3O/l1gUMkS4a80xLurDlSNIxdUJXITbEfxR5EUpgZas85AL5Q3JuLpbBdgVHNDypZrX53SFRXtqB1x5pSsFMi1Nu8RgfdrFoiAnDd1JkQb0RizmqsJvpFOs0pZIpzhbSeXEtzF6AMwNWioig8K6DwkeFOttPPg5qmyg1mVUEkk0z75OdwZ8Kp/dSbGdYMamvwtLntxvPAXgR803jWggkvnvta7sjs65wkhnUNEgmQ1gg3GBtp2PSQr7IvV5hJOHMV6jBTBm+unOAMEfnxKid9sSlg53mhYvGt1khVaUGnGs4xzPB9bdWuZiP0x/UNtPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:13:13 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:13:13 +0000
Message-ID: <3af15150-c0d1-4b31-96a8-255d8466ac9c@intel.com>
Date: Tue, 31 Mar 2026 12:43:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/26] drm/i915/writeback: Add some preliminary
 writeback definitions
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-5-suraj.kandpal@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::26) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: f14e0085-cdf7-41bd-0609-08de8ef4f81f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: XvpPVJ7bky7uY+2eSySHCZhTft+ChX8Mk7STHiVQ/OfnTkZRw9Qlo84tt99PZ0aj8pyoLJgu+YmKbzvRURNqeJJyOLG1AfeX+KVDSE1dBTHwj4wMifNjb3hTqNe+RQLLTENuSfNa8X+bvchU2CDsf0nFwb6aQR5MNQQupAlwDolHwFgKv/zEHskbGAYHhU3PmNqKs7R7OwdZQd0GlqWKAw5tf4RS0mdjVH9MBZFLGpRmeTZOn3HwPa4dgYk7ta8iYvabcL5c8QLismDJp9SdhAeiSFpT1h5v0BuIOspdESxBWNdJwgQLQ8xxLAHzfZI8P1eDsNh2yNf6YBiKavrye4p0xsF3hcoRXc4X09UnL7AVzrEXxwrAYnIt9eYGTFSAIwk9PmewZafjrST4m4QYM7mSbV0Q7v3YoGCR4IlIaQW5v2CBuxf35bbuV7UtBuFoWOn/EhTKKlm4QaQAjNAV333SMzuS5d9LLHmIZXeeXc6c0bIQmKfLAC3GbGmJzp2DhQx6zscfPmEW4UxpluumGg8hUqijNx7NMfSN6yXHrA9MVxKB561PsELwLsn6DwtaPZHLC6LKKK88vqNsOtwHAHvI3owyt42H79J1nMV06yfT/V3/qOIet8mhLPKdiDXm4ptNXC3qXbCUZYvtOrQeExU3eTLUgKwAP6GRA5IG/6A3A2P5IS4cyVDIHtPKQU45PX+9mnmbGF/xJ0LyfOFbKZsny4kFDV4nrwynLTQYrBI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDBDeWtYSlJtY2FMVVIwNk11T2NWbENla1RqYWpqcXpGYjM4YitMQTNVUkJl?=
 =?utf-8?B?RnFIczlmcTNYYVk2ZCsrNmhPVGkyRTBONHE0ZTNaOVYya2Z3dHhHVlpZdlZr?=
 =?utf-8?B?YU5VM3U4Wll6N2FMam90cDQ5YjY1Ymg0TjBMKzRncHp4Q2lFRkFjTXY4NjJO?=
 =?utf-8?B?aVQ0ZzBOenFkcXBMdXZkUElsU2dLNzdwdXJuTDBkUm96L003THpEWGJRR2Jv?=
 =?utf-8?B?eExVOEZPbUFJRTEwZFlBS2x4ei90N1BOVmcvTlFZSUNvc24yNXF4eHNmRG4w?=
 =?utf-8?B?c0RwbFRua1I2a21iNFI2M3g3MC9QVlNCMGNoZXZKNmRxelNsVlNyaUZmNVZv?=
 =?utf-8?B?YVAwcUVXM0R4MC84R2xTdkZWaU9Ud2QvMVMrN3B0MUdTKzd5NFBFWEJ3OTYx?=
 =?utf-8?B?Tlh3V1ExY0tYT2JmYURvRmhrbkJoaHNSRmUwMERKT0ZzWStVS2RTWWd3UjBQ?=
 =?utf-8?B?UDIyRHdGcmp6bzV3UTNFZ0pGRzFkVEg4aEdxVm40eHJDR3lXd29CRUc2OEpo?=
 =?utf-8?B?SU4yYXVpdWhHVnRNTE1FZHhGS2FkK1FXZldxTlFQclhxKzVEamZHOWcyUzF6?=
 =?utf-8?B?R3hFdVYwMXdVS3JRakJvZjdBN0FSckpuaXFneitjTS9IMEpieE9iM3NkSUpy?=
 =?utf-8?B?bmdHQmJkd2Ztdm1EK3NDbFlxVHZIQmdweGQrY0d1NkVKTW5tRmxPTHNhNDlk?=
 =?utf-8?B?cThyRmw0OC9SczQ5SVg3YVpna0crTzRwWTVvaGJBTzZBc1pMMThibXJQU2g3?=
 =?utf-8?B?SVY4VVhOdUxOSE8xUWdhd3RKL1ErM29DMjB2YjlYTld0Y1ZLRDB4Y21TVFVh?=
 =?utf-8?B?dlN2UTNTVXpqL0JqaW40U0sxVW5pRDNldXIyVTZxeHEvVGJZN2M1ei91QVI3?=
 =?utf-8?B?MHJuMlV4czNDWU9wU3VUcVpuaURhakVoRGxmcmJ5VjZiQ2JxKy9pRzZ4VlZx?=
 =?utf-8?B?Skh4cXlDVmZWSGxNVXNsZHdRL1FwSjFhUTcrUEJlSFlPRkJyajhJcE51Q2tu?=
 =?utf-8?B?aFFwVENzR0VhVGpmV0J4R0dMTDdPZ1BYdk1WdDRlRnQ2eEJ5Y2gwWDRKZjlv?=
 =?utf-8?B?ZHgrcThNWDFCalA2VmRwOWZIdjFGdXJoTHUvblowbVExdDZ1aGp2ZE9XL2ZF?=
 =?utf-8?B?WktnNjlEMzlGNDA4aHM1S3MvTXVGNW5FZ1VkUmNDaXJsNVVRWlVxd3FodmFu?=
 =?utf-8?B?a05nMkdtelFFYmFsOHBSRWQ4TmUvOTU0SzViVDFXdE1Mck5VVkZtNTJUS1VD?=
 =?utf-8?B?RUFHcTFlYUZidWRlYSs3SXI0NzBWUzdISDZlSEd6bUgveU5yU3V2TDI1QzJE?=
 =?utf-8?B?cVFXLzVKUnUrOWN2elRaSVQvWGFEN0duaHFGM3Fna1NCRHlBbEZ4TVFWUm5s?=
 =?utf-8?B?aEFXUEY4S1BGZnNEUjFYS1ZqbkU2N1B5OVBwL0JBdnpWSDdQbnkrb0t3MGlJ?=
 =?utf-8?B?WlAwQTVsb0wrN3NFUTJDdVBDM1FXUVdhbG1pYmI1SWdVZFJlT3JQZTdldnFF?=
 =?utf-8?B?RTJnekRiQXBJWW82Vldsd1lVWnh4cWs1SmQ5dnlJYXp0M3FPQ01mcWdoZ0U3?=
 =?utf-8?B?TUx1ZE9nV00wRjM3UllkZkp1N1VsNHk3eTBOMVRxcWxrVHNUTk1OMXR2VmNv?=
 =?utf-8?B?bnFHYVFPbndINWE4aEFhQjNyWHdCaTE3ckZpcUtFQ3dNSFM0ZDRoZFNmbkVV?=
 =?utf-8?B?OENUckFXTk0xajgwejR3QzJ0ZW96N1hJSjlKMEUyWmdSNlBNb29LVERaQmxv?=
 =?utf-8?B?RVR5akx1bHo3Q3hsYVdNb1pKOFUzTXdCMG11enJ2WkFkaVVha2kxMjFsVTVF?=
 =?utf-8?B?ZUdYaHJBZjNrUXpYa1c1TC9hQ2pzeFRrd0NERHFpbU1ZeTMzdWNVclBCYUky?=
 =?utf-8?B?Vm9Md3o1c0llZzVKQ0tGN2lwOWJhMVk1YWRxOHJqeEIxZDhxaWt0dmZkWFZR?=
 =?utf-8?B?bTBjYW90UWUzUmh1ZmVHcTcxc0VxUWc2TGlmeDhTRktOOUJxbnM0aUZkV3M2?=
 =?utf-8?B?NTI4TGNkdExHdkFrdzVRUXJoOGVhVERkVGlFNVg0M09NUUk2T2NsRG9nNDg0?=
 =?utf-8?B?dFpobWpTd2tXbWNTcm55MWhiRlFNNFZPcDExOXN1dEFxTUYrbWVnSkxud0tH?=
 =?utf-8?B?SUVXUHEwT2MrS2g4VzJPWisrOVMvNkJDMDBGQ0paMTlxQ3ZudktkNUpoV25O?=
 =?utf-8?B?RmFSZ3FDRWhlUVo3T0tQK0MwS1ExRm5TdHkybGZUUEMwTURoelJSa3RBSUs0?=
 =?utf-8?B?QzlhVGE0cjlIN25CWit1UnlZRzF0RGZGT0VVeVduRXRQNTBFZ3lzdi92Qm5u?=
 =?utf-8?B?YmtuSDhHU25lSllHazMrMERCWi9BL0V2bTN0RVk5ZWczUllVa3pEU0w5amd2?=
 =?utf-8?Q?GTT24X3A8eK3q8O3p7GuUohnbp4RXo4fPK0mb?=
X-Exchange-RoutingPolicyChecked: glPmP7GK4xP7W3t4TslUQ7WVlf7wE2GVktp9lzPwYfAO5+9MH75H/Kd6UBhO8yVbycDxuCOtNc/Doq4dhs1WVyNiUpTAVAr1iubsS2Pl8CEaLY+S7c+sI7TBnlV5+qs0MlhB8B0VdZJqYMUGXwpscaVHS5qjLEryXzJTWR+WJPBtq40ZurcHP8R5jlzG3teNsebn3whe7OeH+hKxYzMBj7XWpkUGsPTKuERoIFPmnyLLeukh978ImmcBdaI/eOCApa6+OlxstFdUECf3aodf0TBsAIpQ9TCZqticGE5MrEu/Q2aaca5FrOxSZkAVJwInTADzRLu7XVQ1C5kbJ14shA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f14e0085-cdf7-41bd-0609-08de8ef4f81f
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:13:13.1087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /fbyUqSmwBwnCLinRJdEjFI8P78NdbZj395C/SzjNQI4iLTYiMVxv+2qaActbURcnWFyc/2HOUbQ4OpkqUNPpa+lXYn+GffJSlIcUpKFjyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E172E364E39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Add some preliminary definitions like, output type and transcoder
> related to the writeback functionality.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_acpi.c     |  1 +
>   .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
>   drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
>   drivers/gpu/drm/i915/display/intel_display.h  |  4 +++
>   .../drm/i915/display/intel_display_device.c   | 29 +++++++++++++++++--
>   .../drm/i915/display/intel_display_device.h   |  2 +-
>   .../drm/i915/display/intel_display_limits.h   |  2 ++
>   .../drm/i915/display/intel_display_power.c    |  4 +++
>   .../drm/i915/display/intel_display_power.h    |  2 ++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   10 files changed, 44 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> index e06f324027be..89b8d3b4f1f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -256,6 +256,7 @@ static u32 acpi_display_type(struct intel_connector *connector)
>   		break;
>   	case DRM_MODE_CONNECTOR_Unknown:
>   	case DRM_MODE_CONNECTOR_VIRTUAL:
> +	case DRM_MODE_CONNECTOR_WRITEBACK:
>   		display_type = ACPI_DISPLAY_TYPE_OTHER;
>   		break;
>   	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 234843b8f83a..4e9e880d2778 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -53,7 +53,6 @@ intel_dump_infoframe(struct intel_display *display,
>   }
>   
>   #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
> -
>   static const char * const output_type_str[] = {
>   	OUTPUT_TYPE(UNUSED),
>   	OUTPUT_TYPE(ANALOG),
> @@ -67,6 +66,7 @@ static const char * const output_type_str[] = {
>   	OUTPUT_TYPE(DSI),
>   	OUTPUT_TYPE(DDI),
>   	OUTPUT_TYPE(DP_MST),
> +	OUTPUT_TYPE(WRITEBACK),
>   };
>   
>   #undef OUTPUT_TYPE
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 10b6c6fcb03f..d433ffaadd65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3768,7 +3768,8 @@ static u8 hsw_panel_transcoders(struct intel_display *display)
>   	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
>   
>   	if (DISPLAY_VER(display) >= 11)
> -		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
> +		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) |
> +				BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1);
>   
>   	return panel_transcoder_mask;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 552a59d19e0f..07d9f62e0866 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -66,6 +66,10 @@ static inline const char *transcoder_name(enum transcoder transcoder)
>   		return "DSI A";
>   	case TRANSCODER_DSI_C:
>   		return "DSI C";
> +	case TRANSCODER_WD_0:
> +		return "WD 0";
> +	case TRANSCODER_WD_1:
> +		return "WD 1";
>   	default:
>   		return "<invalid>";
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index be55ef8ea617..129b1c561847 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -22,6 +22,7 @@
>   #include "intel_display_wa.h"
>   #include "intel_fbc.h"
>   #include "intel_step.h"
> +#include "intel_writeback_reg.h"
>   
>   __diag_push();
>   __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
> @@ -145,12 +146,16 @@ static const struct intel_display_device_info no_display = {};
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   		[TRANSCODER_C] = PIPE_C_OFFSET, \
>   		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
> +		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \

Do these exist for HSW? Atleast BSpec filter says they do not.

>   	}, \
>   	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
>   		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
> +		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
>   	}
>   
>   #define CHV_PIPE_OFFSETS \
> @@ -581,7 +586,8 @@ static const struct platform_desc hsw_desc = {
>   		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>   		.__runtime_defaults.cpu_transcoder_mask =
>   		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
> +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),

TRANSCODER_WD_1 was not introduced until GLK.


>   		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>   		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>   	},
> @@ -678,7 +684,8 @@ static const struct intel_display_device_info skl_display = {
>   	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>   	.__runtime_defaults.cpu_transcoder_mask =
>   	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> -	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> +	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
> +	BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
>   	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>   	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>   };
> @@ -830,6 +837,7 @@ static const struct platform_desc cml_desc = {
>   		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>   		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
> +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_0), \

unintended duplication?

>   	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
>   
>   static const enum intel_step bxt_steppings[] = {
> @@ -884,6 +892,8 @@ static const struct platform_desc glk_desc = {
>   		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
>   		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
>   		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
>   	}, \
>   	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
> @@ -892,6 +902,8 @@ static const struct platform_desc glk_desc = {
>   		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
>   		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
>   		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
>   	}, \
>   	IVB_CURSOR_OFFSETS, \
>   	ICL_COLORS, \
> @@ -905,6 +917,7 @@ static const struct platform_desc glk_desc = {
>   		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>   		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
>   	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>   
>   static const u16 icl_port_f_ids[] = {
> @@ -975,6 +988,8 @@ static const struct platform_desc ehl_desc = {
>   		[TRANSCODER_D] = PIPE_D_OFFSET, \
>   		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
>   		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
>   	}, \
>   	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
> @@ -983,6 +998,8 @@ static const struct platform_desc ehl_desc = {
>   		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
>   		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
>   		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
>   	}, \
>   	TGL_CURSOR_OFFSETS, \
>   	ICL_COLORS, \
> @@ -997,6 +1014,7 @@ static const struct platform_desc ehl_desc = {
>   		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
>   		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
>   	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>   
>   static const u16 tgl_uy_ids[] = {
> @@ -1142,6 +1160,8 @@ static const struct platform_desc adl_s_desc = {
>   		[TRANSCODER_D] = PIPE_D_OFFSET,					\
>   		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
>   		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
> +		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
>   	},									\
>   	.trans_offsets = {							\
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
> @@ -1150,6 +1170,8 @@ static const struct platform_desc adl_s_desc = {
>   		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
>   		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
>   		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
> +		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
>   	},									\
>   	TGL_CURSOR_OFFSETS,							\
>   										\
> @@ -1169,7 +1191,8 @@ static const struct intel_display_device_info xe_lpd_display = {
>   	.__runtime_defaults.cpu_transcoder_mask =
>   		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
> -		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
> +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) |
> +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),

Also needed in xe_hpd.

>   	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>   		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>   };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1170ac346615..90aa629595db 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -292,7 +292,7 @@ struct intel_display_runtime_info {
>   	u32 rawclk_freq;
>   
>   	u8 pipe_mask;
> -	u8 cpu_transcoder_mask;
> +	u16 cpu_transcoder_mask;
>   	u16 port_mask;
>   
>   	u8 num_sprites[I915_MAX_PIPES];
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index 453f7b720815..a99e269b1aee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -45,6 +45,8 @@ enum transcoder {
>   	TRANSCODER_DSI_1,
>   	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
>   	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
> +	TRANSCODER_WD_0,
> +	TRANSCODER_WD_1,
>   
>   	I915_MAX_TRANSCODERS
>   };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ec96b141c74c..448f1c57439d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -79,6 +79,10 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>   		return "TRANSCODER_DSI_A";
>   	case POWER_DOMAIN_TRANSCODER_DSI_C:
>   		return "TRANSCODER_DSI_C";
> +	case POWER_DOMAIN_TRANSCODER_WD_0:
> +		return "TRANSCODER_WD_0";
> +	case POWER_DOMAIN_TRANSCODER_WD_1:
> +		return "TRANSCODER_WD_1";
>   	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
>   		return "TRANSCODER_VDSC_PW2";
>   	case POWER_DOMAIN_PORT_DDI_LANES_A:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..fc24d7153ef8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -42,6 +42,8 @@ enum intel_display_power_domain {
>   	POWER_DOMAIN_TRANSCODER_EDP,
>   	POWER_DOMAIN_TRANSCODER_DSI_A,
>   	POWER_DOMAIN_TRANSCODER_DSI_C,
> +	POWER_DOMAIN_TRANSCODER_WD_0,
> +	POWER_DOMAIN_TRANSCODER_WD_1,
>   
>   	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
>   	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e2496db1642a..a43625e30430 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -83,6 +83,7 @@ enum intel_output_type {
>   	INTEL_OUTPUT_DSI = 9,
>   	INTEL_OUTPUT_DDI = 10,
>   	INTEL_OUTPUT_DP_MST = 11,
> +	INTEL_OUTPUT_WRITEBACK = 12,
>   };
>   
>   enum hdmi_force_audio {

