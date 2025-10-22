Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB768BF9E81
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 06:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47B8F10E69E;
	Wed, 22 Oct 2025 04:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="buA+P+bV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2E410E69E;
 Wed, 22 Oct 2025 04:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761105936; x=1792641936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k29m65rAh1bkaqHX1T/ENJfFE/3XGz70fAnoOPpFimk=;
 b=buA+P+bVKXYMkrvqKH3319GDwx9xKbIPwT6PBa1pius+wvFN7pEwc8es
 MBBz23u/X0VpT37Z5nmPdDGEEb8fmhs1QCuah16RV7LcuTKLzEwfeyZMJ
 Hwq6KRi42fIcZjQAVWzzr5kYiqGZxwo2i7Ab6eawOSHiOTB6MZ8jGgvNz
 obGIf+ANYu/wgipCUQBAUYoMOGB9we2uHDMrnL8dm6kHIksKHTuQW4zIl
 GgNi9QJjJQ99lK79VKC+BmEPVGb4O82p553W+uArHsOYYhIlSdaDvLEXD
 exkoqvLGlegRT8k48Zex2Ra7JHIWED4IbU1LF4Dk3QMMUBalIYCgI8PP6 Q==;
X-CSE-ConnectionGUID: phO967GwR6WpRloRXoK5Dg==
X-CSE-MsgGUID: RRUcQmGLSOeSib0Q2aOJxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62452746"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62452746"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 21:05:35 -0700
X-CSE-ConnectionGUID: UN1Gg238T0q36ybicnDJcA==
X-CSE-MsgGUID: sz1qEU3WRLSXoVEIeA3eyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183701661"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 21:05:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 21:05:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 21:05:35 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 21:05:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t0cVhPnjg3jFUSMbX/mEJfIHeErx+woxFlk61KaHOewuOhMsv4pywohWnnbTNsHbLsi1pKtVCYDFfsI4bI10AMydO3vMNDhrOad6YIB+cxoGOWATkMsqL6RQvuiec0h9xtiNCzexyVVJ8L3S1uK36W/o87yHt9c4O/s7KCoReHaLm8PEbPE0vT2aFfdMJkBtaLWOiVPt8fGlykBBNUZ64w3wL2yYCKgS5DrQlnqn+9h6GtTqm5OZf9nNPl/Z8WaexqWiFUiOi7VDsl757U0z7hC94ExtV5t65T7IX9U5ikxgMVfDiGwR1IE7VsMIQ+48qFkiY2A6GaAFbWra0Y//pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k29m65rAh1bkaqHX1T/ENJfFE/3XGz70fAnoOPpFimk=;
 b=ooZ8dqyc/WsI7IH0IQcDrEt4N1FaGKfIoXFNx+ZLmTHqR3EneFJoOoBcgNZirb8tHEAxc2Y1jo5THH0fhp8OEu3X4YCmSoPcXU3GuZm6dalAX1EKcQxQHGYM+25vo+MUOhXLe2yRJNTyNbDqfPrH4zpTobnw7bz2knafrsfQrXWC/i86fporWc3AEh6IbLW04OtvbM5XQvk7yRhoyEedg0daJPLG9so+xjc20Z1/2g0JjMXsf8MwMFecGzr0JwEcTTqJ/Uij9/DwQaRfG1JtKsUnxIwtZJAg1n0faebWG4/xudL8pJaqKoB7meAHTmbIWGb3P5eQUjHS1wJlHxOu/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6864.namprd11.prod.outlook.com
 (2603:10b6:303:21b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Wed, 22 Oct
 2025 04:05:27 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9228.016; Wed, 22 Oct 2025
 04:05:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>, "Sousa,
 Gustavo" <gustavo.sousa@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: [PATCH 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Thread-Topic: [PATCH 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Thread-Index: AQHcPYllz5RXwJb6TUy06M5fUMvRILTK6SIAgAKt2uA=
Date: Wed, 22 Oct 2025 04:05:26 +0000
Message-ID: <DM3PPF208195D8D54AB27EB0C6E84363BB7E3F3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-2-suraj.kandpal@intel.com>
 <61325376f82149d4baf73ea0a4bb2a1dfc378033@intel.com>
In-Reply-To: <61325376f82149d4baf73ea0a4bb2a1dfc378033@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6864:EE_
x-ms-office365-filtering-correlation-id: e475babe-dec0-45b6-a599-08de11203bb1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dXgxQjMzYjB5V01kVTQydHB6OU1iVmNKeEdVRGV1NTlUb1YwWFd2ZURCVjVl?=
 =?utf-8?B?dG5zR3BaNlVGOHhhOWtXemtEbStzVmlBOUpRV0dKNXpFelVXWTFCS0R4eDJZ?=
 =?utf-8?B?TjljNTY1cXdiUXdCOGJDdzRPMGN3YzFsZGxscGRqTUFEcCtZVEVFZzQzQjVG?=
 =?utf-8?B?c0FvNDQwQk9kd3lsQWQ1M0tESVBMNDFjUDhHZUhlazFCSlIyTjJjeEsrWThM?=
 =?utf-8?B?S0ZRUGJ2NUVLdU1PVkJjZkp3Wjk5eXNGNFFDR20zRGRIOWJDM2liQlkvTEVo?=
 =?utf-8?B?c1RKdVhvR1dlTDlBcDNPME5rdjJjTDQ1TUZyNG1VeFVCMUtsU29TektoYmow?=
 =?utf-8?B?bUZ0VWxGdm9Mem5hS2lGZ1owWUNjdExpNmZiODFHNkpBa1dRcmhBbVBtRXkv?=
 =?utf-8?B?dDhDNUtZSGltZzZtMDV6ZUpnU1hpWnNDTkFzS2hjV1I2ejVGOUtnQXluQmwr?=
 =?utf-8?B?d09qcUhOSDZnUVN1YTBUK1Z3cDdBM0E0NWZ4RSsxdE1oRDNwU1VlMCtzUXRv?=
 =?utf-8?B?ai9jQTBlUHJaeit0bXlxS0ZGSkQ3aU9MVlFLcm5SMFRYVlZQMzlLUUVBcTY0?=
 =?utf-8?B?aElwSFJpNHo0a1VrYWdQc1BqSllrUStabXpTWEIwRlloQjMzbUloZExJRHdX?=
 =?utf-8?B?UHBqbDhRWW5sbFppZ244SDZvZVlCdHlVQjdvbWN1a2tIMkh1VHFIMUJDMm9k?=
 =?utf-8?B?RkdCcmd2eW5ONDF3NFFVM1gxRk9qdU04RWIxQ2o3UGUyM0VYdFlsMDlZR1Nz?=
 =?utf-8?B?R3hWWkIzSzhraCt5M2dTM09vVGtzM0RRNmtCUGd5TnJjM2x2dEQrTzhieWFp?=
 =?utf-8?B?SnNSOE9EZWcvSnNUNFZiQWszbDdpK2I1ZWJKUFJyUjhTQ0FnQnZkRmdoQ1dm?=
 =?utf-8?B?anZwYnYrSkFlVmMvRk0xWVdhNk9EQjFmSVBwTlVSdGNQK09WVmFOVUlzdGdr?=
 =?utf-8?B?bHRRN1R2S3dZbUJ6c2Q2NloxUnM0KzdPQ2hnNGdLYXVIemY2VVZuUWZZQVhK?=
 =?utf-8?B?ZjVTV0hJV1RaV3EwZFdoZUcyUHd2WDN4ekhWTUFrbW0yU2xkVllaeTBaMlBs?=
 =?utf-8?B?ZUNoZGJEWmp2VXhyblNUNEFVZGNzL3pzd2hEWDRPd3VvK25nVG5MSUJ5UzZx?=
 =?utf-8?B?ODBPRllVUEtKdk1DVVZMWTNWOFcvNWQ1bWJobktIZ3g5eEI5RUN5dytrNkph?=
 =?utf-8?B?Q2l3YlE0T3ErUmZudzAzU3FLU2dsMXA1R2s2S2J1QTNBK01UdWZxNGdjY2FD?=
 =?utf-8?B?Njd4MlZHMEpiY0xpY3phcC9NclFFQm9ZeVkreGUwdENsc2Qwc25GajM3V3Nm?=
 =?utf-8?B?ZTBpNjVzZnROeE50a1JoVlRDaFJSYit6Vk5TY2xORXhLSUplMlN1WGRmL25i?=
 =?utf-8?B?aFNYbUNCQmxwcWJOSVlCM01qSjdscHQzaUVkd0xLNjMybG94S3lJQ2lQaTBK?=
 =?utf-8?B?akg3anJUWkptMmtZbE84SjFOUHB2eW85MGpnKzYvR3F3cE9RZ1VuVUhVTXRS?=
 =?utf-8?B?VWxrTysyNmVvbTcveTlNMTlWK1RyTk5JcERMQitQdU5BS2xZS0FkT2lhQlFF?=
 =?utf-8?B?TjJKVG5kTkJaUXdNWDBCQWcraEJQOGgyQWlJK2YrRWVOU2VHZERyY0tGeFYw?=
 =?utf-8?B?TTY3NzZFOUU2SE8vVUQ3VUg4bVJsbjVNNnZPeER6UjBSTEFXWXZBdWZPZ2li?=
 =?utf-8?B?RjF1ajdpOUl5OTJnc3BwTUFCMTdmRW1pa3dtOG1vQ3ZmOVI0OVkwNDZGTnE1?=
 =?utf-8?B?TVRLQUlicGQ0ajUxRWRFZytKaStDOTNSdDNXRHBVOHJ5Sk5FYTU5Y1o4RXdU?=
 =?utf-8?B?NUFZd0VYZ1VPajFlVDBSNUJpS25qU0U2VzBIV1JKUmFERFpyTTY3anFSSVhG?=
 =?utf-8?B?UkZ2UXlpbXMzVWtQQ3NuUEJyMXZWU3cxdjZMbExpSUVEd0lLQ1FINzlYY0dS?=
 =?utf-8?B?Uk9KL1VYSVJPRzRlU0diVm1LaTJDQmg1bW1IMFczSXJJV2F6dVVGUW5PY2gz?=
 =?utf-8?B?NFlqbnFoamQxbnBkemRPZXQxTm8yaEczZWlQL055VjZybng1NzZiTWY2dHZT?=
 =?utf-8?Q?NBBA41?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1JLQmpHUnZnd3YrdkQ5TzBtVXNYWHRVUWhBamtsbzduMEthaVNCd21SQXVk?=
 =?utf-8?B?YVMxTlVObkxqNml6dWZBYmZ4VTA0bEFsQ3ZEYWVlK09BU1V2SXcwc0hUcG83?=
 =?utf-8?B?a0ZvVUdnNXVrT294TGJvUWMzYmlKdHRxZS8zaEYxWm4vUm9qc1ErbUlVZ1RS?=
 =?utf-8?B?YkF2d1lqR1loQm5UYUdOVG4yNE45amRvdjJwRzlZemtQcTkvVzFqTTVhL3hM?=
 =?utf-8?B?VzlLeHBWL29XRjk2RHI3b1hVOS9TTGljVXhtNHJXcnF0bFpaalBhNVVNMDly?=
 =?utf-8?B?M25adG1jSmQ0eTNzRFVvVS9Vd3NwZ0g3ZFNMN1NsNjQvOUJ6UDhVOXM4ZW9x?=
 =?utf-8?B?bk1LSmNSZjRXRE5FckNyUWdJRWQwdDgzMWs2N3NkcjVuYVc1Q2lGUlZOeENR?=
 =?utf-8?B?dFZRNHNMSHhHMXBPcERqWG1ERVFuYjNUbDgvZ0U3T3djUnBnejVDU0ljSnA1?=
 =?utf-8?B?Rlg3TTlNVnZRaXZUNmczajd0VUllZG43NTljbjlPZmdWa1dhZk9iN3lrdFVU?=
 =?utf-8?B?cjBwUFFrNXpRZkh1cU5mTXBRbEFHL1Q5K21weEc4ZFEzMm4wc1ZVRS9EaVJV?=
 =?utf-8?B?WWRIVVVwTFQzOU0reS9LVmRWbkFmdXNYaFNPSXdNdk1oZ1YwSlRRRFl6eVdR?=
 =?utf-8?B?RXYyZFkxaStNSXA0S2x4ZS81ZThCaGFzdy8vNDVXUENrblZGNDhMRERUZnBl?=
 =?utf-8?B?ZElaTE9XR2phSWJNc1o2Qm10ZzRPN3pTZFZQdWdyM2oxSmRBaStVYmVzWFgv?=
 =?utf-8?B?RTB6elUvU1lYOWVCbGVubTBmOVp5ZVVEYkJSOVdscHVpWDZNS0VLVERmL2xy?=
 =?utf-8?B?VnZIYjRwWmhZUTZmL25NNGVCQmpSTDNHTXhRNVdrdmZJRVNLMWpsNHF0Qmsw?=
 =?utf-8?B?QWFpa1F4WmI3TVRtdDAwMzBJUUlxRHQzTytDcGdxL1VjY2U2cUZIUHpIaVBr?=
 =?utf-8?B?K3ZMckhXeFRnbmh5VkMvdENZQVJWMXExYy9VbUVXV2M0UXREcFdjVisrZE56?=
 =?utf-8?B?SXIvdGFpcnBpYzZUR0pwMjZ5eVVOK0hxVWNPRUN5UUtINzVNSEZUdCttajdr?=
 =?utf-8?B?VHVOaHJZdllLQWhXVE9QOU9Cdy8yN2RUdzhrYmNrSHR3Sk8ySnNYQWNWTnFM?=
 =?utf-8?B?Vko0dHVkM1FOU0p6UWRmSys4WUFZS09oNWVvUVdMRjZsc3BjU0JFUyt2SUYz?=
 =?utf-8?B?NDdwNTZ0eWFudFduTzl1U3o0dDBsb081TnRhKzFmanJOczcvczFzdXV4b0FY?=
 =?utf-8?B?eHNJdFdWZTQ3VGl4Z3hlaTVoWWRoRjBudTk3Njd0TWkyR3VEckNYdkZtUjI2?=
 =?utf-8?B?TjBiMmszUDkrRVhoMWx5Y3llNkNTbEdLeHNMNmxQWXlRRXRYL3ZXWVRWSUU0?=
 =?utf-8?B?Qk9vaHM4cWppT2Z1K003OW9TTUYvQnNUMTZtTDB6a045M0grRDlUUGtFSEdp?=
 =?utf-8?B?dnBOL1dNSGtWSWUrK3R4Mkt6WDllbEM0MFE4YUJsWkovYWdGMDFDQVNHbE5k?=
 =?utf-8?B?L1dFczV2dm9RaWM1eHRqeGY2UU1aZHFaL0w2U1dGaE5BWkU3SHoxZzdqRGJ6?=
 =?utf-8?B?Yy9lSXFvVEI0c2hDRmZ6SjJtRzM1VGlNZ2E2Q1lmWk1sMWxORyt5NWRzMkx1?=
 =?utf-8?B?Q0NkRG1ZTVRWcEw3cVdleGVNSWI1QkY2MGNiWUpOYkpTSFZSdDd6NkFoeWkx?=
 =?utf-8?B?b0hEUDlSakw2dkY3a3BEdmNONi9OUzk5SmpneERFODJJQk8vWXN3end1NGJp?=
 =?utf-8?B?UFIzL2FjaTM3bGFMeWlhOE5xSmp1VXVYZlFWWW9EaW9lVkNIakZXUjl6amlq?=
 =?utf-8?B?OVBKeWZsam5SQkRTQmhtcVAwTEZ2czJQa2Q0d2oyNUZlS2lWS3lZeS9LVkNu?=
 =?utf-8?B?dCt3d0dIaWdKdlpFVDNveGd0TGFQbWo1UllEZGZxcllBOVVMWWNSZmRGVzQ0?=
 =?utf-8?B?V2E3ZlZUSzMrZEhzMWVGTlZ3V0pPa3NQbmtJakhWNG4zWDdnNWJhVFRhRVRL?=
 =?utf-8?B?SWttSWJtV0ZoQ3QxZmp2M0tEdlc1MkpnNy9xVjJERGIxRk1WY0JxMDVRbFJU?=
 =?utf-8?B?YTFuTUwwbWxmR1VNR3VQV1kxd2JwSnhEU3R6elZNbC93dmIyc1RpbTk2LzJv?=
 =?utf-8?Q?YdV0JCaLMOsMzocXii7oRL73J?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e475babe-dec0-45b6-a599-08de11203bb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 04:05:27.0758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v7p+4D+n/FZk2vSORTpAl/Fn/32YEwT58x+1VXgshVVjFM2wy7zRc+L0HwFent1k82ECyRNFiPGIyYmcsZiHxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6864
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIDAxLzI1XSBkcm0vaTkxNS9sdHBoeTogQWRkIExUIFBoeSBy
ZWxhdGVkIFZEUiBhbmQgUGlwZQ0KPiBSZWdpc3RlcnMNCj4gDQo+IE9uIFdlZCwgMTUgT2N0IDIw
MjUsIFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBB
ZGQgTFQgUGh5IHJlbGF0ZWQgVkRSIGFuZCBwaXBlIHJlZ2lzdGVycyBpbnRvIGl0cyBvd24gbmV3
IGZpbGUuDQo+ID4NCj4gPiBCc3BlYzogNzQ1MDANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmggIHwgMjcNCj4gPiArKysrKysrKysr
KysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspDQo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3Bo
eV9yZWdzLmgNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5k
ZXggMDAwMDAwMDAwMDAwLi40OTlhY2IxOTc1ZDENCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVncy5oDQo+ID4g
QEAgLTAsMCArMSwyNyBAQA0KPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+
ID4gKyAqDQo+ID4gKyAqIENvcHlyaWdodCDCqSAyMDI1IEludGVsIENvcnBvcmF0aW9uICAqLw0K
PiA+ICsNCj4gPiArI2lmbmRlZiBfX0lOVEVMX0xUX1BIWV9SRUdTX0hfXw0KPiA+ICsjZGVmaW5l
IF9fSU5URUxfTFRfUEhZX1JFR1NfSF9fDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiaTkxNV9yZWdf
ZGVmcy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9saW1pdHMuaCINCj4gDQo+IFVu
bmVjZXNzYXJ5Lg0KDQpTdXJlIHdpbGwgcmVtb3ZlIGl0DQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5k
cGFsDQoNCj4gDQo+ID4gKw0KPiA+ICsvKiBMVCBQaHkgVmVuZG9yIFJlZ2lzdGVyICovDQo+ID4g
KyNkZWZpbmUgTFRfUEhZX1ZEUl8wX0NPTkZJRwkweEMwMg0KPiA+ICsjZGVmaW5lICBMVF9QSFlf
VkRSX0RQX1BMTF9FTkFCTEUJUkVHX0JJVCg3KQ0KPiA+ICsjZGVmaW5lIExUX1BIWV9WRFJfMV9D
T05GSUcJMHhDMDMNCj4gPiArI2RlZmluZSAgTFRfUEhZX1ZEUl9SQVRFX0VOQ09ESU5HX01BU0sJ
UkVHX0dFTk1BU0s4KDYsIDMpDQo+ID4gKyNkZWZpbmUgIExUX1BIWV9WRFJfTU9ERV9FTkNPRElO
R19NQVNLCVJFR19HRU5NQVNLOCgyLCAwKQ0KPiA+ICsjZGVmaW5lIExUX1BIWV9WRFJfMl9DT05G
SUcJMHhDQzMNCj4gPiArDQo+ID4gKyNkZWZpbmUgTFRfUEhZX1ZEUl9YX0FERFJfTVNCKGlkeCkJ
KDB4QzA0ICsgMHg2ICogKGlkeCkpDQo+ID4gKyNkZWZpbmUgTFRfUEhZX1ZEUl9YX0FERFJfTFNC
KGlkeCkJKDB4QzA1ICsgMHg2ICogKGlkeCkpDQo+ID4gKw0KPiA+ICsjZGVmaW5lIExUX1BIWV9W
RFJfWF9EQVRBWShpZHgsIHkpCSgoMHhDMDYgKyAoMyAtICh5KSkpICsgMHg2ICogKGlkeCkpDQo+
ID4gKw0KPiA+ICsjZGVmaW5lIExUX1BIWV9SQVRFX1VQREFURQkJMHhDQzQNCj4gPiArDQo+ID4g
KyNlbmRpZiAvKiBfX0lOVEVMX0xUX1BIWV9SRUdTX0hfXyAqLw0KPiANCj4gLS0NCj4gSmFuaSBO
aWt1bGEsIEludGVsDQo=
