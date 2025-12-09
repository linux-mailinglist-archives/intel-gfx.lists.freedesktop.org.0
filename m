Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CD6CAF1AA
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 08:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11ED310E122;
	Tue,  9 Dec 2025 07:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h6ereJGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4FE310E122
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 07:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765264589; x=1796800589;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vVZkCMxGTZe/YoUNIhO+L1pX9I0SQXwHQk2iu8OufkI=;
 b=h6ereJGTdAx9q85yDqugzr+u4+so5KsqAS1z99H6igI1zxS0fAzSGj8k
 l6iC02JNts9gmepK0P8qQlFzob2iK9TMDYkSUnAuqWWYXSSnu+jsZVhXw
 oaWNe0z8MsR6EHEvfi4LTH51bMA4AZ0H1xOW1ZcpaEVw4U9wjaXRENt4e
 LioKqXZssyNAF8nRtHj7dQP5zatlwZduPkW4I/g2NUo9O2k8w6n4Xm8lw
 dnfhcipPJC3wG/+OMOofO5tckkHqWqeQGxmPTAO6q1O0TLwLTHyNVXXhu
 fS8ShrA9W6fkslPNbcfghfSAuohJuG6O1UZ9kPerHxqJT2ZKYgw1/7LFF Q==;
X-CSE-ConnectionGUID: FBmCSaBkQeynqSNnEloL+A==
X-CSE-MsgGUID: ZhVhglyvTE+k8uUkyI8+mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="89869490"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="89869490"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 23:16:28 -0800
X-CSE-ConnectionGUID: CBcrxJdTR1ill0sNDJtKgQ==
X-CSE-MsgGUID: QoiN3/gtQMKlBOTVY/JCEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200332875"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 23:16:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 23:16:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 23:16:26 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 23:16:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nIX7emeZfAGa0H6iqttQyIPwCZvvwlgdCz3DwRjRK2Gek560+K0dN4auPb6e80u0fxUsmJZZ6XYSKgpfN1wHqaUwDCKrtTa9iMvRQrj/4tIOEVW9YU/bW/wc5ZuF3ywg75E1sLNBf/dwB3eozpNLEjeZHgRiXhFwk6OpIKUqpK8HksErvLOIMnCQbWPNLRmsfZlF1f97fFb5LgW31VzzWkHOJcd/OQqaXcQi1sq+55J2PJi3yzR2G6nym63WZGLTAYVhpdkMI8kzP2BR3JZ6klVmJNZvLgfcwSNP88Z3KEZoatPdK5Np/KlIkPMaOrjDtPFPcfy4aptyvNjswyiY9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k+EGPTV/CwLXDaoo+I8WLo5ncgcQwN0v2nTIxH4fgAA=;
 b=eSK7VRaX5gHIAtHPACNi5i7NuqpxeiIfybhFr3auLAa58dBML6O1v/tv0VTArGGE/klOlNWimKzajG12kvBTy3gEZOVlyQqWwHk8Ft3sIzxHUtFQcyq0Ti9fQ1aPY7auVEKNJOpKCzEai/afyBXtLwYbX3iYIbgZCHN04z5JWguhAQaZ2Inpc+XWUcbd+JT/kyyHINnL4ouD6NMtYHjiOkc7rAsbRfpM14zWvUR5Zkb5sJcmupILx1YdoYw7quWkXw9nc25WtbtOx8o4fJFWEi6MtioImMf5EmbfmUq2LahIeouxk4YZWeGqJTaKEHmbQhLOfobPFZgGFiyDBXSZ7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ5PPF3D06B1BFF.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::822) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Tue, 9 Dec
 2025 07:16:22 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 07:16:22 +0000
Date: Tue, 9 Dec 2025 07:16:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sk Anirban <sk.anirban@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251209055616.1095495-2-sk.anirban@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251209055616.1095495-2-sk.anirban@intel.com>
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ5PPF3D06B1BFF:EE_
X-MS-Office365-Filtering-Correlation-Id: d8ea3a21-0e6a-4602-aebd-08de36f2db22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2xkT2tidnpXSzFvMWJZVFZtbmpzUUN5ZEdEbHVMMkE1eUZsTXNDVXc1MHZz?=
 =?utf-8?B?UWpNVEpnajI2b25FMHlENnhnVTlONkd4V05tcDI5WVR3bVVSRkplOGszbWpT?=
 =?utf-8?B?TjIwWS9PMDA3ZTIwSWgxMFRZK0ZESjhUKzg3UE9hcDZUV2x1RFZ6OVplb0lI?=
 =?utf-8?B?MkhzZ0s2SjRSSGwrS1BCT1A1YjJLZjdVZ3M5ZFNnQysvSVZZcmxKNEhrLzNV?=
 =?utf-8?B?SllMYmJHR1RHNWt5UWJMaUZJU0VIKzVneS9IM2p2NWxoMmdUMFUyWWgxMWo0?=
 =?utf-8?B?WGpBR01HUEhiOW1FVXVrOEpvZXVtUnJiVnpUSGpUMDRjT3YwWkdEQXhJaTVv?=
 =?utf-8?B?akwrV0FJdjFlY2NSVm9oZkZDSXFpVmk5VXlPZEVMYTd1K3cvcUcwMk15U2FV?=
 =?utf-8?B?U1VCR1JsNVlHUE5wTituVzNFUERRcThtZUZtdnlZT3g1YXJnOTFaMHNSY25p?=
 =?utf-8?B?TjhwU3kyb2VxRVhEWkxVams0eUlzYzZZSDhmckY4M0VOVFdHd0lRdTNkRzBK?=
 =?utf-8?B?TnFGNGw0N3p6czRuSGpyVXltV1BtYkM2eHZ3L0RJdFJqdDV1VXl6TTg2S3hm?=
 =?utf-8?B?cnJMRXl3SFFubTlWbzNoSDBwdUx3b1RycGRaU0YwOTR4dDNuWEd4NmxmNWRj?=
 =?utf-8?B?Zjd6ekgwWGJtNUtPaENKbk5NWjNmVjBiMzgyRE5RQ2Q2Zjk1QVBVbDNOc0Zr?=
 =?utf-8?B?SE1yYVJGZjFJcTlCMGM2MWtzUGNwRVQ2SkpjejJoNGtiY0x3QTFZMndqSUs4?=
 =?utf-8?B?cHBVaUF1b2lsVmppSFp2V0tUd1NFOFJLcmt3ZjZpS0FHNTZNczRXSVlJZnRF?=
 =?utf-8?B?WGtIT2g5cnNrQ1NOTFE2Q3MwVm1ycXBJeVNrUVhDZVpiNUJRdEowbENOT1hQ?=
 =?utf-8?B?U242ZGUvZjdnMy9JclllMlZQaURhRUpQQXJsK29CbTlZV1EzSjdsMWQ5RWV1?=
 =?utf-8?B?OHFVRWZzYndvRGVxM0pFRGNCRXlGVVdXVExXYmlrL3FIbEtsSHRqTis0ZVpG?=
 =?utf-8?B?YWUxUDFqVWpYcTg1ZFF0UERtYThoT2ZmOEw5T1ZhTXk4akRvVlRlU3lTckd5?=
 =?utf-8?B?NmV5ZlFaUXE0ei9TWmw0eFl0dHJwcUpjdXFDTlF3Y0NFbFdxc1lISW5QSWxR?=
 =?utf-8?B?SG04VnJsZ0xDSVQ4Vnd5cUgrazRNbHdEZ2dWWXY2TzNUUVFlcVNGcVN0aUpF?=
 =?utf-8?B?elArZW8wU3BmaytaZk9ZdENncS8rTGVHYjgrVkpyOFdVOTJjWWNnc3NYQm9V?=
 =?utf-8?B?SkdQQkZpTzZBZnlHRS9ncEszd0NVMG1OK3Z6eHNuZmRZRjV3K296bG9oTTNQ?=
 =?utf-8?B?UlBPU0VSaGNmWTVSN1RzQjNxS0wweUJvREFxUTJ3bnNmTTI2UWNUSEd1cHVl?=
 =?utf-8?B?ZlZFSnlqL055QTFEUC9QYVB2dGNaT1pxRE9LWTlOS2xza01hdG1zSnVYWGhY?=
 =?utf-8?B?YUhPSDFLQnQvbSszUGlsdjhvSDgrc2FNRVJOaUxUSTc3UjZDZHRXTlFrbU9p?=
 =?utf-8?B?bmhhcGJkTzJ4Q3hMNXpTSDlCRThCK0prSVF0ZGtXUnQvL0QrWXJLYWhXelFW?=
 =?utf-8?B?NXNBK01xRGR5L2txTmR5NzE3QUpaWkxhNm5JbFJJWXcvbTQ1ZWRPcTRkODNY?=
 =?utf-8?B?bGhtcW0yVEIyM0NBWFFobmRWV3FHamFsaTY5ZzVLR2hEeVp4M2pPbWFZelox?=
 =?utf-8?B?K2N5VDVqVTV4YjMxemZlMjZMRnlXZHZnaXhLRTQwM2JsOW1wR0h1VlZ4OHE5?=
 =?utf-8?B?QWRrcjlGT3F4OEFwaVZYWTFneEMzdEtIcWNITGtQNnZQc1JkbVdMcWpOUGpm?=
 =?utf-8?B?aEdxc3lKWGdZY21ORDhaV0pJZEltbDlEc2VvK0pld3pkRGRWM1ZQL280aHE0?=
 =?utf-8?B?aWN4NjdsYklEVWJ0RXVPR3FPMVA5S2ppck9NRkxYZktYMmgzSlVzdXBtYXBk?=
 =?utf-8?Q?zgMIcuCW/YjUMpZKhk4CHNVn0/UXKn3j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVRIc0dmeHZhWnlPT1pkRloxYjU0L0JvY1RPbGZxN2k1cVdMTGVFSFZ2NWRO?=
 =?utf-8?B?YjVQSjlKQm1ISjd0WVM3KzR4SmVKU0ZMQ1p1T2d5TFp0bG4rQjlLa3ZWRXpG?=
 =?utf-8?B?cmUvSHA3Ymx1NlhpaHpRWlhjM2hKNHkvQlE3cWlLQjZOMHdTOFJOL0x3VWpT?=
 =?utf-8?B?bEJEdElwOTFpeis1NTgvcUc2RERvSjFweXNOelhSY0QwbklveE9rMnBkR1gw?=
 =?utf-8?B?SXVrYit4a3dHZzRxU0szQmRYWDRVWHlWQ1UxTU5kSFU1QUpYZGNwRU91OG5B?=
 =?utf-8?B?YVBuYU1vaExFekcvODNtTSsxWWZRV1pNc2YxV0NIcmZqTGtJV3BpK2NFcGhS?=
 =?utf-8?B?VVZlUmJ3VFREQ2lUNTdrRzByU1A3a09rWWszRngxck0wdVMvc2wwUGR1WnYz?=
 =?utf-8?B?WklmUkFiVW5DRlF2MFBTS29vR0twVXBEQ2loZXNVenlqT2JiR3pkYzJQcWRS?=
 =?utf-8?B?eTgvN01TT0tOY2UxUEFtNEtFV0JRNFFXQlVVZVBHQ0tJNWwwcGNVcEFwWHdN?=
 =?utf-8?B?cDIwcStLS3NIRFZNNks5UFExT0EwUm02WDBIMVQvaGNxcHVZNE84azZaRU9h?=
 =?utf-8?B?WUM1QXZVL0ZSckhIdnZIVVlXM0JvMWpqS21lcFIxRTh4SFgvQlBybHF3RmFu?=
 =?utf-8?B?Y2xrSGlNS3k2UW5IYjRLcTU2RlZ0UEVzU1QvOW9DbSt5cWM4OXh5ZDB0Rzli?=
 =?utf-8?B?TDlDT2tiSmxyM0p6V2c1SmJ5TkVjRkNINWZoK2g1SS9KempPdzg4TGV5N0Nn?=
 =?utf-8?B?SnVMa2tQcTNzVEQrNytHMUtrY0FmNHlBcTg1aDViM1FabmMwbjBZWmtjc2dj?=
 =?utf-8?B?MDdQd2h5L3I5OCtEbU4xZkRiK3ZTNHJLUVRBRFY4aDhIOEcvbmhsMUNrYlNC?=
 =?utf-8?B?TmJPeUZQMVR4QitZUy84RlZETE80c0VlcWs3VGFFZE1hWFlYSGRuQXZ6R3lS?=
 =?utf-8?B?YVZJbGVzSlprdHlJdExibXh6NE9nZmNBaGptWUhkS3lpLzBxaUw0YmI0QmQv?=
 =?utf-8?B?YUVPcTBNMkwvU3hSclFacE9MSFAyQjFIYTZFY1g4R0hOV1lMWkoxY2xJUUEr?=
 =?utf-8?B?Z2dibTh1aEIyenZXd01FWlNYb3UzbXpPTXF1SjZ4THB5S1NGTW1mOVdrdGxS?=
 =?utf-8?B?eFFjTk1LQmc0SHZsUk90Q0JRb3dTUHdZTVBHN0plbmtEVzlQcjIyTEd2bEMz?=
 =?utf-8?B?WkJJSWdhMFhoTFlvTm5hNllnSnBJY0hRdXlySm5Nb0NGR2lJdVNUTU1xUmtz?=
 =?utf-8?B?dG5jc1BPRy9vVnNNSGFJN1kxQitVb1htRTBYdEJMWnhPc0VyTktkNHhhNG5j?=
 =?utf-8?B?WnJXbzZud05GcGY3LzBnMTFGamphb1Bha0psZmg3ZEY5K2wvWDRtQ0s3UVhq?=
 =?utf-8?B?VExuV3k1dllxNzU1bUs1d29iRGlXMEs4V2RZTTlRRk5OMzN1ZFhwb2t6VEdm?=
 =?utf-8?B?R204UWZEWlc0Y3czRUU0ZjNSNTVnM1pUbnBLaFR3RXZHZmxIOGFtejQ5cmhl?=
 =?utf-8?B?d2c1dSt0UFRNUnNETDMrcmtsMDRwSUhxT3ROWjdEd0FIdTFsM3kvaTlqRk1Y?=
 =?utf-8?B?dzFnQi9WRlcxYVI5aUdKYm1sMUxuYWxvT3NQTk1MQUQzVnBsbFJjbVpucEMx?=
 =?utf-8?B?LzhIY0JZdm1NbmdGWFRGbE5ESFJJeU1peTBHS3A4L0xiNExQQlRvL3A0Y1ls?=
 =?utf-8?B?ZlFkdDJBamhUd2NGdGxBUXlJOU5HY0xQWUlSV2lqS0YwenZDb1dhc281bFdy?=
 =?utf-8?B?Y1cwMkhXZVZ1OGlxcFFyVk5HbWJibnE5OERVM3pDSEZjMzlIalBXOFloMTRh?=
 =?utf-8?B?TUZ4NDMvL2x2c25Mc3QzNGpvRHoxYUZTM1dyZDVJOHZSWkhKSEhlN2lYU0xP?=
 =?utf-8?B?eDNCSHR0anllMXZjL0E5dGx4Vy9WV1NZUTJqZHB4MWdMaHpyaEJDS3V0OEVj?=
 =?utf-8?B?dUJ3d0FKSk1oaExKTVdmOFlrZzVubjFJRThnbnN3TXpOYXFzazk0Qk5jWHNG?=
 =?utf-8?B?ZzA1WFN4L3dzb2ltbUowT3Q4ODFvRlMvQktnbXlNMnpxT2JYMEZ5bEtWdVNQ?=
 =?utf-8?B?dXhFcTI2VHlINWFHVE5SSElKN2xUQXJjRjIvb1V6czl0NWFXN2E4TkVKRThN?=
 =?utf-8?B?R0oyRXJpcEVNcVdxbnE5Q3VDWTE3NUVjWStSbkFMcHZDc2dES052WDAxQmFQ?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ea3a21-0e6a-4602-aebd-08de36f2db22
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 07:16:22.2513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fAnVR1/lrfd3H/0Sq4Tsj1qndi236HD00v+MSPUIwOX5a07mA4wb5SUvlU70plTU9pViw8exbmq+ij47SIqpMh9GDR9z+Z+p4pKHTxnJ018=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF3D06B1BFF
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

Hi Sk Anirban,

On 2025-12-09 at 11:26:17 +0530, Sk Anirban wrote:
> Report GPU throttle reasons when RPS tests fail to reach expected
> frequencies or power levels.
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 73bc91c6ea07..01c671e00e61 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  	struct igt_spinner spin;
> +	u32 throttle;
>  	int err = 0;
>  
>  	/*
> @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
>  		if (11 * min.power > 10 * max.power) {
>  			pr_err("%s: did not conserve power when setting lower frequency!\n",
>  			       engine->name);
> +
> +			throttle = intel_uncore_read(gt->uncore,
> +						     intel_gt_perf_limit_reasons_reg(gt));
> +
> +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> +
This feels like spamming the system messages. We are on error
path already and exiting with -EINVAL, so printing an
unconditional warning here is excessive, I think.

[...]

-- 
Best Regards,
Krzysztof
