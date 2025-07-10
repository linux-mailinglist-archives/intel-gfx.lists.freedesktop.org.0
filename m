Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19556B00C62
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 21:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42DC10E23A;
	Thu, 10 Jul 2025 19:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CgFdalSq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6422110E23A;
 Thu, 10 Jul 2025 19:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752177268; x=1783713268;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ikQoNnpvXTLILBHW/yErtLfb8lmSQE2bm08jOgy5mA4=;
 b=CgFdalSqH7vL7j0Hmt82jwlb04n8mWgq+/uc1WblbhRPTjqAEAnWhpJu
 dBZd6kBDWTjTJtruv0AOT41EA/Gk8w9wp6n4bCVp25AkSsyFoW9qGdqtx
 Xbkyy6vpO0PE7t32B8bxX+L62kB0fSaaFl/ZF8Abbx8kJcOcW+gzuO/hE
 fIiOR2FIKDq1euzKuVGObkPSs7kIBfq+igXKhCzxJhJogZQmLm5XF49OD
 rtFuwRgb+eby1rBkmo71qlmG4eUcP+4kY/uQGdc/1VDj1i3wZjIx/r8d/
 +xM1drLqHNMlufgzrLcnm+H0JHUh2qEbEOFgSW8XBtovMkm0Ixr4ccotl w==;
X-CSE-ConnectionGUID: J+QgK18URXKukdv6O6YL2w==
X-CSE-MsgGUID: rpo1gYKPQD6A9JXkuhYfaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="79905845"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="79905845"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:54:28 -0700
X-CSE-ConnectionGUID: Hl2yVWjcRICs8lgfzSO0Zg==
X-CSE-MsgGUID: ZIbKXj5RTk2ApDa2BTb20w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="155601666"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:54:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 12:54:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 12:54:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.86) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 12:54:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AkmrPO20XqONPOuF01kj0h+9ZM8isGd0Zy8BCq8wysqKLlWjBruwbuda5V1SR4anRa+ieiFpl158K5GmomXWx5fPuafNxheGbKzDIl/nB79iLpXW8Ol7Gw5mu+5y3s6tOWnEZSrhBAFyxKTjlZ5FFwWPASPDvjXyisc7/5YBTfaQX/aDFXtSpflh/j49wIctnC+murb3b28IDWNqD/FPj9zcAPA80WO1eF7/qWnFktTNrepiAXxSt7k/iAofrt3zKU+iwwXz/x6KfN6sLJ5Qd8D8L3Eel/ynmR/8ptw3mr4WMOV9LRoDHfh5w5VJ4dZLRKSiJQtWqWOu0s+ge65bhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikQoNnpvXTLILBHW/yErtLfb8lmSQE2bm08jOgy5mA4=;
 b=fcX0yE1EAcbPshNhO4DU/8d9blU8wFnDk87pSy4Mn/6PGtphWL7uTCwrcEKhagvHvZstIC5jRfFNvIKXCCoF614tppspsi7dIZtWgTC0mpWPrCLU/oH553iLUk42myxJWejHUpTk1WAkY/Lhwi1gbimyFwKuG8l3SzOIzVUJToJabeUJe4zFCfFHfa8nTJ5ihnlNCObIbJ0iPCdI4+muMshbOyn50KQvW1mdZqteYFced+xHjh1ADHmefstp/eK2ChUQmxTScgraDaXyXdjDl3on91SFv6z9jco0Vy+Qp6Uy0Ros2nVG2Z1HQREqxcBbCgZn9kuMZuT6gS1+w+5W0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.25; Thu, 10 Jul
 2025 19:54:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Thu, 10 Jul 2025
 19:54:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Index: AQHb8Kc9L1K5oI2goUG+8WAYnsMpTLQpyRmAgAH+dAA=
Date: Thu, 10 Jul 2025 19:54:24 +0000
Message-ID: <457831176eba40000d6d155aa1c6b08179fa95f6.camel@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG5uO06jzY5EbPRq@intel.com>
In-Reply-To: <aG5uO06jzY5EbPRq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL3PR11MB6314:EE_
x-ms-office365-filtering-correlation-id: 06ba0a8e-f7ab-421d-f925-08ddbfeb924f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WWJLakpZL1d5SmVKZ054b0RxamVZbWxwdkx5SE5XeWZaL2RMVHU5d0hYY3Ew?=
 =?utf-8?B?anNuN2xWRkZrTkZtc0RwV25UQy9YUWdlQUFsUGdJZS80aUNlS0dBLzZFZHBu?=
 =?utf-8?B?ZkZpSU1acG8yclZWS0VSMGVhQ2lxT2czWTRQcmQ5THN6d1ArakJTelcyQUdX?=
 =?utf-8?B?L2hpT1BjdGhTa0JlYmFlY0FNTml1QVZ6NGRmQUZtbjVvVk11TDBjbEtmOUN5?=
 =?utf-8?B?czZISmxtdndGczJ2OHd4TkhXaCs4eEFiaEd4SjU3MzFKUVJ5U1BmOWVPWnh6?=
 =?utf-8?B?dHNmRkR1b29pblVpQjNHdmdGakE3ZmwwOUlWZjRtNnUrajE3b0V3dUg0eW0x?=
 =?utf-8?B?alVId0lqMkFTZFFSSERSU1pQVlFrdzJ1Y05Kc1ByamltVm1mOUl4aEVHNHpw?=
 =?utf-8?B?S2ZvSzB6a1NzRUhQaUJYWEpPTVVwSGdPNEZDMzl4Z3FXSVhUTkczOUxMTGkx?=
 =?utf-8?B?RURiaS81Q2xPeTJPSmRER3RiRWdQeCtxQ01SNGNHa1k4dXVpZ2ErYUhNMWtD?=
 =?utf-8?B?Q1Z2c1dsUVVqUmdCT0JjQ2RMdm11NkIrOUY0T1hhU3liSUl2U3pSazdXdWxY?=
 =?utf-8?B?MHJwbHd1aDFMd3BkWlNQMXZHSmpQTkkvUkkvcFkyancydkRGMVI3dkpRR3hO?=
 =?utf-8?B?dU90RU01N0Q2SFg2eUhWV29ZaDY1OWlDQzV0ZzZ3cEd3cHYwa1hKN1BBdWlw?=
 =?utf-8?B?Tmxmc2psNllta0dsSFo0UTFpUFRncTF0VEd0SXJTK1VkUXRRQ3lJSHVzY1Y2?=
 =?utf-8?B?ZkpGUUZ4NnNSRm5aYXJSaFJ4UjU0bzdZTElVSUxvNlhkUEk3M0xaNHZCLy9I?=
 =?utf-8?B?QVZ0Z1U4U21CaVptTWNheFpXMmR3WmJPWDYwMnBkcDZQaXlzcng2NVB5TUp0?=
 =?utf-8?B?cENUcEVYZXdNeEdMRS9ZSmxoYjZYR1B3MXE1UWp6c2Y2T2JjM2tWa1dZR3hX?=
 =?utf-8?B?WlVnWUpkNGtTWmFIamQxRlZlNEpseVVjelBCTm5xb1Z1QWlKalVvVVp0L01O?=
 =?utf-8?B?c3dMUndIcENRR0R6cSs2eDJzakxqdlUwc2JpWStzM1FXR2lpejdaVzVWU3VS?=
 =?utf-8?B?RFM3d2JBMmZvUEx5R1l0ZzhSK3hGUmg0dFIzaTlVd1lmUyt5eGJubzJ1akd1?=
 =?utf-8?B?dzhoWHlWSzY4Q1lNMy9Ca1J0RTl1TWxQMUtxYTBhWVBpbVVaTzlSZDFwajF3?=
 =?utf-8?B?WTY3T3BZV0loSHREbVpweXhXVEEyb1BCdWhuTWtCL1ExZHFuT29hZGd3Zzlr?=
 =?utf-8?B?bDdSTy91bXhqdnpncE0wRWZhNGg4SWNBb1VKYThucUpXMzFYYTl3YkhSUzZo?=
 =?utf-8?B?QUZEMGpRa0w2d0ErSkdYWkc1YUhQa09IRzNjdFBxRUFkV0o5Y1IvSlFMcTFl?=
 =?utf-8?B?WGx0dElDb1hCcXduYkNTT0ZQbHlVZEJqTlE1dU9LUllEZTFIUEQ3a3BhWEN6?=
 =?utf-8?B?SW1WaHFkVjh1bGJBLzlmQ3YyVlJldXgrMHJkcmcvWkpBbjVLN3JkZmJBV01K?=
 =?utf-8?B?U1YwbXRQY1hra2lyU29qR0grRi9VOWVmejZSLzBYdnF2U1Vwb0dIakttdDRB?=
 =?utf-8?B?Nlkxc1hhN0FueHFFc3JpcHRkSm9qUko1enlNeUFtS3hheEFCSW1WZmZWbnRw?=
 =?utf-8?B?Vi8wQUg5OUNWeThtcytucGFqbnB3QXJjVDJkV0dXY3ovdkU3Y0U1dFBhUURV?=
 =?utf-8?B?T3RqZ3ArblhJVjZlNk1ObGw0eXYybDhxVXVqM2xCNTdaL2tmeVpyNEpuUnpo?=
 =?utf-8?B?M1VGbDR1eVAyYkNsaURvd0pveCtHbFBNTkJTUmJHU0VoaTJySkNnSGd5Umh2?=
 =?utf-8?B?SFFZTjhHNWMraE8zZkFWT3pEWWZXWWdTdldYMlRidGF2MHlWN25mVXhnSE9z?=
 =?utf-8?B?dklTcFkxNHRRR2t6QkFobXRTZC92YmtwUU8yZU1ZR1FubGdpd2k2OTgyNE1P?=
 =?utf-8?B?TWUxNEpqRjlWeXRtOUp3RjdScFlkN0NCMG9zaStVNm1ZVkhNTTFWVUw1NXZK?=
 =?utf-8?B?cEZlOVB1OFNBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czNxUjVRazI1cWszdXdoUnoxWFA0cTVLY1Z5dWNuN2NFUEd6QkJyR3pCdTZD?=
 =?utf-8?B?UkVxL2c5TmR1RUFIVFNkKzlienJwS3Z5VlJPZDJYQ0ZBcE5MYW5Dd0dtaytN?=
 =?utf-8?B?YUlremNrUWtCZzBBUU5mZTR5QTRlVG5ZMGFTeTByVGRwVytnR2VYZkhpelZr?=
 =?utf-8?B?K2g4bDc3YXVua1lqRDFnT1hpOEdrcG9hSU9mM1R6UExEbVAvRDNseUgzTkNC?=
 =?utf-8?B?ZXYwSjdBU3I0Z2d0Mll2cEs1ZVB6aXMxcUtNelhBM29VeXRzMS9WMjJtWG1R?=
 =?utf-8?B?aVB0anI0OUhlK1VlSitOV2NHbFhuRzN3eVhhbVU1K2NORzdjWnJwTjJiUEtK?=
 =?utf-8?B?aUxJazVOb2RmaHBBNFVrSkVUUk5MZGZBMytLUVZDd2FiL1dTS0xuNHh1MXBM?=
 =?utf-8?B?Zzk0QkZyeXBycTZCMWkrMkVzQXdZdGhMQXFOeHZNd1g0ckYveUhOdGNZaHVZ?=
 =?utf-8?B?VythdndvMGE5U1hFOEZteWNjOHBwMUtnWDBwQTljYXkzSy9OSVRodU55QlU1?=
 =?utf-8?B?dGVOaUlqejBIV3NydDh1TDlYTDRFaFVzRkZmYTY4RllaaHdxKy9YRVpUc29P?=
 =?utf-8?B?V2t2VTdLWG9mbjRDa1pPRjFUbGwzR21WQ2lJOFh4Tld6NnVRSXR3RjdaT1BZ?=
 =?utf-8?B?TzBtQ1BoR1FGOXkxVlRjdTJUY3lUVmpNeEU2R2dLditaTjRSelhreGwzUEx3?=
 =?utf-8?B?ZytXN1FNRkZiMHJlU2FaSGRmdHpXVTcyL0o2K3BzTmxCMVNkMVg1aGp3ZUxH?=
 =?utf-8?B?MVpJZ3A0K1plSzNXMmpqOU9MNjJRNHFhajJmUHJrbTJ2aWdjRUZtYUZNZHlS?=
 =?utf-8?B?bVlDN2F5TERaYWtOazd4MjJSYUUxMStIMzloY3ZBWDgweUg5MHRNdmh5cHlB?=
 =?utf-8?B?eksxT000ejBUYTJVLzlLZjNDVktwQlRoVjFMVGNObGkrazNSZWJzYXI5dUtW?=
 =?utf-8?B?VlNzZlI3enNpT2xsRHpqNWJFdGx4WjZ3SjJMY1dQSllLMTZZZW9TS3d4YlFh?=
 =?utf-8?B?ajJYOEM0ZG9MdjNJMTBzcXhtTE5xVjdRc2tHVUVuVDlxYzVmVXJiUlE4RnpV?=
 =?utf-8?B?U2c0SHFQeXBHc3lpODRDZlBRV3ZWNjdsaXRhK1pyaE0vM0w1QThzOVhTVE1m?=
 =?utf-8?B?alM2RkdOSkg3aUJNZVNLV0FmdUV1S1RVNm13c2pzc1M5OFhXMHRpZi83Ym42?=
 =?utf-8?B?WFkrRVN6ZTk3RDdwT1lyNWU3N2FmZExwZW9KcFFJNVdJeTVEck5ESlRmSUc3?=
 =?utf-8?B?QURVZE5JSjlRLzhWWTQvRnRNMEdxWmdkN0lHK2Nobk1ja1R6R2ZrZm9Qemcz?=
 =?utf-8?B?VEV4UnQwaXEwMm9VaFUySU1ETTdMSWNiZ2NlemxCZkd1R1lEek1xYmExak5l?=
 =?utf-8?B?YjRmN1ZaR21rN1FnRXlZN2Z5TUxJM28wSWx0THdlU2NBYkNZNFdTcm9NZFc1?=
 =?utf-8?B?cUNyVisrVmpleGdrVkUrMDBHbjZQUnhyZ1RHdHE0K3ZSYVlXL3N2R1hiYzFT?=
 =?utf-8?B?ejhYN0lGYmNqRnNIZTRscWQ0cnRFWktrNTcrY2REUnZDcUFsNjVlT25Td1Zl?=
 =?utf-8?B?dnlxUDJHcU95dUJ3eEpwSDdGM1VBNldLSEhmVEpxR2NrZGhPSnJuK2phVitk?=
 =?utf-8?B?dTJVVDVxNHlFZElTSjd0MlU4TDBqZDM5Q0R1V0psdEEycVIrQ3FBNXEyNWJG?=
 =?utf-8?B?ak5ZTHhmelppWHZIL2RZQndTWkxvZU1vNDZvMEZ5YWxFS2FNVmo1eURZMW4w?=
 =?utf-8?B?UzVpRGl1SkpIa1RoUHd2VzVtallsVTdzeUphQzJLUis1b2JldnFCSURxSVpZ?=
 =?utf-8?B?eVlKSEFMNHp5M252Y01JNSs1MWZXZG4xK2RaajVOR0pSQ2hUUHdMU05rV1dp?=
 =?utf-8?B?MlBiQUR3NFQ4U3FtYTRVc0ZXVThlNmhFTmpjd21LS0JlOW9wcy8xUWEvYXBw?=
 =?utf-8?B?Q2Z6aXI3RkRIeG01VlZSclVsbWV0NDhLMDJtdU5SSzRyNDd6ZEJoeEgwejk0?=
 =?utf-8?B?c1lITHZHWFFjYmc2RHZpcHVvby9HSnczT3oycEtNa1lvMFZJV29DVEhrM1RV?=
 =?utf-8?B?WGFTamE0enp5SmRIcUZUSWM1Y3NmSFBpK2JudVhjVkd0aFd6RjlTM3JZL0Uv?=
 =?utf-8?B?VUlSMndsKzgrWUE0R0F4K044Y1pCeGdCZGZXU3ZzVSttdDFnZkZFM3RRVG1r?=
 =?utf-8?B?V0hJT3d2ZGpYT3RWdmpqUzVmVWJHeVFrRHNWbWwyNUZUTXhHWTFTOVdML1Bo?=
 =?utf-8?B?d3pVTmJlUWNjRXFIRmJ2UFpVUlpBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <66D134BCB3577F4299A5AEB9700D2A00@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ba0a8e-f7ab-421d-f925-08ddbfeb924f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2025 19:54:24.9036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vf4+QyLFZNwvojUx9q5m/CE0NAsTfpcx5FLwE/UT0WW7bvTvwao7RivHcni1U74OQftYK+m62A7hcS6mjWFxWVFV54NIR1daVorur2UuRyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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

T24gV2VkLCAyMDI1LTA3LTA5IGF0IDA5OjI3IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFdlZCwgSnVsIDA5LCAyMDI1IGF0IDEwOjU3OjU4QU0gKzAzMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiBDdXJyZW50bHkgZGlzYWJsaW5nIFBTUjIgdmlhIGVuYWJsZV9wc3IgbW9k
dWxlIHBhcmFtZXRlciBjYXVzZXMNCj4gPiBQYW5lbA0KPiA+IFJlcGxheSBiZWluZyBkaXNhYmxl
ZCBhcyB3ZWxsLiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhpcyBieSBzdGlsbA0KPiA+IGFsbG93aW5n
DQo+ID4gUGFuZWwgUmVwbGF5IGV2ZW4gaWYgUFNSMiBpcyBkaXNhYmxlZC4NCj4gPiANCj4gPiBB
ZnRlciB0aGlzIHBhdGNoIGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFtZXRlciB2YWx1ZXMgYXJlOg0K
PiA+IA0KPiA+IC0xID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVwbGF5IDogeWVz
DQo+ID4gwqAwID0gUFNSMSA6IG5vLMKgIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBubw0K
PiA+IMKgMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiB5ZXMNCj4g
PiDCoDIgPSBQU1IxIDogeWVzLCBQU1IyID0geWVzLCBQYW5lbCBSZXBsYXkgOiBubw0KPiA+IMKg
MyA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBubw0KPiA+IA0KPiA+
IEkuZS4gdmFsdWVzIGRpZmZlcmVudCB0aGFuIC0xIGFuZCAwIGFyZSBoYW5kbGVkIGFzIGJpdG1h
c2tzIHdoZXJlDQo+ID4gQklUMA0KPiA+IGRpc2FibGVzIFBTUjIgYW5kIEJJVDEgZGlzYWJsZXMg
UGFuZWwgUmVwbGF5Lg0KPiA+IA0KPiA+IHYyOg0KPiA+IMKgIC0gbWFrZSBpdCBtb3JlIGNsZWFy
IHRoYXQgZW5hYmxlX3BzciBpcyBiaXRtYXNrIGZvciBkaXNhYmxpbmcNCj4gPiBkaWZmZXJlbnQN
Cj4gPiDCoMKgwqAgUFNSIG1vZGVzDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jwqDCoCB8wqAgNiArKy0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAy
MiArKysrKysrKysrKysrKy0NCj4gPiAtLS0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gaW5k
ZXggNzUzMTYyNDdlZThhLi4xOTVhZjE5ZWNlNWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gQEAg
LTExNiw5ICsxMTYsOSBAQCBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVf
ZmJjLA0KPiA+IGludCwgMDQwMCwNCj4gPiDCoAkiKGRlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAg
ZGVmYXVsdCkpIik7DQo+ID4gwqANCj4gPiDCoGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWRfdW5z
YWZlKGVuYWJsZV9wc3IsIGludCwgMDQwMCwNCj4gPiAtCSJFbmFibGUgUFNSICINCj4gPiAtCSIo
MD1kaXNhYmxlZCwgMT1lbmFibGUgdXAgdG8gUFNSMSwgMj1lbmFibGUgdXAgdG8gUFNSMikgIg0K
PiA+IC0JIkRlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiArCSJFbmFi
bGUgUFNSICgwPWRpc2FibGVkLCAxPWRpc2FibGUgUFNSMiAoQklUMCksIDI9ZGlzYWJsZQ0KPiA+
IFBhbmVsIFJlcGxheSAoQklUMSkpLiINCj4gPiArCSJWYWx1ZXMgZGlmZmVyZW50IGZyb20gMCBh
bmQgLTEgYXJlIGhhbmRsZWQgYXMgYml0bWFzayB0bw0KPiA+IGRpc2FibGUgZGlmZmVyZW50IFBT
UiBtb2Rlcy4iDQo+ID4gKwkiRS5nLiB2YWx1ZSAzIGRpc2FibGVzIGJvdGggUFNSMiBhbmQgUGFu
ZWwgUmVwbGF5Lg0KPiA+IERlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4g
PiDCoA0KPiA+IMKgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZChwc3Jfc2FmZXN0X3BhcmFtcywg
Ym9vbCwgMDQwMCwNCj4gPiDCoAkiUmVwbGFjZSBQU1IgVkJUIHBhcmFtZXRlcnMgYnkgdGhlIHNh
ZmVzdCBhbmQgbm90IG9wdGltYWwNCj4gPiBvbmVzLiBUaGlzICINCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGEyYjU2ODhmMGM4Mi4u
OTU5Yjg2ODY3MmQwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gQEAgLTI1NCwxMyArMjU0LDE2IEBAIHN0YXRpYyBib29sIHBzcjJfZ2xv
YmFsX2VuYWJsZWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+
IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2RwKTsNCj4gPiDCoA0KPiA+ICsJcmV0dXJuIGRpc3BsYXktPnBhcmFtcy5lbmFibGVf
cHNyID09IC0xIHx8DQo+ID4gKwkJIShkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX3BzciAmIDB4MSk7
DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBib29sIHNlbF91cGRhdGVfZ2xvYmFsX2VuYWJs
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiArew0KPiA+IMKgCXN3aXRjaCAoaW50
ZWxfZHAtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX01PREVfTUFTSykgew0KPiA+IC0JY2Fz
ZSBJOTE1X1BTUl9ERUJVR19ESVNBQkxFOg0KPiA+IMKgCWNhc2UgSTkxNV9QU1JfREVCVUdfRk9S
Q0VfUFNSMToNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+IMKgCWRlZmF1bHQ6DQo+ID4gLQkJ
aWYgKGRpc3BsYXktPnBhcmFtcy5lbmFibGVfcHNyID09IDEpDQo+ID4gLQkJCXJldHVybiBmYWxz
ZTsNCj4gPiDCoAkJcmV0dXJuIHRydWU7DQo+ID4gwqAJfQ0KPiA+IMKgfQ0KPiA+IEBAIC0yNjks
NyArMjcyLDggQEAgc3RhdGljIGJvb2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0cnVj
dA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4g
wqANCj4gPiAtCWlmICgoZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEpIHx8DQo+ID4g
KwlpZiAoKGRpc3BsYXktPnBhcmFtcy5lbmFibGVfcHNyICE9IC0xICYmDQo+ID4gKwnCoMKgwqDC
oCBkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX3BzciAmIDB4MikgfHwNCj4gDQo+IEkgYmVsaWV2ZSB3
ZSBzaG91bGQgcHJvYmFibHkgZGVmaW5lIHRoZSBiaXRzDQo+IA0KPiAjZGVmaW5lIFBTUl9QQVJB
TV9ESVNBQkxFX1BTUjIJCUJJVCgwKQ0KPiAjZGVmaW5lIFBTUl9QQVJBTV9ESVNBQkxFX1BBTkVM
X1JFUExBWQlCSVQoMSkNCj4gDQo+IGxpa2VseSBoZXJlIGluIHRoaXMgLmMgZmlsZSBpdHNlbGYs
IG5vdCBuZWVkZWQgdG8gYmUgYWxvbmcgd2l0aCB0aGUNCj4gcGFyYW0NCj4gYnV0IHVwIHRvIHlv
dSwgaWYgeW91IGJlbGlldmUgaXQgbWFrZXMgbW9yZSBzZW5zZSBhbmQgZ2V0cyBjbGVhcg0KPiB0
aGVyZS4uLg0KDQpJIGhhdmUgZG9uZSB0aGlzIGNoYW5nZSBpbiB2ZXJzaW9uIDMuDQoNCkJSLA0K
DQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiDCoAnCoMKgwqAgKGludGVsX2RwLT5wc3IuZGVi
dWcgJg0KPiA+IEk5MTVfUFNSX0RFQlVHX1BBTkVMX1JFUExBWV9ESVNBQkxFKSkNCj4gPiDCoAkJ
cmV0dXJuIGZhbHNlOw0KPiA+IMKgCXJldHVybiB0cnVlOw0KPiA+IEBAIC0xNDE1LDYgKzE0MTks
MTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+ID4gaW50
ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgCWlmICghaW50ZWxfZHAtPnBzci5zaW5rX3BzcjJfc3Vw
cG9ydCkNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+IMKgDQo+ID4gKwlpZiAoIXBzcjJfZ2xv
YmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJt
LA0KPiA+ICsJCQnCoMKgwqAgIlBTUjIgZGlzYWJsZWQgYnkgZmxhZ1xuIik7DQo+ID4gKwkJcmV0
dXJuIGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiDCoAkvKiBKU0wgYW5kIEVITCBvbmx5IHN1
cHBvcnRzIGVEUCAxLjMgKi8NCj4gPiDCoAlpZiAoZGlzcGxheS0+cGxhdGZvcm0uamFzcGVybGFr
ZSB8fCBkaXNwbGF5LQ0KPiA+ID5wbGF0Zm9ybS5lbGtoYXJ0bGFrZSkgew0KPiA+IMKgCQlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJQU1IyIG5vdCBzdXBwb3J0ZWQgYnkNCj4gPiBwaHlcbiIp
Ow0KPiA+IEBAIC0xNTE3LDcgKzE1MjcsNyBAQCBzdGF0aWMgYm9vbA0KPiA+IGludGVsX3NlbF91
cGRhdGVfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJCWdv
dG8gdW5zdXBwb3J0ZWQ7DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gLQlpZiAoIXBzcjJfZ2xvYmFs
X2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gKwlpZiAoIXNlbF91cGRhdGVfZ2xvYmFsX2VuYWJs
ZWQoaW50ZWxfZHApKSB7DQo+ID4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiDC
oAkJCcKgwqDCoCAiU2VsZWN0aXZlIHVwZGF0ZSBkaXNhYmxlZCBieQ0KPiA+IGZsYWdcbiIpOw0K
PiA+IMKgCQlnb3RvIHVuc3VwcG9ydGVkOw0KPiA+IEBAIC0xNjY0LDcgKzE2NzQsNyBAQCB2b2lk
IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAs
DQo+ID4gwqAJdTggYWN0aXZlX3BpcGVzID0gMDsNCj4gPiDCoA0KPiA+IMKgCWlmICghcHNyX2ds
b2JhbF9lbmFibGVkKGludGVsX2RwKSkgew0KPiA+IC0JCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwgIlBTUiBkaXNhYmxlZCBieQ0KPiA+IGZsYWdcbiIpOw0KPiA+ICsJCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwgIlBTUi9QYW5lbCBSZXBsYXkNCj4gPiBkaXNhYmxlZCBieSBmbGFnXG4iKTsN
Cj4gPiDCoAkJcmV0dXJuOw0KPiA+IMKgCX0NCj4gPiDCoA0KPiA+IC0tIA0KPiA+IDIuNDMuMA0K
PiA+IA0KDQo=
