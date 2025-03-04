Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFA7A4E274
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631C010E605;
	Tue,  4 Mar 2025 15:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGQhReIz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36E810E605
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741101037; x=1772637037;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=yvBgcb/wSCVxrL8MoPv2qOjDR17dKoIThGDt/g/aSvM=;
 b=mGQhReIz4chUKpOqWMKf9W8AyzKceP4AG1t01h3VRCC62iCP527+fWVx
 6r8EAdPZ68+SrYW+upt7KnrMWVE9HVyGwFX0KrOhpDQED1T2PexgKks1X
 cx5T0AcNXBQhLiuixUXnaHRuOO93R8yQUlugP5MupxwVjBL9fa0uFQ2eH
 2pW7dB50FEN8VwB6fT/lySSSV/YGZkEI2XK06GLzip6P8rFTl/0tSob88
 llfdn3HBuuRjRr1hVw/upK5VpwyqBbMg+A3BRvqGg4dgRVHW97vo2gZbb
 1aWXDz7SZJCNVu1CgyXuF8oh4/JbIiSSFMEzuGofheF6lQp3Ig976I1bm A==;
X-CSE-ConnectionGUID: htkr08WzSryBZBlOxT5hOA==
X-CSE-MsgGUID: +X+6JQiGSTK/9HW2EyC76A==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="67391180"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="67391180"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:10:37 -0800
X-CSE-ConnectionGUID: 9SPYeQDiTJK/EAy7w37D1w==
X-CSE-MsgGUID: 2poJd7BlQouexCguIPfceA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="118891156"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 07:10:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 07:10:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 07:10:36 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:10:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJRf9aEqwtHaPQts/hrZweeXl3ncWI92EL+y0bVWmJ5xh85z6CKe73UY8yovfS7MTx39BhAM089PW3ZJIElgoKJ9qxXOXGBsE6PW+Ts/1Jth9gSVMrbYj+c7oD9hEpEcDd3vLvL+mrGBEFvXtGZfDk0XyMRXFuI8wxuV3A4cOqGHGmSEFAG3oc9jTCuzZV6o/L12vW2jWysSXPfco97DtFie+bb/e2pfypzX+C1Czl32CG/YIjid70C8Vz/5SDburn1mCEeQv4h/H2Np9l9FQSnS023Za8UZtxJTMaWUUdYc/Ti5eGGY31YU0wm+9Lo6h+4vrW1QSQndTT+k07enXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yvBgcb/wSCVxrL8MoPv2qOjDR17dKoIThGDt/g/aSvM=;
 b=klZgjTVn1UPIuYm4cIaqJjerMMkDAVM05gc5KjaAUP6M+XK4A0QiV4cU14dwQX7spW0ehON4kbjPKJXp+cksZ/kKvcdNNJO7Zv0Dm1e4+jMYUESdsPRHbgIjaFG3GFHN01Ywg1Cq1Nw+pcB2Mghfe5G3J5LXgvdbfgWyCGl4R+Hekxsebtsn00ttJWf1ar/FsQNRouA29y8QgQ1SPpWjHeCnYKdPXo+OcB3GN7VvdqieYNnJnwfNct8lmxHEfJCVXNazwrJEMGTdvAp984Vea/uGlJYSaAwa1F6wtcqQtGvX7n6MJLJusOzCvx7y2wPhMs6r7U/tDyzbsM9W2WeXNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB7180.namprd11.prod.outlook.com (2603:10b6:610:148::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 15:10:18 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:10:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 16/19] drm/i915: Split wm sanitize from readout
Thread-Topic: [PATCH 16/19] drm/i915: Split wm sanitize from readout
Thread-Index: AQHbgkwpmNuUwT7DkUuTGUiJg7nMxLNjKniA
Date: Tue, 4 Mar 2025 15:10:17 +0000
Message-ID: <90f801a570b09faa76e5bfff12bf657ae7aa08e3.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB7180:EE_
x-ms-office365-filtering-correlation-id: b801038b-7369-4e1c-6faf-08dd5b2eac9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VEQ0Z3JZK0tTWXNPZW5BZVk3bzU4bkh3bkNoazVlV1VVMy80bVFMR2lMQ0Q5?=
 =?utf-8?B?NjY4OEdIcXljZ0g4WGFXaXNFY1JuQlBNRXBOSGtITitIRzlRWE9Rai81bUJh?=
 =?utf-8?B?M0hwekpOWW9YOEkzN0J5eDhzZXBqUzZObjJpTWo4NDdmdXlaMFV5UnNYaGRm?=
 =?utf-8?B?b2V0elBZTnRyQkhZWXZubkZ3UmU5Nlh4YjU3Ui9oOGs0UnNOTGlJSDVMR1po?=
 =?utf-8?B?WlBrUlY2WlROa29UdVFpNG0zV2E2aDUvZXlONlRjMG4rVW5PaTZWQmpHNWQ1?=
 =?utf-8?B?dVVCMUFLeGxIWlBVemI5YTdpSnM2d0x0ZXYxNE1PdVBGbmMzeFR0ZGI5TE9K?=
 =?utf-8?B?bk9NTThVTzBxaGVxTFl2NTZHL1Vad25BNFh4aFhTQlpiWHYyYncvMWR2Sm9x?=
 =?utf-8?B?cWExYzBKNE5vTGVOYVRSc0RFVU94Ylk2bytPVFVIR3VMWHVja3ZYc04vZlY2?=
 =?utf-8?B?QkdDdVV1OWNBeFFqMXNVS2FKZFFRS3VBRTFObE1rR3NjT2FyWG45c2FNcnlH?=
 =?utf-8?B?OTVKK1BkcGszdmQ1K1N3dmVTR0h4Q092WWxnbDRKNjNNT3F1dTdkNHVwcUND?=
 =?utf-8?B?SHFkenRVa3paNEVsQWxTK1ZvcTJmc1Y4V3k1T085M0NSS0JYUkxtT0MvUmwv?=
 =?utf-8?B?cGp2ZEovSFBtbitTOTlJS0I4aTlFc1I5L1VmNWp4ay9iNTg3RW9sWk96eTc0?=
 =?utf-8?B?aUcrSUFFYnVSNFN6bXV0UTBHZ3czTSs3dXNtUHJxMC9CYmJOY3BIRmo4SXdo?=
 =?utf-8?B?QmNCOGs3dFVzZlZZTWwxd1FldmtDdHd6UkkvMXNjL0V5aGZqeVRFZVUwVkxT?=
 =?utf-8?B?ZzdXeDMxOWlyZlhlbWd2U2RXVnZsUTJGVzJiN3FPbEFkY3hqUm1YWlBDbFJa?=
 =?utf-8?B?VmdtdFM4NGVLSG8xOWVFRDVQSzVHRVhabDlGbEwxbFpCVU5HTWJZblZHNEpn?=
 =?utf-8?B?UmhIakNTVnkrQks1L2xaL0tvU1FkVDkyOTFBSVVZMW5GNlozT3pidHhSc1Fj?=
 =?utf-8?B?YVkzQnpsdjBJT0xLVVFiang4WlU2bDZhbGhVdElDWitHRFBvMU1KYms5b1Qx?=
 =?utf-8?B?R1VuUGVMRklqbUhTczNFWUNrVEJ3MnpEZE5VcmVDMmhkcnBWQ2h2c01KeVBU?=
 =?utf-8?B?WWhXMUJNeG9LL3M0UENGTTQyK0t4WWNuZ0xjaEtQOWVlOHhyaDV1V3F0eUti?=
 =?utf-8?B?OThCb2dyeWVIeEl2RUszeHN5SHFSYllxMUZZUHZ4b0h3YzVoU2hEZHBOSm02?=
 =?utf-8?B?NEF0S2FTWjZsSDBwU2lxZzQ3UGppMElJSkRTMG5zSWQ1cmlTSkNyNm9GUzUy?=
 =?utf-8?B?WWg0ZUxxZkR0ZmtxZXNBQ1hrb2hnQnQ0L0ZhS291dHhNaFhXY2V0WldVVTly?=
 =?utf-8?B?RUVSZ1MvL1pGSGhNaEVPOEhEZXBiOCt6TkpjSHRUNzZhcmFZemdQRGVHNzhI?=
 =?utf-8?B?UTZZT0VMajZhN2lkWW1zL2UxVElBWk5mVlh6WkJBNWIxd0R5cG8xY241OHNl?=
 =?utf-8?B?SlpOdFdBbHBOakk1Z0pmOG1hdVlDcUx6RFg3NWg4TlAzWGFTbGJMNzRJVTNV?=
 =?utf-8?B?RVJxTWVwTG0zZnA2M1FHazdoUWp4bzRwWmxzZ0ZwUDh3OTQwUFBlcXp0UkhD?=
 =?utf-8?B?ekRPNWdLRmI0Tm5jZ2EvdzUvZkF2bHB2aXJZQWMzeDVjekxpUmNSVXJqaW56?=
 =?utf-8?B?MW9vRktnZXptZC85RHNadkRNMGxQNncwNGJCWC9xaUo0ZFNRUWNUVnZkdmxS?=
 =?utf-8?B?bzhTYU5vRHFjSXh2cEY3bUlQMnBjdktFT29iME5ENmVSK3ZvQmxZQXJkY09Z?=
 =?utf-8?B?aktWVDZsSFVFTDFOQnJZdjRBUWV4eWcrZ0RvSUpYcCtNUDh6UUlGa2xaVE9L?=
 =?utf-8?B?SWlYd3l2ZGFXYVFnQndqWDNvRjBESm9ZTGtTVEd6YnByaFBTanlzSWFvTHFP?=
 =?utf-8?Q?3HkU6+SuDwME3WgTJjZPz2Je6WCMHYLH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q25JVEhHZWh6MTVGZkpNVEllL21SMjR6djhONWFHL2dYT05jUUpJL1Q2bEhU?=
 =?utf-8?B?NHpBRzgzVlk5Q2d6aCtmQmZsWktwNDJOcm5DdWt3akY1THltZU9iUmFEb0VX?=
 =?utf-8?B?Wkp4RkxxYXBlS1N0YldpSUptM0dmM1RxZnRPWWlCM0VVNTZyM1dyZ015VUhD?=
 =?utf-8?B?dWloSzk2eWtUNHdrSGlSaUtKQkRMV1NkYkJzc0M1OXBtQnhKTEROREsvYVAy?=
 =?utf-8?B?VnVUMy9QU1F0dnN0MjZ4NXRDTVREQ1VzYmFsakUyYWxyZWlPQ3R4ZElhbnN6?=
 =?utf-8?B?cHY4MUVyVjBHcnpGc3BtL1BVRVdRcGE2RExleUw2MGhyUHVkVEVqaHphUmk0?=
 =?utf-8?B?cDl3a0dEYjAwMlRySURWQWViTjNQWGRxK1hreGlrakRidWE3OVJxWW1PSEZN?=
 =?utf-8?B?SXFTNms2NDVNbVRWNGhQUzBNT2V3Rm1ISjNaK2hIRUdzYnU1V2NRenJuMkYr?=
 =?utf-8?B?aXJyLzFySk4yYkYrZy9scjNMOUNmZzBEYTNMd29HUFd6WEcybWo3TmdyNU9S?=
 =?utf-8?B?Y1gvbHV1NjNqZlFxU1IrYmRpTU1nWGpvRjBuK3F4UGl1ZU5rNS96VWNYZElp?=
 =?utf-8?B?SGxaYkF6VTNnSlFKRU5pRHpCSE9JK0RXWi9wcW4yOU5GaW5GYm12YjlkYUdU?=
 =?utf-8?B?MmNGcHF2OXZ0STJMSTVpUmRCQUFOWHFCUUZIYTZ4ekZPUUtPRlkyNGVhdTZ3?=
 =?utf-8?B?RU9TQjFtWGJWWUNpN3ZIS3lwd0JneXp2NW5Yek5ubnNNdE56ZEo3M1hmajI5?=
 =?utf-8?B?bHY3SmhOYUJGQm1OMGZtU2VFemxxcy95NEFoRzI5VTNwWkdTNWJEUkJqSGZ4?=
 =?utf-8?B?djVtMWtCY2V0eFhESUc0L01YUzdWbVJYR3NKUjZZSG1oeG4zYXl6MHF5Qlpl?=
 =?utf-8?B?S1ppL0pJQkJpYlEwRTVVVU1OOGNRT25DUElNR1NlUkdnL25zak8rS2VjaG5L?=
 =?utf-8?B?TG44bGpDeFo1eGJxK2ZKMUh5YlUya21lOERyWUtIUGw1b1NKY0tKM2grNWk0?=
 =?utf-8?B?RDdQR3hwUkdQS2hBdjhjZzJzWFB5YmJqUFlBc1JmT2NlZ1VvdFllNmI1RDJ1?=
 =?utf-8?B?VFZnaFNid3g1TWwydE4xWmJoRnc2OHFYUno3Z1FNOENPWThzNEdEVmdqQ0I5?=
 =?utf-8?B?MmdxbEN0clRXeG14NjVzVTRhbmxxYWZIb3BuYldNMkZVN3haTDd1RmhmWXJL?=
 =?utf-8?B?c0VOYmZvU0xYdVhCd0NVdWwzK0ZrVTRBNWxnN2dzc1dybGMveC92R3JJSTQ5?=
 =?utf-8?B?MTd5NTAyTnFhK2FqTXpkaGJaa0hFcGJhSHByZU5BUjVOcS94K1UwenZOTCtv?=
 =?utf-8?B?bmR0d0dsNG9oaUd4UHExYzh1dnlGSm9kcUZld2krZ0NtNUFnTCtVa1EwMHBR?=
 =?utf-8?B?SHJBcjBBZGtEbjNHU054c2FUeUxNeWd3d1FBM25BazF1RWR5Y3VscTBzL1B2?=
 =?utf-8?B?bE53RnV1RzJKK3NUaXZQVkVCY3Jta25XSjU0NnNEcjZudGt4VlRSalIyUDRQ?=
 =?utf-8?B?cnpMYUtFN0lkZ1h5ZW1STDhjUENQQ0luclBpWXVhc3pwdE5MbDM3Mm1BVTZl?=
 =?utf-8?B?anJZd0s4dy9RUG1SVlVVbFZzOCtXMENzZHBJRmIwUE41VlVGamJRZGN5cGh5?=
 =?utf-8?B?RGZIdmdubDBvcnR2MmkwbThMYlA2YXpHeFpSMFRIQ0V2ZVFCQ1RNSWYySFoy?=
 =?utf-8?B?bktrY2p4Y0hRbFJldnVFblVIaU1tWlVuM0VKMndNUFZJMSt3OHZnUTlGN3pr?=
 =?utf-8?B?dmlYbE05WHFtS3V3NElIZ2JuanZSTC9hU2FMRTBtMGFIMXptTmVhQWVUczNi?=
 =?utf-8?B?Sk96UkF3bGhkdzVLWWNxV1lTVDFzN0o1STlPSXpxMHBLK3ZPOHc5cVg2dzRM?=
 =?utf-8?B?c2RQOUJOY2I0RDZrc3I4UE9IZm82a21mT3hsbU04a29STXZOVVhhTWEydWli?=
 =?utf-8?B?dmdIQnNyajBaSDZpUGZ3NUs3dzB5dDYwdDVDS0l5YW4zanc0czBuS0FOYVBE?=
 =?utf-8?B?Qmw5RmpqUVFPMVdXUkNoZnZGT0lLZUNma2RoUXMvVW9CMFNkOGFhT2JncmFG?=
 =?utf-8?B?YW5pSzJiMlRJTnJyalZ4VDBKSkJTQmNpWWVzZVozek1rdDhyMzZZRkVMelcz?=
 =?utf-8?B?ZnRQSzd4SVVwalBMZEZmc2xqZjhiN2V4SVRhZ3hNZGlyOXV1N3ova2VoSWtG?=
 =?utf-8?Q?GjCCq/CKv+tXlNf00OTtvxE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D24D3CBA4D849640BF5A345ED9518BBF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b801038b-7369-4e1c-6faf-08dd5b2eac9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:10:17.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +F+tBwliKAvszQfRegvxNi1hjB0KXzULZFR0vRhsA9QxcAxkCQesn6ZYkr50bcxLJuoLqGM/EqecKAYxkqgkmfk83hQy3xclHZAM7UBbwbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7180
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSSdsbCBuZWVkIHRvIG1vdmUgdGhlIHdtIHJlYWRvdXQgdG8gYW4gZWFybGllciBwb2lu
dCBpbiB0aGUNCj4gc2VxdWVuY2UgKHNpbmNlIHRoZSBidyBzdGF0ZSByZWFkb3V0IHdpbGwgbmVl
ZCBkZGIgaW5mb3JtYXRpb24NCj4gZnJvbSB0aGUgd20gcmVhZG91dCkuIEJ1dCAoYXQgbGVhc3Qg
Zm9yIG5vdykgdGhlIHdtIHNhbml0YXRpb24NCj4gd2lsbCBuZWVkIHRvIHN0YXkgcHV0IGFzIGl0
IG5lZWRzIHRvIGFsc28gc2FuaXRpemUgdGhpbmdzIGZvcg0KPiBhbnkgcGlwZXMvcGxhbmVzIHdl
IGRpc2FibGUgbGF0ZXIgZHVyaW5nIHRoZSBodyBzdGF0ZSB0YWtlb3Zlci4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF93bS5jwqDCoMKg
wqDCoMKgwqDCoCB8IDE4ICsrKystLS0tLS0tLS0tLS0tLQ0KPiDCoC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaMKgIHzCoCAxICsNCj4gwqAuLi4vZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jIHzCoCAxICsNCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmPCoMKgwqDCoMKgwqDCoCB8wqAgNiArKysrKysN
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmjCoMKgwqDCoMKgwqDC
oCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJr
LmPCoMKgIHzCoCA3ICsrKy0tLS0NCj4gwqA2IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxs
YWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaTl4eF93bS5jDQo+IGluZGV4IDQ5Nzg1MGE2YWM4MS4uN2M4MGUzN2MxYzVmIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYw0KPiBAQCAtMzkwMiwx
MiArMzkwMiw2IEBAIHN0YXRpYyB2b2lkIGc0eF93bV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRpc3BsYXku
d20ud21fbXV0ZXgpOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyB2b2lkIGc0eF93bV9nZXRfaHdf
c3RhdGVfYW5kX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAtew0K
PiAtCWc0eF93bV9nZXRfaHdfc3RhdGUoaTkxNSk7DQo+IC0JZzR4X3dtX3Nhbml0aXplKGk5MTUp
Ow0KPiAtfQ0KPiAtDQo+IMKgc3RhdGljIHZvaWQgdmx2X3dtX2dldF9od19zdGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgew0KPiDCoAlzdHJ1Y3Qgdmx2X3dtX3Zh
bHVlcyAqd20gPSAmZGV2X3ByaXYtPmRpc3BsYXkud20udmx2Ow0KPiBAQCAtNDA1NSwxMiArNDA0
OSw2IEBAIHN0YXRpYyB2b2lkIHZsdl93bV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpDQo+IMKgCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRpc3BsYXkud20ud21f
bXV0ZXgpOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyB2b2lkIHZsdl93bV9nZXRfaHdfc3RhdGVf
YW5kX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAtew0KPiAtCXZs
dl93bV9nZXRfaHdfc3RhdGUoaTkxNSk7DQo+IC0Jdmx2X3dtX3Nhbml0aXplKGk5MTUpOw0KPiAt
fQ0KPiAtDQo+IMKgLyoNCj4gwqAgKiBGSVhNRSBzaG91bGQgcHJvYmFibHkga2lsbCB0aGlzIGFu
ZCBpbXByb3ZlDQo+IMKgICogdGhlIHJlYWwgd2F0ZXJtYXJrIHJlYWRvdXQvc2FuaXRhdGlvbiBp
bnN0ZWFkDQo+IEBAIC00MTIyLDE0ICs0MTEwLDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfd21fZnVuY3Mgdmx2X3dtX2Z1bmNzID0gew0KPiDCoAkuaW5pdGlhbF93YXRlcm1hcmtzID0g
dmx2X2luaXRpYWxfd2F0ZXJtYXJrcywNCj4gwqAJLm9wdGltaXplX3dhdGVybWFya3MgPSB2bHZf
b3B0aW1pemVfd2F0ZXJtYXJrcywNCj4gwqAJLmF0b21pY191cGRhdGVfd2F0ZXJtYXJrcyA9IHZs
dl9hdG9taWNfdXBkYXRlX2ZpZm8sDQo+IC0JLmdldF9od19zdGF0ZSA9IHZsdl93bV9nZXRfaHdf
c3RhdGVfYW5kX3Nhbml0aXplLA0KPiArCS5nZXRfaHdfc3RhdGUgPSB2bHZfd21fZ2V0X2h3X3N0
YXRlLA0KPiArCS5zYW5pdGl6ZSA9IHZsdl93bV9zYW5pdGl6ZSwNCj4gwqB9Ow0KPiDCoA0KPiDC
oHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfd21fZnVuY3MgZzR4X3dtX2Z1bmNzID0gew0KPiDC
oAkuY29tcHV0ZV93YXRlcm1hcmtzID0gZzR4X2NvbXB1dGVfd2F0ZXJtYXJrcywNCj4gwqAJLmlu
aXRpYWxfd2F0ZXJtYXJrcyA9IGc0eF9pbml0aWFsX3dhdGVybWFya3MsDQo+IMKgCS5vcHRpbWl6
ZV93YXRlcm1hcmtzID0gZzR4X29wdGltaXplX3dhdGVybWFya3MsDQo+IC0JLmdldF9od19zdGF0
ZSA9IGc0eF93bV9nZXRfaHdfc3RhdGVfYW5kX3Nhbml0aXplLA0KPiArCS5nZXRfaHdfc3RhdGUg
PSBnNHhfd21fZ2V0X2h3X3N0YXRlLA0KPiArCS5zYW5pdGl6ZSA9IGc0eF93bV9zYW5pdGl6ZSwN
Cj4gwqB9Ow0KPiDCoA0KPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfd21fZnVuY3MgcG52
X3dtX2Z1bmNzID0gew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gaW5kZXggNTU0ODcwZDI0OTRiLi5jZTQxYTFkMjBhN2Ig
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2NvcmUuaA0KPiBAQCAtOTEsNiArOTEsNyBAQCBzdHJ1Y3QgaW50ZWxfd21fZnVuY3Mgew0K
PiDCoAkJCQnCoMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiDCoAlpbnQgKCpjb21w
dXRlX2dsb2JhbF93YXRlcm1hcmtzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7
DQo+IMKgCXZvaWQgKCpnZXRfaHdfc3RhdGUpKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsNCj4gKwl2b2lkICgqc2FuaXRpemUpKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsN
Cj4gwqB9Ow0KPiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9hdWRpb19zdGF0ZSB7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+
IGluZGV4IDcwZmFkOWY4OWNlYS4uMDNjMGZhY2ZhZDdhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBAQCAtOTkx
LDYgKzk5MSw3IEBAIHZvaWQgaW50ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gwqAJaW50ZWxfZHBsbF9zYW5pdGl6ZV9zdGF0ZShkaXNw
bGF5KTsNCj4gwqANCj4gwqAJaW50ZWxfd21fZ2V0X2h3X3N0YXRlKGk5MTUpOw0KPiArCWludGVs
X3dtX3Nhbml0aXplKGk5MTUpOw0KPiDCoA0KPiDCoAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZpOTE1
LT5kcm0sIGNydGMpIHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
ID0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uYw0KPiBpbmRleCBkN2Rj
NDlhZWNkMjcuLmYwMGY0Y2ZjNThlNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF93bS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfd20uYw0KPiBAQCAtMTA4LDYgKzEwOCwxMiBAQCB2b2lkIGludGVsX3dtX2dldF9o
d19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqAJCXJldHVybiBpOTE1
LT5kaXNwbGF5LmZ1bmNzLndtLT5nZXRfaHdfc3RhdGUoaTkxNSk7DQo+IMKgfQ0KPiDCoA0KPiAr
dm9pZCBpbnRlbF93bV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4g
K3sNCj4gKwlpZiAoaTkxNS0+ZGlzcGxheS5mdW5jcy53bS0+c2FuaXRpemUpDQo+ICsJCXJldHVy
biBpOTE1LT5kaXNwbGF5LmZ1bmNzLndtLT5zYW5pdGl6ZShpOTE1KTsNCj4gK30NCj4gKw0KPiDC
oGJvb2wgaW50ZWxfd21fcGxhbmVfdmlzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gwqAJCQnCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkNCj4gwqB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3dtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3dtLmgNCj4gaW5kZXggZTk3Y2RjYTg5YTVjLi43ZDNhNDQ3MDU0YjMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmgNCj4gQEAgLTI1LDYgKzI1LDcgQEAg
dm9pZCBpbnRlbF9vcHRpbWl6ZV93YXRlcm1hcmtzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiDCoAkJCcKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+
IMKgaW50IGludGVsX2NvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpOw0KPiDCoHZvaWQgaW50ZWxfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gK3ZvaWQgaW50ZWxfd21fc2FuaXRpemUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiDCoGJvb2wgaW50ZWxfd21fcGxhbmVfdmlzaWJs
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gwqAJCQnCoMKg
wqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7DQo+IMKgdm9p
ZCBpbnRlbF9wcmludF93bV9sYXRlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJr
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBp
bmRleCBkYTdmZmNmZDk0NzguLjBiZDdhYTNiMjg3NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTM4MzcsMTAgKzM4MzcsOCBA
QCBzdGF0aWMgdm9pZCBza2xfZGJ1Zl9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyB2b2lkIHNrbF93bV9nZXRfaHdf
c3RhdGVfYW5kX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiArc3Rh
dGljIHZvaWQgc2tsX3dtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0K
PiDCoHsNCj4gLQlza2xfd21fZ2V0X2h3X3N0YXRlKGk5MTUpOw0KPiAtDQo+IMKgCXNrbF9tYnVz
X3Nhbml0aXplKGk5MTUpOw0KPiDCoAlza2xfZGJ1Zl9zYW5pdGl6ZShpOTE1KTsNCj4gwqB9DQo+
IEBAIC00MDE2LDcgKzQwMTQsOCBAQCB2b2lkIGludGVsX3dtX3N0YXRlX3ZlcmlmeShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqANCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX3dtX2Z1bmNzIHNrbF93bV9mdW5jcyA9IHsNCj4gwqAJLmNvbXB1dGVfZ2xvYmFsX3dh
dGVybWFya3MgPSBza2xfY29tcHV0ZV93bSwNCj4gLQkuZ2V0X2h3X3N0YXRlID0gc2tsX3dtX2dl
dF9od19zdGF0ZV9hbmRfc2FuaXRpemUsDQo+ICsJLmdldF9od19zdGF0ZSA9IHNrbF93bV9nZXRf
aHdfc3RhdGUsDQo+ICsJLnNhbml0aXplID0gc2tsX3dtX3Nhbml0aXplLA0KPiDCoH07DQo+IMKg
DQo+IMKgdm9pZCBza2xfd21faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCg0K
