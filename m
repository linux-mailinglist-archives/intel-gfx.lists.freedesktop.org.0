Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E81DC1B89B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 16:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B14210E80A;
	Wed, 29 Oct 2025 15:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fEp6YNNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4AF10E812;
 Wed, 29 Oct 2025 15:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761750382; x=1793286382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RuWToQ4zSa9DLgSxzeQou3dPyTf2tdX5a3fYWFns0DQ=;
 b=fEp6YNNKy+tlC/3qai2m3X0ImcoRbvu44rKIbWAXh8zibvrIZnUkBIDH
 /w5Z/PzRcErVjh+TORT94vS9Az4cSCmYK3OfRd33R9yKODongHWMpRAJU
 0HWUv89Vpxev/4lWRa0T+rBetwU1RKv+OBOwfviw2BuEM99iEXJ4X7gWJ
 nHRqDFiX4rJrDT/BXT6fGqGCmyfGuN0pfkK2fCB2JnqaqUEwQhgDUyFYk
 nbhZBLlMB9BUa/Fpm+YX4rfROpABY4jAOmoP+todBWC9JYIiaxRhF/NL/
 557Q3Su8H6rzOIxl0jGMh7pHNRPNZGKcmXrpEhjyJrsJcmzesV8n2cnoz A==;
X-CSE-ConnectionGUID: 7TuwIt9IT0q2XE2M8RT8Vw==
X-CSE-MsgGUID: 0wIT5JQqSPCOISUcC8o5kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="62900039"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="62900039"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 08:06:22 -0700
X-CSE-ConnectionGUID: v9Dv5X6vTZOl+dPmmTxRrg==
X-CSE-MsgGUID: T8FUySAbQ66xsK8S9m20DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="184881920"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 08:06:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 08:06:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 08:06:20 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 08:06:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TEd0dKwwn/A+P0pJhnawxN8AIQD8J+84cj1UpgyJ1TJ9WbchMNAvMjt8P9uNkhsTGsIq8oeorb7GOcrB7MYHrp3sHskjaRxIjpH3WQBGQu6BSQe6U3TOpkEJHv+BJ0MsX09kD6pA6QCkGUH9Lh/EQtnknym1B7wOoE17Fn12RDHu57Uo6737zZ59zJuNRhRCCgZrkXZxmUv44L2E6B8wYNjoq963vFrQwHU9PlZq8mljdXB5eBShTivlOx7VDAgM92MlFBABLbTCfX/FthCwYanZFTf7l+Vu+sNYtPAXoYmweLChRcmxhuMvzx5aBjDCFltESPjKst2Zyyluri8eIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuWToQ4zSa9DLgSxzeQou3dPyTf2tdX5a3fYWFns0DQ=;
 b=wVBAJa6KJ/g48yRQAFoD1DgSIS27xaM3rnj+CYf4zDbdwEdN51j00u90Awk+1Y/YrdGdAHgCl/T2AQqCwD4gKTVVmsKkepCUdSMj8TCT+HrVDLzJ2HCNgHXBgUJqjS4t6lR92PNA90u3kmksRn4S8OHp4JqV4pbCFKatzeCsIZ5KZxQGiaHapgFjjLQLAiJN+SmxIP02Boy8GpptbxMQcRVcshv/rKrPM24tbEHEW6MN+AFKjRAs6fB2oqhbswL6U6cM8z2/KwVSbKohZ2d6WwIgf1RmHuKnlTXk1wLRupWjoDfTF0bFA28e2xaVhfXkOYY0K60jiK08QLPxYhFlBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 15:06:18 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9275.011; Wed, 29 Oct 2025
 15:06:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Thread-Index: AQHcR/8dVuMM2sp4PUKUhLBSeDOg+bTZKlUAgAADNgCAAA2cAA==
Date: Wed, 29 Oct 2025 15:06:17 +0000
Message-ID: <31fe7643845062a133aee5e1b92ac13946d9ffbf.camel@intel.com>
References: <20251028113536.602352-1-imre.deak@intel.com>
 <6a63fe2775f399458527be8d55e781644945669f.camel@intel.com>
 <aQIh_g_gOldmCExP@ideak-desk>
In-Reply-To: <aQIh_g_gOldmCExP@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: c09ee93d-787c-4e60-0dcc-08de16fcb640
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?M0tadzJVdnlnaVB2ZE8yOVJoMkFQY2p1VGY5eGZ2RktPZkptUjNkZVVuLzBy?=
 =?utf-8?B?ZFg0WkRmQ1BrL2N1MTQybCtHSWhFeEtMUTVHd0ZKTnZ0S09HaHhreU5oTENV?=
 =?utf-8?B?TjA4Rkc5dWFmL0JKOVZJOFpUakl4Y0lIVXNURE54cWFzeEF2Qi9tRTcvY0pQ?=
 =?utf-8?B?Y2RWNGxrd1RJaTdRa1k3a2tDdGZ6YnV3aWc5enk1Rm9Td2YyaDBtMXBMTUlH?=
 =?utf-8?B?WTczY3JURmVaQWNTQXBOenVxUkl1SEJ3WnF3ZndTQ0hodEM2N01GeUR0OXJO?=
 =?utf-8?B?T0VjcjBRZ1JiaEgyVmVQY2t3MmVYZU94NUMzUkxzWHdxb0VXTWt5QWs1UWVj?=
 =?utf-8?B?Q04wcmsxMFZ5UXNGZk9uQW5RMk1ydTFuMTJhYkM2OW8xVE52S28xN2lyelA3?=
 =?utf-8?B?VEtCRnViNFVSWDJCTlI5OVBaY2NLalM4V3ZIYWY1dlRtLzU0VDhHUmI1K252?=
 =?utf-8?B?OUtsb1dZMGFLbWxYVmJ3ZElXRHFlMGxNWSs0ekNIYUE4b0NnbUVCR1ppZGxS?=
 =?utf-8?B?QTd0dGUyZk9OL3c3SlNDZHZGUEVaVWR2YmJ5bEpwcENXbHkyYndOb0tDK3ZW?=
 =?utf-8?B?NlNXWmVpWHNiZnEzYmpwQjZyQzdHTjVVcm12TUJpZExnNnlrL2V1VEtBeUM3?=
 =?utf-8?B?MzhKaFVmcXhwRmRTRGlreloybW9FMmY1cGpBWjh2eU00eFRJTXlsaXNNbjFn?=
 =?utf-8?B?RVVEZURLQ0lVOGI4NWZxcTZndDJSV0dlc3l1SXFFc3g4RmxGbkhVZS9WOHR5?=
 =?utf-8?B?SjNmM0NhYWg2S25qSTBibmhzS3lOZ24vcVBxLzNFZ3BXbGVWTjJTbnJlVElO?=
 =?utf-8?B?OGk3cWR1eDJUUlFhZ0svQStxUXlnOGp2UVgwUWwzY2QxTitXUkcreTN5NXdR?=
 =?utf-8?B?cnBaeHJBU0dUcThHV1JTakxlbm9jbTB0NjJjVERqV2tScURySWpzcGFURGpt?=
 =?utf-8?B?NkpKSDdHNEVNRzhmNXV1VmowZDd5UEkzcWF2M1hOVHV1VWI2WmFCaWZINnNa?=
 =?utf-8?B?aW5IYWw1bXVxbG9RSmt0aTl0TC9PL0podkZBZGhDczRzTWxxMlFXamRBWjJT?=
 =?utf-8?B?bWNGTm9qNVhLdDhwT0VZNlQ4VVhtaVhCbW1jTVRZNnRZWDVTTnZ2WkdxQWdj?=
 =?utf-8?B?L2lzSkFsaDJOZ09hdXVHYUEwTEI1cHdtMlIvV1ZYMWRHcnpOSTFvNjBMdjFU?=
 =?utf-8?B?NjN6dzNzclN1akhkdHZvRjZXWjlQVllaRnBGNXN1UElZV2JmaWVha2YrQVFo?=
 =?utf-8?B?Qlh0UzdHK2dHbkY1T3dCRTdRM2ltOTg4c0hzSlhJbDVhRC8wV0phbGNSUTY1?=
 =?utf-8?B?TGhpMnh3UmNRSDJzc2taMUNIMlJMT2NaSVVvM1R3ODhkY3RraStKTTV2TEJJ?=
 =?utf-8?B?eFRUZCtlL3lsMFNsa3k2N3dNeUJ6MldPNjNzNlBCbkI2S1N5YmpHK0pDblVZ?=
 =?utf-8?B?a0MxSlhxbHBiK3dkbHpqYVNGUFVqcW5ORWR1VE9pVWZ2dkVWc3BDZTNqbmU4?=
 =?utf-8?B?dzBrY3UrUE9GM05TUzU1NHN5VUEvcTNTVjA3bVhVbWtHSStPNlEycldzdVpP?=
 =?utf-8?B?czd0MXI1WEJLOGlzOEIyVmZRTldIdWkrTDRTR0RWZE03ekFNc2hrbHpIRXIz?=
 =?utf-8?B?d3VYVldPTTJRbFV6U0dQTVVJWGxpUXFYN3ZNUGdRN0dvTTFUQWlUYjlVOWxJ?=
 =?utf-8?B?NTYrTmwyVXFoeEhqVVdVazFQYjNCYmRZMTVJcFlBa1JuRVZ5S2JMSXM2ZzlJ?=
 =?utf-8?B?NFhmZnNmQjZkT0VaQlBuWjRtS0NsVzRZQng3YmJTa3hFRlBLMjlBcm1lYStJ?=
 =?utf-8?B?RjZWcWlQai84c2c1YU1IZGRDSUpOWFhzS21zUHBXOE1wcWJ4RXZoVzNwb2c1?=
 =?utf-8?B?V1dFa3Zmd3EwN3MyQTdPSUZpRkdyaG9oanM3VmNxeFNiV2kvVHlydTlyYjdY?=
 =?utf-8?Q?/Bhl8KdEzDhsXpvdrOc1OqafvKhvpDz9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUpxeVlmS2FISjYxVldQMkYvVGkvemVGaFNmWXg3NlhNQ2ppWE5sT1ZUeGtu?=
 =?utf-8?B?YlZaQVJ2NDd1ZnlTd2RNWG53dkNjYVhiMzBINXZzZERSYzRocHJFQm9oZzRE?=
 =?utf-8?B?bEt0V2RueE1vTFVuQmhoN3VQYnVjUGRHeEhIVXIvb29nU2dnQ0l6K3dPVlVT?=
 =?utf-8?B?REp6QTJzcmNyYlgyaFExbThKdFZzZG9FMyt3NFNZSWtteEtkd1JwdkpwdnJh?=
 =?utf-8?B?WVB5bGozMi9yMmFKSlZuMFU3blpVS29Rc3RIZ1FqVFhqNnpZQ1BwODhjVGN5?=
 =?utf-8?B?REpHQ2tCVXA1MW1sYUJMSklvdDVTSHd5dUNEUmVmNXNwTFE3ZkU1ZVE5cS9O?=
 =?utf-8?B?SmNidHNDbmkwWEJQc1UzKytoRVgxV3ppWnNmcjBabjB2SkNJdlp1elB5Wm9M?=
 =?utf-8?B?US9MS2FITTVWNHp1cG5QNWliOWdQem83bjZTdm1GZzdNM29OOHkvRW5pc0Ix?=
 =?utf-8?B?SUUvZHY2OElrcHVlQmVIcUUyZVBIMTFLMXEvL3dSTnE2UHE2d25ZMktsNjQ2?=
 =?utf-8?B?dVlwczBqbnVpNE1zcGsyRmVGN0JxVnNueVFDSms1QTN3TDFKeHNaU1dEZmJV?=
 =?utf-8?B?NVhDMUkrV0ViVmg3L0Zrc1Q1dVBpMklYNWFYWWttN3VsUlNZVm9pRWlnc05n?=
 =?utf-8?B?TWU2dEY2MGJ4REloZlpEL3U0d0V4MER3c1NRYjllYlh4ZmpjaTFqUHpTMlZJ?=
 =?utf-8?B?S01vYm1SRXdGZmcyR2FBSmZtaTRGcittRzJBcG9mKzZvK2dCUktHZ1pqOElE?=
 =?utf-8?B?NEpsZGFFTEhaYVlFSjJNdHBWOWVZcDZrQUVoVGlvcUYwNUJFN01DMEJadXhV?=
 =?utf-8?B?cTZMdmIyVkovYkhkYnd1MDJZaXhYN0FSbjBjSTZmUUJVQzMzWmFHczNNUjl2?=
 =?utf-8?B?MWNqZUhqYXdlMDZtWjBZWW5lNjUrQWkrY00wRjRtMTBWUmZyZDZhTlFRZ2VS?=
 =?utf-8?B?UldDdU1tQjF6S1oyanhhZ01Ka3ZuaUtxM0hJS1c4dGp5THNmWGxoZVQvOVZj?=
 =?utf-8?B?RkVwRlltWi9KNDllbWVXMUh2eGdsMktESWhQMFlseUxEbWd2K3g2NWpOdlF1?=
 =?utf-8?B?WGtMbERmSnJwUHlUTFVHa2Q1RHBYRWhneUg2Ly9kb2kyMDdId0VxQXZPVDRl?=
 =?utf-8?B?dDBBV0NkUWd0dmh0cU9BaWZaeWU3MGhvbGtvN3BQRXBvK05ETFRJMWE4c21i?=
 =?utf-8?B?Y3lHOFowOElRQTk0cFQ2d0VMTDlDOWJtakF6VjNwTEt5WmJiajlXTHRkcW82?=
 =?utf-8?B?R1dudS9QRDh5TE9ZYTY5VTRtZzJ1cGlsSDhlalJ6NXFLS3NYaXIzQUtRVlpv?=
 =?utf-8?B?SVBGLzRIdE1vaDFoNTlCSm1UTEFxdExRaWRjTVRuUHRENjVCNFBtUXRBeWha?=
 =?utf-8?B?QUd3M3JJUm9uY0tFbGhtZG5aN0VQNFRIdTU1aGtKWE9DYXpQdXJ1ZXpVVDdo?=
 =?utf-8?B?WEVHUU9OMjhLVWN0Sm52R1FvQ0VhL05aOXFBY0kxb3drYXZBTkV6OEdhdy9Z?=
 =?utf-8?B?VG8wQUkxeERmRmRXVnJsT0lUUERHVVJ2VHIzMElicmp1VzZPcnJ6cTVFdEtU?=
 =?utf-8?B?NWFkRm1rSnZTT0llMURBbUpDZncvRzJ4bXlpS3p6bnV5TW5mR21FNEM3SFJ4?=
 =?utf-8?B?WGNYLzJMWUxieFBqVlFwbHl1MkVsZW5LeWwrRWtYY3lPS3NFVFI0emhONDk3?=
 =?utf-8?B?THRQOG9rUUh4VUJabEtnOEFKWHVTcEtkS1VXaDdCZndTWEdNRjR6M3h6VFJJ?=
 =?utf-8?B?UlhOVmhSKzNJTzMwYnYxUXVZR1N0N0Zzb3YzSW45TmFLSmxYV3Q2V1N1azM1?=
 =?utf-8?B?TlMrcHBVZWV2RkZQTGZPMTRVclIrSUprR1VUVk9QZitnMVJncUtVSlJHSmlU?=
 =?utf-8?B?WnM2V1prMHlpblV0eUphVVIweVJuejlaRFFyYzc3MXRhU3R6SmFGaGY1WWhO?=
 =?utf-8?B?UnB3RCsyVGMrZkxVQjVpa2puSXRnMFlibUVUWkdFRjR5QU1ZelVaUENNV3Bi?=
 =?utf-8?B?ZGlhL1JqVG5nY2ZYUU1mL2s4dFh6bXpPdFdRTTl2RGNLdzdiM0M3SU5IeG8y?=
 =?utf-8?B?anZhWGFwMXo2NDhwZk9WOExseE9STTkwY1IvYUpMSU5Ra2Jvc0Y4a3VOekN3?=
 =?utf-8?B?OVRwR09hMmwyMHc5d1N5QytUZytCMTR5bm1IbllMOVBHdjNGc1pCTFphQ0l5?=
 =?utf-8?B?OHV0TG9XT3QrT1JFN0VZVXhSQU1aajJMSE43ekdTQmZtK1BvdFZPUWQ3Sk1N?=
 =?utf-8?B?RVNzTkMwanFSU1k0VmJXTnVHZXlBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6902EB66B9960A4BA56CC4F045F21121@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c09ee93d-787c-4e60-0dcc-08de16fcb640
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2025 15:06:17.8035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4zgU1jVCoHhCE6ma4QCk7Ymf0KIAsd3NhKxSHbCw00gFooF9CGxYWHDZTK7hzSfsHh2+wHtRcyId+38TWT1e5FS86Vk01+BFY7BZoSD6lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
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

T24gV2VkLCAyMDI1LTEwLTI5IGF0IDE2OjE3ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgT2N0IDI5LCAyMDI1IGF0IDA0OjA2OjA3UE0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMTAtMjggYXQgMTM6MzUgKzAyMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiA+IFRoZSByZWFzb24gZm9yIGVuYWJsaW5nIEZFQyBmb3IgYW4gdW5jb21wcmVz
c2VkIHN0cmVhbSBvbiBhbiBNU1QNCj4gPiA+IGxpbmsNCj4gPiA+IGlzDQo+ID4gPiB0aGF0IHRo
ZSBEU0MgY29tcHJlc3Npb24gaXMgZW5hYmxlZCBmb3IgYW5vdGhlciBzdHJlYW0gb24gdGhlDQo+
ID4gPiBzYW1lDQo+ID4gPiBsaW5rLg0KPiA+ID4gRm9yIHN1Y2ggYW4gdW5jb21wcmVzc2VkIHN0
cmVhbSBGRUMgZG9lc24ndCBuZWVkIHRvIGJlIHN1cHBvcnRlZA0KPiA+ID4gb24NCj4gPiA+IHRo
ZQ0KPiA+ID4gd2hvbGUgcGF0aCB1bnRpbCB0aGUgKERQLVNTVCkgc2luayBEUFJYLiBGb3IgaW5z
dGFuY2UgaWYgYSBicmFuY2gNCj4gPiA+IGRldmljZQ0KPiA+ID4gLSBsaWtlIGEgbW9uaXRvciB3
aXRoIGFuIE1TVCBicmFuY2ggZGV2aWNlIHdpdGhpbiBpdCAtIGlzIHBsdWdnZWQNCj4gPiA+IHRv
DQo+ID4gPiBhDQo+ID4gPiBERlAgY29ubmVjdG9yIG9mIGFuIE1TVCBkb2NraW5nIHN0YXRpb24g
YW5kIHRoZSBtb25pdG9yJ3MgYnJhbmNoDQo+ID4gPiBkZXZpY2UgZG9lcyBub3Qgc3VwcG9ydCBG
RUMsIHRoZSBkb2NraW5nIHN0YXRpb24ncyBicmFuY2ggZGV2aWNlDQo+ID4gPiB3aWxsDQo+ID4g
PiBzdGlsbCBlbmFibGUgdGhlIGxpbmsgdG8gdGhlIG1vbml0b3IgY29ycmVjdGx5LCBkaXNhYmxp
bmcgdGhlIEZFQw0KPiA+ID4gb24NCj4gPiA+IHRoYXQgbGluayBhcyBleHBlY3RlZC4gU2luY2Ug
aXQncyBiZWVuIHZlcmlmaWVkIGFscmVhZHkgdGhhdCBGRUMNCj4gPiA+IGlzDQo+ID4gPiBzdXBw
b3J0ZWQgZm9yIHRoZSBjb21wcmVzc2VkIHN0cmVhbSBhYm92ZSwgdGhlIGNvcnJlc3BvbmRpbmcN
Cj4gPiA+IGNoZWNrDQo+ID4gPiBmb3INCj4gPiA+IHRoZSB1bmNvbXByZXNzZWQgc3RyZWFtIGNh
biBiZSBkcm9wcGVkOiB0aGUgY2hlY2sgZm9yIHRoZQ0KPiA+ID4gY29tcHJlc3NlZA0KPiA+ID4g
c3RyZWFtIGltcGxpZXMgYWxyZWFkeSB0aGF0IEZFQyBpcyBzdXBwb3J0ZWQgb24gdGhlIGxpbmsg
YmV0d2Vlbg0KPiA+ID4gdGhlDQo+ID4gPiBzb3VyY2UgRFBUWCBhbmQgaW1tZWRpYXRlIGRvd25z
dHJlYW0gYnJhbmNoIGRldmljZS4gSWYgRkVDIGlzIG5vdA0KPiA+ID4gc3VwcG9ydGVkIG9uIHRo
ZSB3aG9sZSBwYXRoIHVudGlsIHRoZSBzaW5rIERQUlgsIEZFQyB3aWxsIGJlDQo+ID4gPiBkaXNh
YmxlZA0KPiA+ID4gYnkNCj4gPiA+IGEgZG93bnN0cmVhbSBicmFuY2ggZGV2aWNlIG9uIHRoZSBw
YXRoIGFzIGRlc2NyaWJlZCBhYm92ZSBmb3IgdGhlDQo+ID4gPiBNU1QNCj4gPiA+IGRvY2sgKyBN
U1QgbW9uaXRvciBjb25maWd1cmF0aW9uIGV4YW1wbGUuDQo+ID4gPiANCj4gPiA+IFRoaXMgZml4
ZXMgYSBwcm9ibGVtIGluIHRoZSBhYm92ZSBNU1QgZG9jayArIE1TVCBtb25pdG9yIGV4YW1wbGUs
DQo+ID4gPiB3aGVyZQ0KPiA+ID4gdGhlIGRvY2sgc3VwcG9ydHMgRkVDLCBidXQgdGhlIG1vbml0
b3IgZG9lc24ndCBzdXBwb3J0IGl0IGFuZCBGRUMNCj4gPiA+IGdldHMNCj4gPiA+IGVuYWJsZWQg
b24gdGhlIGxpbmsgZHVlIHRvIERTQyBnZXR0aW5nIGVuYWJsZWQgZm9yIGFub3RoZXINCj4gPiA+
IG1vbml0b3Incw0KPiA+ID4gc3RyZWFtIG9uIHRoZSBzYW1lIGxpbmsuDQo+ID4gPiANCj4gPiA+
IENsb3NlczoNCj4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9r
ZXJuZWwvLS9pc3N1ZXMvMTQyNTQNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgOSArKysrKysrKy0NCj4gPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gDQo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ID4gPiBp
bmRleCBhODQ1YjI2MTJhM2ZhLi4yMWE2MGI4Yzg4MGVlIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4gQEAgLTI5OSw3
ICsyOTksMTQgQEAgaW50IGludGVsX2RwX210cF90dV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4g
PiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgCSAqIGludGVsX2RwX25lZWRzXzhiMTBi
X2ZlYygpLg0KPiA+ID4gwqAJICovDQo+ID4gPiDCoAljcnRjX3N0YXRlLT5mZWNfZW5hYmxlID0N
Cj4gPiA+IGludGVsX2RwX25lZWRzXzhiMTBiX2ZlYyhjcnRjX3N0YXRlLCBkc2MpOw0KPiA+ID4g
LQlpZiAoY3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSAmJg0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBJ
ZiBGRUMgZ2V0cyBlbmFibGVkIG9ubHkgYmVjYXVzZSBvZiBhbm90aGVyDQo+ID4gPiBjb21wcmVz
c2VkDQo+ID4gPiBzdHJlYW0sIEZFQw0KPiA+ID4gKwkgKiBtYXkgbm90IGJlIHN1cHBvcnRlZCBm
b3IgdGhpcyB1bmNvbXByZXNzZWQgc3RyZWFtIG9uDQo+ID4gPiB0aGUNCj4gPiA+IHdob2xlIGxp
bmsNCj4gPiA+ICsJICogcGF0aCB1bnRpbCB0aGUgc2luayBEUFJYLiBJbiB0aGlzIGNhc2UgYSBk
b3duc3RyZWFtDQo+ID4gPiBicmFuY2ggZGV2aWNlDQo+ID4gPiArCSAqIHdpbGwgZGlzYWJsZSBG
RUMgZm9yIHRoZSB1bmNvbXByZXNzZWQgc3RyZWFtIGFzDQo+ID4gPiBleHBlY3RlZA0KPiA+ID4g
YW5kIHNvIHRoZQ0KPiA+ID4gKwkgKiBGRUMgc3VwcG9ydCBkb2Vzbid0IG5lZWQgdG8gYmUgY2hl
Y2tlZCBmb3IgdGhpcw0KPiA+ID4gdW5jb21wcmVzc2VkIHN0cmVhbS4NCj4gPiA+ICsJICovDQo+
ID4gPiArCWlmIChjcnRjX3N0YXRlLT5mZWNfZW5hYmxlICYmIGRzYyAmJg0KPiA+IA0KPiA+IFdo
eSBjcnRjX3N0YXRlLT5mZWNfZW5hYmxlIGlzIHNldCBpZiBpdCdzIG5vdCBnb2luZyB0byBlbmFi
bGVkIGFuZA0KPiA+IG5vdA0KPiA+IGV2ZW4gc3VwcG9ydGVkIGluIHRoZSBjcnRjIHRoaXMgY3J0
Y19zdGF0ZSBpcyBmb3I/DQo+IA0KPiBJdCBpcyBnb2luZyB0byBiZSBlbmFibGVkIGFzIHJlcXVp
cmVkIGJ5IGFsbCB0aGUgQ1JUQ3Mgb24gdGhlIHNhbWUNCj4gbGluaywNCj4gd2hlbiBhbnkgQ1JU
QyBvbiB0aGlzIGxpbmsgdXNlcyBEU0MgY29tcHJlc3Npb24uIEl0IGlzIGFsc28gc3VwcG9ydGVk
DQo+IGJ5DQo+IHRoZSBsaW5rIGFzIGV4cGxhaW5lZCBieSB0aGUgY29tbWl0IG1lc3NhZ2UgKHRo
ZSBDUlRDIHVzaW5nIERTQw0KPiBlbnN1cmVkDQo+IHRoaXMgc3VwcG9ydCwgYWxsIHRoZSB3YXkg
dG8gdGhlIHNpbmsgRFBSWCkuIEl0J3Mgbm90IG5lY2Vzc2FyaWx5DQo+IHN1cHBvcnRlZCBhbGwg
dGhlIHdheSB1bnRpbCB0aGUgc2luayBEUFJYIG9uIF90aGlzXyBDUlRDLCBoZW5jZSBubw0KPiBu
ZWVkDQo+IHRvIGNoZWNrIHRoZSBzdXBwb3J0IGZvciBfdGhhdF8gY2FsbGluZyBpbnRlbF9kcF9z
dXBwb3J0c19mZWMoKS4NCg0KVGhhbmsgeW91IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4NCg0KUmV2
aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+
IA0KPiA+IEFsc28gdGhlcmUgc2VlbXMgdG8gYmUgdmVyeSBzaW1pbGFyIGNoZWNrIGluDQo+ID4g
bXN0X3N0cmVhbV9jb21wdXRlX2NvbmZpZy4NCj4gPiBEbyB3ZSBuZWVkIHRvIGNoYW5nZSB0aGF0
IGFzIHdlbGw/DQo+IA0KPiBSaWdodC4gaW50ZWxfY3J0Y19zdGF0ZTo6ZmVjX2VuYWJsZSBpc24n
dCB5ZXQgc2V0IGF0IHRoYXQgcG9pbnQsDQo+IHNpbmNlDQo+IHRoZSBzdGF0ZSBjb21wdXRhdGlv
biBzdGFydHMgd2l0aCBhIHplcm9lZCBDUlRDIHN0YXRlLiBTbywgdGhhdCBjaGVjaw0KPiBzaG91
bGQgYmUgcmVtb3ZlZCAoYXMgYSBmb2xsb3ctdXApLg0KPiANCj4gPiBCUiwNCj4gPiANCj4gPiBK
b3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+IMKgCcKgwqDCoCAhaW50ZWxfZHBfc3VwcG9ydHNf
ZmVjKGludGVsX2RwLCBjb25uZWN0b3IsDQo+ID4gPiBjcnRjX3N0YXRlKSkNCj4gPiA+IMKgCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPiA+IMKgDQo+ID4gDQoNCg==
