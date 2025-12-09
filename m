Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A55CAF4CD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 09:29:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B6A10E4B7;
	Tue,  9 Dec 2025 08:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kxd17dkm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305A210E4A4;
 Tue,  9 Dec 2025 08:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765268938; x=1796804938;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=QV7KWXPTALuM1kTdMZQJ0xpNaubffdBJ3gsjyVWbR/Y=;
 b=Kxd17dkmZoTksQ2yDCuSnRSvKwtfoYsMhJwxue134yiXcQeQk/g4YarE
 o7bHKh6btWo8NqpcQ0E3oolKQlhfv6uVPUSXlm34MPwXE0au3F5fmRM33
 9qHg1xQM9Zmkqsdro6a/TcZKitFoelfcIn5UTXi7LfqZRv302vouT2irl
 VzdWApFcxqZZrwtyLxqrioSEVBNLNrmchi3LDNfMw8yNG7fmiWa/Ph/kt
 PXgAsNLSDVJLB1a253BxLYLfyEzhtIzBWuLLxW91bqpPziMkCxt8ZTjyv
 2T+gnPBeIt/klxdaqXQv924gCfFJJuC8eHV9b5o3P3WdjvjyJAMMYYz9H g==;
X-CSE-ConnectionGUID: 3yQ4sur2Rnm3DL0+oq4kNw==
X-CSE-MsgGUID: 3vpfnCf7Ssiw3wVBEsX0Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="77544000"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="77544000"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:28:58 -0800
X-CSE-ConnectionGUID: x+Y+hM5ERfuJLp78Upkj0A==
X-CSE-MsgGUID: 6PBhGDhPRRCXirrRJdCh7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="195771222"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:28:58 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:28:56 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:28:56 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:28:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=joPmCMqSsOFEby8OraEBUgQ2SRO+MFwtVxnr9OXqR8vlfE6ffEMWC51MmeZ1JNA6pnxrdmPj3UGXnrN+iwsei43iYSURmepwxdlIzlmlGyMfHsJrIma2m8fz8wIMDFlV1Q3FAeEdIlQkUGsUqkhaO1eaFjsI8owJAPdMhxX0sc953TNnhKUnwYsqTCUrHO4zwsCiVhhGbVWYIqjUwR7EZwGFR1uxlImwiY9F6jeV8q1kiWTi2XC3ptYpWAIkaQ6MU26TOH95DVpgPT/OW3pt1XpIvf+PR7kTT+m1OjDtxYsmi+1Rw+y3gdBEnaGOXl7mm+Fdw0hqOsZ4SzVmFhKMDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QV7KWXPTALuM1kTdMZQJ0xpNaubffdBJ3gsjyVWbR/Y=;
 b=pFGmBqlYvtaDLolI0SIhN2WelXzYrAexoOMxjqH6/CI4ISgDwY13SXfwTIWx3bQKGTA0xcJJCn/k1ZmRCoNL+FV+Ukrin+stmMj4eBIxmFs5MO/6swdYyF0kvZq38+INPtEkq3PZTtlyOTg1gOpVBflXOxsMG/dQc1DkbJAWs1iVJ5kaEFxmNZrEsM9zNiHiClWcGtL8t/wmUnNmTL/Hf31SzdWdsDBpqVpTp+U7MwnQjwNshng1SdZp3wHcxtUHlVap6JhY/ap7LlxDehuM2D0z2UBBSxVudMXUPc1FZjvKUgH5XFYJ1jcTZXI6yPheAHQzLXiSy2jBU4agvOxD+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 08:28:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 08:28:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 37/50] drm/i915/dsc: Track the DSC stream count in the DSC
 slice config state
Thread-Topic: [PATCH 37/50] drm/i915/dsc: Track the DSC stream count in the
 DSC slice config state
Thread-Index: AQHcX+T3Iees1h3x1ESKzyUOgZKdoLUZC+CA
Date: Tue, 9 Dec 2025 08:28:49 +0000
Message-ID: <94368694d6927cfc94fae4930acdae877005ef08.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-38-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-38-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6086:EE_
x-ms-office365-filtering-correlation-id: d2bde2ba-a36b-4a13-ca4b-08de36fcfa73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Y2lvRCtFNVZnZXNsM0lKWnpycksrMWUvNFhSODd2MmFNbFlFTDh2Mkcwa0tV?=
 =?utf-8?B?UTJ3U1c3SXdPMnJMMXBjcDY2WTQrVVdjQjRXdVUweGhVN1JTNWtZeVk2MDU1?=
 =?utf-8?B?Uy81Z2tkWlRpQ0M0dExCN042clVjMlQvQktCdlhMOUtjUm0yaGNybTJuaURm?=
 =?utf-8?B?d0w1ckpEbitkeGEwWE1Fazc0YzRpN1MwNFpRK3cwUHlNbTJnUzRpRWlMcm5Y?=
 =?utf-8?B?SDJhWEN2NmxHVEpDajYwR0ZLVlVNM0NEbmhHcEE3VVhOc1ViQmJPM3ZNaXlj?=
 =?utf-8?B?OGhVOGFaaW0yVHZxR1k4ZDJES1hPVWxHbXpOek9vcWFGUUFkdTVqQkw3TkZs?=
 =?utf-8?B?U0x4RktZdjU5NHJlQ3h3TWlSY01vQU5BZzNSek91Yy9uZHVJa0hzS3lwcUlj?=
 =?utf-8?B?VG1YT1R6Tk15NUNraW9yS1FGV2kwOXNCSEFtaVNpQ3cyUk1YUGRGQlE1eVpm?=
 =?utf-8?B?TW1YRVBJSTVtdkNBZUJSM1R4WkI1ejMyZDhMOUN0cmlQdDRwYXp3ZXZrbTRi?=
 =?utf-8?B?UmQ4M25EYkx2Q2xVNjU3Q1ZhSHNkMHErUjJyMElTcGZwS3JURDhMWDBrY2NV?=
 =?utf-8?B?Si96bHRwNE50YjU1YjgvVVYyTVVmOTZxK0E1UHBvQ1V4cmZVSVRGd3FwL2M4?=
 =?utf-8?B?TzR3bXRVT3IxaDE0YVBnTDV3Y1pUSDhoVVluR3FjeGsyNUsxZ0hSMnFHRi9o?=
 =?utf-8?B?aFNxNHZXMmczU29LSGVQRVA1MVJ0dzdFNUhoV3hkZTYrUldmRVhLbHdHOHdu?=
 =?utf-8?B?ZWl6NUY0cVlvcE45eWxuenEwMXJ6c1VRenEvNG81OXBMbEdLNWx4QjlZSW05?=
 =?utf-8?B?Q1VVRDBkM1Z2eU11L3hzMnB6UmlwQW0wQ1JsM3VsaGRLaDMwU1lyc0Evb0Jm?=
 =?utf-8?B?c1ZQbS81cE5mR0F0RFRmZXR2QXQ1VFFZWk94VWV5K2wvRmpaUitaR1k3VWhh?=
 =?utf-8?B?MElPaXFoL2Z3THBHZXFlTURxbEZrMm1sdUU0NFE0cFZDWFN1T0NMVms4TGRs?=
 =?utf-8?B?VzM3S1RLTEhQMlVoME1ta1FsZ2UwclJ5dlUwYjBOMUR3VkEwcldwaGlsK1ox?=
 =?utf-8?B?c1FYYldxd3E1bW93d1J5alZUWDlSOTVoYk9oYU11NkQ1d0ZneWlFN0NmbTVC?=
 =?utf-8?B?NmZJTEswckl1ZWx3ZkMvN3BrUFNRejhCYzF0bTFzbHJsQUw4YnkwdVZ5ajdK?=
 =?utf-8?B?c255YW42L3Z3Z0RZMG9rUGlNUGhHellERUx6MTA4VndLRVNQTlBpWUZYQmJk?=
 =?utf-8?B?NHlSZForZC9qazNzNlk4WHlmRndVVUxpMHF6bXlIVVhmOExVUW5BNFBManpV?=
 =?utf-8?B?RHhsc3h2VWVhVzJCeWdQbnpTL0hxbHpacjFDVVFjSmNZUTk1SXZYNE5Qais4?=
 =?utf-8?B?eXcyV1drbHMyUFAvUm1XTkd1VHFObE0vbytlOU1QVDQwdUFpK1M3b2FCc3lq?=
 =?utf-8?B?dDNEOVVFQ1pBNkhjcmxHQk82cHNIekpjd3U1dVVrOUtjaUFaWUV1Zzd3dWd2?=
 =?utf-8?B?bEdsSHczaEpuRGFNcGJpMmdUbi84T3pIcjJZNWJrdmV0TkphclJvSW9ocWNU?=
 =?utf-8?B?T2VFb2N3cG1nSzFMV1lyckdqd3pFOGoyVVhXUVdPSFlpQU4wSmplMTV6NXNV?=
 =?utf-8?B?NEoxWjFJS2M2RVdnVlBNUnV4UVF6M2JyMHhZbjBQQkllYzRPY3BtWWJGekRl?=
 =?utf-8?B?UEQrWDBPV0tIYk9vV2czcVorV2pwbFJySm9CaGRGYms2dExXSjREbTBDeUlJ?=
 =?utf-8?B?a1U1WjQyZGkvOCttOGExOTJyTklLVktlLzBTNGpZRm1wWHRweEFnNE9vWFJv?=
 =?utf-8?B?YlVCWlljaWpaT0pGWDNEdHVPSVQ4dFlZVlZNcUlBMGM3SisxR2pBY0l3UHcy?=
 =?utf-8?B?cG5oVHhnWkhaN3VHWlhGbWNGaXVic0xlakEwbzRBMGVtUEF0dGZPZnZzUGFT?=
 =?utf-8?B?cWZzZ3NzMjZrU214aXlSYTN6ekRSM2lUU1lTRS9GWGlnN2JKeUlQTC9FWGl1?=
 =?utf-8?B?em9KeW9aWDRTKy9QRDJhNy9ySGI4TXRLNmVZa0tuS0FINXU2NEFZRTdBOWRx?=
 =?utf-8?Q?i7Vha1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0YyLzJjbU90eXhPZTM5NVJPbUdyclFWd0JpUlNaeEM4MzhTdG1jdnBjT2Nx?=
 =?utf-8?B?dDBuYUlJbnAvWUF3WVZhbXVCdkRaV1Exc1kySnJQdTI3V0pYWHlvT092eXVh?=
 =?utf-8?B?MU4vdGZpSm5MalFLM3hGTTJCTkFPa202eE01YnRSWE1HUU5rdGVqalBRa0VM?=
 =?utf-8?B?V0E0Tzc4Vlo5ZHhtbHlkNm5SU2kxN2hIditUQ0NlL2F6K3lUSGZzUC85RkFa?=
 =?utf-8?B?M3hRTWFUa3MrOWRzc0I1TDNreDArVXZkbUFRTEVST3hoTmxieGtsR21XeENs?=
 =?utf-8?B?UWRrREIrakZZckhRVU1CRHlCOUhYRVZETmtBcFhZTFhubmV0eG5KVVZJUkJF?=
 =?utf-8?B?Z0xubnlmbmY2S21HZFMvMVdiaWFFbWk2bmhFTDA4MGZja1BpUXlRU3F3WHZP?=
 =?utf-8?B?ZDRtWS9HOHBpOS8zVllCUFdNMEdxUzZyZHpPaytWdkk5Qm8zVzRSZDFrbVRo?=
 =?utf-8?B?YXRGTG1Tc1dVbTdnVGZQRlloOU5BWGRYYVdjRkJzbDkyaFVhVVpZRWpISkph?=
 =?utf-8?B?dURwY2ZwQmVZdTdQVHpyUEVIUExIcUc5UkE1OTRxb0VGM3lKUVdOYk1LTmFJ?=
 =?utf-8?B?RjRxSDA0K2thYU00dEpPRUh5L3pCTWpVOHQ2MHA4bU14d1lCVk5CZ1lJdExt?=
 =?utf-8?B?MzVpdkRKU3dPTElPYjVWZm45Z1dzM2J5b1B6LzZwVi9WU2hNU2YzbURiUlc5?=
 =?utf-8?B?WmVmQXVkZGpPVkFPRDNmeWhDcUF0OTV0WTE3T3VtUkFHSElxaXkxOVpQSVVn?=
 =?utf-8?B?amdPbHF2U1VDSE55YU0yTzFTaXExM3FPeWNSQVFlM0d6ZVoxR29VZnBDQzgv?=
 =?utf-8?B?cG9oUU5PeGQ1VlRXRGVlQk1TZEROL2JzOFZEc0Z2TFFzcG5oM1JpRkY4M3BM?=
 =?utf-8?B?OE5lajlKY1hiblZ6dmpRdDZUYXA2MGhzcjhxNmdja1FmY3cySFQxVXBGUkw4?=
 =?utf-8?B?MXN1eDRpeEtUY3RTMHczSWZ6QkNMYXk0M0d0L0ZtQzA2MDQ1QlV2SmFNUUxQ?=
 =?utf-8?B?cUs0QVdYQmVCRWpnUHVFMHcvaGszNDZ3aXVZWHpuVmkzdXIyVEswS1BMZ1g5?=
 =?utf-8?B?UTkxdWM0UnFPQkJWRVdONmVsbG5RQkpkanRET3B6KysyNE51TFRkbEVTdHRL?=
 =?utf-8?B?SnFqSmJpZitLWVFYVTRpajQ3QjYzNUpNaEMvdDJKOHNiMW5JRGlOQUZudTZJ?=
 =?utf-8?B?S2hkL1BGZi9Mamoya1h0Nm1JbzZhWnB2SjFaZFplU3IzVStUWU4yTFNFaXQ3?=
 =?utf-8?B?RnRzenBKT2ExRWFnN0QwYU9nTTBQZmRjano0SG5yenpIa21HZEtGSFFpYzJt?=
 =?utf-8?B?T1I2TXRieE01QWNNV21PMzBxMnFpa1FhTkJsMjJGbkxodnBQZUt1eTVsZVZv?=
 =?utf-8?B?eUl0WHkzQ09jNWg0b216ZFIzYWJhaFBLU2ZwVzFrVEJMdVhlMUMydUlEMUh6?=
 =?utf-8?B?WEtWUCtXMUpjZTJDdzJSamN3T2NXNHhVR2I0TDROa0UzaDI5N29mL1crcmRj?=
 =?utf-8?B?dXFVb2d4Q3ZhbWFhV1E5OGNxemZtZU82L05reHVOdEQ5WnpUdmtYWE14c21C?=
 =?utf-8?B?MEFHMExWOXBJY29pcmI4dGkxbHkyRkJqYTQ2STBCZEZlUS9xRkFCY2VRd2Jq?=
 =?utf-8?B?dkhQY2hVblRZRFpYM3M5RVNKMmFVdDVzY2ZWVGpmRGNHQjMydG15MDVqb2Zw?=
 =?utf-8?B?bFZYK2pwbFM3WmZxeC9tRW9UMDRRWkJoa0ZuZEQ5aDM3QU1NNnZZQUZzU0lJ?=
 =?utf-8?B?OVZuWTFWYXY0VWVwcDM4dDhtYTZ6WnhZYk9DaGp1ZzYwL3N4K050T0lqbXJz?=
 =?utf-8?B?bnhNajZDclpXVGxLK0Jabm5IZXRiRUU3b1UxUlh6Wjcwbm8wWUZsaEFyUVdz?=
 =?utf-8?B?OFBRQ2Z6bmlQM0pPcnNCVXhGVFFSRkg5U2VXSlBHN0dCTjhKZVVyc1dXTEJy?=
 =?utf-8?B?NzlZSmdFRERkYzI4V2pDTXdrT0hmR2RzN2c5eUM5OVlRZ3drTUdvT3EwTit3?=
 =?utf-8?B?czFmcFVGcGQ2VGRvL1Rid1pLdHFRVkN1bkw4VzNMYXB4UDIxa2pYaVE5VjdG?=
 =?utf-8?B?N0dvcXc3Z1E4R0JHVWZHWk5URHJDbEM3N24yd0pyZUZocHNoSUdSemRVd2R4?=
 =?utf-8?B?WVAvaEg3aVV3c3RBYjJodEthdHlPbG1RTUIwSG1vdnErcFVsdUJQM3NYeUcx?=
 =?utf-8?B?MVplL2xxaEV5OFhXQytac01QUlc3RDIxdlB4L2lYd2NMS0JoNjMxT2VmLzRj?=
 =?utf-8?B?UjZJK3hEWlhMRGNtTXQ5U2ZoRFZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <77024C8D36291C45B0CDE41CCC6E95F7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2bde2ba-a36b-4a13-ca4b-08de36fcfa73
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 08:28:49.4382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iYBxXsNOw4A1iDsUJg0YrRYN9JvLZvGKt7PmCZG3tZVgZsmlN6o51l3f1N/UXpQrRoSTFqK08Fs0vQRcfwvdwRuqmRfnnUZCb4m+qfYkuWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1v
dmUgdGhlIHRyYWNraW5nIGZvciB0aGUgRFNDIHN0cmVhbSBjb3VudCBmcm9tDQo+IGludGVsX2Ny
dGNfc3RhdGU6OmRzYy5udW1fc3RyZWFtcyB0bw0KPiBpbnRlbF9jcnRjX3N0YXRlOjpkc2Muc2xp
Y2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUuDQo+IA0KPiBXaGlsZSBhdCBpdCBhZGQgYSBUT0RP
IGNvbW1lbnQgdG8gcmVhZCBvdXQgdGhlIGZ1bGwgRFNDIGNvbmZpZ3VyYXRpb24NCj4gZnJvbSBI
VyBpbmNsdWRpbmcgdGhlIHBpcGVzLXBlci1saW5lIGFuZCBzbGljZXMtcGVyLXN0cmVhbSB2YWx1
ZXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKystLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfMKgIDEgLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDYgKysrLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmPCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSArKysrKystLS0tLQ0KPiDCoDUgZmlsZXMg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBpbmRleCA5MjMwNzkyOTYwZjI5Li45
MDA3NjgzOWU3MTUyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
Yw0KPiBAQCAtMTYyNiw5ICsxNjI2LDkgQEAgc3RhdGljIGludCBnZW4xMV9kc2lfZHNjX2NvbXB1
dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoA0KPiDCoAkv
KiBGSVhNRTogc3BsaXQgb25seSB3aGVuIG5lY2Vzc2FyeSAqLw0KPiDCoAlpZiAoY3J0Y19zdGF0
ZS0+ZHNjLnNsaWNlX2NvdW50ID4gMSkNCj4gLQkJY3J0Y19zdGF0ZS0+ZHNjLm51bV9zdHJlYW1z
ID0gMjsNCj4gKwkJY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBl
ID0gMjsNCj4gwqAJZWxzZQ0KPiAtCQljcnRjX3N0YXRlLT5kc2MubnVtX3N0cmVhbXMgPSAxOw0K
PiArCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAxOw0K
PiDCoA0KPiDCoAkvKiBGSVhNRTogaW5pdGlhbGl6ZSBmcm9tIFZCVCAqLw0KPiDCoAl2ZHNjX2Nm
Zy0+cmNfbW9kZWxfc2l6ZSA9IERTQ19SQ19NT0RFTF9TSVpFX0NPTlNUOw0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAwNGY1YzQ4
OGYzOTk4Li5hZWY2Y2ZhN2JkZThlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNTQ1MCw3ICs1NDUwLDcgQEAgaW50ZWxfcGlw
ZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVu
dF9jb25maWcsDQo+IMKgCVBJUEVfQ09ORl9DSEVDS19JKGRzYy5jb25maWcubnNsX2JwZ19vZmZz
ZXQpOw0KPiDCoA0KPiDCoAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChkc2MuY29tcHJlc3Npb25fZW5h
YmxlKTsNCj4gLQlQSVBFX0NPTkZfQ0hFQ0tfSShkc2MubnVtX3N0cmVhbXMpOw0KPiArCVBJUEVf
Q09ORl9DSEVDS19JKGRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSk7DQo+IMKgCVBJ
UEVfQ09ORl9DSEVDS19JKGRzYy5jb21wcmVzc2VkX2JwcF94MTYpOw0KPiDCoA0KPiDCoAlQSVBF
X0NPTkZfQ0hFQ0tfQk9PTChzcGxpdHRlci5lbmFibGUpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBhM2Rl
OTNjZGNiZGUwLi41NzRmYzdmZjMzYzk3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTMwNSw3ICsxMzA1
LDYgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiDCoAkJLyogT25seSB1c2VkIGZvciBz
dGF0ZSBjb21wdXRhdGlvbiwgbm90IHJlYWQgb3V0DQo+IGZyb20gdGhlIEhXLiAqLw0KPiDCoAkJ
Ym9vbCBjb21wcmVzc2lvbl9lbmFibGVkX29uX2xpbms7DQo+IMKgCQlib29sIGNvbXByZXNzaW9u
X2VuYWJsZTsNCj4gLQkJaW50IG51bV9zdHJlYW1zOw0KPiDCoAkJc3RydWN0IGludGVsX2RzY19z
bGljZV9jb25maWcgew0KPiDCoAkJCWludCBwaXBlc19wZXJfbGluZTsNCj4gwqAJCQlpbnQgc3Ry
ZWFtc19wZXJfcGlwZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBpbmRleCBkZTU5YjkzMzg4ZjQxLi4wMzI2NjUxMTg0MWUyIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yNDE3LDExICsyNDE3LDExIEBA
IGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRl
bF9kcCwNCj4gwqAJICovDQo+IMKgCWlmIChwaXBlX2NvbmZpZy0+am9pbmVyX3BpcGVzICYmIG51
bV9qb2luZWRfcGlwZXMgPT0gNCAmJg0KPiDCoAnCoMKgwqAgcGlwZV9jb25maWctPmRzYy5zbGlj
ZV9jb3VudCA9PSAxMikNCj4gLQkJcGlwZV9jb25maWctPmRzYy5udW1fc3RyZWFtcyA9IDM7DQo+
ICsJCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAzOw0K
PiDCoAllbHNlIGlmIChwaXBlX2NvbmZpZy0+am9pbmVyX3BpcGVzIHx8IHBpcGVfY29uZmlnLQ0K
PiA+ZHNjLnNsaWNlX2NvdW50ID4gMSkNCj4gLQkJcGlwZV9jb25maWctPmRzYy5udW1fc3RyZWFt
cyA9IDI7DQo+ICsJCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3Bp
cGUgPSAyOw0KPiDCoAllbHNlDQo+IC0JCXBpcGVfY29uZmlnLT5kc2MubnVtX3N0cmVhbXMgPSAx
Ow0KPiArCQlwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBlID0g
MTsNCj4gwqANCj4gwqAJcmV0ID0gaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGFyYW1zKGNvbm5lY3Rv
ciwgcGlwZV9jb25maWcpOw0KPiDCoAlpZiAocmV0IDwgMCkgew0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBpbmRleCA4YWE0ODBlM2QxYzlkLi4yYjI3
NjcxZjk3YjMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zkc2MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYw0KPiBAQCAtNDIxLDcgKzQyMSw3IEBAIGludGVsX2RzY19wb3dlcl9kb21haW4oc3RydWN0
IGludGVsX2NydGMgKmNydGMsDQo+IGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikNCj4g
wqANCj4gwqBzdGF0aWMgaW50IGludGVsX2RzY19nZXRfdmRzY19wZXJfcGlwZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gwqB7DQo+IC0JcmV0dXJuIGNy
dGNfc3RhdGUtPmRzYy5udW1fc3RyZWFtczsNCj4gKwlyZXR1cm4gY3J0Y19zdGF0ZS0+ZHNjLnNs
aWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBlOw0KPiDCoH0NCj4gwqANCj4gwqBpbnQgaW50ZWxf
ZHNjX2dldF9udW1fdmRzY19pbnN0YW5jZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmNydGNfc3RhdGUpDQo+IEBAIC0xMDIzLDEyICsxMDIzLDEzIEBAIHZvaWQgaW50ZWxfZHNj
X2dldF9jb25maWcoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKg
CWlmICghY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkNCj4gwqAJCWdvdG8gb3V0
Ow0KPiDCoA0KPiArCS8qIFRPRE86IFJlYWQgb3V0DQo+IHNsaWNlX2NvbmZpZy5waXBlc19wZXJf
bGluZS9zbGljZXNfcGVyX3N0cmVhbSBhcyB3ZWxsICovDQo+IMKgCWlmIChkc3NfY3RsMSAmIEpP
SU5FUl9FTkFCTEUgJiYgZHNzX2N0bDIgJiAoVkRTQzJfRU5BQkxFIHwNCj4gU01BTExfSk9JTkVS
X0NPTkZJR18zX0VOR0lORVMpKQ0KPiAtCQljcnRjX3N0YXRlLT5kc2MubnVtX3N0cmVhbXMgPSAz
Ow0KPiArCQljcnRjX3N0YXRlLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUgPSAz
Ow0KPiDCoAllbHNlIGlmIChkc3NfY3RsMSAmIEpPSU5FUl9FTkFCTEUgJiYgZHNzX2N0bDIgJg0K
PiBWRFNDMV9FTkFCTEUpDQo+IC0JCWNydGNfc3RhdGUtPmRzYy5udW1fc3RyZWFtcyA9IDI7DQo+
ICsJCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDI7DQo+
IMKgCWVsc2UNCj4gLQkJY3J0Y19zdGF0ZS0+ZHNjLm51bV9zdHJlYW1zID0gMTsNCj4gKwkJY3J0
Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBlID0gMTsNCj4gwqANCj4g
wqAJaW50ZWxfZHNjX2dldF9wcHNfY29uZmlnKGNydGNfc3RhdGUpOw0KPiDCoG91dDoNCj4gQEAg
LTEwNDIsNyArMTA0Myw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Zkc2NfZHVtcF9zdGF0ZShzdHJ1
Y3QNCj4gZHJtX3ByaW50ZXIgKnAsIGludCBpbmRlbnQsDQo+IMKgCQkJwqAgImRzYy1kc3M6IGNv
bXByZXNzZWQtYnBwOiIgRlhQX1E0X0ZNVCAiLA0KPiBzbGljZS1jb3VudDogJWQsIG51bV9zdHJl
YW1zOiAlZFxuIiwNCj4gwqAJCQnCoCBGWFBfUTRfQVJHUyhjcnRjX3N0YXRlLQ0KPiA+ZHNjLmNv
bXByZXNzZWRfYnBwX3gxNiksDQo+IMKgCQkJwqAgY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50
LA0KPiAtCQkJwqAgY3J0Y19zdGF0ZS0+ZHNjLm51bV9zdHJlYW1zKTsNCj4gKwkJCcKgIGNydGNf
c3RhdGUtDQo+ID5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGUpOw0KPiDCoH0NCj4g
wqANCj4gwqB2b2lkIGludGVsX3Zkc2Nfc3RhdGVfZHVtcChzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAs
IGludCBpbmRlbnQsDQoNCg==
