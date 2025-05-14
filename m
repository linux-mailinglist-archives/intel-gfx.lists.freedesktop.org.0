Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442E1AB6719
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 11:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78FBF10E2F8;
	Wed, 14 May 2025 09:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BAymj2u/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2A310E2BC;
 Wed, 14 May 2025 09:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747214326; x=1778750326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ohQ5N2krotWDo5t1GJNxms5PnEaLyMumNuMFMw7zHZU=;
 b=BAymj2u/mxP7NJcbQyqvY34UmBVLAdv0swxXHR8ns/YLtjSZJ07WD5We
 WE6nicRtFaNVI2pJjrauQHx1aYlJ2fH+qZb43nZA1/9q2k8/8jPCbWQ5f
 J00cbT67XEwHkB40cg4rBO9nuFA/fcdy7QrFvLbZeBTwVrbXhESeB7DkG
 257rYU1gsKUbRee1L8IGbp6ACLhpxiWpBXiIqejPCNpjOUhHSqZ+ado5p
 Rz9HxjumaJOE4EeXUFiVTlXeStjJPFhdbhIrq9KtD1YQTPfyFRSPiD8IE
 6Hmar7wWx1nPg738snng+vyXPnTYsaNVoehio6TTdbY1LC/MrjY5XjsfD g==;
X-CSE-ConnectionGUID: 0hHRXus+Try96bWdO5nqOQ==
X-CSE-MsgGUID: pKI5x5LkSbak+I1TS8vlUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="60438425"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="60438425"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:18:46 -0700
X-CSE-ConnectionGUID: Xzc9zfXrR8SWkXRgtbayYA==
X-CSE-MsgGUID: V8dNCyy3REebOSKk760m9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="137899678"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:18:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 02:18:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 02:18:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 02:18:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X9LMkOso2qX9uTKKZhl5poqtlu8rKExdGJRPkL7LgLZj4Jl1/tBmFyUKKFlCbOf1DAJ4JXYdodwcQZlSH2OrphNae4XHJvVAZ2no8jaltjldL8yqlbg4hpylo7n2vLGmM0drwylgTM2DyFqZkB4LaA/BH+sq1d6cL23FQ2UjHD7tX3ADr+0HDtLk1iY+yQ3qWfM2JsTBepxnU7q3d9W+/b5b1ozeWHDZTXaUCxEBpgL8ySKO62dlNrAJZgbl9O/Gf8z68/4o4d44RT0rEdbOvPZiDT75fx9As54sYWF/8SKgoGFglmgjpPMmi9PA9FEP1DsVA2/aqXAfKsMgQZtKcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ohQ5N2krotWDo5t1GJNxms5PnEaLyMumNuMFMw7zHZU=;
 b=bkTgqZexGrdBqlUMhHyZsJIRBKmZ99gsuIu+MeW++eE8dRAb6+PZ+qnhOXRO2q6+ZCekTry9O1nj57mhyIGpz2G7a0KvO2u6FGsQAKd71BfNlHm3vw1W7d5LufFh8CCEEXMkP8hjNPz2kBzde9qd7otZLDqL2LOwxkvKgBVmwI5udTdWccMlhlUHYlgd925eIc4x+EnR03nmDGMdwutKArlzm5GgR43u4qwlQ9FmmDQDf2uOMmWum+ahq7gB0LHH/G/iDIEQ02CONOfSkVrCBK1Ge9vNT8/nz+5aKn4W5url+VL3FFdcPezTD2k/DAsN6fHlcCfsI+ziixTYti6ApQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.28; Wed, 14 May 2025 09:18:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 09:18:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [PATCH 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbp8rmOzPmFPdVGUqAf5HsbLgah7PSDelw
Date: Wed, 14 May 2025 09:18:13 +0000
Message-ID: <DM4PR11MB636098F5D8BB538B2E6B54CDF491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250407142359.1398410-5-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB8289:EE_
x-ms-office365-filtering-correlation-id: e984807a-857c-4c3d-1073-08dd92c840b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?QnY5SS8yMW9nZlppVGhJYlVFSUluTGdQWUZiRWNBQkx2eW9JSm5zNllGOWky?=
 =?utf-8?B?L1lEYjdzbDduR1BxZ3hoL1JubDhBM3JySGI5ZGpmUDlIL0pUekwyZ0o2NllJ?=
 =?utf-8?B?L1AvRFBtZG1hbjlYQURmMkxIN0pjaGU2U0FsZXlUUm1pcityOHpmNGc4em91?=
 =?utf-8?B?aGQ2V1lUS3lMbzF4Wm10ZDJVc1NWbm9OZW50eXc4Nzhxb2YxTFhkamtMdDU2?=
 =?utf-8?B?YUQ0aHZqVlRHbGR5d3o5U1kwd3dYMzFrMUp1RndvU1IwZ0VqSFlOT0laUi9H?=
 =?utf-8?B?UEM1QzNHaE9sY05jWjlKU0JLdVRqTkEzYXVPaXk3Y3lnNnZyTkFHV3VQamM5?=
 =?utf-8?B?ME5xMlVIMEJYSWRsQm9Pb0Eybm1hc3R0dDJtUFVrMkJTS0htSGpKcDlNVzZl?=
 =?utf-8?B?UlBhOGZSOWJxNEZkbzNWTWQrR0czQmp5Zkt2ZWJXdzBwcUxaeDBKeE1OcGxq?=
 =?utf-8?B?NWg5TU02ek5HWm92dWVJdkkzVCthcDU4TGVwU2J0ZTVqTzlNbnVFQklNbWta?=
 =?utf-8?B?bU5FTHRJY3A4Vy9zRlJ2aXNoVEpmaGR3akxqbkxPTkVPVjZ6L0htcjJOcEpq?=
 =?utf-8?B?bTZFbElzck85YktNeFl2NC9sU2pGc3o5ZmkzMVQvVllDUjNrZjVyQ2JiaCtC?=
 =?utf-8?B?TG9sT2Z5U09CRHUrcmU4NnB2MFVSOS92QisvVFZTcWJHUkpzNDNtRVlDYUlG?=
 =?utf-8?B?bG9yVmVnRUN0QlVUV2syek9oV3J4alp2ejV4blNsYm5LMTZxSEVFa1lYVHd6?=
 =?utf-8?B?aXloYlIyMDNtTTc3Y3JGRVBrMVJGZzZGZk5aanJqOXdwTlZTUm5WdUlVTnVK?=
 =?utf-8?B?ajY1aWVoN0FoN3hRQUZ5aS9nQXBUSDRKK1VnWC91Wm5qMnlQTlE2OURWYkRz?=
 =?utf-8?B?YmVRME5tdU5PUlM4TjdOaDNMS2t2d0VmWXB5YW9vbEQ5ZzR6RmcrSWhXUXdD?=
 =?utf-8?B?YUt5NEphcExHdlYvbjVoTHdSR3U0QWhSN3VreXRoRUpYcmY5bXNCTmNQOFhQ?=
 =?utf-8?B?L28yOFJjdTNFVUdjTWYxMCtkZ1JPV2dVSHRIakNGOXkrYStjbllpWlgxdDNw?=
 =?utf-8?B?RjdUYnVDY1NQZzY0YjE4dGFBWmgzSUpNdEZYMFQyeTFHUE5Cczl0bmNVMWgw?=
 =?utf-8?B?NXZOSFlzUWswV3B2dWdpMzNaV0hXWnR0UnBtR2ZFYkljQ29FOUtLeWFBOU9s?=
 =?utf-8?B?djU5OGNZTUlobDVxSFdLczlsOU9heDZrdi9SS3E1Vm1TNVFGUE5yZDROVVRV?=
 =?utf-8?B?R1FmK01WY3RDQWVuR2VOTUxFT3FJa1VJMS81UTQ2MmZSRndLc2J4bkhOS0dt?=
 =?utf-8?B?ZjZoc0NVSExsVjR1Qk9JUGpUbE9oK0syZlhFKy9ycnp5czc1WmZWekRMbThK?=
 =?utf-8?B?QnZjbTZwS3crRnRnbHI4MEYvcDIrYjA0YmRkS1l3bDZPZDdPbDBTWERmcGJp?=
 =?utf-8?B?Sjk2TzdpL0tUYk1vUnYrUFg3V09xV1ErcHRuZjN6K2ZIdUUranY5VW5XOFpM?=
 =?utf-8?B?SWFkMEpmcVZhZE5GU2dNYU9JL2pybG1FWnVqVXNjWlhJWDJwd2FrdXBZaDdl?=
 =?utf-8?B?QkRpMnZlZTVMQmxkY2dYUEdWN20ycnZVYmlPZ2pWaGtpZ21uK3czOEYwbTB3?=
 =?utf-8?B?VlJCck1jNGZmOWRqYkFVaGFEdTRLcHQ0QVk3V3MwS002QVpxRzFWZ2g0QTNZ?=
 =?utf-8?B?ZG1vbjkxeS94cVU5NEo3V1JRcG1HSGREbVRGZFcybUcxcUJxVzdUcGUrZDFE?=
 =?utf-8?B?WUNuNUVVOVB0S25wSStoUExnQTFmV3lQcUVjWkwwT3UzQnNnSFFDN3lzcUY5?=
 =?utf-8?B?bGNjRkwwbWprMklicU4zUXpraEJYbXVqN2ZGYlB3NjB4ZitBUGpBRjI2Sjdj?=
 =?utf-8?B?eFFrZkRsY3Y1Mkt6NTQ1SkJrVmNMd1dJOUxxYzU0REIxbzRTdnkxUW82WnF5?=
 =?utf-8?B?c25wNndlK0VaeGJQUjJ4K01OYW1XSUVzdGN3SmJxYklUamM0Y0RRTUlickVH?=
 =?utf-8?Q?J34ZYiblrJFGGXztqHj1Odw3HzSpLI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWxtdGVzQ2xqaXlQZkpiQmdZcDJmYmhYNElqcHRUdWYzZnE3a2c1SjE5SFJx?=
 =?utf-8?B?RDdrN3owSlVzWnN3MmVKenFhVjRDM2todEdzWHJreW51Wk0rdVRHMTRhWEFK?=
 =?utf-8?B?N0U0dXhYb2thUGk1VHZTaVBORnU5UlpPNllydEIrK1ExNWpjaWRFZHhlcmtK?=
 =?utf-8?B?OHhSRS9jRk5XcWN6RmpBUzArb1ZHbmJRQ29RV1N2cG5ldUVreGx6Tk12enhu?=
 =?utf-8?B?aHhKMkVZKzRaTjZOV2dpN2VTZ2ZsWjRmaVA2M3pSNVpoMUF2Rkc1WTROaUpI?=
 =?utf-8?B?c0l0dFk0ek0ramM0cTBBalVnNFQ5M21iVGVQNE5lTzJTWEQrZUdOcG5tcENO?=
 =?utf-8?B?b1Bhc2lvNWFQVkdrMTAyOUplU0dCNnlFdmRCM3BRRU9KQzJvQUpGSG55UFpo?=
 =?utf-8?B?ekh3Zi9BVWZGSGlXZ2dneFFEdDh3K0FQTGcvUEEyeW1ualZmaDh0SHlOekhD?=
 =?utf-8?B?MnZQT05aTnJDZmNiVVNzdDhtbWt6M2JpMTAzeUR6bmRyTDFxMEtKSmRiU25U?=
 =?utf-8?B?UGFHbFZCS1BXYmhqaDJxNEMxOGNJd3BXTW1kOFdxaVhUYzRVT3Q1VHIwTGFq?=
 =?utf-8?B?ODAzYkpwWXB5d3VYOTBpakVhcUhCYlBMd1M5Z01mZ1VHTjJXV3Z0UGF3alBX?=
 =?utf-8?B?YjNSNlJRY3QvcFVMWTg1cWJhYWg2bU1vbG1INm5HSU5Sc0N3d3A5MVR0aE5X?=
 =?utf-8?B?S2FMN0xBWWtsNGpUTzFNR0wzMEtZVXIvb2l4WGpUMm5vRmQzcWRCRVlvL2ZF?=
 =?utf-8?B?MVg2NVdMUng1ZzErTkUxZjBzeTArdmJXV2tRV245cmkzd2l4QXFOdkhvanpj?=
 =?utf-8?B?RFVRaWVmVkhIQmxMT0RGV2xSN1RubXg4NW5aSHZvdFk0bDBVdlpPY2FDWTBy?=
 =?utf-8?B?cDlMNlY3Zld5L01aKzdvLzFDVTJMVDBKeWVEeHA2VkhrZHFBcTRiSVR3RHh2?=
 =?utf-8?B?QVZDc3B6TjhuSUVvdEtOMThSNUZodEdxL2JNN0YrRW1RRG93V2dvQUhzYnVN?=
 =?utf-8?B?ejc2bUNWdnkyckh2bUFSTjRhVUtIMVE4d3Z0MEt5RGNzYS9pK3JZTk5hOTF2?=
 =?utf-8?B?b00xZ2ZJcDZ5QmZseCtzWm91TlZhNXJJcUExQXpreHI3czZIYjhjUVpFcVRM?=
 =?utf-8?B?S3o3TC9Hb1Jybk5EeVA4TTdvT1RRNWgrbnJscEVwVG1IVFBxUzd1THprRlEr?=
 =?utf-8?B?UjcrSURDc0xFRXdFRG1GLzdYbDRBNEpKcDJCQ0t2NmdHVGFPMTdqQ2dKNDgx?=
 =?utf-8?B?emUzZDFyb2lhQ0RDWUJJYy83US80dU95SERDQ05qNVlEdjQwSmhxdnBIQVdU?=
 =?utf-8?B?QWlIWkpEaDZ6RWlkNWU5SHRvMmtLU2w0TUJ0NWp5VE9nbEh2V3QxTUUwdGlt?=
 =?utf-8?B?K3ljQ0dSekZ4TkY0ak40aHU2aGVWelYxSUVQYTBoV0pjRmlhMGdEaHJUbWt4?=
 =?utf-8?B?ZkgyczhRTzUvb0d3bngvMDZuVExJeXBmeTZNcEZ5ajdLSTI0K2puSldrcGNY?=
 =?utf-8?B?RHF1N3BBekpSdExhWlByeHJPZmZqNldGRXhFOGNSUjhnS2VqOUQ0Qm14SXJT?=
 =?utf-8?B?bmx4ckxtT0Z2djZDamFWeDV4dkg4MG1BNGFZT1UrdHpiTmdJbDhkK2ZQZnRt?=
 =?utf-8?B?LzZPT3YzSlZlbkluQUZ3NDBiY2FuTGh6Y2JjQ05ucTNhUkNVdkhoVW9na0FN?=
 =?utf-8?B?MHBXYkV2NkhTMy9hZUk4M0ZRZXdPVWRCY2pjdU55SjhHNms5bmJSYlZVTGdo?=
 =?utf-8?B?T3N5RlNZNmZZVzVURFdVb3VJMllzSG9SZE5Gd1cwV1ExbExKa21xNWpTclI1?=
 =?utf-8?B?WEJDaXdYZk5vejNUQmVCQzdZY2JMejRzNitrTUxJamVYN215U2ZZV3hBZ2Uw?=
 =?utf-8?B?cG1DbzBBSFhrNGxRdkIzaFVoYlh6Skd0L28zb1ArSnpVL3VDZU4wN1hPK0hh?=
 =?utf-8?B?djlkZDZnMjdranFEQ3R6b1hzeENpcnpyUFBoZzdvMXFRWHk0VXo3Zm9nZUp2?=
 =?utf-8?B?MVQwc2FDaWNmcEd6MzNKQm9LVStxaDkxYzNpbmFyekxGOHo5MHJyREhJMnp0?=
 =?utf-8?B?N1E4cGJVcWJKZWdKQ1N2YzRPVHVrcklxM0pCOUhkSFVpK0FrbG0vSzVhaU1n?=
 =?utf-8?Q?iuCqQBsyC5s9oo5YlUQCvX9Zd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e984807a-857c-4c3d-1073-08dd92c840b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 09:18:13.2536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mo7UFYTImyEuUcL0CQpJf0OzWX07UC5Qmb/FrU5/uj7Cfp8keibSR93A64GyZrBVnMNOaACp/aH8MbrnQdpSWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5
LCBBcHJpbCA3LCAyMDI1IDc6NTQgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNv
bT47IE1hbm5hLCBBbmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIDA0LzExXSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIo
KQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IEFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IEdPU1VCIERTQiBpbnN0cnVjdGlv
biAoYXZhaWxhYmxlIG9uIHB0bCspLCB3aGljaA0KPiBpbnN0cnVjdHMgdGhlIERTQiB0byBqdW1w
IHRvIGEgZGlmZmVyZW50IGJ1ZmZlciwgZXhlY3V0aWUgdGhlIGNvbW1hbmRzIHRoZXJlLCBhbmQN
Cg0KTml0OiBUeXBvIGluICJleGVjdXRlIg0KDQo+IHRoZW4gcmV0dXJuIGV4ZWN1dGlvbiB0byB0
aGUgbmV4dCBpbnN0cnVjdGlvbiBpbiB0aGUgb3JpZ2luYWwgYnVmZmVyLg0KPiANCj4gVGhlcmUg
YXJlIGEgZmV3IGFsaWdubWVudCByZWxhdGVkIHdvcmthcm91bmRzIHRoYXQgbmVlZCB0byBiZSBk
ZWFsdCB3aXRoIHdoZW4NCj4gZW1pdHRpbmcgR09TVUIgaW5zdHJ1Y3Rpb24uDQo+IA0KPiB2Mjog
UmlnaHQgc2hpZnQgaGVhZCBhbmQgdGFpbCBwb2ludGVyIHBhc3NlZCB0byBnb3N1YiBjb21tYW5k
IChjaGFpdGFueWEpDQoNCkNoYW5nZXMgTG9vayBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgNTIgKysrKysrKysrKysr
KysrKysrKysrKysrDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgg
fCAgMiArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRleCAwZGUxNWUzYTlh
NTYuLjJjZGE2ZmM3ODU3YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+IEBAIC05Myw2ICs5Myw5IEBAIHN0cnVjdCBpbnRlbF9kc2Igew0KPiAgLyog
c2VlIERTQl9SRUdfVkFMVUVfTUFTSyAqLw0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX1BPTEwJCQkw
eEENCj4gIC8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCj4gKyNkZWZpbmUgRFNCX09QQ09E
RV9HT1NVQgkJMHhDIC8qIHB0bCsgKi8NCj4gKyNkZWZpbmUgICBEU0JfR09TVUJfSEVBRF9TSElG
VAkJMjYNCj4gKyNkZWZpbmUgICBEU0JfR09TVUJfVEFJTF9TSElGVAkJMA0KPiANCj4gIHN0YXRp
YyBib29sIHByZV9jb21taXRfaXNfdnJyX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiBAQCAtNTMz
LDYgKzUzNiw1NSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2JfYWxpZ25fdGFpbChzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IpDQo+ICAJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAvIDQ7DQo+ICB9
DQo+IA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHNiX2dvc3ViX2FsaWduKHN0cnVjdCBpbnRlbF9k
c2IgKmRzYikgew0KPiArCXUzMiBhbGlnbmVkX3RhaWwsIHRhaWw7DQo+ICsNCj4gKwlpbnRlbF9k
c2JfaW5zX2FsaWduKGRzYik7DQo+ICsNCj4gKwl0YWlsID0gZHNiLT5mcmVlX3BvcyAqIDQ7DQo+
ICsJYWxpZ25lZF90YWlsID0gQUxJR04odGFpbCwgQ0FDSEVMSU5FX0JZVEVTKTsNCj4gKw0KPiAr
CS8qDQo+ICsJICogIlRoZSBHT1NVQiBpbnN0cnVjdGlvbiBjYW5ub3QgYmUgcGxhY2VkIGluDQo+
ICsJICogIGNhY2hlbGluZSBRVyBzbG90IDYgb3IgNyAobnVtYmVyZWQgMC03KSINCj4gKwkgKi8N
Cj4gKwlpZiAoYWxpZ25lZF90YWlsIC0gdGFpbCA8PSAyICogOCkNCj4gKwkJaW50ZWxfZHNiX2J1
ZmZlcl9tZW1zZXQoJmRzYi0+ZHNiX2J1ZiwgZHNiLT5mcmVlX3BvcywgMCwNCj4gKwkJCQkJYWxp
Z25lZF90YWlsIC0gdGFpbCk7DQo+ICsNCj4gKwlkc2ItPmZyZWVfcG9zID0gYWxpZ25lZF90YWls
IC8gNDsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9kc2JfZ29zdWIoc3RydWN0IGludGVsX2Rz
YiAqZHNiLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1Yl9kc2IpDQo+ICt7DQo+ICsJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ICsJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMtPmJhc2UuZGV2KTsNCj4gKwl1
NjQgaGVhZF90YWlsOw0KPiArDQo+ICsJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgZHNi
LT5pZCAhPSBzdWJfZHNiLT5pZCkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWlmICghYXNzZXJ0
X2RzYl90YWlsX2lzX2FsaWduZWQoc3ViX2RzYikpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWlu
dGVsX2RzYl9nb3N1Yl9hbGlnbihkc2IpOw0KPiArDQo+ICsJaGVhZF90YWlsID0gKCh1NjQpKGlu
dGVsX2RzYl9oZWFkKHN1Yl9kc2IpID4+IDYpIDw8DQo+IERTQl9HT1NVQl9IRUFEX1NISUZUKSB8
DQo+ICsJCSgodTY0KShpbnRlbF9kc2JfdGFpbChzdWJfZHNiKSA+PiA2KSA8PA0KPiBEU0JfR09T
VUJfVEFJTF9TSElGVCk7DQo+ICsNCj4gKwlpbnRlbF9kc2JfZW1pdChkc2IsIGxvd2VyXzMyX2Jp
dHMoaGVhZF90YWlsKSwNCj4gKwkJICAgICAgIChEU0JfT1BDT0RFX0dPU1VCIDw8IERTQl9PUENP
REVfU0hJRlQpIHwNCj4gKwkJICAgICAgIHVwcGVyXzMyX2JpdHMoaGVhZF90YWlsKSk7DQo+ICsN
Cj4gKwkvKg0KPiArCSAqICJOT1RFOiB0aGUgaW5zdHJ1Y3Rpb25zIHdpdGhpbiB0aGUgY2FjaGVs
aW5lDQo+ICsJICogIEZPTExPV0lORyB0aGUgR09TVUIgaW5zdHJ1Y3Rpb24gbXVzdCBiZSBOT1Bz
LiINCj4gKwkgKi8NCj4gKwlpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiArfQ0KPiArDQo+
ICB2b2lkIGludGVsX2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSAgew0KPiAgCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5kZXggZTg0M2M1MmJmOTdjLi44YjJjZjBhN2I3
ZTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBA
QCAtNTcsNiArNTcsOCBAQCB2b2lkIGludGVsX2RzYl92YmxhbmtfZXZhZGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsICB2b2lkIGludGVsX2RzYl9wb2xsKHN0cnVjdCBpbnRl
bF9kc2IgKmRzYiwNCj4gIAkJICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywgdTMyIHZhbCwN
Cj4gIAkJICAgIGludCB3YWl0X3VzLCBpbnQgY291bnQpOw0KPiArdm9pZCBpbnRlbF9kc2JfZ29z
dWIoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1
Yl9kc2IpOw0KPiAgdm9pZCBpbnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCSAgICAgc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQkgICAgIHN0
cnVjdCBpbnRlbF9kc2IgKmNoYWluZWRfZHNiLA0KPiAtLQ0KPiAyLjI1LjENCg0K
