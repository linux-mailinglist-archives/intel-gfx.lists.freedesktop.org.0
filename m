Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384B49686BD
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1A310E2BE;
	Mon,  2 Sep 2024 11:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKQTen0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4CC10E2BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 11:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278048; x=1756814048;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z2dZ56r97tco2RLb4ybaiZgkYUGxUKBuVHAZ4auVN5M=;
 b=UKQTen0TVvPsfGtuG/dC9vfCsXgGquDCOgverPLceulnT86bwmiD9E2f
 dtTAqe2xv08OrY8ur+kQZGBoyFS+nq2OjJMyMWUnB9TXGFcyHmhSLzcvU
 HVVS9YAl6A7UChffTMwmvqr78lQuk2RPxtnbxiE7rAZhk7mRYvtYOQcH2
 QOggT/8i26MdnOBOWRvFO00iPWynIWmvI4tzElrL2quKitwuA52W2BvIZ
 ZlR1Y0FgwcuWKsFPXCaLKWv1PG+O2LPX2aCSMSVQZ5FRcBowG+pn29NZK
 clyeVg0jqj5Z5JXbP/Ob0sgDWRrJ8wYb2IXXQ8bDrPV0LAfd2bPs8DpA8 A==;
X-CSE-ConnectionGUID: pvKI4tqYS8+toPm9V0Gttg==
X-CSE-MsgGUID: oyWB5eYoQaqp6Jh/NzWQAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="26758439"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="26758439"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:48:18 -0700
X-CSE-ConnectionGUID: WHZG9uEXTyugFZTkNAQKpQ==
X-CSE-MsgGUID: UbcQTNK+T3ibR1LqnAQZ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="102042402"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:46:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:46:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:46:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:46:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nl9ZlvwmC+zt/BelFV2UFa5zwFdJmw/LPRPx88D8gyd/c61FSh0411Ma1mkQhK5QSoc00gOPD+1v+ARHQ9iQ9xGrtRsnO3xKpJfdNgDXFCPCrc2qzR1udsAWDC6OwiDdarZPy1AY1rzTgH+fhdeK/HQtGXlWkragDirSap6JsCqEgfdreibtAwymudRBhdbsRH2v09yL/xVUhmhBnKXpjMeNF/s6K3sGA6E+Gjbiic6R5XLaBJuzRh7dR+1oH/kwUs2BIE1+nhzZaRE3BaLQhZX2JLweNa7opto7X2ZlH4QFYmD2S0+jbTV2eMF9bN04LvVvcmLg0Jd2fKkSU/Dqvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v4Vd/tLi0mrcWEn+Nb3cOc9duoTaIkiCGik3VIf6MIk=;
 b=fs0y+wSLm1ctBrq4PPhHCHfWNdOeR+uyDs5lcAp34qwLQBdN0HGCbXVRGKkKknIXqSMTIOuysm5/+B/7OTD04OkznDr9Xz+cbEqdeImkgdKBqvZVnMibBlrrRz+9Y6x0lw/5rMiCJ3RLE63rI6NLaW4sstfx8I4ZYPrDYtyjUcRKth2PwTrwyFBURi3DNisMFY7p2M7C5zAW+/xmhUf8R/qpKjrYP7UHAGP3HGy+OYTy4fEm2MX9iKpUgH1aQ4993YQa9Faki5WwOGLpx0Bd4g/O/K6PWLX4GZlJiXdbMiCPCwXJk8awhz4tTZPCcmMOPYe1KLbKTU5gxwntTEnIPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 08:27:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 08:27:14 +0000
Message-ID: <7fafa837-cfa6-4f3e-aaed-099ba30ba6b3@intel.com>
Date: Mon, 2 Sep 2024 13:57:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/3] drm/i915/panelreplay: Panel replay workaround with
 VRR
To: Animesh Manna <animesh.manna@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>,
 <jouni.hogander@intel.com>, <arun.r.murthy@intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20240708152231.4170265-1-animesh.manna@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708152231.4170265-1-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: d766c458-8781-48bc-fc94-08dccb290ca2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1FGaGlETnVGNmhwcWxlMW5nS2R6UklkNGxzOFZoWVVkblBORW1hNThiZmFS?=
 =?utf-8?B?OWlOanRCbGlhUCtraXk5TTN3aWNFcWVmTllZQm1YOWZub1RqTmtEVm5QMkdk?=
 =?utf-8?B?eDMzZkc3cFNKOHozN3BPb3FIS0VDR2IvNUdtdkk3NXI3ZkIrL2hvUTZCbDlE?=
 =?utf-8?B?MEZYRCtuM3BGZVBGck9RN0owSG53UzM4VlRCZm8rTmwzQnhnZ0R4dWY4aTY4?=
 =?utf-8?B?b2NwWVRIY04yVUNtLzY1bWNVTnE3anNuRHYrQXB3UFNXOUtVeC9jSFhqcGtz?=
 =?utf-8?B?dm10YWFBWDNmQ1V3K2RFUUU5dnMvT2FoOGVpdUpkMUtWYjdacEJZZXQrRVYw?=
 =?utf-8?B?b2R4UFVFbkRlbG9HMWNkeDJwUzU2eDhabEtSVzhidGVBeERoSUV1OWp5bGZH?=
 =?utf-8?B?eUhxVndtVkllTnJMUXNVYjlvUS9HREl1QmlMMERLdGZCaitKSzEwU0NkaG5i?=
 =?utf-8?B?VWVFZ010TFRsZHU0TnpYZUxtRFZGeTk0YTVycHViOXlhaGZVWHlibyt5Ryts?=
 =?utf-8?B?VUkxWFNxeUJDLzZzRGZLcTRNTXBtU1JSRHJRSUxOM1dlTDRlZUtPSlUxSllr?=
 =?utf-8?B?bXBiOERLY3JVR2Q4MUppNmdrRlhDNytKZWFpaTNLTjV6RGRPc1ZJSzBGR21m?=
 =?utf-8?B?Nm9JK0ViUEtSczgvNVFrbSt0NjZhUDFJcTlqMUlXQnYzZk1jbWpZTFpUM1Jx?=
 =?utf-8?B?dHJpTDBTblAxZlRDd3lGQUxKajdYZFlTQ1QxYllCSjNvQkJZWXNnNGJWb2Zr?=
 =?utf-8?B?QkRFVFdGT2ZwTXBoTjViRUpDWm52R0pRenByYVIvNWhRSC9FNVBtclZoWDR3?=
 =?utf-8?B?dERnTXhtM2QyeFQxS2J5bHh0UHdSWk12OXpUNE81ODFhb2g2RWJmcmg1cmdH?=
 =?utf-8?B?Y2w2MjJsQkJ6STdFZ0pyYkowb1B0dHZJazdKMTF4RWdNRXlHWXFhYkZhSjB6?=
 =?utf-8?B?ZkRIdFUvdHJKekJiWU5kUnd5SmRwdU9LL0dvQWVVMkFMMGlFWjdETERPN0RO?=
 =?utf-8?B?VjIrVnJQeDQzV2syRDMrV3AveUEzVjBqdjRsbkJrelVQZWtnNkd3Y2wrT2Zp?=
 =?utf-8?B?TnV5dVQ2WE4rYmt0QVRRNzV3SC9SMUd0cmQ1MDZlT293dFZzdWVlRzR4Y1lR?=
 =?utf-8?B?dmVqSEVkUkpBS1NDVGFCUEVWaVNRT09VT2JkbVF2R1VCV1U4Z0wrRnlTRk9s?=
 =?utf-8?B?RTl6NlhGVGp6OHI4SlY5YUpyNnNmLysraUFOUUhQSng3RE1yTlRZVktoc0Uv?=
 =?utf-8?B?d3BqWWEzK09Bb1lZU2ZVMmxsUVp1VlI5UkxkNzA4bGJDUmYxMlI0K1R0WDly?=
 =?utf-8?B?SHpCa0VkYy9HcWUvd3NnbUtQa3ZJYjd0cTlrUXZROTlQWUVZNng2K0x6SHkv?=
 =?utf-8?B?bC9JTFFhOGljcmVXWWFDQTY2QlEyQmFDemsweGVxdnhDUUd6NEhpSEFrUFRB?=
 =?utf-8?B?MVlDdzBla3d4Vm1BSmRjTDZ3MklTWHc3Y3IzcVRySEN3NFVYOFdWUHZVZVE2?=
 =?utf-8?B?NjlkeUlDSU43UlJXV2laWjhSeVZYNzZxUkYxMDcveWo5RUZuV1dtWWxZMWY3?=
 =?utf-8?B?a3RaWDl4UEZHQTdEOGwvR1pMdUVod05uUGdsa1FWRGZOR2NCR1Fsb3g5RGF0?=
 =?utf-8?B?RTk2VXpVOGVvUVJvQ3BWMzVsUFVoODRZV2NUMjVhZUhQQVp6OU5CbllYaWVm?=
 =?utf-8?B?SVhSN3FoOHhveFNkL0NqTlZkcU03eEJ3eXVkZWR3a1VFTjV1azhCYWhjdjY3?=
 =?utf-8?B?Nzk5KzZpeExlY3F5bzgxNnIzenNLZUdTbjZaZVIrK0s2Q3ZrOHlqRVRlaG41?=
 =?utf-8?B?cm1ZdTBnZVMzalRORUYwUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1lSV3llQk1LOC9nL2E5UDI0bUtUbm85MnYzMGtFRytPaTUvZHpSQWY0YWxk?=
 =?utf-8?B?K0x0ZWw0amVubDlpTHFHL3d5T2Vyek9qeGVPOStLNXFQNEU4SDk5allsQm9W?=
 =?utf-8?B?NWhRVGR2VEdTQk0wT3E5ODg4SklmT3pWV1lmWTBPUDkybUNyU21PMEpta0RW?=
 =?utf-8?B?SktsU00zT09wZzA1Yjh0S1V5MnFhRXJ1ODhRRkdDcnRHTjlZTTk2cDlBN2Za?=
 =?utf-8?B?WmF1dnJGTG1ib3NINXBWeElMSWxUeW11aFhuMDdSSC96bDdFa2VKYU41Znh1?=
 =?utf-8?B?c2JnSEhsTTFWZ0Z4STZLUlF0dXduUDFiWnhoWmJ6OHp6dGczbFlMNDJJSWVt?=
 =?utf-8?B?LytLNGlCU1lEa2V5Uy9UeWZIdExQNzBEd1RndC9VSWkrTWNiZ2hyZDBxUVda?=
 =?utf-8?B?allPWnZPbFJLUWgwOGVKdFJqczBGMkhjaEdyeStWZ0RISmRRYzVZZzREd3py?=
 =?utf-8?B?U05mTGwxQnVwTkFjQ3VFa054TlByYnJsUkNiS3o3eDM2ZkU5eUlEVzRPbTNx?=
 =?utf-8?B?b0p3VkRodGh4NkJOQ0oyem01ZEhHTWx6VUlqVDI5SFQ4QVhjL01yankzVHhq?=
 =?utf-8?B?a05NS2dNWS9JaUFQMldDeFZ5T0ozMXFGdXoxRHFkR2Rwcy9lakwrOVJ5dkpJ?=
 =?utf-8?B?eDBMNUpSY1RPakJjejdYOXdFRHEzUGNNcCtQeTU5aWx1YUtiL3UwMUNYRE9O?=
 =?utf-8?B?Y3MwRnlKbTJoU0ZIRmdzOVljb0VKb2xpWnQzNUZnczRrS1RDSkNVVXBiR0Uy?=
 =?utf-8?B?Q3pobHE0TUZLbG9vL1pSUjJlMzMxbzBzUEFmZWZhbVpYdlZIb2RZQU0zOCtk?=
 =?utf-8?B?aWFCNVROaEZ2WE1ud3h6a0k2UUNaZUh5YmNtTjcxU1VkWENpdTQ0YWcwd3Vx?=
 =?utf-8?B?bFRSRmNUd0dtdThrK2hsMmVrclpjem5iVXlRYmpzSkx2V0plbUlzcWtuc3RC?=
 =?utf-8?B?ZENEaDlIaVpVcW1iaXlyZmMvdE9NMHNPYm12ZGxQNW45bitveHNFR1lJRkNr?=
 =?utf-8?B?dnFpSlhwelh3SExsUm45TGJXazZwbkRVZmxmS3hFaGZHR2p2RDBnVmtLcFQy?=
 =?utf-8?B?L3VWYnVlUlpObFpCYW4wamRia3M0UEhCeUZ1OEw3ZlBWUXhybThBejdLeFpU?=
 =?utf-8?B?MTNkMHplcnI3empNUExkTDZiQ1VtRjBIVnNrMXJDQkJ6WGlWZXplNFJLN2Rx?=
 =?utf-8?B?bXlFNWlaa2hSaHpJV0VNQXIyNnplWGZGVytWNTJhOWhYY1d1Y3Uzc0xNR3dL?=
 =?utf-8?B?a09CTnlBclVHclE2TDZ3RTBGWFdYeHZMZThTTEs5UW83ZEFIVld5aVZrM2RV?=
 =?utf-8?B?bVM2RFRsM29GVlBMMFRUUWNHU3JnNDlWdTRBWTg2cjF5Vlh5L2haK2RldGxk?=
 =?utf-8?B?dVk3RHcxUHo0YjR0b1RZYUlsbzNHZ2o3UndhT3FPK25iWFRMYlZUUER2Snk0?=
 =?utf-8?B?QzB2REJhV1k3YUVkaDJkVFplVnlXU2NFeHlCWmUrTTFueGhURDlrVU10Tkk4?=
 =?utf-8?B?V2ZLUWUyYlZZdFFFdjJJc0Vrd204Zm5SNGJzYjA0V1BjYWQ0bjJCc1RFekl6?=
 =?utf-8?B?VlIzclVySTFOQXFXanFONEh6Y2RuMGplVThFamJWQ2dNekNzakhnTk9CUURv?=
 =?utf-8?B?Y1hibHFQNno5UmNRWGlJV3JaYjIwdTJFNitaWWExR081aFJIZUxua0tVZDBD?=
 =?utf-8?B?TmR4c0EzSDZmY0F5QUQ4T3VrSG5xN1I3WGpqOTIzTWpsM2dUU051MjRxVk5L?=
 =?utf-8?B?TnpKU1EvOWZ0WjJ1TzlqLytiMm0xWGNQeDBvdEFQZFZZOXVrU0VCQjVRa0pw?=
 =?utf-8?B?R1lKZHBzWXQ5ZS9xRHBJUE10TmNVeWhBZkkwWXBXalFEa3h1SitLK2NIc0hF?=
 =?utf-8?B?VkRoVlRuZUV1dzFRZHRuWUtpWDUycHphUFh4MENSMm9kUWV5TE5wZlVndGJl?=
 =?utf-8?B?SUE2WjVudkdreklXQlUrazc0bGxGWm9sSkc2NDBtRmR1aUlJQVA3a2hKY0Fz?=
 =?utf-8?B?SU9HWHRudERsV0EwN1lmb2dxaDUwVDJYNWx2Z0VQOHR2enN5VDJtWmJDWDNE?=
 =?utf-8?B?NERiZ2dKYUszSlRJbnJIZDBsYk1qUlFIVFR2OUZEU3MzYnBTaTJ4VXc1d0ht?=
 =?utf-8?B?RGdKbXBNaEc4UmVIT2NLY2dmblV4dGlNNnc3SDErOUw4RmxGbXk4TXA5c3Nk?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d766c458-8781-48bc-fc94-08dccb290ca2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 08:27:14.6864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 57bRS7R1FXeZwqqfLTvgqxkf8mYTAHEVKCCP/cbXqLpqh9r8gSQJ9sy7/B44vjfJbpIClE379L1YrPQQIXTJ88MRdr115vg93JKOJMVlK9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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


On 7/8/2024 8:52 PM, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> The same is applicable for PSR1/PSR2 as well.
>
> HSD: 14015406119
>
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
> v7:
> - Corrected code-comment. [Mitul]
> - dev_priv local variable removed. [Jani]
> v8: Introduce late_compute_config() which will take care late
> vblank-delay adjustment. [Ville]
> v9: Implementation simplified and split into multiple patches.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 50 +++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_display.h |  2 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -----
>   3 files changed, 51 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..be30eb22f3d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2512,9 +2512,21 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>   static int intel_crtc_compute_config(struct intel_atomic_state *state,
>   				     struct intel_crtc *crtc)
>   {
> +	struct drm_connector *connector;
> +	struct drm_connector_state *connector_state;
>   	struct intel_crtc_state *crtc_state =
>   		intel_atomic_get_new_crtc_state(state, crtc);
> -	int ret;
> +	int ret, i;
> +
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		struct intel_encoder *encoder =
> +			to_intel_encoder(connector_state->best_encoder);
> +
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> +	}
>   
>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>   	if (ret)
> @@ -3925,6 +3937,26 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>   	return true;
>   }
>   
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.

Wondering if we should use the new WA framework for this.

Since it is only for Display 13, and 14, not impacting the XE, I am not 
very sure about the applicability.


> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable && crtc_state->has_psr &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> +	    IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))

Lets use struct intel_display here.


> +		adjusted_mode->crtc_vblank_start += 1;
> +}
> +
>   int intel_dotclock_calculate(int link_freq,
>   			     const struct intel_link_m_n *m_n)
>   {
> @@ -4783,10 +4815,26 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>   {
>   	struct intel_crtc_state *crtc_state =
>   		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	struct drm_connector_state *conn_state;
>   	struct drm_connector *connector;
>   	int i;
>   
> +	if (crtc_state->vrr.enable) {
> +		/*
> +		 * For XE_LPD+, we use guardband and pipeline override
> +		 * is deprecated.
> +		 */
> +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
> +			crtc_state->vrr.guardband =
> +				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +		} else {
> +			crtc_state->vrr.pipeline_full =
> +				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +				crtc_state->framestart_delay - 1);
> +		}
> +	}
> +

I think we should split this patch in two. One for just moving the 
vrr.guardband and vrr.pipeline_full calculation to 
intel_modeset_pipe_config_late with the reasoning for the movement,

and another for the actual WA. Overall the change looks good to me.


Regards,

Ankit


>   	for_each_new_connector_in_state(&state->base, connector,
>   					conn_state, i) {
>   		struct intel_encoder *encoder =
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b0cf6ca70952..21fd330b8834 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>   struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>   bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder);
>   bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   			       const struct intel_crtc_state *pipe_config,
>   			       bool fastset);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5a0da64c7db3..46341367d250 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -242,19 +242,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_end);
>   	}
> -
> -	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> -	 */
> -	if (DISPLAY_VER(i915) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
>   }
>   
>   static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
