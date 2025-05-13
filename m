Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E74AB4C6D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 09:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934AD10E36F;
	Tue, 13 May 2025 07:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nzPdZFbi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8015710E194;
 Tue, 13 May 2025 07:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747119883; x=1778655883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+FVR0VQEAePo60ZkkLxeOtnAtqsSfrW016ho/W838/c=;
 b=nzPdZFbil9yrx8ZcqB9i83fXAr+aQgPyz8Tsbi8dXWgFDBRs/kpTSO1E
 MBar0Ki2cvMd9NsOdhkePIwFCuld5E9SGWluRa7nBxZV7VEHjDE8Rzr3W
 t7eNn9X7LWgrhv4DLPP2HOvF2vWqw8raFoeY9QepksT+IVU687Xcmhdg4
 ZowtdYqviybffOpADoz0B1J/pfD6etJOd97Bk8JbjBq4RQDx9J0AEjNul
 394Zd7zYSoVN5jDCgOeELDN5X4vh2pEkrHRtRg5MtT0RNoMm5oD38FTwj
 HSr/M2nwNDw5/bZVXBZGJyKgSZw1frLfwmx737RTMTCRfx5jmKpzMLaEY Q==;
X-CSE-ConnectionGUID: +fzUSyy9R3esyo/eBHZTfg==
X-CSE-MsgGUID: volDvUhPSFubcuQEc1/JtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51608699"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51608699"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 00:04:43 -0700
X-CSE-ConnectionGUID: BmRW/km4RSqsHXDmzl+o+g==
X-CSE-MsgGUID: RVcY5bidRjOCvc/mrDRchQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137481055"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 00:04:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 13 May 2025 00:04:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 13 May 2025 00:04:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 13 May 2025 00:04:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wr1xb9LmbPUxl8j/8yNq+IEe9HM7uhLx/Y/Rj/aCpIlOBsKF4P+m2vD3Q0n8n/EQOIz7jS1zHxTyPw8Ls89GYINQUGrQfekBGICGEjxsOQXFx6GssWYmEwy/xNpS0XuzRd00KD/hDygytPeUhcRWgfcrAOUtKino+Qd7P+eXhNbNAVeWXetQGMONxR4STKatnLimzl4smeurepbMkXr8hULbHlwGpXHT4k/sUdGovV38VVkui1j48SfZwrINDMXvbHnJfHj68Rofrm1z4gZGAD//crW3/zmFVaNJyQkZt/QZEKWVL4FLx3POXeyB0d/BMng+tuJ7256gtbsPeBYOLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+FVR0VQEAePo60ZkkLxeOtnAtqsSfrW016ho/W838/c=;
 b=PXBYrJ5HRqOTqle986VKrqRvEYtG/k7hqQ8DIFA5NA9GWcxBfgixcXRBzRPVD1M+/8gS5ccx3jcAiNCCkwNhSJnHS0dNtufPpnn+GB/YdzJ8Ml9GaMzAHuMU6zcEbtwKKQyWWHY0Yz+pLWHZl9Zv8vHfkZqAm6I5aOoXjjPEFq0DSyoX3KPEnr+NWUdfWthPXHivOxArML1J99UnEmPUXip/VM3Pmn6+0jSo7BszPVtOi6NR9FrSJrcIGTy03svrlNRYeElkzBWiSFwJqAG3nXPoIq5FLJVM084/9eMbbKSDlgvCiqMou+VwRV45xS5+a59cNRPsnI8LinJA96phgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA0PR11MB7353.namprd11.prod.outlook.com (2603:10b6:208:435::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 07:04:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Tue, 13 May 2025
 07:04:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/ptl: Use everywhere the correct DDI port clock
 select mask
Thread-Topic: [PATCH] drm/i915/ptl: Use everywhere the correct DDI port clock
 select mask
Thread-Index: AQHbw0nFJeOU6x0VDEuDcd4TvE1hi7PPa2MAgAAGNYCAALHcUA==
Date: Tue, 13 May 2025 07:04:39 +0000
Message-ID: <MW4PR11MB70546ED9898931D9D3DD4693EF96A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250512142600.824347-1-imre.deak@intel.com>
 <174708023231.10493.6499863984617165104@intel.com>
 <aCJZXWBsS7Is6Zpz@ideak-desk.fi.intel.com>
In-Reply-To: <aCJZXWBsS7Is6Zpz@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA0PR11MB7353:EE_
x-ms-office365-filtering-correlation-id: 9b4b80b6-ba35-4403-8d5a-08dd91ec6d95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QlMvbzRxVHJpZjZvSG5vMDcxZlk0M1FkWWhXZVdkOGZRZXhndzlCakJEb05x?=
 =?utf-8?B?Ymxua1d3aVJzcVNqdEV6T1o3ODFKTGZYYUo0Wm03L3g3MWxubnVlOFNsMURU?=
 =?utf-8?B?M2dob1JnL3pIcFJldEhzMVc4MHhWQWt0TkZRS1A2dklYcVM2UXAraGtPWVlS?=
 =?utf-8?B?UUJhN3BYMThtK2tDdmlHWW56UngzbjlWU3BpUVFTblRwYmxoZGFmSFNod3dW?=
 =?utf-8?B?Zkh1eEczdVgrZHVOT2VnelhFeUszQVRjazVHeWhHWlZLalFRS0tJc2pnazVF?=
 =?utf-8?B?Qjcrd2VwWWdnVUpEanpIOTAxbmgxSTVSSjlhQ2hzbjlRM0dTbzMzbndCQUlF?=
 =?utf-8?B?cjRIVkhZMjZqWHVoeDV4Ny9LUUplaW5MZGhEejdDelNRSlFwaG5UcTlzTEJU?=
 =?utf-8?B?bisrSEhRcUFIbWh0SVRPN1FQZkNCUkhCMmwvRHVwckw3RWJrMTliOUxFZkNK?=
 =?utf-8?B?U2gyMGxMUlFNaUlxejQwS0V3cTMwbk9rKzBCYkRJeGFhdFprc0J3VVc5aFRs?=
 =?utf-8?B?V1oyNE55NnNhTDEyV3F2L1RQZW9HclpvQTVPdGZydFgxM0NGQUJhWUtkT0Zl?=
 =?utf-8?B?WUVPKzRLVEtkT1podm9vYS9mRGNOSmh6SmU1Z2Fzd2MrUU1aYlhrMGFsbUNl?=
 =?utf-8?B?Zms3by8rYTB6ajFlc1JqZDJ2QXhLUmlGZ01yWFdHZmYyS3pGUFkvTWdhSk9h?=
 =?utf-8?B?MlNHdld0MUZkd1RES3dSeGd3bHNBdWcxWWFObUxnbUV2dko1cmthVHlZUVVQ?=
 =?utf-8?B?VUlOU2ZTMHZ0OWJvbUlGN1d2b1pYeUFQZlBKa1pJRWZsUm9lZkxWWmt5Z3ho?=
 =?utf-8?B?VTNNK1RScGhPSHYrNWpqQk4zTm9YNW05N3RQMnU3aUZyeHBiTDgzVHFwSWRp?=
 =?utf-8?B?djhpeEw1RFYyVFJtN21QNGZOL0d4aDdMcW5OSWg1RWVoRm9jYVlVamwzZkhq?=
 =?utf-8?B?VHZXbyt5WkdTdFlWeTU2K3dDVDZQOG9MSSt6MUdFTHhDUjBKYzlqa21GYVJ0?=
 =?utf-8?B?YkliMzYwejlhbUpRbUtRaE1GQk1oaStYdEswaU5TdHRodVdEaFdCWHpWdC9P?=
 =?utf-8?B?T3NhVFI2SHZhcERVNWJabXdMK2o1NVpEZmJBemNXSlI2d1NNbW5PTkRnNlN5?=
 =?utf-8?B?MFJ4VVhub0ZnV2xOZ2VEamp3K2FCV3dseXo0UnhnMmVyazZYaFovNlQ1bU42?=
 =?utf-8?B?Q1FUZU1jWlhkRUl1dDB4d1E3blBsNVNQeW9NRG9FT2tmbnpISjBSSU0rQnBZ?=
 =?utf-8?B?bTB4VkpSdGhKWTVBU0FpejgwSkhiemU2Ujc0eVZ5VDdGRXVPWmkrSGZpcy9X?=
 =?utf-8?B?WlV3aENSMzZQcTMzWlozVDRCdFllVWVQSGQxWUhSdjY1RytMRUxKVklQUmh4?=
 =?utf-8?B?OFMwUTZCWGZhYWNjR0pRV3FDQ0p4QmxydzgxbW1TcUJmNWFlVlNuVE92YWM4?=
 =?utf-8?B?ZEVscHZITUVJQXkvaVNLeExaZzZuOTFrL1hyQVlpLzZ0MkwyNGJTS1Y4Snhn?=
 =?utf-8?B?dFNvTVdTVm56eVArVC9sU1R6U2VCYis1S1R1dTVRWE03WnczRTUyT3h5aGZF?=
 =?utf-8?B?OUg5Z25DeVlVWlFZdmg5RHFJdExuOXlnTk1jQ1VlMzQrbjBPLzJiU1dvUDZN?=
 =?utf-8?B?WXRzcWxyYTZpMWp2cVlmRldTbFRVaHNCc0hYQ3lDZFplQjZOcHdwV2h6NmJB?=
 =?utf-8?B?VG9RWnkrZ3hzUXNFWHA0TVFaSUQzeVdyTmsvc1p5QUdsQVpnN1B4YklhQW1W?=
 =?utf-8?B?M2ZjanE0MndoWlowYUdZVnAranYrZFY3aG9kRWJIbDVVcnlsSFlpdFlGRUdF?=
 =?utf-8?B?NUVKTi9FcExYZ3VISDRMa25Scis5azlKS0Q4TlZOSTRBRHlXaWVSN0NPOStB?=
 =?utf-8?B?TnRDMEpDRTN5Sjl4bVVNVFR2UTBTcVZnS21xVjdORG5NNFFTZzA2WDVqZXd1?=
 =?utf-8?B?WWZWZGlmdUp6VHpzT25rVURSUkxFZXFpOUNVT2hpdVRwZkNCbmc5bTIvcmxr?=
 =?utf-8?Q?ElvuJsEhgnAi4JexnRBV5A4phHll48=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z21iNHorbjd0SmVhcFZFSlAzYS8wOFQrNU1idXlSTGhBbnNUNC9zd3VuU2JW?=
 =?utf-8?B?NjFiZyt1VUtqMjJTeFNNSDFQQkN1VlZaWlNnQWtoeURsVjFPOTVyTW0wQkdH?=
 =?utf-8?B?OHU0ckQrS3hvWUcwMkVyN1pPNDdENUdYdkRHRzVZVUdMallPU2dOaFNXbXU1?=
 =?utf-8?B?cVhYU1VzL0pPVkYrdkZ3SnpLdVlqVkd3SURFQ1pJYjBNcUt0bmxIbTZYTEUw?=
 =?utf-8?B?UU1zYk1LOFdibnUvQWNxc1ZISUNCS0Q2QmMvRWZzUGpvcTdpYkc0T2EvOHJK?=
 =?utf-8?B?QmxjU1lqRjJKMUhSRkZ2ejNJeGlzMjlmb2JzUnd4R2xva3RSY251TWlhL0NM?=
 =?utf-8?B?WDRJU3EvSHNTM2ZPWW9nT2cwY2ZrNml5WDc0cFVPMkZoZmRCdTZuRWl5RVcx?=
 =?utf-8?B?MW16OHlIcWdVZUpXY0FONVFOVmpETkgrK29LbWxSdk55TThnYml4Vmx6VkdF?=
 =?utf-8?B?eGZGNm5maXNtUmtPOUM5dUxmcmRTUUhmUWtsRXNsbys3SFlaNGpKUHJoVmdM?=
 =?utf-8?B?OVJNZlQyQ3ZNQ0dTZjJ0UEg4a2s4UkxJSyt0THg5U2Q3NmVhdm1MdzNGalVG?=
 =?utf-8?B?bC8rMEc5amhOdXU3NWtaVUd2U0lFSkV3N3NlOE14ajd6cG0zNWtjN2ozZ1NI?=
 =?utf-8?B?dE1qOFd5ZEplQjRMQWlyaHE5OVQxYjBXNWRYV2dNUjlGdjFneDVEbCtOc3Q2?=
 =?utf-8?B?Ny80dHlxMjZNVlF5RE9oNHBFN1NWM2ZhTmJ2dEsvU0lEU0N6LytieEl6djJM?=
 =?utf-8?B?NnBaMGJhaVdnUGtya3lBREJjb0VJb3I4SGRFdWpiYkIrN1Z2NmI0Sk91cG9t?=
 =?utf-8?B?WW1iMXliVW5YQnNFM3hSY3l2cWIzcFhGL2NwQ0ZKWmNnOU9idXNweG81NEhR?=
 =?utf-8?B?VHJkczNuMHZ6cFg5aUYwU3lwcXBuMU5pNXkvTzJmeWRTdDV6QndwN3ltSkRz?=
 =?utf-8?B?Tk1Jd1dVa3JRRW1seTVWdjIwZzk2Y1ZnRFRtRjdoUmthRENDWmp2UWpNUHdY?=
 =?utf-8?B?Sm1NdndPUUZDRXRyNFdPRlZCbUYxVy9aelFzSXljQUFVTUp5SytCR21EUjNr?=
 =?utf-8?B?QjRnT1JJSHRFMU1ka0U3bThnWlVQK2ZBVTh6aDh0dk9seW04eUZmQWVIYzE1?=
 =?utf-8?B?aTRlRDlkWFVrSGYwVHVtMUhCNE1tQW5ld2UvYjN4MDV6d0lZeGhTWFYzQUtG?=
 =?utf-8?B?WFhuSThuL3poUWdxVGkvMlBGTnhncEV3cGN6VGhqaE82SFdKMlNBaHg2ZVVF?=
 =?utf-8?B?T0VnZ3gxWHMvcXRJU2RoZmZ5S2RxekZGYjEwN2k0RDlVYlBvVktydGl2S0tP?=
 =?utf-8?B?WS9uTU53azYrdFhKb1RLSTdFeE9TMnNXV3BsbTdjTUhVVDJSeGQvaFM0a1Ar?=
 =?utf-8?B?RDlHUld1RFJ4Qk5mdEVNa3JiZkNqVi95YjhtVmJaKzlsZDlKWU4wZkV6ekY4?=
 =?utf-8?B?YnJNWHNaTXZYd28vUzVvN3ZTeUMyM1F2aGhDNmxrVUtqWkR6ekZSVmtnWU4v?=
 =?utf-8?B?Z3hzTjd3cHV5WXladmRuYnVTa092MzJmVE13L2FXbEVVV09XeDM4c3FPb0Nm?=
 =?utf-8?B?Y3lmc3J0ZVRJZ1UrUEFMV04wbEp5MDlWUk1aS2hCeWN1WlN6Sk4rSHVHUmts?=
 =?utf-8?B?OG14QzBmVTgyYjIwYkt5M2RLVG1VaHkxcjdVaStGOE9jQjhjcFZscnhVWmRU?=
 =?utf-8?B?V3VoNC9hUUVzM0xWbXVyaUt4K0pBbUZKRU83MmhYOGlPaEhBV3VYSkFVR3Iy?=
 =?utf-8?B?dVZZMEp5bGl0QWRPT0JtOTg5UWJta0xZYVg2RHZYb3p3UnZCdlN4Z1U1T090?=
 =?utf-8?B?Szc5TktTdGVCQ0F3UjkwVjlkYnFqYmZUaGlHMFBDQTl6RERoTmJrbGpVNEI4?=
 =?utf-8?B?MGNxL2ZtTnFnUlJZT2JNNFZ6STZzN1NKYmJlaU9STWdLRldhWFBsWnlBdVFh?=
 =?utf-8?B?L3VXa3VzcWszdWIzS3hJTGhNNXNnSmx0eGxSTUo3ak5QRWhUSTY4OGh4bG5a?=
 =?utf-8?B?MjlzODAzUVlZMFVHQ3FBazZ1OTUzbTEwWnFORDZPdExicHhWTHR0cm4xN1NQ?=
 =?utf-8?B?S3orUUsvV0ptVXViQXJJNms3QnVkYVFxd2NqeE1LS2tNVmlaM0hXTUZMNmhz?=
 =?utf-8?Q?QBzn0ftJv/a9HpAVsqg8BxEF+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4b80b6-ba35-4403-8d5a-08dd91ec6d95
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2025 07:04:39.2988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yMO3BcyfH+4NNRfcXyPOY1CnzfgM6dVm1zf9AWjB+yGK4X5tVb1aMKDsCMXOT2Bwr3shCxU5MIeOjJRqPfjp7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7353
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGVhaywgSW1yZSA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCAxMiBNYXkgMjAyNSAyMy4yNg0KPiBU
bzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBLYWhvbGEsIE1pa2ENCj4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcHRsOiBVc2UgZXZlcnl3
aGVyZSB0aGUgY29ycmVjdCBEREkgcG9ydCBjbG9jaw0KPiBzZWxlY3QgbWFzaw0KPiANCj4gT24g
TW9uLCBNYXkgMTIsIDIwMjUgYXQgMDU6MDM6NTJQTSAtMDMwMCwgR3VzdGF2byBTb3VzYSB3cm90
ZToNCj4gPiBRdW90aW5nIEltcmUgRGVhayAoMjAyNS0wNS0xMiAxMToyNjowMC0wMzowMCkNCj4g
Pg0KPiA+IFsuLi5dDQo+ID4NCj4gPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gPiA+Yi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+ID4gPmluZGV4IDk2MGY3Zjc3OGZiODEu
LjU5YzIyYmVhZjFkZTUgMTAwNjQ0DQo+ID4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gPiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+ID5AQCAtMTkyLDEwICsxOTIsMTcg
QEANCj4gPiA+DQo+ID4gPiAjZGVmaW5lICAgWEVMUERQX1RCVF9DTE9DS19SRVFVRVNUICAgICAg
ICAgICAgICAgICAgICAgICAgUkVHX0JJVCgxOSkNCj4gPiA+ICNkZWZpbmUgICBYRUxQRFBfVEJU
X0NMT0NLX0FDSyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUkVHX0JJVCgxOCkNCj4g
PiA+LSNkZWZpbmUgICBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNLDQo+IFJFR19HRU5NQVNL
KDE1LCAxMikNCj4gPiA+LSNkZWZpbmUgICBYRTNfRERJX0NMT0NLX1NFTEVDVF9NQVNLICAgICAg
ICAgICAgICAgICAgICAgICAgUkVHX0dFTk1BU0soMTYsDQo+IDEyKQ0KPiA+ID4tI2RlZmluZSAg
IFhFTFBEUF9ERElfQ0xPQ0tfU0VMRUNUKHZhbCkNCj4gUkVHX0ZJRUxEX1BSRVAoWEVMUERQX0RE
SV9DTE9DS19TRUxFQ1RfTUFTSywgdmFsKQ0KPiA+ID4tI2RlZmluZSAgIFhFM19ERElfQ0xPQ0tf
U0VMRUNUKHZhbCkNCj4gUkVHX0ZJRUxEX1BSRVAoWEUzX0RESV9DTE9DS19TRUxFQ1RfTUFTSywg
dmFsKQ0KPiA+ID4rI2RlZmluZSAgIF9YRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNLDQo+IFJF
R19HRU5NQVNLKDE1LCAxMikNCj4gPiA+KyNkZWZpbmUgICBfWEUzX0RESV9DTE9DS19TRUxFQ1Rf
TUFTSyAgICAgICAgICAgICAgICAgICAgICAgIFJFR19HRU5NQVNLKDE2LA0KPiAxMikNCj4gPg0K
PiA+IFNpbmNlIGJpdCAxNiBpcyB1bnVzZWQgZm9yIHByZS1YZTMgZGlzcGxheSBJUHMsIEkgd29u
ZGVyIGlmIHdlIHNob3VsZA0KPiA+IHNpbXBseSByZWRlZmluZSBYRUxQRFBfRERJX0NMT0NLX1NF
TEVDVF9NQVNLIHRvIGJlIFJFR19HRU5NQVNLKDE2LA0KPiAxMikNCj4gPiBhbmQgYWRkIGEgY29t
bWVudCBub3RpbmcgY2hhbmdlcyBieSBkaXNwbGF5IElQPyBBcmUgd2UgYXdhcmUgb2YNCj4gPiBz
b21ldGhpbmcgdGhhdCB3b3VsZCBiZSB3aXJlZCB0byBiaXQgMTYgdGhhdCB3b3VsZCBwcmV2ZW50
IHVzIGZyb20NCj4gPiBkb2luZyB0aGF0Pw0KPiANCj4gTm90IHN1cmUgaWYgYSByZWdpc3RlciBi
aXQgaXMgbm90IHVzZWQsIHVubGVzcyBpdCdzIGRlZmluZWQgYXMgcmVzZXJ2ZWQuDQo+IEZvciBw
cmUtWGUzIChwcmUtUFRMKSBiaXRzIDE2LTE3IGFyZSBub3QgZGVmaW5lZCBhcyByZXNlcnZlZC4N
Cg0KQml0cyAxNi0xNyBhcmUgbm90IGRlZmluZWQgb3IgbWFya2VkIGFzIHJlc2VydmVkLCBzbyBJ
bXJlJ3MgYXBwcm9hY2ggc2VlbXMgc2FmZS4NCg0KVGVzdGVkLWJ5OiBNaWthIEthaG9sYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gDQo+ID4gSSByZW1lbWJlciBzb21ldGhpbmcgc2ltaWxhciB3YXMg
ZG9uZSB0byBvdGhlciByZWdpc3RlciBmaWVsZHMgaW4gdGhlDQo+ID4gcGFzdC4gU29tZSBleGFt
cGxlcyBJIGZvdW5kOg0KPiA+DQo+ID4gICAgIDNmZTg1NjE4MGM5NCAoImRybS9pOTE1L3hlM2xw
ZDogQWRkIG5ldyBiaXQgcmFuZ2Ugb2YgTUFYIHN3aW5nIHNldHVwIikNCj4gPiAgICAgMjQ3YmRh
Yzk1OGZjICgiZHJtL2k5MTUvYWRsX3A6IEFkZCBkZGIgYWxsb2NhdGlvbiBzdXBwb3J0IikNCj4g
PiAgICAgZDdlNDQ5YTg1OGVjICgiZHJtL2k5MTU6IEp1c3QgdXNlIGljbCsgZGVmaW5pdGlvbiBm
b3IgUExBTkVfV00NCj4gPiBibG9ja3MgZmllbGQiKQ0KPiA+DQo+ID4gLS0NCj4gPiBHdXN0YXZv
IFNvdXNhDQo+ID4NCj4gPiA+KyNkZWZpbmUgICBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNL
KGRpc3BsYXkpDQo+IChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCA/IFwNCj4gPiA+KyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9YRTNf
RERJX0NMT0NLX1NFTEVDVF9NQVNLIDoNCj4gX1hFTFBEUF9ERElfQ0xPQ0tfU0VMRUNUX01BU0sp
DQo+ID4gPisjZGVmaW5lICAgWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfUFJFUChkaXNwbGF5LCB2
YWwpDQo+IChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCA/IFwNCj4gPiA+Kw0KPiBSRUdfRklF
TERfUFJFUChfWEUzX0RESV9DTE9DS19TRUxFQ1RfTUFTSywgKHZhbCkpIDogXA0KPiA+ID4rDQo+
IFJFR19GSUVMRF9QUkVQKF9YRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNLLCAodmFsKSkpDQo+
ID4gPisjZGVmaW5lICAgWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfR0VUKGRpc3BsYXksIHZhbCkN
Cj4gKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwID8gXA0KPiA+ID4rDQo+IFJFR19GSUVMRF9H
RVQoX1hFM19ERElfQ0xPQ0tfU0VMRUNUX01BU0ssICh2YWwpKSA6IFwNCj4gPiA+Kw0KPiA+ID4r
UkVHX0ZJRUxEX0dFVChfWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTUFTSywgKHZhbCkpKQ0KPiA+
ID4rDQo+ID4gPiAjZGVmaW5lICAgWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTk9ORSAgICAgICAg
ICAgICAgICAgICAgICAgIDB4MA0KPiA+ID4gI2RlZmluZSAgIFhFTFBEUF9ERElfQ0xPQ0tfU0VM
RUNUX01BWFBDTEsgICAgICAgICAgICAgICAgMHg4DQo+ID4gPiAjZGVmaW5lICAgWEVMUERQX0RE
SV9DTE9DS19TRUxFQ1RfRElWMThDTEsgICAgICAgICAgICAgICAgMHg5DQo+ID4gPi0tDQo+ID4g
PjIuNDQuMg0KPiA+ID4NCg==
