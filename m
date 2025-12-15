Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D51CBC9A3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 07:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A6210E14A;
	Mon, 15 Dec 2025 06:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rk7AWPCs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1B48876A;
 Mon, 15 Dec 2025 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765778813; x=1797314813;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=cjw3wIcpDMrkdqlxfq8HBcSrs2VpAfidnWjt0xRyCzw=;
 b=Rk7AWPCsqD2WposK/fVfwm9DYROepg85o+hGBRttHqP8F9o773orPXDG
 jmb8FBIvHZ3ft2P3qwGyO8fIa9+JTg8ruIQlrDrFn/76Rik//ZyT74Ae8
 P5Z89M3jfjnZTiEtgoO6OSiDhFGiLaxcZNLDytR/pasb3zXg9v9J6d+sW
 7v6fCHRymS6Y6Z4pjRBGKXai53ps8gyw9XsDUfphXTKGsUoIUQF1lsuZU
 6lPqwjeK7wme7NTR1uFNac2f8dFG6lW9amO3u+To1y5Hco+BccNsgzK4y
 vBAZ+3DPycaZgoqs0yK9LCfsHb/jCoab4DCOoVikKF3fsLgggRztLqqZr A==;
X-CSE-ConnectionGUID: FYxos9mOSXGaIGM3RAtKnA==
X-CSE-MsgGUID: CAOeUetUSG+eutbvTQ8dvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="78379866"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="78379866"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:06:52 -0800
X-CSE-ConnectionGUID: ZIUbG43tQtuw4IGYFvuCsg==
X-CSE-MsgGUID: ihqlEUgdSd+V0RuTDgxt5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197685460"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:06:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:06:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 22:06:51 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:06:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cCcSnLnYk6HfZlAa/PjHtsjd72oH3y8cx9Ugnh2huoXgIZ+VavZL4QRZ4ExE3N3V8nu6ojT8/Re31KLC3RBcXbZuadmzfGftbcssYMYhUhFL2hLhXqDFZnDRDpbJY45nSGsvi736XG5Go9m+DcWno2Wi+FPXWJ0uMezsjg0ZU841mBmEwz1l3kUinKV5s2+5Aw6oXaYCFNekfSMn4/BvWazKQCXlF1xM/G8bVsYtQgusZeVevClwSounlGBBtnlY8X1z9MyplgAQK2vhSlA0cjWw2/5O21xsBPWLN2mQbnUy/1E4tLCdxHhR9od+nz8AFidAzKbuOTPSj/3UghcWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjw3wIcpDMrkdqlxfq8HBcSrs2VpAfidnWjt0xRyCzw=;
 b=JnTzrLRBQtlj3SyITy5bC3iRc7KyGOTy9o2amrS3QzeONBDQFdY9+42E9P2ORsPM0/6uPZLK7FyXk+H84wDJ5F2Re0788Et1fwMqirpbxoG/aFhL2IGMj4hGWnGV1kTjH+YlAs3Aki9c9rLj6dEVadAZhcp48D3sZPPX5KnK9SXTUVTvMIF27P50vgXK2pMhy4cEbvluOEG5FJw63c6gPcBzxSzWkIUDYEitCgRsYaCaaN8FV4WW+M1aqkHH9vBwHoOEeh6VeLENp4xoIwrAFmkGp5YcRJ4qQH5O2X0tWuDKW4o1/pGREFlnnhzenFEzJdOPtsJZibI4z6uEbAkl3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.13; Mon, 15 Dec 2025 06:06:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 06:06:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Thread-Topic: [PATCH v2 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Thread-Index: AQHca5Oa/T0q+dI3TkaDz3ZKCmUG4rUiOtQA
Date: Mon, 15 Dec 2025 06:06:47 +0000
Message-ID: <3c6c753fefb0efad55e1cd1b6889ea2cf5a6239f.camel@intel.com>
References: <20251127175023.1522538-50-imre.deak@intel.com>
 <20251212181702.1906312-1-imre.deak@intel.com>
In-Reply-To: <20251212181702.1906312-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6302:EE_
x-ms-office365-filtering-correlation-id: 6e78ce37-be28-474c-ca36-08de3ba0214a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?c3Zmbnk0Z3RwUlpMSTRab2NmOHo1dnIvbnB6c3Mwa29kK1F0S2V3TmxOR1hJ?=
 =?utf-8?B?WFc2U0loMjZoVVNuSzYzQlBwdmxic0lTRWg2WGpON2UyVHFwYmorcmIxS1Bt?=
 =?utf-8?B?TG8vdUNuNzNxTWpJQmdyTmF6QVN6eWJYS1NkQkthK2NOMmVhOW5JS3ZyN0J0?=
 =?utf-8?B?S0VXTHJKNmczY2ZqWGhmejgyd3JhQ0Zkb2hUZnIvYWRDSUZZb0J6RUV0U1o0?=
 =?utf-8?B?UTBVSVNPUi95ZCszVkpzQ1FXS2pCRjYxUGQxYlNmbWFVekdFbHAvb2g5RENw?=
 =?utf-8?B?TWliajE0VXQvTkQ1VkhJbmJpTS9ZSDVwcnJ6OGd6dHNxOFJ5eSszTEE5OGJm?=
 =?utf-8?B?bnF0YlB6MS85MVAyd3pCSGYrKzVBdU5RczA1MDV5UVdsN0Y3MW55bi9Na2gx?=
 =?utf-8?B?NXlXRFVZTmJiZXVKU3YyUzE1dEU5NWk0NytqdHlpNk93QWhhejV1ajhlcEtw?=
 =?utf-8?B?Rkh5MTBCbEp3YTAwRFNHcHJMMkcxSTJ5bFBQUGdtNVo5T3M3NnhKM3I5K1do?=
 =?utf-8?B?YVpKK0JROWw0MDRvd1ltU1NTYnM3QSswNndFZ0VESjg1cWhaY3padmI5WnNI?=
 =?utf-8?B?aFR3azVRZGpyU0kyL3JTSDByRytuQ3BkeUZCcGFBUWJzaEZZTzVZSFg5WVNO?=
 =?utf-8?B?Um8walEwRkhnd1lROWttSTVwWlptRDJWaWdNMWZENUc0dVlpNHMxTm9vS0xr?=
 =?utf-8?B?UnJUbVc4STR5TGFLdVNQMzBmYW9XU05KTGhWY3dBUkxXMzdwYWJaT052UDhu?=
 =?utf-8?B?QU5FckFJQUMyWmwwZlJrTE5HWXgyM3F3aHJVRC9jS0RJR0FYTmdLbUx3QlZs?=
 =?utf-8?B?M1pUQTNwNjhkazNzRU9qV2tGNStENUxTQXNOY3IvdzhNajhOTUJmcGRPVVRj?=
 =?utf-8?B?TllkK3hGcFZETlBneHd0OXBpK3N5bVZXRmNTeTBGZVlSRlh4emNXRVNzY1Ey?=
 =?utf-8?B?R05BY2Y4anpuUUgzZVVDQzdUQlg5b2NuMFp6ZnhPb1ZjSGVhZ01KWnhqOXlh?=
 =?utf-8?B?VFJEQkxMMTBsNVI4UUlweDhURlFWK3JKTW8zTTZ1WmVQejJXelAwQTdBRml4?=
 =?utf-8?B?QldqRXNGbGZnQzMvbkl6MmhkTEdwU1k5b3Q4bVNEY2F2RDZoZ2xpUnRodUI3?=
 =?utf-8?B?Si9oWGtrNW5XOFdxSVp4YjduRkRxMzdySTRHZ1hPdFNEbUZpRXcxOERzbzZQ?=
 =?utf-8?B?aHFsb3pCcFMyMDU2alV1ODRMb1hWUlRwcTZ4OTRDcUI1ZmZQbW81TDIxZTdD?=
 =?utf-8?B?YUlnNE5ZdlJ2K2FIZjJiQlZqWkh6NUUyemtRS1d2b0RmS2FuY2NmdXkvcmls?=
 =?utf-8?B?d0ZqMTd2SWVoa3dOOCtPL0Ivd1pKeWJsb3BEZHZmeTl4SUQrM3Q4QkUwQVpI?=
 =?utf-8?B?VUs4Y2VtSFdxSXZ0TmxFb1dHb3k5b0FIS2R5cUdkVUF3bE9McTBpUnhmV3d3?=
 =?utf-8?B?ZXFKWWh6dU91aFRVZUVsUnRHTFcwK2ZQOFdJdDd3MnI3eUlRVytaaTZlRlNJ?=
 =?utf-8?B?OHV5SlJlRW4xbHoyeHhXV1ZQdm9kUzZEdmNhbU5SK0Rvb3FWaGRaNzI4a3Yr?=
 =?utf-8?B?K1gra2VMb0pienhEbm5iVGZDMStBZFRDZ3B1UyszbG1xeFFpUDVaVW5BSG8w?=
 =?utf-8?B?bG1lNVZ5VW5EOHJ0a0IzSnI4RlFOVzhaS0JjaXhCQ0hEUDV6MmhNQ2hYQkp4?=
 =?utf-8?B?OTBibTNKb3JtaWNqdGovd0cvNzFMTGJ4VHpKd2p3dzJYMWlFZThOeUxaSk5Y?=
 =?utf-8?B?c1JHWTF3em4zcGEwNVhGckpyNTFOenJRTnR1N251YzdHUXpNcFVpY3U2b2lR?=
 =?utf-8?B?KzdCZVd3Slk2L3hqSkJ0aXUzNTFkeHJCMnNRWU42ZFl1RHR0MFlwSVBHMlcy?=
 =?utf-8?B?VHJReEZDemg4OVMzWVBBQU5UcDQvaU4xUjBiRllhQ08zd3ZJYmhLMTR6VkV5?=
 =?utf-8?B?NVV3Y3MrY2cyYVRGWTM0SlZiRGJmV2lxQ1FxT2tnSG5TamNEUGhqUWVkUDJy?=
 =?utf-8?B?c3JHL0NKQ0JNNmN3QTN0TjB5K1FIN0diT3k0eENyQ09tTFZFT1lUY2lpUWJo?=
 =?utf-8?Q?61ZFzZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmUwWGZNeko3VFY2ZDIwd0drZGxIaGx2d2M3K1dFaEF4SXlCcnpSUlVrS0Y5?=
 =?utf-8?B?NFljTFhjMXJWSU5Zam1IcFRlMFZ3ampYVUlPSUxCSjdvUGZuZ2t5Z003TERK?=
 =?utf-8?B?SVBpbUJFbFFSaGhTclJrQUI5UnhkY09ZdVBMTVlaSFZ3VXQycm9LaC8yVXFt?=
 =?utf-8?B?aXNUUDA3akQ2NncxMmIyY3NXY1VWQ3hYaFUvWFZIMk8yelVldUpnb0tYbFJJ?=
 =?utf-8?B?U1ZuaHNzeGVIVHpHWTdHeldwUjVoY0JwYS9zRUZSdjJiazg0bmtqWE12Ly9B?=
 =?utf-8?B?dGtBZmpkVFFUVUEvWW9ZdlpsaWNOUVh0UWlPakZiMjNzcGs4aDZNNWs5T0Nj?=
 =?utf-8?B?emwySmxETXpGTGNoOFhCRHBNQ2NuVVNYaFRrVmYrbTVFelNqWVFMZStLVHh5?=
 =?utf-8?B?Y3ZURnlheEZ3MzhBSmhOY2R1Si92L0xFcFF1WGdnNkEyeFlZalVYK21tY2tr?=
 =?utf-8?B?RG1sb3M5cFJSZ2Mwekd3U0NVdVp1YlY1ODdGczFsSUlSYWpJT0RycVgyUmZW?=
 =?utf-8?B?S3pDb2lrNjVtNTRHcXFQbFhmSzM5SHZhcCtPayttVDZubzErMUJVaXcrdVF4?=
 =?utf-8?B?N3BITGRVdXAvWlJtdDY5SXBZV2dlSkk1WUxYU093SzZEc3lzUjRwNE9FSmtE?=
 =?utf-8?B?RmMxeEZ6dElKbk5mcXBwVFRleUttWmErd3ZBN2JtbnBXYlQzVDQxTTgyTnEz?=
 =?utf-8?B?dnZxa2h6Y3cwN1dzczVoN1A4NkxSSXdvRjdJeGQvTEQ2UlRBdkJjamlVWWZH?=
 =?utf-8?B?NitBK1hKUCtBVnoxMWJYMnhSTWFnMmVVRE9zdXNVTW03M1QvcjFFMVduVWlH?=
 =?utf-8?B?cldYdmRMUU1panYvZjB2dVFpNkwrZHpqWTBQSTAzZjdMQTdCTVVrWkRMOTlB?=
 =?utf-8?B?ODJZSkUyUGM4Z2k4TUFadllrTjNXMzVBenVkZ2Z6dXA5WU9TR2RoK2MvMTJ4?=
 =?utf-8?B?QmlqNmQ3enI1d0JUT3pwejFKR2JaSHE5OTN2NHFPd1ZrRUprblZjblVPQzM0?=
 =?utf-8?B?K01mRnowOEtjalhERDZjNGJ4RFVNLzZiTXJGUEJaNklieWhoWDRUOUJ5TVhk?=
 =?utf-8?B?NUlZdXVRemJZclFSa0w2UkExUlBHU2lUM1NtbjZYZHdwNEo0bG9xMkRaT3Z5?=
 =?utf-8?B?bzArVGV1WFgrZzhSRklLSEtEZGpyT2RxYXYvRGxFaCtxKzJnWDZLWnBIY3Js?=
 =?utf-8?B?VnA3ejNlNzhjdU1ScGpacXR6QWFzcWhDeThlS1lrMGVjNFhySTBCV0l6WHhw?=
 =?utf-8?B?UGNXSm1TUE1GSk9JWll2NHdFV2hYTlkybzJQS0wzbEQzQkRSNmhGa1p1d2Q4?=
 =?utf-8?B?QUxheWsrbXFuTEV0Nm9GaVRUbi96YWN5SjJ2OUlJdlhpWFVZS1BHTjRMMERR?=
 =?utf-8?B?dEc5bUxBMmhIODloSTlIWlB5Qy93MFB0WFIrZC9jSDNpUldGQmliaEdSMHZv?=
 =?utf-8?B?U1ZDQ2E1Sno5S2JjR1dEMHVXbjA2cEFGZE1WUXJ6clpjUXUzNU9scm93TUcx?=
 =?utf-8?B?QjZlUWlDT1diREg0cXMxU0xoRnJqc2RPeXh5cEZjMk5pdFhPeW9qWnlMWXNQ?=
 =?utf-8?B?ZjFNanUyQzJuQjRveUNwTEhlRjhmYkVIeFUrR3E0dEh3U0NuY2hjZ0NNcGdv?=
 =?utf-8?B?NzFOUWVXMDhGS1NFU3E3U3V4dENNNjdGNXQ4ekZTTkJ3ZVdwNWlYQVdPOEx6?=
 =?utf-8?B?dFcrV0laaVRETC9rRFdJM1A4WGYxeFRXVFNWdndkbGxQeWZCLyt4aEhFcDhS?=
 =?utf-8?B?UEhCS0pqTFFYeTljUEpSSmM5elNwa0xxRlMzeXNSeVQ3ZmcvWWp1ajFVNjh5?=
 =?utf-8?B?Z1VacGFaTjFvSjU5d0hOTWs4Zm9PK2ZxV0dxQlVPQUV0RENGV2lYWmQwQVhK?=
 =?utf-8?B?bWVoT3oyQy9hcVRYcHpYYXNhYVZyV3FrbTVYYVdWQ0k4M29obzhJREMyK3lu?=
 =?utf-8?B?N1RiNFdYM1VrN293dWJsR2toRzBtV09PbUs3RVA2ZDhXYU16NXRqMVNpcFFT?=
 =?utf-8?B?TjdyRURSREpaU2pzbW5VYXE1QjlKc29NbFBBWEppSnM0d2FGV0NjeDQ0Q0Ro?=
 =?utf-8?B?aWJFU1pSdDAxRjJXY3FtelRiMUdEN3ZPU1FOdjhYKzZPVnVBV0l4RXM0a3lV?=
 =?utf-8?B?NndqMitybUFXRmdmV09tSTJkRnI3Vkt4Wnliczh6TS8vS0lsL0cwbHpadWcw?=
 =?utf-8?B?a3ZTMjdDNnVMYzdLSXpKbUlOKzBCbUhhSHJEdFZ4eTRmUVlZMmxGTUZOM2FP?=
 =?utf-8?B?S09PWGNFb2h2T1lFRnJ2clV0RE1BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FC644D4D09CB674196824B7EC0D83F3D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e78ce37-be28-474c-ca36-08de3ba0214a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 06:06:47.2480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KcB9gGUUXqKxw5oUbZ5WPiWlUy4C4NUlYyWtEkDNufJbRdai3Z7Weuf1RB5WgFEUFpdKr+X/4PYGe4BY77EcUkLFEHdb9FJ84VbB2dSk1YQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
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

T24gRnJpLCAyMDI1LTEyLTEyIGF0IDIwOjE3ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvbmZpZygpIHRvIGNvbXB1dGUgdGhlIGRldGFpbGVk
IHNsaWNlDQo+IGNvbmZpZ3VyYXRpb24gYW5kIGRldGVybWluZSB0aGUgc2xpY2VzLXBlci1saW5l
IHZhbHVlIChyZXR1cm5lZCBieQ0KPiBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KCkpIHVz
aW5nIHRoaXMgZnVuY3Rpb24uDQo+IA0KPiB2MjogRml4IGluY29ycmVjdGx5IHJldHVybmluZyBm
YWxzZSBmcm9tDQo+IGludGVsX2RwX2RzY19taW5fc2xpY2VfY291bnQoKQ0KPiDCoMKgwqAgZHVl
IHRvIHJlYmFzZSBmYWlsLiAoSm91bmkpDQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyB8IDMxICsrKysrKysrKysrKysrKysrKysrLS0tDQo+IC0tDQo+IMKgMSBm
aWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGZmNzc2YmYzYjAz
NjYuLjE4MDgwMjA4NzdkMTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gQEAgLTEwMTgsOSArMTAxOCwxMSBAQCBzdGF0aWMgaW50IGludGVsX2RwX2Rz
Y19taW5fc2xpY2VfY291bnQoY29uc3QNCj4gc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yLA0KPiDCoAlyZXR1cm4gbWluX3NsaWNlX2NvdW50Ow0KPiDCoH0NCj4gwqANCj4gLXU4IGlu
dGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0K
PiAqY29ubmVjdG9yLA0KPiAtCQkJCWludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9oZGlzcGxheSwN
Cj4gLQkJCQlpbnQgbnVtX2pvaW5lZF9waXBlcykNCj4gK3N0YXRpYyBib29sDQo+ICtpbnRlbF9k
cF9kc2NfZ2V0X3NsaWNlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpj
b25uZWN0b3IsDQo+ICsJCQnCoMKgwqDCoMKgIGludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9oZGlz
cGxheSwNCj4gKwkJCcKgwqDCoMKgwqAgaW50IG51bV9qb2luZWRfcGlwZXMsDQo+ICsJCQnCoMKg
wqDCoMKgIHN0cnVjdCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnDQo+ICpjb25maWdfcmV0KQ0KPiDC
oHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5
KGNvbm5lY3Rvcik7DQo+IMKgCWludCBtaW5fc2xpY2VfY291bnQgPQ0KPiBAQCAtMTA1Nyw4ICsx
MDU5LDExIEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkJaWYgKG1vZGVfaGRpc3BsYXkgJSBz
bGljZXNfcGVyX2xpbmUpDQo+IMKgCQkJY29udGludWU7DQo+IMKgDQo+IC0JCWlmIChtaW5fc2xp
Y2VfY291bnQgPD0gc2xpY2VzX3Blcl9saW5lKQ0KPiAtCQkJcmV0dXJuIHNsaWNlc19wZXJfbGlu
ZTsNCj4gKwkJaWYgKG1pbl9zbGljZV9jb3VudCA8PSBzbGljZXNfcGVyX2xpbmUpIHsNCj4gKwkJ
CSpjb25maWdfcmV0ID0gY29uZmlnOw0KPiArDQo+ICsJCQlyZXR1cm4gdHJ1ZTsNCj4gKwkJfQ0K
PiDCoAl9DQo+IMKgDQo+IMKgCS8qIFByaW50IHNsaWNlIGNvdW50IDEsMiw0LC4uMjQgaWYgYml0
IzAsMSwzLC4uMjMgaXMgc2V0IGluDQo+IHRoZSBtYXNrLiAqLw0KPiBAQCAtMTA2OSw3ICsxMDc0
LDIxIEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkJwqDCoMKgIG1pbl9zbGljZV9jb3VudCwN
Cj4gwqAJCcKgwqDCoCAoaW50KUJJVFNfUEVSX1RZUEUoc2lua19zbGljZV9jb3VudF9tYXNrKSwN
Cj4gJnNpbmtfc2xpY2VfY291bnRfbWFzayk7DQo+IMKgDQo+IC0JcmV0dXJuIDA7DQo+ICsJcmV0
dXJuIGZhbHNlOw0KPiArfQ0KPiArDQo+ICt1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50
KGNvbnN0IHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gKwkJCQlpbnQg
bW9kZV9jbG9jaywgaW50IG1vZGVfaGRpc3BsYXksDQo+ICsJCQkJaW50IG51bV9qb2luZWRfcGlw
ZXMpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2RzY19zbGljZV9jb25maWcgY29uZmlnOw0KPiAr
DQo+ICsJaWYgKCFpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvbmZpZyhjb25uZWN0b3IsDQo+ICsJ
CQkJCcKgwqAgbW9kZV9jbG9jaywNCj4gbW9kZV9oZGlzcGxheSwNCj4gKwkJCQkJwqDCoCBudW1f
am9pbmVkX3BpcGVzLA0KPiAmY29uZmlnKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlyZXR1
cm4gaW50ZWxfZHNjX2xpbmVfc2xpY2VfY291bnQoJmNvbmZpZyk7DQo+IMKgfQ0KPiDCoA0KPiDC
oHN0YXRpYyBib29sIHNvdXJjZV9jYW5fb3V0cHV0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQoNCg==
