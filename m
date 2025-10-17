Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59B1BE83ED
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA5510EBB3;
	Fri, 17 Oct 2025 11:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="duj0heCx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D4810EBB3;
 Fri, 17 Oct 2025 11:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760699236; x=1792235236;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DCWxGe8+e3cG46uGX+fyNJGmCHVD51CJ0ZkzvtMlUmE=;
 b=duj0heCxToMhworJIuZCkJnNnGUbzt/PvfLkk6onR2CJo5+uwCtgV+pz
 fkoWtcMihvZ7tZUwq0lbAcWbMhbCmkyvM+n7uew/RSN/qcNKeexP8SCOr
 2vEQAMZ3l0woViQbzx1vM+9c+uJysDH21FsJiT9eroUNSH10qhgo0CZO1
 EPaeCdDDZh8UEt/mxl7CaC7msJEMoDnwOIF/PLKQqo+M2jbwFIA59b9P4
 mjYvwWoODQRsyOQ2c3/6lBrISUoHNzeXWHXMfNjjOf1ShHs6z5j02jKwC
 YZJKIYdJuiql8L4MPSF7mrtDkE//UdErW1mfXgRJYfLxQXUNFUeZZTlZu Q==;
X-CSE-ConnectionGUID: CHkBNrcRSKC+4x4nYVrcjQ==
X-CSE-MsgGUID: E7ya43GHTSWTJdx9TmZ0AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73578917"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="73578917"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:07:15 -0700
X-CSE-ConnectionGUID: AJI2ammAQge+YgB+jph2pg==
X-CSE-MsgGUID: jVPQE0AkTcyy6Kqm/lO80A==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:07:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:07:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 04:07:16 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:07:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KNsdZzO8T1wkRcwtnj/kTpBaClOh0TjKQohZ60+aNkOtSEnKFWodlPLHq8JXz1r7lt+IWSqh/EgGEQbV5zubHNO4OpBR26WsZDI7urP20GQz3RW8YIZlcPZE6B6vVvBFMekDqMGAZbcWNDv6Irn18Rp1+e42OIq10SOzkMyD3g0qE5zYHwdTcEn1Yx/4iKMLNccQ7ZSWHImPnuAfI0QQUUXq31GZ/o1NkfFLo0VhuHk7Oh5rApJi7YHiv7DUwM7BWjlWgxc8VmtZ4QW2vljt4nKJJA3xnMMZ3cYYiCITGhknqbfsn0VxK3LDTlViy4KNc7JJPcVs2A6fTZBURHJgYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1dZPTcD05yJHy2L95KdvXAIsLxDw4+mnYAlgiNS5W8Q=;
 b=JVvJAvwo1D664cqSzDarcsPag6BqOlSNNt+dnuh5fZyVhz2+qgXIsoSC8U+2sNgDrRx0+8+c5QFJ/isThJ2ZHGpSYZb+T6hkh/sCWcNcYdmJ14xRu9t5HWp97EJr1EKVTCVopOZhc/tdX6k9dpNwIMO2d0b0RT37eq6qsvaWiOhh28vuO7y1mXr0yQtoj2NDzKRfcqZBY3feLPhGLiAT7iemcK8kbyqw4zmRvH2U8GYsaDjMmtSJXMXqokgdGGvf0oC4sFU3nJQ1TsVAqTqdxM+bXH1IGcY5qv6gQS7LinE9agOuNyp7m4RN7WO4HpvMb7sCjdm7nZ5hHVkPq5LHTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPFD667CEBB6.namprd11.prod.outlook.com (2603:10b6:f:fc02::53) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 11:07:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 17 Oct 2025
 11:07:15 +0000
Message-ID: <5f813c0e-4bfc-4447-bd92-e88b7d4b176c@intel.com>
Date: Fri, 17 Oct 2025 16:37:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-3-ankit.k.nautiyal@intel.com>
 <ef18e6ca3eaa07953feda2cc8e7b9c53f7db6ab6.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ef18e6ca3eaa07953feda2cc8e7b9c53f7db6ab6.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0247.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPFD667CEBB6:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cdbaed2-993b-4450-974d-08de0d6d5406
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWpXRjVjVlQ5eE1SU3ZFTmVzaDJOV3duU2JRT3hvb3FFQTJZUmZsWHB1SzI0?=
 =?utf-8?B?amlaYmJVTjdGM0RCT0tsTytsM0xGZ0V4Ykw5Zm9xcFZaMllkTmJuMVRmNmo1?=
 =?utf-8?B?TkpJS2FMaE1CaGRHZEhQY3plNFFyaWY1WWhSUVRQS0VBNDE5Ym14aUREVEF2?=
 =?utf-8?B?Rm5XTU1CUjM3Yy9rU1BKUDNaRUQvb0lZdzNtM2h5NUprQ1hTQ2pZVHlYNnQr?=
 =?utf-8?B?cUJySytwRkpTWStUanhvSTdKcmE2WHVXQzVRK3Rva1BubTQ5Y0ZYZ0pGQWVF?=
 =?utf-8?B?RUN4L3ZIYlpaeWtLVTRENzNmVWc0Q2J5M0JZcUtXcU5TK1BacHQ1VU0zL0JC?=
 =?utf-8?B?YnNJZ3ZXK284akI5eUF1dnNqZzFlWUFxK295MFZhKy95dmlmY1hjeTFaOVNH?=
 =?utf-8?B?SzI4RlhBRHRicWs5WW1nRHpTWmFOOGY5OGtzcHpoVk1DeERvSFYzbnV5TjFO?=
 =?utf-8?B?WWZlSjFubjYyMEhCU1RxbTlhQ3UvY2d4bmx0RkowWkFoVHIyRTNmZU00U0NV?=
 =?utf-8?B?eGZ4S1RQSEtQR29BdWE4VVdNNE1KdGNMZmdWdll3dXUzQTAyNE5tVEw3S2hj?=
 =?utf-8?B?bVZRMkN1ZWRkVGRKRGVmNGJrZHVxQnFrV3Zob2JXb1lZV1FFTytGMWt4UHNI?=
 =?utf-8?B?aHlsemNkNG9EQjRSbEErM25HSlFBMW1nNE56OHhCZysxZm9hNFhVcFF4d055?=
 =?utf-8?B?ZXhyQWpiQWo0cVlwV2ZrUGNzaWFIMnpSWDZ6Q0ZLS0FwUmRQNmJpQ0Y2SlJ2?=
 =?utf-8?B?eVJYRjAvTjNhK09hTDZZMkdnUWtRNTNjenpBSEo2d0xCQXlrZXBkeHFjSm5V?=
 =?utf-8?B?c2V4NWYyMTZhd0xLTTB5TjBlT2ZQNmlJZHI2dXY3Z1ZaRUVUd2lvUzcyWWtS?=
 =?utf-8?B?d3dLS1ZObzlWMWY4U1JCTWpVdW1aa2V6TXc4Y0JKV3NnRUpUajVCZTFScTFG?=
 =?utf-8?B?VWNoT3psUGJjYm5yNGlHMnpjN1RlMmVRbHhMeUtleDg4SnEzcXppQzBNOVNQ?=
 =?utf-8?B?M2hhTG1hMGZEYm1kN0Q3aDhFUEhjRnJiWEpsTUtCT3hDMkQ0TjBUWkpGejU0?=
 =?utf-8?B?SnB0ZnlZMWxmU2gxR2I1QlhzSHVURUNVdmpHRVJVZUQvcFFnZG1tT0tHUUla?=
 =?utf-8?B?SVpiWDZKcFlhMEtNUGxiNkk5ZFRnVXl5MFJzYWFDNUduV0JYMlhENVhnQ0Y1?=
 =?utf-8?B?bS9NRGx0NktkU2Z4RXZXTXFRN1FOMEJJbXo1S3VPU2s0Nm55WHhMOEg0L2tT?=
 =?utf-8?B?TytPQklnMzZOUTcxODc2bW1EMU5mckcxNjBsZ1dhMnBEZjB4WlBiRTZTaW9J?=
 =?utf-8?B?Tk9xSmN5MlIzNXJhbGptMVRXY1l1UkF2L1NOM20zRy9LcHVJeUJJdnZyM1Ey?=
 =?utf-8?B?NnZNdVdHc1VwaUlUVEdPMGxIak5UT29zVkd5ZVMweHBZd1RhOEFjTTNCU1k3?=
 =?utf-8?B?bFRMRjdscnltV3EreWJ5ZzhNNDhVWS96Zko2cE5kejFoVGlLcjloQlB5SWE1?=
 =?utf-8?B?c1NneW90TjZIRE92VlcyQ3ZlRGdqR1puSWpJL1h3VFEwQ2RLYXI0TW9pVVBo?=
 =?utf-8?B?emJ4cEFYQ1RLVmM2dTg1QVVNb2pUR2dZYXZFZzhWU3RGZjZxdjJJaEcxeFRE?=
 =?utf-8?B?VU8yUnFFaXlLZXFpSXJOeW4xR1pOWjZ4WDdleXRzZVZQcUxNOVN1QU1Dbkpr?=
 =?utf-8?B?Wmc4SGtUVFVobkJlUEVSMG5pVTJnYWpQL3dTcHVRVDlMbnFvaUFITCt3bWFZ?=
 =?utf-8?B?RVlSRm5FUXdHRGs4Vk9VSmIxY3A3VXFYdUhWcDdsaVBzelZtMCtiUWZjTGtn?=
 =?utf-8?B?bnpKZEM0bVFXVndoSWtidzFoLzBuZ0NnNnFZYkJCNlJ6T0NpYTczbzhIaU43?=
 =?utf-8?B?anNFcFZPOFdLRnRQZUdFUzRTYjJDWFVSVkEyYTFhZXJ4T2FqRnJZdUxPQXRT?=
 =?utf-8?Q?9QKKTV0MfeMToIufvTlOITl4CjlgrY0k?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFducWdlNlRkUFlTSXVoL05CVktUb0g1VTU5d3dXblZtOUhvWVRUNytPbm16?=
 =?utf-8?B?OGFaUzdEZzllNzM5dzdvSEFwVFdwZVRGajliR2lFMlEzN0hzWTZqQ2VFTEhH?=
 =?utf-8?B?VW84Y0hCM0VQTEpRaEFaMlFnVjJSUjdSdTlpWUtZcGM2MGxDR21zd3lEY0w0?=
 =?utf-8?B?UEMwYS9icUt1clVodHBzM1ppN1N4NXNWK0JWZGtwU3Q5RkxYcmd3UEh2OGc0?=
 =?utf-8?B?anVoWmtEQXdIUFdqdWpEamlGSzZnazMrQW1pWEFIRFU0clpIUTd4aHJIZm1p?=
 =?utf-8?B?eXhsc1Q0RHpLUTBZT0cyenJVRy8yRVFtM3NvK2hPNVBualFYQzFqNWdOS09X?=
 =?utf-8?B?cUgyNyt2amhqVDlWdVpkRFArK1Jwd05uSFQzdE8wU2ZDL016Uzg5K2NrMHpm?=
 =?utf-8?B?SkpMSnBXQk9VTTJmRllhY1RrNHdjamhMcmpTLzdla1pNVFpMRnp2OFVqNk5R?=
 =?utf-8?B?WnJXUFNWQm50Y3BMSTJuME83NzJmSUl6djlJV3QrVW4wclRYZmwrUjF3Z09p?=
 =?utf-8?B?eWF3MjZFM0xPaXpQZWVPaGlJZERLZnVjYUUxMjVrd0g0alpBbnV0bFJhWkdx?=
 =?utf-8?B?M0NCbzdwbVNZUFNmVklGUXVBaDBzeEFocVlWelkzWFdhaGlObVByanF3SGF4?=
 =?utf-8?B?emJnMlp5WnIzRjlLRkJnTkRlcnZOYlFHZzJrYk5qOXBtWU1vUGtZZFRtTGVk?=
 =?utf-8?B?SEJHaUVlNE16L29yM2IrVU5GMEJSRFhuZU9aaklYL2ViQ0JOOU9HZFVNbTFB?=
 =?utf-8?B?MEpIUnB4QXQ4NG03MXZjcXZJNXJkQ0Y1djJ2b1pSNHdxU0JVSEdUaGx0Q21X?=
 =?utf-8?B?RVEyczg4Z3lMTHB6Z1ZYL2ZlWXVscWJUajNxeWtIN1dqNXpRR1h0dkhkVHpX?=
 =?utf-8?B?bXcyVWMxVG80eiswaWtIMGdUQmNLZWpRd1R1c1VjcFlqMUE1dThINTZKczd1?=
 =?utf-8?B?VVlDanRRRGxDYk9aVi8wMldpblpON3FYdWFhYlY5RExta2lpdG5ldzF0UFpT?=
 =?utf-8?B?d3JyWnRJRzRsU2c2dmdVOVJiRERjTXpIYTU2YXl4NDQrSVdlWm5TeEdUNVVt?=
 =?utf-8?B?UmhpM0xGbDZPQUtqU2w2RUpuU3FNWitXSXZHM3YyVjhjYWIyc0RXT1JrUC9r?=
 =?utf-8?B?NVhaSnpuUlZVcU1nYmtWb29GanpiSmxCQXM5Mkd6bmlySUw1YzUrU0dLeXk0?=
 =?utf-8?B?QUdrWEpZUFppdCtrWlU1UHl1eXNzTE5RQi9hRy9NQW15Z0Y3N0ZrRjV5bWVW?=
 =?utf-8?B?ZFlNYzVGQXY2TGViZVAvSzAyNGRGczZSeVVhRFJSNjUxSDlHNUhKS2QwVWdK?=
 =?utf-8?B?cTBSclE4Ry83SUp2bVFiQ3RubEJkT3F1RVVQQllGdWc3eU1DRm92VmUrdGJq?=
 =?utf-8?B?YnQvYW9ndGlFd2FhTVJ0MFh5QTlTMGRUZ3VZc01WSGdUdjR6OFV5cTFHME1s?=
 =?utf-8?B?RmYxZTlHeUE2TXdTa2JSUkVXaWx6QklpWC8rVFdSU2VBNHZJUHY5clYyY0o2?=
 =?utf-8?B?NytLYVdaU293dXc3Ymo3T1dQRnJvcHNTeUZYNE9ncERhMCtnL2grMktocG5p?=
 =?utf-8?B?UHQ4Lzd0UWRkRTdwa003Si9VMk9VdElSaE5VMWwvV1QzUndPM2MrUjlwNlRP?=
 =?utf-8?B?ZjRFdjJEOEgxbWF2WDlOWUhLdHZvSHBTOEtPcWhLL1FFMEpBTjZiSnpKSHhB?=
 =?utf-8?B?WXExZVJsMVRqVnJlR085MzZrNEpXV0owR3QzelVadlNMSjhRWmU1NDFLdU1o?=
 =?utf-8?B?b09zZ2t5QzlRazNqaFBZdzFiWW5EZUs0Z1huUzRJUHZGczhUQWlWUWZ6NEEx?=
 =?utf-8?B?R1NKNlZ6USt4T1dCUm96RWwvcmxQUkFteUx0S0VvVFE5NG11Y3F5ZmtEQW0z?=
 =?utf-8?B?UXNhdnI5bGIvTEgxU095bUt3cTA1cmduUzJUeTBHVjNaTm52dFQ3c1JjRndZ?=
 =?utf-8?B?NDBzOUIzV0lWeXkrV0plV0lDR2NNbFkrcEExOGF6cjVReDlYdG5pWVBvWm1B?=
 =?utf-8?B?bWdvdXlYTWR6Vk9mTXJnY1loSmc0alRnZzhZZGIvLzY2ZlorUUNLVnRMdzVv?=
 =?utf-8?B?enJNYnJxdHhuMm0zSzVpRit0ZlRsQkdWUFJMbzFzZ282NWIxcnNKS3R2QWZW?=
 =?utf-8?B?V3ZsVEpSQ1pjSW5SMnVyUWhIK2Mrb3dyZUxKcDBZK1lXRjI3Z1JJRmc3eXFK?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cdbaed2-993b-4450-974d-08de0d6d5406
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 11:07:14.9518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdMvgAXJbGIfXFQqe2VEzqWW76GgYWhPmUHEyKZtUr7TyJTKg7uD8QntkLcZY89XsBTohVPyjUrsvzGrPNHimQ+L6nNI0wOwAEKVvLccLDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFD667CEBB6
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


On 10/17/2025 4:20 PM, Hogander, Jouni wrote:
> On Fri, 2025-10-17 at 10:31 +0530, Ankit Nautiyal wrote:
>> Add a helper to compute vblank time needed for transmitting specific
>> DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is
>> based on line count per packet type.
>>
>> This will be used to ensure adequate guardband when features like
>> DSC/HDR
>> are enabled.
>>
>> Bspec: 70151
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 36
>> +++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
>>   2 files changed, 38 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 7059d55687cf..3f2c319e3d6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6990,3 +6990,39 @@ int intel_dp_compute_config_late(struct
>> intel_encoder *encoder,
>>   
>>   	return 0;
>>   }
>> +
>> +static
>> +int intel_dp_get_lines_for_sdp(u32 type)
>> +{
>> +	switch (type) {
>> +	case DP_SDP_VSC_EXT_VESA:
>> +	case DP_SDP_VSC_EXT_CEA:
>> +		return 10;
>> +	case HDMI_PACKET_TYPE_GAMUT_METADATA:
>> +		return 8;
>> +	case DP_SDP_PPS:
>> +		return 6;
> I found value 7 in the Bspec you are referring in commit message?

Hmm this indeed is 7, seems I misread the spec. Thanks for catching this!

Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>> +	default:
>> +		break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +int intel_dp_sdp_min_guardband(const struct intel_crtc_state
>> *crtc_state,
>> +			       bool assume_all_enabled)
>> +{
>> +	int sdp_guardband = 0;
>> +
>> +	if (assume_all_enabled ||
>> +	    crtc_state->infoframes.enable &
>> +	
>> intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
>> +		sdp_guardband = max(sdp_guardband,
>> +				
>> intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
>> +
>> +	if (assume_all_enabled ||
>> +	    crtc_state->dsc.compression_enable)
>> +		sdp_guardband = max(sdp_guardband,
>> intel_dp_get_lines_for_sdp(DP_SDP_PPS));
>> +
>> +	return sdp_guardband;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
>> b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 281ced3a3b39..7ee5aeb28fe2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -221,5 +221,7 @@ bool intel_dp_in_hdr_mode(const struct
>> drm_connector_state *conn_state);
>>   int intel_dp_compute_config_late(struct intel_encoder *encoder,
>>   				 struct intel_crtc_state
>> *crtc_state,
>>   				 struct drm_connector_state
>> *conn_state);
>> +int intel_dp_sdp_min_guardband(const struct intel_crtc_state
>> *crtc_state,
>> +			       bool assume_all_enabled);
>>   
>>   #endif /* __INTEL_DP_H__ */
