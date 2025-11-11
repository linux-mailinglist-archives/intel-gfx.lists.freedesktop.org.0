Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A62C4B785
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:40:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59D310E321;
	Tue, 11 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYQ+M7UM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8BD10E319;
 Tue, 11 Nov 2025 04:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762835992; x=1794371992;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l1PCk6sCT1N35QJsR8mLC+su8gfZqoUI+W0hdi5QrDw=;
 b=QYQ+M7UMUvXSmupE+Nuh0oFzK4KdFcMZrKjh73po27Kr9h4TFL55LgFP
 +gJ8evxCgiYyjEjwCuPMi98mm7PaUJPnxxAXc81Q3RoHMieQ1lvpr3JL/
 OY47JzDS0gcLi8AGRVvKckdu7VSdtSRAcrvT7aIKwj54SmtiEhS1+rvRa
 DSMasTA3cCP+ShgEk882j4ECENhcflesbhzzQubtv5l5AX8T0gtcY1Na2
 Z7fiDPQv4o4V5sbkuGJFRYcXqa9E5iunsSGgu+SsNGgFUOR2qJMDtdyaC
 3PC3diyeEIiK8Ni4mSdKaRtoKM3KUsBWHdvAFAacF7+nZg7RBrYdI6x1l g==;
X-CSE-ConnectionGUID: Cwh+q/NRQdeJi3S/XDPW2Q==
X-CSE-MsgGUID: yU1RUGlYT6CT6BAOBvcZmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64826285"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64826285"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:39:52 -0800
X-CSE-ConnectionGUID: eHyEL+2tS/WZCrolwdAPNA==
X-CSE-MsgGUID: Nl4YcLTGRQa7mbbWz3tEUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="219511800"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:39:51 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:39:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:39:51 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.45)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:39:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RvVeadeJECYWH8PDBusp/A6sPx+sKSkEeoH8MUTjlbfN3ofV1OZBy29yOc/D6eCNfc/csPXzfgFIiGxliRTbn/z4AzjGZSTCqcootFT0gfRbgJz7i5y92htZdX4/wyaoTNkvIiIZYZ+zfsqJ/xVlFzr4+DQAXlUohFneJLOamDN82SbgsMjTf5VXkWRwca68JVQlLPtLhweAUl/bUPKOzS4kE95sxFWDhHvWt1zfUemrFj5XF1Vvdc3EFhfAIcTN6q6lzhHSndC6LOnOZQ81EJUZGUo/NhfTtsmKxOFLvE+8K50s0KNuzKS6waomoHb+aKBuhh4Y+EEpEdniD7MWPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l1PCk6sCT1N35QJsR8mLC+su8gfZqoUI+W0hdi5QrDw=;
 b=JINTIKFbNszQE4Fuv5PqhW9asM0kWRBrHa13W32gtKeqGTOrUKlGPoS+XQwH8YLzZtubO0+RsVFX4PPY7mn7IqUUGqdC6MjvcPqvi9+sJk9hWi4k5ydKeiDrPG5mbvhIgbUxUR/aI5M2fFwVA0bVLFaVBXeRcz2Odvy7hVvV9/O4Yo+f4QWfjHYelWiwWxTfZPhwigHJCmFzPlHNWMkE+1VOc4EEBLm0B9Cu/leQ2+QItG2SA29U2olbuU22KAbEG9V+SFDm5wF3jyQoaP3BRI0EqaSPbtfefZUQ4puEi4yJ67qPebhZ77Lj0jPGbnJdznArOaNiYxNtesIlAFRO7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH7PR11MB6402.namprd11.prod.outlook.com (2603:10b6:510:1fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:39:43 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:39:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 10/16] drm/i915/de: Use intel_de_wait_for_{set, clear}_ms()
Thread-Topic: [PATCH 10/16] drm/i915/de: Use intel_de_wait_for_{set,clear}_ms()
Thread-Index: AQHcUmiu6JNEzWFNIkKdMu5RqCaFFbTs5Wlw
Date: Tue, 11 Nov 2025 04:39:42 +0000
Message-ID: <IA3PR11MB8937A05B31358F16DC62C953E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH7PR11MB6402:EE_
x-ms-office365-filtering-correlation-id: 57a3dc7a-8d30-4b0f-c1b0-08de20dc5553
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TUhmRmV2cERDRkNrazJmWTJnMFVKMFZycG92NUxVVmxtdEQ5NEZ0N3dVT0Rt?=
 =?utf-8?B?NnBtT3VVNUIrNHhoYXQ2S3hSUUMvTHF3L2VUR3RJYy9PZ2RhZVdDMGRyL0x3?=
 =?utf-8?B?T2VYaDY3K0IyZG5QMk90c1M1WjlNMzZQWUdWcDQxcWNGQlB4OXJnZm9rWVAw?=
 =?utf-8?B?aGJMTVpNZUxPdmlqRlNtQnpyWEdXRnNjRUZ5aGduRlpMdVhRK3ZMMVk4Mmo2?=
 =?utf-8?B?SHFXUHFrUXNaUkE2U01yK0lvODYrNDJhRm9tdGpjRmdacXlOeXlxS2tndEZN?=
 =?utf-8?B?NTFNSm1rYS9yQ3ZOTVFQMXd4SUFOZ3V3dVlvRW5wTCtXcVc3MmkrMm1MSVR5?=
 =?utf-8?B?VTJCcXNZV1o3aytCU3g2d0t2N2RnVWpzNkROWmk2c2ZjMnlxS1pwdDVEYVE4?=
 =?utf-8?B?TXdlcTV3enVWaUxGalBuUlpDSUZvRmNSUlVkZm9ZM0VBSGVTRVpFMWZPOXVI?=
 =?utf-8?B?NVdETjVmL2F1TituSjNYNVFYMG9ackNWYnFiNzZVeU5USlh3YzZqUEo2ZExB?=
 =?utf-8?B?Z25Hb3lQNGQrcElQb28xVWN0cHpoQUlSbGVTWXZxM3JhY3BScktYZkZJNy8r?=
 =?utf-8?B?WEJZRjVoT055MzhudFVocTVWeGJyUWgwYm1zVkUxV2duODNrZkZwa2VySCtD?=
 =?utf-8?B?UzBUaDhJTzZteS8vc0pKR1lYekJvSVBzUVA3OXhKNDliYzlZWHAyNllvN2l4?=
 =?utf-8?B?bzZUVXF1SnNyMlJRY0haZ2p2cmFUckdPQW5rbVRKLzgvZlgrYWhBVHNCcWRI?=
 =?utf-8?B?NkpXOXVPTG1EU3UxdjdhaWNtaEZsT1RrV2lUZTVKTlZIbXlIWEJiYktsVERX?=
 =?utf-8?B?Mi9veUY0bmx1N2t6ZHlWNGx0TUxtR2JEN0pQNEhPM0pwUm1yZUVzUllQQUU2?=
 =?utf-8?B?d1NNZU43NG0vVkNqYjJOSjJodXJrOEFDNTd2WTNNejI1UzIvS2VBZ2YwSEx1?=
 =?utf-8?B?Mm51OEI4SGZXR25lUVNBWFN5eU9MWVNFZVlEWDF1d0x5T3U1dkNtaWxWWGdY?=
 =?utf-8?B?bk55WUZlMDVjdm5EcEttMm94SVFXYnMzMldrcnRTeFpYRElSOHJFZHpnaDZo?=
 =?utf-8?B?Rmc1QXNXakVqM3VkSHNjY3VRQ3lUY2hDcnc1Zk5BUjdSL0E3eXZ0T2FudnFi?=
 =?utf-8?B?czNDcm5VV3dHYXZid2hVVEh4bmRJRGF6QW5hZ08zTmhyZmY3VGk5bWhQaEJv?=
 =?utf-8?B?UURGM2hvZ1hHY3NaM3QwcWtQR0VLTDkzY3dTeHJrS0I0MmVoR0Zhamt3eEND?=
 =?utf-8?B?UnFTQ1pQeDJiR3FWVUQ5WUxpcVdhVVlXdmp0NUM2M01DL0ZVaGlGVXR1bHo3?=
 =?utf-8?B?aVowSXVqcGs4YTdlRjdxeWlBNndwVkJkcXRIMXkwbnlOdmlCWURpUWNVVVYr?=
 =?utf-8?B?anVkdThtbFlPd1AzQy9EWkJaVXdadExSMzMzeldJamNyREgxbFllb2J1SVJX?=
 =?utf-8?B?NkIxU2VoaHVXeHFjWnNKOU96REJ6UVZpQXZHQTRDOUI3cW5IMzRDdFlTSmM5?=
 =?utf-8?B?bGlTdktGVy82aWNEK2xNYWpOWGRUUkpWOU1FOVdpd3BlVzRtTWlUUUp3NUZJ?=
 =?utf-8?B?cmlzUmVDQUNDaENEc0RSM2cwRUhBSzNXVDR3bGdGNnRTNU5RQWJJOU94UWFE?=
 =?utf-8?B?ZFE2NjhpMEY5THZNZlhXYXlwb2lYS0o2bHdBZ0tlSktjbDI3Qk9oM0NxbndU?=
 =?utf-8?B?bXAxZklTRHJtUkpOYStRb1ozd25laE13WXl4SGJrZ3hxUG1tTjFMSFErVlRC?=
 =?utf-8?B?VzdoaFhCeCtKRk1xSTdURjdPYnNxSW54UmkrODF5WmI4MktHUEMvaEdlbzNG?=
 =?utf-8?B?Y2dQZjFmTStnVVRTNkp5NEh5UEhaTTc3NmhEWWRCZDFwNzZWUy9XaE1hbU1E?=
 =?utf-8?B?RnNzQkxqSDdNdHpzZ2dBQ0VaWFprVlNmMklMaWdOSWNOYjE3MG9heG80YzlF?=
 =?utf-8?B?WTl4VUYvbUxUdm5uRkNEWVdTdXpEbVI1NXZJUUI0UGlHbHJhdi81SmR4dnVP?=
 =?utf-8?B?cUdRVnJxQkQrdzNZTTVVc1ZpS2VZcFI3Q0tDNmx5U3VtZGY0eklJRHRLN09u?=
 =?utf-8?Q?Ls+q0S?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmVXOTdUazF1cm5nVHFoRkdCUkZ2SGZWTW9KVEZFcjUxbUVjcDFjN3pmZHJM?=
 =?utf-8?B?anNta2JpWlpwbmh1aHNXU2ttdnVSaVlacGpvcVhNdDhNckxRVFIra1VMQTdJ?=
 =?utf-8?B?V3NyZTBlNk1HQmc0Q0Q4amIvL1NFZG9WSDhzUFpVeDhzV21FZkxlMnpTMmZ4?=
 =?utf-8?B?MG0xbXNRZFNHWWFlbTJuMnJGdVpEcUg5bW9HT3Rib0tYNnJDS05YZlpzVXY3?=
 =?utf-8?B?NnRXM2RiMVNCVzdMc05mQjZLbzAvRHlUT0JGVFlYVFdJMmZJSWhKRFk3YUVa?=
 =?utf-8?B?YmlNT0ROZ1VqTnFSNkRFTDNlZ1prK3R6eHVKcURZZUhKKzJVNjZpR05Nc0I2?=
 =?utf-8?B?MGdsaDArc2ZpZFY3ZUIyWGlLc1VxZWtJWW1rVTBIM2FNVTBwSTREMS9FcXRO?=
 =?utf-8?B?OVcrRG1wOHpaNitHaWoyQjRnb01TYUpRRElYNDMyUTk4eG1ZYmxPQ2VnaDVF?=
 =?utf-8?B?RlgySk9UVHFKM3RLTUNUczk4WFNNdHJ5WDczVmZudHlGaWo3QkZjV0tDbUhR?=
 =?utf-8?B?eW1tUWlsMHc2QjZtOHBBVUZsck5JWEZHQlRnbDhIeStiZkJCWVdydkIyaW1w?=
 =?utf-8?B?ZHdMM3RpaEVCNk1CQ1B1a3VuNU95Nkg3ZTlHQzNwQWZya3R5andvVXRqS2k3?=
 =?utf-8?B?ZXNkT3RFcm02MXB6TzY2R3YxRkJhVHNocnB0TDVvM1hLaGF0VkFQaVNCTkRh?=
 =?utf-8?B?dytiSzB5OU9wM1hwUEpWVnlOZnp4K2Radnh4azkyaCs5L2NraWJleVRiMyth?=
 =?utf-8?B?YU42b0drSXp3eHJlS2l5UkVVa3dHV013Z0hMeUNqL050K0ZqNmVLeFZET0pT?=
 =?utf-8?B?bjduQlZqT1RmeWtNZ05JQ252Qm9BaHR1aElYd2dWSlZEOTZCQmU1VlVmR1pw?=
 =?utf-8?B?aC9PZHF3UkMzL0xTVU5IRWlud0tVRjEvU2lMdmlEQjF5WnR2UCtoUXFpajdY?=
 =?utf-8?B?Sm80S0NJTDZLTE5JNTdISERKTDJ5cWlCamdRU0c1VHozUFN5ZEtZTUQ0NERu?=
 =?utf-8?B?a09aWVl4Z2VIWFZqYTIzL2tFQ0dzdVl2SUF0ZDd1ZVp2SHd2NHNkNGVyT3Q3?=
 =?utf-8?B?NEhxaEwxRjNHZ28xK0toUTJwQ0VMRFIyY3NuNjRUcmJUV1pmK1pjSUwrRWRz?=
 =?utf-8?B?MHZnaFRuLzVNdFNTUG96WlBFL3ZLd2RZcWxhRVNZeGZWbGRMWDh1SmNIbytW?=
 =?utf-8?B?aURtTGZGSXpCcUJ5WjYycVN0TFB2VTIwS3UyVXozR2VhcnE4NjgxclgxK0xk?=
 =?utf-8?B?b0ErZUhrQXRNekRSNDFVamt5bDVBL0I5Tkt3bUU2c3JULzJwcXJkZUhxd3Uw?=
 =?utf-8?B?NWo5aTVVNGhIdmswdUpPYWVVckYyNlFOOUM3ekJmQk9SZUx6Mml5cEM2aFpH?=
 =?utf-8?B?Y0sycnJoaEpmSDdteDFSS1BjN2pFMHplMmJ1QmpnK2Y0Zk0vell0eUFiclhZ?=
 =?utf-8?B?SEgrQmlNbWQ1alZOMS9ycmZpTmpheTBIUm1UdUVrR0s4NWo1N3FrWUtHUkRL?=
 =?utf-8?B?WE9SZXoyL2N0QnRGMTBQSFlwOWVCL0s5U2p0NzN0Uk9qTDUybGh4bnZYdENi?=
 =?utf-8?B?MXdwVG5NY0pKN0QvQnBpVXFMWlk0QUJWbitCcGxCUXlnd2tldHRTRVVKTjkz?=
 =?utf-8?B?MFdWRWN1UTNaUkh5YS8vMW0yOUFXWURCK0ZscUtEem1BVjY4TnVZZkVwb1NY?=
 =?utf-8?B?RE9xbzQvdlgvNkRUc1F3ekpWRVVSWFdxSFhveVY0dGZ5Nk1TbU45YXdWZWlI?=
 =?utf-8?B?WXlwbWVrUmhpWWpGeHY2c2kxNmlXWWVGM3RRRVVQRlFHanVDMlpNbllkSXRt?=
 =?utf-8?B?dHpmblZwcmoybXJjVW1YU1V4TWtNU1NGTFpSd2NKSHkxUlMwR2ZPSlhBTzFs?=
 =?utf-8?B?YXpPREJUTEdxQnYrM1lULy92d1o3aVFyZlNSNWxYRjRydGw4TU4zZC9vdTFa?=
 =?utf-8?B?czY1Z3RuMXE3cGdpd3QxZ0tIVS9nZlVJWFpDbnh6clpKRjlaR1NiUDdOWDNP?=
 =?utf-8?B?UDJiOXBZMTk4YWNjemljd1BpOG8vVnpMbDZOM3BCZ2s4S0xoc2FVby81M3M4?=
 =?utf-8?B?STlXYjJHZEpPSHI2aDdic05sTkNwekRoK01LQWFsODJVcVZyOWxSNTZCUHVP?=
 =?utf-8?Q?n9stjutMK3y4E1ZH14UdeunqN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a3dc7a-8d30-4b0f-c1b0-08de20dc5553
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:39:42.9595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QbJPwk13ZEdGSLGm/bh7m8oSdKbb0RAJUNEYErnceaqIkmgB84yp3zQbihmkWNqe1sYX+ulTLpDHWzELQgQQ1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6402
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

PiBTdWJqZWN0OiBbUEFUQ0ggMTAvMTZdIGRybS9pOTE1L2RlOiBVc2UgaW50ZWxfZGVfd2FpdF9m
b3Jfe3NldCxjbGVhcn1fbXMoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFVzZSBpbnRlbF9kZV93YWl0X2Zvcl97c2V0
LGNsZWFyfV9tcygpIGluc3RlYWQgb2YNCj4gaW50ZWxfZGVfd2FpdF9tcygpIHdoZXJlIGFwcHJv
cHJpYXRlLg0KPiANCj4gRG9uZSB3aXRoIGNvY2NpICh3aXRoIG1hbnVhbCBmb3JtYXR0aW5nIGZp
eGVzKToNCj4gQEANCj4gaWRlbnRpZmllciBmdW5jICF+ICJpbnRlbF9kZV93YWl0X2ZvciI7DQo+
IGV4cHJlc3Npb24gZGlzcGxheSwgcmVnLCBtYXNrLCB0aW1lb3V0X21zOyBAQA0KPiBmdW5jKC4u
LikNCj4gew0KPiA8Li4uDQo+ICgNCj4gLSBpbnRlbF9kZV93YWl0X21zKGRpc3BsYXksIHJlZywg
bWFzaywgbWFzaywgdGltZW91dF9tcywgTlVMTCkNCj4gKyBpbnRlbF9kZV93YWl0X2Zvcl9zZXRf
bXMoZGlzcGxheSwgcmVnLCBtYXNrLCB0aW1lb3V0X21zKQ0KPiB8DQo+IC0gaW50ZWxfZGVfd2Fp
dF9tcyhkaXNwbGF5LCByZWcsIG1hc2ssIDAsIHRpbWVvdXRfbXMsIE5VTEwpDQo+ICsgaW50ZWxf
ZGVfd2FpdF9mb3JfY2xlYXJfbXMoZGlzcGxheSwgcmVnLCBtYXNrLCB0aW1lb3V0X21zKQ0KPiAp
DQo+IC4uLj4NCj4gfQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgIDYgKystLQ0KPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jICB8IDMwICsrKysrKysrKystLS0tLS0t
LS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
LmMNCj4gaW5kZXggNjhlOTAwOWQyNTU2Li5kOThiNGNmNmI2MGUgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IEBAIC0yODI2LDkgKzI4
MjYsOSBAQCB2b2lkDQo+IGludGVsX2N4MF9wb3dlcmRvd25fY2hhbmdlX3NlcXVlbmNlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkgICAgIGludGVsX2N4MF9nZXRfcG93ZXJk
b3duX3VwZGF0ZShsYW5lX21hc2spKTsNCj4gDQo+ICAJLyogVXBkYXRlIFRpbWVvdXQgVmFsdWUg
Ki8NCj4gLQlpZiAoaW50ZWxfZGVfd2FpdF9tcyhkaXNwbGF5LCBidWZfY3RsMl9yZWcsDQo+IC0J
CQkgICAgIGludGVsX2N4MF9nZXRfcG93ZXJkb3duX3VwZGF0ZShsYW5lX21hc2spLCAwLA0KPiAt
DQo+IFhFTFBEUF9QT1JUX1BPV0VSRE9XTl9VUERBVEVfVElNRU9VVF9NUywgTlVMTCkpDQo+ICsJ
aWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyX21zKGRpc3BsYXksIGJ1Zl9jdGwyX3JlZywNCj4g
Kw0KPiBpbnRlbF9jeDBfZ2V0X3Bvd2VyZG93bl91cGRhdGUobGFuZV9tYXNrKSwNCj4gKw0KPiBY
RUxQRFBfUE9SVF9QT1dFUkRPV05fVVBEQVRFX1RJTUVPVVRfTVMpKQ0KPiAgCQlkcm1fd2Fybihk
aXNwbGF5LT5kcm0sDQo+ICAJCQkgIlBIWSAlYyBmYWlsZWQgdG8gYnJpbmcgb3V0IG9mIGxhbmUg
cmVzZXRcbiIsDQo+ICAJCQkgcGh5X25hbWUocGh5KSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiBpbmRleCBhYzZmZjE4M2JjOTcuLmJlYmQ3
NDg4YWFiOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sdF9waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0
X3BoeS5jDQo+IEBAIC0xMjAxLDkgKzEyMDEsOSBAQCBpbnRlbF9sdF9waHlfbGFuZV9yZXNldChz
dHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJICAgICBYRUxQRFBfTEFORV9Q
Q0xLX1BMTF9SRVFVRVNUKDApLA0KPiAgCQkgICAgIFhFTFBEUF9MQU5FX1BDTEtfUExMX1JFUVVF
U1QoMCkpOw0KPiANCj4gLQlpZiAoaW50ZWxfZGVfd2FpdF9tcyhkaXNwbGF5LCBYRUxQRFBfUE9S
VF9DTE9DS19DVEwoZGlzcGxheSwNCj4gcG9ydCksDQo+IC0JCQkgICAgIFhFTFBEUF9MQU5FX1BD
TEtfUExMX0FDSygwKSwNCj4gWEVMUERQX0xBTkVfUENMS19QTExfQUNLKDApLA0KPiAtCQkJICAg
ICBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9NUywgTlVMTCkpDQo+ICsJaWYgKGludGVs
X2RlX3dhaXRfZm9yX3NldF9tcyhkaXNwbGF5LA0KPiBYRUxQRFBfUE9SVF9DTE9DS19DVEwoZGlz
cGxheSwgcG9ydCksDQo+ICsJCQkJICAgICBYRUxQRFBfTEFORV9QQ0xLX1BMTF9BQ0soMCksDQo+
ICsNCj4gWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfTVMpKQ0KPiAgCQlkcm1fd2Fybihk
aXNwbGF5LT5kcm0sICJQSFkgJWMgUExMIE1hY0NMSyBhc3NlcnRpb24gYWNrDQo+IG5vdCBkb25l
XG4iLA0KPiAgCQkJIHBoeV9uYW1lKHBoeSkpOw0KPiANCj4gQEAgLTEyMTQsMTUgKzEyMTQsMTUg
QEAgaW50ZWxfbHRfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29k
ZXIsDQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIFhFTFBEUF9QT1JUX0JVRl9DVEwyKGRpc3Bs
YXksIHBvcnQpLA0KPiAgCQkgICAgIGxhbmVfcGlwZV9yZXNldCB8IGxhbmVfcGh5X3B1bHNlX3N0
YXR1cywgMCk7DQo+IA0KPiAtCWlmIChpbnRlbF9kZV93YWl0X21zKGRpc3BsYXksIFhFTFBEUF9Q
T1JUX0JVRl9DVEwyKGRpc3BsYXksIHBvcnQpLA0KPiAtCQkJICAgICBsYW5lX3BoeV9jdXJyZW50
X3N0YXR1cywgMCwNCj4gLQkJCSAgICAgWEUzUExQRF9SRVNFVF9FTkRfTEFURU5DWV9NUywgTlVM
TCkpDQo+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyX21zKGRpc3BsYXksDQo+IFhFTFBE
UF9QT1JUX0JVRl9DVEwyKGRpc3BsYXksIHBvcnQpLA0KPiArCQkJCSAgICAgICBsYW5lX3BoeV9j
dXJyZW50X3N0YXR1cywNCj4gKwkJCQkgICAgICAgWEUzUExQRF9SRVNFVF9FTkRfTEFURU5DWV9N
UykpDQo+ICAJCWRybV93YXJuKGRpc3BsYXktPmRybSwgIlBIWSAlYyBmYWlsZWQgdG8gYnJpbmcg
b3V0IG9mIGxhbmUNCj4gcmVzZXRcbiIsDQo+ICAJCQkgcGh5X25hbWUocGh5KSk7DQo+IA0KPiAt
CWlmIChpbnRlbF9kZV93YWl0X21zKGRpc3BsYXksIFhFTFBEUF9QT1JUX0JVRl9DVEwyKGRpc3Bs
YXksIHBvcnQpLA0KPiAtCQkJICAgICBsYW5lX3BoeV9wdWxzZV9zdGF0dXMsIGxhbmVfcGh5X3B1
bHNlX3N0YXR1cywNCj4gLQkJCSAgICAgWEUzUExQRF9SQVRFX0NBTElCX0RPTkVfTEFURU5DWV9N
UywNCj4gTlVMTCkpDQo+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldF9tcyhkaXNwbGF5LA0K
PiBYRUxQRFBfUE9SVF9CVUZfQ1RMMihkaXNwbGF5LCBwb3J0KSwNCj4gKwkJCQkgICAgIGxhbmVf
cGh5X3B1bHNlX3N0YXR1cywNCj4gKw0KPiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRFTkNZ
X01TKSkNCj4gIAkJZHJtX3dhcm4oZGlzcGxheS0+ZHJtLCAiUEhZICVjIFBMTCByYXRlIG5vdCBj
aGFuZ2VkXG4iLA0KPiAgCQkJIHBoeV9uYW1lKHBoeSkpOw0KPiANCj4gQEAgLTIwMDEsOSArMjAw
MSw5IEBAIHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIN
Cj4gKmVuY29kZXIsDQo+ICAJCQkgICAgIFhFTFBEUF9MQU5FX1BDTEtfUExMX1JFUVVFU1QoMCkp
Ow0KPiANCj4gIAkJLyogMTIuIFBvbGwgZm9yIFBPUlRfQ0xPQ0tfQ1RMW1BDTEsgUExMIEFjayBM
TjBdPSAxLiAqLw0KPiAtCQlpZiAoaW50ZWxfZGVfd2FpdF9tcyhkaXNwbGF5LA0KPiBYRUxQRFBf
UE9SVF9DTE9DS19DVEwoZGlzcGxheSwgcG9ydCksDQo+IC0JCQkJICAgICBYRUxQRFBfTEFORV9Q
Q0xLX1BMTF9BQ0soMCksDQo+IFhFTFBEUF9MQU5FX1BDTEtfUExMX0FDSygwKSwNCj4gLQ0KPiBY
RTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9NUywgTlVMTCkpDQo+ICsJCWlmIChpbnRlbF9k
ZV93YWl0X2Zvcl9zZXRfbXMoZGlzcGxheSwNCj4gWEVMUERQX1BPUlRfQ0xPQ0tfQ1RMKGRpc3Bs
YXksIHBvcnQpLA0KPiArCQkJCQkgICAgIFhFTFBEUF9MQU5FX1BDTEtfUExMX0FDSygwKSwNCj4g
Kw0KPiBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9NUykpDQo+ICAJCQlkcm1fd2Fybihk
aXNwbGF5LT5kcm0sICJQSFkgJWMgUExMIE1hY0NMSyBhY2sNCj4gYXNzZXJ0aW9uIHRpbWVvdXRc
biIsDQo+ICAJCQkJIHBoeV9uYW1lKHBoeSkpOw0KPiANCj4gQEAgLTIwMjksOSArMjAyOSw5IEBA
IHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVu
Y29kZXIsDQo+ICAJCQkJICAgcmF0ZV91cGRhdGUsIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+IA0K
PiAgCQkvKiAxNi4gUG9sbCBmb3IgUE9SVF9CVUZfQ1RMMiByZWdpc3RlciBQSFkgUHVsc2UgU3Rh
dHVzID0gMQ0KPiBmb3IgT3duZWQgUEhZIExhbmVzLiAqLw0KPiAtCQlpZiAoaW50ZWxfZGVfd2Fp
dF9tcyhkaXNwbGF5LA0KPiBYRUxQRFBfUE9SVF9CVUZfQ1RMMihkaXNwbGF5LCBwb3J0KSwNCj4g
LQkJCQkgICAgIGxhbmVfcGh5X3B1bHNlX3N0YXR1cywNCj4gbGFuZV9waHlfcHVsc2Vfc3RhdHVz
LA0KPiAtDQo+IFhFM1BMUERfUkFURV9DQUxJQl9ET05FX0xBVEVOQ1lfTVMsIE5VTEwpKQ0KPiAr
CQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0X21zKGRpc3BsYXksDQo+IFhFTFBEUF9QT1JUX0JV
Rl9DVEwyKGRpc3BsYXksIHBvcnQpLA0KPiArCQkJCQkgICAgIGxhbmVfcGh5X3B1bHNlX3N0YXR1
cywNCj4gKw0KPiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRFTkNZX01TKSkNCj4gIAkJCWRy
bV93YXJuKGRpc3BsYXktPmRybSwgIlBIWSAlYyBQTEwgcmF0ZSBub3QNCj4gY2hhbmdlZFxuIiwN
Cj4gIAkJCQkgcGh5X25hbWUocGh5KSk7DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
