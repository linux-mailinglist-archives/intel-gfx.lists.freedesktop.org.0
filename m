Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC6B8FF504
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 20:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E15E10E091;
	Thu,  6 Jun 2024 18:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agbxegai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848B210E091
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717700213; x=1749236213;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CttpaI4DSFIeBCqmtEjQ9Nd/tGDXa3qQDwdStmtxEYY=;
 b=agbxegaigdY/cw5JO9EnSQIlFXpjocVYDXzWEZfuYVL6161/tbUCAhbw
 pCvCa6abtxPXWz2ZXxGm9fxjlqdk+yJvDxDTFijJFC+YuIJDeQI/TE0dD
 4Ew3qPHVPaA9uJ9U7i0jU3I3q8o643OMUgChabzvVJwzj/tG/pjZoeaGb
 fMVthqc1wPhCpvk4KFw3auV0Jozv+gUX3wGSf2ysG5jwgUaGbK9hkAvNM
 Uy4KkJR623d/SyIVmmMNBxhuB4uUppbEKK744Tw/t9dMBmACmGi0aQ54h
 6UYKzOjAjAZ83YDZuuxYG1vZ2ZsZCn3TepZhu7fmR8Emz8hHueMo9Mjbv A==;
X-CSE-ConnectionGUID: RmV+fPttR3+dJmYkrwyvFA==
X-CSE-MsgGUID: 60VTCvLkRPK3lc8+niMVTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31940754"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31940754"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 11:56:53 -0700
X-CSE-ConnectionGUID: QdgzMWsdTTeOxJI1Xb34dw==
X-CSE-MsgGUID: jjHPGHweS/aHe59Tp1uD5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42528815"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 11:56:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 11:56:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=faNSwlJHiED6qEcMQbuLTzoDNWEXKQBSmgaPRS7++msKo1Ka31h4UE6/mcguI6kK3vOKCI8H6HkiQqzGEr+2GDHuLK+bkUrCCSTgL3m/st6Wk+8dCWnUy54swgc44Yx0ZjNtoS6bUNEjfOGiEZ05oTLvMssPdRfB+G5Y3KTJfpSJ2CH43BUqTHFFt8cpOTc/2EJ/XDZkgAh502z7eC90J/PMH6MCmAQHNMx0QRp8MhLAx4hnZYW6UfH/PmZxHjABP2+P7dPAHzaKbUcF8kbHvYwNyTZavooyK4ZQkFufT4Bi2g134hDwxzODaPzJTyQyPSVse75x1AD6fx5B1NqQYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CttpaI4DSFIeBCqmtEjQ9Nd/tGDXa3qQDwdStmtxEYY=;
 b=M0SLZdvzHUD1XfdTXmWpMbEJx9x0f4G2wIoyGhHCTW8tJAypsdicJjsr+0Q99k4u9h53W0rYXjE2dHdJ+ySMCcJeU0KtCfaSYPQVDPAgzdNr73NeXShBFLlMLwtvayBUVYqKeU5ia6//f0ZUb3SS+ER3eOeMPdkv/OQVHBRpawcXzP3lYW/kurT1etDuirElp9HaeF3XOJoGXKsKk/YAmGFJ5vdA30ZPSwt4gP/zzMKvOlyenX4rjBSKMOvbgT0vo7g2VXDbmY+aZq7VaGfWOlHLcRxMlGNpxPsQfe/3SCwKCIrlNvpnsQTftUNPv6pxGqurFU9qyVbViNweiaWMrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6566.namprd11.prod.outlook.com (2603:10b6:806:251::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 18:56:43 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 18:56:42 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/4] drm/i915/dsb: Move DSB ID definition to the header
Thread-Topic: [PATCH 2/4] drm/i915/dsb: Move DSB ID definition to the header
Thread-Index: AQHas097HN3NqJalnEKnd7dcHAxaM7G7HRfg
Date: Thu, 6 Jun 2024 18:56:42 +0000
Message-ID: <PH7PR11MB59818B3FA462003074F8BA52F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
 <20240531114101.19994-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240531114101.19994-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6566:EE_
x-ms-office365-filtering-correlation-id: 2a2a3dbf-d7c1-4abd-7952-08dc865a67ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WkJ4VkErcWduVEs4VVFSbWNHUWh6RzhnZmNla0pCdGY1R2prZHRRa1l0UGJV?=
 =?utf-8?B?dGVpcXYyeDVLMXE4bmhGdlFKb05jbXQ3eGIrUHpPa2FNTkt1a0VLSDNkK0dX?=
 =?utf-8?B?MWh6R0o3M3BFbldJbDZ3cGFFRGliU1YxUGxtTEJWVTlLOWNONnhCb0hMaGpZ?=
 =?utf-8?B?TWdtMWduY1gxZHVON1hQZU1SWXpyNi9GSTNOWVJsSW11c1hUOGF6U0thblB0?=
 =?utf-8?B?dmlMczVpUHFPQWpaRk1XSDFvT2xRUWhCekxiV1Y2Uk1oaHQyTWxyY3gwcmhV?=
 =?utf-8?B?WmtGV21MODNnbDFXbHF5QWNjNllIV3htN2M5TE1YQ1NRaFl0S3FTdTArWmox?=
 =?utf-8?B?K05sNWk0bCs5NGhEek1LdVc3NmNCcFhVR1BhVWpvRU1BcVhpelhrNlA5Slo3?=
 =?utf-8?B?YWJET0l0MmZlS1BiNXVNRHd6RmVmUWE3bXdBR2tQV0RsRUlhelRPc1FmajU5?=
 =?utf-8?B?bmdlUVZCbXNtZ2lXWG1ld2syR0FLMkJhd0RqRGtMWFk2ZXVPdktxUnJvOTNN?=
 =?utf-8?B?aXV3aHEwMmJ5MVZHczVSL0J0cjYrSDlTdXhqM3NpbmI0bFNrWFl5NVV4L0k2?=
 =?utf-8?B?Q3RScEtMTHRHNzVYbWY5cUx4MWNLS1pKSjB2a0IzbDVQMjVlSGxiQ3pmbWpJ?=
 =?utf-8?B?clNkMWs4eEtqRCtlaG9mV1FQM04yRWlOZXUrN3gzUGYxOEpPN2tSMTZ6QWMw?=
 =?utf-8?B?cytwTlVLWGZ1a05ZZnFPemFoM25NcmtUeEZ4MUFxdy92T2JHMHI5SHJubW11?=
 =?utf-8?B?UjR0dE91YTROQTFGT3VJRloyQ0NVUnlmdE5rcWtadkVjSTlUcytMNlBHQTF1?=
 =?utf-8?B?NDVGVUNWSG4yQVRVR3hxS1kxYmdIS2pnUHJJWlQ4SFhSclFCQ1Q3WWYveUor?=
 =?utf-8?B?cC9CRGxZeWdKWHFDVW56Q3FmT0VNOEZzbmVOOEFheS9EanFvSitGU0tnYmE0?=
 =?utf-8?B?WTVvQ0NSUUNqNWsvL054bTM3cUE0TEVubm42SVppZ215Ty9PMWxBQjJxT3RO?=
 =?utf-8?B?V0x1RjBGM29BZGswNHU5ako5TWVLSnlHVjB6OFBPWCs0UFd5Y0tleHBQSTdt?=
 =?utf-8?B?am01akk3TnVzOU5IaWJjbkMrTmJnRnluRzdSQXJyQzB0ZWdxZEpWbE90SUg0?=
 =?utf-8?B?ZTR6MUxZYStJVnN5c2pHY1Z0dEJ2WHgvZmxkdUw3T0lORktKRVQvbTF1YjZj?=
 =?utf-8?B?RlQ4aTBWek1iVU5ndjBqeHNGL0hVYnR1VUo1eEhjSSsrc1ZRV04vRStySDVR?=
 =?utf-8?B?aEJoQlF1NXV4MEdSYk00ZVI5WGV2djRpZE9uZjJTSnV1RkhiUlgxRk5KUVox?=
 =?utf-8?B?dytCMzNFNWdtVE1lVFkrVE05ZkY0djBKdVExdzVYMElOOTdrWlZpN1oyVnl0?=
 =?utf-8?B?aWdRdnVJSWpBVVl5MXV5d25kY09uYTJFL1RsWjFkUnJlZjBZS3RSOTJCMnFu?=
 =?utf-8?B?dVkzUHhydG00bmp1QnRZNi90ZElDdGZBNWNIbW5sSHAxUmIvSUQvSGc1N01M?=
 =?utf-8?B?STFlQk50MkswblFEYUNMTTBrYW1HS2NNRXhEUUJRNzlrd1hTdUora3krVS8v?=
 =?utf-8?B?VVV6RUJ4L0htbHN6NzN6MXlpWVN5cnk4TzdnbWYwU2lVRnR2cldEYVczWWRO?=
 =?utf-8?B?NXNsY1A2NnBMRUJROFlzMUYxTUZjY3N1cGNSMFovSEZMdWh3K1lmbmN0azVo?=
 =?utf-8?B?elhnY2NWMjM1YXN1b3czS01uZkxLVDJ3SjBXTHFIQ1Bld3NETlpXOTlrb0xa?=
 =?utf-8?B?cWplM09Bb3c5UEUrdzVXWVhYcDJCRnAzSjVZbkwzZ1NWRGp4VkZVN2RKZjl2?=
 =?utf-8?Q?5xQvaaTmVlpmWZAdXfFQMoD79Zj8AIwIqqqQc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmxGWFlHQnNqdDViVll5ZTBRMXZZQTFIdndrYXErVUVBck9EaXF1RzlCYnIy?=
 =?utf-8?B?YTM2RTgvT3lqTmR0dmlZVGsyWmRDK1BlenMyV2JoNmxUeFR0TTlTbnpFRTE2?=
 =?utf-8?B?UFZXMVIwY1NDNkRxU0Y4R2t2NUoyVTNJMnpRZ3FrYng1dGtTc1lpRFpsQ3Ny?=
 =?utf-8?B?QUozQk5DNHllZHNKYndnZ0lKaGtFL0JDcU9hQ1ZEQ0VBb0gzeHZocTVvVUZw?=
 =?utf-8?B?U05IQWQxRnFrSjdudDFaRHVDcUV6UU8wK0ZUSWZaRHdzSGRIenNKaUp3ejBZ?=
 =?utf-8?B?eDZrZDRzekJacXIycjVCUEQ2RTZaQTVZaHRzQWtCbCtDQkZSaHdWMUp3U3VE?=
 =?utf-8?B?THZSbWZyK1lyc2tzTVlzN0hWZHE2NGpnd0RnRy9sNS9zaXdsakVaVHcxRkpT?=
 =?utf-8?B?a1MxNzZQTDl3NHI1dFZTMVpUZTg0aklPdmY5ZnI2QkYwMUhkUmdmUzF3bmFU?=
 =?utf-8?B?N1FYdGRNZGFmNVFjYTBkSWszaDhWWnk2WEhNbytRM3V1N2tKVTkrNFkzZURr?=
 =?utf-8?B?eG9IRVVlUFBHTDN6VG5DbHJvNzFRNUtyU0ZGd2t1aW53RC9DYW1uQmkwVEJp?=
 =?utf-8?B?ZTZFS0N6djA5NEY3VUFSNzE2NEM4clZZbmxZTzNTN3FOcTA0TUZjRExIQXRJ?=
 =?utf-8?B?U0Q0alluRmFVQ05FVEM4SVNOc0xpNzhDdWN2NkkySGtNQUkxaDRrOUc4QTcw?=
 =?utf-8?B?RnJXbWRzUVhPelFyOTJFdkhxdUI4Nm51WUkydVhaWnhWVkZPSXZ3OU5tcmVt?=
 =?utf-8?B?MDhsKzUzV3VSU2xsT3EvSDlSRjNlZUV2bVJXeWpiMHNSajZWKzk1SVd6aXZD?=
 =?utf-8?B?NmNGZ1ZBemlqaWVuUFp6N0FId2FCY2lyQjRQTkpLTkJJMWQzcjd4NGpqSWR5?=
 =?utf-8?B?VlBqWDFaM2Z2SVhlclNtWFBxWEY0NGZMRm9QYjQyRDdXYzgrdit6NlhiYnFj?=
 =?utf-8?B?SFBQaHo3SHBFYTFFckNBcUNtZ1ZvbGVvMFpzaWtnVC9SdUU0ODNlM05rV09K?=
 =?utf-8?B?VTFyTFdBT2wwOGpyY3A3K3Rzdm85VnNPU3BickJRcDlrajNCZXpua1R5TGtU?=
 =?utf-8?B?cGNrMlRsUWhoeDdwdWRzMWJjY3MrdERqalhFQVNPY29iVUE3bUVjUG5WbFcw?=
 =?utf-8?B?ejRDTWdwN1ppWGt0bkxMdi90cU9LVDFwcTJwcm9ZR2s2Si9YNXY3b1RvbTRr?=
 =?utf-8?B?eEcva3RLeHNrRFd6RTVpSzFnWVZVWTFJZFIxaEFHWHIxeUhpT0UzZFZmN2ZH?=
 =?utf-8?B?Q3VQMGFzNkw0Wm1Sa1ZPOFB0Nk1EYzZFaW53R3JyRmpnZzFteURDUGEramNq?=
 =?utf-8?B?c0d1SnRtNDAxSmlwRHRVemxyL3NPYzRkTTZuNncxcGlWRE5ReXloQnpzYlVG?=
 =?utf-8?B?SS9TMlg5Nk9yQVplSUF1NmRrMi9mbUMrdGpqMmtFbWlyOUhsTFhXWXBWQ1g2?=
 =?utf-8?B?RDFwMC9OS2NXOW5vRDNVbmtzaG5XWlNHMDNBbTB1WUwrQnVQSERYb2FoTWF5?=
 =?utf-8?B?UHdMakNMWmVhOGZ0TmQ4Qm9zdWVIZ090YThaRHNxNi9jM0NnSjRFZFBzWG1R?=
 =?utf-8?B?cUhqTzJwNGRZUEZrUHlWeGJFcE5OSzZ2THNwUVBaN3YxWVVwMDBscFVUazk4?=
 =?utf-8?B?aFdXVW1pekNjR0dEZ04xbXRGTnptV3ZtZFI4ZUxSSS9ZSTRDWWQyNFNKZEw1?=
 =?utf-8?B?Y0RaUDU5U0dMQlpnR2FrbWtjSUdmQzhrUkp0cHFWTnpORVYwelI2TXA2dU81?=
 =?utf-8?B?OVFuYlRzUmFGVHhUZjBDbFN5bnFFVXhZVHJTbHpFMUp4bHp3enBXSW55alRw?=
 =?utf-8?B?cVRWdDVOSWFndGVuVWxZeTRsMThpSE9EUERiSXd1cFBhV1VUQ2dYb2pqYVhx?=
 =?utf-8?B?S29rV29tbmpPNkZzSlVTOWJrc1hEZ3Z0ZTBNb0o5ZGdnU3ViV0RBeEJ6M3gz?=
 =?utf-8?B?TFlJUnd3WVNXZ1VyVzEya2c1N3hUUlVFSzBlZERzRnhwb0pTcHFBRTBWRVhZ?=
 =?utf-8?B?L0s5cm8zYUM5ZXpnYkZDTmMzVnpkQmp3QnRDM3pjNk1sWEdhUnFKTm5NWlVs?=
 =?utf-8?B?U3RINE9wQTl4bnRWSVJYQ2lpOXprZGJXVTRDbGRHTUVuZ0IyWnZ1TE5RRDUz?=
 =?utf-8?Q?6fKdvf9jJktL/kfmaZyLEzVS2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a2a3dbf-d7c1-4abd-7952-08dc865a67ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 18:56:42.8167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hldyAtNTnmJSwk+nu3r3Ez7C6o42SlQCfWP/MbyYpSDfr0t87K7cEiZUhcxvP5Kiv8zt59YImIhIdx9trSjydg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6566
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
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMxLCAyMDI0IDU6MTEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIvNF0gZHJt
L2k5MTUvZHNiOiBNb3ZlIERTQiBJRCBkZWZpbml0aW9uIHRvIHRoZSBoZWFkZXINCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBXZSdyZSBnb2luZyB0byBuZWVkIHRvIG1ha2UgdGhlIERTQiBJRCB2aXNpYmxlIG91dHNpZGUg
dGhlIERTQiBjb2RlLCBzbyB0aGF0DQo+IHdlIGVnLiBjYW4gdXNlIG11bHRpcGxlIERTQiBlbmdp
bmVzIGluIHBhcmFsbGVsLg0KPiB0byB0aGF0IGVuZCBtb3ZlIHRoZSBkZWZpbml0aW9uIHRvIGlu
dGVsX2RzYi5oLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFu
aW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYyB8IDggLS0tLS0tLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuaCB8IDggKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDBlMmJkOWEyZjlkYS4uZjNiZmE1YjE2NzJj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAg
LTE5LDE0ICsxOSw2IEBADQo+IA0KPiAgI2RlZmluZSBDQUNIRUxJTkVfQllURVMgNjQNCj4gDQo+
IC1lbnVtIGludGVsX2RzYl9pZCB7DQo+IC0JSU5URUxfRFNCXzAsDQo+IC0JSU5URUxfRFNCXzEs
DQo+IC0JSU5URUxfRFNCXzIsDQo+IC0NCj4gLQlJOTE1X01BWF9EU0JTLA0KPiAtfTsNCj4gLQ0K
PiAgc3RydWN0IGludGVsX2RzYiB7DQo+ICAJZW51bSBpbnRlbF9kc2JfaWQgaWQ7DQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5kZXggMTZkODBm
NDM0MzU2Li41ZDc1NjFlYTY1ZmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuaA0KPiBAQCAtMTQsNiArMTQsMTQgQEAgc3RydWN0IGludGVsX2NydGM7DQo+
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gIHN0cnVjdCBpbnRlbF9kc2I7DQo+IA0KPiAr
ZW51bSBpbnRlbF9kc2JfaWQgew0KPiArCUlOVEVMX0RTQl8wLA0KPiArCUlOVEVMX0RTQl8xLA0K
PiArCUlOVEVMX0RTQl8yLA0KPiArDQo+ICsJSTkxNV9NQVhfRFNCUywNCj4gK307DQo+ICsNCj4g
IHN0cnVjdCBpbnRlbF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJCSAgICB1bnNpZ25lZCBpbnQgbWF4X2NtZHMp
Ow0KPiAgdm9pZCBpbnRlbF9kc2JfZmluaXNoKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7DQo+IC0t
DQo+IDIuNDQuMQ0KDQo=
