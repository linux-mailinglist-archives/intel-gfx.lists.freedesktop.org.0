Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB2893A84
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 13:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3395610E2A7;
	Mon,  1 Apr 2024 11:10:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFAeS+ui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABBC410E2A7
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 11:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711969803; x=1743505803;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RC0STB1pZlDysAY+5IIw0uaS93qtt1plkATXUn4qvXc=;
 b=eFAeS+uium3LH1RWexH0dn6LV1Kyk2/hGFwPirZX4MC+14fD3mDcllYR
 q674HineaKNDK097YOz7ogpupnzg2Fl308Rzy7xhxKlORbZVl2uvSy2Ke
 0gv6Q5P1GSVj/Id/FBQC8aD9XWOHTmK00H003cfesb8J70n7klNnRJOxn
 CG/iWOqVAh6CbKr6/5lbpCkMTOl26w1r+voyrr8xWX+KEglA2xQkYRkp9
 eYaFa4War0kNOIpoqDnzQm8AKF0CC4e4M0tXhHyXJ1SLgqQPsOBaXMqk4
 0DXoaz8Vg94MpyHBVdAR2LK1jmACrR6xqxJR0vKaJo4ZGBvGbvR8l/Pes w==;
X-CSE-ConnectionGUID: vVY05DkETnGtef02Z6tPFQ==
X-CSE-MsgGUID: eqmvwHuyQkaGdm9hqbvqHQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="18241111"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18241111"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 04:10:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17712712"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 04:10:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 04:10:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 04:10:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 04:10:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 04:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GCRaxoC9N7t9fxVOw1hOZhOX/BG8ke9pPTdVBJsHzb/UmDoWWyhbZ5QLM/b9s03KiK0xjThOWPlCsHYMagD+DpPAtevAbl9RIfE9XX3G2NhL3FpuU3ZsI2lCmIksKic7DxwtR4xv6vZVR04ok8dYU3wNF+6VqYNLCYghXm8kKF2fgybJINbUkfNwI1c+hIHH8Y+UI695zpXUxhcY+8bEeR8Gkb9PvjrHg+7UhAPZdSnZYL3sIj8zm7bdTQoRiwD6i2drYgFwXa7KBads7VrTS9Q20J71boTwyHDdjBAn4XhymA9gmoG3tUYekHBLiI/1bfPfW6KJLN4rw7LbPicVmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RC0STB1pZlDysAY+5IIw0uaS93qtt1plkATXUn4qvXc=;
 b=hLW9aENmFAyKUEYWMDjiUXjuxRNGAjbmUru6pjzLq05DkAkVu9ag/w43qICkwOmPGnDgZG399WJk8T7xGMTgEg28EKJVgrH3KXU2efGkIzNDdNkLiEvZWLk8Y19LAOGZ3W7PTs7wsp1j9qCvGB9joAWMOhFI7qObofbG2f3XFkK+5BNtPmH7YQvcO339pmvw66k227oIGDJ05UnoUcWqgnVnPWzlVU6nHMU3p+uFqb1s0sWmlQAusf4TPie0PB1DMym3vh4lPEtw9jdR1mNnyX2KQ372dtCY6UUtkSL+1WwLl6wdYBGOGmLkn+WRZU7BGXH5mPryIB94/r8QMW/wqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Mon, 1 Apr
 2024 11:09:58 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 11:09:58 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 08/22] drm/i915: Extract glk_need_scaler_clock_gating_wa()
Thread-Topic: [PATCH 08/22] drm/i915: Extract glk_need_scaler_clock_gating_wa()
Thread-Index: AQHagXZe+3ba/7k/PkuQcc4lDZ7tDLFTRwWw
Date: Mon, 1 Apr 2024 11:09:58 +0000
Message-ID: <SJ0PR11MB67890193CC32CB1D68E96B718D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|SN7PR11MB7540:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FROR1yqXu+W0a5i97jqO/TZr58JMyLGeY5j02gkubIx4fnvUAkxHWtMZ/g9Ji/V4du5iVW6UVVZIwYjlQlGSZ6qE5Za+ipMXejN0MYzz9wFm7yOLPYIvaJA81rTktr8aXqR3d0So0+nGd+kzOkUvpmhtW7dN9Y1XaHO5DrMaDhBvX73XRpgcUHGu7r9QpC+NeYfjXSdFyRHw2N+w3RIKqloF0pre2wDwnl9xMG4zuF/Ub+qIP0AFYZBLC99wFpAH721Df6ZQQk9ujaKiQvNFA/8UXAajgaRNtDnTBdCBj9UyGVrD1sIIDy6karhI4TuWWxAWEVIiYOrhpVEx6IEXC6rrhSXs2iAxNRQqzcvC4puUcXMEraAXFIYb3edSSMDsl5M81RL2HAPnSikWM5/rh4GgNbpZn4+InI9EnT6GBZb554piOhwB0DnGIewqlArlPwDzVJJHl+rqGmGV2HC+9aPoZ1eqJu4+Z9K8FVaYreX6KCFlik8B/NQFDtP+TTor6lujoU41rud8jM0heNrqzCWi4UOGAlQoc5GobGIpfi2hBa9egFc2i5hq9ATcC6wE3JEJYhcx9JcOOGIHXmhaZN4817q7psiDmatoH8scjWT+BxUpaKSo/s9Cm5m6eMNQjZXf86CRexyS7RK8XQ/cEkxDbLmg7Qfusm+k801j6pY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkgvd0N0YXcvd1NCY0xJZ2F3dk9OQ0duWFF3eTN1RUFjYytRU0Q0ZVZ1ZWtG?=
 =?utf-8?B?eklQbS9laU55WGlPQUVTeU5vWXYzMmJyMGdjQ0pKR2ZHakhuMENwRkV6SnlX?=
 =?utf-8?B?U3psVnVjRURyMlpQd3FCWXVqd0ZPSmNhRHRnRmhOVkhneDJ4eFdTRnVXaDVS?=
 =?utf-8?B?RCtXbTIrbC8rOGxwcjV2dXltcEFMVkVSZ2NjSXZHdEhRZzBkeGc4enVmUTM0?=
 =?utf-8?B?MFFCVGVnVVB1cS9aVGFPc21qRDFNMFJVYmVMVjQzcVozQ2E2YlpzWXhBL0N3?=
 =?utf-8?B?U1FMLzBhTU1DZFBldW0xZWtFdjh1cHFqaTlxNkJrdS9jdWtpRXNPMWhtUnJj?=
 =?utf-8?B?NDU4eUlKU0kxTDAzSnR2ek5NMVhQL0dOeEZ2K1BRaWM1SWhvSHltdjNhTnBu?=
 =?utf-8?B?Y2dvVHZZQ2pMdDBnRVoyN1c2RTBQcDM3aGFqdEF5WU0yQnM0RWVuWDZQTFFZ?=
 =?utf-8?B?ZG5hcWQ1TnhkKytKeHAyZmRkZzJ3OEVCWUFXQ0pUY2x6eXBqUUFXSUlkY3ZW?=
 =?utf-8?B?UU83RjFsQkJDUmZkN0RSNmV6YzZMTCtIb2Y5c1VIZlVLL2tIVFN5ajN2WlhE?=
 =?utf-8?B?cmMxMXZlYXR3OThqTTVqUW0zMW94K1dDcytPT2k5amtrSkkvSnprQUtBRHpZ?=
 =?utf-8?B?K3pxSlZtTFFqNEtDR2ZhSVFra3U1Z011SmtIandiWEhNQzRvNzFGZjB3VmRx?=
 =?utf-8?B?UnZBOTdMWnRHdmFEbmFXNjJpR0dVcXRJSWhKQkhDYTN6ZloyaldiR2N3VGNv?=
 =?utf-8?B?L1lQaDhiK0xKMXhjaTVYQUJ0MFdKN1NYditUZVpVQlRmYmpzbCtPNjltb3Fs?=
 =?utf-8?B?WVlhVC8wV3N4OEpEZVhCaWZBVFdKOUlkV0s0VjVSeFVtWnY1UFA4dUxOaFd0?=
 =?utf-8?B?ZnJhRHBVb1ZlZWxCQWhtVXkwWXFaeGNRMVJGaVE2U0xwM1Y0c3Y5RVVLME90?=
 =?utf-8?B?SGNLbDVWT0dhdGczaGFxeHMrMXBxMEVmRURaRXRNRnhLL0FFU0h0b29iQll3?=
 =?utf-8?B?SkM5dUJtUW5pSTF6bFFXRklmZjVUTkJzbWQxUDlLM0FibGRKcEliWkxQcXVa?=
 =?utf-8?B?TlhaRHNGYzFuM0o2OTBxZWE5SVVaTC9COWMybm9DTE5pYjFCclo4ZjdORnBm?=
 =?utf-8?B?QzRwSUNwSk1LU0xveldydkw2MTNweHNHcFhBODh5R1dvM1J6N0RvS3lLZW4z?=
 =?utf-8?B?QUJiVExQTjZ4cHRlU0hrRE9OVG1IZjVvdUp5Q3VmL3pGQWZnUkVVSnBxeVZn?=
 =?utf-8?B?WVFXM2s0R1JCeUJVSkpZODR4WU1wSkVQT2p6YmpuOWFwdlExZUVQc1NrTzFJ?=
 =?utf-8?B?c1hjZitMZWs1bTlRaWdWWHpvS1QyVEVLa01GZ0dEWHFoZVRFS2Q2aythVEhO?=
 =?utf-8?B?bU1JTGxLYmtMbklPazBhM0Y2QzFQb25ZWmJJcm00VWVFS01HaSt6TkozcElC?=
 =?utf-8?B?bGxGY0d0elg0STZzNUxtTFVZbTFoTG9LRUNnYWdqelJHR0ZzYkVjRGZEQ0Uy?=
 =?utf-8?B?MDBGQ0F4TnVxNFpIYUdONVVxQ2Q1NENUVk9wd2RzUW0zeGRmTVdveGZ2SUV2?=
 =?utf-8?B?b2hYL0tYZFFkcXlGcmw0MFVsZ1hwRnJFd3Y3TkdVYjhXUG9uUlhRVGN0ODU0?=
 =?utf-8?B?STFuUndKZGI2WVpEZlpPMDdseVdNQjVIcVlDcEk0VnNrRlJWWVBlYWdGZlBn?=
 =?utf-8?B?cmpvQ2tIOXZMck1mT3JCOEM4cHI0aVdYV2FQU0JYMEViWVhtWGdoWDY3QStX?=
 =?utf-8?B?OWlacFM2U3Y2Y2hOQWJucVplRW5zSm9CdTg1WEd3SHdmUHUwTFQ1a2R6aEVV?=
 =?utf-8?B?RkY1RGJuNFdxVFpWenFlYlRDUXA2NTRWV2dIREJndm1DcmNib1M2bTBZdkF4?=
 =?utf-8?B?TjlpaGhqcnREZ2ZJRVk4eC9ua1hseDdQanF0d0c5a0IxcmtFbURQY0hOemUw?=
 =?utf-8?B?b0RzWGpjOWxrZHU3Q0xzRytCTEx4V3d3ZlhKc3NsT294UTMwRGRGZWNaRUpx?=
 =?utf-8?B?ZVRsYngrTE1JVXZpT0hLcVJBYXNsT2M0UXN3MXF1aW1PTlNmNUV0ZnhGWEp1?=
 =?utf-8?B?cWFEb3NUZzQxUmR3cnhvRjgzbkxJbXFYNGNQUnd5NmFwYjJYWjdjd2NaY2tv?=
 =?utf-8?B?VGllRTJDNk1lOFdhV3ZCRjJLd2d0MldkL2cyeHVqRmh0TVJPMVlMa0ZaMW44?=
 =?utf-8?B?cmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3150cfd0-3f1d-420c-238a-08dc523c4505
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 11:09:58.9222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 51gJJsVtKF00RErgI6G/fQHhdJOQrj/bWTTFGlnVqryl7o+gw3H7Vy10Wn/bAg597THW9/qITZGMgxh8RSZj5HqSiLTVgiGsY7u7iLbn/WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwOC8yMl0gZHJt
L2k5MTU6IEV4dHJhY3QgZ2xrX25lZWRfc2NhbGVyX2Nsb2NrX2dhdGluZ193YSgpDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gU2ltcGxpZnkgb3VyIGxpZmUgYnkgZXh0cmFjdGluZyB0aGUgImRvIHdlIG5lZWQgdGhlIGds
ayBzY2FsZXIgY2xvY2sgZ2F0aW5nDQo+IHcvYT8iIGNoZWNrIGludG8gYSBzbWFsbCBoZWxwZXIu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNiArKysrKysrKysrLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDgz
NDc0ZmNmNDEzMS4uNjE5N2I2MmRhYzU1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTU1MSw2ICsxNTUxLDE0IEBAIHN0YXRp
YyB2b2lkIGlsa19jcnRjX2VuYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gIAlpbnRlbF9zZXRfcGNoX2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2LCBw
aXBlLCB0cnVlKTsgIH0NCj4gDQo+ICsvKiBEaXNwbGF5IFdBICMxMTgwOiBXYURpc2FibGVTY2Fs
YXJDbG9ja0dhdGluZzogZ2xrICovIHN0YXRpYyBib29sDQo+ICtnbGtfbmVlZF9zY2FsZXJfY2xv
Y2tfZ2F0aW5nX3dhKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0
ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0
YXRlLT51YXBpLmNydGMtPmRldik7DQo+ICsNCj4gKwlyZXR1cm4gRElTUExBWV9WRVIoaTkxNSkg
PT0gMTAgJiYgY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZDsgfQ0KPiArDQo+ICBzdGF0aWMg
dm9pZCBnbGtfcGlwZV9zY2FsZXJfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLCBib29sDQo+IGVuYWJsZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtMTYzNSw3DQo+ICsxNjQzLDYgQEAgc3Rh
dGljIHZvaWQgaHN3X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+
YmFzZS5kZXYpOw0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IG5ld19jcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gIAllbnVtIHBpcGUgaHN3X3dvcmthcm91bmRfcGlw
ZTsNCj4gLQlib29sIHBzbF9jbGtnYXRlX3dhOw0KPiANCj4gIAlpZiAoZHJtX1dBUk5fT04oJmRl
dl9wcml2LT5kcm0sIGNydGMtPmFjdGl2ZSkpDQo+ICAJCXJldHVybjsNCj4gQEAgLTE2NjgsMTAg
KzE2NzUsNyBAQCBzdGF0aWMgdm9pZCBoc3dfY3J0Y19lbmFibGUoc3RydWN0DQo+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgCWNydGMtPmFjdGl2ZSA9IHRydWU7DQo+IA0KPiAt
CS8qIERpc3BsYXkgV0EgIzExODA6IFdhRGlzYWJsZVNjYWxhckNsb2NrR2F0aW5nOiBnbGsgKi8N
Cj4gLQlwc2xfY2xrZ2F0ZV93YSA9IERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMCAmJg0KPiAt
CQluZXdfY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZDsNCj4gLQlpZiAocHNsX2Nsa2dhdGVf
d2EpDQo+ICsJaWYgKGdsa19uZWVkX3NjYWxlcl9jbG9ja19nYXRpbmdfd2EobmV3X2NydGNfc3Rh
dGUpKQ0KPiAgCQlnbGtfcGlwZV9zY2FsZXJfY2xvY2tfZ2F0aW5nX3dhKGNydGMsIHRydWUpOw0K
PiANCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkpDQo+IEBAIC0xNzAyLDcgKzE3
MDYsNyBAQCBzdGF0aWMgdm9pZCBoc3dfY3J0Y19lbmFibGUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IA0KPiAgCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgY3J0
Yyk7DQo+IA0KPiAtCWlmIChwc2xfY2xrZ2F0ZV93YSkgew0KPiArCWlmIChnbGtfbmVlZF9zY2Fs
ZXJfY2xvY2tfZ2F0aW5nX3dhKG5ld19jcnRjX3N0YXRlKSkgew0KPiAgCQlpbnRlbF9jcnRjX3dh
aXRfZm9yX25leHRfdmJsYW5rKGNydGMpOw0KPiAgCQlnbGtfcGlwZV9zY2FsZXJfY2xvY2tfZ2F0
aW5nX3dhKGNydGMsIGZhbHNlKTsNCj4gIAl9DQo+IC0tDQo+IDIuNDMuMg0KDQo=
