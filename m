Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6317AAD7CDC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 23:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF7D10E0FE;
	Thu, 12 Jun 2025 21:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DtNVG4E7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935F510E2A1;
 Thu, 12 Jun 2025 21:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749762135; x=1781298135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Ekbh54TJMD0GaBbZjwb0+AfSIIjjCN3DcHJomScFNM=;
 b=DtNVG4E7ykAELC7OHBTt/NfBnNMXok0mbxWKXnPFXHx6WWJWrI7zCPvJ
 E7ume/xizjbzZ5eFDToSjRJ/Ywt1IEnDw80DUeAvHDPfO+VMIDHCBT8OK
 zv0xgXLClDansv27HV4UHyhnUY5XyIFlvvDuO+zxnMaxq8+1PnaAH4Dxa
 xgGHiHiFPy0wkUxJSayozLf20suTu1EaNYGEKullYHFrI37dDpdoNKhB+
 b3cWsPx/Wva8Yupz629Dugv4UDz2Zwn++wm6FL8NUYCCA+woYCx3uq8OV
 dslAI1VCKLSeejmGJfX8/p3JqtCMqej6AS6X0c5sU4OTH617ts4pydGYU g==;
X-CSE-ConnectionGUID: tXTsCp/3SySYTi6t+qpHgw==
X-CSE-MsgGUID: fMImjRNCRCGb1SwTawwqRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52053463"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52053463"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 14:02:15 -0700
X-CSE-ConnectionGUID: aJVJr6UtQGuZWpVnxjWf6w==
X-CSE-MsgGUID: 74NJGVf0Qt+lFFMMT7EBlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152920803"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 14:02:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 14:02:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 14:02:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.89) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 14:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yClb3i9knr4KYOTa5euT9GxEuP2osNUQSbD6RpfGPlhsE7j7yKvzuc+cHQkoMfW8Cgrr4jkZkKE/dAVuPjjx8LEYMCm2ilNE4Dq4T9SbWwUtu2vA0+T2a+5HRaUOtzddxTEN3S63WYjL2VU7e/SnvHAYQB3RefkY1fd68P7h73wfKgUwWWgwD0FqBsMAPvlOwc22hcKd9REpUwzad1fN8KyI/QRV6x2wKq1zafPQQGvORpnHazc8FPWs7ySWhrscpPRm58TWz6gBR+AxHfaGPN/1EpTT/MxjX3HEsvK2mOK0DF/ZCGcu+snM9HFW+Adk65ioaSwlI9QE2GqqEzjjYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Ekbh54TJMD0GaBbZjwb0+AfSIIjjCN3DcHJomScFNM=;
 b=ZWmBg9nZqPBhp3PQ1J5T3Mwta4/8b8jz9jTtKoAbDyQ5we8xceIUN4dn2dfqiPwJLrcB0bJBYeLYutWMtfdHAlk9JE3vT3JmP8zkh+1rHdBIg2q9eQXTH7S4DvVa1wk1eWYqGo/J2V6FV8xiBIFOwFlOJCGqA1EbKArSZ0PIXzX42nSIGXt7tfKc267zie6+aEySQMufbD5BYr1Ap6paF3rHl1pmRQ6IjOLafGHZA7vG55s6XG8caFpaHDYN4kUo+ul0H4RpRMf9wjJx1YxmMc8fP1oa5/HkaT3qKQEUeoGLhd86haT9IgEv5bDjNSYN3LsaJqu29o1xmSq3rcoXnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7837.namprd11.prod.outlook.com (2603:10b6:208:406::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.18; Thu, 12 Jun 2025 21:02:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 21:02:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 9/9] drm/i915/dmc: Do not enable the pipe DMC on TGL when
 PSR is possible
Thread-Topic: [PATCH 9/9] drm/i915/dmc: Do not enable the pipe DMC on TGL when
 PSR is possible
Thread-Index: AQHb2ukBJ+e2AnW3PU+k5ahEWgNf+7QABFbw
Date: Thu, 12 Jun 2025 21:02:10 +0000
Message-ID: <DM4PR11MB6360B589FAD354782356D13AF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20250611155241.24191-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7837:EE_
x-ms-office365-filtering-correlation-id: 71da504d-4166-4822-60ea-08dda9f465da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NVIzZDVYQjBUNGkyRUpJNnNOSkljNXdyQXg4S1VJYi9VVkloOFR4Y3JXQ0tm?=
 =?utf-8?B?blBrWHBDWWpVQXZnb1dSMUlBOW1BcDdZZGhrSlRHS1ZuMFJTN0g3WGFLbHF3?=
 =?utf-8?B?WWtrYXJuYzgwSGtzRmsvVDJZbHBLV0d1bmRwbUZ4OEt1OHRzVmJwSlNYbHFn?=
 =?utf-8?B?ZHorT3VmcXFCZVdPbUtYVDk1Q21SdlRkRy9YMWhEU0Vaa1hMQmVNb2ZNRjhY?=
 =?utf-8?B?bEkyc0RoNVdtUGRzdC81emgvMXdneTUwNFBsN29EV0ZObzY3ZmtHeFN1cGg0?=
 =?utf-8?B?VDNWZy9ucUxSRnlqRUZVQUpnU3g5M2c4YlUzaVRWQ0ZNWmJwNldmRzN5WmMr?=
 =?utf-8?B?MmsvN21pZWsvS2NodzQvK1JUWFgxQ3ljUHJZeFlEaWVTb1R6NnhmUTk0VWhu?=
 =?utf-8?B?WkplVVZqeHRSVWR5YUFGNHBad1U0N0t4MjRjRjhrL0NIcEx4Nm4xZktEZzFm?=
 =?utf-8?B?R2labTVabDV3U0JwWGdEbzJOVGQrcVJQdjJBRWpiei9kME1HV0RQckdYUWFp?=
 =?utf-8?B?Q1NaRUNUbjNtMXBzWjYyNHR5WnR1c2VYQk4wdUVNejBzbTlUMGx4Yi9yTVNI?=
 =?utf-8?B?aW0yTzZJMVRoWW1yR0JlRVJ0QktOWXU2M2FoaW1vdE81SlZxYlgvTDhDWW4r?=
 =?utf-8?B?NzUzanBWbEY5V3FJSDBaNmQ4bGdyZDNJVTk5QWRjRFVZNWdKV3J6UTN6K291?=
 =?utf-8?B?NVFRak5ncDdEcnkwalVYUEFUZHA4L0RqN2VtYVRMKy9WRnNSWkFoZis4Wktr?=
 =?utf-8?B?QnlNZ2tTY1lvTWh6aFd0OXpuL0lYWERoU3R3aElpQlA4NEttb2EwRmt2WVJ1?=
 =?utf-8?B?Kzh3Z1hPZlNFaWpiQWlmYTE0eUtUSFlTSnNZNTE2WmQwZ1lubGhRajh1VTFp?=
 =?utf-8?B?K3lUTk13L1NKUy9jQ0pXUWhSTFZTR1UxRHRQeGJzcElhejlqMDE2VmRodHc1?=
 =?utf-8?B?d2dsVjh6RmF2aytQRjBUdlVHelNTTFVnQUpHYURxUGZhMTVTbFJJRGZDN0Nz?=
 =?utf-8?B?VFhoV2xvd1FLZGszdXNWczNSbjZoSUdDc3RFWWJYRDZiZHFaOEozOE94MlFj?=
 =?utf-8?B?Y2NzR0NpdmhjdWJTaDVJa2k3eWFmdjVBc2ZYR01ZK3JRaDN4TGxYWUxqdWcv?=
 =?utf-8?B?Q29TWU1qNmNWZk1RUFRvYlQyM2pPNnIxNldZWWhxMUFZS3JyQ3UwWUcrK29B?=
 =?utf-8?B?aHBZVko2eFpmRkNvcCtrMXNZbllLa0VSNjJWVXBXL0lwVURQRng3Rm1PN2I1?=
 =?utf-8?B?Z2EwTzJZSzJidEJmbWxLSTZLWkFPbmpxbi84RlFZcFBzOFU2eEw0emU2bVNW?=
 =?utf-8?B?eklEWGQ5a3liNjRVVm0xMEdsaTVtQ2tuTDZCTHVYcUNmaHdzWG5oRVVqMkNp?=
 =?utf-8?B?cHFMSzJyV0xCdzFWeHNacFRLTitZWkxWazVKdlRkVjcxckJkZ2hKL2hrZ2Vi?=
 =?utf-8?B?eE1rR3BNdjBZWXlkMVhCLzlldlZaQUhoWk9FL1pYOTBObmZPQ3VlNTVVRFdC?=
 =?utf-8?B?a0p6cHhFR3FIMitTMXFiQXJSdEZnZGNXMDJnK210OTNzQU94NitPMjZQT21a?=
 =?utf-8?B?M1lLMXRoNmVJRCtqRjRSeFBtanNWK0RaWGdvS3JTSWhUTDFreE5RUm51VUxL?=
 =?utf-8?B?eUVwcUFja2piWEZoVGdhNjRtWHpoQXBIQzhnaU90RHY2Wllsa3c5ZFd0ajRP?=
 =?utf-8?B?QSttcWNqRVRsN2JpNFV6VDZZcHJoQW5BQXRLcXliTkRSTGZxTHF2Qm9HZmds?=
 =?utf-8?B?MjI1UDE4MExjYXJiREZHTmJ0T096Mi9OQTA3T2NwMTQxa0gzTlo3MFBNYkxZ?=
 =?utf-8?B?UG9rU1daNUlJY0ovZWppVUhmcWdHZHVDSWhUQm96aFE3TTNRdXlVeDBkUWJz?=
 =?utf-8?B?NURhK09TWjBuR0ZqTEszRWh5VzJSaWw3dEhQZFVrd3V6NWZRaDBhbW53NC9a?=
 =?utf-8?B?dDdTakZ4OUtYZExqQTVhZDYwVnhKMFFtdm9DdVBRblhqall2bmxvVE14Vlpa?=
 =?utf-8?Q?34bgVyy+Mz+oooNZaEQrxn+hgMOQzo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OU0weHVQQTRRL3BlNHFRWmRJYWVBeDIwdVJ1VGZ5Q3FYcTAvOVBaUVBKN3JG?=
 =?utf-8?B?VUt0YW1mdjZ4UXk0VFFCQ0FDRzZCcVJFOWFIMHNadjY3TXZIRmNVZUg5RWEv?=
 =?utf-8?B?UUFKOU1HK1Z2UFIrd2hQblN0Z24xazdZNHRTMllXTmIvdVVmOUZDWWZ5cTUv?=
 =?utf-8?B?WkQ3dzNkY1NMeDgzSjdwY0RvK1pCZFFVcUZYc2xRYkdqSFViekhYN0NpaVll?=
 =?utf-8?B?a2xXZVRCVXQyeWw4WS81QUZnRFVTOVBQUlN5bXhLK0MxTmlXNGg3ZVpYbTQ3?=
 =?utf-8?B?WmV5OUFzOXZtbnk1SVZxU3p3T0tEVnFOeWsrWlZyekJ2My9OcWZncmZmWUhs?=
 =?utf-8?B?Y0ZsbUxtLzFwaVBxMEo3SDJWZitucnRNcnl4U0tIMC9JWHdYMGZOUHVTWlpC?=
 =?utf-8?B?M1lsODcrYzRPVy9MK1A2UXQ0cXJoZG1wWExsMW0zTUt4OW5DWXUrS2cvRkNI?=
 =?utf-8?B?UVd1eHFYaXRYR1ZHMUNCdmNPOU9rUmNqeVZrYVRWVkpxRGE1QUxwbUp3WUg3?=
 =?utf-8?B?RDFPSlJqK3hqSHh3RGFIUUZhNXdlY1lyL3Y4YUxKL0VIM1JNQnEyVGM3SjhF?=
 =?utf-8?B?SnpGUDNjMTRxekt4SndhUHdJTEUvdXJSTElHOUZNY2dsY1VGWlIwNUNKY3By?=
 =?utf-8?B?Zy9EMkROWTVYUG9RcCtaTk5oODV6dDhGa0Qyb1VZNmlDVnR6NVlZaHRoZFUy?=
 =?utf-8?B?czd0N0NBUVhvaXBZL2NZcFBsUGc1cDNwUUJOZUNzdDFrT1liNEFBMW9reW00?=
 =?utf-8?B?dmY0TE9rQkJLZGJvTjlHWlEwN2RNWS8yWUNKSlMvcVZvMytORnN6UGpSd215?=
 =?utf-8?B?VjVzdGd3a1NwMWF0K0doRGE2ODJIUUtBZnB6VDdJbW5JeDluTm1WMTdZQ3d2?=
 =?utf-8?B?dlNRcjZ6Z2w3QVVJTUVxZmJuY3NjM0xKMm9RNkd3NTVxOHdqWHh1bnROcEdz?=
 =?utf-8?B?V2tIazBwd3AzMExMZnQ3QjN1TS9mdDhPbDhYNlo1dDdFVDJSV0d3UGE0WER6?=
 =?utf-8?B?QSsxdS9jdVZ4bWVvNXMxbFpTamdHdTZNSENKZTV3Tko2aTNEV1VjUVArUjJY?=
 =?utf-8?B?VDJsazJBKzFXdzU1WDdvT2JoNi93OGlBaTBNenVJSFh4QkhQNFZVcFdLUnF1?=
 =?utf-8?B?V2p2K3FxbFBiYlByek5adXlsUUlqWlNYcnlvb0lhL2toaUMvVkhjQktvd3Ar?=
 =?utf-8?B?c0pmbE43Z2piTUU0eXNwNUsycUFGZ0VMS3ZCMnhLUjlWbER1Q3Rvdnk4WXhW?=
 =?utf-8?B?SWo2VS9BKzhRWnZDZSttbVdXYWczS3phRXRZT3RTRThTWGVLSDhBUW5tNWs2?=
 =?utf-8?B?MlVwclZtdWxUdlhBbm9uYVgramdTempzVUJZWmdGRTlKWGk2VTBYNzdFb0pI?=
 =?utf-8?B?L0FEeVFlV09rbGdVRmxrQ0lYNVBudFgxNFBsalFKY1lJQnFYTXdaZnN3SHAy?=
 =?utf-8?B?Ly96djBWVnJVTzFwTlYrTmhLN3RVRXdSNDR3RE5LU05QZVp6RDB1QXlsVEFR?=
 =?utf-8?B?Ujc2NytWeVRKeG45VGkzakl3N0Y2UDlVYWZJWkVLL3M0QkRaQzRweWNGbHZh?=
 =?utf-8?B?ZUJMdHZaRVM4ZEVmU1ljQzg4a2dKNllrWU41Ny9oMy83YkszZjg4M3RaeGZy?=
 =?utf-8?B?T0E3aE5RODVUMjc3SzBPOTNZckNRR0RBc0syRVJZNm1PV2lIQm9rZFRsaTRO?=
 =?utf-8?B?YktCQkxvNUVoK3BXWHJ2SVdHMnZwbFFtZlBNK2o4Zld1bDdPZHY3L0pFVjk5?=
 =?utf-8?B?UUYvdlEyMlNlQ0JHaGpWbkhzZHpGM2NtdXNHd0U0TjdOTTdmbS9Iajg1Zjln?=
 =?utf-8?B?ZEhQTTNUeEU1UElGM0ZGeXhCZENRdUpFdnZXVXBBV0NJRjRDUHhzWm5kb000?=
 =?utf-8?B?V1VQbm15MUZ6OUczUi80YmJiRkIrb0pSbkVDRVc1VWNHRFE1U1lRT0RTa0Va?=
 =?utf-8?B?bXhIVVdkYldVQlZ0OUpsT21WU3I1OU9xMDhiUDBsT0FqaG0xMk01Tk9jUTdI?=
 =?utf-8?B?cEpXTFJzaVJjUFE5LzVWNy8vZUVDbDdZbkg1Y1E4Mm10U0Urdno3LzdYbkhQ?=
 =?utf-8?B?QXJUYnRtWEZmc0x0OVE5aUVqUytvcWV2aXJEMDJiYWdGYytvK2xBazk2OWh2?=
 =?utf-8?Q?A/yWSLReTu2M4q+L5tC1dixxJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71da504d-4166-4822-60ea-08dda9f465da
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 21:02:10.2128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f3xvroixyzb/QGVLus4PUEeDBXTPtqEmmewuFhelOG0F8ird54uf/3g1xWoPw23XSJOPfJKi4dF6PjH7dEq+4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7837
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxMSwgMjAyNSA5OjIzIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDkvOV0gZHJtL2k5MTUvZG1jOiBEbyBu
b3QgZW5hYmxlIHRoZSBwaXBlIERNQyBvbiBUR0wgd2hlbg0KPiBQU1IgaXMgcG9zc2libGUNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBPbiBUR0wvZGVyaXZhdGl2ZXMgdGhlIHBpcGUgRE1DIHN0YXRlIGlzIGxvc3Qgd2hl
biBQRzEgaXMgZGlzYWJsZWQsIGFuZCB0aGUNCj4gbWFpbiBETUMgZG9lcyBub3QgcmVzdG9yZSBh
bnkgb2YgaXQuIFRoaXMgbWVhbnMgdGhlIHN0YXRlIHdpbGwgYWxzbyBiZSBsb3N0IGR1cmluZw0K
PiBQU1IrREM1LzYuIEl0IHNlZW1zIHNhZmVzdCB0byBub3QgZXZlbiBlbmFibGUgdGhlIHBpcGUg
RE1DIGluIHRoYXQgY2FzZSAodGhlDQo+IG1haW4gRE1DIGRvZXMgcmVzdG9yZSB0aGUgcGlwZSBE
TUMgZW5hYmxlIGJpdCBpbiBQSVBFRE1DX0NPTlRST0xfQSBmb3INCj4gc29tZSByZWFzb24pLg0K
PiANCj4gU2luY2UgcGlwZSBETUMgaXMgb25seSBuZWVkZWQgZm9yICJmYXN0IExBQ0UiIG9uIHRo
ZXNlIHBsYXRmb3JtcyB3ZSBhcmVuJ3QNCj4gYWN0dWFsbHkgbG9zaW5nIGFueXRoaW5nIGhlcmUu
IEluIHRoZSBmdXR1cmUgaWYgd2UgZG8gd2FudCB0byBlbmFibGUgImZhc3QgTEFDRSINCj4gd2Un
bGwganVzdCBoYXZlIHRvIHJlbWVtYmVyIHRoYXQgaXQgd29uJ3QgYmUgY29tcGF0aWJsZSB3aXRo
IFBTUi4NCg0KQ2hhbmdlcyBMb29rIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMgfCAyMCArKysrKysrKysrKysrKysrKysr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCAwNTYyZWUxZDA5MDUuLmY5
MThkMDhhY2QwZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jDQo+IEBAIC02NjMsNiArNjYzLDIxIEBAIHN0YXRpYyBib29sIG5lZWRfcGlwZWRtY19sb2Fk
X21taW8oc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlDQo+
ICAJcmV0dXJuIERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwICYmIHBpcGUgPj0gUElQRV9DOyAg
fQ0KPiANCj4gK3N0YXRpYyBib29sIGNhbl9lbmFibGVfcGlwZWRtYyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwkvKg0K
PiArCSAqIE9uIFRHTC9kZXJpdmF0aXZlcyBwaXBlIERNQyBzdGF0ZSBpcyBsb3N0IHdoZW4gUEcx
IGlzIGRpc2FibGVkLg0KPiArCSAqIERvIG5vdCBldmVuIGVuYWJsZSB0aGUgcGlwZSBETUMgd2hl
biB0aGF0IGNhbiBoYXBwZW4gb3V0c2lkZQ0KPiArCSAqIG9mIGRyaXZlciBjb250cm9sIChQU1Ir
REM1LzYpLg0KPiArCSAqLw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMiAmJiBj
cnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwlyZXR1cm4g
dHJ1ZTsNCj4gK30NCj4gKw0KPiAgdm9pZCBpbnRlbF9kbWNfZW5hYmxlX3BpcGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOyBAQCAtNjczLDYN
Cj4gKzY4OCwxMSBAQCB2b2lkIGludGVsX2RtY19lbmFibGVfcGlwZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gIAlpZiAoIWlzX3ZhbGlkX2RtY19pZChk
bWNfaWQpIHx8ICFoYXNfZG1jX2lkX2Z3KGRpc3BsYXksIGRtY19pZCkpDQo+ICAJCXJldHVybjsN
Cj4gDQo+ICsJaWYgKCFjYW5fZW5hYmxlX3BpcGVkbWMoY3J0Y19zdGF0ZSkpIHsNCj4gKwkJaW50
ZWxfZG1jX2Rpc2FibGVfcGlwZShjcnRjX3N0YXRlKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4g
Kw0KPiAgCWlmIChuZWVkX3BpcGVkbWNfbG9hZF9wcm9ncmFtKGRpc3BsYXkpKQ0KPiAgCQlkbWNf
bG9hZF9wcm9ncmFtKGRpc3BsYXksIGRtY19pZCk7DQo+ICAJZWxzZSBpZiAobmVlZF9waXBlZG1j
X2xvYWRfbW1pbyhkaXNwbGF5LCBwaXBlKSkNCj4gLS0NCj4gMi40OS4wDQoNCg==
