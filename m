Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA28FCB8689
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C18C10E579;
	Fri, 12 Dec 2025 09:17:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIVtk5UI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7CA10E579;
 Fri, 12 Dec 2025 09:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765531075; x=1797067075;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D0Sx3F7jYLRW2ZdEgJB6FdgGlu6X7ScBPBzUSEA0gSw=;
 b=ZIVtk5UIbiozjrWmLLeGqY3ovRUBzWs76TBetNRMvPs4/cZsf7gEiF1m
 +z6wxQI/c2bCuaz3+KgGv5mgVkNg5wF1IG1cI/u6JDha2D/bd7MQMETR/
 NZ/UuKqflZckFtUgPwpmyydZzf5tZuptNHYUDF2TWnESCGmdulvc+UNI9
 UjvkfzLnp+FLB1ZAzIotwMBxNgim4VQJ27fakTtQONXJDf15B5WOuTwgj
 +wk0ijxqRu7Vsid4y1GJ6F5bvOrL5qhRud3ck/H8tQCnIizUnltOaiq/9
 nNAzcQQsZ8DOT+LMivZ/INg4soqqdtq+44oQ+q3ZMBkgSAbuy4Nmexr4D A==;
X-CSE-ConnectionGUID: 7nZEifHQTiyv1tHRGIHR0g==
X-CSE-MsgGUID: MdGfszJ+SPCj75frHUyVjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78887349"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78887349"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:17:55 -0800
X-CSE-ConnectionGUID: dSnJ9sXJRzOkwcS7fm/Qdw==
X-CSE-MsgGUID: OGxs87IRQomIcYSijYMNCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196796784"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:17:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:17:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:17:54 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.19)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:17:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OU56uALocO/2df96t/2tA8Sdb6UC4dT6cvQjHhvolvtMGAc/jWp+dRaEwxqbTXJymlIlz1OdXEiQF/xkVp6D5ZTMT4yGZvtNdMXuJq4eB/jVLt3AzFtyYu925R7+HYlzV2iK0bu2owx8Rxj0tv27EMRcBpeTz0kSEbLOWAL+yiYq+DSB9qqQHki073BEvXTGNMpGBS9STTNiOVMGCK0jH1VJHX+9oi5j3WucF5UI5idF+UBXYnJAH/Fa2qGiRLjLDFF0r0Ov8vxLvTywC7BSEjR+luW3p9Dg5qmJFmWkmS5m3DnmniMMIBMDoo1Mn57MoeOBCEtKaC07MH/+738uAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0Sx3F7jYLRW2ZdEgJB6FdgGlu6X7ScBPBzUSEA0gSw=;
 b=at39Az4NEUVbq2+M9nXeyPgsFdkExfQiOhbifRqP4NAKnm47UmmSUZbIAPRNmTpXcdsowg06sGN+An2l6lu1TnxWDubBEu3/iyKohICReOHXGxN5G4rPZO8xPcSTua1mxP9WmK7AZcsI0rqDx/TcdPmJqOGOVOvb70KCGWh0ilIFdZ+4GXVBS0Ff/EheDcHp4K3X2X9Zp1ibVb6W6xYMH4WsweUUIiu/eSMaLErWccxXMGKtFY789G/St+VwGr2CJ5M1cSKV6NqhFQK9+lPVqgin9WjVAcQzxHKqewkc/w0bVcX9U5FyHQHbxtd9MHl0ZVm6bORERk4HHQeeJ0OaQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN2PR11MB4566.namprd11.prod.outlook.com (2603:10b6:208:24e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 09:17:52 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:17:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 21/50] drm/i915/dp: Align min/max compressed BPPs when
 calculating BPP limits
Thread-Topic: [PATCH 21/50] drm/i915/dp: Align min/max compressed BPPs when
 calculating BPP limits
Thread-Index: AQHcX8ejx41zF/fi1USRdCB50oF+FbUd0NAA
Date: Fri, 12 Dec 2025 09:17:52 +0000
Message-ID: <7a0168cf31e6ce73aaf6d43b85ab22c0608467ca.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-22-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-22-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN2PR11MB4566:EE_
x-ms-office365-filtering-correlation-id: 5d747655-6f92-4fe5-0d56-08de395f53ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Y2ZlcjBNb0ZwTE8rUzVyclpndThBK0daVUpJWjVSRW9wRFVqUXJBQk92N09s?=
 =?utf-8?B?Nk1FWUZRTHdubXVhRmlBTkFRUTk2U091YkcvdWxFYktZT2R0QnVrY3FXQjhY?=
 =?utf-8?B?Y2RpZHd1RzJyMzd2UnloNExnVWFhYU1CSEZlZlFlaWxhM0FKOVc5U2pJSEFh?=
 =?utf-8?B?UHpDeXJGMm96bzN2WmZlTWdFTk5ONlFDbDFOaFRaNjdxNXVXVGU3WG03Zk9z?=
 =?utf-8?B?NHhLc2xKeEU2aFIyakJCdHBNUDdmRCswU3g3Nlk3Nmt5cWJaWlJRQk1GQzFw?=
 =?utf-8?B?RjVjUlVzUmdCU1lzeklDV3VoSEFoR2g5UFNCOFd1SG8wdDJaNW1UUUpTOHQ3?=
 =?utf-8?B?RjdORUdrOGNRQmhya3V0dkFBWllDeUdUQ3RhSEZ0Q0NOTDVYTW9NZlZPdEJM?=
 =?utf-8?B?dU0rdmo2WVdyNEJiTlRKWWtCR1NhdEdFaUJjSEpseFBUazl1Wi9CazZlYW9I?=
 =?utf-8?B?eDZGaDdUeFpwL2J0MDNrS01KMHlkRHRjMUsvUjZ1bVFteEtWQ1hpMUVDK0o0?=
 =?utf-8?B?dlNqb0s5d1h5WU02UnRCUkVVbGtwN041c1ZzQWJvK2o3YWFHRFBNL1JCbjNz?=
 =?utf-8?B?bUIxbUhHM0E5TFd2ZEV5TlNQRXhTRTB0N3RlaDFTMmp4N2NMSUVHZDlURjgv?=
 =?utf-8?B?amVna0dVQ0lDUDZPdmlVMHdXVTdKTEFaL1lCdG5tOGhnaU9SMDRSazhHa3pB?=
 =?utf-8?B?ZG1HNktKbTNQY3A3ZmhYYjBEbVduQTEvdzlnVEVCSmxCNVhKTTZEUXlYeHNJ?=
 =?utf-8?B?Z00vRDdacWp1SkpLQTIxY1ZLWmtiUkNGbmMxaXpveFRMejM4WHc5bVdDZFNy?=
 =?utf-8?B?Mm9BUjhKdy93VUpwc1ZyazZIVnIwMXI0eDhRZnQvaHpmYXIrTllMWWo4aER0?=
 =?utf-8?B?OUU1Q2hPZmNIdVovR3NIUU5KdGRyRXlIQ2crOTloVmUrc29ZT2dYS0ZUeW5W?=
 =?utf-8?B?SkhIVGNHbFhLYmszRUxBRDFpeWJUVUJBekt6aDVvcklUaDNmVGVJcUYvS2pq?=
 =?utf-8?B?YVVpRURkRXVHTVdMRzNUczlZYnhhSFZSVk5sU281eFFicXc1Ni9oR0U1Umcw?=
 =?utf-8?B?OVgzUTVnRkZXMzRuU2JFcjZnYkhJQ3NwNW9WbWlsR2krYTZuRmZ0WjJBc0Nx?=
 =?utf-8?B?SmxxUjlYdmFWOHR5WmVXcXhwaFRjWFlFK3Y3VDh3TUxzYUlMa1FxN0l0a2pG?=
 =?utf-8?B?dnZNekVxU3ZUcTNiUUZ4ZXEwOXNQSlZoVE5hRVpwWE9OU0tkekxzSWcyMXB1?=
 =?utf-8?B?QjBCaUFkTTdlRlk0VFp0L1NqNkpFazlDOGQ2WmRXbjRoWlJ4ZzNmVktsRFZl?=
 =?utf-8?B?TnY5V3EvdEZ0T1VwWm5CYnF4cEZncktWdjJDdEtvUXNKSGNLZmxmRE1XdUw2?=
 =?utf-8?B?K1NGR0U4a0hmZVJSdDgvYlB4UEVYb1hPMmRiaGVzTCs0Z3hXdGlWYmZKQVly?=
 =?utf-8?B?MElVRmd3MlN3MlVoV1R2UW04bFQxeG91N0gxNlVreUlEWDdjaml5d2hsNS9m?=
 =?utf-8?B?UmZHM1lPQXR4VStHQ1hMSzE3aFVyYWtwVU1GRjQ4a04ya2U0NlRYdVNZMS9r?=
 =?utf-8?B?SGRseWIwQktyR3B4UUJxTVlmWWtnR0VUbVR4Y0dFSFZQVEZIR2VUa2IrdHNl?=
 =?utf-8?B?eDZpd09jMUhVakF1QUM1K1hIQWI5K3BCVjFxdG5PNDdOTGVCeDlyQmtJQWVv?=
 =?utf-8?B?TTd1Uzd4SzVKSXJKSno1UGpyQ2RaVG5lSUhlenlia2szYS9PWWF2WGRGeE9R?=
 =?utf-8?B?a01OanR5UVY0VDBzTTNyUW9oUmxjS0J3OWM0QWtJSU9lZGVlT0t3dEtuQVZR?=
 =?utf-8?B?QUNZTnJpWHpqR2l5U3dNVmJsVUNudTVMMkZtcDFPZEJHckV2djFIckJybEhL?=
 =?utf-8?B?NGVFTzlvTUZUbmFjVWw3ZVQ1L0lCMW42SG4rYUNEUWl2NzRROTdIcTlZOTc2?=
 =?utf-8?B?bGhtN0pTL3c3VC9GVU5wWkxteDQvbE1OL1VpM0thRzd4azd5bmNsQ1UzeTM0?=
 =?utf-8?B?VlpRSC8wZTlVTzI5eDNYbzNQRHkrMWNUS21YazBiWHl5TmtWTEk4Y2FScG5L?=
 =?utf-8?Q?kfy/dL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VW44Y1FqNWtWTlh3cDFnNzFkVlhqTFIrWjBmOXZidFpHdzdLSkd4U2tadlNi?=
 =?utf-8?B?WWtoNVgybUpCRUVPZVRwWnRST21tcllGd2FWa3BhbGg2aExSdTNVWWh6V0kx?=
 =?utf-8?B?Vk1wZmZ3REI0Zmg2SXp5Um4zQVptbXFwMldmWHhHd28yekY4SEtUT1h0aDBE?=
 =?utf-8?B?S0IxN2FucS9ydFJLb2RKRlJlQVFPOFg0MVJ0VS9RaCtSUkRZZEI5SWJObFVi?=
 =?utf-8?B?THdwZXNzRDVvdm1UOEVaNExIR1FRcHZjRkUvaDd0TytpcHZwVElYUi96SDVU?=
 =?utf-8?B?YS90dGRBNUtpY2xtclJnaWQ1R2JEcFJzOHhOZkJMK1lPNzlpQ2MwdzJtRWYx?=
 =?utf-8?B?d1RCTFk0MEZFUGp6RWthL3ppS1d4Y21XMDRicVNtejY3YmlRcEsxQytVbmNY?=
 =?utf-8?B?TmxHeW1BZ0twb2dRbkcrUzZHVmJvVkxhU0V1ODI2amdkZjg4YTgyYTB3U2hm?=
 =?utf-8?B?ZDQzWm8rSk1BWmI3eWVnRFBhN08rZHpNMng4TkxQSExud3BEQ3pla1R1SjhC?=
 =?utf-8?B?OTlKMDliSDBtaFlTUGtxT0RtRU4vUEtCUStqbFUxRnJhcGhNRnhsLzBYMWtV?=
 =?utf-8?B?S2ZkK2NXaVA3Vk9YbWd5MDkwU1dMQTBrck5JaFp1Zmh0M2l2S2ZSUFBBUWpq?=
 =?utf-8?B?WGVMRElWNEpiRy9RUnBFS0tUVU82eE9lNWlQclRqWWxORWdManBKWHBQRXlO?=
 =?utf-8?B?bExKRGR0NHFHazFrMmpYa2ZleG01VHRtRkpYVnNMODVmSDlxOWNXUElaZUJU?=
 =?utf-8?B?WGFMV21WS05CK2tFRk4vNkIxUk5VT3hqT2phUXNnT1N2bGJZem15blNwS1RD?=
 =?utf-8?B?ajhZVzh5VWc1YllVZW9HYVBCNG56TG9rQVVEZEo5YjlFZ1lBU1ZBT3FSN0NB?=
 =?utf-8?B?Vit1eHhzZkVuZmhmMUZ5RTkrRzlJUE9vNTNQRWxZeFRlTFlzT0I5Q211ZWlX?=
 =?utf-8?B?WnBROVVUam5WcFdsMUJvS3lMblgwNi9wTFM2QmxxK0RPWFU3UmxwRk9FeW1I?=
 =?utf-8?B?cGg5QXhOVURMd1dhRkRjVFQxUjNMZEh6NFE0ei9Ob0ZURUhobHJQV2lXSEg3?=
 =?utf-8?B?VDZYeS9JVTd3MUhUYVAyR1VVK3hmODU3QnhLQXNKakNpMEJtOW9LSklyUWhD?=
 =?utf-8?B?dWE1amRWSnVCUy8wS2RFWW1lOUV3Z0ROWkVvY0ZMWWkyV3gyNVZiV3BQV1VK?=
 =?utf-8?B?SW15bFl6QkdZMHBJRUJvTlRoZXZ5K2gwOWs1WFJwQUNYRWh5R2VHYXhybXR3?=
 =?utf-8?B?aCtEVWQ0SXB2SkthZDhJZXdTWktxbG9JOFdCQmY3UFlKKzVvd2s1cjVXRk54?=
 =?utf-8?B?dEVIWXJWbUR2RXFzSjIyY29lcmh4UWFpbjVMQzZPYlhBYkdlR3BzQ1l0NER3?=
 =?utf-8?B?ZzdObEovUW11QmcyU1ExK0FQR1RYTENjcFRuU2loRU96L2YvS3BqVjZTTjlq?=
 =?utf-8?B?UnN0NGNLNXJhcGtOTGJJYlhtaHdlV3dweDZYZG5GR3duck4zZzJWcmpBT0Zz?=
 =?utf-8?B?VERUbUZFOHdDTXl3M1Y3dGdDa05DVVZyVWh6aDBQNEdvVEowdnNoQlNTU1hh?=
 =?utf-8?B?SFgvN3h4RmVMVnRDNVpUSDFQWWZRZWswU0UwQitKazdZTW1DR0phcFh1SDN3?=
 =?utf-8?B?aTB2M3FSZi9SYjdPRkF5dTlpTXhGSnZaRitlOTA3VmVRU3VtaDNBalprTzY0?=
 =?utf-8?B?VGtNcVBNalRQZzdVZU1NY1dUeXErRVJ4MS9DaERTdjdKbVAzWCtuMVFPdE1K?=
 =?utf-8?B?OVhsaWNmNFVDVVRsSW4wWkMvTDFhQVpmT0tjRFBBSi9YcFVTN3J6VjJ6b2xh?=
 =?utf-8?B?RFh4TTRmNHpMSjg1V0ZjR291bUJJMTNkS3F4YndQbHJjNldoM2UvV1p1MlpY?=
 =?utf-8?B?Q0dJSGI5UnNEeWd5L1c4T0lidUNoVWIzZnJGUFdMSE0xaGNONVhnRzFYclFT?=
 =?utf-8?B?QkNXbDE3Z2g5R0dCcVI4Z1I1VS9EWDQzK3dETG5yRXRzUHNBMXlMUkpNVy9D?=
 =?utf-8?B?QWJ3cU5mdVliQnFPZGs1ZTlmZGFpV24ybnEvS1ZpNUpwZHF1N2s4aE9JcmJp?=
 =?utf-8?B?ZUNoTkNlWWpPeStCYUNmbU5razlEMkN1bkhkTkFGL2x3dGdpNTNkWFVQVXBD?=
 =?utf-8?B?Qk1QN1ZzVDk1NXpEOVlJbG5UcnE4N1RSSHd3WEhYZXpyYW5QeitVeHZXK254?=
 =?utf-8?Q?ygcrJg1hP8puFAH1Fg0IRck=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <15E34B2D8BA98448AF72941F440443A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d747655-6f92-4fe5-0d56-08de395f53ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:17:52.5565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MxwLTvPFvTF/DK9WtHEAZ91rFgT/l4G2s3TfoOwW9Y+P6TOQM6kR8UeZNkKv1Qoiv9UDrSLQXPJpzQ9S4G+e4LueLnL4MM3agRrmP0i1GIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4566
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFs
aWduIHRoZSBtaW5pbXVtL21heGltdW0gRFNDIGNvbXByZXNzZWQgQlBQcyB0byB0aGUgY29ycmVz
cG9uZGluZw0KPiBzb3VyY2UgY29tcHJlc3NlZCBCUFAgbGltaXRzIGFscmVhZHkgd2hlbiBjb21w
dXRpbmcgdGhlIEJQUCBsaW1pdHMuDQo+IFRoaXMNCj4gYWxpZ25tZW50IGlzIGFsc28gcGVyZm9y
bWVkIGxhdGVyIGR1cmluZyBzdGF0ZSBjb21wdXRhdGlvbiwgaG93ZXZlcg0KPiB0aGVyZSBpcyBu
byByZWFzb24gdG8gaW5pdGlhbGl6ZSB0aGUgbGltaXRzIHRvIGFuIHVuYWxpZ25lZC9pbmNvcnJl
Y3QNCj4gdmFsdWUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDU3DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgNTcgaW5zZXJ0aW9ucygrKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IGU3YTQyYzllNGZlZjEuLjgwMWU4ZmQ2YjIyOWUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTg2Nyw2ICs4NjcsMjAg
QEAgc21hbGxfam9pbmVyX3JhbV9zaXplX2JpdHMoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRp
c3BsYXkpDQo+IMKgCQlyZXR1cm4gNjE0NCAqIDg7DQo+IMKgfQ0KPiDCoA0KPiArc3RhdGljIGlu
dCBhbGlnbl9taW5fdmVzYV9jb21wcmVzc2VkX2JwcF94MTYoaW50IG1pbl9saW5rX2JwcF94MTYp
DQo+ICt7DQo+ICsJaW50IGk7DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh2
YWxpZF9kc2NfYnBwKTsgaSsrKSB7DQo+ICsJCWludCB2ZXNhX2JwcF94MTYgPQ0KPiBmeHBfcTRf
ZnJvbV9pbnQodmFsaWRfZHNjX2JwcFtpXSk7DQo+ICsNCj4gKwkJaWYgKHZlc2FfYnBwX3gxNiA+
PSBtaW5fbGlua19icHBfeDE2KQ0KPiArCQkJcmV0dXJuIHZlc2FfYnBwX3gxNjsNCj4gKwl9DQo+
ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBpbnQgYWxpZ25fbWF4X3Zl
c2FfY29tcHJlc3NlZF9icHBfeDE2KGludCBtYXhfbGlua19icHBfeDE2KQ0KPiDCoHsNCj4gwqAJ
aW50IGk7DQo+IEBAIC0yMjYxLDYgKzIyNzUsNDAgQEAgYm9vbCBpbnRlbF9kcF9kc2NfdmFsaWRf
Y29tcHJlc3NlZF9icHAoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwgaW50IGJwcF94MTYp
DQo+IMKgCXJldHVybiBhbGlnbl9tYXhfdmVzYV9jb21wcmVzc2VkX2JwcF94MTYoYnBwX3gxNikg
PT0NCj4gYnBwX3gxNjsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgaW50IGFsaWduX21pbl9jb21w
cmVzc2VkX2JwcF94MTYoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9y
LCBpbnQgbWluX2JwcF94MTYpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9W
RVIoZGlzcGxheSkgPj0gMTMpIHsNCj4gKwkJaW50IGJwcF9zdGVwX3gxNiA9DQo+IGludGVsX2Rw
X2RzY19icHBfc3RlcF94MTYoY29ubmVjdG9yKTsNCj4gKw0KPiArCQlkcm1fV0FSTl9PTihkaXNw
bGF5LT5kcm0sDQo+ICFpc19wb3dlcl9vZl8yKGJwcF9zdGVwX3gxNikpOw0KPiArDQo+ICsJCXJl
dHVybiByb3VuZF91cChtaW5fYnBwX3gxNiwgYnBwX3N0ZXBfeDE2KTsNCj4gKwl9IGVsc2Ugew0K
PiArCQlyZXR1cm4NCj4gYWxpZ25fbWluX3Zlc2FfY29tcHJlc3NlZF9icHBfeDE2KG1pbl9icHBf
eDE2KTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgYWxpZ25fbWF4X2NvbXByZXNz
ZWRfYnBwX3gxNihjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+
ICsJCQkJCWVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdA0KPiBvdXRwdXRfZm9ybWF0LA0KPiArCQkJ
CQlpbnQgcGlwZV9icHAsIGludA0KPiBtYXhfYnBwX3gxNikNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gKwlp
bnQgbGlua19icHBfeDE2ID0NCj4gaW50ZWxfZHBfb3V0cHV0X2Zvcm1hdF9saW5rX2JwcF94MTYo
b3V0cHV0X2Zvcm1hdCwgcGlwZV9icHApOw0KPiArCWludCBicHBfc3RlcF94MTYgPSBpbnRlbF9k
cF9kc2NfYnBwX3N0ZXBfeDE2KGNvbm5lY3Rvcik7DQo+ICsNCj4gKwltYXhfYnBwX3gxNiA9IG1p
bihtYXhfYnBwX3gxNiwgbGlua19icHBfeDE2IC0gYnBwX3N0ZXBfeDE2KTsNCj4gKw0KPiArCWlm
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMykgew0KPiArCQlkcm1fV0FSTl9PTihkaXNwbGF5
LT5kcm0sDQo+ICFpc19wb3dlcl9vZl8yKGJwcF9zdGVwX3gxNikpOw0KPiArDQo+ICsJCXJldHVy
biByb3VuZF9kb3duKG1heF9icHBfeDE2LCBicHBfc3RlcF94MTYpOw0KPiArCX0gZWxzZSB7DQo+
ICsJCXJldHVybg0KPiBhbGlnbl9tYXhfdmVzYV9jb21wcmVzc2VkX2JwcF94MTYobWF4X2JwcF94
MTYpOw0KPiArCX0NCg0Kd2VsbC4uIHJldHVybiBhbGlnbl9tYXhfdmVzYV9jb21wcmVzc2VkX2Jw
cF94MTYoLi4uKSBjb3VsZCBiZSBwbGFjZWQNCndpdGhvdXQgImVsc2UgbG9vcCIgYXMgd2VsbCBo
ZXJlIGFuZCBhYm92ZS4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5v
ZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiArfQ0KPiArDQo+IMKgLyoNCj4gwqAgKiBG
aW5kIHRoZSBtYXggY29tcHJlc3NlZCBCUFAgd2UgY2FuIGZpbmQgYSBsaW5rIGNvbmZpZ3VyYXRp
b24gZm9yLg0KPiBUaGUgQlBQcyB0bw0KPiDCoCAqIHRyeSBkZXBlbmQgb24gdGhlIHNvdXJjZSAo
cGxhdGZvcm0pIGFuZCBzaW5rLg0KPiBAQCAtMjYzOSw2ICsyNjg3LDkgQEAgaW50ZWxfZHBfY29t
cHV0ZV9jb25maWdfbGlua19icHBfbGltaXRzKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+IMKgCQlkc2NfbWluX2JwcCA9IG1heChkc2Nfc3JjX21pbl9icHAsDQo+IGRzY19zaW5rX21p
bl9icHApOw0KPiDCoAkJbGltaXRzLT5saW5rLm1pbl9icHBfeDE2ID0NCj4gZnhwX3E0X2Zyb21f
aW50KGRzY19taW5fYnBwKTsNCj4gwqANCj4gKwkJbGltaXRzLT5saW5rLm1pbl9icHBfeDE2ID0N
Cj4gKwkJCWFsaWduX21pbl9jb21wcmVzc2VkX2JwcF94MTYoY29ubmVjdG9yLA0KPiBsaW1pdHMt
PmxpbmsubWluX2JwcF94MTYpOw0KPiArDQo+IMKgCQlkc2Nfc3JjX21heF9icHAgPQ0KPiBkc2Nf
c3JjX21heF9jb21wcmVzc2VkX2JwcChpbnRlbF9kcCk7DQo+IMKgCQlqb2luZXJfbWF4X2JwcCA9
DQo+IMKgCQkJZ2V0X21heF9jb21wcmVzc2VkX2JwcF93aXRoX2pvaW5lcihkaXNwbGF5LA0KPiBA
QCAtMjY2Myw2ICsyNzE0LDEyIEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xpbmtfYnBwX2xp
bWl0cyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJCQnCoMKgwqAgY29ubmVj
dG9yLT5iYXNlLmJhc2UuaWQsDQo+IGNvbm5lY3Rvci0+YmFzZS5uYW1lLA0KPiDCoAkJCQnCoMKg
wqAgRlhQX1E0X0FSR1MobWF4X2xpbmtfYnBwX3gxNikpOw0KPiDCoAkJfQ0KPiArDQo+ICsJCW1h
eF9saW5rX2JwcF94MTYgPQ0KPiArCQkJYWxpZ25fbWF4X2NvbXByZXNzZWRfYnBwX3gxNihjb25u
ZWN0b3IsDQo+ICsJCQkJCQnCoMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+b3V0cHV0X2Zvcm1hdCwN
Cj4gKwkJCQkJCcKgwqDCoMKgIGxpbWl0cy0NCj4gPnBpcGUubWF4X2JwcCwNCj4gKwkJCQkJCcKg
wqDCoMKgDQo+IG1heF9saW5rX2JwcF94MTYpOw0KPiDCoAl9DQo+IMKgDQo+IMKgCWxpbWl0cy0+
bGluay5tYXhfYnBwX3gxNiA9IG1heF9saW5rX2JwcF94MTY7DQoNCg==
