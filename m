Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51872A1A802
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 17:41:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354CF10E881;
	Thu, 23 Jan 2025 16:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OKJi+/4g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A62810E87F;
 Thu, 23 Jan 2025 16:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737650512; x=1769186512;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=sdzdwzD3oxcD3XOC8a2+QAJGS7yM0PVmYA6nOhCmyck=;
 b=OKJi+/4gNrphdjg59tSIl+yvEV0wpT9dO51wrW+exLDFMe/2uqlzuRjr
 mW76VLOcEsmqQPgwZlyTspbaA+kJOk48Hs8aPyiAkyOnatn4w2mJoHmEn
 V4bFTveqajrfBH0tvqietJenLDASMh+JWVBKavNma0FUQi8w3PPNKqocv
 5S6lqUTMN8/F/NNcaxP+VRJiToyp15v3drtaWaLHO5RAP0tybIskndNU1
 KqYXVf+cp/Czyzrn0o9PratvUQHKhDr38m81YK/8iGonQqVkF6uRtWtFz
 RDZsbpE1TMQulRMN6XgaiSVPUkTYhKdA8TemV/p9SqlKcbx8RlOoxqeyr Q==;
X-CSE-ConnectionGUID: AF3IAAxFSd2HCjNyQhmocw==
X-CSE-MsgGUID: HCk65bigTTarfM98PaIktg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38038952"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38038952"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 08:41:52 -0800
X-CSE-ConnectionGUID: t+Mj1lGNQAOEP4uWAilVPA==
X-CSE-MsgGUID: R9slehIqT4Oyz31RIXqMRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107632460"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 08:41:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 08:41:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 08:41:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 08:41:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eGaKUFmSdQmy7O6yqTf9EEUh4O9zJKZbTGMcrh7rlulhdC0ya0nlp2RnHryo0uthMJNv5trMex2/jivLBm93IcmRbJhI6RcpZUJxzFqINoMYWYg4TzYmi2bgPYMeVsCjK/DliQvRluAp9++HcQpAMe9OBoAWqlxM2/aYZ1kfEF6GvMuQRRIf7KtVzR4IaTsK0eCSphRpp0q9EiXcdbuSJP80fMnFeOS3mrLhr0MhKwM3iGCpf3SE18oW5alNWEpkHPWuvJZrcIXC84m7wfexXEi65oj88M/8FFvxBNVnJXOZLXglxAHC9hFf+Yolb/yQtnexxjP/onsb0gXvM2sIaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rI2kTG1hCQ7PXprx4F/fSJWlc17LtCrjPRUZUBjIrpw=;
 b=AebLx4z26JrVKizqCdpCPJ/dObbk7LsXvLJd2rT1/BAJXmB9oJ+PdR40v8LPGgkHke7IfH0ASMBLP6SFirIi5T2sA3INTWrhO0f5xHtPmAj3D25D1dUpQhr0igpTIlV3qQ2wEjQtoKtdG1Z+TqFn3CNkTlahD2nK+kfQwYJcF3iiM630Q2wXb7nEu1m5iaFzZDE11uTP7tUeAUYv86TWLS9aZORK38qlA/NNVpsUAo852CxVfjqv1hZamOigZyt8I6WRFnC7bBw1cU/TJ876b/VMCLEfZYEkqD4cUqhIu+NsCYfGT1j9Ho3JAd8roHuecF5nniBRyIjl2i9OhxuiEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Thu, 23 Jan
 2025 16:41:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 16:41:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z5JqFwchTpIXdDbJ@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
 <Z5JqFwchTpIXdDbJ@bvivekan-mobl1>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 23 Jan 2025 13:41:00 -0300
Message-ID: <173765046077.34727.6436685522751214954@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0250.namprd04.prod.outlook.com
 (2603:10b6:303:88::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB5898:EE_
X-MS-Office365-Filtering-Correlation-Id: 16135f8d-2bec-4405-a6e2-08dd3bccbaea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c25nVEh2ZUhIUTBVOU4zM3hpSERhTkhhWGtJVGk0VWJxVCtiM0ZQZDhhS0hH?=
 =?utf-8?B?V3BudGFvbWRXQ0pRZE5UbjUwcHVTSnkrSmtUbWUvZk1WWURKRDZjcDk2T2xy?=
 =?utf-8?B?NHhhQkVSd01hUTlFV2JBbzBDQ0JoZ3RwU1RvclIyb2pzUFVCcVd0NzJKekhK?=
 =?utf-8?B?amxJTHIwNXFSY000VVoyOCt1cmZydndTQmlCanEybU85SWlpSjlyMWVaRGkz?=
 =?utf-8?B?NVVDQm5nV0VvRDc2c1NHOGE0KzlJN2UrVlI2M0R4V1ZidWNvL3Vtem9FeFA5?=
 =?utf-8?B?QUVPcCtRM0VpN0s4N00wRThDR3ZrRmVDUkpxMGVKTDU1Zlk2Z2dWcHFFSnRL?=
 =?utf-8?B?cXBTNXpWWlk3QWVCalpQWk1kdmZsZ2JPZzl6UXVxa25URXJ5Tjlybm1ITGEv?=
 =?utf-8?B?b2QyMCtBMTl4UlE5S0lqTlZmbjdNK291L1N2VVhWeVBHM2V2cXQ2SUdLbmQ0?=
 =?utf-8?B?ZWYzc3dtdStnL29CZFdjNEJCRHh3MmhsOFVxa3ZhTVMvSmtFdWlmcUZ2bE5N?=
 =?utf-8?B?WXVDWWtIaXVla3o0ZTRsNGkrdENPZk16RG4zWUU3dE1tSnluRDdiZlc3MTV1?=
 =?utf-8?B?UHY4NnduNFprb0Jvd2hIVjFVSUwzb08yaTY3cFdqb1NDZWRzaVpsTE4zcGpy?=
 =?utf-8?B?RloxR2RPN1k2UWpVRUlwS3MwYVg1UjY4K1M1Z0tDYlJPUDlvaEpENTM0RGdh?=
 =?utf-8?B?WTZuS3NBa29JQkU1VTYwSmx0aDRhV2RaRjludmp3SHlvdGo5Mmh3cmp2aDZR?=
 =?utf-8?B?Nm5MNzNFNCtBaFlhNFR6MjVMNDI0WFpDeUw4WkQvbXNnK3M2Si9BbDd3dG9D?=
 =?utf-8?B?WVZ4T2EwTDdyTGZwZUJ1YzE2OC9XQ1FHVGJFWFVqN1l3TUREcldaM3B0TGc2?=
 =?utf-8?B?dW83V3AwYXYwVkhaNmxVbzNBY0M3NzAzOGJXRUVVQytlcU1NWE9lVUVzN0wr?=
 =?utf-8?B?azh6WU1UL3VrZEo1VGc3UW1JRENqeEhtQ0lrc3ltVW13c1h0QXB3UmJ0Q0xk?=
 =?utf-8?B?ZEdLNEV4SExGMC81S0lLaVJyRlM1UUhldVphQW8rSDNQK1ZCYWZBNVdYR3lY?=
 =?utf-8?B?ajV0bEhJUnNjcGwwNE9kd0Zia1JXRmJuMXdnQTBBa3NFcVBhb3dOd1ZhZW8w?=
 =?utf-8?B?OXVDS3FIQzluTmxIcUVrVFIwRlZKWDdCZGs0OTlHbzZLSzJmZTNnNm1XVVQv?=
 =?utf-8?B?UmkxQkZBbWljdlpTZ2taZ09FUEZNeWJ3YnpTb2wxUHdWSzBJRHE3Ymo3dFhn?=
 =?utf-8?B?MnljK2VnZzE5ZnJqZnlONXdzbHY1OXVGTmtRdkdoVWlsNHlqL0pycC9tSFAw?=
 =?utf-8?B?Qlg2UDdLSjBrTzliS3g4QXZkTlJLaHBPR0gvRGFxbmN6bXJGOUNYZW5mam1P?=
 =?utf-8?B?aXdlK2wwalF3WUpMdzR6SUs2UlZyMGE0V3FnVFhoR2Y1cFgwdjFVOEd2eUVD?=
 =?utf-8?B?TlRER3dDMm1vTkFSNWFuL0pLNFIyWWc0dmNISE5ZN3FaSDZXMGkyZU93ZWlo?=
 =?utf-8?B?N3NTcFd1L3g2Zk1LeWlDdFJjRENmbTJuU2RiSEJHL0dmUTRJblBuNW9XY2xy?=
 =?utf-8?B?ZUdqY0VPaWtxM0lvUVRPMkNjUk9XT1BGb0dZekN5WVM1LzBBQ1J3WmpiS1NO?=
 =?utf-8?B?MnhjQTVPK2xmeThtNFJ6cDg3aTY0YjQzYk1kTzVRMHhLNFh3WXRYUzJJSmkw?=
 =?utf-8?B?alc5QlpjL0kyZjZDeEhiRU5WQkZQanhrS3lobmxuUmxyR21VcWR6ck1YeDJC?=
 =?utf-8?B?d3NmZU04Z0QvTGJSQ2RsdzhLQ0t4ZTROMG10Tys1dkdhdXJjK0JtekZMbXNJ?=
 =?utf-8?B?YXhrRmpkdmw3ZjQ0OXlYeXQwS0hFdVhxTFZXZHFFTVI3V24ycmMvVFM2ZDlU?=
 =?utf-8?B?VEVQNXQrd1pJZVgvVmU5aklWWE8yUWNkQ3VlTXphMmpIWktwRmlzZWRvd3Zr?=
 =?utf-8?Q?gun900rjX+iAvfUL07Qfv3Qh+6JIKyts?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnYxQm96Y05JZmZIam0wQXVRRmY1R3hZQ053UU5mY2hXOXZ1Z0tNYUVUNUJt?=
 =?utf-8?B?bEMxOXBXVmdhRWtWam14K2h5Rm51NjlkR3I3dkVkUXFheVFMR0NyaDJuNUhP?=
 =?utf-8?B?NTZkWU03bXJtMlNWd3hiSTIwYVZ6QkhMSFgxRlJEM0I2MFZpYStSMjJxU1FM?=
 =?utf-8?B?SDgyaGMrbjB1ZWlvSTd3RG13MldnbXkzZTV0Rk80NmhoZDlrLzE3VnlIRHVY?=
 =?utf-8?B?YTRHWFJ3TVcweEpHL0hjenhHSmtXcXUrU3dTamo1aXhnMk5QUGlJdWNVMTNC?=
 =?utf-8?B?bm9VSU11MFhLNzNvMFo4eFpGUC9QdFp4cDNETXBxS2U3dWlKbmxFMmNremEx?=
 =?utf-8?B?ZXVFS0diaFdZS1lzNm9EZzd2d3Q2UFp5VThOVGZ5YWp5Q0NHMUpJa2lGcmVu?=
 =?utf-8?B?STAwY1g5b1RHUHpKR1VsRy9mQUkzTXFJNS9KaVY0OW5yY05DQytCMmh2bko4?=
 =?utf-8?B?TlNGUUxTT0xsd2hoWlB2NU9CL3p6MkJLaFQyZFZNUXV5VVJhbmtJejdpU3ZD?=
 =?utf-8?B?NmQ0M3lxZlVHcHJQY2ZzYlRMcEc2MDgydklDMVB6czEyUEI2R0ZVWkdPN3FY?=
 =?utf-8?B?Y0l6eUtqcUx2SWt5UkY5L2hxTVh6S2ZseGtUVFRvY3piblhkcnp2dEErazYv?=
 =?utf-8?B?VjRvb21OQ0ZWY21DT2FreUxBNG1OdXZaLzYya3Fjb1d1UEVUVlBNQ3FTeDJr?=
 =?utf-8?B?N0MrM0RaSEVhSVdjaUFURFRFbVZYdmxEUjdNSkxPVFZZN0Q5MnErLzc1Zkpj?=
 =?utf-8?B?bXd1Wm14K0JjT3dLQ2d5TzlFTnZkOG1JQTAyakZVRzdXWkM0N0NNU1JqQWxZ?=
 =?utf-8?B?d1V2aXhRNnRNMHNWK01aK2xBYXVEZUNZVitvYklXTCtuWWVoekZ5NDJSdENU?=
 =?utf-8?B?TUdYcklpNU8zZXc3WTNwR3l2RWdDdkdhUDlXQkdsT1BHTkNicUdqb1BYSStn?=
 =?utf-8?B?Q0xRamNqbmJIcDdrSnNVbWR3WmVtVURRSlVHVnhwRnBTYmM3T2ovcGFXMEt6?=
 =?utf-8?B?Q1BaSkhhSngrdmpOMWFQYXBwbXZKNVhZZzVnUUFoV21ZVHhaQ3Y5YnlpYml3?=
 =?utf-8?B?TUtiNFBITEN1QVhwQlJZOUtsTUIxQVpiWkZ4SmJBdGNVaXpOVGdwZ1pqN3VJ?=
 =?utf-8?B?eTdvSDZBRDRkalNxN0dHSnMyOG1lMzBGVHZoUjJ3b3VhS0s4QVBpUEwvL0lP?=
 =?utf-8?B?NHVydW5YTzlUUUVPUHBXbHJ4aEJVV0plTmx2Smp0aUFsV1Z0ZjRQUkZPaXJy?=
 =?utf-8?B?bnVNelJPOWI0anhkOTkrQTBZYzVzYlBFcFJTZUlkaFNkSyt1eHdyemg1djZY?=
 =?utf-8?B?MVhhVng1bExlQWtiYVlXMnZhVGMwakZ1ZUN3YitOV3UwQ3RRZHlFY0tsRitO?=
 =?utf-8?B?a2JFM2FCTkFGLzE1NGlrVFBEYjFhbEw4elhRMHI1ejRycHdxSWpwWjMvTjBm?=
 =?utf-8?B?SENWVkdpbk1GS29oQVU4TTdqcXZOV3k2enhzeFVRMWlrbEcwMXBINkx3Wms2?=
 =?utf-8?B?ZWZ5WTc2c2ozVmtWWmJXTTJHalo3SDdhQUpETjBOa1QwRkh5c2hFVmJHQTNS?=
 =?utf-8?B?cjJ4aXZIRlRtOGZqQzU2NnpHb1hOaVlZWEM3TGZ0ZE9SazFIWldLNm9sWXQr?=
 =?utf-8?B?UDRUckdDejJPdEpiNnIxc2dMYUp1VkNYb25wajJYa3hHdjlJN3VjQUJKKzMz?=
 =?utf-8?B?OVlVZVFrK1ZxVkh6OHZBSGZZU3piMmZEU20ybjArTWEvRlZTQlJieVdOWEpG?=
 =?utf-8?B?Qi9mTzcrZlEwTG13cFZxNHVRS1ZXZmw1L2lienAwcjYybWFNWDFLNThKQ3Jw?=
 =?utf-8?B?SG1HTHVtRGwxdUZ0TFFzZTNQVmNRRHpNdXlzd3ltVFZab0xBNkMyVEk4bHcv?=
 =?utf-8?B?MnFHS04xUHZJUGx5NWVFdEJEYTdUSXU5aEI4TnBmaG1KeGoyT1U2WlJuS2RX?=
 =?utf-8?B?ZVdzNXU1bVJiSEtQWlQrWFgrSUlrVVFiY2U5dlplOTRMaUdIMmF6bi9rYkx3?=
 =?utf-8?B?TUJZanFZR3F6R3JxRlhFSGFRTk55Y25SUnJ4bkRZakxSd21IWHAxWW5FL00w?=
 =?utf-8?B?T2owbDRVeEk1K1BTZzZsKzJCL3MzNjhKcnNGT3gxV1I1YUlWVXdNMWpvRUxx?=
 =?utf-8?B?OFFvWTFRbEFSN3BJWUNPMlRKaFB2V2xJbjFGQkp3ZXBLNkVVRlR3VlBTbnMx?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16135f8d-2bec-4405-a6e2-08dd3bccbaea
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 16:41:05.5115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U2U6oaokSs7xbqW1VaVZAkNBx1STFgCZmjIAw6FhWDCrTvn1i8S6yN5+xi78BlRMeefG0LzFIFccosV8jix4bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
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

Quoting Vivekanandan, Balasubramani (2025-01-23 13:11:03-03:00)
>On 17.01.2025 19:06, Gustavo Sousa wrote:
>> The DMC wakelock code needs to keep track of register offsets that need
>> the wakelock for proper access. If one of the necessary offsets are
>> missed, then the failure in asserting the wakelock is very likely to
>> cause problems down the road.
>>=20
>> A miss could happen for at least two different reasons:
>>=20
>> - We might have forgotten to add the offset (or range) to the relevant
>>   tables tracked by the driver in the first place.
>>=20
>> - Or updates to either the DMC firmware or the display IP that require
>>   new offsets to be tracked and we fail to realize that.
>>=20
>> To help capture these cases, let's introduce a debugfs interface for the
>> DMC wakelock.
>>=20
>> In this part, we export a buffer containing offsets of registers that
>> were considered not needing the wakelock by our driver. In an upcoming
>> change we will also allow defining an extra set of offset ranges to be
>> tracked by our driver.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   5 +-
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
>>  .../drm/i915/display/intel_dmc_wl_debugfs.c   | 251 ++++++++++++++++++
>>  .../drm/i915/display/intel_dmc_wl_debugfs.h   |  29 ++
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  7 files changed, 290 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 3dda9f0eda82..ac1ab79de9c8 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -251,6 +251,7 @@ i915-y +=3D \
>>          display/intel_display_wa.o \
>>          display/intel_dmc.o \
>>          display/intel_dmc_wl.o \
>> +        display/intel_dmc_wl_debugfs.o \
>>          display/intel_dpio_phy.o \
>>          display/intel_dpll.o \
>>          display/intel_dpll_mgr.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index f1d76484025a..b032535f4830 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -26,6 +26,7 @@
>>  #include "intel_display_power_well.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dmc.h"
>> +#include "intel_dmc_wl_debugfs.h"
>>  #include "intel_dp.h"
>>  #include "intel_dp_link_training.h"
>>  #include "intel_dp_mst.h"
>> @@ -883,6 +884,7 @@ void intel_display_debugfs_register(struct drm_i915_=
private *i915)
>> =20
>>          intel_bios_debugfs_register(display);
>>          intel_cdclk_debugfs_register(display);
>> +        intel_dmc_wl_debugfs_register(display);
>>          intel_dmc_debugfs_register(display);
>>          intel_dp_test_debugfs_register(display);
>>          intel_fbc_debugfs_register(display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index 330b43a72e08..3686d4e90167 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -338,6 +338,7 @@ void intel_dmc_wl_init(struct intel_display *display=
)
>>          spin_lock_init(&wl->lock);
>>          refcount_set(&wl->refcount,
>>                       display->params.enable_dmc_wl =3D=3D ENABLE_DMC_WL=
_ALWAYS_LOCKED ? 1 : 0);
>> +        intel_dmc_wl_debugfs_init(display);
>>  }
>> =20
>>  /* Must only be called as part of enabling dynamic DC states. */
>> @@ -444,8 +445,10 @@ void intel_dmc_wl_get(struct intel_display *display=
, i915_reg_t reg)
>>          spin_lock_irqsave(&wl->lock, flags);
>> =20
>>          if (i915_mmio_reg_valid(reg) &&
>> -            !intel_dmc_wl_check_range(display, reg, wl->dc_state))
>> +            !intel_dmc_wl_check_range(display, reg, wl->dc_state)) {
>> +                intel_dmc_wl_debugfs_log_untracked(display, i915_mmio_r=
eg_offset(reg));
>>                  goto out_unlock;
>> +        }
>> =20
>>          if (!wl->enabled) {
>>                  if (!refcount_inc_not_zero(&wl->refcount))
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.h
>> index 5488fbdf29b8..d11b0ab50b3c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>> @@ -11,6 +11,7 @@
>>  #include <linux/refcount.h>
>> =20
>>  #include "i915_reg_defs.h"
>> +#include "intel_dmc_wl_debugfs.h"
>> =20
>>  struct intel_display;
>> =20
>> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
>>           */
>>          u32 dc_state;
>>          struct delayed_work work;
>> +        struct intel_dmc_wl_dbg dbg;
>>  };
>> =20
>>  void intel_dmc_wl_init(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> new file mode 100644
>> index 000000000000..41e59d775fe5
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> @@ -0,0 +1,251 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#include <linux/debugfs.h>
>> +
>> +#include <drm/drm_device.h>
>> +#include <drm/drm_managed.h>
>> +#include <drm/drm_print.h>
>> +
>> +#include "intel_display_core.h"
>> +#include "intel_dmc_wl_debugfs.h"
>> +
>> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
>This macro is not actually the size but the count of offsets stored in
>the buffer. This is used as the array size for drmm_kmalloc_array call.
>It makes sense to rename this macro as count

I think size doesn't really have to mean number of bytes, but, in this
case, I agree, that "buffer size" could be easily thought that way.

However, couldn't "buffer count" be somewhat ambiguous? One might read
as the number of buffers and then only later after reading the code that
it would refer to the number of entries in a single buffer.

Between the two options, I think I would still go with "buffer size"...

>
>> +
>> +/*
>> + * DOC: DMC wakelock debugfs
>> + *
>> + * The DMC wakelock code needs to keep track of register offsets that n=
eed the
>> + * wakelock for proper access. If one of the necessary offsets are miss=
ed, then
>> + * the failure in asserting the wakelock is very likely to cause proble=
ms down
>> + * the road.
>> + *
>> + * A miss could happen for at least two different reasons:
>> + *
>> + * - We might have forgotten to add the offset (or range) to the releva=
nt
>> + *   tables tracked by the driver in the first place.
>> + *
>> + * - Or updates to either the DMC firmware or the display IP that requi=
re new
>> + *   offsets to be tracked and we fail to realize that.
>> + *
>> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs di=
rectory,
>> + * which exports a buffer of untracked register offsets.
>> + *
>> + * Untracked offsets
>> + * -----------------
>> + *
>> + * This is a buffer that records every register offset that went throug=
h the
>> + * DMC wakelock check and was deemed not needing the wakelock for MMIO =
access.
>> + *
>> + * To activate the logging of offsets into such a buffer, one can do::
>> + *
>> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_siz=
e
>
>This knob is setting the count of offsets to be stored and not the size.
>I think this should be renamed to indicate it as count.
>
>> + *
>> + * This will create a buffer with the maximum number of entries allowed
>> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used in=
stead to
>> + * define a different size:
>> + *
>> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_s=
ize
>
>For me passing negative number doesn't look intuitive. Thinking do we
>really need the case of passing default buffer size. We can allow just 0
>to disable and any positive number to enable with the buffer size set as
>value passed.

Well, this is already supported. The use of -1 is just a convenience,
and the user is not required to use it.

The current interface doesn't provide a way of letting the user know the
maximum value and I think it would be a bit overkill adding another
debugfs file just for that purpose.

As such, I think -1 is a useful way of letting the user use the maximum
size, specially when she doesn't have the up-to-date documentation in
handy to know what value that is. That's certainly better than having
the user finding the maximum via trial and error.

>
>> + *
>> + * Every write to untracked_size will cause the buffer to be reset.
>> + *
>> + * It is also possible to read untracked_size in order to get the curre=
nt
>> + * value.
>> + *
>> + * After enabled, the buffer starts getting filled with offsets as MMIO=
s are
>> + * performed by the driver.
>> + *
>> + * In order to view the content of the buffer, one can do::
>> + *
>> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
>> + *   0x000c4000
>> + *   0x0016fe50
>> + *   0x000c7200
>> + *   0x000c7204
>> + *   0x00045230
>> + *   0x00046440
>> + *   0x00045234
>> + *   0x0016fa48
>> + *   0x0016fa40
>> + *   0x0016fa5c
>> + *   (...)
>> + *
>> + * The order of those offsets does not reflect the order the checks wer=
e done
>> + * (some recently seen offsets are skipped to save space).
>> + *
>> + * Once done with it, the logging can be disabled with::
>> + *
>> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
>> + */
>> +
>> +static int untracked_size_get(void *data, u64 *val)
>> +{
>> +        struct intel_display *display =3D data;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +        *val =3D dbg->untracked.size;
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        return 0;
>> +}
>> +
>> +static int untracked_size_set(void *data, u64 val)
>> +{
>> +        struct intel_display *display =3D data;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        s64 new_size;
>> +        u32 *old_offsets;
>> +        u32 *new_offsets;
>> +        unsigned long flags;
>> +
>> +        new_size =3D (s64)val;
>> +
>> +        if (new_size =3D=3D -1) {
>> +                new_size =3D DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
>> +        } else if (new_size < 0) {
>> +                drm_err(display->drm,
>> +                        "%lld is invalid for untracked_size, the only n=
egative value allowed is -1\n",
>> +                        new_size);
>> +                return -EINVAL;
>> +        } else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
>> +                drm_err(display->drm,
>> +                        "%lld too big for untracked_size, maximum allow=
ed value is %d\n",
>> +                        new_size,
>> +                        DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
>> +                return -EINVAL;
>> +        }
>> +
>> +        if (new_size =3D=3D 0) {
>> +                new_offsets =3D NULL;
>> +        } else {
>> +                new_offsets =3D drmm_kmalloc_array(display->drm, new_si=
ze, sizeof(*new_offsets),
>> +                                                 GFP_KERNEL);
>> +
>> +                if (!new_offsets)
>> +                        return -ENOMEM;
>> +        }
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +        old_offsets =3D dbg->untracked.offsets;
>> +        dbg->untracked.offsets =3D new_offsets;
>> +        dbg->untracked.size =3D new_size;
>> +        dbg->untracked.head =3D 0;
>> +        dbg->untracked.len =3D 0;
>> +        dbg->untracked.overflow =3D false;
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        if (old_offsets)
>> +                drmm_kfree(display->drm, old_offsets);
>> +
>> +        return 0;
>> +}
>> +
>> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
>> +                               untracked_size_get,
>> +                               untracked_size_set,
>> +                               "%lld\n");
>> +
>> +static int untracked_show(struct seq_file *m, void *data)
>> +{
>> +        struct intel_display *display =3D m->private;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +        size_t remaining;
>> +        size_t i;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +
>> +        remaining =3D dbg->untracked.len;
>> +        i =3D dbg->untracked.head;
>> +
>> +        while (remaining--) {
>> +                if (i =3D=3D 0)
>> +                        i =3D dbg->untracked.size;
>> +
>> +                seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
>> +        }
>> +
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        return 0;
>> +}
>> +
>> +DEFINE_SHOW_ATTRIBUTE(untracked);
>> +
>> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +
>> +        spin_lock_init(&dbg->lock);
>> +}
>> +
>> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
>> +{
>> +        struct dentry *dir;
>> +
>> +        if (!HAS_DMC_WAKELOCK(display))
>> +                return;
>> +
>> +        dir =3D debugfs_create_dir("intel_dmc_wl", display->drm->debugf=
s_root);
>> +        if (IS_ERR(dir))
>> +                return;
>> +
>> +        debugfs_create_file("untracked_size", 0644, dir, display,
>> +                            &untracked_size_fops);
>> +        debugfs_create_file("untracked", 0644, dir, display,
>> +                            &untracked_fops);
>> +}
>> +
>> +static bool untracked_has_recent_offset(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        int look_back =3D 32;
>Define a macro for this magic number

This is very local to this function and I guess the variable name
already convey it's meaning?

>
>> +        size_t i;
>> +
>> +        if (look_back > dbg->untracked.len)
>> +                look_back =3D dbg->untracked.len;
>> +
>> +        i =3D dbg->untracked.head;
>> +
>> +        while (look_back--) {
>> +                if (i =3D=3D 0)
>> +                        i =3D dbg->untracked.size;
>> +
>> +                if (dbg->untracked.offsets[--i] =3D=3D offset)
>> +                        return true;
>> +        }
>> +
>> +        return false;
>> +}
>> +
>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>As this code never gets called by an interrupt, we can use just the
>spin_lock instead of spin_lock_irqsave. Same applies for all the places
>where spin_lock/unlock_irqsave/irqrestore is used.

This code does get called in interrupt context. It is called by
intel_dmc_wl_get(), which is called for most of display MMIO access
functions, and that happens both in user and interrupt context.

>
>> +
>> +        if (!dbg->untracked.size)
>> +                goto out_unlock;
>> +
>> +        /* Save some space by not repeating recent offsets. */
>> +        if (untracked_has_recent_offset(display, offset))
>> +                goto out_unlock;
>> +
>> +        dbg->untracked.offsets[dbg->untracked.head] =3D offset;
>> +        dbg->untracked.head =3D (dbg->untracked.head + 1) % dbg->untrac=
ked.size;
>> +        if (dbg->untracked.len < dbg->untracked.size)
>> +                dbg->untracked.len++;
>> +
>> +        if (dbg->untracked.len =3D=3D dbg->untracked.size && !dbg->untr=
acked.overflow) {
>> +                dbg->untracked.overflow =3D true;
>> +                drm_warn(display->drm, "Overflow detected in DMC wakelo=
ck debugfs untracked offsets\n");
>> +        }
>> +
>> +out_unlock:
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> new file mode 100644
>> index 000000000000..9437c324966f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> @@ -0,0 +1,29 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
>> +#define __INTEL_DMC_WL_DEBUGFS_H__
>> +
>> +#include <linux/types.h>
>> +#include <linux/spinlock.h>
>> +
>> +struct intel_display;
>> +
>> +struct intel_dmc_wl_dbg {
>> +        spinlock_t lock; /* protects everything below */
>> +        struct {
>> +                u32 *offsets;
>> +                size_t head;
>> +                size_t len;
>> +                size_t size;
>There is no need of both len and size. head will always give the count
>of entries in the buffer. During overflow, we are keeping a flag to
>indicate a overflow, which indicates the we also have date in the buffer
>above head till the end of buffer.

Ah, right. If overflow=3D=3Dfalse, then the length equals head, if
overflow=3D=3Dtrue, then length equals size.

Maybe the inconvenience is that we will need to calculate the length
every time we need it. But maybe that's not too bad...

Thanks! I'll remove the "len" member in v2.

--
Gustavo Sousa

>
>Regards,
>Bala
>
>> +                bool overflow;
>> +        } untracked;
>> +};
>> +
>> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
>> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, =
u32 offset);
>> +
>> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 81f63258a7e1..f03fbdbcb1a4 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>          i915-display/intel_display_wa.o \
>>          i915-display/intel_dkl_phy.o \
>>          i915-display/intel_dmc.o \
>> +        i915-display/intel_dmc_wl_debugfs.o \
>>          i915-display/intel_dp.o \
>>          i915-display/intel_dp_aux.o \
>>          i915-display/intel_dp_aux_backlight.o \
>> --=20
>> 2.48.0
>>
