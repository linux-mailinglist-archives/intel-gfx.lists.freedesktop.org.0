Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021F3B59150
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FE110E70D;
	Tue, 16 Sep 2025 08:52:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZfydJp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D6C10E70D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 08:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758012767; x=1789548767;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Xs+9K1g37qqLHhG+JvmiWH3j+H0stMazIN06/viPk5g=;
 b=mZfydJp/pAPnWdKm0JZsuA46C7r1s+2G1Dp4yO+O4k4irxKqz7uHK5Xs
 fDsokF4zz4+axnXaWKfIYS9dXY235zBj+NozeADKx5e8yyd34UQuLFPB7
 sRCD3nY9sFI/CEj0h8UPw90ON65Wwi7xF4ypITV3Kx4XfQ4tyjfdzJz3s
 jOeTeZQrQfK9bsEW9QJsVswRuK1j0Vy1Qxvu/AIhCkTDpAY4nHZfV0sAV
 p63eG9YnNF6BTi1EzjQOzauD+f3OAkbJ8UBK7DV0QdpNo3OzVwOhP8j0T
 lCGJosAdFXzUsPfY/2Rep8m4Fflh4FYf7kcdADV95vFGTOsXTtSkCVPc4 A==;
X-CSE-ConnectionGUID: ZSf4abGMQQGtAj5J2pr4uw==
X-CSE-MsgGUID: KXZZONm9Q7CCesqISO4R2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="70534045"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="70534045"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 01:52:47 -0700
X-CSE-ConnectionGUID: prYd1ADOSregHaRfjPiBbw==
X-CSE-MsgGUID: Y3yVqceFRFKUD2HfL5Ecjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174962280"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 01:52:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 01:52:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 01:52:45 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 01:52:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ict7MXim3LmfgpyhpszkX9Fd/4ze2SsgXETl58bA1m9H60lHlsD4sw/xfYL60pE87bU0hJV6sI61Mn7Tc0yPVNSpImU1WS3w7k76+NPI2qh7sWL1XVR8e3IFHaYuQ6QBeW7osF2kGF6woxMPYpVfjy6B+ei24AceEeUbbiXHKqxP99lynDFeKI32H1Qa7ao05mCEZrhH4gwFGfB3LdDqj5J8NQKpMGPSqCXwq8p3LyxKcz8HumQcsWnmjWqz9H+5sqlbl0XtoxUk931fBIzieHVJFQEwE7nRE3++MX8H8MST37787ZUNAulbqdAI7AbQgZRjVhMcWsy9xoe/YIedlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xs+9K1g37qqLHhG+JvmiWH3j+H0stMazIN06/viPk5g=;
 b=FOQgkXulWbnFXigCWAcDgFqPLLebLwbs+8rjzvj+gfmoFkALXJD9nKTQC/MzcyR3ujSJTLQB88snq/KRzT6y935m5DOQdkeFXhMXT5fht3bPuuuUAo9z0FJht3kT56zyjJudn2Df+mqBTvANGjL/KJ1uDC0Y1CTjF/0HxWJhcomBQFJMFKtYSvXOO4Cr6kVwxlYuDsUP64PAduMTc47GbWm/kxc+0DTpiHOg+bV0u0Mu5cwtyTDEg84/rKrcVMq/fhsMYFDgt1pWtuPRoAAVbpPxtgmMHRlcZFqE9dt+FWYDgXpeYMLqIE2lw90UtUgNrcXsVvRfQRQr4uRJue0TXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.23; Tue, 16 Sep 2025 08:52:43 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 08:52:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/wm: clarify watermark ops with comments
Thread-Topic: [PATCH 1/6] drm/i915/wm: clarify watermark ops with comments
Thread-Index: AQHcIJOJBiCyiVXd0E6pZe1/HPJktLSVjVwA
Date: Tue, 16 Sep 2025 08:52:42 +0000
Message-ID: <14f52d0f7836585e71eac2a1e7d1e8771cdd16d1.camel@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-2-luciano.coelho@intel.com>
In-Reply-To: <20250908073734.1180687-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM3PR11MB8681:EE_
x-ms-office365-filtering-correlation-id: 03c69f14-797d-4104-801f-08ddf4fe6641
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YmRJYmtxWjR1OVN3RXgzbW40VGtKMm5FZ0YxekM4bEJDS2ZURXJjR2xXcjNa?=
 =?utf-8?B?aENuUi9TUXNqZ2ZRQUdpckw5Ti84T1JrdGZtZ3F1bkdaZko4cUxDWnZnVlJX?=
 =?utf-8?B?eTBkNDNudUYrTGlSb3Y0Sm9QQ1pYVVpVYnEzUUJhdWQ2d2FYa29vMDJNdC9R?=
 =?utf-8?B?NWVzMGZHenNvclozUjZjaUY4WmEzZTBZU2tKL1ZpOGdXTS9aTWQzRFcydHI5?=
 =?utf-8?B?VUE0bDRtSU44Mk0zZXdDZnVRdjJsbnpaSHNGOFA5WDZZN2dVcGMva3p4MDN3?=
 =?utf-8?B?K2tRR1BpYnNxV0FzaGVFZHNTS3dnayt1TTV6T0J0UlVMckkrMVJISTVCZTZm?=
 =?utf-8?B?cGxuQU14NzhzYmxBTU52UTdWV1hzdUxYOE96Q0QrdkdxanpRd2h6cG1SdVFl?=
 =?utf-8?B?RnBaWWJrKzl6c0sraGxXc1luWVF1OEwwcWNvRGFoY0ZUTFJsUUR1dFUzSmZq?=
 =?utf-8?B?blpBZ1VNTDRLVm9sVVNnbG9Vc01HR2hnbDBaV04yemxXeTFqWkJpUEFrUmpR?=
 =?utf-8?B?UlZPZHFEWkpqYmVCaFc5OTZ4MFFJTmdFSlFranhVL2IzakxidG1wZDZlcnBU?=
 =?utf-8?B?Y1VHQkMxU1JNdkdIWnowNkxjejE1bmtKdVoxckMvZzNmVk1YdEVCempQNUE2?=
 =?utf-8?B?Ui9TZnZOWmV5bSt2MC9VWkJsWE9FRDdqbmdtTnhWaHpoczhSMCtlS0dVVXBR?=
 =?utf-8?B?OFNYd3o0eUdoZGJGWDNRbzRITlMzZkpRRkhuU2E4SUlzTHJ6WkFyVUxDdTFi?=
 =?utf-8?B?OXU5eFNYcjhDS1cvL2l2cC9tYlZyUUZjZ3ZBN2hqbGd4ZDFGYjZ6N1IzTzZh?=
 =?utf-8?B?Zk9PYUZsUVFrS2cvZjd1T2Q0ZzZGZ0VyMFdQbU9pNVdCdXJkdEFLdkIwNGxD?=
 =?utf-8?B?RG43aGpXMTdqRjhiVFR6UkdJejh4ajVENm9FTG9kUFRxVXJXdDhUL0JVT3hj?=
 =?utf-8?B?ZHA4eUV1Wjh1L05WcGxSZnE2VWIxNEw4SVhTZHd6UWRxYVFPOEpaRFJTYWNI?=
 =?utf-8?B?MzVJU2x6em5nbmVWTnpFenNEWFpUcS9Ia05BdGtIN1I0SEtDVzhoTDYzNy9R?=
 =?utf-8?B?MjFXWloraHU3ZjRDQlZzSTlna25nZmxxZXhrWnRnVDF3R05lL2pUZHNQU0pI?=
 =?utf-8?B?blhqcXBvdnRzQ0RwL1V0T1FvWE1sc2dPc0VmTm9weUQ0ZUZoNTZ3U2pNcVVt?=
 =?utf-8?B?TVdBVVBZZ3E3ZElucXdxYjNtMWlNREVOUmVxS0VZQzgzRnFiV0o4OElvUExk?=
 =?utf-8?B?Y2o3Z0ZxL1htUTBkb05iSDdIZUJUbkc3elJLZWxsZmhYVEpjYzVmM1g5QlIy?=
 =?utf-8?B?aVFGWnZoVU5ydHBRK2pLMitXeTZjbWx5Q0ZoRXE1VFBMM0Z2YnRTSmh4cFJT?=
 =?utf-8?B?U29QNFIzbnNqQ3dTaG92RC9lL2kveWpBVmo4ekhnT3NKb0dqUXhJQjZnSXhJ?=
 =?utf-8?B?M2F5SnROMGlIZWk2bGJFU1ZhZEZHWXR0ZmpaNVBPVFNTS1JWOXlNK1dYNUxp?=
 =?utf-8?B?SFNQRmhnYk9DZXcrVnRVWmhVTzVBVHUxdmVKR2Uyb01VeDhyQk5Da2VDam5U?=
 =?utf-8?B?VmJyUUlzOUh0UjVscHkwVVNUdDBZVkJtY1JOYlRsN0ZTSmQrR1JrNkk2ekJh?=
 =?utf-8?B?R2dLdE1JNm5wL3U1cndrY3NLU1R4N1hNbk40ekJReWo2eksxd0NxRStxUFFB?=
 =?utf-8?B?OWs5OGdRbXB0SjdjcVFhMCtkQWZNTDBrSGpHbFFJcVpyc1RkVHZZSld3QXQ5?=
 =?utf-8?B?WU1xUU9QelJSMWF0TWNGWjJpalJ0RHZNZmduVk0yMmE1L1VncFRtR0REam1H?=
 =?utf-8?B?d1ZUMUhBbmtwOHpERUJBRE4raFJkSEV2WHFsZUptZmljSlBnblcyNVVZWjNZ?=
 =?utf-8?B?cDROejQ0N1E0eVlsb3Y0QnpqL08xOE1hcDYzOVQwY2lMR053eTR4Q0dwZVJ6?=
 =?utf-8?B?TS9nKzgwTUxyOEppRWtKQWRjWXFuMGxYbVBvZ3VPWGE2cFhLTjdFVE1kQWpr?=
 =?utf-8?Q?8Agu6IKacD6hUR7faRbCWrAM//ll/c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STcwb0FWZlUrTVB1dUtYWXZkVjcwQ3d2MXhtc2xqNWQ0dHR1cVZuVXg5SzBM?=
 =?utf-8?B?enJMSHVuWXBMSUZDS1o4Zm9qV2pkYXNuL3pUM1VpTkVEd0FKeXhNV3Jwek13?=
 =?utf-8?B?a2VpdGFFY2tDQStIZXcxVGZvMkZWcGI3OFdQSHRqamp3NVZ0YjFnY1AwcmE5?=
 =?utf-8?B?bW01QVErTUF5d3F1a3JuZkFzQS9EZ2JJbTBtUVoyUkdhbnJDT1NSS0VJZE5F?=
 =?utf-8?B?T1d0SDQ4akJ5SFNGaUcrOGNXNnVzdHZZMXFINzZlemdDWEJVUkc4dWZmTm1T?=
 =?utf-8?B?TGlSSDQ2Z1JNMmxEZHQvT1lzOTJEUWFFUVVqYS9jTWd5dzhsYUFnbVI0akVT?=
 =?utf-8?B?VmgyTnJNRjRQN1RsRGpCM0JJZzIyVkZaQ2hQYzB5MWxlV25rci9HeXRBeVcz?=
 =?utf-8?B?VFNqUlVzc1o1WVEvaE5mOElLdXlldVhGSkFmQ2h6WWl6MitaYlZCYmJOblY3?=
 =?utf-8?B?aTdXYU00RUowODFPYUlMUWcrVVpKaGpDeW5OYmQ2Szh0eHNETVZocjExenRS?=
 =?utf-8?B?c3dTTXBaNFRGM09FMVlNUHUyS2dxN1lxZ01YUnhVY0pCQzBlazVmV3MxSDRy?=
 =?utf-8?B?RVVKWDdvV25qRkYremZ5L2JhazRtZk1zZmtFcFE0YUZoSnpHZU8wRWF2TWp0?=
 =?utf-8?B?clIrRWh4cUNwQkFhWkNad2tvcElUQVFXbGJsLzhmN0FPWk13WWJtUmw0S3Bz?=
 =?utf-8?B?M1RXNDFnMVFpcUxSNTQxYmxiNUQwTUV4MXZFZUkzTXdSZE5OamhvYjZoRDg3?=
 =?utf-8?B?OVRwQzNZY3E5UWZhWXFMcnlGc29jVHBlMU0yTXJSaUMxRjN5THZwOE1GMFRQ?=
 =?utf-8?B?V3duK29iZVZOdllqQXN3SWJZMDljcGlYRllaQkpvM1g4eGp1QW1TMGwwVndU?=
 =?utf-8?B?SDhNS1E5eGhmSXJWZm41ZGpOTnYxNTZpdFo4YjExS01qSFgwRjhLNjczenE0?=
 =?utf-8?B?d2NuTmRsS1dSWlhMaHpXM2tLbGllQ1VUVmljM1gwc3Q0YUdzWElVS1YrOUZy?=
 =?utf-8?B?R040ck4rdm5aZ1JSbHZPeloxNUVrOWxPL2pTUlZzQ2VneTd4c3hzTitEV3Vt?=
 =?utf-8?B?cms1Q3RkQTV1SGZ5ekVydDQ5QzRtdjFsVjZzMUpHLyt1TmRjRWdHRS9taEFl?=
 =?utf-8?B?d1dteExLczZxNm81aHZYcWhXTTdZWE10R3RlWEVjUzVZbm5uU0lkaDI4ekN1?=
 =?utf-8?B?YUt0SFo2NFVEWTdsZDBsU2FuYncxdTJib3QzVkJzVThVSk80N09MOTBRWm4y?=
 =?utf-8?B?b01laTNPM3I5WjJsMDV6QVh5RE5xWWplYXZrMEg0OXRrdTNhdGFqb29ic2wx?=
 =?utf-8?B?ZGRlejJaUWF0MmtzV0F3eVhCZFpNbExHbjNXRkkrdFZXNzBLb1AwRjV5OFZ0?=
 =?utf-8?B?RkwyelJ2YlNrKzhtdEJ2eHpoZHgvUDFFZlVkYzk3VkRDdHNaZHgzMkFVdjFD?=
 =?utf-8?B?NzhTTU5oMHltSVo0Y0hoUDg0WVJaTzRsV0tRRlNVbXRBNmJCWlZtM3RjK2Rm?=
 =?utf-8?B?ZEs1bG9OenljMmNEV0NUZlU5YmVKcjhyNXNDSStYRnA3RzQreGhaVGhtbUU3?=
 =?utf-8?B?TUZVUEd2RkZhKzZhd1F5T1ZsVXpDWjRyQ3lFQk9YN21jVXNObDdmQi9YWUNn?=
 =?utf-8?B?dVhSZmJkSTd0UzhPeU0rUlRwZmVTNXhZSmFTNkRlUG5aWTZCc2NqdWxRbkFk?=
 =?utf-8?B?Y1E1SURQUmVuNFcrbWxITWpQWlZxdExoV2hZZUgwcEdwNGFVWUVUS1Y4OEhY?=
 =?utf-8?B?ZXBIVWtIN3lKT2RmTmgxY0hQQVpqYmxrdkpYUUFIclk3RDZ0U1hyY3NWV0Yv?=
 =?utf-8?B?S2tuQzlIVVY0SENGMWJEMHU0dDRFQUpENUlJWlkzSlpyVVoxTUw0eUUyaG1Z?=
 =?utf-8?B?UUFZR2dLM1lYWTBCUXdERElDME9CSzAxNWNCa0dqSkNrclpFSTVDRStpS2FU?=
 =?utf-8?B?SWJ0ZFlldkFRVHR0eDZLUG5VU0JsekNGUlJrZlJIWThtV1RHYnl0dmNzTFdB?=
 =?utf-8?B?dXdxQm53T29QcGErNUhISnVsNkc2b2RJais0LzJHUjl6M1hlWG5PUXE1M3Zv?=
 =?utf-8?B?VTM0S0VPQTNPME9JMnI5Y0toSFNyMDB0bkU1N2h2T3RVYUcrZzd2SGxHOUlC?=
 =?utf-8?B?aE5ibnQ5YVovTG50WldQVzlvQUlueFNTV0ZuUk5FSk1OdjNLNVhtcFBnNWU2?=
 =?utf-8?Q?vppby/IcSX8OcSQmn7q/5x8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3237B7424EE3B74C963CB2C9923A85DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03c69f14-797d-4104-801f-08ddf4fe6641
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 08:52:43.0389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2RGl+81DueYYhS+WJXTvlVqsg7yq/RLYGnkk3XhIEQS2V64sQ/wTN8qJJQ4+CNWgLuIvx+iF/Ph/MfJ079azyi7ulcwiae9TSRcujb/29co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
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

T24gTW9uLCAyMDI1LTA5LTA4IGF0IDEwOjM1ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
U29tZSBvZiB0aGUgb3BzIGluIHN0cnVjdCBpbnRlbF93bV9mdW5jcyBhcmUgdXNlZCBvbmx5IGZv
ciBsZWdhY3kNCj4gd2F0ZXJtYXJrIG1hbmFnZW1lbnQsIHdoaWxlIG90aGVycyBhcmUgb25seSBm
b3IgU0tMKyBvciBib3RoLsKgIENsYXJpZnkNCj4gdGhhdCBpbiB0aGUgc3RydWN0IGRlZmluaXRp
b24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50
ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfY29yZS5oIHwgNiArKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KDQpIaSBMdWNhLA0KDQpJIGFtIG5vdCBzdXJlIGlmIHRo
ZXNlIGNvbW1lbnRzIGJ5IGl0c2VsZiBoZWxwIGluIGFueSB1bmRlcnN0YW5kaW5nIG9mIHRoZSB3
bSBoYW5kbGluZyBjb2RlIGJldHRlciAtDQpyYXRoZXIgdGhhbiBicm93c2luZyB0aHJvdWdoIHRo
ZSBjb2RlISBJTU8sIHByb2JhYmx5IHlvdSBuZWVkIHRvIGhhdmUgYml0IGJpZ2dlciBleHBsYW5h
dGlvbiBvZiB0aGlzDQoic3RydWN0IGludGVsX3dtX2Z1bmNzIiBhbmQgdGhlIHNwbGl0IG9mIGxl
Z2FjeS9TS0wrIHVzYWdlIC0gYmVmb3JlIHRoZXNlIGNvbW1lbnRzISANCg0KQlINClZpbm9kDQoN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
Y29yZS5oDQo+IGluZGV4IDhjMjI2NDA2YzVjZC4uOTM4OTcxNTkxNDcwIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4g
QEAgLTc4LDcgKzc4LDcgQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfZnVuY3Mgew0KPiDCoA0KPiDC
oC8qIGZ1bmN0aW9ucyB1c2VkIGZvciB3YXRlcm1hcmsgY2FsY3MgZm9yIGRpc3BsYXkuICovDQo+
IMKgc3RydWN0IGludGVsX3dtX2Z1bmNzIHsNCj4gLQkvKiB1cGRhdGVfd20gaXMgZm9yIGxlZ2Fj
eSB3bSBtYW5hZ2VtZW50ICovDQo+ICsJLyogdGhlc2UgYXJlIG9ubHkgZm9yIGxlZ2FjeSB3bSBt
YW5hZ2VtZW50ICovDQo+IMKgCXZvaWQgKCp1cGRhdGVfd20pKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KTsNCj4gwqAJaW50ICgqY29tcHV0ZV93YXRlcm1hcmtzKShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
Ow0KPiBAQCAtODgsOCArODgsMTIgQEAgc3RydWN0IGludGVsX3dtX2Z1bmNzIHsNCj4gwqAJCQkJ
CSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IMKgCXZvaWQgKCpvcHRpbWl6ZV93YXRlcm1h
cmtzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCQkJwqDCoMKgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gKw0KPiArCS8qIHRoZXNlIGFyZSBmb3IgU0tMKyB3
bSBtYW5hZ2VtZW50ICovDQo+IMKgCWludCAoKmNvbXB1dGVfZ2xvYmFsX3dhdGVybWFya3MpKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsNCj4gwqAJdm9pZCAoKmdldF9od19zdGF0
ZSkoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiArDQo+ICsJLyogdGhpcyBpcyB1
c2VkIGJ5IGJvdGggbGVnYWN5IGFuZCBTS0wrICovDQo+IMKgCXZvaWQgKCpzYW5pdGl6ZSkoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiDCoH07DQo+IMKgDQoNCg==
