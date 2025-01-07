Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21928A04A6A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 20:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6715810E066;
	Tue,  7 Jan 2025 19:45:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIAkihyN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E20C10E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 19:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736279108; x=1767815108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mGiDvu0qpTq9EfgyrIkAB2lpYiFo8bYlvfcJBBVWTbQ=;
 b=NIAkihyNlg/3P6iCwT8oNiOVI7zmLtaucL8GNSu0xKck2QoHs2Qnjfuy
 pVWo8xgE5Xw76ah6Er1zb4jTCogxnZ8QYYvZE67xIOFI8omOuKylO3yh1
 nkOlbcVwQM33CxNm326S/mBsQ64bnki7G8u62p5F8Pu4Mwh73DVUPvVPj
 wFaICNkRaEzEo+gkKBSYQYQrFUj3gfThDFdu1pPV0w0ZD5AyzVyBIwQoa
 X98hkPFL+EBOT5VA0IFJq5Uba+sMwlNNol0O42Vd7cNDxf+I5BZoLUT4X
 kw2t03XUXGw1tkOJcyBuCe8zgiXlC81aW+8jGh2gdrYn1Beopq4duWVZX g==;
X-CSE-ConnectionGUID: IU0l5RCZSxa24l7xZBMNYw==
X-CSE-MsgGUID: eYNCDQYeTTecBclgsF+jIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="35715594"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="35715594"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 11:45:08 -0800
X-CSE-ConnectionGUID: eW1ZL9fgQkOvNMGyJ5ctWg==
X-CSE-MsgGUID: uLKwq23MTsS7lp6oLqrEcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="133717864"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 11:45:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 11:45:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 11:45:07 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 11:45:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpfR2drHtt26CHkq8a5lJEkGyvj/nraxu+GQbbrnKQy7iwl+KCQTWPyidjQENvrULaLcAYgFzyLufH3yUg62duoDG18rM3M4K9U5WuHulUBNNCFSsee25Oi8VPVc7BnZbDBrqs1wXn71eZuTjaHzn8Onh3nF4KqbL95Nu9mToyZaABl4uyyh/1/nWpWrBJIN0lUCRb/7YZhJa4r8gNQHIk/Ks2nWe/GFZ+QXiQiykE/qEACUdTaChFU2yW8WgV0cNFQ0a6HLbz6hrET98UcF9XPFYCiD9WVwIZKLnesQdvs2BGZnOquTeVc1T8yj/PH0ggDsbp489/AcDDD1FF54wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mGiDvu0qpTq9EfgyrIkAB2lpYiFo8bYlvfcJBBVWTbQ=;
 b=cbGHsH79XMpyKq5ZJEUgJAICXhttPecGMoIgjiAQWdZF/CaUvaSW7d6k6DRbcGqTMme3jbs68CYhGmcx1yCMF3warBDpUKZrYA6SBUQLZqi+MqSNsizdU9CZoTEdCVRYmEzcYegSkHn1vsI/0NGcIqrxFiWj3Fd3YkRnCXUX0RfVqELFmsViVp6YPcCN0YWi445nCwwfLdZFk8xi9VTgUrKwYsK9bpKTb5hxEqXrNAoScITTSBGt/b9wrnvVQezquhwLfnerKKBDLYzLXDnCLSkxHkJkss3+wRUiccK0GwkUpZEPIussmg6N7nKeLoogGkPlNxrIQljOp4P3zYHIjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by DM3PR11MB8716.namprd11.prod.outlook.com (2603:10b6:0:43::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 19:44:19 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::f5c2:eb59:d98c:e8ba]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::f5c2:eb59:d98c:e8ba%5]) with mapi id 15.20.8335.010; Tue, 7 Jan 2025
 19:44:19 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Ghuge, Sagar" <sagar.ghuge@intel.com>, "Chery, Nanley G"
 <nanley.g.chery@intel.com>, "xry111@xry111.site" <xry111@xry111.site>
Subject: Re: [PATCH 0/4] drm/i915/fb: Deal with Mesa clear color alignment
 regression
Thread-Topic: [PATCH 0/4] drm/i915/fb: Deal with Mesa clear color alignment
 regression
Thread-Index: AQHbQisHSIKpPbe6wE27g9zuZRn8ubML9LyA
Date: Tue, 7 Jan 2025 19:44:19 +0000
Message-ID: <e1628f8af7d264fe090ff8dcb2b18260de262097.camel@intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|DM3PR11MB8716:EE_
x-ms-office365-filtering-correlation-id: c26c7cb3-d76d-4403-5237-08dd2f53ad6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eWVPTjhiMEdwVk90eVk0RXVsZnh1Vk51N0p4VE56VkNldmtxRTJraEZMK21H?=
 =?utf-8?B?RUNSNkM1UXhrUjAybHNHV3I2cDlKSEtCanVCekFWZHJCWjUvOS81Q3RkOTZE?=
 =?utf-8?B?VVFhczdXT2xPR1BSVkdrUFVJQjA5ZUlJdUZjU3lzUkFZM0pFUEp5eWtkSUVN?=
 =?utf-8?B?RS9BK3p4S0oxanZ3ZC9DaVd1cndzeE9iSW1YL04rU3JTbkNqNmFRQ0JLeXlT?=
 =?utf-8?B?WktubXFRZ3V6TUZRMEMzTjJ6bWFyZFlRbzNEYnRkKzFFTDVUdjJodW93aGR2?=
 =?utf-8?B?MTZsZGdLTk5TbkxmYmZKNXBOZ2o5cXZvbUxCYUVVSkUwRkExekhQTThZOUh4?=
 =?utf-8?B?cTduRy9LSnNTWU93Y3VCYTFMNTFYRTBtN0tXL2p3d1ZWWC9lV05ZTUtZN3dr?=
 =?utf-8?B?OW9Xa01rR3l3OXdWWFN0aHhhWTNKUjJaVXRWQWcwT1R6dllsbTFjWDhDRHkz?=
 =?utf-8?B?YTB4L0RKUGhIY3dLUS9nTXpIQkZMK1dQVGdUc3pDeS9VRWllL3ROenp4NGZj?=
 =?utf-8?B?YmplRGhLVTBIR013dys0V0FrQkZOdWlyN3pPeG52OXBlZUZUTlVYV2kxMGRn?=
 =?utf-8?B?QlBqSWtUMFEvRzRrNld6cjV1QTB4ajFnTFNKQXhhUEZHMjZIelhoSER4K21y?=
 =?utf-8?B?NnNsTFZWeEtORFpaMi91bDZqbHRjekQ1UUE3VVhxemtjY1VwaUcrQ25nLyty?=
 =?utf-8?B?dVIyMjN5dXdXMjBma3krbzhlK2NVM1ZRUVFxWVl6U2RCREVBZ2xxODQ2QTJm?=
 =?utf-8?B?QmFHZXNhVXVaZXliNUFhbFg1UVh2THNmOTlaOTI5REdwUmR0czZkNnRNdUw2?=
 =?utf-8?B?WmV6Z1JUVW9DQmxMeUUzV1c1V1FvalhpSStudnBtc3I5ZS9FNXdwSjVLWndP?=
 =?utf-8?B?V3IxOCs1VGRvTW02bnYzbEpzY1ZNdUJLVldXWFVnMTJPUVI5Q1ZkQ0tnckFy?=
 =?utf-8?B?cjNjbFdOcyswbTZVR1RkR3NDQm1nVmlGTmRXeXhrZGp0TzhvaEk4UGx3SGZ3?=
 =?utf-8?B?RHExancwSGZFc1NqUHJWV01zb1BUdThNQ2Y2ZFluUjl5S29Kd3NKMnVQSHp5?=
 =?utf-8?B?REI5OE54QlprS1VqZ3JIZTA1bjhROXkySGRZd1BQaDMwRlAvWHc0NVZ2bTBZ?=
 =?utf-8?B?Vm1IRUtieGZkYTlvclVjTTByWlJrNVJOc1BSbE9FNlNlNThtcWIvNFBJRjgv?=
 =?utf-8?B?NTlkY21SWVU3ZENkamoveHVmbEptaTdSU0Fxd2xBNzJwKzdxalhsWWZtNmtx?=
 =?utf-8?B?SG1LYXgveXZNQ01rQUpaeFkzZHJZOFdEUUlNWnN3bXpUcFM3NDdGUGRKM3Qz?=
 =?utf-8?B?YjQ0QVgwUnBmZ0xvNkprRWkxVGpOcHRTbVZ0Sk1ySDQzTzJQMmFrNlQ5a3Rl?=
 =?utf-8?B?cGh0MmlpN3NEU0s5d1d0eEsxWHo5SmE5bFlnbjVsK1haUWNRZzFHUndWZUZa?=
 =?utf-8?B?VkRjRjZNdDFuOEdadTAzZHVtODl2TDh1UnlEWUZtdmlUdEVmUUpxUDNlOXlm?=
 =?utf-8?B?bndmcHY3SWlKRStteG1UUnMwaEJhbWFqb01kTVUyNVdnWnlTc202N1NsNlpJ?=
 =?utf-8?B?dzZYTW5IdGt0RGtFbFNvaC9TVjV1VW8yTzlwL0lwN2E0UlNFVTJIazBCZGpR?=
 =?utf-8?B?bGpnZFZrMnFZNnlHUmIxOEpoc0l5SVExRU9TbUMwUmNXRDkrMURLeXlCOUY5?=
 =?utf-8?B?d3hsT0FjVy9aL0RvSXdndnc0WVYvSEtIVDZIbzVzSU5NaEZUbEduK2kvWkty?=
 =?utf-8?B?cFpJTU9nTkpCT0kxaTViMUM3Ykp0OXVtYjE5N1Vpd2k3SHJ2Vm1LblVYOVNk?=
 =?utf-8?B?aGlySVB4a1NoRUk3Q09IR1RNcGV4amxld0k3VnZmTzhtc2x5UFhXRzR0dmsx?=
 =?utf-8?B?SlJRR0YrRXByZ0tsVjJkakU3MXFrbWVXSUJlZlVpSHREclFXRFhvd0FjazFW?=
 =?utf-8?Q?6iGPKpUokSW0rflvbwLRIHKHiSGC39N2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1kyc0dCMWVPV0JXSGNOSFRNMHdQNzZGSUMzZ3dCM3hXNVZmZlY4TExpTlhF?=
 =?utf-8?B?QmNMSHhUdEt3akNHQkwyNmhodWdvUTZuWS9IalozT2VOVER2dHorZXZ3b0hU?=
 =?utf-8?B?cW5zMyt0ZFFjeC93ZDFxT1piSThLVE90SytNODRTbXd4QzhQcDlyRWlhK2NN?=
 =?utf-8?B?ZWdkRHQyVi94b1MrR2VXak1UVml1aGxEeWpocTlrcVd6T0J6c0loaEVqeWNk?=
 =?utf-8?B?UGE1NFVRazJ1aG0rdkxNbFNsUGRaZG02SG02Mlh0UG5ONXV6M0FUczVrQ0Jr?=
 =?utf-8?B?Sm81c0kzaUI3NG5sVjI2bGVvT3M2TnRIdWg1emt1V1h4NmZOSDJla1c0WWgr?=
 =?utf-8?B?UkRxckMvWDRZa3Bva0I4TGY4dmlBNVBjR284WHFaYWxYSTNYaHhmS2ZHVkdm?=
 =?utf-8?B?bExLL3hvdFFqQjRVdXBZNTR1T0k0TzY0L2xudi9TektaVTJUdU9GQWJDMm5u?=
 =?utf-8?B?dlFWTkJ5SXlBaUFqZmtjTTVNamJldEhWUlAwd0l6NFl3eWw1Rys4UXRXQ3FW?=
 =?utf-8?B?UVAwd0l0VFJ5Qm4rQWtWNWw2ZzZwdFNDdGtYZXBpMTE0dlNOMW5uNzJDcjJZ?=
 =?utf-8?B?VGhRVzRJbS9tYkdTT3lEMC9CdnBSZDd6eHp5THUwMCtXWUtRRVVxcDl5cGJh?=
 =?utf-8?B?aU5aUEdXTnpCTG9pTnhsbjNFRkdQYnlIM21mYmFnYmJMb1dHdDhaNnNpdkxG?=
 =?utf-8?B?cHcxTklmdnc2NHdjZXFVU2NqcWxBRG92REZkdjQ4aHc0cmdkcnEvRThpZ1FD?=
 =?utf-8?B?Z1gzbEwxci83SGJkNDVNMTBzWnJLbVljeWNHYmdMQnhpbnZIQThQemJCMjRa?=
 =?utf-8?B?V2ErS1JwNkJvQkg2UENsVUQvZkdsOUJQZktLeDBhemVwbENDZ08xdzJwQjF6?=
 =?utf-8?B?YXZoZktZdlpNN1l2c2FrZk1UR2ZvZUFCQ1FEeEIzNW5YT09KVjdYQmt5SUlJ?=
 =?utf-8?B?U1VCNnp3WkRINUlUeDVlYjdjYkFjb043dE9NN2svK0RQY0VTeWlwL3ZNRVVl?=
 =?utf-8?B?aXh4Nk9IUmpSQTZKalJLUUJCL3orZHVTWlZmTmJ0aDlIeVRLTWZ3dDRaQ21G?=
 =?utf-8?B?S3pVVk5xZVJqWDdjZEtENWJPTFViWHBldW9xU0JjS0V2TVN5c01yanBjUWFw?=
 =?utf-8?B?NTc3REZ3QWhuU0dBM2xYS2FITEdCRG1hWEU2bG5HTXQvZmFUVUh5QjcwbXdi?=
 =?utf-8?B?WVd0WFlCTmh1YkJ2MjFiU0VPNEpBdURuenovdk53MnM4dStVTHN1a2FFaDk0?=
 =?utf-8?B?elNhWW9LTUdZVk16T2NhNGJJNVpERDNySjhRWStlOWVaR1NGTzFtTEVCeFRR?=
 =?utf-8?B?YzZJZVRvcWpEVHJ5bVlUQ09GVTJ0czJRQmV5b08wUkRaNFZpN21lZ1VBcGNV?=
 =?utf-8?B?WHJ6c1ZjdDUzZFUzYkhDQlc0eDd5WkhYZEp3aXJzUTlNbGtMdDVpMUI2MERZ?=
 =?utf-8?B?TU5LVzJjNE51aEpGbElGNVc4MGEyV3Fxb0thQ1dPdnlUaXBieHpscFV1QUc0?=
 =?utf-8?B?dnl0d3l4a3dyd1h0c0U5bnR4eXJnRUtDVVR1Wk1MeDRVNFJTRTJFSUZyeFRa?=
 =?utf-8?B?bWlTOWpUY3hOMXkrQW9qM3VKOC9SZEVSNGR6QW1NZmkwUHIxMllPMEJXNjQr?=
 =?utf-8?B?SitaeWZXTDI2UEUwRFR3R25JRUJpZ2FORGtjWVhnZFVndWh4RDZPeVlIblFy?=
 =?utf-8?B?a2hMdHhhUVpVOXNmaEc3ZVdUQXNTNGtwR1lLSUtnY0hUK201U2dSTmNkZFpj?=
 =?utf-8?B?RzA2MFlhV0o0ays2UUdIOURmZkpKMHZSYmt0Q2duU3VDOVp0Y3IzcXZzY2hz?=
 =?utf-8?B?MXF2MmRoZzNDU0wxTmRLcWlibmJQQmFYR0dtdGlCS2Z5MkY1b0JTbDc1bTZ4?=
 =?utf-8?B?SXN6VHg4ZFQyVkhaMFhua2duNzdxelovcE5vNTRRWUl5TDhnSVFKZCtMTCtu?=
 =?utf-8?B?bmIyaFJYb3ZkM2Q5bXBoeXpXYW0yOUY1ZWIxNVZEbWxQUGFncW9tQzVCdG82?=
 =?utf-8?B?OW8yNklSbGg3WDNEVVpHUHNrK25PLzFrRmxaTDJCVGFMQ3o4RnNvVllZREF1?=
 =?utf-8?B?dEpTcDhPZklnVEtBb1ZrLytpQ2pqcXk4ZVE2cC8xLy9GczB4OWI4eW5ia2JF?=
 =?utf-8?B?RExrcDJDcTVLaFM2RE81OFpCdWgyVlZSMTFFNmlDdlZVUG14eTZ1WUhUamdI?=
 =?utf-8?B?Nnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5DD438856E7B7B48B9F85AE600C02E57@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c26c7cb3-d76d-4403-5237-08dd2f53ad6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 19:44:19.4426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vUbuUGR4PqSo5akNPq6UDEB7s8Pg6UyfD6z+mQ5OcMR62rT+3do11my8uT+EJct6oqZflt6ZmPk4fbH4HBCmZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8716
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

T24gRnJpLCAyMDI0LTExLTI5IGF0IDA4OjUwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTWVzYSBjaGFuZ2VkIGl0cyBjbGVhciBjb2xvciBhbGlnbm1lbnQgd2l0aG91dCBpbmZv
cm1pbmcgdGhlIGtlcm5lbCwNCj4gYW5kIG5vdyB0aGUga2VybmVsIGV4cGVjdHMgNGsgYWxpZ25t
ZW50IHdoZXJlYXMgTWVzYSBvbmx5IGd1YXJhdGVlcw0KPiA2NCBieXRlcy4gUmVkdWNlIHRoZSBr
ZXJuZWwgYWxpZ25tZW50IHJlcXVpcmVtZW50IHRvIHRoZSBzYW1lIDY0IGJ5dGVzDQo+IHNpbmNl
IHRoZXJlJ3Mgbm8gcmVhbCByZWFzb24gZm9yIHRoZSBjdXJyZW50IDRrIGxpbWl0LiBBbmQgd2hp
bGUgYXQgaXQNCj4gYWRkIHNvbWUgbWlzc2luZyBjaGVja3MgYW5kIGRlYnVncyB0byB0aGUgY2xl
YXIgY29sb3IgaGFkbGluZy4NCj4gDQo+IENjOiBTYWdhciBHaHVnZSA8c2FnYXIuZ2h1Z2VAaW50
ZWwuY29tPg0KPiBDYzogTmFubGV5IENoZXJ5IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+DQo+
IENjOiBYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEuc2l0ZT4NCg0Kd2hvbGUgc2VyaWVzIGxndG0N
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6QgKDQpOg0KPiAgIGRybS9pOTE1L2ZiOiBSZWxh
eCBjbGVhciBjb2xvciBhbGlnbm1lbnQgdG8gNjQgYnl0ZXMNCj4gICBkcm0vaTkxNS9mYjogQWRk
IGRlYnVnIHNwZXcgZm9yIG1pc2FsaWduZWQgQ0MgcGxhbmUNCj4gICBkcm0vaTkxNS9mYjogQ2hl
Y2sgdGhhdCB0aGUgY2xlYXIgY29sb3IgZml0cyB3aXRoaW4gdGhlIEJPDQo+ICAgZHJtL3VhcGkv
Zm91cmNjOiBEb2N1bWVudCB0aGUgSW50ZWwgY2xlYXIgY29sb3IgYWxpZ25tZW50IGJldHRlcg0K
PiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYyB8IDIwICsrKysr
KysrKysrKysrKy0tLQ0KPiAgaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggICAgICAgICAg
IHwgMjcgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBp
bnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQoNCg==
