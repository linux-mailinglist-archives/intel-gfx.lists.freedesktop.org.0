Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEx+IDD/vGn15AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:02:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D3B2D6F08
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EBC10EAA7;
	Fri, 20 Mar 2026 08:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsSkcusM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9EE10EA9D;
 Fri, 20 Mar 2026 08:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773993773; x=1805529773;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=chCACyTp8xi+dZJ0bHEfZihQgzz/CDfOorEGlXoZesI=;
 b=JsSkcusMuhLYXDolvOoAxEVHQWFBEhwQ7KbUH0pEUnz5Nw7N7ZhNeOH+
 kxfJqco1OM1r38imuf0cUctFTRJrk/Xf2apgZjxXKfsw0H6c0sVFMKWXh
 59yr66x2HDn0w75KjnNO+jpgRPpHmU9Cw+pYkxQAxYfXutCQswOE08wfx
 2c/LzdpBxQL3oKl/0qZ88TQ54TXCRJfhq4nvS4sVqtc+rbNRsWt0vnoRg
 Ls9K3T1CDptN/U2byiFWwXGkrlTdJh8hw0nQz2J/p65SprHIaGFoXUnJd
 GA20uzOgeHTndGgO1izIn1D1vtSP0L18k+FGcSNPyxvVIRUSZOMQLWovC A==;
X-CSE-ConnectionGUID: y9TmjrUQTtWvmAvFl7F07A==
X-CSE-MsgGUID: 2FJiLpU/T6atM9FMlF9dRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74256675"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74256675"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:02:52 -0700
X-CSE-ConnectionGUID: Kq14mzFCSK27l9tnXodUSQ==
X-CSE-MsgGUID: nYo3jdkWSI+cyxqQM5rVBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227941524"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:02:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 01:02:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 01:02:51 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 01:02:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nss09MnHHKqTCVdeEme5sQ/xU8hot6VI+nHjwUVDDsR4IXt1nHNKqFDmyaClow04QVaz+CdunYh1fhlK+XjDGIXTDvE5FJy447kmW4y4qKqIyVx4Y90WyGT5f4jfzv5czNRX/T6VfFHYlVuLcM5Xl6+MuPT1NX0CHfrtfanXusY1TEGAfFujsxlOMBfZ60M5d7R/R2y77/fDSSjcMGFGFiCfRpXT3lbp+VK1r4ccMUbvcuzbTlfjxhWWpd1zISFYpXMYHO5FVfTrACno0k6zmdRAsJJRV2aoQpSbbwGWupTUxGozMfOWMv/di7+fI+10f27im08mJlfYAnx5e8aghA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=chCACyTp8xi+dZJ0bHEfZihQgzz/CDfOorEGlXoZesI=;
 b=G/q3prmATRnUvuaIxMwOCfWljsVzNQ4C4gjUvR5KAo65Ub47xfNyCaAQZI2BEngE/Eb6loaio7M7CfZRLCVfr2Yx1BK5Zbwjx0pAqcHGxymIj8BBGC+dce/kyRfoxRTsga3f8ock9fpWvxtiyx/Mf46nqFS8HwiirU3cEvL9aBcCEYDIAK4PqoFXvhncbTWEeuFQOTzWYNti0Im/JhSxWJ8mXENaMH2SaVtfqn+BXVUsKssj4L2bKkDOa+6eEuILY375pO6YWxrpgY8acSyVEDFY8c/bVsYU6wNkDO0n0BBlEtMI5ggEjv9BBPai8GRfc8r52bhaBMJHc+0mG8tHOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.9; Fri, 20 Mar 2026 08:02:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.018; Fri, 20 Mar 2026
 08:02:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Ignore device ID for Dell XPS 14 DA14260
Thread-Topic: [PATCH] drm/i915/psr: Ignore device ID for Dell XPS 14 DA14260
Thread-Index: AQHcuD5e08B5IoEstEWlbT+v6BqNgLW3D1qA
Date: Fri, 20 Mar 2026 08:02:40 +0000
Message-ID: <0b7479e3be21dbdc17eb4eb3421ea99ba9e6f34a.camel@intel.com>
References: <20260320075108.1395951-1-jouni.hogander@intel.com>
In-Reply-To: <20260320075108.1395951-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6213:EE_
x-ms-office365-filtering-correlation-id: 23b35dec-d297-4bc1-4902-08de86570f2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: N6QVhFE0Dz8Hh6wHBszFdFU9BvtB2G9hDYVSRB9VL63uwc2GZv1fIKKcZZlPnicUGVb75VAlHJgwnGsR0kLIJDI9pzqkJeF2pJKJXhN4e9iuUFqS35dsJUspCBpK7iOvjUVpemhGkEp5eIg6Hpm2JVBrqcQieIYH1Ke0StW4moQJiXOP87/s8nPIGAqeAEhDR/Fy+voDlqffiYg9b+H13+LTGKt87xzyU9YJfETeo+fhDj3WiIb0sDFZux8cv5s0gH9yAo5RNNLGr85PpuLcnVfpn2EX/3vq6hhqBWsvOlNZg3QQw+9ggKa+XdZ247ZRL/D9nGWImbiCH518gzAhOBR0k5KnvRzoI5GBj6AIrJZPdaHdqrA+EZDF+0WetQttka75Z+7QoUOpkWGPbdDiJK4vdUAdRKTzpgFYk22/+e4vI4sANxFWRoRtwYB0yo6Dhanfd5yLx/ATccy/MCKFVBv06Na6K6Teo2qz/yRj+SZB2GIGTqjfgdpdjTlnqcv43VR0HK1OPZmsehje8245qJQ4C0ySNaUObGN/9n4QdCFRuFxDwRYIiyyu+99lKegxoT1jICNulE0nNgknE+5TjHoSPsEX5JYgG/OL6+Myc2cNFA5cVx7tYJ2hGWUUK5Tk8z+nGa6JSGMNhT8Age3qlqU7A6wosyRzpBY+uScp5+AtSgJx/WgvtVwY58PhrTU5T/LLDDHwocViIwbbO76ZqLEhV1L6NNYVGF7ECPpRjcwqS+zG2ERRvaqdHVKL4OcgvpgGiDxtN+xdHoFcOMd8CYFGQMmI92HQK1loJcRSl4k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3NqcFoxcDdsWW5IQ1krOEt5bVRPcllHUmJxa0RZQzQ1RzdPZTMxb3Ixa1pk?=
 =?utf-8?B?Mm85ZmhaT25ST2pzQmgxeTlSRlBQYVNFZHd4bEUycnZWalFEa2w2aHBHd3pD?=
 =?utf-8?B?L0FWeXFybWJDd3dyZlpJYUw2djZhSVROVEJDYW9nZms2MVd6MVN3Yi9qQWxS?=
 =?utf-8?B?dmhxYnY1MkxzSUFLQkgrRllIeGR2aUpTdG1TOFFEL0diMDE4VFpWVU9KZW9r?=
 =?utf-8?B?TGNjUTh4Z1FVdWgxSTJ4N2krby9rNFN5dUZ5Sk9hd0hmbVZnanFyOGVSMjdw?=
 =?utf-8?B?eXUzWis1bVI1Z1g5TzUvUExXbEdvbHlxMG8yV2VBUFNLeWQydEFGYVpMblpt?=
 =?utf-8?B?YnJMY1VaYjhrUmk3UUg1Q0xDNVAzRDdvSGhvOHFuUzQ3eWpWVlRhZ2lyNS90?=
 =?utf-8?B?Z0d2ZHpEZ0FyMFBpMEVDZmhOSkdncGlrWld1engxb3hoRFc4UXVLcEVOK2xp?=
 =?utf-8?B?eDdERitNUXk3Rm1oNkNCcHRyS2Fwc0JhR3Nrc0IrSUU1SjBSTzBGYytxeUlP?=
 =?utf-8?B?dFcwNzdnNHEydXRZUzVWbEVsZXh4ZWx3NWRoUFoxL2xvL3V0cWpCVk56UGZZ?=
 =?utf-8?B?QUY1SjgwWm9rOE5DUDVyUG9Pb3V1VjJrSU5EQnAvVTRLbVZza0hSbWhZZ2Fw?=
 =?utf-8?B?U2VqUDFTRmM5QnJYRVpuSjEyd3g2aFlpN0lKL0lTbW1Jc3MzemxtNTNsc3lD?=
 =?utf-8?B?SWc0L0ZFSXFZM2RCamdWRWhrUTVoZTZTZ3pKVDRkUEJNY212eGNrNlVOcnBX?=
 =?utf-8?B?aEg0dklseFFxU1dYODVVZkF5c0xMd0prcFVYcUQ4Si9vV0ZaZkhpWkp0VGcw?=
 =?utf-8?B?VUxiTzh6ZHVpRVAvT2lndysxbWZSbFZKMityV3U2bzlrU1dIMmxXUTlxTUVz?=
 =?utf-8?B?OFQrYzhDcE92U21CMSt5U0pGdnRQV2NaWXlnUkE4UlBnbU82TE9vMnlCV3Fa?=
 =?utf-8?B?OXhUN0oxTWlmZXpxV1FMQklURUxBRXVEcEtvSVBLaDZOVjJaaWNmcWFZQnlN?=
 =?utf-8?B?TnZoK2FaU1NjT0FlenBwMmdWYjZuV00yWWxSTkUzRHptMGJEc2xiYmNxUEly?=
 =?utf-8?B?bFAvVDVObzJsajZYUiswY0hSbHc5Wk5XZGoyTTVVNldNTlgzS0x2MmwwMUJT?=
 =?utf-8?B?ZWhRM1dWKzcvcmpQa1psTVE3bjlLNlpBSGczRTFiTVdpTisvR0FnN2FOQndt?=
 =?utf-8?B?czExY0o1U0cycGhtYVQ4NHdEYlFhL1J6YkNuejJEZlc1bHlkbUFaR0wvb0M3?=
 =?utf-8?B?eHk0d3BUaTlKT3RtNm9nVHVyUkRBWUNkOGU4Q3FGNWZQVXZCalRKUnlVTTRQ?=
 =?utf-8?B?QmVFN1lZb2J5MTdUdGdZaW9rNGh6WFhPdFJETHUrbkJJNDlybnl3VndvU3dq?=
 =?utf-8?B?cXpFK1l0Nld0aGQ0Sm5ZKzduem1VYS9sbTBWdjNuTVAyellBQVlRUDJiczhG?=
 =?utf-8?B?VCtzWkNzMGRiVmFpalFOQzMrR3hmMzNjWlpzR2ZGc2ZUOVJKNXEvTUp4U200?=
 =?utf-8?B?SmxPV2Q0cUtNTTRJbndrbDg0MlBnanV5T0QrNGtmZUQ2NnBrMXdTdnZpb2kw?=
 =?utf-8?B?elFDSWtKMS9hQVN2bitwSVFxY0x2RmV3L01sMWFrd2hrU2lsUnZlT05ydkZO?=
 =?utf-8?B?elh2NjQ3cUllN0cvaTFXVTBkNjc4NHBBUldYZnZrYkV6d0xtRGhHRHdjdEdB?=
 =?utf-8?B?azlhL2hNSmFYZjlPdFVIejZxamVISkd5ejNKSHBZMTBtdFVyTDhJcjF1N2o0?=
 =?utf-8?B?MTgvUjB5L3lhbk1SUTFwUlZtbmpEa3BOQXUvTFJuNVpORzBMcktOMTl1d0JZ?=
 =?utf-8?B?bW1JbEFZM0hXSEsweXFEcmtXcE93Y0Zxa3VmQUxYWHByRUdScUpKTGtZSXVY?=
 =?utf-8?B?YS9xcG9uS2N2Y3h4TkhxQWN6UVRVQyt0cEpZaEE4dUhEN0xXemJxRWVJaGNm?=
 =?utf-8?B?bHRwTU9ocXJtNXBSSk1IV3pXZTViVGJraVFwc0pWRW8zZ3N1dGl4Wm9HSWZv?=
 =?utf-8?B?dzI1bjhra3lxb1VCcm5oMUcxb0Nwa0t2TVU3RzAvZjRCbXJ2UjZ2dkFiMm5a?=
 =?utf-8?B?eW4yY2JoNDNZV2hRR2FZNkxwSVA3RnBYOU4zL0x2YTNFNmYvOTdURE56bC93?=
 =?utf-8?B?ZllGRHM4Qk9xeWw0eldRaXpkVDd4U1MxaThLN3d4UElZT3dWNkJjd3VpYVYx?=
 =?utf-8?B?UHRLY2tHdERMWTlTV1NWamttSXM2MWIvbmN0YjdGamRDaUhpbWFKM2Z3cHRH?=
 =?utf-8?B?UGY5WkFWei9NSTVEQ3lNdWJOeDNZVVFrby9Wb1g0a0QvblE2TGpmRGFWUTI2?=
 =?utf-8?B?K0N4cHM3YkNzTVRLYnArV2VzcXlINFhlcTg3NDhjS3pDYmR6V2ZzRVF6WHR2?=
 =?utf-8?Q?vTCv6yvyyAb3jRJJm7axSAtAAHc6P5rINgOxkPk296Mfy?=
x-ms-exchange-antispam-messagedata-1: vdzLSz6i2am1teftG9Xw8ARdsqROTOk1uEQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FA84E2B13F233F429C32BDC7C564134B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S0rQiyC4YHE2fCkhWD+YFb+iDNN3DbE6SbWlBufVSWsUpi60ztXfrHixqjN12VbZytBEzIgUYmLqjmnNMXEKg5dz+fk8ZOYCunbbAtY8ul3xVJRfZy/oRIvAIS/xIvVm+xvidL+QwAosVoPt4RuEDqesFWMTSe1y3DgsKm4XS9XiKsl3W4DBfvJsNCHaQXJNjgtAhivFQPUtcFM/YMvVN9XLaOSoMxXnnGc4Cwg16dCqJ2L9LxpF8JdoH8vedwqUwPg2IDP58hQmDzJ1VqFGKOCz3CnK33Mm8Vtjw2IYWxw6fe8sG+JZIUocSIrYfjkvSCq824yqEBSq8SIHzZ3+2Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b35dec-d297-4bc1-4902-08de86570f2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 08:02:40.7864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9YmRvtjlJkoSSEMmlDWT3imFl2LtYH0oZQfJm/kQ5P3Z1fC5nuiU+6T23DuM3sL1Mi10kIKcDHdrXcs/R/JdqO8EqjMAIudPMY+S4QnK0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6213
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E1D3B2D6F08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTAzLTIwIGF0IDA5OjUxICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IERlbGwgc2VlbXMgdG8gYmUgY2hhbmdpbmcgZGV2aWNlIElEIGV2ZW4gd2l0aGluIHNhbWUg
ZGV2aWNlIG1vZGVsLg0KPiBEdWUgdG8NCj4gdGhpcyB3ZSBuZWVkIHRvIGlnbm9yZSBkZXZpY2Ug
SUQgd2hlbiBhcHBseWluZyBxdWlyayBmb3IgRGVsbCBYUFMgMTQNCj4gREExNDI2MC4NCj4gDQo+
IERvIHRoaXMgYnkgYWRkaW5nIERFVklDRV9JRF9BTlkgYW5kIGFzc2lnbiBpdCB0byBEZWxsIFhQ
UyAxNCBEQTE0MjYwDQo+IHF1aXJrLg0KPiANCj4gRml4ZXM6IDQ1Yzc3ZDRiZjhkNCAoImRybS9p
OTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkgb24gRGVsbCBYUFMNCj4gMTQgREExNDI2MCBh
cyBhIHF1aXJrIikNCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KDQpQbGVhc2UgaWdub3JlIHRoaXMgcGF0Y2guIEkgc2VudCB3cm9uZyB2ZXJzaW9uIG9mIHRo
ZSBwYXRjaC4gU29ycnkgZm9yDQppbmNvbnZlbmllbmNlLg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRl
cg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtz
LmMgfCA3ICsrKysrLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcXVpcmtzLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3F1aXJrcy5jDQo+IGluZGV4IDhmMWJmOGY0MThlYzcuLjZmZWNjZTI1OWZiMDUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiBAQCAtMTE2
LDYgKzExNiw4IEBAIHN0cnVjdCBpbnRlbF9kcGNkX3F1aXJrIHsNCj4gwqANCj4gwqAjZGVmaW5l
IFNJTktfREVWSUNFX0lEX0FOWQlTSU5LX0RFVklDRV9JRCgwLCAwLCAwLCAwLCAwLCAwKQ0KPiDC
oA0KPiArI2RlZmluZSBERVZJQ0VfSURfQU5ZCQkwDQo+ICsNCj4gwqAvKiBGb3Igc3lzdGVtcyB0
aGF0IGRvbid0IGhhdmUgYSBtZWFuaW5nZnVsIFBDSSBzdWJkZXZpY2Uvc3VidmVuZG9yDQo+IElE
ICovDQo+IMKgc3RydWN0IGludGVsX2RtaV9xdWlyayB7DQo+IMKgCXZvaWQgKCpob29rKShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IEBAIC0yNjEsNyArMjYzLDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9kcGNkX3F1aXJrDQo+IGludGVsX2RwY2RfcXVpcmtzW10gPSB7
DQo+IMKgCX0sDQo+IMKgCS8qIERlbGwgWFBTIDE0IERBMTQyNjAgKi8NCj4gwqAJew0KPiAtCQku
ZGV2aWNlID0gMHhiMDgwLA0KPiArCQkuZGV2aWNlID0gREVWSUNFX0lEX0FOWSwNCj4gwqAJCS5z
dWJzeXN0ZW1fdmVuZG9yID0gMHgxMDI4LA0KPiDCoAkJLnN1YnN5c3RlbV9kZXZpY2UgPSAweDBk
YjksDQo+IMKgCQkuc2lua19vdWkgPSBTSU5LX09VSSgweDAwLCAweDIyLCAweGI5KSwNCj4gQEAg
LTI3Nyw3ICsyNzksOCBAQCB2b2lkIGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNw
bGF5DQo+ICpkaXNwbGF5KQ0KPiDCoAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShpbnRlbF9x
dWlya3MpOyBpKyspIHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9xdWlyayAqcSA9ICZpbnRlbF9xdWly
a3NbaV07DQo+IMKgDQo+IC0JCWlmIChkLT5kZXZpY2UgPT0gcS0+ZGV2aWNlICYmDQo+ICsJCWlm
ICgoZC0+ZGV2aWNlID09IHEtPmRldmljZSB8fA0KPiArCQnCoMKgwqDCoCBxLT5kZXZpY2UgPT0g
REVWSUNFX0lEX0FOWSkgJiYNCj4gwqAJCcKgwqDCoCAoZC0+c3Vic3lzdGVtX3ZlbmRvciA9PSBx
LT5zdWJzeXN0ZW1fdmVuZG9yIHx8DQo+IMKgCQnCoMKgwqDCoCBxLT5zdWJzeXN0ZW1fdmVuZG9y
ID09IFBDSV9BTllfSUQpICYmDQo+IMKgCQnCoMKgwqAgKGQtPnN1YnN5c3RlbV9kZXZpY2UgPT0g
cS0+c3Vic3lzdGVtX2RldmljZSB8fA0KDQo=
