Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1504E9D3890
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582E910E051;
	Wed, 20 Nov 2024 10:43:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eh2a3QPu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178EF10E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 10:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732099391; x=1763635391;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6pdwhJiwF9Gw7BLiD8J3PtWyrGpU2vr+0Ze1rWzbNJM=;
 b=eh2a3QPuWx7a2g6tBPMtdPKxC3HMGmd8awlQ0ZE0eQIsDCRG/9Hn0SOQ
 eucKu0FEjAJLdt6Ql5GcAYEC1vNmP7ycXxistXHSR4AtFsTqJQi+00Q/X
 BotOjh2Cvc+NDWyr1IDdT+8zfWdNhfExOEuqM5xkirltuPYBzvEr9lvpl
 bcymJWua4LNsUh7cAezJuGKIXHmsXXjBA4OylY8uWaKzUVDEZ4/qbQv0u
 XU4m++5ffU9YqQ6Hz+zBBiCi+wRq4+pRNZ1Seqg0u568x1LSaqkdR7W16
 29thcfU+izRdZrGBJo0tiLeElmc/KaiQMRBMxAnfUBCUCHs3sB2IMbmmF w==;
X-CSE-ConnectionGUID: QGiWMeSTQRyNZssM775G5Q==
X-CSE-MsgGUID: nfOE6sukSzGAXEHtEl5pyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31899797"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31899797"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:43:11 -0800
X-CSE-ConnectionGUID: K+UVAailReaI/Fc4m42mtA==
X-CSE-MsgGUID: 9g6fLiTkS0y4Q9xHMdjPIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="113160279"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 02:43:10 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 02:43:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 02:43:10 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 02:43:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PlRnirQrjUUnaHMSaQmYH5SnycRnjCxJVJnNcBF0qVKzGZXbaL8e2WmuUl838BKMwdzf7XB5gLlhpc1Dq0EDmrO+yU9l08Q0o5jadvHhdHVGK3i1fydilfcQL5eDCvcMCbA+Q0EV4viDGBtP2+H4GDbUgi3sXO1FlHH/xG/Crl79lPA5t9eK8lWHfuBIBw6YlTY8zoK6R+Ug+fKMlm4PfM//BcT3USON8RjvMM7UP58yygGPIY99luSjroJGqT8hOsLTugGkPPYhpfXRks8uIwkPTbzjfdzj8xXQM2xa/dZSuyPDowP9z0yigN5QnAE69HGtCliXyVijhB3ATdRtOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pdwhJiwF9Gw7BLiD8J3PtWyrGpU2vr+0Ze1rWzbNJM=;
 b=X7MpSuedZSuDbHl+vGQjDbtsN3XvUQfwq8/4Vyo6mCF8vVN7xx8GO/M7djRImW7zjpKLktJAP2mtdHqHlsvt1+sopIU/iciaFpiqH8tlLdKla8hpVWLG+VOjqE81PpiuhDZFBxBmAR+4F2EKl1uF93Xnnf6FX/ngo9R0eTRNUW6k77gwyS5R4yz7PriZTkLUxU7qB4tdaqVy7Is4x4Xy1VJ206gmhi8KIk/i26bjKl7jUf5B8Wko/7Zgc3TIZl5fS2ZomwjmEfcyCujeIheEL5jbiQkG+yW4xFnQhmsMCfLaR9DXHPPjYLEy2uWlbLPdcHUkz57rpQfjpOJyz29L+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DS0PR11MB7405.namprd11.prod.outlook.com (2603:10b6:8:134::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 10:43:07 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%4]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 10:43:07 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>, "Anirban, Sk"
 <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>, "Pottumuttu, Sai Teja"
 <sai.teja.pottumuttu@intel.com>
Subject: RE: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Thread-Topic: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Thread-Index: AQHbNbKHO/N6t8whC0yUCJHrb3AnTbK/3NEAgAAlFbCAAAQE4A==
Date: Wed, 20 Nov 2024 10:43:07 +0000
Message-ID: <CY5PR11MB621165EC34E5D5C3006EAB1595212@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20241113095004.2441052-1-sk.anirban@intel.com>
 <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
 <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DS0PR11MB7405:EE_
x-ms-office365-filtering-correlation-id: 6838e5d9-579c-40bf-9f5e-08dd09501ec6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?K0ovN0lOQW42bkk5SFhFQjVjdE5NaWM1SW9KcW8wc2VMV1VjMm9GY0pvaDdX?=
 =?utf-8?B?akdEOTViU2dSRUY1WjRYYklURXcvdXFKMWp6KzNFeVpWQXhXQi9aS0JEWW92?=
 =?utf-8?B?TzAvVEFwb0MwUmNwakxJekhBS3B4TytwQktlaWF5aERLS2FtUVQ4cHcvTDd1?=
 =?utf-8?B?blFMd0ZpL0FFR3IrL3h6TzIyTzNTRzc0MWNsT0U0aFByWUdHNHI5eExLM2oy?=
 =?utf-8?B?U3psdkpTN2hWb3hkVENVS1RSWTR4aTZvS1VXRUg2bTFodHFvUlMyelFmeml1?=
 =?utf-8?B?VnJ3VlFhZmF2RTlBTWtwbkxLZjNjUWU4cnJ0OW9VVTNLUGZIVlBjc1FWMXBk?=
 =?utf-8?B?YUZrdEpzMWJYaG5TaG15UW5Yb01pUDIyekNVd001UXdqTU9oTEhMSFRZdEo2?=
 =?utf-8?B?dzFOTk5hS0xmWWZiV2prK3NpU01pcnEwbEFoS3c1YmFuSnhEZnBsVi9FZUNj?=
 =?utf-8?B?b1grd1JyZllxSXVkQlVaVE11T1VxZWUrZmtjWkt6d1ZNRFgwbzdlTkJUNUZy?=
 =?utf-8?B?b3ovVS8yMjZEZGlTY1BZQklXK0ZjVldyTWFPRlBZWCtuWk9aK0NnbnlXSUV1?=
 =?utf-8?B?eXI5dDlYTGhpQ1dabVdLUVRMZGdndzVsc3kwdVBTcnExVmZjcnhFK0NXbjlN?=
 =?utf-8?B?YUR6eEpPbXUxQjFIRHFQb3FLc3JQenBiQURrRnFuRS92bkFGL3pqODFDOW5F?=
 =?utf-8?B?dmVTT2VBVkJRM3B1VzVEWk9JTFQ5Lyt3bEFOVWpsWG9BRHBtOG1CQTUxNTkw?=
 =?utf-8?B?NUIxaEhiVGNBekdqak9DdE5keVRWMmhsemloa1JCSlVaOTh3ajQxWHRoZGdU?=
 =?utf-8?B?MW9ZZTdyZStUSC9meU9DdElFNEQ4N0FPMk5zYkxDSHJXY3hHVE04OHVhaTI5?=
 =?utf-8?B?WkY3QWNSVDlPQmY4VVBrQkdIc1ZiSGcxQk4zS1BFMzJ0bFVMeXNrWUtyNWRB?=
 =?utf-8?B?RHNzb1c0TTlNMEFRMjNNei9NYVY4anZVY0YvS1dEZFAyY3N0S1UyRVNZa2po?=
 =?utf-8?B?eGp3TDY0VzRwTFpLTEcya05jTDhZV2dIL2lYYlBZTi9PRnFSNlVrYkVGc0ht?=
 =?utf-8?B?OXJpc1RaWXl1Mnc3L2VIVnFjWkh5MCtRWGwxVXlHOTRRVWhmN0lKNy9wVTVY?=
 =?utf-8?B?ZjQwakFkZWRJU1pxUjhBWG5wVER6ZzhiSi9VbW1mQmdQT3NGU0Zmb1F1N1VY?=
 =?utf-8?B?NlJtejY5SGtPc1gvMzI2SmJNTUw4bmo2TWFlMm9aZFc3aUVyTW53Y1gyTXBV?=
 =?utf-8?B?NjhMT1RFbWR6MFlodmhxbTVITXluS0wxV1g4RkkyZDRVd0JjS2RKY25zOU11?=
 =?utf-8?B?VGlvVGV6dmhFTzhvSWs1ZzBJa0pxU1YvMU1MVHFDRGNxOGozbjhWb2JrMUpL?=
 =?utf-8?B?OVJlSW95a0hQTjdsYzBTUmFubVJxbHdDT1hNN0c2dlNqS1JSR3h0RTNBaVUz?=
 =?utf-8?B?Rk9RU2VsMi92Y2FvSnNBd0lyMTVSbHEwRlNkcXMwVWczcitveXRRM1NTQ1Nr?=
 =?utf-8?B?OUNTcnl4N0c0ODBYa0xkUHltYTB1d2lUV0llNFFINmFFclJJZG11TEJ4cUhI?=
 =?utf-8?B?dzVyUmtLYXd1KzE4SytyYUttTGlWYmZ1ZFptb0xWcEFEVGVpODhXNFVRVktz?=
 =?utf-8?B?dlRxektxQlM5djM1MDdSTXBMR3M0TzluQm9SclFrWE9PRjU2ZHJWMGJKUDVj?=
 =?utf-8?B?VnZpaVRjOVk2TzFDTktaa1RvS3hPMXZYMjZJU1lobDNOTWI0UXVvUkY1RDJ3?=
 =?utf-8?B?TjFDRlFVNkljYk5pMzhUUzNzU2xObDZybTdlR3RiNVRyQnJ1SkxmWUxHZFd4?=
 =?utf-8?Q?1m/ln3zLl9eO0kX0oqEOWL0ZEE+mZ8sR6k+Fo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUxGdXdPZ2c0ME1HR3VmTmN5V0F0OFNVNWFNSGdpalg2Q0cyTUdKSDFtUHdU?=
 =?utf-8?B?dCtvcXJSeXMyc0NRUlpRMWx5eHBkaXN5OVI2SW81Z3B2VTJ3ZnNqb0xlaXFh?=
 =?utf-8?B?TXNRQXdyY2wraTdGSHVXcUFRek5jcCtkQ01zL1I2eUhUMWR3SnpBUFdOeFNO?=
 =?utf-8?B?RWEwSXMzY1NzN1lKT2l0WWw5MlByRkF4VEM1OHQ0NnBJNUY1TVNVbzZpWkJo?=
 =?utf-8?B?Ykk1L2xqZUdFM1ZXMGhva3doMlJZQ2h1VWJsUEJJaHVsQUlERW1JSTc0eXRT?=
 =?utf-8?B?NDJnaVpBTnVKbDhNa3ZaZHhDZzFiT1BJcTd5Y1FDd3dpMWluaklJQVlCcS90?=
 =?utf-8?B?U1NMbFRKVTNRTDB0dzNrbFhtOVlKaXd6MlkxUkhDVTMrbEc0MmJoSVlHdGsr?=
 =?utf-8?B?dm8rU1hHSm8vVWkyZVJoNkhlNEJad2JPVEtnT25MdW1GVVN2cDFYN0UxNS9P?=
 =?utf-8?B?TWZNYmRFTHpibm1VVjhlTGJnMzJEUjhQTE5vak9mVE1UZHN4VDFqc0dyMWRT?=
 =?utf-8?B?TjdpNm12QUdsalBRNXpadkVDQ2hmUkxGMzlwTzBYUGowTnc0b3ppVHUwWS81?=
 =?utf-8?B?WnVNellJejRBdklRQlBUaDVjZ3Q0WXdvYjZqV3YvWDV4NkV6MHNjd2FMSUp1?=
 =?utf-8?B?VlQ3UFJrS0xrOWtaWDJsejlPWnhKTHRjbWFrRWN2cVQvVzNLSlVFdUZVTVJQ?=
 =?utf-8?B?cm5CRmRLQkNsV0hTRTRZd1FwYkRmTkl2SGE3dWV2Z1RJQXBINzFHdkpCNXJI?=
 =?utf-8?B?Z2N6MWFKNWJTWnZSWlRRbU90T09ld2FEd05BUUc0eHlMdzBmR0xHRGY1OVJl?=
 =?utf-8?B?ZkVOYWFzR2FxbC9OdzdNbzZWME5wUDEyelZ4WkJYME1SOFgyU2tTWlhsa2Yz?=
 =?utf-8?B?NkRSSGNUQUhaekZSTHYzQXlDZEhZclU4SmhtbWtKZS9YM3I0WGdIbXpyVW9D?=
 =?utf-8?B?bDBUd05VcXNzY0dDOC9FMmU2WnFZNjJSVGhmaUpQMmw3UDJqRWxQRlN4UUp0?=
 =?utf-8?B?cVJzWHFQVDNRU2U4ZWU5YUNaMTlkYnBmUC9TK0VDTHByRE0wWVg0MFZGUEo2?=
 =?utf-8?B?Rmc3aUZvSGZrckFCUDlDTmllb0hJQkFtTHNkZk5CZXhqUlpBN0dnakwxcWhE?=
 =?utf-8?B?bEowUmJ4OTJxWDlpTTY3eExKaWdnNllmWlZrQ3VTY0ZTMWVEUHk0ai9DTUNR?=
 =?utf-8?B?MGJIQzFxOURJZVhKM2JhZ1hTbmlFZE1Sc2R4Tm1aVUE4Vnhib2xDNEgwcnZr?=
 =?utf-8?B?Z1pGOWM5VmNGM2pGQUxJdlo1WEtyOTIxSVV6SFdrMldwSkF0VTZvUldJM2Y1?=
 =?utf-8?B?SldzNCtwLytuR2pwMnlLQUVXYXR0eExnRmNTSW9wTVVUdTRaQnhkMGNhTWpL?=
 =?utf-8?B?SUk0eHJKUjVOYjErbStubmxIbEg4OW4zRmxsMVBOQ0M2MUFFV3lLdUFod3pP?=
 =?utf-8?B?ay81ZWd5eGpTaFhJV1V5VVZib2Y0UlhFTGNQUDJYYW05ampiUEdnQUN5MXNt?=
 =?utf-8?B?MVB3SFAxeHZPSkd0dVU1VW5oaGdGblZiYnA0eVg3eU9PUzU4SkV1TUlOaHpl?=
 =?utf-8?B?MHJGdVRUZWhxSzJwWkVQNWt2Z2NGU29qWXFPb3dJVEM3RFBqV3JOMDlsZXhx?=
 =?utf-8?B?NjZKMjlQY3JmckcxOE1GaEFvTS83THpEVG9SYTJrUUZ2SlBuRm9YWGRpd2dl?=
 =?utf-8?B?SU1TMk5kTnpzNER1aGMvc0x6V1AxUU9FZ1hqOHlnc3ZEbUplNmxlR1VTYjI2?=
 =?utf-8?B?YzJZU0FwNDFVcGt2K3c3bnZmZk1MYUpFKzNiSTQrRjU0UzhoNjNPZUM0TG9u?=
 =?utf-8?B?N3lRRGxLM0xpdis5cUVpYm1UbExYek9Za2VyNG1TSFhQWlJRSUY1ZGNCMjM5?=
 =?utf-8?B?a2x4SkZUaUQ5M1VVTlFCMElldWRCUW4vNzQyWUxCWGt6ZndEempiNERpbjNL?=
 =?utf-8?B?SjRxNmpNM1RiTUZCMzhSM0NKNCsvZ3ljT1Z1RmVmRWhST1h0VU1qZDVXU0oz?=
 =?utf-8?B?RzBzaTh6OHRqWEJKWEN6a0t2V2VHbWQvdGRyQXZ3bFFZSFVucU1SODVqSkFS?=
 =?utf-8?B?ZUdGOUFKL1B5bWlGWjBibHAxQnJBWFhyNER0MjVUbk5LakpDSE40ckhHOUVt?=
 =?utf-8?Q?jxz1PZl2d/o+/yvSGbUPN0/WS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6838e5d9-579c-40bf-9f5e-08dd09501ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 10:43:07.4815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SnPDTZ5rZ0dU/8o8thN/hpJV23iLS7kkZ7kFY5HEPmGL4ptUK1OaqItw1uc2bXka+9dt4qd8PsiSPg6p9wr38kI6sH691At7GHpiBORtU0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7405
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3VwdGEsIEFuc2h1bWFu
DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjAsIDIwMjQgNDowMSBQTQ0KPiBUbzogTmls
YXdhciwgQmFkYWwgPGJhZGFsLm5pbGF3YXJAaW50ZWwuY29tPjsgQW5pcmJhbiwgU2sNCj4gPHNr
LmFuaXJiYW5AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogUG9vc2EsIEthcnRoaWsgPGthcnRoaWsucG9vc2FAaW50ZWwuY29tPjsgUG90dHVtdXR0dSwg
U2FpIFRlamENCj4gPHNhaS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
RTogW1BBVENIIHY2XSBkcm0vaTkxNS9zZWxmdGVzdHM6IEltcGxlbWVudCBmcmVxdWVuY3kgbG9n
Z2luZyBmb3INCj4gZW5lcmd5IHJlYWRpbmcgdmFsaWRhdGlvbg0KPiANCj4gDQo+IA0KPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogTmlsYXdhciwgQmFkYWwgPGJhZGFs
Lm5pbGF3YXJAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjAsIDIw
MjQgMTo0NCBQTQ0KPiA+IFRvOiBBbmlyYmFuLCBTayA8c2suYW5pcmJhbkBpbnRlbC5jb20+Ow0K
PiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogR3VwdGEsIEFuc2h1
bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+OyBQb29zYSwgS2FydGhpaw0KPiA+IDxrYXJ0
aGlrLnBvb3NhQGludGVsLmNvbT47IFBvdHR1bXV0dHUsIFNhaSBUZWphDQo+ID4gPHNhaS50ZWph
LnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjZdIGRybS9p
OTE1L3NlbGZ0ZXN0czogSW1wbGVtZW50IGZyZXF1ZW5jeQ0KPiA+IGxvZ2dpbmcgZm9yIGVuZXJn
eSByZWFkaW5nIHZhbGlkYXRpb24NCj4gPg0KPiA+DQo+ID4NCj4gPiBPbiAxMy0xMS0yMDI0IDE1
OjIwLCBTayBBbmlyYmFuIHdyb3RlOg0KPiA+ID4gSW50cm9kdWNlIFJDNiAmIFJDMCBmcmVxdWVu
Y3kgbG9nZ2luZyBtZWNoYW5pc20gdG8gZW5zdXJlIGFjY3VyYXRlDQo+ID4gPiBlbmVyZ3kgcmVh
ZGluZ3MgYWltZWQgYXQgYWRkcmVzc2luZyBHUFUgZW5lcmd5IGxlYWtzIGFuZCBwb3dlcg0KPiA+
ID4gbWVhc3VyZW1lbnQgZmFpbHVyZXMuDQo+ID4gPiBUaGlzIGVuaGFuY2VtZW50IHdpbGwgaGVs
cCBlbnN1cmUgdGhlIGFjY3VyYWN5IG9mIGVuZXJneSByZWFkaW5ncy4NCj4gPiA+DQo+ID4gPiB2
MjoNCj4gPiA+ICAgIC0gSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UuDQo+ID4gPiB2MzoNCj4gPiA+
ICAgIC0gVXNlZCBwcl9lcnIgbG9nIHRvIGRpc3BsYXkgZnJlcXVlbmN5IChBbnNodW1hbikNCj4g
PiA+ICAgIC0gU29ydGVkIGhlYWRlcnMgYWxwaGFiZXRpY2FsbHkgKFNhaSBUZWphKQ0KPiA+ID4g
djQ6DQo+ID4gPiAgICAtIEltcHJvdmVkIGNvbW1pdCBtZXNzYWdlLg0KPiA+ID4gICAgLSBGaXgg
cHJfZXJyIGxvZyAoU2FpIFRlamEpDQo+ID4gPiB2NToNCj4gPiA+ICAgIC0gQWRkIGVycm9yICYg
ZGVidWcgbG9nZ2luZyBmb3IgUkMwIHBvd2VyIGFuZCBmcmVxdWVuY3kgY2hlY2tzDQo+ID4gPiAo
QW5zaHVtYW4pDQo+ID4gPiB2NjoNCj4gPiA+ICAgIC0gTW9kaWZ5IGRlYnVnIGxvZ2dpbmcgZm9y
IFJDMCBwb3dlciBhbmQgZnJlcXVlbmN5IGNoZWNrcyAoU2FpDQo+ID4gPiBUZWphKQ0KPiA+ID4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNrIEFuaXJiYW4gPHNrLmFuaXJiYW5AaW50ZWwuY29tPg0K
PiA+ID4gUmV2aWV3ZWQtYnk6IFNhaSBUZWphIFBvdHR1bXV0dHUgPHNhaS50ZWphLnBvdHR1bXV0
dHVAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3JjNi5jIHwgMTUgKysrKysrKysrKysrKy0tDQo+ID4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYw0KPiA+ID4gaW5kZXggMWFhMTQ0
NmM4ZmIwLi5hODc3NmY4OGQ2YTEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9yYzYuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfcmM2LmMNCj4gPiA+IEBAIC04LDYgKzgsNyBAQA0KPiA+ID4gICAjaW5jbHVk
ZSAiaW50ZWxfZ3B1X2NvbW1hbmRzLmgiDQo+ID4gPiAgICNpbmNsdWRlICJpbnRlbF9ndF9yZXF1
ZXN0cy5oIg0KPiA+ID4gICAjaW5jbHVkZSAiaW50ZWxfcmluZy5oIg0KPiA+ID4gKyNpbmNsdWRl
ICJpbnRlbF9ycHMuaCINCj4gPiA+ICAgI2luY2x1ZGUgInNlbGZ0ZXN0X3JjNi5oIg0KPiA+ID4N
Cj4gPiA+ICAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5oIg0KPiA+ID4gQEAgLTM4
LDYgKzM5LDkgQEAgaW50IGxpdmVfcmM2X21hbnVhbCh2b2lkICphcmcpDQo+ID4gPiAgIAlrdGlt
ZV90IGR0Ow0KPiA+ID4gICAJdTY0IHJlc1syXTsNCj4gPiA+ICAgCWludCBlcnIgPSAwOw0KPiA+
ID4gKwl1MzIgcmMwX2ZyZXEgPSAwOw0KPiA+ID4gKwl1MzIgcmM2X2ZyZXEgPSAwOw0KPiA+ID4g
KwlzdHJ1Y3QgaW50ZWxfcnBzICpycHMgPSAmZ3QtPnJwczsNCj4gPiA+DQo+ID4gPiAgIAkvKg0K
PiA+ID4gICAJICogT3VyIGNsYWltIGlzIHRoYXQgd2UgY2FuICJlbmNvdXJhZ2UiIHRoZSBHUFUg
dG8gZW50ZXIgcmM2IGF0IHdpbGwuDQo+ID4gPiBAQCAtNjYsNiArNzAsNyBAQCBpbnQgbGl2ZV9y
YzZfbWFudWFsKHZvaWQgKmFyZykNCj4gPiA+ICAgCXJjMF9wb3dlciA9IGxpYnJhcGxfZW5lcmd5
X3VKKCkgLSByYzBfcG93ZXI7DQo+ID4gPiAgIAlkdCA9IGt0aW1lX3N1YihrdGltZV9nZXQoKSwg
ZHQpOw0KPiA+ID4gICAJcmVzWzFdID0gcmM2X3Jlc2lkZW5jeShyYzYpOw0KPiA+ID4gKwlyYzBf
ZnJlcSA9IGludGVsX3Jwc19yZWFkX2FjdHVhbF9mcmVxdWVuY3kocnBzKTsNCj4gPiA+ICAgCWlm
ICgocmVzWzFdIC0gcmVzWzBdKSA+PiAxMCkgew0KPiA+ID4gICAJCXByX2VycigiUkM2IHJlc2lk
ZW5jeSBpbmNyZWFzZWQgYnkgJWxsZHVzIHdoaWxlIGRpc2FibGVkIGZvcg0KPiA+IDEwMDBtcyFc
biIsDQo+ID4gPiAgIAkJICAgICAgIChyZXNbMV0gLSByZXNbMF0pID4+IDEwKTsgQEAgLTc3LDcg
KzgyLDExIEBAIGludA0KPiA+ID4gbGl2ZV9yYzZfbWFudWFsKHZvaWQgKmFyZykNCj4gPiA+ICAg
CQlyYzBfcG93ZXIgPSBkaXY2NF91NjQoTlNFQ19QRVJfU0VDICogcmMwX3Bvd2VyLA0KPiA+ID4g
ICAJCQkJICAgICAga3RpbWVfdG9fbnMoZHQpKTsNCj4gPiA+ICAgCQlpZiAoIXJjMF9wb3dlcikg
ew0KPiA+ID4gLQkJCXByX2VycigiTm8gcG93ZXIgbWVhc3VyZWQgd2hpbGUgaW4gUkMwXG4iKTsN
Cj4gPiA+ICsJCQlpZiAocmMwX2ZyZXEpDQo+ID4gPiArCQkJCXByX2VycigiTm8gcG93ZXIgbWVh
c3VyZWQgd2hpbGUgaW4gUkMwIQ0KPiA+IEdQVSBGcmVxOiAldSBpbiBSQzBcbiIsDQo+ID4gPiAr
CQkJCSAgICAgICByYzBfZnJlcSk7DQo+IElmIHJjMCBmcmVxdWVuY3kgaXMgdGhlcmUgdGhlbiwg
dGhpcyBoYXMgdG8gYmUgcHJfZGJnLCBvdGhlcndpc2Ugd2hhdCBpcyB0aGUNCj4gcHVycG9zZSBv
ZiB0aGlzIHBhdGNoLg0KSXQgc2hvdWxkIHJldHVybiBmcm9tIGhlcmUgd2l0aG91dCBhbnkgZXJy
b3IgaW4gY2FzZSB0aGVyZSBpcyBubyByYzAgcG93ZXIgYnV0IHdlIGRvIGhhdmUgcmMwIGZyZXF1
ZW5jeS4NClRoYW5rcywNCkFuc2h1bWFuLg0KPiA+ID4gKwkJCWVsc2UNCj4gPiA+ICsJCQkJcHJf
ZXJyKCJObyBwb3dlciBhbmQgZnJlcSBtZWFzdXJlZCB3aGlsZSBpbg0KPiA+IFJDMFxuIik7DQo+
ID4gPiAgIAkJCWVyciA9IC1FSU5WQUw7DQo+ID4gPiAgIAkJCWdvdG8gb3V0X3VubG9jazsNCj4g
PiA+ICAgCQl9DQo+ID4gPiBAQCAtOTEsNiArMTAwLDcgQEAgaW50IGxpdmVfcmM2X21hbnVhbCh2
b2lkICphcmcpDQo+ID4gPiAgIAlkdCA9IGt0aW1lX2dldCgpOw0KPiA+ID4gICAJcmM2X3Bvd2Vy
ID0gbGlicmFwbF9lbmVyZ3lfdUooKTsNCj4gPiA+ICAgCW1zbGVlcCgxMDApOw0KPiA+ID4gKwly
YzZfZnJlcSA9IGludGVsX3Jwc19yZWFkX2FjdHVhbF9mcmVxdWVuY3kocnBzKTsNCj4gPg0KPiA+
IEkgdGhpbmsgaW50ZW50aW9uIG9mIHJlYWRpbmcgZnJlcXVlbmN5IGhlcmUgaXMgdG8ga25vdyBp
ZiBkZXZpY2Ugd2FzDQo+ID4gbm90IGluIFJDNiB3aGVuIHRoZXJlIGlzIGZhaWx1cmUuIEJ1dCBm
b3IgdGhlIHBsYXRmb3JtcyBiZWxvdyBnZW4xMg0KPiA+IHJlYWRpbmcgYWN0IGZyZXF1ZW5jeSB3
aWxsIGNhdXNlIGd0IHdha2UgYXMgR0VONl9SUFNUQVQgcmVnIHJlcXVpcmVzDQo+IGZvcmNld2Fr
ZS4NCj4gPiBUbyBhdm9pZCB3YWtlIHdoZW4gZGV2aWNlIGlzIGluIFJDNiByZWFkIGFjdHVhbCBm
cmVxdWVuY3kgd2l0aG91dA0KPiA+IGFwcGx5aW5nIGZvcmNld2FrZS4NCj4gSWYgcmVhZGluZyBh
Y3RfZnJlcSB3aWxsIHdha2UgdGhlIGRldmljZSwgSG93IHRvIHJlYWQgZnJlcXVlbmN5IHdpdGhv
dXQNCj4gZm9yY2V3YWtlIHRoZW4gPw0KPiANCj4gVGhhbmtzLA0KPiBBbnNodWFtYW4NCj4gPg0K
PiA+IEFkZGl0aW9uYWxseSBhZGQgZGVsYXksIG1heSBiZSBkZWxheSBvZiAxIHNlY29uZHMgYWZ0
ZXIgcmUtZW5hYmxpbmcNCj4gPiBSQzYgbWFudWFsbHkgYW5kIGZvcmNld2FrZSBmbHVzaC4NCj4g
Pg0KPiA+IFJlZ2FyZHMsDQo+ID4gQmFkYWwNCj4gPg0KPiA+ID4gICAJcmM2X3Bvd2VyID0gbGli
cmFwbF9lbmVyZ3lfdUooKSAtIHJjNl9wb3dlcjsNCj4gPiA+ICAgCWR0ID0ga3RpbWVfc3ViKGt0
aW1lX2dldCgpLCBkdCk7DQo+ID4gPiAgIAlyZXNbMV0gPSByYzZfcmVzaWRlbmN5KHJjNik7DQo+
ID4gPiBAQCAtMTA4LDcgKzExOCw4IEBAIGludCBsaXZlX3JjNl9tYW51YWwodm9pZCAqYXJnKQ0K
PiA+ID4gICAJCXByX2luZm8oIkdQVSBjb25zdW1lZCAlbGxkdVcgaW4gUkMwIGFuZCAlbGxkdVcg
aW4NCj4gPiBSQzZcbiIsDQo+ID4gPiAgIAkJCXJjMF9wb3dlciwgcmM2X3Bvd2VyKTsNCj4gPiA+
ICAgCQlpZiAoMiAqIHJjNl9wb3dlciA+IHJjMF9wb3dlcikgew0KPiA+ID4gLQkJCXByX2Vycigi
R1BVIGxlYWtlZCBlbmVyZ3kgd2hpbGUgaW4gUkM2IVxuIik7DQo+ID4gPiArCQkJcHJfZXJyKCJH
UFUgbGVha2VkIGVuZXJneSB3aGlsZSBpbiBSQzYhIEdQVSBGcmVxOg0KPiA+ICV1IGluIFJDNiBh
bmQgJXUgaW4gUkMwXG4iLA0KPiA+ID4gKwkJCSAgICAgICByYzZfZnJlcSwgcmMwX2ZyZXEpOw0K
PiA+ID4gICAJCQllcnIgPSAtRUlOVkFMOw0KPiA+ID4gICAJCQlnb3RvIG91dF91bmxvY2s7DQo+
ID4gPiAgIAkJfQ0KDQo=
