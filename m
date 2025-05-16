Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A073AB9782
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 10:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5789710E29A;
	Fri, 16 May 2025 08:26:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5ECSDss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6B910E153;
 Fri, 16 May 2025 08:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747384012; x=1778920012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yIy5zUDfFaWf2BJQvR6fUbSTYLXHl3rIA7OL94BDBRA=;
 b=X5ECSDssB0hP+YTjEF5OgpbRWpiXpeiU7s3esqtxJiz/UmW8jXxi6+bJ
 mRUin4lIIYsoVC+ev/Wd0PKxQTDxyXLZBT/K+K5eKzamHS58CrciXbmAl
 C2WsE+16glSj7rU90K2qkHMIMMZ/eBwUbXaKRP3sr4oDu8TKK0R2JrPCF
 wg/58NlX25smDwUmZJo1Q9kjMsaeAPC2mFpcgaaZglGf98+n8khezK9Fu
 6jzi5rXbBP+eD7HZgFP6VcDiHCiB4yMTMID/DvyHLSN8ezYg3pRVcgStU
 AqxjVh3Pxv2q3xrMrb8h87MuciQRurWJelwQVgqsWFJIRjT7xQn4ksOXo Q==;
X-CSE-ConnectionGUID: fQLTOF1rRmaGGh7fn3VcwQ==
X-CSE-MsgGUID: glf9vSgvQSeUcXHzlRmO5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49042954"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49042954"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:26:51 -0700
X-CSE-ConnectionGUID: uINadHraTwSr0/rggFJKfA==
X-CSE-MsgGUID: qqaNx4ZST/GJ64QAiYSziw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143514828"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:26:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 01:26:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 01:26:50 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 01:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=whly6TEfYmD3eW9FYxRND7R2HD1EWhQW/VyyyLzgkvVFZB0tUOCiKmKE9Ou1iV20KZAN0WXxFNMe3zIsK/t3keS1pNeGR4G69hosjUyZWcWHKtmcqFkzQolizbZ3avagv7gOObja3nDq5+TqO8oNOGk0eGCU0NHidXeztPkJlnzjrPDKEFTgGoNpKZIvbas00KB4YiEMntn4ybu5fXkS2ypPGz6k8Xru1GqcHfFSobQZQmdaHJ3Rol7jVUJAMpJ6HXOUA7k1FFuvHLJ1egjQVL0mzeUNcwZByiQNzY49XHYdLTDrno624jcE6caCWjJSjJdaJX1rJZVqG6vfA9SmIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yIy5zUDfFaWf2BJQvR6fUbSTYLXHl3rIA7OL94BDBRA=;
 b=RQrcWMaxy+R5dy2KxKarKihy+y4Ww8UH5Jmsim6l9QcBLk/sRXgg4YhCuyc0yQQhM1DATzP2j2qCIR6gihGHAlRATH4lViNRBfDUmq7vy7tQFr49o32dZX6MkJtD6MU/2rGcBcmRaYYXa2pQcK2SV2W6pMLK/cRKFXtVwuftXoRlhMUlzB4cF2LbbNlanLoJYE2xZXa1+hk6Y3hEtiyZEBg+kjy4K01EiYT53nLVADQrVNZvOKTELjSKHXGJKQwdVPa5hvUNJFuO45gebQBWFTyJAq8HF0QeHr0kmz2Xrb0nMdUDlSXJAXqlqrSZo2mrosusB5jRodXW5JgLam4yQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Fri, 16 May
 2025 08:26:20 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Fri, 16 May 2025
 08:26:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 14/14] drm/i915/dpll: Rename intel_update_active_dpll
Thread-Topic: [PATCH 14/14] drm/i915/dpll: Rename intel_update_active_dpll
Thread-Index: AQHbxWmp4CCBDnuakUCN0tYDlybso7PU7Wmg
Date: Fri, 16 May 2025 08:26:20 +0000
Message-ID: <MW4PR11MB7054D7B38CCD711B9A4CFEE6EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
 <20250515071801.2221120-15-suraj.kandpal@intel.com>
In-Reply-To: <20250515071801.2221120-15-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6097:EE_
x-ms-office365-filtering-correlation-id: b255921e-3d45-470b-a1e0-08dd94535653
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cXlHUjhHTHNRVzdXdk5ibTFaNzlLNWtYVk5ISWM5VWp0T2ZxVmJrWkFSZWxu?=
 =?utf-8?B?cDhINlN6dDVSN2pUWXBTcUhDYlByVE9Pb2hINFFBamJ4YnZ2dXFBcElVSnBQ?=
 =?utf-8?B?RjR5NzJJdG0rTVlvc0kySUNCTkJtcWxJbUdrWVNFN290RTMzekhsajQ5Wlhk?=
 =?utf-8?B?bUhFYzhvMHN0WkxCWkZEbFB2OTRuYzhOWDd2citVYmVVTlVrZEtIUmNReGln?=
 =?utf-8?B?ZjgvSlI4NGVKSlhsTnNEa2R6WHljSW4rWk1KSUxqY2N6ZFFRVDM5azEyaXc4?=
 =?utf-8?B?WWF4dVc2TWZxZW5zYkF0M29aUmlrdkdTRFVHTElIa2E3YmxMSDRCcGVvQURH?=
 =?utf-8?B?TTJyUEhCRmsrQmJpNjZLdHRuTVNFcnNwQmtYVk5samRMWnIzL2JUNW5ZQmU2?=
 =?utf-8?B?QkI3bCtNTE5VTnMwSWQrbXpwcmUzckc3OVg4SEl1allRdGVmTmZTN1VNK2ov?=
 =?utf-8?B?dDFVU0N3Rnhqbmw1dzBMZGlBVnR6ZnJLSGYycEhTOFpoZHJHcjJGOG9QSjZK?=
 =?utf-8?B?WENMT0RVWjZSTHhJL3RxYzZmRjhyaDdCQ1lLV0NkS3FJSXVDU2FVTHRBTVVz?=
 =?utf-8?B?d0pnMUJxS1dQb2NPOVI3Vzc4OC9TWUlhbktGd1NLd29WRDJ4NG40TlI5YVd3?=
 =?utf-8?B?cVp1Rm80U0hzM2psNWppcWR3TWgyemRsTC9uRHgvWjM4bDhQNHZ4b0JrdVY1?=
 =?utf-8?B?UHpwYnp5OTA4UlVIMWxEb2J0RFRjSGVrRTBpZ1pRMzkwck9NMDAyZnAwVzlY?=
 =?utf-8?B?b0JxZi9najJsdjVJQWpERCtPMEQ1UWRQMTdCRjVCYXlMTGFXVlZWQUVkYWw2?=
 =?utf-8?B?NG5TZnFMa1hMWFVBakNjeHlZK3hVcGhqbDQvQ1dhWUZlYlRER1pMQk5tcWVS?=
 =?utf-8?B?djA2a1o1RlB1Tm12dFVyOHZiNXcxU0xBRWVyTHFEOEVxeUYrRlQrMEI5R05N?=
 =?utf-8?B?STdZYk5SOE9zcGFza0lVV2tFVUd2bnI4QWgxMUpOSS9STEt4bUdUL0lJbW52?=
 =?utf-8?B?Um16ekhMdlFBQUhnTTVvM0FNbkY5WFQybVJwQnY2allGZXFDcWJjRm5FVUdT?=
 =?utf-8?B?U2xidExVeFBhQno4cml4eXVqU3dNaEpiTWszTkVSVUhxZXVtRWpXMnkvcUN3?=
 =?utf-8?B?b2ZYK2lnNUl2OTVKYW1jU1dZMTdOSGpEWHZnOGFyOVIwYWRycFRvN1ROUE9F?=
 =?utf-8?B?QTIvS3pXc2hJYXpkSCtGam5pd1ZaVUd6VXJDbnpNcGM4dW15Y2dGTXR5eTZn?=
 =?utf-8?B?N1JzcTVWQUYxTk5NQ1pnWG1EWXdxWXpLemNsR1Q3a0NGMjZnN0pUTUZXUEZB?=
 =?utf-8?B?Q29PZDBWcmF0RUZQNTVWbXNTbHhDUVNRTmdCUWpTQ3V1VERSS3A5dEVFQjRs?=
 =?utf-8?B?RFdza212OW9oWGU2YTBqN1U1TGJVQW8vbUlmWjNhT0tYMDZTamV3VWs5VVBm?=
 =?utf-8?B?cFVZM1VtQnNIaUJBUCsrcHJRK1YzWTA5bGlSWXhrNC8yUUZvaVlRbmYyaXVJ?=
 =?utf-8?B?ak02NFhNcGw3R0ZJd0lKMEFvVDVZTFJtSytEbXFTcE1oY0FKdjZYZnkxWVg1?=
 =?utf-8?B?YmM0Njg5cmJxaHpJNE5HeFVqMGlkZmhzUTBLc29TMkZKN2Y3RC8wMzJ5akZn?=
 =?utf-8?B?NFRHOEpxZVNob3cwcG9HV1BKL0JnNFRiRVgxWXFyMWVKVE9qVWtxMzMzSWdV?=
 =?utf-8?B?b2RFQWhicEJPRnUwRDQ0d3BqSlVXRkdIR0E1Wm11ZkptNEM2WXZ3bFU0d1Az?=
 =?utf-8?B?ZmxHdG80RklGa3JVYU4rRjB1dzJYTFRzejlEZ3kvQnR6cWk4RmJxRksxbWVV?=
 =?utf-8?B?SXVORm1jcW5kbk9yRnV6SHlmQjJTUENvYjFvNzZSTHNmNUo4VzlVVEpmVW1E?=
 =?utf-8?B?WlNzdVpBMFE1VzVaYXJPUVBpTU9TQW05UXRmSWFlcGlmNnR4enV4K0Q1alRP?=
 =?utf-8?B?aUF1Y0R3Y243MUJ4OFB4TXpKTnFrVVpTdDFpbzAvNVBOTHBKZ3lJMG03VzRO?=
 =?utf-8?B?RVpwS20vZE93PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFdqWi92amUxaEdrRVZRcFRyczNUakYzRHZuNFpvM0JHa3gzVE9QcGZvVFVt?=
 =?utf-8?B?QjV0K0RHcUtjL2YvSkRNakRSanExay9na01HeXJicnpwU0dxMVlHZUg5TnpJ?=
 =?utf-8?B?aktKVVZoVTdnNEIrWFlrRFpWTnMvV1JJaDkyQVZIeHdTdk5uUkl2czB1NWJ0?=
 =?utf-8?B?QlNkQ3hSVHpOWEg3V0Z5SjBoQWNkZnlicVl4WHBNRndGdmxENlFJUWozWm5W?=
 =?utf-8?B?dVV1dW90T1VCbVB2MXJLb24zN00xbDF4T3JOaVBHK3NBYWpsd3lXTUk5T2pk?=
 =?utf-8?B?Y1VTQ2pVeEwyTVdGK1ZObnR0eEx1L3UvTFR5bmx1QnhvU2diY01OWEU5MEFv?=
 =?utf-8?B?OGJ0VzBhWUFOUElGc0xHMi9wa0RkbzJnSG16UGhmdVA4Nll5S1N1WWQ0S1l2?=
 =?utf-8?B?Y1l3QlVFcW5aUmdFbFhNMWZWUjczdTlWUkNwakFiR2R5cXFKNVp6bzFLN0xh?=
 =?utf-8?B?Q1pWVFAvNlh2c25qVlB0ekVaQ2dzdjBmdlYwQVkvclFpZWlweEZEM1hoczJK?=
 =?utf-8?B?UFd0V3lnUDVMN0VKUXNGaWh5cEZ4VDc5RDRaVDk5SERzTGdVVGNHZ3JnalI4?=
 =?utf-8?B?RU5yYlk2UXhUME9COU9xdEhjL1o4cE1laXJDQWtsOU1yMG13Uk9QNEl2R2dK?=
 =?utf-8?B?bitXdGZHTGNOTzV1a2loaS9POGh6YmJGOXk0dlZYenZJSWZxanNrNVJWMXBX?=
 =?utf-8?B?clFET0xzVjhTK3hQU25JUStqMkF1SDNHWEhBNXhmUmN4bnZzTFFOUHp2Q0FM?=
 =?utf-8?B?SW8wcUlJQVExMzViNlpZYXlhUlM2L1pmQTVTYTJxQnNySWQwOW5kSktKQ0lU?=
 =?utf-8?B?OTVBL1VQTmEyakRnWDRzTVdkd3gyWldMMlNkZ1Buakl4S1VGdjltMGphNUQx?=
 =?utf-8?B?MzNmYzFsaDBhU3JRSzQzam9GM3lYQ3FnU3YrNlhmV3pqSE5zeEg2Wmw1MzUw?=
 =?utf-8?B?c3FTMjltcjZCcURjcElHN3dBQjhVSm13SWgydnlXMDZqVmFyZlYxYTBCUlFj?=
 =?utf-8?B?MDI2dVBISC95akZqODd5bUFWeXBjSmJJblAwRktyK3dDcHN0MytaSGRGcDNi?=
 =?utf-8?B?NDhuT1Fqa1AwNlNhM3dWbm4ybGxGcUdLM0FpdndjdGhORjJtZlRkTFFpVFhs?=
 =?utf-8?B?dlZVUzl1cXFRVHlXeitaUWE3TjA0alhudEFkM1l6QksyY3I4SVYrOFErcGdZ?=
 =?utf-8?B?Mjc2M1k2Ni9mUnFJUjlQSnpQcnF3MjVCTUMyZ3ZTa3labktxOTVodEczVS8v?=
 =?utf-8?B?NExHakJtM2Zua2dQSnEvKzlTWWcxYmFmcjVrMXB0NExhSmdiSmZsam9mSERL?=
 =?utf-8?B?QUxxK0hzc1hPTUxTRVloL0d2SnlydDM5UzhPZHBvNkNkaTltQk9Gc1E4S00x?=
 =?utf-8?B?aHJCaS80Y2J1am94YVhRUjUxU1I1VEI5Ynp2aXRHWlpNV1VydEk4Vk5KNmRY?=
 =?utf-8?B?YndGbU1hNlFYQnIrQWxkSkpXSi8xT1JQSmQrRTdVbzBhY25wRnl1bGN0MFBk?=
 =?utf-8?B?QU4xaDFYSzRTREJ5ajJiVFBWaHdvTG9udHlpL0l4TWEwTHMyTmVtb2d4OTM4?=
 =?utf-8?B?VkR6TFRhMkNWTUcxd3ExMjQ3cTZCQ3BQZEEydUFscnFMOUJRa3daVy95Zlkv?=
 =?utf-8?B?bjJKSGtzb3N3SzhnQ1JjQjh6T2hna2dCMFMwanBNUHhFaWRrbno2RmRtckdS?=
 =?utf-8?B?VThJMHB3QWtSd1hyL0x0Q1ZvYXUyVEJ5UWZPY05mek9BeHc1cThWM0FYZEZH?=
 =?utf-8?B?czhyR1JJMURCb2hjRmltOHJTamFJS3V0UDJ6YjRGR0FjYnZaYkRBcWJXdHAz?=
 =?utf-8?B?Skd5N2QwS2ZoVGx1bVdrRjRBMGlrbDY0eU1md2NSa0NMNVJtbDBNS2dNN0w4?=
 =?utf-8?B?L1NMMFREQ2EzRUpQY2NsRUZHeFVTUFp3UGFuOC8vanZ0bWhWOFpKd29lZ3BG?=
 =?utf-8?B?ek1yYm5la25CSnM4dUhzRW0zbEs4NWkyYVBiVnlOMlYwbHVENEh0dEl1RUtj?=
 =?utf-8?B?VEFCcWNwWkI2YUJ2dHhLa3lyVjltQllVMStuVHBpb0U5OVUycmRIMXFLOFpo?=
 =?utf-8?B?VEVDTHZyenM3aXQvcUxCdzcvcitESENKQmVJQWVzNFZjQXNsY01hQVRYcGVo?=
 =?utf-8?Q?ib0hm6l/DT1Trl/swG0K8fvc6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b255921e-3d45-470b-a1e0-08dd94535653
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 08:26:20.7840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WQ/BpfHqjNzHYaXZPsHymJ5vygc++megTADvrXDpM4ib8oYxvO/VdT0aFxUHEU5XaJsI858lbcVPMiuSS5DVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxNSBNYXkgMjAyNSAxMC4x
OA0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBO
aWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPjsgS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMTQvMTRdIGRybS9pOTE1L2RwbGw6IFJlbmFtZSBpbnRl
bF91cGRhdGVfYWN0aXZlX2RwbGwNCj4gDQo+IFJlbmFtZSBpbnRlbF91cGRhdGVfYWN0aXZlX2Rw
bGwgdG8gaW50ZWxfZHBsbF91cGRhdGVfYWN0aXZlIGluIGFuIGVmZm9ydCB0byBoYXZlIGZ1bmN0
aW9uIG5hbWVzIHdoaWNoIGFyZSBleHBvcnRlZCB0byBzdGFydCB3aXRoDQo+IGZpbGVuYW1lcyB0
aGV5IGFyZSBleHBvcnRlZCBmcm9tLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8
c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNCArKy0tICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCAyICstDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCAxMWViY2I0MGM5MWYuLjBlNmQ2MThiNTM1NiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0zNjUw
LDcgKzM2NTAsNyBAQCB2b2lkIGludGVsX2RkaV91cGRhdGVfYWN0aXZlX2RwbGwoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgCWZvcl9lYWNoX2ludGVsX2NydGNfaW5f
cGlwZV9tYXNrKGRpc3BsYXktPmRybSwgcGlwZV9jcnRjLA0KPiAgCQkJCQkgaW50ZWxfY3J0Y19q
b2luZWRfcGlwZV9tYXNrKGNydGNfc3RhdGUpKQ0KPiAtCQlpbnRlbF91cGRhdGVfYWN0aXZlX2Rw
bGwoc3RhdGUsIHBpcGVfY3J0YywgZW5jb2Rlcik7DQo+ICsJCWludGVsX2RwbGxfdXBkYXRlX2Fj
dGl2ZShzdGF0ZSwgcGlwZV9jcnRjLCBlbmNvZGVyKTsNCj4gIH0NCj4gDQo+ICAvKg0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IGluZGV4IGJm
NjZjYmU1YTExYy4uMjhiM2Y1ZWE0MjE5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IEBAIC00NDUwLDcgKzQ0NTAsNyBAQCB2b2lk
IGludGVsX2RwbGxfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgIH0N
Cj4gDQo+ICAvKioNCj4gLSAqIGludGVsX3VwZGF0ZV9hY3RpdmVfZHBsbCAtIHVwZGF0ZSB0aGUg
YWN0aXZlIERQTEwgZm9yIGEgQ1JUQy9lbmNvZGVyDQo+ICsgKiBpbnRlbF9kcGxsX3VwZGF0ZV9h
Y3RpdmUgLSB1cGRhdGUgdGhlIGFjdGl2ZSBEUExMIGZvciBhIENSVEMvZW5jb2Rlcg0KPiAgICog
QHN0YXRlOiBhdG9taWMgc3RhdGUNCj4gICAqIEBjcnRjOiB0aGUgQ1JUQyBmb3Igd2hpY2ggdG8g
dXBkYXRlIHRoZSBhY3RpdmUgRFBMTA0KPiAgICogQGVuY29kZXI6IGVuY29kZXIgZGV0ZXJtaW5p
bmcgdGhlIHR5cGUgb2YgcG9ydCBEUExMIEBAIC00NDU5LDcgKzQ0NTksNyBAQCB2b2lkIGludGVs
X2RwbGxfcmVsZWFzZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gICAq
IGZyb20gdGhlIHBvcnQgRFBMTHMgcmVzZXJ2ZWQgcHJldmlvdXNseSBieSBpbnRlbF9kcGxsX3Jl
c2VydmUoKS4gVGhlDQo+ICAgKiBEUExMIHNlbGVjdGVkIHdpbGwgYmUgYmFzZWQgb24gdGhlIGN1
cnJlbnQgbW9kZSBvZiB0aGUgZW5jb2RlcidzIHBvcnQuDQo+ICAgKi8NCj4gLXZvaWQgaW50ZWxf
dXBkYXRlX2FjdGl2ZV9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAr
dm9pZCBpbnRlbF9kcGxsX3VwZGF0ZV9hY3RpdmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+ICAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJCSAgICAg
IHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKSAgeyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oDQo+IGluZGV4IGIzODgzMTBhZjljMy4uZjEz
MWJkZDFjOTc1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5oDQo+IEBAIC00MDksNyArNDA5LDcgQEAgdm9pZCBpbnRlbF9kcGxsX2NydGNf
cHV0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJIHN0cnVjdCBpbnRlbF9k
cGxsX3N0YXRlICpzaGFyZWRfZHBsbF9zdGF0ZSk7ICB2b2lkIGljbF9zZXRfYWN0aXZlX3BvcnRf
ZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gIAkJCSAgICAg
IGVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQpOyAtdm9pZCBpbnRlbF91cGRhdGVf
YWN0aXZlX2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICt2b2lkIGlu
dGVsX2RwbGxfdXBkYXRlX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJICAgICAgc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpOyAgaW50IGludGVsX2RwbGxfZ2V0X2ZyZXEoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
