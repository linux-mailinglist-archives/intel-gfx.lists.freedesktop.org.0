Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHnAODbis2ktcQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 11:08:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB97281211
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 11:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4453D10EB70;
	Fri, 13 Mar 2026 10:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzEKDWhB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AFD10EB7E;
 Fri, 13 Mar 2026 10:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773396531; x=1804932531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dN8cRI7s6hlGa+bpdCfF0jmKlG+SdB738ceR3MK7UEU=;
 b=lzEKDWhBKmOp7OMQRfP1Y9VSCLe/YOmhWC80geABQJb0lU/XlIgzDPly
 FCvt773JCZD3MAf5l5MnhP5exlXC/E+vHce3TX6HO8lP5TAOvPwX+KuxA
 aCw12WIzDjF19pKL+0Xl58Db9vaVwCoZpYaNM+m05Ej8cZdRBM21Pd3dV
 JsJGO00hH5P7HYGnRI66661Dtf/AxiiTtHyCIoPduS73ID3WaO9FDO3P1
 gsi3LPsAcYA2+Gj+CnLyB/Rio+ER8eBEARrTUDMlXeJVm8xF7w69b1W44
 +qdUyAIJ2ynIMQimPCg6B9ehpZl+RUDcEdB2ule/Y/3/UFrStcZkainUV g==;
X-CSE-ConnectionGUID: p9ADX0VeRcSMpKqji5/zsw==
X-CSE-MsgGUID: muKPfKcXSLudUqmKk20WYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="62072586"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="62072586"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 03:08:50 -0700
X-CSE-ConnectionGUID: 8ScyyIpeQGq5MNhyL+/ecw==
X-CSE-MsgGUID: 7J2XIdYFS82mLFNDB1eX/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="259022979"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 03:08:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 03:08:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 03:08:50 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 03:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PyQUu3/Xg9II/3ZkprYrnf9Udl+B6oAPIMXHrZXJSpyZ012bQz9UuVoOAw9rk97SkAtbVYJhL1gMLRBJ7EhDp/ob4uLGaQbVucFaBXEnJcvOCbgMBcbcdmgF6hBHFCDCnp94qb82lrMNRL/I3oYCIp+C6cW8xiP0iiS7SpTU/gLVGeuKES7yQSYFGuG71tevfzbPLtjKWvWIM+DT/O0P3LpTocp+sFFTiEmrlhhvVUZrVfy0uvC8dWcL/gDW14CbGkyu5iq/0ll0SvggB7cDN4qja10xFJ3Lc6bZLzgIEM1vfCF1lBU3jkMO7wE0p4c2SmIio3WNkW4HjI7dM7IN9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dN8cRI7s6hlGa+bpdCfF0jmKlG+SdB738ceR3MK7UEU=;
 b=A+0I9zlBJOPSXrN5uUGxh3Ys+1Pg9orFo/Yj+Rcl7bboJ1iYeHx76J1KrRYaHTuItL5B+Q38ieyShHFH0nL2uwQl0LVEFHmm9G9ATGtsApDJNp+822TjMovFlAvhm70y2fqrzjQfohJ8HUuRVsZx/KbWkNYnE7PfggXA1ujfrdZ5m5WS29YYQ2OzGQshuFDEFwL2kUmK4NkHYAIzkELfDeMW6AwdZIb33o4UQhVy9mU9RMXQhOpC6Txgy5XBbaRv+eQg0qcNlHI6UqDK+BETrK+2QpeStssAPAsw8pQ5FiRZYJSkAIE+YN7rRvlBp1QtW1kXDFbjQez6Z69Roa2Qkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB8526.namprd11.prod.outlook.com
 (2603:10b6:510:30a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 10:08:47 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 10:08:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsSHWLW1MaEEmHE6nBRY4po2yObWqOcBggACbloCAAPkh0IAAEhaAgAAA0SCAAF2LAIAAARHw
Date: Fri, 13 Mar 2026 10:08:47 +0000
Message-ID: <DM3PPF208195D8D00F123DBDB50B578B8F0E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
 <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <abPg2j1wS_QLPIdJ@intel.com>
In-Reply-To: <abPg2j1wS_QLPIdJ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB8526:EE_
x-ms-office365-filtering-correlation-id: fbbb494f-761c-4ea0-6996-08de80e8841d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003|7053199007;
x-microsoft-antispam-message-info: /qlASwieOHGycjyKoVVJS4WfcnhB+eL390VvTA3wlBOMEzKma42RGg637ZlQrJL/WieXerOrqHop6TCY1SPVhzTtX8u1E8l9G/xqIaKgBuGwgBVNvr1ASWzrKZ+vDJuKYPsQaRFnpbrPsgUMKtQzcDFMOIK4RTtuEgZSoFUE2GZ4LaTfRqKYSQ5mXIWgaIzce0u3gGtkEEe8544OKkvwcDn137nz6Ey3hcyP/E79Fn1R4pzLbYFb/BRtR+9CSGeufVmJht2VEvXcrZfkoKzBrz/UXiYc8ZWXuNjaUmFGgDD41LeAwKv6ymkU4udVkHEhHQompfWrsGKKOLe65YS9VUXYB7LAi2cbIklnJNSy0hNkjIR5TAvDhII8g9J6kJEwTyxCDDoUwbWhdr21s3OSykmVfk/GQajYay06M69Vw9Sv2d/dj9lr1oDRxws/xsjblf5Ad8IdmnjNdvE2ZWtIavk2A0NNgfJLJDr7gpk732ycRxuKs559+hiU68enrBaFolZhBSOQcnQUpLfcMD5kdKDSUmmp3+g5jODY9d9zy65XXn5yTO3gtSTAK013Mk2SUcw7BKh+V6pvuTuYFp5OAIgfPV0ov5mOjSIckyUpV7GksJ5/MyU92a4/B4i/R3W60GoyQWO5jYDLrRXmsrGdtyt7JJNQGpbcOko1+GGEGjm/HkBW64lLg6IniZ+q/I2WRy1AD55188hxxFcdlS7YqTMVXTncSQLxSuVmcx5PoS6R9pCGWIMqrEJjYe54A2vEovBsrSNhc1VQJKECO+ZBHFj1vAyRVSRXxU3/wZ7islc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGFRaE1aU0tJUlBkallyY1lZSDNrWTd6aUp0bGRVOEloV1JSbzdONTJmUDdP?=
 =?utf-8?B?WjZjSmI1cy9VMjZ2L21xdDdUS2FFU0o4bE1abnFWMFh0NG9vWUo3YkIrMjRp?=
 =?utf-8?B?d3N5aWg0SzJyZlg2Zld1ZGNaTUZ1cEhzdEY4NzVQRGk4TkFpUnkyUllWL09v?=
 =?utf-8?B?K29GUkJkUFhEdlZ1Zkx6M3h0WkNBdVJsNlVHaWN3RUdBRUlJaUg0MkIwTnBr?=
 =?utf-8?B?dURNS1gwZDB1UVJ5MVFxNW1zSkd6Nng3dXBiMEdkdW5NazRlMlFYYXZaN3Nq?=
 =?utf-8?B?cjVZTXNLUElIM3dFN2lhQ2JKRUdiY2pJUlIzYitYRzd4VlJ6alpWYnN1TTJv?=
 =?utf-8?B?dURBRjN6U3B1T09nQVI2VmhneFgzdFJDMDhDS1JVUGVvdys5aGlydHoxRWR4?=
 =?utf-8?B?K3hCaCtZN1lsMmZiSUc2TjNlTHRVamJFZVM2UTJpdUtteWt6UEFRVE1KRC9r?=
 =?utf-8?B?eVhhOGtlWkRuZlc2bXJET2Y2K2pYMjcwQW4xVDhGSm5YcUhEcmdUb0wzRHRE?=
 =?utf-8?B?Y1ZUY0REVDN1VTczQzJqUWdXUFZDUWtzcmg3aVRPdGpnREdvQ3JOOGVCZ1Bz?=
 =?utf-8?B?YVJyeExpVEt6aVBZNy90eExMYnIwMFI0dHVxcm1uUHFGMU1GRzRkVkpXMWNM?=
 =?utf-8?B?V3I3dE8rRmV0TFczUnU1ckc0cUt6K3dFS1pkYkVldVVPLzBaYnV3UlNZQmNi?=
 =?utf-8?B?VDJPV3JnWVZUSmJmb25EYXgrcHEwcFRZZm02MmJnUjZ5cGRzd3Vja2NBRHVV?=
 =?utf-8?B?eFo2UmtyWDdWOEgySHVuNDFvVFlST3hjdVptdDZiZmJKUnM3NzBCblZGRjVL?=
 =?utf-8?B?WDdjTzhad2dSbUtZc1RwdzduMU15UkZzTnFGdXNLRzhhcnRpWDVibjk5NzhK?=
 =?utf-8?B?ckU3K0ZiVnJzR09jT2J3Uy84YnZBVThCWDF1OWZ6OUthdDIwdGNkQ3Mzek5S?=
 =?utf-8?B?TThaV0I4YlNsMWVqYVpLWWx6czUzTTNXOWQyeC94WmJPMFlhc3ZrZVZCVmpG?=
 =?utf-8?B?M05aVitGa3VhcExQb05ONmRxVXhYK0syTnR3ZDZCSkQ5WUxvN215RzlPV1k0?=
 =?utf-8?B?eXVJY2hXeFBQSlJWNFdzTFlmc1Z3Wk5sQ2lYb1E5Z2EwQVlGc2pCSlhMeGVq?=
 =?utf-8?B?SDZlOGdrY01PUXpVVTA2R1lVVGVBYTZZSFJUNEZDelNmVkdrUGc3SnZHY3NK?=
 =?utf-8?B?Tm4zRk5lL3BKbHdQTHVZUGFHVW8vSS82SEgvRU9pOGRZMUtFZUN6bllCRUl2?=
 =?utf-8?B?eFd6enY1cmZBSVVxMCtmRnBOUHFDc3A4Rk1xc2JzRWtHZnppN25wa1Y2OUZ0?=
 =?utf-8?B?U3BwdWdqeG9WWkdFb25SOGxoc29VaHB5bkJhV3FRWFhoNkYwa3E5ZnNjdDdl?=
 =?utf-8?B?bHUrQXQybDloKzVENzhkVTBQN1hWNWdQNnhtT3VqaTV2MkMyV3ExWXJPemJS?=
 =?utf-8?B?ZDh6NDFmVjB3WTNaUDFMMDBVRGdzVVdBck1rSzlCclFjYllzV1ljZVo2OXFz?=
 =?utf-8?B?OU5Xdlo0MmpDYkZDaS9jaWwwTkFlT2dyYW1POXNMZWJnS2hSUlRDOHJwbm5B?=
 =?utf-8?B?U1RGUlFMSyt2dDlQL2o3K1JDU2ROR2VZekRSdGwwNGtZWnFUeGxRNHN6VVhu?=
 =?utf-8?B?enZTenIyOHJZV21xd1pxR0o3a0hmb2JGWWFDRUJ0eTFjNHFtWWdnS002NFNN?=
 =?utf-8?B?MkdSbnc0UjhTUG9nVjM1Q0drYVFUcW5yT0Y2U3VncGVBelVHWkdDT0Z1UkJk?=
 =?utf-8?B?NTBKSHllbXQ1Vi91OWVzbG9Gd0dDR2FMZGNab2dPZ0JNd3BNZXpKTVNWSUFv?=
 =?utf-8?B?bUZFUnBNa284ZmEyNFhWTDM0SkowSnBtazVUUXpjeFd5Sng2b3FHR2phd24r?=
 =?utf-8?B?UnRQTXhJc1VsTDdJUTBoYWVrcm40eUJBK3VGNjh5T29tNFpwK0FETXViRVpB?=
 =?utf-8?B?UFl2anJpYkxFVGdvczdZVS90ZmpNQmhkVVlJOWdrOGVPejVmRmo2Z002a0FF?=
 =?utf-8?B?ZW1TRTJFK0JMN293RzRMaUkydmV0U3E3TGIzTWZYYzdMSW94NzkvNG1QWHJx?=
 =?utf-8?B?QlNOWjRvTTNIT0NNTDhrOEZ1eFFmZmJKZ0NaU0ZqR0dySUtBSFZnZnoxdVRX?=
 =?utf-8?B?MDNnc2lKRWZEK2wyc213bEtrcjlpcjJlMHQvYXdkKzU0OGsvMDBSVGhYY1NY?=
 =?utf-8?B?VjNMV3lXUUNKMFhmby9rZ29yK0Zjc3cxRjJ2c2IxNVlpdTdRNU9zaDJueld4?=
 =?utf-8?B?VkRWZVNROTRvUFp0MGRzd3V3bytIQTNGQjFPdU5FYzBUK2Jrc1ZmRmFrbjVq?=
 =?utf-8?B?c2lJUDE5MGZXUFVBUUc2ZVZwV1paYnVUM1d3SUVSbTYxT1VGVUZzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uvp16MKeUR2SGViSGlJNMHZ7/yCfC5SFSMk6YsSpxvX+p1KdIyQfDiqJ4PFY4BDmzL5qzSQLU2bqqkLqmUklyCzV25OdyOrL0Fqnsc/oVIAiZzFyFBA29z8vPQPUNVTvfrqoLmPpa/i11oXQa/hzHW75SGj8fvr3R8b8sqbnKc264amDGVVyt2mfepG/lcScPdKuEpQxAYCpaE1Ow5ojP3nB0gkUVoVDlidcbz78/lNf+GyVNtudYS4hc7+IND1ns5IAEszJ9Wm1QrGf4XocsyXkjWCXKFPx7yaj0Pt1wOd5+vaedN7qls17bSoW+/qO0tRP9gOf8nE9vVij3TNZ5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbbb494f-761c-4ea0-6996-08de80e8841d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 10:08:47.0238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wnfLq+pxpgY+v4KjvP6yfMKROruxGcBuRqeSihL13BeRQQ/V/PKKDEBuzX4Knt0oXy+U2IpaXVVmOG8X7kJDlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8526
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4EB97281211
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJtL2k5MTUvZG1jOiBFbmFibGUgUElQRURNQ19F
UlJPUiBpbnRlcnJ1cHQNCj4gDQo+IE9uIEZyaSwgTWFyIDEzLCAyMDI2IGF0IDA1OjA0OjQ2QU0g
KzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBEaWJpbiBNb29sYWthZGFuIFN1YnJhaG1hbmlh
bg0KPiA+ID4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNvbT4NCj4gPiA+
IFNlbnQ6IEZyaWRheSwgTWFyY2ggMTMsIDIwMjYgOTo1NSBBTQ0KPiA+ID4gVG86IEthbmRwYWws
IFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47DQo+ID4gPiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENj
OiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hDQo+ID4gPiA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPjsgU2hhcm1hLCBTd2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwu
Y29tPg0KPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2RtYzogRW5hYmxl
IFBJUEVETUNfRVJST1INCj4gPiA+IGludGVycnVwdA0KPiA+ID4NCj4gPiA+DQo+ID4gPiBPbiAx
My0wMy0yMDI2IDA4OjU2LCBLYW5kcGFsLCBTdXJhaiB3cm90ZToNCj4gPiA+ID4+IE9uIDEyLTAz
LTIwMjYgMDg6NDgsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+ID4gPj4+PiBTdWJqZWN0OiBb
UEFUQ0ggMi8yXSBkcm0vaTkxNS9kbWM6IEVuYWJsZSBQSVBFRE1DX0VSUk9SDQo+ID4gPiA+Pj4+
IGludGVycnVwdA0KPiA+ID4gPj4+Pg0KPiA+ID4gPj4+PiBFbmFibGUgUElQRURNQ19FUlJPUiBp
bnRlcnJ1cHQgYml0IGZvciBkaXNwbGF5IHZlcnNpb24gMzUrLg0KPiA+ID4gPj4+Pg0KPiA+ID4g
Pj4+IEFkZCBzYW1lIEJzcGVjIGxpbmsgaGVyZSB0b28NCj4gPiA+ID4+Pg0KPiA+ID4gPj4+PiBT
aWduZWQtb2ZmLWJ5OiBEaWJpbiBNb29sYWthZGFuIFN1YnJhaG1hbmlhbg0KPiA+ID4gPj4+PiA8
ZGliaW4ubW9vbGFrYWRhbi5zdWJyYWhtYW5pYW5AaW50ZWwuY29tPg0KPiA+ID4gPj4+PiAtLS0N
Cj4gPiA+ID4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyB8
IDMgKystDQo+ID4gPiA+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gPiA+ID4+Pj4NCj4gPiA+ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+ID4+Pj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gPiA+Pj4+IGluZGV4IDM4YjI4NGEw
ZGI4Mi4uZTYwZjFmOTc3MDcwIDEwMDY0NA0KPiA+ID4gPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gPiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+ID4+Pj4gQEAgLTUxMCw3ICs1MTAs
OCBAQCBzdGF0aWMgdm9pZCBwaXBlZG1jX2Nsb2NrX2dhdGluZ193YShzdHJ1Y3QNCj4gPiA+ID4+
Pj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgYm9vbCBlbmFibGUpICBzdGF0aWMgdTMyDQo+ID4g
PiA+Pj4+IHBpcGVkbWNfaW50ZXJydXB0X21hc2soc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpICB7DQo+ID4gPiA+Pj4+ICAgIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzUpDQo+
ID4gPiA+Pj4+IC0JCXJldHVybiBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORTsNCj4gPiA+ID4+Pj4g
KwkJcmV0dXJuIFBJUEVETUNfRkxJUFFfUFJPR19ET05FIHwNCj4gPiA+ID4+Pj4gKwkJCVBJUEVE
TUNfRVJST1I7DQo+ID4gPiA+Pj4+DQo+ID4gPiA+Pj4gTW9zdGx5IGxvb2tzIG9rYXkgYnV0IGhl
cmUncyBteSBxdWVzdGlvbjoNCj4gPiA+ID4+PiBJIGtub3cgTE5MIHBpcGUgQiBoYWQgYW4gaXNz
dWUgd2l0aCBQSVBFRE1DX0VSUk9SIGJlaW5nDQo+ID4gPiA+Pj4gdHJpZ2dlcmVkIG9uIExOTCBw
aXBlIEIsIEFzIEkgY2FuIHNlZSBmcm9tIFZpbGxlJ3MgY29tbWl0DQo+ID4gPiA+Pj4gbWVzc2Fn
ZSwgYnV0IGlzIGl0IHN0aWxsIHRoZSBjYXNlIGZvcg0KPiA+ID4gPj4gUFRMID8NCj4gPiA+ID4+
PiBDYW4gd2UgaGF2ZSB0aGF0IHRlc3RlZCA/DQo+ID4gPiA+Pj4gSWYgdGhhdCB3b3JrcyB3ZSBj
YW4gYWRkIHRoZSBQSVBFRE1DX0VSUk9SIGZyb20gUFRMIG9ud2FyZHMuDQo+ID4gPiA+Pj4gVGhl
biBoZXJlIHdlIGNhbiBjaGFuZ2UgY29kZSB0byBjcmVhdGUgYSBtYXNrIGFuZCB0aGVuIHJldHVy
biBpdA0KPiA+ID4gPj4+IGZpbmFsbHkgbGlrZQ0KPiA+ID4gPj4gOg0KPiA+ID4gPj4+IG1hc2sg
PSBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORQ0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gaWYgZGlzcGxh
eSB2ZXIgPj0gMzANCj4gPiA+ID4+PiBtYXNrIHw9IFBJUEVETUNfRVJST1INCj4gPiA+ID4+Pg0K
PiA+ID4gPj4+IGlmIGRpc3BsYXkgdmVyIDwgMzUNCj4gPiA+ID4+PiBtYXNrIHw9IFBJUEVETUNf
R1RUX0ZBVUxUIHwNCj4gPiA+ID4+PiAgICAgICAgICAgICAgICAgICBQSVBFRE1DX0FUU19GQVVM
VDsNCj4gPiA+ID4+Pg0KPiA+ID4gPj4+IFJldHVybiBtYXNrOw0KPiA+ID4gPj4+DQo+ID4gPiA+
Pj4gT2J2aW91c2x5IHRoYXQgaXMgaWYgUElQRURNQ19FUlJPUiB3b3JrcyBvbiBQVEwgcHJvcGVy
bHkuDQo+ID4gPiA+PiBUaGFuayB5b3UgZm9yIHNwb3R0aW5nIHRoaXMsIEkgdGhpbmsgaXRzIGJl
dHRlciB0byBhZGQgYWJvdmUNCj4gPiA+ID4+IGxvZ2ljIGluIG5ldyBzZXJpZXMgcmF0aGVyIHRo
YW4gY29tYmluZyB3aXRoIDM1KyBiaXQgbWFzayB1cGRhdGUuDQo+ID4gPiA+Pg0KPiA+ID4gPj4g
UmVnYXJkcywNCj4gPiA+ID4+IERpYmluDQo+ID4gPiA+IElmIHRoYXQgaXMgdGhlIGNhc2UgdGhl
biBJIHRoaW5rIGl0cyBiZXR0ZXIgdG8gZHJvcCB0aGlzIHBhdGNoIGFsdG9nZXRoZXIuDQo+ID4g
PiA+IFdlIGhhdmUgYSBqdXN0aWZpY2F0aW9uIG9mIHdoeSB3ZSByZW1vdmUgYml0cyBpbiBmaXJz
dCBwYXRjaCwgdGhhdA0KPiA+ID4gPiB3YXMgYSBjaGFuZ2UNCj4gPiA+IGluIE5WTCBIL3cuDQo+
ID4gPiA+IEJ1dCB0aGlzIGNoYW5nZSB3YXMgaW50cm9kdWNlZCBpbiBMTkwuDQo+ID4gPiA+IFdp
dGhvdXQgYSBzdHJvbmcgcmVhc29uaW5nIG9mIHdoeSB5b3UgYXJlIGVuYWJsaW5nIHRoaXMgaXMg
aW4gTlZMDQo+ID4gPiA+IGFuZCBub3QgaW4gUFRMICh3aGljaCBJIGRvbuKAmXQgc2VlIGluIHRo
aXMgcGF0Y2ggc2VyaWVzKSBJIHN1Z2dlc3QNCj4gPiA+ID4geW91IGFkZCB0aGlzIHBhdGNoIHdp
dGggYXMgYSBwYXJ0IG9mIHRoZSBzZXJpZXMgd2hlcmUgeW91IGhhdmUgYQ0KPiA+ID4gPiB1c2Ug
Y2FzZSBmb3IgaXQuIEFuZCBpZg0KPiA+ID4gdGhlcmUgdG9vIHlvdSBvbmx5IGFkZCBpdCBmb3Ig
TlZMIFlvdSB3aWxsIG5lZWQgdG8gYWRkIGEgY29tbWVudHMgYXMNCj4gPiA+IHRvIHdoeSB0aGlz
IGlzIG5vdCBlbmFibGVkIGZvciBQVEwuDQo+ID4gPg0KPiA+ID4gVGhpcyBwYXRjaCBpbnRlbnQg
dG8gZml4IHRoZSBpbnRlcnJ1cHQgbWFzayBmb3IgMzUrLg0KPiA+ID4gSSBkb250IHNlZSBhbnkg
cmVhc29uIHRvIGRpc2FibGUgdGhpcyBiaXQgYXMNCj4gPiA+IDEpIGVycm9yIGJpdCB3YXJuaW5n
IGlzIGFscmVhZHkgcHJlc2VudCBpbiBpbnRlcnJ1cHQgaGFuZGxlci4NCj4gPiA+IDIpIGJpdCBp
cyBkZWZpbmVkIGluIGJzZXBjLg0KPiA+ID4gMykgTE5MIGl0IHdhcyBtZW50aW9uZWQgZGlzYWJs
ZWQgYmVjYXVzZSBwaXBlQiB0cmlnZ2VyaW5nIGl0IGR1cmluZw0KPiA+ID4gZmlyc3QgREMgc3Rh
dGUgdHJhbnNpdGlvbiB3aGljaCBkaWQgbm90IHNlZSBpbiB0aGlzIGNhc2UuDQo+ID4NCj4gPiBJ
biB0aGF0IGNhc2UgdGhlIGludGVycnVwdCBoYW5kbGVyIGlzIG1hZGUgdG8gcmVwb3J0IGVycm9y
cyBpZiB0aGlzIGJpdCBpcw0KPiB1bm1hc2tlZCBmb3IgID49IExOTC4NCj4gPiBOb3cgdGhpcyBi
aXQgaXMgaW50cm9kdWNlZCBpbiBMTkwgdGltZWZyYW1lIGZvciB3aGljaCB0aGUgcmVhc29uIHRv
IG5vdCBhZGQgaXQNCj4gaXMgbWVudGlvbmVkIGluIGNvbW1lbnQgYW5kIGRvY3VtZW50ZWQuDQo+
ID4gU2ltaWxhcmx5IGlmIHlvdSB3YW50IHRvIHNraXAgUFRMIHlvdSB3aWxsIG5lZWQgdGhpcyB0
byBiZSBkb2N1bWVudGVkDQo+ID4gd2l0aCB0aGUgcmVhc29uLiBXaGljaCBtZWFucyB0aGUgRklY
TUUgY29tbWVudCBuZWVkcyB0byBiZSBtb2RpZmllZCBJbg0KPiB0aGUgbGVhc3QuIElmIHRoaXMg
cGF0Y2ggaXMgdG8gZ28gdGhyb3VnaC4NCj4gPiBBbHNvIFZpbGxlIGNhbiB5b3Ugc2hlZCBzb21l
IGxpZ2h0LCBvbiB3aGF0IHRoZSBIL3cgZm9sa3MgaGFkIHRvIHNheQ0KPiA+IHJlZ2FyZGluZyB0
aGlzIGFuZCBpZiB0aGV5IGhhZCBtZW50aW9uZWQgYW55IFdBIGZvciBMTkwsIGFuZCBpZiB0aGlz
IGlzIGZpeGVkIEluDQo+IExOTCsuDQo+IA0KPiBJIHN1c3BlY3QgaXQgbWlnaHQgYmUgc29tZSBr
aW5kIG9mIGlzc3VlIGluIHRoZSBETUMgZmlybXdhcmUgd2hlcmUgaXQncw0KPiBhY2Nlc3Npbmcg
dW5wb3dlcmVkIHJlZ2lzdGVycy4gQnV0IGl0IHdhcyBuZXZlciBpbnZlc3RpZ2F0ZWQgcHJvcGVy
bHkuDQo+IA0KPiBJdCB3b3VsZCBiZSBnb29kIGlmIHNvbWVvbmUgY291bGQgdGFrZSB0aGF0IHVw
IGFuZCBhY3R1YWxseSBmaWd1cmUgb3V0IHdoYXQncw0KPiBnb2luZyBvbi4gVGhlIHByb2JsZW0g
aXMgZmlndXJpbmcgb3V0IHdoYXQgZXhhY3RseSBpcyB0aGUgcmVnaXN0ZXIgdGhhdCBjYXVzZXMN
Cj4gdGhpcy4gSSBkb24ndCB0aGluayBMTkwgaGFzIGFueSBraW5kIG9mIFJNX0NBUFRVUkUgcmVn
aXN0ZXIvZXRjIGF2YWlsYWJsZSBmb3INCj4gdGhlIERNQyB0aGF0IHdvdWxkIGRpcmVjdGx5IHRl
bGwgdXMgdGhhdCA6KA0KPiANCj4gSUlSQyB0aGUgV2luZG93cyBkcml2ZXIgZGlkIHNlZW0gdG8g
ZW5hYmxlIHRoZSBlcnJvciBpbnRlcnJ1cHQgb24gTE5MLCBidXQNCj4gZWl0aGVyIHRoZXkganVz
dCBpZ25vcmUgYWxsIHRoZSByZXBvcnRlZCBlcnJvcnMsIG9yIHNvbWVob3cgdGhlIHdheSB0aGV5
IHVzZQ0KPiB0aGUgaGFyZHdhcmUvZmlybXdhcmUgZG9lc24ndCB0cmlnZ2VyIHRoZW0uDQoNCkht
bSB3b3VsZCBpdCBiZSBva2F5IGlmIHdlIGNhbiBtb3ZlIHdpdGggZW5hYmxpbmcgdGhlIGJpdCBm
b3IgTlZMKyBzaW5jZSBEaWJpbiBzYXlzIHdlIGRvbuKAmXQgc2VlIHRoaXMgaXNzdWUNCkFueW1v
cmUsIHdoaWxlIHdlIGFkZCBvciBUT0RPIG9yIEZJWE1FIGluIHRoZSBjb21tZW50IHRvIGludmVz
dGlnYXRlIHRoaXMgZnVydGhlciBmb3IgUFRMIGFuZCBMTkwNCg0KUmVnYXJkcywNClN1cmFqIEth
bmRwYWwNCg0KPiANCj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
