Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A00F90EA8B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 14:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FC110EC9C;
	Wed, 19 Jun 2024 12:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JhLjEOP/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59FD710EC73
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 12:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718799109; x=1750335109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UAZAuPWh5nJmp2T6/YluNkIoIPYQPVhxnqTr7GQCJDI=;
 b=JhLjEOP/5fSPqkGq2wdUGQblbFX9MdVPk+upoanLdCO0li/TdnniuS1c
 tKW7p/pG8FXKTisR0hyN0onD1vV1UrkZ3B+Bg+8ZALd2zoj8IOxeJobWj
 H4UX81SSs56w9WG/GNYDvJh0hCqWtVHCwaE0lFeW1Od4qQoWJ5HcYi6Am
 8tRuWr5uxp9tIW3ZNxaz+EWW946WxMLiJ8YMqQvCj5ecNqkhP4oE7EVDI
 2w4valOj4yEmjy4UcOD6rIfX356V3FzAsP3FOYLP9JDgEBnmErDIH8k5w
 TenjKSSmbJiktxkS1dFCUz6PPjep+mRiko5JCNQH0XMyoaa77mV8FpXJt Q==;
X-CSE-ConnectionGUID: qX0b7jDbQJCH1fGO2vF3sg==
X-CSE-MsgGUID: CuRnuAJnRwSXsTthh5Pmhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15567034"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15567034"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 05:11:48 -0700
X-CSE-ConnectionGUID: cORSTsdKTWKMcM5w2FUk4A==
X-CSE-MsgGUID: D2OVuMDXRwO21n+ZmEWxWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="46335785"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 05:11:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 05:11:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 05:11:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 05:11:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 05:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3KTrIy4haUGOSvw1BrcTpHWzrsUbRP2pRsr9EOd/S060BUWEcP+HEmKp6OCAWz/ymKl7ljPqBUemhWvhFpOn8vc8dctXar/oQ78XQbXrpqqipUrb260xmVqpeoXYhVQUFx1weNxbFEsGw4MCBIhOdUobkHDStrdaNWgff2aryuAZPOhX+ud20zkzT8MZRLa70iI9E+joitLZVtbSaJyinbi5O6YBG7QKbAQu7QQj9vQPPV5HNFDf3ylm/aVmnM7aaIehe9H4RxffIPob7NPhqxA/CnRrh0eaLn8ICetz6hrq2vKSOBFvRzRfE1Vp0YBN2ZdOGtJ0zcy/p6kOqu4cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAZAuPWh5nJmp2T6/YluNkIoIPYQPVhxnqTr7GQCJDI=;
 b=X0YJpiueMRAZjiTZIM3Lmp3D96u3pbn7vfQJyOx9tPB3CXZemEFwCoKBCXeCi+nutdyL6srHebApbuACI1gkGw7SIGghtOjv+fxUZwR+plWmvlr5yhhfVUvuAtKxD53qfVhjOFru+Xlrew/toSI7WUtmb8W0z9LHhL9L71XMZgmB6I2ktOV0j87OyvTXJqXEMhxaTSpmy37DKZHiZw341yfOpW0PLQJXhci5OMApEVhZjl1I1PCXurl6n0GHAC0TeiIOOc8rNyX1uyapb8MNP9+DizLnCInW/h4dvjHKKPTlF007KgnFS1+ONHxP3LQnQ0y1I3hfoJfB5yQQrZVyDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7557.namprd11.prod.outlook.com (2603:10b6:8:14d::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.31; Wed, 19 Jun 2024 12:11:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7677.027; Wed, 19 Jun 2024
 12:11:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: Re: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong
 register
Thread-Topic: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong
 register
Thread-Index: AQHawUC0XLWfs7klQ0GbEDf4K9A5EbHO2f+AgAAnMYA=
Date: Wed, 19 Jun 2024 12:11:44 +0000
Message-ID: <ebe6c302939b16d2e2fb9e87f4c5e6e5f85e10db.camel@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-3-jouni.hogander@intel.com>
 <87iky5feg0.fsf@intel.com>
In-Reply-To: <87iky5feg0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7557:EE_
x-ms-office365-filtering-correlation-id: 97e7c84b-6ad6-4d3b-87b1-08dc9058fc34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?Nnk3b1orNDB6U015U0FzWlp5NW95UnhyZDVtTXU0dWJyT3F0R1dBRzhWeGtv?=
 =?utf-8?B?OFVQeUhkK3JCOFFnSDN4aGxYRUNmVXNxTlB5VWlmczAxK2J2Mk1mb0I4MkRt?=
 =?utf-8?B?YVUzNlkzcXdXaHcxbitPWXQ0V1M5cUNQdHJQR3hsSy9aYlI0N3ZzSFdaMmE1?=
 =?utf-8?B?L2Y5ak5sREg2dzFFS2NQcHFheW5DbUxHNWJrRk15WU9IVmlpT0s4aUovS1Bi?=
 =?utf-8?B?NkVkV2NncjhiU2VBNUMwZlpUTnIvazhwdFEwRnhodjg3TUMxNjBjcWZ6cWhs?=
 =?utf-8?B?b3dmd1pNLzd3L1dVdElDVnl1S2QyaU0zMzRBaWw3Uy9vdHhzYnJIdTRSTTB1?=
 =?utf-8?B?VkxqOUs4eDZ1V2xGNHYwZEhRT052NHc1VnBNVDNyRERSWVkrNWNDZWxQZFJX?=
 =?utf-8?B?ekpINlZXbURtaHpKRWxWamNqaXF5Kzl3SmlGY0RSbEFiWHZlZWV1NHBKNytL?=
 =?utf-8?B?V3dCTnh0VmQ5Z0xaYThKbTR2RFMweXcraUsxTDdMaUVvM29MTjhsZWxKVlJz?=
 =?utf-8?B?WUNrUlk3UGdER0pWRElKcWZFYWVHRndBZnV4N2htWjhBT1lndlp2Z21TTUU3?=
 =?utf-8?B?dUJ5YTV5bzRDMHNuVkJvaUJMa25NTGlvS1BIUmthaXI5aEtSL2VqWkIwcWpR?=
 =?utf-8?B?V1JTWjZMZU05Vml4UHMrNnZEb2xjUU1jWkRpTndXZmZhbnNHRzBZVmpaaFU3?=
 =?utf-8?B?eTdaakM2VUhxbjlid0pYOFR2YmE5VVJPdGpicVhhbUwxR1JjT2YwbjN5MUQ4?=
 =?utf-8?B?aE4yYnZuRjRlQTc3VVNscks5NkxGL3JTSm52ajhXZFN5dmZRenJqcEJqaUIy?=
 =?utf-8?B?c2hpVGpTTlYySVpzcHVRSzd0NHFBT216aTF2aE5HYzlWWjRiOVpLVmtydWw4?=
 =?utf-8?B?REd6b0dLdXFsc1dpNGkzRFpWM25sdDM3VytKYzBxRStQekZUa0w3NU5UZHlL?=
 =?utf-8?B?WTZHM3Zodlpka2k5TW9SbmxTZVdDbUQvZ2ZHN0hicy9MeUJ4SnJNYkdUak10?=
 =?utf-8?B?Z2cwdDBnZVh0RU9CclBvT3dSblVybFpEY0EveUtYbXFDRWJvNDR2TXVRdy9J?=
 =?utf-8?B?RlloWHFmMGtmWEpCb2VHMkZkdXdWdVFsSExPV0s2RzVQeFZBVDFhTlBETEc1?=
 =?utf-8?B?MHRNdWlSaHhrS3JuRytrOFBKb2txVFgzNHJEVUYrVlBiRnYwWTlmVXZIQW82?=
 =?utf-8?B?VGNPYXEvU1B5Z000NDlnaE1wSTlaWUgrUTRTZDQwVlQ5RmNjUkp2TXVjZE05?=
 =?utf-8?B?VFdjNDdZejdKY1hwdWtFakJlWWRtSU5zNnA0Y2ppWWNCeDcxdzlJQWgvVDVh?=
 =?utf-8?B?OSt1MVV6czFQMWpVOXNYdkpLUnZ2aGkxYXJSME1id0RSNXBRdC9Rb1Jwc1dO?=
 =?utf-8?B?TC9wbnB5V2VaQ0lyOVFiSzRBQWFsNUFkQzgvZGdRa3d4emtSanZPekJyaFcv?=
 =?utf-8?B?S0wxelQzRmJzNkJudDFSKzhMNVFOTVZJRnBEbExydDdNeUpQWTJmOExpbDFK?=
 =?utf-8?B?RHhWQnQxUk1tNk85RlIxdGR1c3FiQ1FLcUl5OVNpR05ROTI5QVVLaGhMTjFB?=
 =?utf-8?B?dTZrUWRjbERzdndvT1lVTG03bTEvMWpoV1dPcWFkWFIxMFhqWi91Tmoza3o1?=
 =?utf-8?B?YlNhaGhBZUZsKytINFFzVFQ4Q2pSNUNNQ0lMbzJWYWZZeVNPUEFoMlVqcTE3?=
 =?utf-8?B?WjFoWjJkL1Q0VGZQZHhsMDhRZVBMOGlERWY4TFd4WnZGQVIwWHFURElZc3FK?=
 =?utf-8?B?ZkY0NkVFdStGNEx0ZjVhSVFPQTduRWVYbEdLM2h2QnpZY3B6RGlEbHFXcW1j?=
 =?utf-8?Q?NxqPW9llOh1IjONDd15jlYU3MvVpeYk6qiG2Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHFFUjR6azRndkE0NGRPaTFUblRSeWYyTkJYd05KTVhxNEFPWHpKeXh5UVRk?=
 =?utf-8?B?ZWREUlA1azNFcGdKNUN1UjFMeGI1d1JiRFRWU1pJQUFjSERDRlpWdEtWTUNm?=
 =?utf-8?B?QVpTK29SWEliNFp5RVZVcUZXZ1NLZkdkNjhPZk1IUjlLbVNBZnhoRE9DaU9O?=
 =?utf-8?B?SmZMREJJY3lNNEd5a1oyM2JYelhOOG16Q2VvTGdkWHA5bW5INUlIN1p1TGJk?=
 =?utf-8?B?SWZTL1RwK0JQbTFaVG90ZTVPSnUybnpTTDEvWHRpWHE4VGZtc1RUNFdDWFBq?=
 =?utf-8?B?LzRJZFphRXR5a2JOa3NML1VrMUU3SVJCT3ZRTDQyWGtsWG5PUGdrYXU0Zm45?=
 =?utf-8?B?WTRIZ0ZLNUY1ZStqMTcvR3ZzYjRYVmhqalpwbHhHakc5dy9zODBtSVpkL1Iw?=
 =?utf-8?B?QlRCWXRmMFdvTmQ1S2ExOFFUL0RJMWl0MjhVRitRU1FFejhHWEZlWkVoRmdz?=
 =?utf-8?B?Um42VWNYVnpxYk1MajZOYkJibVk3dXhKUVE2NjRIOUEzWGRuSlZsazUvV3Bx?=
 =?utf-8?B?M1ZaVjdiR08zY1FXTHFCaEtCV3FYM2MzQkFFRVpKZ080KzB5aVJoZDYrT25I?=
 =?utf-8?B?RjBybFZrbDRKSjBXWDFGSlRFdkZSSk96MzFZdjRURVJhTGZuSmdOb3psWVEz?=
 =?utf-8?B?MnpUUkFRdHNhQTFrcTF4aE1QY1A2RnZVWWo0Q1ZCNEZwYWFiSFQ4MW9BQ0F3?=
 =?utf-8?B?TkVlM0tlZ2toVkhoTis2UmpWa0NoeTlHS3FEWGZXSlFFRFBncVR5NE1zTzZJ?=
 =?utf-8?B?TEhROERnN09RYkZXKzdIQ2VxZXJQbU1uaHBGS1hhKzhVWldPOWgzODNMa2hC?=
 =?utf-8?B?RUV1R1VQMUxWdDkrRVh3c3dlcHR5SHEwY1I4LzN2OTFTT09LWUVZQXFoQWJU?=
 =?utf-8?B?eGJSZEx5bW1URGpoNzR6V3d4dnlHSFpRdks3NDdSdWlvZ212Q0FxbWNJclZ1?=
 =?utf-8?B?REtIQkNhWTFWMDJ5MkQ2azBHcm82RHJrUkNLTmI3YXdLOHVnZm5jeWEraVF2?=
 =?utf-8?B?aUdhYU9kaW1lWDlxU01EVG1sSVE1ZXZBRDFaVjhuT3QwdmxMQ3JlSVVGNXBw?=
 =?utf-8?B?WWNqSi9wVWhkaENJUmM2eHNOeVM4MXd0RWJzSHpTL0haOUUrakpuRThNRldB?=
 =?utf-8?B?RGhxbmxiWjZPL3IyYXNNTXQwYWM4di84Nmsya1pEcExHdFFQcG1qVkNPam1W?=
 =?utf-8?B?UmpuWUFQZms2UkxqMmp1dzFJM1hweHg5SDBON1ByK0RqSmlSTGg4N0Zqdkty?=
 =?utf-8?B?SnkzSlFQOTN2d3BudEdBU0hZaml3QWxjS1lnMnJTVGZ0V2drQjdpODhRQkVv?=
 =?utf-8?B?OTAwQk1RL2w3aGRtTXdZMlpxYTZ1Z2paWkozTXhvQVQ5QzBYc3pvQmdkK3gz?=
 =?utf-8?B?MEtHR2srSTdvcVJpMmpkeUVvSU1UWHdiU2RYTnNwSXNEVmYyTGJId0xuZFA1?=
 =?utf-8?B?QjFXSGcvZngzenhqZFBHZDg2SVBObW1XUjM1WVk0NVVpS2NuVkZFaVBrcnZm?=
 =?utf-8?B?bWU2WDY0dHZsWmF3cXlvNXV6dHQrOE12Q3FMdjE2aDQ0USs1dzBGYzQzRFR6?=
 =?utf-8?B?RVpvd1lQQ09EekZYdmdYUnp0UnY5UGo5dE1nVkpaYkt0aW9xVVAvOWowUWZw?=
 =?utf-8?B?QnVHNzRVS05CeUJTdzRvVFowVE9GclpqaHQ5N3dKd3ZZQ3I3QTNvVGJnS1FR?=
 =?utf-8?B?TGlIWDBtVHRCeWRHb0hVcCtoWVhMWEc0NXRCZ1VvZERyZFlDd2RITzN0cnkx?=
 =?utf-8?B?b3RuWEpiOElQUTl1b05wUkZ2UXhWbE53R1NJTWNMRXBwcU1lRllmN0kvMWlo?=
 =?utf-8?B?YWdadlZ5S0E5dTg5amhHcDFscHBMek1YWnNvdktXOEVSeStWaDZhWnQvbElw?=
 =?utf-8?B?TVgwcGtOQTladFA3OUVGSUttR0UzcG5ON2V5MlM3T2VFdnVYN2daYVczT0Vz?=
 =?utf-8?B?bEVKNE9EcDRNSHZqYVgwUkxrS0l1WnZxQ3hCaGU5R3RhWHVuOEtxSER5MGhv?=
 =?utf-8?B?dVZEZ1ZRMk90cGo2RnVnd2JLd3F0NnBsRGJ1TmlyMHhDNW5FeTdDdG5jVnlG?=
 =?utf-8?B?ejlPanJjN1pXSm9YTHI0MHVZUzg0WWhXbGF2QS9Yb1VkQWhKQzFRZFBHYTBr?=
 =?utf-8?B?SC9MSTMzeHJCdERjcENCY2I3bzFYZktsSGh3TU5ZcTZoYVNKLzdlSnlXWlAy?=
 =?utf-8?B?c0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0CB0D54A59693A459D9753C39BBC4FBC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97e7c84b-6ad6-4d3b-87b1-08dc9058fc34
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2024 12:11:44.2124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z9YdAM7tY06UGYnaD8JyyytVpgLT7UGKxSMfN7sceM2eV27HMpX4cxBKLuYUBI36/0W79vCQdHQ2d9DhfllUn4VG8QaGnrx8fbD4rJVUZkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7557
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

T24gV2VkLCAyMDI0LTA2LTE5IGF0IDEyOjUxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUdWUsIDE4IEp1biAyMDI0LCBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4gd3JvdGU6Cj4gPiBXYSAxNjAyMTQ0MDg3MyBpcyB3cml0aW5nIHdyb25nIHJlZ2lzdGVy
LiBJbnN0ZWFkIG9mCj4gPiBQSVBFX1NSQ1NaX0VSTFlfVFBUCj4gPiB3cml0ZSBDVVJQT1NfRVJM
WV9UUFQuCj4gCj4gSSBrbm93IHRoaXMgaXMgbWVyZ2VkIGFscmVhZHkuLi4gYnV0IHRoZSBjb21t
aXQgbWVzc2FnZSBmYWlscyB0bwo+IGV4cGxhaW4KPiB0aGUgY2hhbmdlcyB0byBwc3IyX3BpcGVf
c3Jjc3pfZWFybHlfdHB0X2NhbGMoKS4KCkkgd2FzIG9yaWdpbmFsbHkgdGhpbmtpbmcgSSBuZWVk
IHRvIHRha2Ugd2FfMTYwMjE0NDA4NzMgaW50byBhY2NvdW50CmluIHBzcjJfcGlwZV9zcmNzel9l
YXJseV90cHQgYXMgd2VsbCBiZWNhdXNlIHRoaXMgaXMgY2FsY3VsYXRpbmcgdmFsdWUKZm9yIFBJ
UEVfU1JDU1pfRVJMWV9UUFQuIEFzIFBJUEVfU1JDU1pfRVJMWV9UUFQgd2FzIHdyb25nIG9mZnNl
dCAtPiBubwpuZWVkIHRvIGNhcmUgYWJvdXQgdGhlIHdhIGluIHBzcjJfcGlwZV9zcmNzel9lYXJs
eV90cHRfY2FsYwoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiAK
PiA+IAo+ID4gdjI6IHVzZSByaWdodCBvZmZzZXQgYXMgd2VsbAo+ID4gCj4gPiBGaXhlczogMjlj
ZGVmODUzOWMzICgiZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IFdhXzE2MDIxNDQwODczIikK
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vy
c29yLmMgfMKgIDQgKystLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jwqDCoMKgIHwgMTIgKysrLS0tLS0tLS0tCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYwo+ID4gaW5kZXggN2Y3ZmM3MTAzNTBjLi42
NjQzNmU1MjYwMjEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N1cnNvci5jCj4gPiBAQCAtNTI0LDggKzUyNCw4IEBAIHN0YXRpYyB2b2lkIHdhXzE2MDIx
NDQwODczKHN0cnVjdCBpbnRlbF9wbGFuZQo+ID4gKnBsYW5lLAo+ID4gwqAKPiA+IMKgwqDCoMKg
wqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgU0VMX0ZFVENIX0NVUl9DVEwocGlw
ZSksIGN0bCk7Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIFBJUEVfU1JDU1pfRVJMWV9UUFQocGlwZSksCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBJUEVTUkNfSEVJR0hUKGV0X3lfcG9zaXRpb24pKTsKPiA+
ICvCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlKGRldl9wcml2LCBDVVJQT1NfRVJMWV9UUFQo
ZGV2X3ByaXYsIHBpcGUpLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBDVVJTT1JfUE9TX1koZXRfeV9wb3NpdGlvbikpOwo+ID4gwqB9Cj4gPiDCoAo+ID4g
wqBzdGF0aWMgdm9pZCBpOXh4X2N1cnNvcl91cGRhdGVfc2VsX2ZldGNoX2FybShzdHJ1Y3QgaW50
ZWxfcGxhbmUKPiA+ICpwbGFuZSwKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiA+IGluZGV4IDNmMzZiOTQwMjBmZi4uMmEzM2UzNWNlZWZmIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTIxNjQs
MTkgKzIxNjQsMTQgQEAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdAo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRj
X3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwgPSB2YWw7Cj4gPiDCoH0KPiA+IMKgCj4gPiAtc3Rh
dGljIHUzMgo+ID4gLXBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib29sIGZ1bGxfdXBkYXRlLCBib29s
Cj4gPiBjdXJzb3JfaW5fc3VfYXJlYSkKPiA+ICtzdGF0aWMgdTMyIHBzcjJfcGlwZV9zcmNzel9l
YXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUsCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBmdWxsX3VwZGF0ZSkKPiA+IMKgewo+ID4g
wqDCoMKgwqDCoMKgwqDCoGludCB3aWR0aCwgaGVpZ2h0Owo+ID4gwqAKPiA+IMKgwqDCoMKgwqDC
oMKgwqBpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCB8fCBmdWxsX3Vw
ZGF0ZSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gPiDC
oAo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCFjdXJzb3JfaW5fc3VfYXJlYSkKPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gUElQRVNSQ19XSURUSCgwKSB8Cj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFBJUEVTUkNfSEVJR0hU
KGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0KPiA+ID5waXBlX3NyYykpOwo+ID4gLQo+ID4g
wqDCoMKgwqDCoMKgwqDCoHdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBzcjJf
c3VfYXJlYSk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZj
cnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEpOwo+ID4gwqAKPiA+IEBAIC0yNDg1LDggKzI0ODAsNyBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdAo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKPiA+IMKgc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A6Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKGNydGNfc3RhdGUsIGZ1bGxfdXBkYXRlKTsK
PiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdCA9Cj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHNyMl9waXBlX3NyY3N6X2Vhcmx5X3Rw
dF9jYWxjKGNydGNfc3RhdGUsCj4gPiBmdWxsX3VwZGF0ZSwKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY3Vyc29yX2luX3N1X2FyZWEpOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhjcnRjX3N0YXRl
LAo+ID4gZnVsbF91cGRhdGUpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+ID4gwqB9
Cj4gCgo=
