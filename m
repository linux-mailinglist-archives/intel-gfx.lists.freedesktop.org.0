Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB30901CDB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 10:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF83710E33E;
	Mon, 10 Jun 2024 08:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CVkOGYhI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9899910E363
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 08:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718007757; x=1749543757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DlHvCENQaAm3wHca+veVQoCyvK60gpb0H9jwr8szGig=;
 b=CVkOGYhI7pYoaui9uuEgH9soxXbYmHSkNMK/uY64T2Sm3IHCYFaRMYki
 fqTNX+XJs47jTRsDhiRGsvostVzEWa98eGRd1GaPcM4z/JhQP57Y5heed
 PM+vLaoaW9TaB89nNSBFmwi7mQWgr0OlyfRkWrZFH67jBREosT1EWOneJ
 c2zkDZcFFlyWSTR39c7P6EElu+Ws9Qwc68Gv3Y72L5nJa1IOkAKQHTGTi
 IXiFhM7C2RXjqxlGZOlmJ9igis+r3MZ6UdhvyLaiR4E+BDS7xYa0Vauu/
 vD8HlTox5v5BNWZc/zyrZyan+kpzEMDsy4bqJOyfFLANm6g0j2A1sBN0P A==;
X-CSE-ConnectionGUID: byxjs3AuQUq94MfQIUgLhQ==
X-CSE-MsgGUID: SueRsvRAQBWnjbJA0Lxcow==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14452123"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14452123"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 01:22:37 -0700
X-CSE-ConnectionGUID: LO3psD3kT46fL8htm2HRow==
X-CSE-MsgGUID: Vu/PlM9wS+epbcU3th1m6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="38906874"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 01:22:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 01:22:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 01:22:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 01:22:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQx9TwPB5WYY6RsyI8Zsg8uOIZyZOSaV/Y/+0UV3R9k76dAX2UaDCohkQMFTqPx5EygbblB3evt2UIwSCdUQNtaGUJIYlLT7V+v/twaBkhoNEyN7IddO2FtiLblmc0Wl9rKvd9+JjLGHkcg8baV2AnQchjIGyuxzsBSotSWAnaTHKsqxkTx/e2COxHysVcJMAeIwf3Ll/TupVsmbbgEUbyf0BR4yj+GGlncVzlPkvsSmqrthz/j6JLvTH91aOQ2L+12gbYB1iVrzn195U1WGNajmx6D0h04lXJZXWY+pFG02v94WRBFonGt15RQlKqYI186IBLCSRwrtrJh1i3Jqlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlHvCENQaAm3wHca+veVQoCyvK60gpb0H9jwr8szGig=;
 b=PrDDDzrt+Nm5/7cbfBj67/8rFEZr2NgQilpcbQxadLAITkkkww1AjpGRX0q9bk4bH/ixST6MJ/8+hdVIZudIUCv6INkplPBVX6gNLy8p7Vtddje8eNMRXsW8oMMJYxmh4CKf5H8SPWiMiK0ekFMCmDyZCOZgXwWkBGBvJLxoRSdEjYWxi/vYSwEdPdOWABlwO2+e15UmIiPGuHCtSHwZrmtpHukL79T4imaJZN647IR5Rr6UZ9MXi8nhwBFRHAQkjvtzOlqBrVW62vzHXQzAEfTq7AaNuyEYj2GVUB9FgAbycOS+K+8b4Szao9xZUlYKfSRb0ggq1JOZFt38CzaXSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Mon, 10 Jun
 2024 08:22:34 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 08:22:33 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the end
 of enable_ulp function"
Thread-Topic: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the
 end of enable_ulp function"
Thread-Index: AQHauwsnZx/CVsuxN0ufU8EwXvnX3rHAojTw
Date: Mon, 10 Jun 2024 08:22:33 +0000
Message-ID: <DM8PR11MB5655DDD6C1502191D2A38E43E0C62@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|PH7PR11MB5958:EE_
x-ms-office365-filtering-correlation-id: b12498fc-fd79-4f75-03a4-08dc89267a8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?QVNvdnp1eTBpSTc4MEppRkQyZ00xTjB0c0dGVWJCQmVlNUU0QURTVzdpMEJZ?=
 =?utf-8?B?N3ZxMHRaRmFDTlpNUnliZ1N3Ry9zWWxQamJubUdJbFdKdTllM2V0QTFSNkxH?=
 =?utf-8?B?d3BhSWttTGdVVVRjU3FPMWZURHFpZENiSTA4dXkwK2puTE9WcDNpdXEySUU0?=
 =?utf-8?B?UzMxQXRVYmgyZUo0VUEzaHhxYmJ0V1FIUytBRmpLZFhQdmNoWHFMVUR0YmFs?=
 =?utf-8?B?TXhiS3dKWVhhM3hpQUhSSnlrdXE2THdPMEpodlBWaEMzdGllblpGbG5La080?=
 =?utf-8?B?THQvVkl1OGZnbU16eWl1c3JoaGdXWkw3V1BVTDM1RVJRZHpzanY4Wk5FZCs0?=
 =?utf-8?B?MXdBK1ZnaFRNL3pTS25Uem1icjBHemF6Q2FKUzMrNmVkSFBZclBZRlVTekZC?=
 =?utf-8?B?WXlTQi9rUksvMXZqVGlORERPZFdpT2FIK1p6ZC9GV1J2aFczVEdkSXM4MU5n?=
 =?utf-8?B?V1QzMVZ6T2RzQjd4YlZpNVdHVWk4bFpwQnFZMk5adGJyVVhQSXpDdmlrWU9z?=
 =?utf-8?B?NzQ1R3hYcWhTcVkzSE1VVmgyTFU1Z09mT21QYlhkUy9nKzMzSStoc2xOaHYr?=
 =?utf-8?B?RFhQSWxZSFhnS0dRZzQ5YmNQVnVLZFI2QStBaEJ1SHpwMU84MTMrVTJPQzNV?=
 =?utf-8?B?dFVDSUpuZ0RMUXVzTkFWRGRtTVNBTkpRM1h3VlV3VkNyZTR5NzRqOXh1dnJU?=
 =?utf-8?B?eFFzbHlaYXVYRThVNWdqUTVadHl6VER2SUVNTm1WVDFBaC9nNDNWQUJaNWJk?=
 =?utf-8?B?dFhpNEJoUGUxNk93dzRrcmNiMXJEd0Y3L21adTBkSWcwZ0xBL2U5cndDMG8x?=
 =?utf-8?B?M3E5ZVVpbXo3UG1rRjY0dTR2RGFSUmNIMmpBMFRTc0xQM01WZ1YySmJZS3lC?=
 =?utf-8?B?Z2cwMStrQU9LMUxOeWlZR3ByVGN3VkFSTWtyU0ZKa3RScDhGYlJyVzZXRDFH?=
 =?utf-8?B?cklXazhjOTN0L1phdEFxa1NQV0tiZzB5ZDJhUHlnaXRmZUhNRVhWaFdOSGlx?=
 =?utf-8?B?ZS84YkpuZ04vdCs2Y1ArbGN5SHFqbnk1czhldEc1YXZ4dHFxcW5QVmVIMXFm?=
 =?utf-8?B?dFlPRXJVOGNTRnVsZ1hsNVVNNmJWd3QxSlhHem1vbkJpUVU4eHlhWGhUQzFv?=
 =?utf-8?B?YVJRYk1TYlZmRGZyMUdQcnVkdnYwRjJLUE9BeitPd1JYbm9KOW04UXB0c0Uw?=
 =?utf-8?B?b2ZQSUVBQkRJVWRpRXlTTDhVY3kvdU9IcmE1NUY3bFRKT1dJd0kwTHlBcHFr?=
 =?utf-8?B?cVUxMFNHL0psT3dZNFh2MFRiUnFyMDFMWmhxdUZUWFExL0JvQXZYOWVCbEhP?=
 =?utf-8?B?MVFBSzQwb1NkcWdxS01reWhNTnNDZDlEeFpJN2hQbDdCcDE2cU9vblAxcGZi?=
 =?utf-8?B?THpCQUtWcHhlbnRncUN6OVI0TEZqaEh5S0pOd3J5ZGpPbm9FbHZ3a21kMlp2?=
 =?utf-8?B?M2xLOFlMWVpNNE9xQmJsVXgxcGgycXJTQ2drTnV4K0oxb0tYQlR2N1BBNlZu?=
 =?utf-8?B?ZFJIZUdwY2VDY0hpUW1tOGdEZUthYXU4QTV6V1FreHRRWEppd21PNkRVTXZx?=
 =?utf-8?B?enc1RjF2MWJKWjRKZkdGTVBjRjVaRXU4WjhnbU45a0JLVjdLMEN2SnQ4NitV?=
 =?utf-8?B?ZktxN1VHZjlQV0YwSzYxTEVFOWNTUlRCUUJXemFzZ1VOK0plMlBhSnFadldj?=
 =?utf-8?B?dGlzQ0J3WFNOV0NmRkxpcFg1RjFYdlh0UTJORWhidVRwVDFZMEZwcUc3eEpF?=
 =?utf-8?Q?0icNuZ1N00QCcniebhLZvP2JdtHJ1Hh54TywBpo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDlGaStIQ2JaTnhma3VQWHk4VWp5RTB5MWpGaTlBdGtJQkQwNkFvT2VKNWF3?=
 =?utf-8?B?N2RMY0ZCVXVpMXlpTDZWWndvalhCTFJHSGxrMmY5Q3oveEJDejczQ2NEY0dU?=
 =?utf-8?B?c1NkdGdPYlBGUTZ2VlhSbjRRdnh5U2xNRWpKajNtNzBSdk1URjMrdnZYT004?=
 =?utf-8?B?bGt4MDY5NVA2M3E4c3NXY1EycHFINjBnaTNrNHdtZkQyYjZXUUhQVmtaY2oy?=
 =?utf-8?B?ZmNBazY0dmFTRzEzWmN0YWFOWGl2dWt4UDFqUUwreUxreEhGNExreGhxdkRu?=
 =?utf-8?B?bWhLa3lQR2dtRE1xQ2w3QUluTjhwcEJ5cWpIY3pGTTBsL2IwNUNZYkZCVlhr?=
 =?utf-8?B?M3FENitTa3JCbWxnWmJKTEdpZ0l3OFh0ajJzR1RnbW1vYVJIWE1PNVd3VUw0?=
 =?utf-8?B?bVY1d0tsemdrbTJnM3BneEpEUjdqOUpFQm9VVDlHQVlLQnhLUG5mMUIvampi?=
 =?utf-8?B?MHdQSG1lRkw4YWJtY0RUSU81WUx1ejJTUithVStxV0Zqb3FzNUlGMGxqUlZ6?=
 =?utf-8?B?UVI1QTBXUlVwWUh0dlJCYUtjcVErMjgvREdaQ3dvNG1Bam9CNXFPclZ4K0wy?=
 =?utf-8?B?SEYvdCtiS2poTmxzNjNRYjU3V3RKSVA5TlorOUdPWHZLSUxSdnVpNFZXQmM5?=
 =?utf-8?B?d0RkZmNkcmJNeDFvbnBjQkVyYUhtSXlJM3FVQzdrRmRFSlR4anAzcExvYTlD?=
 =?utf-8?B?VFlNTllFZHhXbWtHNXJySDY0UUpUcXNhZEFQQk9DSHZxT0UzckoxSFhIWjFI?=
 =?utf-8?B?TDBBRGliUnRicGd0QXlDelBIekNCQ2xWZDdSeG5od2ZNUlRLV21QKzVyaExs?=
 =?utf-8?B?cjB0SndjVkJQVVJWaVk5U2ltM0l6ZU4wSDZXSW9PeGwxWElGN1JPL2w3ajhF?=
 =?utf-8?B?aGxJQXFlUWUwR29DUlJERzkrd1JpRW95Y1M0RDBST1IreTd0WW1tTjVqVGlp?=
 =?utf-8?B?QXA5TE1zNVkvS2NvWE9PQXhiaEpybFhpRnRNdkdCOER3MnQ5UEl4MVJJaVhD?=
 =?utf-8?B?cUtmRDVxMGtUdG0vYWMzZzhaUDRzb3NiakhZVU04aDVGU3FwTURiaGx1VVIy?=
 =?utf-8?B?Y2prS1I2UjkvZVhDdjg3eTRtamo3ZW1yQW5ONkd1dVFwcVZndTFlRk9FWnM3?=
 =?utf-8?B?Z1hZaFMwNVZqcVBYVFovOGhHOEloK3pxMm1mbnF4NVc4OFltYURQOTY4N1du?=
 =?utf-8?B?L0pmMHExMTFKU25yS3o3UnZRUU9wTndLRTBmZmRFTzlJVmN1OFpvNWt2Ynh3?=
 =?utf-8?B?TFdzZEd3QW5FaGFVL3ZvVHdKdHUvUDJBUGYyNkZtS2lsU1pDTktrMVVqbVUx?=
 =?utf-8?B?cHpXSnBIb0J4MlN2c0dKMnRHcTJLWXZ1dCtMZTRPcVFIb1hBTDZPMDhLL2RD?=
 =?utf-8?B?ZStOSE9GaXJZdzBiMHhmVzV3TFAzbFEyQTc2d3FyOGFqR0JBTUFldXVoR3VQ?=
 =?utf-8?B?STRKbWgrLzNWeVpNL21GZGNJMEdBZGtUVjJSWkFXZFVWNERpWXZuUk5WVE00?=
 =?utf-8?B?Z3JqS0tzbFBXcEZML2ptSS9mWDBCWmpWWDdKUGp5T014VjA1dng1QUlqYXha?=
 =?utf-8?B?VDFnUEVyZjluamNHUTlIMkZvYkdCc1ExQllrNFc2ZWxQQ3l6WmZJaTdsSDdU?=
 =?utf-8?B?UFdKRkY1NjNxWUpoc01HeUliZ1lqVW95ckFWelFpcTBsNU5wWTcrM095dTZ6?=
 =?utf-8?B?NXc2OVlQMVlNMmNGanlLY0pMKzNjOEZkV3lpN0EwUi8wT1JMMEMzaGRkMUpu?=
 =?utf-8?B?VnhlaHdjaUlXUC9pM0pXUnY2OXpOTWV4YjRLdVBGQkJnV0hRTi9VWlpzVVZ0?=
 =?utf-8?B?ZHdZTHdGUWJFcFdZMlh0VTR6RkxveGtUM2MvajFINS9pMDdpNVlzclVwaW5x?=
 =?utf-8?B?UmtEZmJZcGhZM3VwbW9nb0g2YVJ4NUVKSWtNOXViU1Bsd1ZQQlEzY2IyaTcw?=
 =?utf-8?B?RTdZejBpbUNpRERoR0NIa2Z0cnhHcHZTOXNucGk1QXVLdURRdm85aHRKVkQ5?=
 =?utf-8?B?Y0pQWEZRY1h4c2xRZldTNnZ6NWw3M25JdGtkekF6cUhBTndYUWZxODJDalBZ?=
 =?utf-8?B?SjZHNG14bGozRkRrZzBvb0FaVUtlTGkrelpqMXlNUlNpTG1qblBHekJYdStw?=
 =?utf-8?Q?1nxy0eCVcgAZJE/Shm2fXvXmC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b12498fc-fd79-4f75-03a4-08dc89267a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 08:22:33.7560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W9oq1aaZbMTPTwIFIHJo/si7UqaWgmsuv0cNYGHJCbOmovHjeIN/GaEFvzW+8D+w1cl+KoCieh4uu8JXkFv2/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IENo
YWl0YW55YSBLdW1hciBCb3JhaA0KPiBTZW50OiBNb25kYXksIDEwIEp1bmUgMjAyNCAxMC40Ng0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQm9yYWgsIENoYWl0
YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3ViamVjdDog
W2NvcmUtZm9yLUNJIFBBVENIXSBSZXZlcnQgImUxMDAwZTogbW92ZSBmb3JjZSBTTUJVUyBuZWFy
IHRoZSBlbmQNCj4gb2YgZW5hYmxlX3VscCBmdW5jdGlvbiINCj4gDQo+IFRoaXMgcmV2ZXJ0cyBj
b21taXQgYmZkNTQ2YTU1MmUxNDBiMGE0YzhhMjE1MjdjMzlkNmQyMWFkZGIyOC4NCj4gDQo+IFRo
ZSBjb21taXQgc2VlbXMgdG8gY2F1c2UgcHJvYmxlbXMgaW4gc3VzcGVuZC1yZXN1bWUgdGVzdHMN
Cj4gDQo+IFsyMTIuMjA0ODk3XSBlMTAwMGUgMDAwMDowMDoxZi42OiBQTTogcGNpX3BtX3N1c3Bl
bmQoKToNCj4gZTEwMDBlX3BtX3N1c3BlbmQgW2UxMDAwZV0gcmV0dXJucyAtMiBbMjEyLjIwNDky
OF0gZTEwMDBlIDAwMDA6MDA6MWYuNjoNCj4gUE06IGRwbV9ydW5fY2FsbGJhY2soKTogcGNpX3Bt
X3N1c3BlbmQgcmV0dXJucyAtMiBbMjEyLjIwNDk0M10gZTEwMDBlDQo+IDAwMDA6MDA6MWYuNjog
UE06IGZhaWxlZCB0byBzdXNwZW5kIGFzeW5jOiBlcnJvciAtMiBbMjEyLjIwNTA5Ml0gUE06IHN1
c3BlbmQNCj4gb2YgZGV2aWNlcyBhYm9ydGVkIGFmdGVyIDMwMi4yNTQgbXNlY3MNCj4gDQo+IFJl
ZmVyZW5jZXM6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE0OTA0L3NoYXJkLQ0KPiBkZzItNC9pZ3RAZ2VtX2Njc0BzdXNwZW5kLXJlc3VtZUBsaW5lYXIt
Y29tcHJlc3NlZC1jb21wZm10MC0NCj4gbG1lbTAtbG1lbTAuaHRtbA0KPiBSZWZlcmVuY2VzOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEx
MzA1DQo+IFNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlhLmt1
bWFyLmJvcmFoQGludGVsLmNvbT4NCg0KQWNrZWQtQnk6IEphbmkgU2FhcmluZW4gPGphbmkuc2Fh
cmluZW5AaW50ZWwuY29tPg0KDQpXZSBoYXZlIGFscmVhZHkgdHJ5Ym90IHJlc3VsdHMgZnJvbSBy
ZXZlcnQgIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM0NjAzLyNy
ZXYyIC8NCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvVHJ5Ym90XzEz
NDYwM3YyL2luZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kDQpTbyBoZWxwcyBvbiB0aGVzZS4g
TGV0J3MgZ2V0IHRoaXMgbWVyZ2VkIGFzYXAuIA0KDQpCciwNCkphbmkNCg0KPiAtLS0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCAyMiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5j
ICB8IDE4ICsrKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvaWNoOGxhbi5jDQo+IGluZGV4IDJlOThhMmEwYmVhZC4uZjllOTRiZTM2ZTk3
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxh
bi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMN
Cj4gQEAgLTEyMjUsMjggKzEyMjUsNiBAQCBzMzIgZTEwMDBfZW5hYmxlX3VscF9scHRfbHAoc3Ry
dWN0IGUxMDAwX2h3DQo+ICpodywgYm9vbCB0b19zeCkNCj4gIAl9DQo+IA0KPiAgcmVsZWFzZToN
Cj4gLQkvKiBTd2l0Y2hpbmcgUEhZIGludGVyZmFjZSBhbHdheXMgcmV0dXJucyBNREkgZXJyb3IN
Cj4gLQkgKiBzbyBkaXNhYmxlIHJldHJ5IG1lY2hhbmlzbSB0byBhdm9pZCB3YXN0aW5nIHRpbWUN
Cj4gLQkgKi8NCj4gLQllMTAwMGVfZGlzYWJsZV9waHlfcmV0cnkoaHcpOw0KPiAtDQo+IC0JLyog
Rm9yY2UgU01CdXMgbW9kZSBpbiBQSFkgKi8NCj4gLQlyZXRfdmFsID0gZTEwMDBfcmVhZF9waHlf
cmVnX2h2X2xvY2tlZChodywgQ1ZfU01CX0NUUkwsDQo+ICZwaHlfcmVnKTsNCj4gLQlpZiAocmV0
X3ZhbCkgew0KPiAtCQllMTAwMGVfZW5hYmxlX3BoeV9yZXRyeShodyk7DQo+IC0JCWh3LT5waHku
b3BzLnJlbGVhc2UoaHcpOw0KPiAtCQlnb3RvIG91dDsNCj4gLQl9DQo+IC0JcGh5X3JlZyB8PSBD
Vl9TTUJfQ1RSTF9GT1JDRV9TTUJVUzsNCj4gLQllMTAwMF93cml0ZV9waHlfcmVnX2h2X2xvY2tl
ZChodywgQ1ZfU01CX0NUUkwsIHBoeV9yZWcpOw0KPiAtDQo+IC0JZTEwMDBlX2VuYWJsZV9waHlf
cmV0cnkoaHcpOw0KPiAtDQo+IC0JLyogRm9yY2UgU01CdXMgbW9kZSBpbiBNQUMgKi8NCj4gLQlt
YWNfcmVnID0gZXIzMihDVFJMX0VYVCk7DQo+IC0JbWFjX3JlZyB8PSBFMTAwMF9DVFJMX0VYVF9G
T1JDRV9TTUJVUzsNCj4gLQlldzMyKENUUkxfRVhULCBtYWNfcmVnKTsNCj4gLQ0KPiAgCWh3LT5w
aHkub3BzLnJlbGVhc2UoaHcpOw0KPiAgb3V0Og0KPiAgCWlmIChyZXRfdmFsKQ0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jDQo+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jDQo+IGluZGV4IGRhNWM1OWRh
ZjhiYS4uMjIwZDYyZmNhNTVkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jDQo+IEBAIC02NjIzLDYgKzY2MjMsNyBAQCBzdGF0aWMgaW50IF9fZTEw
MDBfc2h1dGRvd24oc3RydWN0IHBjaV9kZXYgKnBkZXYsDQo+IGJvb2wgcnVudGltZSkNCj4gIAlz
dHJ1Y3QgZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiAgCXUzMiBjdHJsLCBjdHJsX2V4
dCwgcmN0bCwgc3RhdHVzLCB3dWZjOw0KPiAgCWludCByZXR2YWwgPSAwOw0KPiArCXUxNiBzbWJf
Y3RybDsNCj4gDQo+ICAJLyogUnVudGltZSBzdXNwZW5kIHNob3VsZCBvbmx5IGVuYWJsZSB3YWtl
dXAgZm9yIGxpbmsgY2hhbmdlcyAqLw0KPiAgCWlmIChydW50aW1lKQ0KPiBAQCAtNjY5Niw2ICs2
Njk3LDIzIEBAIHN0YXRpYyBpbnQgX19lMTAwMF9zaHV0ZG93bihzdHJ1Y3QgcGNpX2Rldg0KPiAq
cGRldiwgYm9vbCBydW50aW1lKQ0KPiAgCQkJaWYgKHJldHZhbCkNCj4gIAkJCQlyZXR1cm4gcmV0
dmFsOw0KPiAgCQl9DQo+ICsNCj4gKwkJLyogRm9yY2UgU01CVVMgdG8gYWxsb3cgV09MICovDQo+
ICsJCS8qIFN3aXRjaGluZyBQSFkgaW50ZXJmYWNlIGFsd2F5cyByZXR1cm5zIE1ESSBlcnJvcg0K
PiArCQkgKiBzbyBkaXNhYmxlIHJldHJ5IG1lY2hhbmlzbSB0byBhdm9pZCB3YXN0aW5nIHRpbWUN
Cj4gKwkJICovDQo+ICsJCWUxMDAwZV9kaXNhYmxlX3BoeV9yZXRyeShodyk7DQo+ICsNCj4gKwkJ
ZTFlX3JwaHkoaHcsIENWX1NNQl9DVFJMLCAmc21iX2N0cmwpOw0KPiArCQlzbWJfY3RybCB8PSBD
Vl9TTUJfQ1RSTF9GT1JDRV9TTUJVUzsNCj4gKwkJZTFlX3dwaHkoaHcsIENWX1NNQl9DVFJMLCBz
bWJfY3RybCk7DQo+ICsNCj4gKwkJZTEwMDBlX2VuYWJsZV9waHlfcmV0cnkoaHcpOw0KPiArDQo+
ICsJCS8qIEZvcmNlIFNNQnVzIG1vZGUgaW4gTUFDICovDQo+ICsJCWN0cmxfZXh0ID0gZXIzMihD
VFJMX0VYVCk7DQo+ICsJCWN0cmxfZXh0IHw9IEUxMDAwX0NUUkxfRVhUX0ZPUkNFX1NNQlVTOw0K
PiArCQlldzMyKENUUkxfRVhULCBjdHJsX2V4dCk7DQo+ICAJfQ0KPiANCj4gIAkvKiBFbnN1cmUg
dGhhdCB0aGUgYXBwcm9wcmlhdGUgYml0cyBhcmUgc2V0IGluIExQSV9DVFJMDQo+IC0tDQo+IDIu
MjUuMQ0KDQo=
