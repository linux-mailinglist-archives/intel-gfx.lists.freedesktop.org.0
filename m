Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DB790841F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 09:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D10710EC36;
	Fri, 14 Jun 2024 07:01:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N0RJPIYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6B710EC36
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 07:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718348479; x=1749884479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=b4cWnZqWllRnm3SKOtEI+ZArW4jLUPkewZTpDE6aMt4=;
 b=N0RJPIYQrviPXqdapPdufjHZTc89Iv91KHOUQ3zx6yEQttzZg1C88vMF
 rJgeg7UU3jP/9NtsydBNGHBuBrJwEMs3yD60/ocWHZXRJ+RcpVN5sZO/f
 hbjJLSENB8dGTU1ibtPs2vOMFqB/e8dLPniqK/FgZveod3u16vHmhC1NY
 GnJlq38vOUsFFmQmSDgbw5gcZNJgcob5VCKVGlRlzg+4mr14xF3SW3CLy
 3o3E04MfpfLVumQqE3Pf+N9D3i+iUELPxUV7M38ffVxPmkQjKDI1qlu4C
 9sCNCPQV/fljsAuHcLa4e8n6j57DwpcR+RSvcr00juVuzPIF91CfJFKL6 g==;
X-CSE-ConnectionGUID: nPHGgPkNT9KLmYg9E9hTGw==
X-CSE-MsgGUID: M4G0o634SqS1qFjxxcSZCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15054435"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15054435"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:01:19 -0700
X-CSE-ConnectionGUID: XOTUBh86THyS3Z2FZwCQGQ==
X-CSE-MsgGUID: HYPHIEpJRfK82LlEie/vqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40260875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 00:01:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:01:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:01:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 00:01:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 00:01:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVPVdPYxSQclGsyjuCrk6vYlorCZqH95f3PdcUL2VsRDPIWVX9In/eS7KsTMrLFLEpNj/YkxZJECrBsvBTQk6fz4zFMYmfW4xpIS+e23FGSopNa3qimagXNCuvMOlPJSqouaIUvClphl2/44okSMxY0B07FvNNDv9xowSJIIMG/i1/Kl3/0Dp2ITuioAaq1wL7hpCNPO/l97EvSkXtnxyR0s2WZ0SZf+Q0oWhyGOVWJdQ+ybdnLQFeS/n2NxXLMLKIkf9wq94PV5rnwDbv2y57NpaMDSqRMBrdxRTCIpSISYwx4FU9Od0ejaSvkKPhAWAa8jG1XmpNK5CGufKmKsxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b4cWnZqWllRnm3SKOtEI+ZArW4jLUPkewZTpDE6aMt4=;
 b=jsY1glIm9yHNc2GsVjjp43jCgVqnwiEdaWnu3L4b+Lfw10zgcrSV+Rz6R6u4k+h0LMu9Mps0sBtWejV9KXyB5hSrhP4B+6kuS6PLbtF2ej8yPKBLsJCxfpxYOknwro2dUURr6j5YsaesCh6NvS5sM4Dwu+b0MYvhNIkWCorpXT1wA2UbWCKZquEYzFUDfGAo2KqoS+37NjLJz/M/rOymBCYI6EWBe2xigDA0kgRsYVz9ZYccF7pDasdgSJhJzkStJc4OJar10RvrGkJL+KKoHnG3qh+zAz3Ar34bQLu1d0JcUdGQ/hN56jb2OvmU6AzelM1jwq5jG4f+jpYcrRc+Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7817.namprd11.prod.outlook.com (2603:10b6:610:123::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 07:01:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 07:01:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: update handling of FBC when VT-d
 active workaround
Thread-Topic: [PATCH v3] drm/i915/display: update handling of FBC when VT-d
 active workaround
Thread-Index: AQHasPUXoEhDuamEiUipHMT0GkZjL7HG72AA
Date: Fri, 14 Jun 2024 07:01:14 +0000
Message-ID: <19426713059fb3174880ff0bb8072a1a77985731.camel@intel.com>
References: <20240528114826.134958-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240528114826.134958-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7817:EE_
x-ms-office365-filtering-correlation-id: c463e634-9883-4030-53d8-08dc8c3fc81d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|366011|1800799019|376009|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?NlVsellxaXorNHEwZ25YR21Sbm11NTBSakNvc3czQlZHZGJvTTJxaWpaMmpk?=
 =?utf-8?B?WVRtNm5wZWkwbXJmemJnSGh6TFpIVC9aRllzRERqcnQwSTZkRUNLMW9kTHdt?=
 =?utf-8?B?bFF0SHo3UWEvL1cxNDRFVFBTYm5Mc2RzbXRZUUs1V2lINFRveFJPUUhPZHg4?=
 =?utf-8?B?cEZNKzhhSitEcWpBR3lWQmZaODZmb25WQ0RGdFdoKzBCV1RhSTllMTRFMEp5?=
 =?utf-8?B?eDlNR2VzVTg1NkJhNXV6aWs1emc3clJOYzhBK3BINE5OUzlBbjBTeDNTcGsv?=
 =?utf-8?B?U3Rhbjc3U3JsVU1lVU9SZWVHTUhnaUlHTFB6Rmx5d2NIdzBrRVUzZ2E0K2Yw?=
 =?utf-8?B?c01OTWJEL0lFYjNXYVhOblpKQTAvUGR0S01rT1JHbVQ2TmdENDk0WjN2Szdh?=
 =?utf-8?B?KzM0bHdBR0gvK3cyK3lNaFk5NFUzeGVZYTQzanZ3SFExaU1aMGRGS2tLYlZy?=
 =?utf-8?B?Y29IU0xzL0tHa0ZmZk9ocVFNWksyWHJtTWdSWmVObXNNa3hVcU5zVnQvSFpS?=
 =?utf-8?B?cjMwRzJHTzgxQ283UG00c2J5TXFjS09PdXVuMmU3VnVtRnpJa3N5ck0zUGZ3?=
 =?utf-8?B?QkpSZW5qaTlmYzJkang4QXRhMmF3V2pEdmdHcXMrME0yU2puWXRIU2UzQjlZ?=
 =?utf-8?B?ZEQ1RUsyVjl5aEdqU0FLMUxVMW5haVR1NFFRcEhleXA3c3o0Si9SRDFZb2tS?=
 =?utf-8?B?T2oyREREOHgvaUFEN2xvZ1VKNnoyVXJqUXFHK0ovT1BhK2tKU015UmV5dXI4?=
 =?utf-8?B?QlN5V3lpSVJHckNzdEJETDRmQndLamtEejV4QXhtM1NmMFk5OGhheG5NcnhT?=
 =?utf-8?B?UHdSd3ZaNVh2OTJFMmR0cEF0SVJldVZ4WTV5dERnb0FCb0FveExORFd4RGcx?=
 =?utf-8?B?WDRtYzRZRkZ4VjJjN3dSK0pwSklqV2dVZFlieFNLZFIrNExSUldIbDhrNG5D?=
 =?utf-8?B?V0UxZ2krcm9KWGZWampuaUN3UzlhdDczOFZIZ0FCTHEwMk1jY0pFMDMrRWlm?=
 =?utf-8?B?Y3hNN0s4bUQ4TURJZHRjZ3E1eUgyZW4rNXNOSm56VHhWeUxrTDZpMzJWUGNV?=
 =?utf-8?B?UGo2ZU1CUjl0SmF0alhWYWQyNmpabEQ2WklFUUtJWXZzMG51T3hLcWRFR21E?=
 =?utf-8?B?bW5pY3QrUVFkMjVpSGhEZEVXV3k2THJlVC8zTkk3WnJrZWVCWktFcTRySEhW?=
 =?utf-8?B?ZnJXN0l4NlF0RDg0MGlqUW5tak9xb3JzNWtxbVdNQzBpVmtjWjI0cWNUNGNZ?=
 =?utf-8?B?bG9pU09BSjZ3NTBEczduc0cxdGJ3TDkxWVBBVmNXaVo4dFBGMGwwd3dvbFI0?=
 =?utf-8?B?dDJoVFVTMjRIZ2pvS3Q4WE9WR3FyeDFyN0lJOEYxdHBjT1NKaUF2azh5TE1N?=
 =?utf-8?B?NTY0d0FiM1R5ZGhwZUJQTmczWk9GZVIrVE1oY1lXRURSYXpBNXE0NXVqeTg5?=
 =?utf-8?B?OXBrTU1TNVcxa21VWXdKT0xUc2IwOS9FRHVVZEhXb0c5aDBJK2gzUjExRnVn?=
 =?utf-8?B?K2J0TkRUZFMzeTc1Z21vL2x0L2E0Tit6eFdDbHNBVnNHNGJLMVFlalMzMEM5?=
 =?utf-8?B?TUhLaUtVTlZzVlU4U0d4R296RG1HRkxXUXBjTkQvT25mMGdwaDlQYzE5ZFhJ?=
 =?utf-8?B?QlQxSDU4Wjh0VGthVEZYeU1sanhjQVNBdTRDc2FjUkxXcm1mY1BlSDVjYlBl?=
 =?utf-8?B?TGg3aE4yKzI1VkJhVlJvT1c4U0IvdTJFbytWNXJOSy84N1VLMVhCOHl1Uk9x?=
 =?utf-8?B?NVF0eEVydUYzYXNkb1VzWVNGSllvMnRuaE5lRE9Mb1huM0Y4T0hZWHRZZFJW?=
 =?utf-8?Q?EJO/pEY4Tat5TJi4mtNg1HlnOMQlfm26NG0Ao=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(366011)(1800799019)(376009)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckFsYlh4QUxlQVR4TDVVWXRjOE1vRk45dk1GdGZoQlI3UWR5L1pOT0FXTG1S?=
 =?utf-8?B?d3AvLzdlV00wT1o1Q0p5WnkxYW5OV1FrRmNjWG5GVnpLUHFsdVFienZqcXc4?=
 =?utf-8?B?a0JONFBQaWh2VWVINkgzYVpKVk9WZURtbVRUYVJVTGpMTU44c291NWs1RGJ2?=
 =?utf-8?B?NE8wakJIRFZ5aUpIejluTkxoVjg2bEJUbmljc3pXM3VWOGJlREV0MTYya3JO?=
 =?utf-8?B?VHJYUmZnWXU5Z1JtWUk1SnVLYjhDbytvOExtYkI0cGQrNkVvLzNYc3JJOVF6?=
 =?utf-8?B?S3BWU3pUWEVCUkllK3RxdFVlN0VpdTMyQ3l3VTBaM0k1SkVhdHcvajUxMGJt?=
 =?utf-8?B?NUM4ZUtNdDVrUTJPMGVOVVNScHBhcmdIazNJbDVHTWVNTmMzR1RyNVoyeGho?=
 =?utf-8?B?aFMxYzJSQ1ZjUFVDSHFDNTFWYVgvNEVjTVhvU0c3YlR2NHhQbjZtclJnd0pT?=
 =?utf-8?B?QVBuRStCNUVYM0tSamRiSUNHY3JQWWNiRWwrdWVJVFFIdEgrSjRaL1dzRVhl?=
 =?utf-8?B?Y0J3N1pKZUpUakVvdEk2aXNnOHVGWnpHNzl3ZmNTMklvay9BWTF0ZFZFcm01?=
 =?utf-8?B?UkMxcEdZN1k0VzVZTzUyN2lPSXlVd0FIK2xXRVF1QUV0Wk9zQUhhRk5EaXV3?=
 =?utf-8?B?ZDdBN0kvVVpKY254MjBJSllJMFNTcm11SUcwM1YzOHFwdXlySHVld3ZGREN6?=
 =?utf-8?B?QjVJK1Rpbkk3M2FLams5Q1VSdGFpSWI0b0FIUEtLUXpBdjZFamRSb3lRRk1u?=
 =?utf-8?B?NUpaL1c2MjBta2dvWHRUOVRxT0paQ3RsY1BseStwMUtjdzhvNmJ6UERub3VH?=
 =?utf-8?B?dDhhNm5lQTlMMEgxQTYybXU0L3lvb0VuUEdVaUxnTE44Yk9YajFKMEFQUm9o?=
 =?utf-8?B?L2c3bG9RN1dicG1hd2pjcWZuZDhIMS8weFJ0YmZXU3FPZ2x6V25ZRmFUallo?=
 =?utf-8?B?b1dleWRrN05LZUdPaXJLcXVBWTNmcmZkNWI0U2wvMUZqcEszRXpmZ0VEQnRs?=
 =?utf-8?B?M3BETDZhZjgza29ha3ZkSW1VWnhEVW5rUzJzblpYR0JOejdWVCtDd29wMzNs?=
 =?utf-8?B?VkNFTHJiS0JNVFJxS2ZIcndUVWtOWEduVFJ1NE1VM3NqNUpza0ZnbG5La2hI?=
 =?utf-8?B?bVRZMzBKZXNrd0hPclY4cXowQ2l5Nmczd0pQK0pHQkNvKzI4MkM1N0Y2Z2lY?=
 =?utf-8?B?QXk0MUE4emhRK3JyMGlVQTVyZndFME9RZmdZS1BrZEhYL3ZGdHdlUTQyZk4y?=
 =?utf-8?B?eVdZTFQ5d2d4Wm00L3liZGZ5VmZvUnZxMHM5MTAyZ3BhTGc0MlpVaG9ZdHNp?=
 =?utf-8?B?aXdPRUsxTHdFbkFvL2NlZ0RwakFQT3J6OEJRbFM5RXF0dlVXUTBYZkpaV2Vm?=
 =?utf-8?B?Nm1oeTZ6cE1LbTBMbzF3UVVxaS9iUW1GVnhBWDhJOG9LcFM1RXhpWGJ3MGFV?=
 =?utf-8?B?amFPQ21LMm9xeHVVSG8xdFBiYUZhNEZiWEp3UEtYbEdnQmZrcGlpQkdYQlA0?=
 =?utf-8?B?LzJiYkFsQXBDeFY3VGdxaDVwVUt1OUJKbEZRaHFHSEZ6b1JtOTcyVVNHbXlO?=
 =?utf-8?B?TGhQa3VTbGRhM0FqekZGai9DeldWR3FLMFNxUUt1eHNIUEpCTWZmSFRkdXpp?=
 =?utf-8?B?ZjFwcURmb2JLRjIxeGxHdnNIejVSeklMQmxveFMwZmRQK0pTU3FmdlNsRzRL?=
 =?utf-8?B?Y3lqNVpjaGFrVHVqRlZyRGdzSjVzUjlIZGV3ZjdnWGx4U09SSU5hM1B4YmFC?=
 =?utf-8?B?TnlGRUhHT3AxWEpaRkRuM0F3cWdNeldtOFlGWFI2K3h4SFQvdDNQUVZaVEtW?=
 =?utf-8?B?OW5ocEV6R2ZtaFdjN1NNY05uMnE5ZkNiQ09EYWxRN3EwSEl4RU1mczE1aUhq?=
 =?utf-8?B?NVVYbmw0WVBERlhjNjl0RjVsdXhVYXlXamlwVG50L2t0TllwSFQ4RVYwTHJT?=
 =?utf-8?B?V0REVHJGS3NQWFNiR29HdXlpbE5BVGRtMzdEeENtK1BtVE5hNlFJR2Z4NExn?=
 =?utf-8?B?TGhCcW5PeGh4Z0tKRnVFdnlYUkxDRjE2cjVyaWlkU3Iwb2xjYjJ2UFhsenFN?=
 =?utf-8?B?Q0RGSG5lK0tvMTMydjBNbHhFUlRXMDRVNEIzRTBIV0ZRcG52ZzIvMkhrOVNL?=
 =?utf-8?B?R1VTay9ZTGpiK0lGY0UySUhyTzJCY3dUQnZ3dG1pU0dJTXNkMktPWTdZYzB6?=
 =?utf-8?B?bHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <22E1989DEAFAA94097CAB37DAB07BA5C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c463e634-9883-4030-53d8-08dc8c3fc81d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 07:01:14.7711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPZXi3M1MkOwzi/buKCCVNH0ok7gKGNnAUzlufiz/DhJlyyJNTMyn+y4wF3mTvZDd48Xc4W3EYaWrTuVoExNNu62Qd8N2QanHJg39ADW26w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7817
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

T24gVHVlLCAyMDI0LTA1LTI4IGF0IDE0OjQ4ICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOgo+IE1vdmUgdGhlIGhhbmRsaW5nIG9mIHRoZSBkaXNhYmxpbmcgRkJDIHdoZW4gVlQtZCBp
cyBhY3RpdmUgd2EKPiBhcyBwYXJ0IG9mIHRoZSBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoKS4gQXMg
dGhlIGh3IGlzIHN0aWxsIHRoZXJlLAo+IGludGVsX2ZiY19zYW5pdGl6ZSBzaG91bGQgYmUgYWJs
ZSB0byBoYW5kbGUgdGhlIHN0YXRlIHByb3Blcmx5Lgo+IAo+IHYyOiB1cGRhdGUgdGhlIHBhdGNo
IGRlc2NyaXB0aW9uIChKYW5pIE5pa3VsYSkKPiAKPiB2MzogZml4IHRoZSByZXR1cm4gdmFsdWUg
aW4gd2EgaGFuZGxpbmcgKEphbmkgTmlrdWxhKQo+IAo+IEJzcGVjOiAyMTY2NAo+IFN1Z2dlc3Rl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGlu
dGVsLmNvbT4KClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4KCj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jIHwgMjIgKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMKPiBpbmRleCBlOTE4OWE4NjRmNjkuLmI1NDZlYmM2ODIzZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+IEBAIC0xMjM1LDYg
KzEyMzUsMTIgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0Cj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybiAwOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqAvKiBX
YUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICovCj4gK8KgwqDCoMKg
wqDCoMKgaWYgKGk5MTVfdnRkX2FjdGl2ZShpOTE1KSAmJiAoSVNfU0tZTEFLRShpOTE1KSB8fAo+
IElTX0JST1hUT04oaTkxNSkpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBs
YW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlZULWQgZW5hYmxlZCI7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+ICvCoMKgwqDCoMKgwqDCoH0KPiArCj4gwqDC
oMKgwqDCoMKgwqDCoGNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aHcu
YWRqdXN0ZWRfbW9kZS5mbGFncyAmCj4gRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpIHsKPiBAQCAt
MTgyMCwxOSArMTgyNiw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfc2FuaXRpemVfZmJjX29wdGlvbihz
dHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
MDsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgYm9vbCBuZWVkX2ZiY192dGRfd2Eoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gLXsKPiAtwqDCoMKgwqDCoMKgwqAvKiBXYUZiY1R1cm5PZmZG
YmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKGk5
MTVfdnRkX2FjdGl2ZShpOTE1KSAmJgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCAoSVNfU0tZTEFL
RShpOTE1KSB8fCBJU19CUk9YVE9OKGk5MTUpKSkgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkcm1faW5mbygmaTkxNS0+ZHJtLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJEaXNhYmxpbmcgZnJhbWVidWZmZXIgY29tcHJlc3Npb24g
KEZCQykgdG8KPiBwcmV2ZW50IHNjcmVlbiBmbGlja2VyIHdpdGggVlQtZCBlbmFibGVkXG4iKTsK
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gLcKgwqDCoMKg
wqDCoMKgfQo+IC0KPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gLX0KPiAtCj4gwqB2
b2lkIGludGVsX2ZiY19hZGRfcGxhbmUoc3RydWN0IGludGVsX2ZiYyAqZmJjLCBzdHJ1Y3QgaW50
ZWxfcGxhbmUKPiAqcGxhbmUpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHBsYW5lLT5mYmMgPSBm
YmM7Cj4gQEAgLTE4NzgsOSArMTg3MSw2IEBAIHZvaWQgaW50ZWxfZmJjX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUKPiAqaTkxNSkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgZW51bSBpbnRl
bF9mYmNfaWQgZmJjX2lkOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKG5lZWRfZmJjX3Z0ZF93
YShpOTE1KSkKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRElTUExBWV9SVU5USU1F
X0lORk8oaTkxNSktPmZiY19tYXNrID0gMDsKPiAtCj4gwqDCoMKgwqDCoMKgwqDCoGk5MTUtPmRp
c3BsYXkucGFyYW1zLmVuYWJsZV9mYmMgPQo+IGludGVsX3Nhbml0aXplX2ZiY19vcHRpb24oaTkx
NSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJTYW5pdGl6ZWQg
ZW5hYmxlX2ZiYyB2YWx1ZTogJWRcbiIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaTkxNS0+ZGlzcGxheS5wYXJhbXMuZW5hYmxlX2ZiYyk7Cgo=
