Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFABACDE58
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 14:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FD310E706;
	Wed,  4 Jun 2025 12:54:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+YwxHL7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B195410E67B;
 Wed,  4 Jun 2025 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749041691; x=1780577691;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D6qruFR4wK+ZJzujJZeUiJVDtzaBJcbQ3qsGFMjraX4=;
 b=E+YwxHL7oFx497Ay8nv2mCRnqRVNH6VUpndac7il33MAGjjN0RY37Xeu
 SJKYgKS+1CokUXmi2GEC3DrvHIY42zrfCF3SxHbUoyPthsGVXROItuLLE
 dLg69iZsMTVblwwlRjbEt91FCwy34BwdWxxgDMX5fhWlngJ0q7Jt16ffj
 H02LvpF62yRjaCH6f5xw2Vk2bx1Updf1jBKcQq5azeVMauCVBaB0p1abD
 ti7BY9wb10qeIduqw9xng2deSlF0PKvE3Jn7LA3EXQb/lB+UFj55coaI7
 nQGGoWhUE+jq+1JyPavdSS+rTaPWzGiB4qSZDcGLithzkIADM5xj7A7N8 A==;
X-CSE-ConnectionGUID: z9UFiCoKQ1G7xIzY1fnQvA==
X-CSE-MsgGUID: 34Xzz7UATuGUNExdjMUdrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51265688"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="51265688"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 05:54:35 -0700
X-CSE-ConnectionGUID: DMY9J2ezSu2oZTwnCgJxsA==
X-CSE-MsgGUID: +OmVazN5R7SQ/pmAutkuhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145141573"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 05:54:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 05:54:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 05:54:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.55)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 05:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uAH6BhTlENvRccV52BNczw7Wmr/wJv5O+3Bz6Z1yYPkH9QvqE4jayjxEcdnS1yH9Cf/mU2fpK58glt6uzAhZpXZ4ZeQMeHouYfGioH0AZjBJ30gwY6Ae8h5B7aFbU9nDddO5qgbKrXHyRQRSpciKQrF4XEV5hkJD34bwhU5PX0Hk4/nr5l7dOvryMV7U1ZYefSs3Pi022v1MFAomD1zZVQ1jczeh9YC03uf3ajQINFcVFFX0B25CGJqvoWKpmhyA1GMyWaXyk/uMZ26RHFuuPXGA1oljZdb/qvD1Bl2NNj7CU0vPB0g9gwvigLjuSgWAuhXkfrbswQRkYeEHwdG6qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D6qruFR4wK+ZJzujJZeUiJVDtzaBJcbQ3qsGFMjraX4=;
 b=O03lCXXyBZ8i/oQIuJGlFg7D4Psh3PLXckRCoqdle6R/jTVFr9bsX67u95JaanuPKD6+9Bb5Tf66dkJGOL4gHgE20LrExIBM29eLPRmg06IbZgsgWCwmbwQBdPGFTBXSCBn1ZKdQT8tHyVlZ61W5NMM4LHaphVf6F+13UZlbvcIuFkUykQOeVLKiHRczuD8xiapytzhHVDdSJ18FLDJgJ/w6wJ8B6RxN3FAuzIkizXfrhbXvUgUnTrEGW6bZERyT0Uhaenr+mTRufVw6X4XdnKiIAsy+w90GfXH/j3bQav93wm/Q6l351UKzoLzmB9LXvk6yI3RYDfRlULbyp3rh8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB7341.namprd11.prod.outlook.com (2603:10b6:208:426::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.19; Wed, 4 Jun
 2025 12:54:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 12:54:31 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 2/6] drm/i915/dram: add accessor for struct dram_info and
 use it
Thread-Topic: [RESEND 2/6] drm/i915/dram: add accessor for struct dram_info
 and use it
Thread-Index: AQHbzulXCbnnS0m6T0WruOVEYJA3e7PzAccA
Date: Wed, 4 Jun 2025 12:54:31 +0000
Message-ID: <9506eeee690e96ef514d3275d1a76359c77ea3ef.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <4174edf649e2f6805dab6fd6ce2ec10f4e5f2498.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <4174edf649e2f6805dab6fd6ce2ec10f4e5f2498.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB7341:EE_
x-ms-office365-filtering-correlation-id: 00936907-c1f0-4cd2-beed-08dda366f2ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b2E2UER1QWlBQlRSM0RzcWNxSHMwVnR1b2VoK0pTNjI4NncvRjhySlhObFlt?=
 =?utf-8?B?eWFxUWFpblRBL1cvcmlmRlIrY254M0xmRG5DTitIdEhMMWZhMlZlZkN0QzdL?=
 =?utf-8?B?bUIwN2FseE9ncnhYTHBLNjhHYmxOMWsxRTBHOHdIQzFpL2I0ZEhzaXpKRVV4?=
 =?utf-8?B?eFJucWtGbXZZWG5IekpDcHF4TlZmV2NBM0NjNXloVS9iMk9YWkgvWXQvVnJo?=
 =?utf-8?B?YjBRU01PWHEyaWhTTVpWdU1mY0d5VEwxQisrcXJ5M2hGcWladGcralowQzFC?=
 =?utf-8?B?ZHl2cjN1L0tBRXkzVDZtK0VyVEhVQ0MxYUFMb1pyV29TMUNmdG1QU29PeWEy?=
 =?utf-8?B?ZUJvb09tOXVGUU9XTkFmYlRIK2hiQUw4L0Yza0lGck5jWjNvQ1FnZG1yanRE?=
 =?utf-8?B?aFZZRXFDVEpYK21GWE5NaFFuYkNMa255cGhnalpIN1VhZE9abHVPVGFkeTBV?=
 =?utf-8?B?NVFjWGRqMWUzMW1GOVArWDZWL3ozeGtRNS85eHdXUk15eElzOUkxMGh1clR0?=
 =?utf-8?B?OVpWZ0F0a25PN3Z6K3BJWWNyckZaVytnUkcvUTVWUm5SS0FZNFhvanlucTk0?=
 =?utf-8?B?MFhZSmp1RkVBZ3J4ZFAraTBYcmxKOTR2UWxPNGNPK2xNWjVwbXlxS3ZBWkJN?=
 =?utf-8?B?QllWU1J4Zm5HUmZDTXhBTGJQc1dBaVUreFkra0U5bk1sOG5xTmt1YmZ0WkJs?=
 =?utf-8?B?cy93ejd2QU5DTEVydmp1Z1U0aHFMV1hZOGJWR3BmbDY0ZVhKeU9IZDVZQm5T?=
 =?utf-8?B?SVRxNnQ4MmdieDFpdmNRRGxNRkFMOHhER1BpQ2gzNnArK2xIdDNBMFJJWE4v?=
 =?utf-8?B?N2JPbk1JU3VuRnkwdjRLZXk3eWtCdzFuL2o3eFV3SnB3MFAxRHNCRzIvbVV5?=
 =?utf-8?B?RzdzRWVoNWYzL2xsYnlWcUxKZVlCWkFibjNGajJEUllNQnZlaWNNVEpXcTBZ?=
 =?utf-8?B?anQvTEVRczJINk50VDVDYUhqMkhOMDI1WERmRDA5Sm0zenQ1Qk9xMUV3azJK?=
 =?utf-8?B?dFR5NmVocEdTQmQxNjRoZUNHbEpTWHNIZS9oT0lpYjZZTXZhcVdXMHErNjAz?=
 =?utf-8?B?STBkN3BnalNFejZ0bTZBTjdaWmhBRVRuVlJ6a0tOczBBVVNWdFI4dHFrVGxt?=
 =?utf-8?B?NlNPa1FSWURWdzFnY29FTzN0eVhzMStUNW9MU2lZZXAvdkQyMUVaeGpXSlow?=
 =?utf-8?B?L2o1RXZXY2FpZG14WDV4RStVcWRSaXhjVTcrWDlLQVFjSW1wZ2l1VGJjRll0?=
 =?utf-8?B?TGkxUE90aHJycXEzdUhwemRnYjA3MFFoVWd3RzIvcDZBOHFqOXBYZ0RRWGFF?=
 =?utf-8?B?S1RpakppODRaVWpYMTlZaWplMkJwS0Z2bG53bHpabithWm9KNzdlTjBLUmxC?=
 =?utf-8?B?L2dVNy9XdSsvTjdnSGVEOU5RME5CajdGRVJXdlNhRmY5ZWl6dStveHF4b0pF?=
 =?utf-8?B?S0l2ZE4yZklDN3BlNE5TRnhQdGIzYjhQTExYdXlXL0liSUZmOTRvL21ZTFIr?=
 =?utf-8?B?clJZaTZ4aG8weEJib29LVnBwMlFDZWtNS3Z1SGVxNHRySU1UdTZOVUpiOUha?=
 =?utf-8?B?c0t4VkpLNW54cXp2Y2E5L0pObmcrbXdLU1Q1bkRJVGZ6NEdvekxUVzN3dXdJ?=
 =?utf-8?B?S052OE85MEUrYXJoQTl0VENBNzRuejFURzc3cENxV1FxdmZyb2EwV1ZmRWVP?=
 =?utf-8?B?SVBrV0g1RXNRaVA3c0dsRk5oVmpNZ3NDY1orVEhmazBwY1prSU5DekphdFcy?=
 =?utf-8?B?TFUvblVNOUJXOVRBUFA4WC9GTllvTGNvRGNYaHhnV1pKa0RZOXVFNGxVVDIz?=
 =?utf-8?B?V29kU2tmM3AxR0pyb2lDSThYaXpQWS9sRUlLcWY2VXZYU01OSHVncjV1K2Fl?=
 =?utf-8?B?ZDFGQ3RWSTgwdkJrc0lKbTU3TmxGZlBmV01FU3VDUWxLdXFSc0NYbWFCbHRh?=
 =?utf-8?B?YWVYSWZkc0pjMVM2UkxRUEtRRitiMyt6QndjUURmQ1pBWnJwYlpRRzRVYThY?=
 =?utf-8?Q?e0jHYkeSP15n++Uvy+7q9Q+I0HgHXc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTk5RVVuVGZXNVF1OFhMeldKYThHK3U0b0pGMUNyeWgreHM4eTRlNkp6VXVL?=
 =?utf-8?B?TjJyUTRnbXdpZDI0WlJUT2t2Z3djVUtYTVhkTHBHNlExV0NUcWRYWFJ2ZmlE?=
 =?utf-8?B?cG1zVWMrcmp0OEd4K0JlQm9QSXNNZzJ3Tm56NEJMcFdCYnNBWVU1QVhQNGRE?=
 =?utf-8?B?bzZ5cDdBdVlQbGVERXBhTlhpbWRyN1VpTmFsRTZodmlhNzd2SEFSNnoxSkJE?=
 =?utf-8?B?S3dwZFJIaElMcnZxaE5Kb1BzcnNNK21RQXdjTU0zSlhaR0Z3YWxjVjZ3eURo?=
 =?utf-8?B?MW5VbXZUUGE2U3dsY3F3VmhTaW1vZko1OW5EbEhGVlZaREd3SkdCbnlNTFlL?=
 =?utf-8?B?UHFQVTZJMzBqd1JvOG9iQUM3czZIdVh2MElDdC85WTZ5MlNZU2pTTW9NL2lP?=
 =?utf-8?B?SGliM1B2d1oxTExURVJkUHhHeEQzMzlBQnRjSlJjUzM5U3ZYUU5uRG50Vll4?=
 =?utf-8?B?b24yR2NpL1RUcWJ1aVE1Rnp1MWNPNlhIcHJJY0UzVGp6UjAyeW1Ta1JtUXBJ?=
 =?utf-8?B?MW84R3ROd3ltbEhvU0NOb2JEYW5oeFp2MEtHM0c1N0JLZG9ncW8rUWZaN25x?=
 =?utf-8?B?VWpqWHQwRjdqN3NPbmFDM2FKOUV5dkdEeUI1MHRGTjFPZWJkS00vbWZHUXVB?=
 =?utf-8?B?c0VYekZRRVJoeHVmRlA0TFRpV0R0b0lLcGVuZ2Z6VlNvUFY5Y2ZLRHZmTHJU?=
 =?utf-8?B?ZTNacENnc2hHbm5YUGdaSlRyeXpKei9NMDRnWXE0N1RCWDQ1T1luS2o1aXA2?=
 =?utf-8?B?aW1OREhmOGNIelNXclNYOE9HNFdIS1pBTGltWjEzUDJGQXlxSVlrSUI3SDJy?=
 =?utf-8?B?NTR0eU1LdEJVMUp5OXJUQ1AzTnphdGVDdEt6ZGYzbVloVXlxVXVtK1grYWlU?=
 =?utf-8?B?dkF3TmlPUE1xTVQyN2dVUWVKeHZPYzM1UDQxR3ltS2pmU01UNlNNdFFadTJT?=
 =?utf-8?B?WHRSR0VHRGRpNk14WTE0Vnd4bjkvYWJUenNyTkFTZ3FHWHFkSDZoTVZmVEhW?=
 =?utf-8?B?N0tCUVo2S0NzenhXRTkzbTJSOU5IeHRCdWVBV1B2MnpudnQ1NytJRDlTUlcw?=
 =?utf-8?B?VUpMOGIyVEJ5cnIrUVZnTkQ4TjFOM1Yrai9jTmpDa0RRZ2dkV2ZReExhdUlJ?=
 =?utf-8?B?ZXhURGpRQ014dkVqR3RjWWtvQXFwVllyOTZGQVdUNm5nRFI3aHFzSVc2Ymtr?=
 =?utf-8?B?Tkk3VEJiei96ajB0RFlDT3FLdi9VcGlHbklCYnMrcW44QWVFVStqR1hzejkr?=
 =?utf-8?B?SzRlRUtoZVhsL3lPalRINEZLaVYzTktNYjhiOWpvdERIUis1MVJUS1JhaEsw?=
 =?utf-8?B?bGVyK2ZJb0tBakpGWVJSeDF4ZEZ4MWlHZ0M0dFZkVE9nZHFxY0xhQVd4R2ty?=
 =?utf-8?B?V0puZW93djljZWU2UDFrNnpzcVRLWGlwdHBjRVVQVXYxVm9qU3I1QTkxS1JQ?=
 =?utf-8?B?c0paUFQxNzJjOW1jdnlpNURnNy94VlI3RXdKOTBJMzZsM04yRm5QYU92STVJ?=
 =?utf-8?B?YVY1ek9yRkV5ZjdHalFLekY2dHRPaVZPekM0VVFsYjVlb0h6dDR1ZGZId3BV?=
 =?utf-8?B?bUJMdW5Xbnp6RDNMOXJCcmhQY1lnNG9mbExibEpvRi9qTWRrSkdkM0ZmN1cv?=
 =?utf-8?B?SzVDTHNjNU1Ja01CU1dTOGtZUFhwQ1JaOHc2RjBKT1dSbms3bEFSL1ZOdGZN?=
 =?utf-8?B?VWY3SFkzY1E3VW1qMUxMS1JtSXdIcVI0cXp6MHZXeUZhbzZLMzZXT3FWQmo4?=
 =?utf-8?B?ZHN4UWlUTk04dzFlS0NGazJEOUdXeHpndHo5TUlPQ2VkYk94WFpldWhRS25R?=
 =?utf-8?B?QnQvSld5c1hNaUtEMWhXTGZlWU9QSjNFWjJNeEZsQTZ2RnN5ZHdOQkNNMEp6?=
 =?utf-8?B?eUM4VEtnb2Jpeno0dGZmNEdZUWJhT3JNcjk3L1poYjhUd3VUcjJVWFhVOXBr?=
 =?utf-8?B?Qk1HendSSS9ia0srbGtvZWpYemp1Z1dmSTZWOGl5RVdlUCtpTzRwT2U2dTc3?=
 =?utf-8?B?c3p6SFk5U2FSS3J0KytjNGFVWW90MEt3b2Nlbyt4d2t6VTdHOGtBcEVYVGdt?=
 =?utf-8?B?OGhtTzFyZTJXU3NpcGU2SVI4NXVpd1NjWHFUUjg5ZUcwVXBuS3Z6bWsyQWRp?=
 =?utf-8?B?Nk9oUzM2VFZEWnlheEVUZmp2NldMUURsSzZZdDNla0lPNW1BeG55cEMwM1BZ?=
 =?utf-8?Q?YhELvXrO9gfZuN4kN+EFFEo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <732BF4AEA3F1204CB9406CB93D828A21@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00936907-c1f0-4cd2-beed-08dda366f2ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 12:54:31.1295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B5smX6jyxApkbHD8tKv6RmtrSPekQgzLfuLzXTB9ErRMkNonttxiypph8n9PXDf4KT52Eppno9v7jmW5BP4qPiiCsNgw6Nsx4IUZ+XNtISU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7341
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
QWRkIGEgZnVuY3Rpb24gdG8gZ2V0IHRoZSAoY29uc3QpIHBvaW50ZXIgdG8gc3RydWN0IGRyYW1f
aW5mbywgYW5kIHVzZQ0KPiB0aGF0IHRvIG9idGFpbiB0aGUgcG9pbnRlciBpbnN0ZWFkIG9mIHBv
a2luZyBhdCBpOTE1LT5kcmFtX2luZm8NCj4gZGlyZWN0bHkuDQo+IA0KPiBDbGVhbiB1cCBhIGNv
dXBsZSBvZiBsb2NhbCB2YXJpYWJsZXMgd2hpbGUgYXQgaXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
NSArKystLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmPCoMKgwqAgfMKgIDkgKysrKy0tLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmPCoMKgwqDCoMKgIHwgMTUgKysrKysrKystLS0tLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqAgNyArKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0u
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMyArKysNCj4gwqA1IGZpbGVzIGNoYW5nZWQs
IDI1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggNmM1Mzc2MzViMTIw
Li45N2FlZjcyOWY3ZDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMNCj4gQEAgLTUsNiArNSw3IEBADQo+IMKgDQo+IMKgI2luY2x1ZGUgPGRybS9kcm1fYXRv
bWljX3N0YXRlX2hlbHBlci5oPg0KPiDCoA0KPiArI2luY2x1ZGUgInNvYy9pbnRlbF9kcmFtLmgi
DQo+IMKgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IMKgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+
IMKgI2luY2x1ZGUgImk5MTVfdXRpbHMuaCINCj4gQEAgLTEzLDkgKzE0LDkgQEANCj4gwqAjaW5j
bHVkZSAiaW50ZWxfY2RjbGsuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb3JlLmgi
DQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gLSNpbmNsdWRlICJza2xf
d2F0ZXJtYXJrLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX21jaGJhcl9yZWdzLmgiDQo+IMKgI2lu
Y2x1ZGUgImludGVsX3Bjb2RlLmgiDQo+ICsjaW5jbHVkZSAic2tsX3dhdGVybWFyay5oIg0KPiDC
oA0KPiDCoC8qIFBhcmFtZXRlcnMgZm9yIFFjbGsgR2V5c2VydmlsbGUgKFFHVikgKi8NCj4gwqBz
dHJ1Y3QgaW50ZWxfcWd2X3BvaW50IHsNCj4gQEAgLTc2Myw3ICs3NjQsNyBAQCBzdGF0aWMgdW5z
aWduZWQgaW50IGljbF9xZ3ZfYncoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKg
DQo+IMKgdm9pZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KQ0KPiDCoHsNCj4gLQljb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8gPSAmdG9faTkx
NShkaXNwbGF5LT5kcm0pLT5kcmFtX2luZm87DQo+ICsJY29uc3Qgc3RydWN0IGRyYW1faW5mbyAq
ZHJhbV9pbmZvID0gaW50ZWxfZHJhbV9pbmZvKGRpc3BsYXktPmRybSk7DQo+IMKgDQo+IMKgCWlm
ICghSEFTX0RJU1BMQVkoZGlzcGxheSkpDQo+IMKgCQlyZXR1cm47DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4
IGQ3ZjVkM2RiYjhhMS4uOGU4YzNhMmY0MDFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtNSw2ICs1LDcg
QEANCj4gwqANCj4gwqAjaW5jbHVkZSA8bGludXgvc3RyaW5nX2hlbHBlcnMuaD4NCj4gwqANCj4g
KyNpbmNsdWRlICJzb2MvaW50ZWxfZHJhbS5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X2Rydi5oIg0K
PiDCoCNpbmNsdWRlICJpOTE1X2lycS5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiBA
QCAtMTYwNCw5ICsxNjA1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBidWRkeV9wYWdlX21hc2sg
d2FfMTQwOTc2NzEwOF9idWRkeV9wYWdlX21hc2tzW10gPSB7DQo+IMKgDQo+IMKgc3RhdGljIHZv
aWQgdGdsX2J3X2J1ZGR5X2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKg
ew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlzcGxh
eS0+ZHJtKTsNCj4gLQllbnVtIGludGVsX2RyYW1fdHlwZSB0eXBlID0gZGV2X3ByaXYtPmRyYW1f
aW5mby50eXBlOw0KPiAtCXU4IG51bV9jaGFubmVscyA9IGRldl9wcml2LT5kcmFtX2luZm8ubnVt
X2NoYW5uZWxzOw0KPiArCWNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9IGludGVs
X2RyYW1faW5mbyhkaXNwbGF5LT5kcm0pOw0KPiDCoAljb25zdCBzdHJ1Y3QgYnVkZHlfcGFnZV9t
YXNrICp0YWJsZTsNCj4gwqAJdW5zaWduZWQgbG9uZyBhYm94X21hc2sgPSBESVNQTEFZX0lORk8o
ZGlzcGxheSktPmFib3hfbWFzazsNCj4gwqAJaW50IGNvbmZpZywgaTsNCj4gQEAgLTE2MjMsOCAr
MTYyMiw4IEBAIHN0YXRpYyB2b2lkIHRnbF9id19idWRkeV9pbml0KHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KQ0KPiDCoAkJdGFibGUgPSB0Z2xfYnVkZHlfcGFnZV9tYXNrczsNCj4gwqAN
Cj4gwqAJZm9yIChjb25maWcgPSAwOyB0YWJsZVtjb25maWddLnBhZ2VfbWFzayAhPSAwOyBjb25m
aWcrKykNCj4gLQkJaWYgKHRhYmxlW2NvbmZpZ10ubnVtX2NoYW5uZWxzID09IG51bV9jaGFubmVs
cyAmJg0KPiAtCQnCoMKgwqAgdGFibGVbY29uZmlnXS50eXBlID09IHR5cGUpDQo+ICsJCWlmICh0
YWJsZVtjb25maWddLm51bV9jaGFubmVscyA9PSBkcmFtX2luZm8tPm51bV9jaGFubmVscyAmJg0K
PiArCQnCoMKgwqAgdGFibGVbY29uZmlnXS50eXBlID09IGRyYW1faW5mby0+dHlwZSkNCj4gwqAJ
CQlicmVhazsNCj4gwqANCj4gwqAJaWYgKHRhYmxlW2NvbmZpZ10ucGFnZV9tYXNrID09IDApIHsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4g
aW5kZXggODA4MGY3Nzc5MTBhLi5mNTYwMGY0Yjc3NzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC03LDYgKzcsNyBAQA0KPiDC
oA0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2JsZW5kLmg+DQo+IMKgDQo+ICsjaW5jbHVkZSAic29j
L2ludGVsX2RyYW0uaCINCj4gwqAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gwqAjaW5jbHVkZSAi
aTkxNV9yZWcuaCINCj4gwqAjaW5jbHVkZSAiaTl4eF93bS5oIg0KPiBAQCAtMzE4NCw4ICszMTg1
LDYgQEAgdm9pZCBza2xfd2F0ZXJtYXJrX2lwY191cGRhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpDQo+IMKgDQo+IMKgc3RhdGljIGJvb2wgc2tsX3dhdGVybWFya19pcGNfY2FuX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gwqB7DQo+IC0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+IC0NCj4gwqAJ
LyogRGlzcGxheSBXQSAjMDQ3NyBXYURpc2FibGVJUEM6IHNrbCAqLw0KPiDCoAlpZiAoZGlzcGxh
eS0+cGxhdGZvcm0uc2t5bGFrZSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTMxOTMsOCAr
MzE5MiwxMSBAQCBzdGF0aWMgYm9vbCBza2xfd2F0ZXJtYXJrX2lwY19jYW5fZW5hYmxlKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiDCoAkvKiBEaXNwbGF5IFdBICMxMTQxOiBTS0w6
YWxsIEtCTDphbGwgQ0ZMICovDQo+IMKgCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5rYWJ5bGFrZSB8
fA0KPiDCoAnCoMKgwqAgZGlzcGxheS0+cGxhdGZvcm0uY29mZmVlbGFrZSB8fA0KPiAtCcKgwqDC
oCBkaXNwbGF5LT5wbGF0Zm9ybS5jb21ldGxha2UpDQo+IC0JCXJldHVybiBpOTE1LT5kcmFtX2lu
Zm8uc3ltbWV0cmljX21lbW9yeTsNCj4gKwnCoMKgwqAgZGlzcGxheS0+cGxhdGZvcm0uY29tZXRs
YWtlKSB7DQo+ICsJCWNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9IGludGVsX2Ry
YW1faW5mbyhkaXNwbGF5LT5kcm0pOw0KPiArDQo+ICsJCXJldHVybiBkcmFtX2luZm8tPnN5bW1l
dHJpY19tZW1vcnk7DQo+ICsJfQ0KPiDCoA0KPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IEBA
IC0zMjEzLDggKzMyMTUsNyBAQCBzdGF0aWMgdm9pZA0KPiDCoGFkanVzdF93bV9sYXRlbmN5KHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJwqAgdTE2IHdtW10sIGludCBudW1f
bGV2ZWxzLCBpbnQgcmVhZF9sYXRlbmN5KQ0KPiDCoHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlzcGxheS0+ZHJtKTsNCj4gLQlib29sIHdtX2x2XzBfYWRq
dXN0X25lZWRlZCA9IGk5MTUtPmRyYW1faW5mby53bV9sdl8wX2FkanVzdF9uZWVkZWQ7DQo+ICsJ
Y29uc3Qgc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvID0gaW50ZWxfZHJhbV9pbmZvKGRpc3Bs
YXktPmRybSk7DQo+IMKgCWludCBpLCBsZXZlbDsNCj4gwqANCj4gwqAJLyoNCj4gQEAgLTMyNTAs
NyArMzI1MSw3IEBAIGFkanVzdF93bV9sYXRlbmN5KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5LA0KPiDCoAkgKiBhbnkgdW5kZXJydW4uIElmIG5vdCBhYmxlIHRvIGdldCBEaW1tIGluZm8g
YXNzdW1lIDE2R0IgZGltbQ0KPiDCoAkgKiB0byBhdm9pZCBhbnkgdW5kZXJydW4uDQo+IMKgCSAq
Lw0KPiAtCWlmICh3bV9sdl8wX2FkanVzdF9uZWVkZWQpDQo+ICsJaWYgKGRyYW1faW5mby0+d21f
bHZfMF9hZGp1c3RfbmVlZGVkKQ0KPiDCoAkJd21bMF0gKz0gMTsNCj4gwqB9DQo+IMKgDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYw0KPiBpbmRleCA5ZjgwNmNlMGViOWUuLjc2
YzIyNWZkNmM3MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVs
X2RyYW0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5jDQo+
IEBAIC03NTAsNiArNzUwLDEzIEBAIHZvaWQgaW50ZWxfZHJhbV9kZXRlY3Qoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgCQnCoMKgwqAgc3RyX3llc19ubyhkcmFtX2luZm8tPndt
X2x2XzBfYWRqdXN0X25lZWRlZCkpOw0KPiDCoH0NCj4gwqANCj4gK2NvbnN0IHN0cnVjdCBkcmFt
X2luZm8gKmludGVsX2RyYW1faW5mbyhzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKQ0KPiArew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkcm0pOw0KPiArDQo+ICsJ
cmV0dXJuICZpOTE1LT5kcmFtX2luZm87DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgdTMyIGdlbjlf
ZWRyYW1fc2l6ZV9tYihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIGNhcCkNCj4g
wqB7DQo+IMKgCXN0YXRpYyBjb25zdCB1OCB3YXlzWzhdID0geyA0LCA4LCAxMiwgMTYsIDE2LCAx
NiwgMTYsIDE2IH07DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50
ZWxfZHJhbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaA0KPiBpbmRl
eCBhMTAxMzZlZGE2NzQuLjE3YTIwY2QyYzZkNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
b2MvaW50ZWxfZHJhbS5oDQo+IEBAIC03LDkgKzcsMTIgQEANCj4gwqAjZGVmaW5lIF9fSU5URUxf
RFJBTV9IX18NCj4gwqANCj4gwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gK3N0cnVjdCBk
cm1fZGV2aWNlOw0KPiArc3RydWN0IGRyYW1faW5mbzsNCj4gwqANCj4gwqB2b2lkIGludGVsX2Ry
YW1fZWRyYW1fZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gwqB2b2lk
IGludGVsX2RyYW1fZGV0ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gwqB1
bnNpZ25lZCBpbnQgaTl4eF9mc2JfZnJlcShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
DQo+ICtjb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICppbnRlbF9kcmFtX2luZm8oc3RydWN0IGRybV9k
ZXZpY2UgKmRybSk7DQo+IMKgDQo+IMKgI2VuZGlmIC8qIF9fSU5URUxfRFJBTV9IX18gKi8NCg0K
