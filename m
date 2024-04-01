Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222F489387D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 08:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4FE10E36F;
	Mon,  1 Apr 2024 06:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijBhlenW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E1410E36F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 06:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711954371; x=1743490371;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AspmxgjdoJSIOvPxocJp3KAFk74QLCIi7ZpliyS22G4=;
 b=ijBhlenWeO7yVawX2vzsywGtk9woij0aVbxon8/Ol28FqDqb/AngVkpG
 nARnxaFG9w90mFlfwB40wZSgrjg1Pmo6FmywsSLfyhq2bW32/oglkHRsV
 2/D1jj6ppMJOA4ic5Bps4j69SON7DhIiDV6JNKhQpm2BkM3tf5N/LfnBw
 2soeRWV4byvLfVBt7IBd9wRatzzo2LAQYnFNBiFG1GThpTsbAPvqshGdz
 0YmeLUfAn1RBy5n+d9uG67r3I14fA8dsDW1mUTExrGd4I7iNH6VG0OBOO
 wy9yqSX/VEbjcIJYqO89sXkmL6q43tIcDvuZcQ8xLbUFBbSp5GB+pJh8j Q==;
X-CSE-ConnectionGUID: 2YDALC6oRFebiL20gRCCWA==
X-CSE-MsgGUID: jvHk3LhRSYClB+Qs1YnaLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7007889"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7007889"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 23:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17702027"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 23:52:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 23:52:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 23:52:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 23:52:48 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 23:52:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpWhrFBMkEwmJbqYWt61rxa+lTVx3WMGaHluQq2vCVDqN+TkLzFaOq9pYmlu4PD+UpLKUWc2i4V8+X7T3tSurUG0E1Eb8G9FyV8I4NrznyD6UjF7r5w4PaonEaaxHlV1CLPdcHR70NjP+5qE9g3+gEU/7To/fcG7k+tn6m6hRYFZ6/dRCH6TZAC21FDBQemJoSZhy6Iv4gajuYZpehZoyYO6l8u/eOFxzF7zcg3G2VqZHhtWUIB4xbTXpKrbQwHaxWg8y4dIVaUoQef/f5gSwyYKSJf5fxYep8zqfaPMTrssPMt1WKHRjk2U/aO5Qjue/5zwjJ4k/iXHxvqt9eUIow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AspmxgjdoJSIOvPxocJp3KAFk74QLCIi7ZpliyS22G4=;
 b=VeoJSY9rjBfzLy2yXwupmwBGyJjPEyh6HxDwpFA4H1d3epZ6fgsSAJhrjtm9D6B/rtTzxH5z6wfGCUoQTbpo+nxFfdjqeeHdFY8v4O+2PH78MDTHqZNfuzSxKRV87mnEq5IEm1hU75oju1SjrA+laIIee//lIvaMxESQvbkdES5AMo0zNlPWqOP/Oe8WopttzjkLJBBYJtJbNX2DMX4OLhFQBSSBvanEOycjaLBvw+tuaqpvYouaSczIzqMP2l/LECSqFcyerRtdUhapOSNGZy4KL6yaT1PY3kJi4wdV0D3aaCQ7OyudkYYchxc/iO/kRjcgrjgJh1vLmAVsvXLgSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8593.namprd11.prod.outlook.com (2603:10b6:806:3ab::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 06:52:46 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 06:52:46 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 17/22] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Thread-Topic: [PATCH 17/22] drm/i915: Utilize intel_crtc_joined_pipe_mask()
 more
Thread-Index: AQHagXZjCy67onMfpUiy6Pw2e6JwF7FS/eHA
Date: Mon, 1 Apr 2024 06:52:46 +0000
Message-ID: <IA0PR11MB730767EADFBA0291E4932805BA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-18-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-18-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB8593:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s7qHnv8DIWQPnkdsRk4kWmYUlqjU4a/wPjeklZ0/Up2edj2VALlHB1t82vSS9Ai46c8sWY5/YKFjiyidXi77vVmHut2Q79hTJl6/p25EHGYKJeUQnDofjEI7w3pc4g3S2ggDsRvZ7cn4cpjBr2MZ4KQEDgtQDcuVQ8C4niMAN94oaSa8kg3JbIzfym8+Hg7PAm93+ZBrOYm+3gxf+77x1Et2SvK5+4LeS+FI+4yL0zhoyD0FgdcgzE+gxLV8kc5sum/IJZNM+BwznJ2RsK6uEM5xmFuXpDqQ6Dk2lbLcdDlcYU+lv4rINIpuBXbfdKEYOtt0IromacsMLS0CcApETyPhAEQ+LbvnJvnrQq3JS4Q1DLKXx1zoR5zSyDhthxJb2qWOBtMND42TewYqgX5lHM66uV3uDyc/5b+ghk/dCahqGb5cgiEEmTRsDTh73z1Tq/1vERGNdvam3ncblAbauTEETnuWrXhmXQcbYRLem/URtKTiuUanDqWiva6RIncTDSUkfHRkrBcRoMF8m07Q7FbOLYD4xrW3UmfldZJpMk9B4J2Usc36Rh80IYxvJZHoDjgriQWjjIey3SO1o1uFK0IMG79hgw49eC019QHLrFuOjm0Gu6XwbMGObNsZyq2n44I27SBlTNo2WKsfso61TLGsu0dFKOM3VJyljJVjpFw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1djRDRoRkdoem5wUGJNeWZydXpaNElDMkNWYlFBSXhBcFVGQW1ZL21yU1lu?=
 =?utf-8?B?MmNSYlNLZzQyeFZpVzUzOERBRTFNWFgxOGlXU1diOGpGVXYwYUxHUFRwM1VE?=
 =?utf-8?B?QWx4R0Nyd200dXAyVSs2Yklhc2wreGZVT0NFWDFCNHNyaEpQT1Z6WTE1cHd6?=
 =?utf-8?B?Z29hSHlJL1FmcmpaRlJmTUw1MHp2NmF0ZWQ3eTJEY3lmbHhHazFwUjZzQ0Z5?=
 =?utf-8?B?L1g0N3I0YXQwWWc4bUJJTlJrck90dnltME1CYS8wU2R1K2k0bFlia0RFdWg2?=
 =?utf-8?B?L3pwNThZYnA5NklxUysrWkhVR083cjhOUVVjdFhYekI5T2pzTHdMTXBGOFlD?=
 =?utf-8?B?S0dRYmxNTXl1bjROWEUrVi9YQWx5US9JTEl3SFlza2pNa2l4dXZpTnRtRFUr?=
 =?utf-8?B?ViswOFJBa1BqNzZGcXZHL2k3L2EvVitta3NXQndUYXFVM0JJaUxDNm01U1pi?=
 =?utf-8?B?bVhoOTRyZVNROWpSN0JDaGNsemtVRVZhcXpRY1d4NjYybFVWWmZ3U2ZrelpM?=
 =?utf-8?B?K3NGWndOcTNrOUx4aGxqVHFDRzZxYkNOcXJVL1JyNEgrUW1UMkU3VnFESlpt?=
 =?utf-8?B?VG0rWjZaR1M5NERicnlHYmZmMUFTbmRSYlYwMnJVckd6dGdHM0d3dUpENW9M?=
 =?utf-8?B?T1dRQkhWUXp3NjNSTHRrS2FYNXg4cXZ4MEdVcUdWdkpRazVrZmFNY0x1SE9L?=
 =?utf-8?B?eW9CVVNJc1VnSi9lSnI1ZWh4TU9uRTAzQTdyM0lGRWJVQ1FHNkJVQlJ1dVJV?=
 =?utf-8?B?dG9XZkoyOXYrd1pEeDJqRytVQ1B5WmJLU0kvN3VtTTZoRjg4Ym8zMHQ0MFVm?=
 =?utf-8?B?Rmo4eGJZV3VldWlwLy80bmxoKytFRnI3NFJETjE5UGFlVCtkMnpXWEw2dE1R?=
 =?utf-8?B?MGtEQmtJcGVPQ1dScEIzQ3pDazFWUW5URnpPNnM2MEM5ZUg5SXRjNkplM0Mz?=
 =?utf-8?B?U25nK0g3OTR1OGxKT09BTWh5YWV4TTEyOFRrQ3FzWXJ3ZmVvemhTRkdhZlVM?=
 =?utf-8?B?M1NaYU9Lc1U2YVpWN29kVGZaYm1YUFlDbXhINDh4Wkp3cmh4RDhzV3NLeEJP?=
 =?utf-8?B?YjVzOXpZSlBDL1p4RFFLSXdNSlo4SlptTFl0QisycWd2SWdudlI2OVdrRktE?=
 =?utf-8?B?bEd1RFI2YzdIRzNidW9leEUzcVpKVE0zcnp2eU5VTjd1aGtSWU5QSmhKNlFD?=
 =?utf-8?B?NzFGTWMydlVCSjBGM3hUS25FQXJRaWJET3Yzci9mOForR25oRlJIdUtPQnBy?=
 =?utf-8?B?UXcvUmxKS0NzeVN5ZE0wRmpsZVdMMHc2QlJ2bHllK0NDajdqcHVwaWlqZHda?=
 =?utf-8?B?cjJIaFlCc3RmK2V6WnJYdHBPOHpENS80bDI4NUx2aVRkb3I3K1N1bmZEenJ3?=
 =?utf-8?B?OGduK1BWRlBOTDhrZW5EZytvWDRtNGlRbWx4ZjhQYS84TXJKUFE2NVNjNXdu?=
 =?utf-8?B?aC9qai9NZmJ6Wnh3UlF0NXVnQVI4Ykp6S3RJZnBXUFdyRjB2ZEtGTHpzcHZM?=
 =?utf-8?B?TVhxUXJRNXo5QjdTV3gxLzRWa1ZMRWRaUDhGcjZhcU8va2xFS2lzRHc4SUly?=
 =?utf-8?B?OXFWdUJDZWV1bmNyR1Fwc2lLaXUyOVN6bXlBeEgyc3poQ0tIWGNzWUppT0RB?=
 =?utf-8?B?ODdvV21OazNDU3hBVkZ5QkgwdXZmN1BsZStMdlVkYjI4U0k0aFo4T3hucTlS?=
 =?utf-8?B?clRVN0dIN2xZeFhBTjAzejBJMTVHcmlkaDNQZURiNXVoQXk1cE5PU003U1NC?=
 =?utf-8?B?bG10R3RPLzRzOGpGTXFsUDRCS3hHZ0VQdHI3SFc2UFBTcUtuTzd3UEgzRXFO?=
 =?utf-8?B?WVdLWERuemw2S0N4UXE5a293ZythanN6bEJnM3RDMmdremUvN3RlOHVMaHpB?=
 =?utf-8?B?ZmZ0YUZPbzhpSXBvWUpOZ3dYSEV1NWN3ZlRCZXIvcng1bUxRM09YMEFxalc0?=
 =?utf-8?B?SnROTFFuWW1vaSswRDVDZm04d1dNRDRKOWxrcjBFWm5YZVhFUllVMTE2YkxK?=
 =?utf-8?B?QzNlczNkRkFpcHlyNnBvNDdlY0g4d2YyQmwrbUdpNVVmQUJTRkl1R3k4NWFL?=
 =?utf-8?B?Z3RUV3QwOEFwN1V0V1JKbGZlNFhLVGdSSU5zVWx2eWVCTTY3MGhDeGFxd3FE?=
 =?utf-8?B?NjlJdmpGRVJBR3NrVkZ1R05LVjB2elVuU2dJOUJ3QzREMVNxQit6VVFIOC9B?=
 =?utf-8?Q?a9LgZq4dNK7k1H4Her2FnbWIdYw1USrVMnwPMFA91Euc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbcb19e0-f7c7-401b-e360-08dc52185674
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 06:52:46.2661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YQvEl33PiYt/32I645f26WbORd3/obhih/6R8UO8apMxTUyY1K5mINi4EoGFPqPPRZYkCWO0yZPG5yLy3w/iPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8593
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDI5LCAyMDI0IDY6NDMgQU0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE3LzIyXSBk
cm0vaTkxNTogVXRpbGl6ZSBpbnRlbF9jcnRjX2pvaW5lZF9waXBlX21hc2soKSBtb3JlDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVW5pZnkgdGhlIG1hc3RlciB2cy4gc2xhdmUgaGFuZGxpbmcgaW4NCj4gaW50ZWxfZGRp
X3Bvc3RfZGlzYWJsZV9oZG1pX29yX3NzdCgpIGJ5IGxvb3Bpbmcgb3ZlciBhbGwgdGhlIHBpcGVz
IGluIG9uZSBnby4NCj4gDQo+IFRoaXMgYWxzbyBsZXRzIHVzIG1vdmUgdGhlIGludGVsX2NydGNf
dmJsYW5rX29mZigpIGNhbGxzIHRvIGhhcHBlbiBpbiBhIGNvbnNpc3RlbnQNCj4gcGxhY2UgdnMu
IHRoZSB0cmFuc2NvZGVyIGRpc2FibGUuDQo+IFByZXZpb3VzbHkgd2UgZGlkIHRoZSBtYXN0ZXIg
dnMuIHNsYXZlcyBvbiBkaWZmZXJlbnQgc2lkZXMgb2YgdGhhdC4NCj4gDQo+IHYyOiBVc2UgdGhl
IG5hbWUgJ3BpcGVfY3J0YycgZm9yIHRoZSBwZXItcGlwZSBjcnRjIHBvaW50ZXINCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+
DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
fCAyNSArKysrKysrKysrKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDExMzBiZmI3MzYzYy4uYWYzNGU5MDVhODVkIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTMw
OTgsMTkgKzMwOTgsMzIgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9o
ZG1pX29yX3NzdChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkJICAg
ICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpvbGRfY29ubl9zdGF0ZSkg
IHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29k
ZXItPmJhc2UuZGV2KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiANCj4g
LQlpbnRlbF9jcnRjX3ZibGFua19vZmYob2xkX2NydGNfc3RhdGUpOw0KPiArCWZvcl9lYWNoX2lu
dGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZfcHJpdi0+ZHJtLCBwaXBlX2NydGMsDQo+ICsNCj4g
aW50ZWxfY3J0Y19qb2luZWRfcGlwZV9tYXNrKG9sZF9jcnRjX3N0YXRlKSkgew0KPiArCQljb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX3BpcGVfY3J0Y19zdGF0ZSA9DQo+ICsJCQlp
bnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBwaXBlX2NydGMpOw0KPiArDQo+
ICsJCWludGVsX2NydGNfdmJsYW5rX29mZihvbGRfcGlwZV9jcnRjX3N0YXRlKTsNCj4gKwl9DQo+
IA0KPiAgCWludGVsX2Rpc2FibGVfdHJhbnNjb2RlcihvbGRfY3J0Y19zdGF0ZSk7DQo+IA0KPiAg
CWludGVsX2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhvbGRfY3J0Y19zdGF0ZSk7DQo+IA0K
PiAtCWludGVsX2RzY19kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsNCj4gKwlmb3JfZWFjaF9pbnRl
bF9jcnRjX2luX3BpcGVfbWFzaygmZGV2X3ByaXYtPmRybSwgcGlwZV9jcnRjLA0KPiArDQo+IGlu
dGVsX2NydGNfam9pbmVkX3BpcGVfbWFzayhvbGRfY3J0Y19zdGF0ZSkpIHsNCj4gKwkJY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9waXBlX2NydGNfc3RhdGUgPQ0KPiArCQkJaW50
ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgcGlwZV9jcnRjKTsNCj4gDQo+IC0J
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KQ0KPiAtCQlza2xfc2NhbGVyX2Rpc2FibGUo
b2xkX2NydGNfc3RhdGUpOw0KPiAtCWVsc2UNCj4gLQkJaWxrX3BmaXRfZGlzYWJsZShvbGRfY3J0
Y19zdGF0ZSk7DQo+ICsJCWludGVsX2RzY19kaXNhYmxlKG9sZF9waXBlX2NydGNfc3RhdGUpOw0K
PiArDQo+ICsJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gKwkJCXNrbF9zY2Fs
ZXJfZGlzYWJsZShvbGRfcGlwZV9jcnRjX3N0YXRlKTsNCj4gKwkJZWxzZQ0KPiArCQkJaWxrX3Bm
aXRfZGlzYWJsZShvbGRfcGlwZV9jcnRjX3N0YXRlKTsNCj4gKwl9DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gLS0NCj4gMi40My4yDQoNCg==
