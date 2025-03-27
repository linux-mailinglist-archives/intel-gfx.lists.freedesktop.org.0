Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13004A72E42
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C8910E8AB;
	Thu, 27 Mar 2025 10:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f114NngP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1284210E8AB;
 Thu, 27 Mar 2025 10:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743072954; x=1774608954;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDYzn/ptXzTnItYN9fuXBhzcU2RI0y6QknOsS9pwGHE=;
 b=f114NngPTK+Bgvv3IMw3PRLwkX3V89vGQi8FieT+7p604YqBP6CUFkjI
 2oCsZuy8DvFj8lQbTZfy036fKG+T+qeo5sklBVPpnjIxx20ANXwdBK/nu
 5EAF8bE3fuG+HNHLb7ijBE8E7oqabV1jt70PwVJk7B2+WZG64YJ+jFJ4E
 Yzgdbtb4Uh/aTTzwnoOLEACiObjesBUGkZmCIugUkzbTpgFRIcTP0CR21
 9iHrGKZq1S7RnaJ23Ks21V9g+x3PCwmdslUJU4+Jknx5sECsmSKG4eStC
 2s3a17AA86LcBgaleTO2Pil4KDFOhfM2Azwg2ddo4lvFFERb67m4j1cVf A==;
X-CSE-ConnectionGUID: baus6EdGQb69JLB+jggnEg==
X-CSE-MsgGUID: BYONTbzUS0KfB2SJ6R9vZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44555170"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44555170"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:55:53 -0700
X-CSE-ConnectionGUID: Y/tzkuWbTsmeZmUVMvs+NQ==
X-CSE-MsgGUID: yrxHAeRzTK+nwlDl1YsevA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="129260124"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:55:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 03:55:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:55:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:55:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TG4tudqrB2lYJgUvM+ibgH4m+FXveSFSuSBsFsKSynexDHZoCq6VcDCqirk87AhGuKvFfz0JHnMS0VRbBcn2DXnbj/44QRoUQXhp5hMnWUoiTezfbd1JqqmXXmML9vWrNz9aexGuc2ovF62e+gaEf9X1N2eVPq42x25DJdBPPw4GUNzu5iKNEFAwtBagpMsxv/LGnGYkscwrBUuuRy/frFeSHrhgheNrfOIfFCqdovKCnhzvnPsuB+MtYRw/ChyH51udIk1iP/GrGeXofopvyrlQKVyHvxR5xMu/MrPJv6ZdPoWQDieHrk/CzBz3R3wihlobbcWyp0C31ADqJfc9Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDYzn/ptXzTnItYN9fuXBhzcU2RI0y6QknOsS9pwGHE=;
 b=eieZZ7/VRfcSUzxHPSTngrCS4BzBH9AT8xI5CKaBuiS42XWOio82dMRyPp+cqWSDsfd7PyMrSFL5GpMdRC0MiNRHklwP0zOevibDJkobH/6wF4cjF5jB4Kglqbru15Np0WYjiShYicb90QvDaIYn22VQJSpsZpOTA34QDzOllmRiEJUIyrkx1xZ7fxfTV7/NrM7gkuU89mmIC7BQ6a6+rHe1GpdvfRqlkgCC9XcKoD1Ul7I3bjAi2z+ngtlenO0q5tqKzq/lzQLWzIadSgNFI9NxBK9TSBphkuh7ESgsBAfJ2rZZdQLQMi5CAJ9trn76qjHnnDvpryb7tO9yepXaVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by SJ2PR11MB7647.namprd11.prod.outlook.com (2603:10b6:a03:4c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:55:50 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:55:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v6 8/8] drm/i915/lobf: Add debug print for LOBF
Thread-Topic: [PATCH v6 8/8] drm/i915/lobf: Add debug print for LOBF
Thread-Index: AQHbmQZwtWVVCwI8l0GHPASGXaoazrOB8zSAgAToPLA=
Date: Thu, 27 Mar 2025 10:55:50 +0000
Message-ID: <MW4SPRMB0056C826071D7DCB0C1741DEF9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-9-animesh.manna@intel.com>
 <5df74e9d7274a91c4f42c9318131fc3c9e863594.camel@intel.com>
In-Reply-To: <5df74e9d7274a91c4f42c9318131fc3c9e863594.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|SJ2PR11MB7647:EE_
x-ms-office365-filtering-correlation-id: 4bdf2f84-9f34-426a-a8e8-08dd6d1df023
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Q2VmeVB0bkljb3lveWNHeS82ZDNjcE9hOVB2UThtY285bkxBVVMybkJSbDM1?=
 =?utf-8?B?TDVLbDRIQVhZZmRYYkZmOUh6T3NsVEZjdUhSaTBhR0M0Slh1UFRScG5vMm1W?=
 =?utf-8?B?ZHk3VFh0Y1M4dkdmdUd2aUNXc0hnTzFjS1JVMUhaaGVKaFVpUTBZNzRaaU5J?=
 =?utf-8?B?eW9sRldKMGFTSUFMQmRnOVI0RDBWT0lHblBoYmJIQ2dSVWhiY2xRU1Ruc21k?=
 =?utf-8?B?dWZSSHQwc0JWYW9iK2JHRVFvMHpoRVRRVjNtRG9yQ1hER2sreEozMXdFM2dl?=
 =?utf-8?B?Z2N0Ylc1ckdTUUU5aVVKRzZMcFdvTlgrVlBzc2J1dUdMS3Q5N0dHMm9RR3B3?=
 =?utf-8?B?VTJXbHRFSFdqazRvWklUSFpDVk5RTEtoaWFJbVV4MVV1VERMN3B0bG1Tc1pW?=
 =?utf-8?B?T2tjZGxLa2pIa2pCWUpUTjZIc1pXaTQrQnltcW5URE9qVGJTVmdJK2xOYm8y?=
 =?utf-8?B?enBwY2ZiOG9CRWhjelZOMHhNbmlMMDUxQVAwdE5aYjRNd2JPcDBRVU1hUGM0?=
 =?utf-8?B?VkdSc3pSdU5JaGl1ZTlkY0ZqNlpVbmptYjNhMThucXBpVjNudFVsemdtMHhi?=
 =?utf-8?B?WG9udVU0U0h3K1g5WHU3aWxnRk1sUjE3eW1IcXlwbU1NR3REamJOd0RoMWRE?=
 =?utf-8?B?L0Y0VHNzcm8wVEdyL2RxN2NsSFNpbTFjQ29NZ2FaYkJsdG82Y3h3U2h2R00w?=
 =?utf-8?B?c3d5NHdvOU5hZGNlNWlpMlVBRGNUaUE1WUkyTUNycStxcTVIblBYWlBoNjRp?=
 =?utf-8?B?SmRwRmRqWGhSNmp3QjJicmc1MStkZ2lwM0xLSXpuTlV1aFA1NG9CbWhCSnBp?=
 =?utf-8?B?NHBwcVRhektnZ05zRktaYlI5OW9IWWdqUnFXSHpYejVFNFVDSldNQUI3dUVC?=
 =?utf-8?B?ZmwzdWJqTzRlN0RhREtKMkRKUzdCM1VLczV0ZDhLRXI4ZXIxeTZMMEdaVUpv?=
 =?utf-8?B?SjZIMDQrT2c1ZlRIdW5PVGNDMzFHbmt5alZJeGVpVk9xWEpYTU9pcmt3YWVx?=
 =?utf-8?B?c0x4Tk9xTmw3TkhCSkgyMWUvRGdWVHJ4MEVCczJVb3M1WUxCQ3pIR0F2WE14?=
 =?utf-8?B?ek5wdDF2VGZwVUV0R3ZZK3J2bDA1Ym53bW5ONlI5ajlZQ0NybzRxSFRjeW9k?=
 =?utf-8?B?RzFYbEcrYy9ZVWxVeFVxOVRqNTQ2RUp0UFNhTnBxbHgvWDBVVzZUYm0rclBD?=
 =?utf-8?B?aXcyOVRqclNYYlhPelo1ZzlGbjE4KzJ5L0ZsVUdDMG96eFBhNFRBNDgzNzVB?=
 =?utf-8?B?WTNNTVJTWUN6bDhOWDkxS2R5TUpPNk1zakNpcDYvK0c0OVVqbkhiKytUdEEv?=
 =?utf-8?B?eGhaY3IvcmpnQmZkZnJMVEx6bG5CYlBjQnNFTTJZcS90SDdOZHZQakxQd0k1?=
 =?utf-8?B?eE1VVkpFZ0hQWGxkbDJDVVczODVDd1U1b0xoUkpxSTR1enVlQXptSlJzcThV?=
 =?utf-8?B?WkNraExPVEFnT1NWT1g3MDNETFdaeGVLd3BMWjk4VTJjWVEyR09keVgrclA2?=
 =?utf-8?B?ckIyNEMvdDFxOE1FQmMyU3VOQ1htVExUKzJiWHVEaUlrMFl4cFl5RHJHSnYr?=
 =?utf-8?B?ZmxPc1lzQWpjS1ZoK2VvZ05TMEt0MDJwN0poTkttZDlFZXVwb0tINDl2M2ph?=
 =?utf-8?B?TXE4Q25UdUFJVjY2TENxNmNxNjNFNXJvdjJxd0d5dGJuczJLWlRWL2RBWDVK?=
 =?utf-8?B?V2R3RTArdW5XZUFOWmxjeEhva0YxYk9HcE1PZEJydGloMU5Oay91MmV4RXVI?=
 =?utf-8?B?aWVTZFVoYlA1WWdUdllYekNFTmlJRGxEbmtYeC9xQzdtc0hBL0dFaTgwMFI1?=
 =?utf-8?B?V0orUmRjUTF0OEIreEsySGdLTXM5RkNrOEVNbjk3ZkJiQmxHZzdjQWFmT1U3?=
 =?utf-8?B?azA4MVJ3UjFEM2MxTDFQcFFVNnpna1R1alpaVzQxdFZDSlMxQ3VMOE1rSXhX?=
 =?utf-8?Q?l3XZQcT21FoWAHwK/7OH3Sucs+PZN23q?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2N0NVVtQ1RSWXc2ZzNOSGM1ajUzL21neCtUQnRQbzR6cFlUdTdodWtqNjlh?=
 =?utf-8?B?MlE3V1poS1UzcDdrQjQ2L0Raa2xNKzlEcGtyWVpWNjlRQlIzQzg1cEdPZDVk?=
 =?utf-8?B?dGJrWGkva2g0d3RES2QvZmt0WkNnbDRBcnpkSkxEaWs4c0tBOGZrR1dGQUFv?=
 =?utf-8?B?cExrZGpRNVFFek51YVZSZWFnQ0ZwTWowakl1VFNKS1Q3V2RsQXdqZjFHUTBG?=
 =?utf-8?B?cFVGTE1vL05Bbm81dUpmdG1JaHlyUGxjY3RSUHRLdEVaais5MFhCY2ZIWVRm?=
 =?utf-8?B?V25RQUE3RmdLZm9ZNGhMQmp0VjN4VUdrRmVhdFhnN3ZaUVVuWDdYNmo2ZDZK?=
 =?utf-8?B?VHI5ejRQSVVhT2o5SCtFUm1oaEYrUjV1NmJSdnU4VXg2OE9aTHFaczF3Nmlw?=
 =?utf-8?B?SkRnRnNiYWVOM3pKWGVEaEtFcTJsbVhJVjEyelYyN1V5RTRsRTBkWVFCQ1ZK?=
 =?utf-8?B?cjk2ZVppb0pVRzJHcG12STBZd0NORjhtbTlVOHhjSThlelVrWnFCb3NNUlRM?=
 =?utf-8?B?cjBDa2QwWlRNOWJkL0JFV3pwTW5vclk5eDdqWHgrT1FBa00zSTI5SkY4MUo4?=
 =?utf-8?B?SklrZmdkQzZYUkdmQXpoMGg4QW9LbVNvalRPN1FlVDZ1YXllM2licU9MMVRw?=
 =?utf-8?B?MFpmY3R2b21XSHdjR1R0MTR6emt0RDhaQ3FtejBYcU9LNHVPOGxHc0U2eDAr?=
 =?utf-8?B?VWp2c2RMajBJQnNXZS9zQWZtUU5ialBoU2c2YlhyYVNiOHl2SEg4N3F6Sm5v?=
 =?utf-8?B?TE5rNzJMZncxUmVJU0liZnZ5T1YxKy9oTExZNlRLeHNMMVJSaU0yWHRneC82?=
 =?utf-8?B?d0I0RG4vcXVZZUozUmZjK2I2WG9PT0k3UUErSk9DUHBNUGIzaG1kekJuUWc0?=
 =?utf-8?B?ZmZ4VlJwallTdUxjeWtRcmVWZzJ0THp1QnJLc0l1bzdJUG5HSDI2dmpnTDBO?=
 =?utf-8?B?UUg4KzAzZlA4c0kwMkU2VExDamJYR1piL1Jsd2tYcEFDOEJ4dlpGTGhDcUE2?=
 =?utf-8?B?dEhZUldoVUFwUGNBQUM1YVhTamt0dko1L2pobGUvK0xVSSsvMzRZdVY3UWJs?=
 =?utf-8?B?anFRTHpSQ1ZoQ1lscTRweFh3ckEwQ3hITXQvdVR1bkdsK3NNRVJZTXB4a3N0?=
 =?utf-8?B?MmRVSStTa2k5eDJoVUZVTEEzUEI3ZHVRWmRoTnJ4Uy9tNlNqZHQ2Z2pNZVI1?=
 =?utf-8?B?MHlaelpoRVozU2w5dThlb0F2dldJSUZPT05IT0hJWGpNRlF1WXRQK3ZrSm4v?=
 =?utf-8?B?Y2hIQWl1MFdvbFRmV0o1UlpVaFpQd1FITVY1N0tEOW1nOEtVZmRpdUN5QVFK?=
 =?utf-8?B?ZUZFbmpTWjNTanZsMVdBbzByOUpPV09pL2ltUzBreUp0Tk92SVZCVlRGN3pU?=
 =?utf-8?B?amZGa1k0WWt3WlJsSEJjWTl5MDZGNVduUGZ3bmhraHAxSlFtOS80VGtFZkRZ?=
 =?utf-8?B?WjBKTURWQ0o2ZnMwdnJEa3daUEVZY0dBOWtZUHdENFVxb3U0eSswRW5JeFRu?=
 =?utf-8?B?cXQ1U0M5QmVOVFcvMTZueGVGQkpieTB0K1NDTGJHWkFLNXRWczhTS1RIUTN3?=
 =?utf-8?B?SHpZZUhjRFBwT1EwTlFEVS9vS0xmTFhoR0ZJM2g2ME00ZlJjT0UwRTl5dnNo?=
 =?utf-8?B?emJMMER5RFhsNm5jNGNSTFRNTjZ0RWVmZE9RS09GVTRscWQ3QUtxRlJ3cWdJ?=
 =?utf-8?B?TWN1cCtJQ2lDNk8vNjBJTUtOOVdHOGxoRW0zYmJUQXhlZ1NSTFpRN0Q4elN0?=
 =?utf-8?B?UDQ5ZlQ5Q25ReVV3dnI5QXFyZVB0cWkzUVRXZDk5UU1zbUVaeDJNbExCdUln?=
 =?utf-8?B?VnBoVzRIcmNvbjlkbk1iS0c5Q3ErM2xjL2dQRHhJa2UvandrU1pNMExmTVNG?=
 =?utf-8?B?QXg3MlRRc0lMTlp1cGpDeVprTUxwTjYxZ2pDTmlVWlVYYXBMUzE3dDRxWHdT?=
 =?utf-8?B?ZWhCVitVdWFHSzFzYjlHSXFVY3E3M2RVOVJaK2IyNkZ1UDNYR1JMdXVlZGU0?=
 =?utf-8?B?ZnZtN0xMeGZNKzUwYzhjeFVOU2ZLZk55a3paTE9HcXNZV3A5MXBZY1BHVjAy?=
 =?utf-8?B?Z1JRSlNQZFlJbVlKNldhaFJCVldvNUJPOXk3YnR5K3FycmE1Vllnb1BCdWQy?=
 =?utf-8?Q?1nOQf0EYBTWShC8XD8l8tD//D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdf2f84-9f34-426a-a8e8-08dd6d1df023
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:55:50.6663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LEfmW73bn2DLH9i9W2PDlc9YZQbQqVlXk/Iz62YHqHAop9MsTJz8P1N+qKlIzXcw6AuiWLrAHK99fVMQN0doCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7647
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMjQsIDIw
MjUgMToyOSBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2
IDgvOF0gZHJtL2k5MTUvbG9iZjogQWRkIGRlYnVnIHByaW50IGZvciBMT0JGDQo+IA0KPiBPbiBU
aHUsIDIwMjUtMDMtMjAgYXQgMDA6NDUgKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4g
TG9iZiBpcyBlbmFibGVkIHBhcnQgb2YgQUxQTSBjb25maWd1cmF0aW9uIGFuZCBpZiBoYXNfbG9i
ZiBpcyBzZXQgdG8NCj4gPiB0cnVlIHJlc3BlY3RpdmUgYml0IGZvciBMT0JGIHdpbGwgYmUgc2V0
LiBBZGQgZGVidWcgcHJpbnQgd2hpbGUNCj4gPiBzZXR0aW5nIHRoZSBiaXRmaWVsZCBvZiBMT0JG
Lg0KPiANCj4gTWF5YmUgZGlzYWJsZSBpcyB2YWx1YWJsZSBpbmZvcm1hdGlvbiBhcyB3ZWxsPyBZ
b3UgY291bGQgYWRkIHRoYXQgaW50byBwYXRjaA0KPiAyOg0KPiANCj4gUmV2aWV3ZWQtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpTdXJlLg0KDQpSZWdh
cmRzLA0KQW5pbWVzaA0KDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDQgKysrLQ0KPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IGI0NGFlZWYzOTBh
Ni4uMjVjNDFjZDZhZDI0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtMzYyLDggKzM2MiwxMCBAQCBzdGF0aWMgdm9pZCBsbmxf
YWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgCQkJ
QUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX1RJTUUoaW50ZWxfZHAtDQo+ID4gPmFscG1fcGFy
YW1ldGVycy5mYXN0X3dha2VfbGluZXMpOw0KPiA+IMKgCX0NCj4gPg0KPiA+IC0JaWYgKGNydGNf
c3RhdGUtPmhhc19sb2JmKQ0KPiA+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+ID4g
wqAJCWFscG1fY3RsIHw9IEFMUE1fQ1RMX0xPQkZfRU5BQkxFOw0KPiA+ICsJCWRybV9kYmdfa21z
KGRpc3BsYXktPmRybSwgIkxpbmsgb2ZmIGJldHdlZW4gZnJhbWVzDQo+ID4gKExPQkYpIGVuYWJs
ZWRcbiIpOw0KPiA+ICsJfQ0KPiA+DQo+ID4gwqAJYWxwbV9jdGwgfD0gQUxQTV9DVExfQUxQTV9F
TlRSWV9DSEVDSyhpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJzLmNoZWNrX2VudHJ5X2xp
bmVzKTsNCj4gPg0KDQo=
