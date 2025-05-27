Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D7AC49E7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 10:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5550310E442;
	Tue, 27 May 2025 08:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGFEPF/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B1110E3F7;
 Tue, 27 May 2025 08:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748333249; x=1779869249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LEbMI8gTMBXVuxZWCPxAcckDpJAOYBK5gjdBvYoP6kA=;
 b=jGFEPF/7FsxmivZpZvWbe/6JWfAfx1XhvbQLEB98b7bDkon87QwsV5aO
 k12c4KWcsNaZ0TNyBVHUwh0mEtDmEO8pRc5ESF2ZfgsMfkTbETqHUNZ3r
 EHGbITPnBATlJVialVK0J15fk15p0F+zIlLVZ8/B9thmC3+8Uslm52EwK
 GF5WjI4OqV8vd8f2euobi+3PuxoMsheSts/OpIGwOdE6w2uoys/zMWWzK
 gUsgYRA8dbl+QiUv1f3LIlwrX9Y6NbfJ3zLkbGpf/UtLC+Z71DqAHNs1h
 EZxzZbPYJzRpzTIZOkuHlx3b+v/fK5l+O6bdwaGQDc/+yHCvYs8ajRmM8 A==;
X-CSE-ConnectionGUID: 1g/+Q10GTGOxxaSa5I+yMg==
X-CSE-MsgGUID: AtvE2yN6TqSGvFYxuYyKUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="53965999"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="53965999"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:07:29 -0700
X-CSE-ConnectionGUID: R/UNMqCTQDSLjgO9p+V9bA==
X-CSE-MsgGUID: dRvtxy3ASgWw1WZmsEmKEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="143061560"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 01:07:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 01:07:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 01:07:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.82) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 01:07:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YKpnBNPYIMAxkHsRXsTgY5SofVxYK35mNC/6m6tbI8/ZVAS5j/GW5kcwxIOsBxnEPfQcGurmFUgCjk+B6sovfLThBnO6Rol+YCCFSJgfXff1xr1RgOjsoEFCwbbLB+deq2axLHBpz1ygLc/xgLSUEH3JBA9A0Bof3W1Yukj2XZ/GlNHydQktJerhxAuSFpbb5vwff/ZkBrTB2vqth7xqfhH9u2BGm+X1vCHJSkpLg9fDcTH6ZThb9Dh+V9z//4jfgRkNNcjAlnCmeiKzsO46+rpouqWElUifpdt7H6KvYb9SJKQayfLGXySmVNXpK10qXjLRu9mXG3M3dVfGmjCnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LEbMI8gTMBXVuxZWCPxAcckDpJAOYBK5gjdBvYoP6kA=;
 b=FD1C8bNXKYQQsVzbMpTbMTmRsoyJs2qtwsNl20R7j27pI2mObUVRcWsWCHAMszQDGSdJ35l4OZm/x5KqAxfahK43+EuU/PKrPMS2xnCsk4HsQTqJYOIlVc1ouzTiUYmsj3GY5JNnubvGBYlgULEwP4568WsVm6z0nG0iCfoILHpEjbNvmoDW0RNZqbLZ8PV0vSM91oRv90xwCnvM9EZmxgh495wfPn/9hLo1QfotdaItB1693G5bbOKpyF+meGMi60lEsZqc74lCmpyLm5C7GFmgo0ZR522T9auKW9pNi1FTXwpJytrwtsIZ1rx2fjj+AuVCWDemEj9MnKZGCmXy0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB8048.namprd11.prod.outlook.com (2603:10b6:806:2fd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Tue, 27 May
 2025 08:07:23 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8769.022; Tue, 27 May 2025
 08:07:23 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: RE: [PATCH v2 3/3] drm/xe: stop including intel_display_{core,
 device}.h from xe_device_types.h
Thread-Topic: [PATCH v2 3/3] drm/xe: stop including intel_display_{core,
 device}.h from xe_device_types.h
Thread-Index: AQHbyv7S7F9uqoA+i0OemNniWqBPpbPmJq3w
Date: Tue, 27 May 2025 08:07:23 +0000
Message-ID: <SJ1PR11MB61290DADFE6991C7BCABD826B964A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1747907216.git.jani.nikula@intel.com>
 <a12918f4d404e2d6d4e963126ce96df01d5064f3.1747907216.git.jani.nikula@intel.com>
In-Reply-To: <a12918f4d404e2d6d4e963126ce96df01d5064f3.1747907216.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB8048:EE_
x-ms-office365-filtering-correlation-id: 4c2405ac-e7b2-49d4-75dc-08dd9cf58318
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZGdzYnlRdjFiL3lUWm5uSDNKKyt0Z29sVVVqelByaUU5VXpZWVBWOUkwbWVZ?=
 =?utf-8?B?QmJuVEZaQUJBVUpXdUVMSnRZc2NwWmlXN3hZL3prUlRQRjgvMmZOWUtsN1hR?=
 =?utf-8?B?eHpWd1A5K0xnTlFHdmdTdVBMSTRPVUVuMFdEQ0lSRzQrSWdZeWR4KzNSWGlq?=
 =?utf-8?B?Z09wTGZ0WVgya1ZPZEs0TDA1amxLSFRzNFU5TDlTT0dZZXo0VkJLMDRqa3Yv?=
 =?utf-8?B?SHR4TWhRU0xQV0VJQjNxTS8wTVYyczhJV1QxK3NMR1YyUFhwbXFFVXhNTXly?=
 =?utf-8?B?OFVkUzFGTGpPWUlEbFpXc2FRby91N0pLVXBlRE12a0w3VlZoN29tZ25rNFph?=
 =?utf-8?B?dE1GaTlxcHFHdGpyRlNEaHNheVR3ZjVkMWFrdTdscTRab0hNYmJNTXk0bzdt?=
 =?utf-8?B?TTJrdUZxeUpyc1NwVlR3eXZxTlZzSDlHaTQ1MmViOWViaXFabzJRRVFhSENF?=
 =?utf-8?B?YzlhRzZZOVV3THI4aGZaK0ZmQml6anJCM2gyWWZqT0xqT1huYjRmY1N5bS9U?=
 =?utf-8?B?S1BwTTQrNzEzZ24xS0hJWHZTRW14SkR0Zk9Lb3dlZjhLY1ltUkRaV3JRM1Bq?=
 =?utf-8?B?L2VueVFoS2U2bzlPdG80TURGcjlldkZneStOMmcvNGYvVmpuYXlXc1h6UWZw?=
 =?utf-8?B?eUNFMkpyWXJncnBuSDhDVHhFSTY5U1FpVHEzQzgzTGd1YysySDlGcnNyTWFs?=
 =?utf-8?B?SjdqWjhscXFpUGtldXNWYlAxbmRzcUpmUkRzTk5uWE5xRFF3WHJyN3pZVk9P?=
 =?utf-8?B?SjdGY3hIeU5WNW1rRCtXVkpJYzZodGtlOUtuUE0yWDJWcDNYR0xEdzlFL2pD?=
 =?utf-8?B?V0V1Q3phTCthRFBmSEhpdU9zNXBFN2dPVlJEd2pPNUs0c09ndDQrUlBINC9E?=
 =?utf-8?B?WjJzcnViVExmdnI0Vk9ra2JuSzUrblJJQWtyTVVmb3J1T2FScUJuSCs5T0lJ?=
 =?utf-8?B?blNSTHpTay9MK1doNG8xWlJFVnhTclRMOUxLRkh2dzdRQnlROExPSElxWndn?=
 =?utf-8?B?T1ZEandTdW5sTmlzcW5CMXA2OVlGejZaUGhpcm9BQTUvQ3AxdjZ0dW9EMFZ0?=
 =?utf-8?B?bm5KVjIreEtaVkdkS3dOdk1aMTZUTCtrcUsrM0Y1MCtYSVh0UndMWkg4ZE1E?=
 =?utf-8?B?TytSQ0tJdGwrQURDTWwvaCs0VjZIVXhUOThLMFJadE1QOGZCMmtPN0lodEMy?=
 =?utf-8?B?dlBEYnFPSGRkYnFSSW95LzgwbUl6ckhlWktSc3orMFcwY2pLZzZIZmc1Visv?=
 =?utf-8?B?M1lqNU5JYnNVLzNtd0ZLZnB0NkFENWxxemFsTkxGa2RXSmpabmxRd3I5c3lX?=
 =?utf-8?B?MU90NU93WjE0Ym5QekV4TGpDVXRWL1hvZ1Rmc3ZTSGdoNDdzajJqU1NIZ1RM?=
 =?utf-8?B?NnI4S1hOc3lFanRnTWhGWVV3MnlFMEJ5b0RFMDVFQ1RsdHNQaHdRWlpEUDlH?=
 =?utf-8?B?MGhXNEVCT3hzYWExaHZaUFlqWExiMXpna0kxQTRHcndUc2w1aTFYZkZRV0xk?=
 =?utf-8?B?SjhmSGZlSDY0OVVLNWdhbWcvdXFpeUpmeHJWdDVmYXRLcUJCL1BXMEZGWVRw?=
 =?utf-8?B?anhtYVdMQTYwQTlMTDlhZ2tVNkZCaUlzMTUrbVlIUVBtaFlnRnVKelAvek93?=
 =?utf-8?B?UldDUzFKWXg4ajhUZW9ydXVlTE5oaTdpcmIwZ3Y3NzlvNFFIc2tzS0kzOFo3?=
 =?utf-8?B?QytXTEc1bGdsaloxSVZXeEdzbUlLT01Sc2FJMzhkaFhsc1FkV2dFVWVTdWx3?=
 =?utf-8?B?Mnk0djdFejRIZ0VxU0lTRFJnNCtZSFdOeXBkL1NuUmNmeWZqNXM5VWlXTTQ2?=
 =?utf-8?B?cnh3d1lHVnQxTjB0L1ZUSmFidVdUbjBoUkVYdjQ1Yy9IVzVKdEZkdlhYQnJj?=
 =?utf-8?B?REVpeERFUXcrSGQ5dFRyV0JKY0xhTTcvVTcwSlUyOUlDTGlFc2k3K3paOW94?=
 =?utf-8?B?SE5WNnJBUnhVanQ0OWtsMFpIa0hZN25TcnJCdXNweGRJOXVCaXBORDhnWDJX?=
 =?utf-8?B?cmZzYzhZMWVBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0NsMzM4UHZ6SytmRzFDcVhDblJJQWROcmV2VHc1N1FzT2JsMXhwVStMY2oz?=
 =?utf-8?B?NW5ycko4V2RQTzJ6T3dEYTMwN1Rma2Z0U0NLT2NyMkpmUmZTQnArRWlrU2hE?=
 =?utf-8?B?dDNYaDRySm0vVXZueHB2TVRxbkMyM2pzYk43cTJsb0hVT1VEUG9EQ2RDalV5?=
 =?utf-8?B?RStEM2x6dHVlOUwxaWdFNFEyZFF3NitMTHhJYUNEdnZDZ0twTENHaEtyc21r?=
 =?utf-8?B?VWFqaDhsaGJKbS91RkdHOUNvTjBQOUJabnJkTWlpWlNhZUs4SSs3NnhKTFJD?=
 =?utf-8?B?M2o4RFFtYU5MOFlZbFMzL0V1WmRENEhYUzNLMkMzd09mdlUxMnRtUWdtcTM1?=
 =?utf-8?B?cm9vejRQZ2dPNmdwc3VHWmJ6RVVqTUhYL2QrVmdtS0pSM091RkkrakdOYi96?=
 =?utf-8?B?T0RkbjZpWk53YzlOeUFnV3FacFd1OGNLWmhLWGxWUm1UbXdPSHlNZkt5Tm5v?=
 =?utf-8?B?bUpsajM3ejRLMGdZTG1xUFZGZmsvdkVvY1Fnc2ZmcEJ0VUozdWpIWGhOMTIy?=
 =?utf-8?B?T0NtQmh6WnhxMlZpV1F6QUIvVE1aUUxNYWNnZ3lYQVhtYWpVeGVPYStMSDFz?=
 =?utf-8?B?cHMwakdnbUFEc2xXWEhpY0x6MW9FWU9YY0hnc0FuMm5FRzlWQnp4djNqTFV1?=
 =?utf-8?B?aWpYdUgvQ2NSbmxhbVo4Nm4xMnFnNHc1NVE0MWFqRW01SlgwR2YyK3o2dC8w?=
 =?utf-8?B?REhJRXo0My9nWUtFSFM1VHFoaFczTjFLTFpoWGJjUXB1VDA1VDdNQ3hUMzk4?=
 =?utf-8?B?UE11dWgwc1hzVFB3S2lnSVVaMTNWTWJ1L3NrckFBSTg3eENUeHd2U2wvQ0xD?=
 =?utf-8?B?ajd4NXpkWjRFKzVrZVRTVm9wRlJlWitvdzEyYTdENXpBYmVCOU1ySkVFMU0z?=
 =?utf-8?B?WGcxSFFmWXpHTHdxa1JkcDNMY0FQYkNzenpzYlBKK1IvY0J3YzVvclAzdWV3?=
 =?utf-8?B?Y0J6SWdjbXM4RXRjVXp5WEQ1TlBVeDNLYXA3Vnd4cTlJTWFDYUdId1BGMFJG?=
 =?utf-8?B?bGczdnN5c2VHYmxQUTFOLzVPN2o3UkxpdjVMV2VJb01lSmR3WFJreE5HSEhh?=
 =?utf-8?B?MGI5Q0Q1dHRQd0hUMFFPM3p0ejJWaTM2WVJtWWhGMEVGYlYrV2paQ05qc0JL?=
 =?utf-8?B?b2R5dTd5V1lSMWtLckQ0cC9VQ2pXeUlvby82ZCswaVJXdUZ3ZG95YXY3ZU5V?=
 =?utf-8?B?Sk5DUXFkL3duclhYS090WkFlNnplL24ycE9CVktBNFRRMzlsZDlqanE3VWxn?=
 =?utf-8?B?RHlDYkx1cjlpdGIxRnFITTNUYTZHSWxOVkd2SzhGWHlTZjQ1UEZ4U1Y1Vm9h?=
 =?utf-8?B?a2lYeHdUUHRVejQvSWpoakNqSjZaM2FuaDN2Zm1zZ2NPbXRKbFpFbUs5SHUr?=
 =?utf-8?B?NEczTUFhSzIyK2tZalFGYmhmK0ttdFBZUDJUckd3WWVrYlpiWUxkOVRCd1hv?=
 =?utf-8?B?VmlQWStFdDRESElDK3VwdVBraU1UVW1CN3ozR3Q2SklUeXpBQk9INXN1QlIy?=
 =?utf-8?B?RWRiczVkSmpzUUF2T2N3TVRtS0t0KzdtQWw0dW55d2lkMTRDdTJNN1pYNzNQ?=
 =?utf-8?B?TmxmbFd5c2lWSktUbm9MbzVaOWJLMklqc3lZdTNTTk9EMlYwb3VQQUE3TTJn?=
 =?utf-8?B?cjFSSFNnamFscmo3UXZkVmllNUtMNXFlbDFoZVdISyt2VzhoZ0h4MXdlenVG?=
 =?utf-8?B?WlNQZ1Nvbnc3emJ1QzlpY0lLa2pUM2ZIUnFHWWJJYVE1bFUvOWZqYnI3eXNN?=
 =?utf-8?B?NWc5Uk1LREZUMHBDeTZOV1drM2lSS1N0aEZsY09YNC9PMUxqNytEbzZqSFpz?=
 =?utf-8?B?aDA2U3VlRUxzTGtCQVk1d1Z4T3I1SElkUlRVZHFpdWNnZjZvb1JLcm5lWkhs?=
 =?utf-8?B?RXhQTzU3c3F0a3p4ZGpkeEorRDdSNmFQVHhyV09KRWNIeW1LKzliRkFyRWk1?=
 =?utf-8?B?UEVWK1ZYd2wySnAzS2pQa2dJNkluNnV1WFZ0QWtXVmFad1c0RHkxUjJwZC9j?=
 =?utf-8?B?RTdFYzNTWnd3aFFmbkw1M3ArYktDVnVjZUNFL2RCalBnbytNeFZ5cmVJUTZZ?=
 =?utf-8?B?MXdPcEQrMldESlprZjYwdVpPdWFVdFVTQXRDRUpQVzk0djNIK2dPanJqVi9y?=
 =?utf-8?B?a2RXM0NpTDBRa3loMFRCazJsa01hK083R2YybnhzbjZaNFMyUjJodHF1WE5j?=
 =?utf-8?B?SGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c2405ac-e7b2-49d4-75dc-08dd9cf58318
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 08:07:23.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g0aVf7HICXoIzks4nGn6BeRND8ia8jQ/oq7LOgI76L6WPLYwhrwpbc26CTttcIl/1Y/PlRIO5v8/sM/bQL2PNy6PBtxWH0wNW6cp+Ebj/+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8048
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pDQo+
IE5pa3VsYQ0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDIyLCAyMDI1IDM6MTkgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBEZSBNYXJj
aGksIEx1Y2FzDQo+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+OyBWaXZpLCBSb2RyaWdvIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMy8zXSBkcm0veGU6
IHN0b3AgaW5jbHVkaW5nIGludGVsX2Rpc3BsYXlfe2NvcmUsIGRldmljZX0uaA0KPiBmcm9tIHhl
X2RldmljZV90eXBlcy5oDQo+IA0KPiBNYWtlIHhlLT5kaXNwbGF5IHBvaW50ZXIgb3BhcXVlIHRv
IG1vc3Qgb2YgY29yZSB4ZSBkcml2ZXIuIEEgZmV3IHBsYWNlcyBub3cNCj4gbmVlZCBleHBsaWNp
dCBpbmNsdWRlIG9mIGludGVsX2Rpc3BsYXlfY29yZS5oLg0KPiANCj4gV2l0aCB0aGlzIGRlcGVu
ZGVuY3kgYnJva2VuLCBjaGFuZ2VzIGluIGRpc3BsYXkgc2hvdWxkIGNhdXNlIHJhZGljYWxseSBs
ZXNzDQo+IHJlY29tcGlsYXRpb24gb2YgeGUuDQo+IA0KDQpMR1RNDQoNCg0KUmV2aWV3ZWQtYnk6
IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4N
Cg0KDQoNCj4gQWNrZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMg
ICB8IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheS5jICAgICAg
IHwgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5X3JwbS5jICAg
fCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXlfd2EuYyAgICB8
IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2ZiX3Bpbi5jICAgICAgICB8
IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jIHwg
MSArDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV90ZGYuYyAgICAgICAgICAgfCA0
ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9kZXZpY2VfdHlwZXMuaCAgICAgICAgICB8
IDYgKy0tLS0tDQo+ICA4IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS9pbnRl
bF9mYmRldl9mYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJkZXZf
ZmIuYw0KPiBpbmRleCBlODE5MTU2MmQxMjIuLmIyOGE5NGRmODI0ZiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0veGUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5jDQo+IEBAIC01LDYgKzUsNyBA
QA0KPiANCj4gICNpbmNsdWRlIDxkcm0vZHJtX2ZiX2hlbHBlci5oPg0KPiANCj4gKyNpbmNsdWRl
ICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVz
LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZmIuaCINCj4gICNpbmNsdWRlICJpbnRlbF9mYmRldl9m
Yi5oIg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxh
eS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheS5jDQo+IGluZGV4
IGRiN2VmODczN2UxZC4uM2Y5MmJmNTE4MTNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rp
c3BsYXkveGVfZGlzcGxheS5jDQo+IEBAIC0yMCw2ICsyMCw3IEBADQo+ICAjaW5jbHVkZSAiaW50
ZWxfYXVkaW8uaCINCj4gICNpbmNsdWRlICJpbnRlbF9idy5oIg0KPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXkuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gICNpbmNs
dWRlICJpbnRlbF9kaXNwbGF5X2RyaXZlci5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlf
aXJxLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheV9ycG0uYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXlfcnBtLmMNCj4gaW5kZXggZWY3NmVmZTQy
ZTlmLi4zODI1Mzc2ZTk4Y2MgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNw
bGF5L3hlX2Rpc3BsYXlfcnBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkv
eGVfZGlzcGxheV9ycG0uYw0KPiBAQCAtMSw2ICsxLDcgQEANCj4gIC8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQNCj4gIC8qIENvcHlyaWdodCDCqSAyMDI1IEludGVsIENvcnBvcmF0aW9u
ICovDQo+IA0KPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29yZS5oIg0KPiAgI2luY2x1ZGUg
ImludGVsX2Rpc3BsYXlfcnBtLmgiDQo+ICAjaW5jbHVkZSAieGVfZGV2aWNlLmgiDQo+ICAjaW5j
bHVkZSAieGVfZGV2aWNlX3R5cGVzLmgiDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
eGUvZGlzcGxheS94ZV9kaXNwbGF5X3dhLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxh
eS94ZV9kaXNwbGF5X3dhLmMNCj4gaW5kZXggMjkzM2NhOTdkNjczLi42OGQxMzg3ZDgxYTAgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXlfd2EuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5X3dhLmMNCj4gQEAg
LTMsOCArMyw4IEBADQo+ICAgKiBDb3B5cmlnaHQgwqkgMjAyNCBJbnRlbCBDb3Jwb3JhdGlvbg0K
PiAgICovDQo+IA0KPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29yZS5oIg0KPiAgI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfd2EuaCINCj4gLQ0KPiAgI2luY2x1ZGUgInhlX2RldmljZS5oIg0K
PiAgI2luY2x1ZGUgInhlX3dhLmgiDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3hlL2Rpc3BsYXkveGVfZmJfcGluLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94
ZV9mYl9waW4uYw0KPiBpbmRleCBjMmI0YmU3MmY3YTAuLjQ2MWVjZGZkYjc0MiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZmJfcGluLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZmJfcGluLmMNCj4gQEAgLTYsNiArNiw3IEBADQo+
ICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm8uaD4NCj4gDQo+ICAjaW5jbHVkZSAiaTkxNV92bWEu
aCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gICNpbmNsdWRlICJpbnRl
bF9kaXNwbGF5X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHB0LmgiDQo+ICAjaW5jbHVk
ZSAiaW50ZWxfZmIuaCINCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L3hlX3BsYW5lX2luaXRpYWwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3Bs
YW5lX2luaXRpYWwuYw0KPiBpbmRleCA2NTAyYjgyNzQxNzMuLmZhZGE2Zjg3N2JjYSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3BsYW5lX2luaXRpYWwuYw0KPiBA
QCAtMTQsNiArMTQsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2F0b21pY19wbGFuZS5oIg0KPiAg
I2luY2x1ZGUgImludGVsX2NydGMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiDQo+
ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb3JlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV90eXBlcy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2ZiLmgiDQo+ICAjaW5jbHVkZSAiaW50
ZWxfZmJfcGluLmgiDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94
ZV90ZGYuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3RkZi5jDQo+IGluZGV4
IDJhN2ZjY2JlYjFkNS4uNzhiZGE0YzQ3ODc0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0veGUvZGlzcGxheS94ZV90ZGYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxh
eS94ZV90ZGYuYw0KPiBAQCAtMyw5ICszLDkgQEANCj4gICAqIENvcHlyaWdodCDCqSAyMDI0IElu
dGVsIENvcnBvcmF0aW9uDQo+ICAgKi8NCj4gDQo+IC0jaW5jbHVkZSAieGVfZGV2aWNlLmgiDQo+
IC0jaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiArI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfY29yZS5oIg0KPiAgI2luY2x1ZGUgImludGVsX3RkZi5oIg0KPiArI2luY2x1ZGUgInhl
X2RldmljZS5oIg0KPiANCj4gIHZvaWQgaW50ZWxfdGRfZmx1c2goc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkpICB7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZGV2
aWNlX3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZGV2aWNlX3R5cGVzLmgNCj4g
aW5kZXggNzY1OTIyMjcwM2QyLi4wNDgyZTAwZTU4ZGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9kZXZpY2VfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUv
eGVfZGV2aWNlX3R5cGVzLmgNCj4gQEAgLTMwLDExICszMCw3IEBADQo+ICAjZGVmaW5lIFRFU1Rf
Vk1fT1BTX0VSUk9SDQo+ICAjZW5kaWYNCj4gDQo+IC0jaWYgSVNfRU5BQkxFRChDT05GSUdfRFJN
X1hFX0RJU1BMQVkpDQo+IC0jaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb3JlLmgiDQo+IC0jaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV9kZXZpY2UuaCINCj4gLSNlbmRpZg0KPiAtDQo+ICtzdHJ1Y3Qg
aW50ZWxfZGlzcGxheTsNCj4gIHN0cnVjdCB4ZV9nZ3R0Ow0KPiAgc3RydWN0IHhlX3BhdF9vcHM7
DQo+ICBzdHJ1Y3QgeGVfcHhwOw0KPiAtLQ0KPiAyLjM5LjUNCg0K
