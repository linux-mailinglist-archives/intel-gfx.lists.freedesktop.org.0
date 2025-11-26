Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 348CFC8C33C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 23:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D6D10E680;
	Wed, 26 Nov 2025 22:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QY4asXIB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254F510E680
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 22:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764195902; x=1795731902;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aG4lWePukqYykkXGMMWXk35VD4YF7MuIUVIGWK4R+SQ=;
 b=QY4asXIBO2QZDVGYpUiuENBcoQmGOl9m5aE8qHUDerU9ltjqctXd77OR
 ArHof2BFDIYrmom86GTFk2AFPkEldC5JNGG2XM+wRtgr0Z25rHz7ChG14
 fxUBgkLSspkg/7YFmkoO6yg6FoEy+TGQ/WjhfhMqU/Sr+mkwjxuTt9Rxo
 hqqKLHPuaICJ51x3hY3fULDM2vV92rEL667rZ0FsnyFnN9PBfKxs0rLh6
 OXGjHbJQ56Gge3R7+R1wCix/LQl+/D1VtDE+Ur1nm+OKxEQDvZ+iwQyPu
 T1H9DiJig+hTyeUKXnuUl4XPnkd1dhvcDAfOZoj1+usgTHAOCYifrUo9t Q==;
X-CSE-ConnectionGUID: ieuiHB8+S6SRI7AdwJKLBQ==
X-CSE-MsgGUID: BIfhc4ydQ5qtd3JfM+uq2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="70109079"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="70109079"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 14:25:01 -0800
X-CSE-ConnectionGUID: Euuwv3YGQoKcTtnC5R4bdw==
X-CSE-MsgGUID: lfcAy0IlTSCGmPZcx58Dsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="193519327"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 14:25:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 14:25:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 14:25:00 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 14:24:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c5oqSSZEDXFBB1Gs1dlzLNu8h1qQnV8gQm6N58IOtsuYWEwoYL6J7lJ+1xi9QVIxOORrRlK4tZGzopT2vy+fkeKWpDKH2bHDYWkOHkHdwZrfhav3ZKJ99PIW1KbPLol8Peei+M8PRucJ64Ons+z3ubaq1q675rn504MGW9Xy0hRsfhxFtknBN3j4D0gRKmNgVfQvD4X90b8FhbdgKBKtXiR5Cg4kzHxytfTF06gpaSe46eM4KuF0dnT/TeR0DGNzQPsLyymySgLy5V7B2+95KgvBjcNguZODAzYoqF/d0GPhzXxJpuwQirhOOjUTlTd9vUujQplxX806kktcP5HlxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TFU7BJmAjdHN6QW3fX86gsiBxFplJvVeGM2ii30YO+k=;
 b=pYgDnrJVJbIzWBnJdIsKteeycd4hw9Cwo0qr06RjdtPRpASsludGNEuxysYkpCbZvqF4+1SJkUcrOaJOdWO1AnMnVmEVV+BeSeMsYZ3GK7d4ct+aE8hJ4NLPFo4adXbKsjUzxlemm5gkEYefXX/egXzMaS6zV1uNJfoJZn8BfedC2MKdmyLbuyCOxnpj8Ky48qKlBrgzf+J3K2kIt8SGUpEh9Uuhn+02Z0kAe1rlVft0M8NeowN0Jp5FFnQhNoxTyRAtVOy9BV98NnGcjE/XCtto1Mzb9oEWyZ5Gk6c7qIBwRNc19Jk9yXkpsTXaRF5DxTNxqY2DUq+UMJlJkVU2dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CH3PR11MB8209.namprd11.prod.outlook.com (2603:10b6:610:15d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 22:24:52 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%5]) with mapi id 15.20.9343.009; Wed, 26 Nov 2025
 22:24:52 +0000
Message-ID: <229f400b-989d-4457-96fb-9943148102e6@intel.com>
Date: Wed, 26 Nov 2025 14:24:49 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <gregkh@linuxfoundation.org>, Valentine Burley
 <valentine.burley@collabora.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
 <aae6c3f4466e0f52e4f1f482c14dba68d8d04c0e@intel.com>
 <37ad3dff-8383-4c40-b27d-2ed77dd788ec@intel.com>
 <bf58050d245ef0b4d8efe16594dc1364e426ed6a@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <bf58050d245ef0b4d8efe16594dc1364e426ed6a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0067.namprd02.prod.outlook.com
 (2603:10b6:a03:54::44) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CH3PR11MB8209:EE_
X-MS-Office365-Filtering-Correlation-Id: a8060460-4d1e-423d-8123-08de2d3a9e1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWtmTE85VzdzQzJLNGt3ek9FZVNOYUJsd0FaTkdKaG1McVNtVTVrY3NsZ3Jl?=
 =?utf-8?B?ZUNtR1Fkb0I5aE5TT0pFbXBOdnlzODdDcUN6enp6ZWErbFUyald1TEhSQkV1?=
 =?utf-8?B?djNDbExRM21qelZTTWU5L2VHM2QzSWNUbTJGNnFxUFVmY3NUbnoxUlZCSWs2?=
 =?utf-8?B?T1VaZ2RpMGZyZ3ZjV1NJWi9CLzhTcUVnRGc0Z2N5aUNvRDhaZEFMbGt4akRE?=
 =?utf-8?B?NWtTUTRJb2tPZElxNzRmbjhROVhPOWZxQmVIVGhnSXdEUVVFSVZvcWFqT3Nj?=
 =?utf-8?B?UkY4dlVSejRoREhOdUR5ZEZIbTZNVm1iYzJqWm1rbFBxMTRMTGFJMU51a1Zl?=
 =?utf-8?B?MEdIZlZlZHphTUloZ29aOEZUMC9GalJQUEhqOUVlMWxBZmJvZ1I0SDBwUDBj?=
 =?utf-8?B?K0l3ZllvYUl3aGxWVGxOSlU3U2N4NUZ4a0swTUF0RTlJKzJ0QnBva0dvV0hS?=
 =?utf-8?B?UUJBUjdseXBnWC9mRGs4NGVWQncrK1l5VDlGVm1IbXdJUW01ZGJUb3dCRjd5?=
 =?utf-8?B?S016WUJxOTRxZ2VLbGVENGQvU0I2d0VZeWNPRytaS2g3QWxjWEJ6K1FNUUQ5?=
 =?utf-8?B?R2V4Vk5IcWhRTXk1cm14NGVBcE8zbnU3T25xY0oyTlBDbUhEano0a3dRNDZz?=
 =?utf-8?B?enl4Ui9sUWxtUkI4ckUwVDVhbHd4TmRKeXVlUHV1UkZlTE9jaE5GVWZiYlA0?=
 =?utf-8?B?VHRoU2EvUE1PVWNGRExZaTJVbFRvTGhoejlvNDg1K0lzTkNPVzcrV2F2d1gr?=
 =?utf-8?B?Zi9TRWdkZHVaYVFZQVI4RTlmUjJlNTFubVBFMUNKTVRycmsyOG54UjB6eWEv?=
 =?utf-8?B?NFV6MjNhenUrM1pTVGc4VGkwZ1pud3pVdm5vTEIrV29ub0NQbzM2TzFSVnlL?=
 =?utf-8?B?c0RkMVNpR0VvNVNXdHJXazExbkdaVFdIZnFtNjRONEFlRk5ndUI4d0JVaGNv?=
 =?utf-8?B?NnFZT2x2QjFVQlZHUDhTeXp4aGNJaFVlQ0I4aCtXM1VMalNJOE95d25heEhE?=
 =?utf-8?B?eDV5bEdNREFodmN3NFZ4ODhhZ3RYbk92RmhpOUh2dS9TeUZvM2hDWUpqMmpv?=
 =?utf-8?B?RHdXd3Npdk1iZnBueWRiZUh2Ry9STnJCZVQ1QnhWWjVyQUZTUm5VN0c0SXNp?=
 =?utf-8?B?SzRxd1NnT2NFak1XMTNGRkNTMGxBNDIzeWpRaklWdEpJWlQxSlpSekJObGYz?=
 =?utf-8?B?QXFydVZGQklNL1Z3OWRrb2l2MTZUU3V5Z0pDQldxcEFJLzNRb2JaVGNic09w?=
 =?utf-8?B?N2o4c0VwV1I2N3VhVW4zWlJkWUtZeXNiSW5LMXRNcy9LRnBMNmdvdWNWYnBo?=
 =?utf-8?B?eWRrd1ZFa1p4aWIxck5GN25VOXR4KzBrbmJVd2FPTVlsNDdlL25pcmpKMEhz?=
 =?utf-8?B?TkJESG9PQnBuVStRc0krRituQkhSZ2cxdEM0UXN6RVJxb20xL0R4d0NmaDUw?=
 =?utf-8?B?OXRKaWQyQW8wcmZydnM3djBMaURvVnRsc2ZFVUdxc1g5SXNrL25Ec0pucERB?=
 =?utf-8?B?NGNoRWRQd3pBWmt0eUp4cndxUmdFOGxsQWpSS2QzNlJodFNQOTVLZ2ljQ0Q3?=
 =?utf-8?B?MG9hN21URmZlUHhJOU5kd0tOQ3lVZ2lZWVRicTExbjdhemlxaUp3OXlTREgr?=
 =?utf-8?B?Z0VxLzB1cU5nZHliVDNzb0FoYjZUN2NsZ1dZWlAzZHlGVEo0bWpBQ3NVT2VU?=
 =?utf-8?B?TWtIRGF4bldYWFhxbEN0U3NCc0N2UzZLbHFFbXJ4UFJmK3Q5eU5md2VnRGZE?=
 =?utf-8?B?MHhRUUVNVUhqVjJLdCtmbGN1U3pMZm1XdUI2U3ZkY2YvclNNV0RjeUI5OTBM?=
 =?utf-8?B?eStDMGwzWHFVSkpRNmtUV2hHd01zZUtoU2JhV2JBeVUxdi82M0Z2Ry9FMmF0?=
 =?utf-8?B?ZUd3SlllcmVuTTNQaXA5M094MFhjTzZvWjB6UWZxMU84aUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bm0renpaSGRvSUcyNHg0U2xPU0xFREw1S0VhZXV1NlphYytyU1k4U0ZCZVdY?=
 =?utf-8?B?ZUtJV2x2Y2RhWTk2ZlJPbGErbFExVGs5RVR0a2VJOUlNcTVMUFdFVTVHTzkr?=
 =?utf-8?B?R0xqNGFoeTZzZDc3VDhmVWxDV2YwQVdNVS9RendoZ1EwTnhzd0gvbDRZSkYv?=
 =?utf-8?B?UjNPaTZQZ2N3SFNHdUJuRzN1MHZlYzFIVFdqQm1wQmRWdXBSODNSVDd1eWwr?=
 =?utf-8?B?Y3BlTXFmSko5TUp5dHNFcU44dmNUYm51a0lxaTVMcXpENkFYTnRsZDR2UWVa?=
 =?utf-8?B?aEZQMkNqbW5SMVZBT1pjSU9UZWs5dkVLM0dYcHhEdGJSRWhLVFd4WmsyUFhH?=
 =?utf-8?B?bUdIRzVZS0dPVTBKcFFjNW90cTAzbHlYSTVOcEZGVUJSOHZoRVRXc0tqeDlJ?=
 =?utf-8?B?dWFLNzZremM1MFRYc3Y0RW9sRG9wR3AxeW5aNDdoMk9KMWI5TURGMXVYNDMv?=
 =?utf-8?B?TUpDSkdkTk1ZYVh4VWV1azhKMmlPbmE3UDB5SkVzL3JTak0vOVI0MXFidkpH?=
 =?utf-8?B?QWk0ZXRsdWhENHJqTVhzTlJ5MGJYdkV5NnRxeDhaeTNib2RoUThwbkdQMnNu?=
 =?utf-8?B?cVZWTEQzejJiNy8vRVJHRTFPNmo5VzFmcWxhM1N3U3JGcHlJVUpwclBCYTRR?=
 =?utf-8?B?WkMrVXMyUUlnNjN2V0V1ZU80RHZkZnhoSUVDTGdEc0NPdDRMWis1dlZhZGh3?=
 =?utf-8?B?ZytzUjkrYmJ2Y2JBUWI5MXdwcXY3RHZiZnVXZFRtTTJFK3F6RDVMV3BxSjQw?=
 =?utf-8?B?OG5lN01aTnUvd2l4bGJkVEd3WlBSSVRGaHNlR3pIRnk3UHc3UldKTHpuYjg3?=
 =?utf-8?B?RWFvVGhXZXVVRk5LRFZzSEV4ZGpQZ2ZLT1QwaVBZVlg1aTlIQnlaNWhsbDhJ?=
 =?utf-8?B?cDl3c3gvM3JHT2FlTzlxVHRkQ0NRVTEvRTRGcTFTUmZwRlpqME5jU3RLVmts?=
 =?utf-8?B?MHc3RDhNK1krdllSRmZsZGh2OEN4NnByQjBRRE1LcHpYUjdWeHI4Vk9lVlkz?=
 =?utf-8?B?Z3Awa3hWY25VVS9pbXQ0b0FxTWZxUEdXcTJTeW1IN1pGRWdkZFVFMGlEVzVj?=
 =?utf-8?B?eUlCbzIycTV1U1Z0blp4QmdmOHlhSUN3UDJ0eXRSSkZLY0FSOUZjS0xBaGlH?=
 =?utf-8?B?L0QvSjIvazR5b2l6dTJpcFl4TWlIUlVqZ3ErMEc1Wm5VU0I2Y0pITUNPWHVw?=
 =?utf-8?B?Y3Jmd0ZMaUhnYWxKUk1LZjNvZUZTdmtnejdpU0kyNWJyUjlsZFNwSGUzZXJM?=
 =?utf-8?B?MGcwR2VQU1RWbHpta0VjQkdHNkMxQkJiMFhLNnZPYW5RbGhHeDI4SkVJZlhG?=
 =?utf-8?B?bDJYeVZGMFVnNDFOZWdOUUtMYXNPa3VYZHl2bnczVkE0Vi9LVm81cFVZZFRQ?=
 =?utf-8?B?UkZObDhaUkFGdVovSDBJeE90cmF5YUpkWllaV1ZaSnhHVDBpWDdMYWc5Z0ln?=
 =?utf-8?B?Z0I1RnY1cG1TTWJzWG9iUzBaOXp2c1FGaVRiRFg2TDlxNndnSVhlVVp4L3hI?=
 =?utf-8?B?OGp6TEhvSUh0Qm1ZRXFobmpSSU02Z01qMmFEOEd1eFArRXRpWkxLSmp0U0RE?=
 =?utf-8?B?TjB1STloa1V4QVFGdTlQVWRkdGdiM1FJSWtiMll2SXpydHpmd0JYSTFqVmJj?=
 =?utf-8?B?TEp4QXdsSFJjSmFzOE5FWTZVZmNrcUtuMkU0U1hrTUVidGJOMFdBRXJlTVVP?=
 =?utf-8?B?UUpvR09RSTZDbGx5cHc1Y2ltOExjZ3ZUZThlTDhQekdZQlEwelpTejdRaW1l?=
 =?utf-8?B?dnQyZFh1Qmo0aE0rQTBRYjRHSjJ1ZG5abmZsWnhMWm02SGt0Zzg5NVhKWVNO?=
 =?utf-8?B?aDJEbkhGL3h2cWJic1VTL094WE12VEVMaE9rTkplWUlGbk1KZHNXdVQxQzhv?=
 =?utf-8?B?RzM4ajlMWXFTYk4zQUMwZVl1UVE1RDRmQ1phNXFPeThvb0JkUG8xaTZkYWZr?=
 =?utf-8?B?L3A4a3kzZ1F5RWIxdXdDdzBqalpkVFRYdkl4NDNCYjN4U1JkY3pFREZuS0Jy?=
 =?utf-8?B?TEFKMmd6UkgrR0V5RkRodVNjM3dqbmNBSnJ5Q0FXVjhJYkExVHg3VEJhM2Rn?=
 =?utf-8?B?WmljWTV3TU9SMUIwTHRVV2hIaHlZN0dSbGU5RlN4K2RFUk0rWXVXWVZsOU5T?=
 =?utf-8?B?VXhtMTE5aUJPWFU0dkdaa0U2MjFPQkxTeTZJRUFESXEwYXppVTU2ZzAwdGhy?=
 =?utf-8?Q?2lsvsrlYJnU0Y7FKSW9Q4TI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8060460-4d1e-423d-8123-08de2d3a9e1f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 22:24:52.0378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LGPulntYM8R28pLUPVhOEKVkt9fWHmOdpQEzQv2IdtHCStC45Vg5a0KcNObetzM5fz1fzCinEJ2V11SFgK94LctR6in2dKAAsL8x5dh3idc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8209
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



On 11/26/2025 1:31 AM, Jani Nikula wrote:
> On Tue, 25 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>> On 11/25/2025 2:28 AM, Jani Nikula wrote:
>>> On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>>>> The PXP flow requires us to communicate with CSME, which we do via a
>>>> mei component. Since the mei component binding is async and can take
>>>> a bit to complete, we don't wait for it during i915 load. If userspace
>>>> queries the state before the async binding is complete, we return an
>>>> "init in progress" state, with the expectation that it will eventually
>>>> transition to "init complete" if the CSME device is functional.
>>>>
>>>> Mesa CI is flashing a custom coreboot on their Chromebooks that hides
>>>> the CSME device, which means that we never transition to the "init
>>>> complete" state. While from an interface POV it is not incorrect to not
>>>> end up in "init complete" if the CSME is missing, we can mitigate the
>>>> impact of this by simply checking if the CSME device is available at
>>>> all before attempting to initialize PXP.
>>>>
>>>> v2: rebase on updated mei patch.
>>>> v3: rebase on exported pci id list.
>>>>
>>>> Reported-by: Valentine Burley <valentine.burley@collabora.com>
>>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
>>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
>>>>    1 file changed, 25 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> index 2860474ad2d0..26e7c5c26bac 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>>> @@ -3,6 +3,7 @@
>>>>     * Copyright(c) 2020 Intel Corporation.
>>>>     */
>>>>    
>>>> +#include <linux/mei_me.h>
>>>>    #include <linux/workqueue.h>
>>>>    
>>>>    #include <drm/drm_print.h>
>>>> @@ -197,6 +198,15 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
>>>>    	return NULL;
>>>>    }
>>>>    
>>>> +static bool mei_device_available(void)
>>>> +{
>>>> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
>>>> +	return pci_dev_present(mei_me_pci_tbl);
>>>> +#else
>>>> +	return false;
>>>> +#endif
>>>> +}
>>>> +
>>> I think it's just ugly to have this in i915. IMO the function belongs in
>>> mei.
>> That is what I had in v1 [1], but there were concerns from Greg about
>> the state changing after we check it and the relevant required locking
>> to avoid that. In i915 we don't care if the state changes after we check
>> it and therefore we don't need locking, so I moved the actual check to
>> i915 with an explanation (see comment in the code below).
> I'm not sure how it makes a difference where the check is.
>
> I just think the whole mei_device_available() function above is a bunch
> of mei implementation details that i915 should not have to know. i915
> shouldn't have to do any CONFIG_INTEL_MEI_ME stuff, i915 shouldn't have
> to know mei_me_pci_tbl or what it means.

I'm ok with moving this back to mei if Greg is ok with having it there 
without any locking (since I wouldn't even know what locking to add on 
the mei side in this scenario).
Greg, any feedback here?

Thanks,
Daniele

>
> BR,
> Jani.
>
>> [1]
>> https://patchwork.freedesktop.org/patch/664208/?series=151677&rev=1
>> Daniele
>>
>>> BR,
>>> Jani.
>>>
>>>>    int intel_pxp_init(struct drm_i915_private *i915)
>>>>    {
>>>>    	struct intel_gt *gt;
>>>> @@ -205,6 +215,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
>>>>    	if (intel_gt_is_wedged(to_gt(i915)))
>>>>    		return -ENOTCONN;
>>>>    
>>>> +	/*
>>>> +	 * iGPUs require CSME to be available to use PXP. Note that the
>>>> +	 * availability of CSME might change after we check, but we only support
>>>> +	 * PXP in the case where the CSME device is available from boot and
>>>> +	 * stays that way. If CSME was not initially available and appears later
>>>> +	 * we'll just continue without PXP, while if it was available and is
>>>> +	 * then removed we'll catch it via the component unbind callback and
>>>> +	 * handle it gracefully. Therefore, we don't require any locking around
>>>> +	 * the state checking.
>>>> +	 */
>>>> +	if (!IS_DGFX(i915) && !mei_device_available()) {
>>>> +		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
>>>> +		return -ENODEV;
>>>> +	}
>>>> +
>>>>    	/*
>>>>    	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
>>>>    	 * we still need it if PXP's backend tee transport is needed.

