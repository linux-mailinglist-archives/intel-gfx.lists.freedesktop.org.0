Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7142CCAC6F5
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 08:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFCB10E3B2;
	Mon,  8 Dec 2025 07:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UIHf0CLz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221B210E3B2;
 Mon,  8 Dec 2025 07:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765180550; x=1796716550;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=akKBgknOiQpgThWKwz1U/CEZ08aoTlVxCvKEC1Neoyk=;
 b=UIHf0CLzo05wiFgYadSMK3F5b9To2equNZVENP/s6Fl8/j6gZMXDAShQ
 xV6YsLmVcRz8b9o/rpKgAxLz3F/bV35X11wJ8vs+OlWa3dh0j7oFbipG+
 qogf7ZpI4agCDh/IC5XVmrbh1M6Wyfog2I+Ykau473Y9f0hiN3uaEBeAf
 Fb4NA3QN/ZNJK9A1WQr4xskonb9DwH4n1r+xDuSqQg2oBS0RqVdOEi/Z4
 qGpjpJz7gmx2inX/S+gg1EL1Q8W53B5T88yUEjUuNQPBgO4YmVtqtrQ/b
 eDLGKMlpuu79LF4Chu+P6/p7IKPrKYas8A5FnMLpomwVUXtmoT843An9X w==;
X-CSE-ConnectionGUID: hNHWvsPwTNam7Bw5LwD5bg==
X-CSE-MsgGUID: 8ySueAoNStmQreulLXv21g==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67012635"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="67012635"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2025 23:55:50 -0800
X-CSE-ConnectionGUID: +xKOkZl9QLGr6j2MZqF5MA==
X-CSE-MsgGUID: KHgrHVbxTwePu0LguarjJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="200314990"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2025 23:55:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 7 Dec 2025 23:55:49 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 7 Dec 2025 23:55:49 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 7 Dec 2025 23:55:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8v8wgMfWkb/814YpHa8D1uHCeugWmX9tHXr1Wt9U1HULesZeVSro5wq+kHH9WUHiD28K7sEQkS87o+yh/qiudLWQ092b392oaQkgYcszztTfi4V9u1WKnh3pvlqpSJBvjtZ47oxKqXDOzclQWQdbHolYsMOa4VSVJlVUXi9EL4lLKBAC/F4RD0cPt/s5lMO94F2LRVQy7g5FqWleR+zybBSScZrNBSRJ7GDQPJxYbiTqlDz4rZrqxW4Rbtcuc4t6U+G0VpBsLqKs11zr34HdS61Fx46XfmpLGyDvSqoy5Aac5JM41K9gqIFiQg0Ukq6MfCEIcHUhjKCYY91/yWlsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QpTx0j8UfcpA146eLDz4AQM8v4/n8T2/F0+DK3lOJDk=;
 b=hFNQkEKDAq8p8bb4X4QBy419bHwVVlufkKjAoTGpRDH8WgeZgfYkqpci/t1E6EUo92GfiJfuFJg8zH7PibDs/AryO+qbd/ebMrrslBbZXgl/4hV8IjXBkCU+x8r2UfnS3TtPTDDXZsE8bwdsvmHfX5COvC8fX19O5bySdwsMIzUX8QTZth5HlVnTk9zUphBQx3n1i4pk6F25RwOEE6caWU5USMVKzLW+UVJw5lsC9hIj5pmd61EsD/3TNpQgGMNpOReAXJRZCZRZyGxca6/8R45K1qXvdLu2FzpNi6RUipYrnQSEFJGQPV8xzOFTZisfyoPzAhfehtHU2Chak92+oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.13; Mon, 8 Dec
 2025 07:55:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 07:55:47 +0000
Date: Mon, 8 Dec 2025 07:55:35 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/cx0: Unify naming for C20 pll tables
Message-ID: <24kvwvg3jyfbczigietw5m4zap7oa65i6l5lutigbife5km7m5@o54p7h6sedyp>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251205115203.2526873-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251205115203.2526873-1-mika.kahola@intel.com>
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH0PR11MB8165:EE_
X-MS-Office365-Filtering-Correlation-Id: 0769fa2b-5f16-4525-79f8-08de362f3255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGdzVTVrcldkc243ZWJLZXdVQVdzekY5ZUE0ZWRUUFd6N0N3U3dBUERxYjM1?=
 =?utf-8?B?T2hhK3F6Z3pwazAwVmo2ZG1wU29TRnkzM2FJMjNycmZNWjZPdjRlOWltemZD?=
 =?utf-8?B?NnVmdWpGTU1BTENMZ3dFQU4yQUpDaGEzVkRjdHJ4eXRKdjQrVXZVRUhTZWtT?=
 =?utf-8?B?ZzgwaXNoMlZHVmgwQXNQUFlNV293T2FsUG4rd0lhclNaRjNTVFVteXNxckJW?=
 =?utf-8?B?c2RQKy82WWU2Qmw5UFQwMm96U3FQTko0M3NmU0lYVTJ2TnJ6Z0F3aWcvTnNB?=
 =?utf-8?B?bmtCWS95ejV2VVpDeCtPQlJiRWlIQ0FYYjlmR0wwTXBENmFMWGxZZld6NHow?=
 =?utf-8?B?MFVIZGV3MjJyeGNldkQrNjhOeVUzSmlreXBBVGpKajZQTXV0NHFYajY0V1F3?=
 =?utf-8?B?QWhWZlpWYnI2VjI2YVBwT2piQTY5enFUM0pHZExSbkV1dkY0Zmx2SlFFeVdw?=
 =?utf-8?B?b1g5MXpwaHhtYm51NGxiYUtGaS8rK2pRZDlrRzljMHg2VDUvOCtDcjBkRjBG?=
 =?utf-8?B?ZFNRUFE5RTFQKzUweGl6S1U0WktEdloxTFFPbnZSTkh1OUJQUjAvQkNNQWpL?=
 =?utf-8?B?VlBUeGp4Q0FLNnovZjFMTWZYdi95Skhib0c4M2NlREVvbzlxcEhpMkU2cEhP?=
 =?utf-8?B?bWdKVjRtLzd6Yzg5WTA3Ly9oRnRKYUwxWWhlZHZRSmZSTEVGSCtJdzAxb3lw?=
 =?utf-8?B?cFVJL0d3T1lWak5TOHpPcUQvaW81U09zZDNkK3ZWbnJKdHpza1JnY0FYeVho?=
 =?utf-8?B?dVRab0ZGZGlYMGd4QlJHL25aY25uYVBrREhjMS92MWNoL2ttaWhKS2hSMDhO?=
 =?utf-8?B?RWVFMUFHb29PNjVsZkdJcFRxSVZmNjYwdGJkVDFlbU93SlhXQmRlSTJES09r?=
 =?utf-8?B?cWhwcVJ6M0loaVRESzB1L3FObkEvaVgvQ09WNFdhaytBTERmNHgyTStzM1pW?=
 =?utf-8?B?ZVBLWFdyWGpoeVI2eW5xMDM1Y3FSOHU2ZDE5NDY4UlFrVysxazRlNGQ3ZGRr?=
 =?utf-8?B?cHIxS2dMV0hNb1hGMXJFNGNzUDRPOEJscUcxN01CMXkwTUVtRHNqcXpvY3ha?=
 =?utf-8?B?OWkrazBIejVyNnZNZDJHR3UxWGE1RWNXOWhGMnRuOUgxU3AwL25qcFRFV3hH?=
 =?utf-8?B?TldISHNOcmhsNDVMQXc5RHVFYnVjTkMxV0VOZTQyemhhZmlEV0MxVzZ0L1RS?=
 =?utf-8?B?SWpxODEvYzQyZHF4WVk3bXN6Q09EbGxmSURYbWxUc3dIMUtCYXdWS3B3ZS9G?=
 =?utf-8?B?YlhkanRDb2RCUDRma2pMcWNQQWE2WGhvbmVWVStaMW5ubGtYSTR2UWxvU3Qr?=
 =?utf-8?B?Z01zN2pPRVVTZnhKaGs3UjNyOTVoSVRwWDM2Z1N0eFg5RDhKU1RMVHlxczdE?=
 =?utf-8?B?SDE5T3lsZ2dCSDB1Y01XajFOT1RUYjlEMlgwM0xUTFh4RUY0L3RZRisrU3Fj?=
 =?utf-8?B?TTFaYVc4QkNmYldiZWdUK1hWT2dCV3pJYzkvcmNqTEtmSlEzWEQ4cVNRc3BX?=
 =?utf-8?B?Q1RWSnJJN3drR21Pd2NUUHU3OWpBUnowN3RyNWJvSm14eTZxeFpHQ0tlL0VN?=
 =?utf-8?B?Z0ZHRXpzN2FaaUJLRDVCd2dEYklydjF4bUxqY2dhelM0dUZpTWJLNDZrNEdU?=
 =?utf-8?B?dEFUa2NjNWtqTldia0dKend3dFI1ZkU1SnJteCtoRmk0WGhrN0V1WTdsa0ZK?=
 =?utf-8?B?bEJGczRReWJFT1lrRjFzQ3ZTSDZaU3AzQ0M4c3JKdm5BUzIrdFBoTkVHNVhr?=
 =?utf-8?B?Sy96bFFoejNEdzZpdkFuNXB3R3ZVaEhsbTJaNGNKZGxBejN4OWg5S0xhVitT?=
 =?utf-8?B?VHUrampMYzlWR3dYbE5HTVRSR1ZvM2llY05PazZKL1EwTG1neXJ5c3ZYUngw?=
 =?utf-8?B?U3lrN0ozVHVvNjFyU3FNQUxrTFdZQzYxQXQxK1ZEOEkyMEJXYm50a0hxVGJt?=
 =?utf-8?Q?SrYlNDYEn1YleAi3tu6W1LS3cKuEFMNB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFRaK3pqVjE2WkMydVEycEtoeHl6TCt6Skw0VS9OQ21NazFMaHgwM3lWRElj?=
 =?utf-8?B?cGdwaTdTdXUvcXAyL1UwRXlJcWE4Q1ZXaEhoOUFnbHhYNzNEc2ErSFdXUGE0?=
 =?utf-8?B?TnhsWmw4dWZDcUlDejNDeEtsWmNGbWw0QUE0amM5Y0ZHS1dMb0xxSFk5R0hk?=
 =?utf-8?B?YUtvZGNkUHM5dXBNSFJwVkRDdDNoY2hsWXJPcHRPemEzcHJ3aldVQjBob3lK?=
 =?utf-8?B?Yzh3aWEzd25oa2Z3TS96NUVSRUIwWWFLMzRUZnNxaDQwUHI4dDF5WVBUQ3FT?=
 =?utf-8?B?RTRIaDJrTXlsT2M4WlZJa2orRXBYRHh5VU10MGt0b2krYm1udnBoZkZDRU1E?=
 =?utf-8?B?UjdlSjhncVFhSDl4WWYwUzF5TExxYSt0MmM1UFFWdXZlZkd5VUQxcnBVUUg2?=
 =?utf-8?B?VldpR2psVks0UlVlOVE4aWZFVVFGdkhOTnZVRUx4VzlxN0RzZVd0SCt1VXd5?=
 =?utf-8?B?SjBBRk9UZy9kZldyQWp6U2cvbUVJWHlHY3B0ZThPbHlpNFVQbEduekNlWGFi?=
 =?utf-8?B?SnhPM0Myeld4S0VCaXg3ZGRIdHpydHdwb2tIazcxN0FqSlhMc1Jnc29xMFUw?=
 =?utf-8?B?VmQ1S3Z1L2RxVWhJVWZZak9vR1lOQnNzMmxWa2k4d3pSc1ByY043a2dvWkFQ?=
 =?utf-8?B?c2FUQTNVNXh4ZVluN0VGNG80Nkt1b3dxVlZ4REcwNEFRU2lId0llazI4SnVu?=
 =?utf-8?B?R0h4MVR3T2o0YllXelo4dFc2ZWJuRnJwaGNhTDQvMDlhZHN5UjRiU0tJMkR4?=
 =?utf-8?B?QzFqL1J2YVB2YkdXeDI4cS9KaENaYXF4YnNjTDZyYkVBYVVkZHk5Z09Ka1lk?=
 =?utf-8?B?TEU2MUJLSG5KWVhBd0VrWUZFb2lzU0NReWhqdksyVkZ5dzIwbnlUUmdjb2Z3?=
 =?utf-8?B?VkF6NHdmUjV4SFMwTFVPZTRuUHVxVnhXcFFSWTlEQjBNTFpUR0xBS2w3L0t1?=
 =?utf-8?B?UWw4MElsL3RxZW02a3crdTRMWWFvNSsycG8xRTBDdGN6bmc4ajhvTlhlK2sx?=
 =?utf-8?B?ZVo0a1ZRN1lEc1o0d05VUU5oYkxRcUc1cEJKZ2p1WUZpTmJHZlVCT1MrVk5t?=
 =?utf-8?B?VkhIbjRsZEZjTEJVQTFMWTRIMWl6dlpUSHFNMHVCakVNUXltc3ZZQTlqRzk0?=
 =?utf-8?B?R3kyZkpwUkRkQUNOQm0zVUlwTFJjaTRsdC9rTFZMU0MxQ3ZFQTdvM0JNdUpp?=
 =?utf-8?B?SURpQVp5dm92Smh3RjM5Yjd3bkhyTmFJaHRXVzIxL0tpYjBHMVdMMVZmMTdK?=
 =?utf-8?B?VmN4SVNJdzM2cXI4RWhDcEtObjhuTE5WNVZUMDNDRDVudTNEY1VoYWF4WWRL?=
 =?utf-8?B?aStxUTgyc0ZGcDg0K3I4WlVjUGF2UmY5ZEQzQmtaYmFRN3F5SUxiVHV0eSto?=
 =?utf-8?B?UnlaRFlkeU05anFhd3FDeloxdjFucHFSMTdwY3B1TUZFRmFIRkdXdnVlM2dF?=
 =?utf-8?B?eVU5SnZkNEsrOFNaVzUrL0VOM2Y2dyt4MTg3dEp1VjlQTXA2Q2k0S09UVERU?=
 =?utf-8?B?dmg4aGdhRkJ2dDliTjVMaG5wUVkvOWZZaHRmc0Vpc0c0MytFY0MxZGtHTmtR?=
 =?utf-8?B?SFZiL0xLZWUrWUtoekZkcTVpWENmam9ZUWh3N1ZtbVdabmxDMUx4cUxQdEFy?=
 =?utf-8?B?bC80WEVIOURxa3dvNnJTV0txQ1kxTWVOMy82dDErcDdNRVRMM3R2ajVZTzV2?=
 =?utf-8?B?ZE5kU0lId2VuY2hTeTJyV3hDcWRMNXRwRTVFblJFVVdCS1JDcW9FbnQxaUt5?=
 =?utf-8?B?WGZJak5vT1JMN0NvRGtyTnVwb3pYY3NjY1VrcE15WnF0NW0zTjNibC9Mdld2?=
 =?utf-8?B?U2Fvekc4VmRFWXFYdnduK2JIdHZ0dExWRkV3NlhYZFl1Z1YrN1ZjcGdGQ2Fn?=
 =?utf-8?B?RlhJU2kxYkM4VnhCUVlXNEFjVHBSOEZUeXJKVk5RSURQQU4yT1dPZ1VoU28y?=
 =?utf-8?B?aGFiS1Q2Z01NOTZhajVhdDlZYUlEbjVEQkhiVTVhUlVNNFREaWxxMC9kWEpN?=
 =?utf-8?B?WWNkOGpncG5jZDFFRHdWS1lNUm94L1JHNUJmNHUyZFl4MS9rZUg1REZNWTBJ?=
 =?utf-8?B?eTZoUmY3WU56b3BtUGh5bytIZ1Qxa2xvTFlFYW9oMWxGSkN2aUI3azczdU1h?=
 =?utf-8?B?WG9sUXVjSkJhaitnU1FBMmo2Z2ZZY0FIeDBCRDVLQitwS2gzMnNJUG13c29l?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0769fa2b-5f16-4525-79f8-08de362f3255
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 07:55:47.0561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 09ER7haupFfmlupu47xxCPEWjrYP6/FP1QWe/0vvaBj9KmB5h5Lvd4Bte17IcxnlZycPlJeyq7rfOYCOYzbWB08gKQFN28BS2BkXOY6yO1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
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

Hi,

nice job noticing the discrepancy in naming. I think to get the
naming issue fully resolved, you'd need to also include changes
to some other names in that file:

:~/kernel/drm-tip$ rg intel_c10_pll_
drivers/gpu/drm/i915/display/intel_cx0_phy.c
2288:static void intel_c10_pll_program(struct intel_display *display,
3261:           intel_c10_pll_program(display, encoder, &pll_state->c10);

:~/kernel/drm-tip$ rg intel_c20_pll_
drivers/gpu/drm/i915/display/intel_cx0_phy.c
2459:intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
2627:intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
2633:   tables = intel_c20_pll_tables_get(crtc_state, encoder);
2650:   table = intel_c20_pll_find_table(crtc_state, encoder);
2881:static void intel_c20_pll_program(struct intel_display *display,
3263:           intel_c20_pll_program(display, encoder, &pll_state->c20);

otherwise you'd be left with intel_c20pll_tables_get() and
intel_c20_pll_find_table(), so the names with *_c20_pll_* would
be mismatched.

On 2025-12-05 at 13:52:03 +0200, Mika Kahola wrote:
> To fetch pll divider tables a function name for C20
> is intel_c20_pll_tables_get() but for C10 the similar
> function is called intel_c10pll_tables_get(). Rename
> intel_c20_pll_tables_get() to intel_c20pll_tables_get()
> to be more consistent.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 27be2a490297..ef69e8762b90 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2456,8 +2456,8 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
>  }
>  
>  static const struct intel_c20pll_state * const *
> -intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
> -			 struct intel_encoder *encoder)
> +intel_c20pll_tables_get(const struct intel_crtc_state *crtc_state,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> @@ -2630,7 +2630,7 @@ intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
>  	const struct intel_c20pll_state * const *tables;
>  	int i;
>  
> -	tables = intel_c20_pll_tables_get(crtc_state, encoder);
> +	tables = intel_c20pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return NULL;
>  
> -- 
> 2.34.1
> 

-- 
Best Regards,
Krzysztof
