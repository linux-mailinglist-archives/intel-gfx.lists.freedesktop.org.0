Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IUsCq9C1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:57:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EACD3BB8E6
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7ECF10E61E;
	Wed,  8 Apr 2026 11:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+S76UJL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9203510E341;
 Wed,  8 Apr 2026 11:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775649452; x=1807185452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TUuAo7A/++Evkosw3n5asiuGtiHIGaA9mlQhaGjNU90=;
 b=E+S76UJLuYDkcJCtvvlLfvMppp/mN94PvlElyS8kKqQJfwR+olAho0e4
 uJYHqiiN+c3xIpTdobl3fKTwSBsMO8rKICWlCgd6DT5fAAkrKhMChQsqO
 1C+X3lIHhQ8C4y23SLlrwiaqzGifU2v7NE4luILcZM3lgIkGtxIrNhT/h
 Z4VvZG2Dby/z2MZ+5dZoC/iWluuINSX8uvBq+OWWgUYAUlHOrJFNB3J5f
 PGBnYgW26uwow1wO0YF79Qrgww+Q68RJj8gs91QJKYpocoxNFJDpSr4Bk
 68mI2p/oCBVfCkTdxlpJTj2DEuLxyEIa0zUBrQxFw+dbA7QUJ/6cqLinL A==;
X-CSE-ConnectionGUID: BCfAdx14TP6/yoesctJhdQ==
X-CSE-MsgGUID: 6Qx4nx+aSgS3keKXGLjH8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80489435"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80489435"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:57:26 -0700
X-CSE-ConnectionGUID: 5ruXJBhmQFiQTe0zUcPkrA==
X-CSE-MsgGUID: 9ZgM62yvRLGeklf50yeYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228387095"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:57:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:57:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:57:24 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:57:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dqu0Ui1azynn6PD7HBjETf10OBFTGCXIBp8bS1uw0nx+jOmz/cbzM4ItAGsZ34np0lAkOF8VDTwPqJ5GEW3GiW3V3tUctkqQti9Kv5QeBUp4kRVyF2chFhuWCMb0VqeCiLZM1ZBWQ3lSswEIcGQGI6+WqWFa1pUnDHz4/THKeDyCmBCjTJmw7xNfnJ3e9rBDfwptfEIXQDgvvQwfwt/1qCmHlJZsdW6yvqQ865ugl5hpnxlcg9ACHxcBlFe+1QHAzrFUAQcO4vI6VaMEScMIYz0z4S4YMW/jDYQsWui2orzYuvLl/LyBpwsKJjuNnJwAl0405MlFdoBJQv7yrqgvjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUuAo7A/++Evkosw3n5asiuGtiHIGaA9mlQhaGjNU90=;
 b=OfCxOYcb9NQbm0wPx/dxHz+cCUbCIMCWa1A3KQmxWiDw4X8J1X3mKM/K/e16JqmkDWeyBmDJ4AQc8EY2ZSQGWlIhzBnQ2oQVKkbwC6DDuEkRnVAiVHkjT2a2eCAQgkGFuSrKHUOyHsOiNtk7msgNQoaVwH9dRP6l4Lcj69bsbywTG4z3oEEklxyenJesGMaskw+nqInnMms4Qpsa6Nn2ucJIoVqi4SINuE7+lsj2LV53+boTGx57Iep2E9sVWXto2pa+TfVKgstD3VsEjWGfoNNGHeYty0jjaQmYQcl+1MJpWWFvbLUiJlTtIzSv8EafwLkn0cP0ovxcGPvW+dYb+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Wed, 8 Apr
 2026 11:57:22 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:57:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/9] drm/i915/wm: Extract skl_ddb_entry_verify()
Thread-Topic: [PATCH 6/9] drm/i915/wm: Extract skl_ddb_entry_verify()
Thread-Index: AQHcu5Z4CNmhe+wktUSD1dYy1j0kCLXVJocA
Date: Wed, 8 Apr 2026 11:57:22 +0000
Message-ID: <73affe1c9618fc715a148453360d12ad1780ee07.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5230:EE_
x-ms-office365-filtering-correlation-id: c73d7b36-2705-4f32-cfa7-08de9565fe1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: R+mbthTdwb4DSHhxd3oeIAEPZL90cyP3m2ffGkd1KMvGHI6ySA1LoCEKiRCR3+rFGDZBidlEegR71cSbO9d9s0YucG6UjNRtquFJzc1YVKUKe5oGt8zuoYH/pTDCk996Go/HYwMqnGQF3qttKvXbWCR0nouPkR/d489SXCeLsqeB4d503GDT+DZtE0sMWWJ1OQik2qoHMc/tcMjHkUuLcTYfuV1KHUxndNdDtumvKF5oe1UGuJGS9qI35Y7jsGA+eMUJUyy4CCyuCS/2M0bL7DRzM5BwAhQmxyX6iov1Zo06dyhkVKJ7vNWfuhsMNrZqXP0z9ZDEpp5SROXgAtQeRmVRy5nJcePZeNff+bVMZhdTtQ43B58zc18cKPSUN8EdKv9mEl76oY+sjhsrIrC9DXQInEvX2FLFVm34+MtWiZMCApcVnmb97xXV5m2sVnjxxAM3szoFQlob1Sky+BCkAbc9GAjhKqagRDyyr178VOjhnIAKMH4/PDwaLqZrgD+A9s+ovdQgPjlqzHxpmp5Q8HueRjfrH+MnOB9+0B02oZOB4nNmEEjPwKdM9dTOyp+dcw+wiHVKw0P3A7RU+GlISW2T6s2iE6Mp1mwQVEgNL0ZW1oZHMpyaFFBmoK0e57dhqhjraxQdMs5mElAl2QdNB041cxrJ3gvc4et3chIS1ngz1xM9SoL2gQyIOS2qtkgHTWcuetNWE6bLBA8l6pIMfes171sozyXELbGRDmp0RwVIFXkQYIEJbuQ7YXitHXMwUos4z/6GDnyObqWe4TS7QWbWLobT+rLc50/0rePSS/E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWRUVjlURTJKK3FwTGVCQkxWdXNnNUpmTXorNGdGYStoUGx1MDlGb01GUkFT?=
 =?utf-8?B?U2ZLSkNpZHFiaVdSdFQ4cXR1aC9rR3I4RFhkOWhxR295RkRXQmV4eUh1a3Nj?=
 =?utf-8?B?QVZCbTNtcmZlZUYrWVZtZ2J1bkdCT0V4aXdpeFQyUlRoNzZDRldRYWNyK3c1?=
 =?utf-8?B?bmh1cWZXREI2Y3crZUVmZWdmZTJnQXA3U2ZmZHRyN0MyY09HY2s5TlE3Q2pi?=
 =?utf-8?B?aDB0VG1tVG9xSVV2L3hScmVaRjhzbHFJSFBnK0hXZmcxOEc2L3Jhek5GN3RL?=
 =?utf-8?B?aU9PaHI2Q2FnWlV6Qk1zNERmOC9QWVFTZXlRMTV2NExDQ2NTY2wzRVVRQjlq?=
 =?utf-8?B?YTNaNU1VU1E5VW81MW9PK010ellPa2dSNU9XdTdYbmxwakhKVXdvL3dtMjRB?=
 =?utf-8?B?YkI4V016L2JZVmsyK3EycUtibmVNK29hVis4ckFpSTZZeElIQUtRc0RUUVJE?=
 =?utf-8?B?ODRLR05USE82WFhBQ0hMVXV2Q05hQ2xRVkRHQ3g2Smp4WmcxdUpXS3dPUWxB?=
 =?utf-8?B?S2NTbEVmYWRjWHUySjYwa1VaUmtzdUpseVRFMFU4aXBZeHVKYlBzQ3paTHgz?=
 =?utf-8?B?d04vcFNpbHhDa1VVOWRDVVZ6OEVoeThXQXI1K28vUnNXMlpqUE5HMkZ1WWNH?=
 =?utf-8?B?RWZHaGp3ZmxtbDdsOFhjZVZsVysxN3pqaEVDd0lBditZY2ZidVJaZ2MvdU43?=
 =?utf-8?B?cEkrNE8vRSt0NlE3ZGtmN1Flb2w2M21lRmw2cW5aRkZSMjRPdEMwY0QzRGJC?=
 =?utf-8?B?YlF6YklkMHZtUW5wU0RwdUcwT0p1am15cHhQVnl1cDRDTHZyb1E3NXVmQlE3?=
 =?utf-8?B?c2MzRnNvdjZtN1h0c0hiR3duTWxzMEY5M2FFWXIyR0NuaDIxVkZoazJ0WUpH?=
 =?utf-8?B?TjhSUmhET1FGQ21yYW9aRnlGYkNMSGZxYjUyc0FQQ2RSMnFFNzZsR2w4TXYx?=
 =?utf-8?B?S0VidWFkZEh6aGpnRU9CZFByN0R4VmlKSWJLNUdWeUpuYVRXSzRCVzl5eWxs?=
 =?utf-8?B?WWJtamtidTQzVXJZZTFBcWpLNzY3ZmtCNm5nOW9KeGlWR05IeWQxZU9zbVVu?=
 =?utf-8?B?WkxWNjQvTFNXKzZqRWZNb1VEdU1BbEExRk1UTTdiTmh1ajQzbzRGMEdoRTMx?=
 =?utf-8?B?aDk5cmpVRERxSWR6blVDUFo2OFI1QU9tNitDWXZzYUVPS1ZkQVBJSVRIL3Mr?=
 =?utf-8?B?dng3VG0vQzJVOEx1b1dXbGV3TmN3dFZOd2o3YVY4MkRpaVVRUmZ0ek5pVkdu?=
 =?utf-8?B?NHR5TTVxVGhxd01tQ2JmclRzZnVMNVh5dEZlQTJPaGU4VU1sNXVWamtDcGR2?=
 =?utf-8?B?bWxEcWR0N0MwcHVDWjBEMVJ5SUhoblRWeldzckZ4OUtrZTMreE14ajNmZ3BM?=
 =?utf-8?B?em9zaSttL0VmeVYzNTc2RHFQa3hTZE1qZDhDMnNEMHVZdncvSjJ6Q3RvYnVC?=
 =?utf-8?B?T21OblB2OHh2akhJVkgrdGJtbVBlMHZQMGlWaURRQngxeHpVT090RWhSZzNl?=
 =?utf-8?B?N3czNUd4OVZURndxbko3K0VtL3FXWGgyMk4vb3I2TGpjbkJSZUl1WUQ1UjZI?=
 =?utf-8?B?T3lmazkwNFlhSHR2TmJ4Q0NDUFg0YWtKT3J2NGU1emlCcWVVREdwTHk1ODRx?=
 =?utf-8?B?bDUxRS9mQmsraHBRMXpEd0NYN3BBQ1ZtL0R0Mnl5Tk5IL1FaQ0pVQkd3SytV?=
 =?utf-8?B?UjhFVnloNVVHQU9CTUc2RnV3QVFkZm5vNXd3Umo1bG8zaEtWbzR3WUQ5L3l6?=
 =?utf-8?B?NzdlaHZLUG1MMmNITzc3YTN5blJhaXZDMzVrbGNqUnhBcGl5WkR5WjU1RUo1?=
 =?utf-8?B?NGR1OGY1VUJJNjRuQjJXajNGS0cyNUlJL2dBa2hhTWI4SUtYT1MrekRQV0Vp?=
 =?utf-8?B?akJOVXp4RVdEN051VWw5MStvYld1TjI3K2FjRFdUSmpTNVJ5S1hIMWtRVjRn?=
 =?utf-8?B?L0g1SllXK1YzZU1wZGROUTV5S2ZjcXpQbGhIdXEwY1BmWmczSUFDeDF1c1ls?=
 =?utf-8?B?dkNwQXhTcVlIbDYra0FMYVFNZXgyTkJOaHR2VmIwY1FkS2pjbzlPWGhVZnBZ?=
 =?utf-8?B?STE3SFk3OXQxcVc5KzV1a2hxR3V2RWM0WlRLQWJ3a2xWdlU0MkhLbDExWmNs?=
 =?utf-8?B?SHd3SlN4cUl4b1Y4bGNYdVNyR21wc0RmeGk4SW15NjNaVmNTUFRjUVlDc29G?=
 =?utf-8?B?RUMvaUQ2ODBHZy9uMndIVUFpMGFhNzdCazE0RlFINDB3cks4Q1VCcmJCT0tI?=
 =?utf-8?B?SEo2RlRWNlVNK2J4Zk9IL0M5cU1SWlVVVWZhcFk4TVJIVmFSdHJkaDF2d1lj?=
 =?utf-8?B?YXlTcXVhc2pFWCtXa3JmMzEyUWcrbVF4UnpkV2VWK2pTU3RRUVdRZ1UvL1F0?=
 =?utf-8?Q?/hz6fkflVkYQTorZfCPNoFu9UEzzE7AtV1MBnbZFEhuP3?=
x-ms-exchange-antispam-messagedata-1: Jyz71M7kUhBImTtHcpeRNzwFLNwQ1dta9+A=
Content-Type: text/plain; charset="utf-8"
Content-ID: <77A22F9065A1804092802D1FB88E376D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IS4Cw+gXleH+a2c5sZBfFz10u1Eo1NrLo/0Fhsxq480rSXU0SNQU0qJwo+wNb1K033dm502o/3DWBE2Ct4+8SpqCZeKSyUmri86Zoy8UCzrpqfqSdehyvXATt/7FMCypVbIRZB7v7ltZpX2QT3MPtLpFvdpxAy0Bh9RUrxafcffE3t7h/T+Dldy78d4k2H6HJ+mI/cM6cFA/W2TVyusOk69TGxaH0WBSWZSZ/0iEVa+MY6kruZSk99LGh9H3CZBrlU/UFsBRvPleFNZ2gXkrOmcINb/ibS+nUNjlHpMa6S+sH2GeCjHpEd8WQ9C89+CHAOfdaYjUjdSfyQIoqjp1QQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73d7b36-2705-4f32-cfa7-08de9565fe1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:57:22.0248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GD2Bk7GEwxW7pk3/hDuk4n0K4IQJwZxS5uQmSqrDaFHVpEg8GIBCsk1z55tB7f2mlB6CgJG8knvxdF7yc5H9jAsvXl7H+ElhYUzBEN3t9hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7EACD3BB8E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRXh0cmFjdCB0aGUgRERCIGVudHJ5IHZlcmlmaWNhdGlvbiB0byBhIGhlbHBlciBmdW5j
dGlvbi4NCj4gV2UnbGwgaGF2ZSBhbm90aGVyIGNhbGxlciBzb29uLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAz
MiArKysrKysrKysrKystLS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXggM2UzMjNlNDM0
YmZiLi4xN2ZhZjA5MGExNTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zOTM0LDYgKzM5MzQsMjMgQEAgc3RhdGljIHZvaWQg
c2tsX3dtX2xldmVsX3ZlcmlmeShzdHJ1Y3QNCj4gaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiDCoAkJ
aHdfd21fbGV2ZWwtPmVuYWJsZSwgaHdfd21fbGV2ZWwtPmJsb2NrcywNCj4gaHdfd21fbGV2ZWwt
PmxpbmVzKTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgdm9pZCBza2xfZGRiX2VudHJ5X3Zlcmlm
eShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiArCQkJCSBjb25zdCBjaGFyICpkZGJfbmFt
ZSwNCj4gKwkJCQkgY29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkNCj4gKmh3X2RkYl9lbnRyeSwN
Cj4gKwkJCQkgY29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkNCj4gKnN3X2RkYl9lbnRyeSkNCj4g
K3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
cGxhbmUpOw0KPiArDQo+ICsJaWYgKHNrbF9kZGJfZW50cnlfZXF1YWwoaHdfZGRiX2VudHJ5LCBz
d19kZGJfZW50cnkpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlkcm1fZXJyKGRpc3BsYXktPmRy
bSwNCj4gKwkJIltQTEFORTolZDolc10gbWlzbWF0Y2ggaW4gJXMgKGV4cGVjdGVkICgldSwldSks
DQo+IGZvdW5kICgldSwldSkpXG4iLA0KPiArCQlwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0+
YmFzZS5uYW1lLCBkZGJfbmFtZSwNCj4gKwkJc3dfZGRiX2VudHJ5LT5zdGFydCwgc3dfZGRiX2Vu
dHJ5LT5lbmQsDQo+ICsJCWh3X2RkYl9lbnRyeS0+c3RhcnQsIGh3X2RkYl9lbnRyeS0+ZW5kKTsN
Cj4gK30NCj4gKw0KPiDCoHZvaWQgaW50ZWxfd21fc3RhdGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCcKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+IMKgew0KPiBAQCAtMzk3Nyw3ICszOTk0LDYgQEAgdm9pZCBpbnRlbF93bV9zdGF0ZV92ZXJp
Znkoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJJmh3LT53bS5w
bGFuZXNbcGxhbmUtPmlkXTsNCj4gwqAJCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKnN3X3Bs
YW5lX3dtID0NCj4gwqAJCQkmc3dfd20tPnBsYW5lc1twbGFuZS0+aWRdOw0KPiAtCQljb25zdCBz
dHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqaHdfZGRiX2VudHJ5LA0KPiAqc3dfZGRiX2VudHJ5Ow0KPiDC
oA0KPiDCoAkJZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgZGlzcGxheS0+d20ubnVtX2xldmVsczsN
Cj4gbGV2ZWwrKykgew0KPiDCoAkJCWNoYXIgd21fbmFtZVsxNl07DQo+IEBAIC00MDAzLDE3ICs0
MDE5LDkgQEAgdm9pZCBpbnRlbF93bV9zdGF0ZV92ZXJpZnkoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCQnCoMKgwqAgJnN3X3BsYW5lX3dtLQ0KPiA+c2Fndi50
cmFuc193bSk7DQo+IMKgCQl9DQo+IMKgDQo+IC0JCS8qIEREQiAqLw0KPiAtCQlod19kZGJfZW50
cnkgPSAmaHctPmRkYltwbGFuZS0+aWRdOw0KPiAtCQlzd19kZGJfZW50cnkgPSAmbmV3X2NydGNf
c3RhdGUtDQo+ID53bS5za2wucGxhbmVfZGRiW3BsYW5lLT5pZF07DQo+IC0NCj4gLQkJaWYgKCFz
a2xfZGRiX2VudHJ5X2VxdWFsKGh3X2RkYl9lbnRyeSwNCj4gc3dfZGRiX2VudHJ5KSkgew0KPiAt
CQkJZHJtX2VycihkaXNwbGF5LT5kcm0sDQo+IC0JCQkJIltQTEFORTolZDolc10gbWlzbWF0Y2gg
aW4gRERCDQo+IChleHBlY3RlZCAoJXUsJXUpLCBmb3VuZCAoJXUsJXUpKVxuIiwNCj4gLQkJCQlw
bGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0NCj4gPmJhc2UubmFtZSwNCj4gLQkJCQlzd19kZGJf
ZW50cnktPnN0YXJ0LCBzd19kZGJfZW50cnktDQo+ID5lbmQsDQo+IC0JCQkJaHdfZGRiX2VudHJ5
LT5zdGFydCwgaHdfZGRiX2VudHJ5LQ0KPiA+ZW5kKTsNCj4gLQkJfQ0KPiArCQlza2xfZGRiX2Vu
dHJ5X3ZlcmlmeShwbGFuZSwgIkREQiIsDQo+ICsJCQkJwqDCoMKgwqAgJmh3LT5kZGJbcGxhbmUt
PmlkXSwNCj4gKwkJCQnCoMKgwqDCoCAmbmV3X2NydGNfc3RhdGUtDQo+ID53bS5za2wucGxhbmVf
ZGRiW3BsYW5lLT5pZF0pOw0KPiDCoAl9DQo+IMKgDQo+IMKgCWtmcmVlKGh3KTsNCg0K
