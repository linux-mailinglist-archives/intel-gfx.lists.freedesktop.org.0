Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F764536E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072E210E359;
	Wed,  7 Dec 2022 05:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2359010E357
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390889; x=1701926889;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CvIT5On0UQ1SzAfpaLWUPWVFF2ad8iejsPVgCOLva7c=;
 b=bFaN14pnhKQv2Nbx005sbKVJcEulDWeibfFf7MVFUB5Q6U+YtnwhITRa
 sv2N107ToSeexU+80BL+LSERfKdOMbnN08/PLwTyUOK24xIIt/8RDnQwo
 KFUMzWGAZX/jVE6lkpXfvPEUM9LXH/NrLw1VNdvF18RpSdVdWVrT7otep
 /gDenxEqXj532sgxF79N9JqnCcd9LrzZrlxOoWmvBckVh8xhNT4HN3b4m
 cQYPE07lJ/XpoBPjDTqeRek47ax/XoJpSOU/MuygEx3NnErTs2jtAMjtR
 WPu1ns8tMLJV8mMtJKc2Oqp8Lan4vl/7NmTIKMXQITOiBpwtAhxYjUIYr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="316821117"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="316821117"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:28:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715062261"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="715062261"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 06 Dec 2022 21:28:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:28:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:28:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 21:28:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 21:28:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mnW5yU7OEY1BSgCLZA/7/bFouAG3QxTCXAlUaGyOL4HrL+clufhdQVc90FScaUfpeysZ57QBOtgAEPCb0t/8b1qSVuhlVkZDRh52P3G2rhtDTb+JTm26kFXvtTqwndoUcmoOrO5+4jHFkKWKedHIXSGsK3nkcUQgvvMjA8ijY6ARj1ge6fwYpWNi3fVKaVzwbPSDANKWNnaKETSQaLF9cpsGIVAuxPUkLEfiyH73mlzRha25Ir2fOkMzSG26cqt2QuRSFJsy6qyy5xBGhaiNM3FoMqLPctEpEMzKq0fTBd6Zlfl5AtqslvDCzuKg4KBCrtXDMTNGe8FJUUCz/nAs8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvIT5On0UQ1SzAfpaLWUPWVFF2ad8iejsPVgCOLva7c=;
 b=KQ8ID9YNIhdaOLlMhsL5opIWyICNnESt0CB4VvVSpbU2t5oeLirTotsN1XhF8a+g4qGf9mY0LSIXX1medmMKzTBKOWwnlSn5H7l150vIPxEmiyRujk4Dl6hvOjg1LzyEqZlyytsgNA74HhnTuIpD5T27CuxmWuoeI1Sz7DGqJXttRu1FIb/QptNFT/8SVbnY0rvv+YNeyBjgy0o8LDZiBkfJGKEVzMYEvuydPE3VXFBS4vwOYrGxegAeKYgw+QGObqMzFuDCEma1QLiiwxbfUvfnutkXg5zb+fIw0W+hQkUQ4UDltTS/pWvL2TtP61rcy/mrFh3hxtaDd5xFXfgHUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO6PR11MB5649.namprd11.prod.outlook.com (2603:10b6:5:35b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 05:28:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 05:28:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/13] drm/i915: Shorten
 GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
Thread-Index: AQHY/1AsWa8C/88kpEumqnRyAaROua5h+pqg
Date: Wed, 7 Dec 2022 05:28:05 +0000
Message-ID: <DM4PR11MB6360BEDF38116F66CA51B1A8F41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO6PR11MB5649:EE_
x-ms-office365-filtering-correlation-id: 2e4c276e-cfa6-4c56-706c-08dad813d19e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zk0HaCq0CaQ6/FbptPuTM4YHzA3W3GVcIcxYXrWf9zYyN5sDW+FMjv9/THrgXRCLu2JHhntHZMdZtxg4annEV7nlEV7hBR4ho7XW/u2vCitlJANq3QkXVeU/HLg66cfGWfKQjYpSkJak++rtU4+QTXoROLXJzaCWBK6qKa0+2vtrl0L0DXk6jfkYE9V8FUXuVIBbLn3slnAYAmpggZvyoUHVywtbURBqBu8yMCEI/JI0IbILHtCbAJ0ezNY1InbGYQ254NDvLGIVDN1F8xlAxO7xlESbzdFc+9vvbz2OU1F9cAF6Hp5065U7fUg2z5R6YOEpxh3XEZELfqWm+cgP5i0hFQ4Wxe9/BXN+CGUArBGj+QoXTM8HQxs/XZXkvMkVIwG7wD7liwU2KpHjG2JIm7wAbnwpqk2/IoiDr1N/PEzAEugbDbeZUy+S4ReOWmCRW215oDMqFaryQVHFGWBuVcvTMujKhZbyO/vhznNML/KSk0fh6l/6zoFROUZiKuzjvYC/PkHOzFxw+R0Quf2klwe6CqLXNCoagNRn0WS/RvScLRICDIZmZoJpw+oG2ltgXoqwydOYpBgKCqBk+Yisir/k23ujdJk27Kb7D1QDZ587+6L0w+DJjUKltWmBHziXPDmDXMpbVomHoo8OoQg8+H6CRPdpP/GFcGKsp5oF+9yWPFOaTLmUTMedpCjilgeVgkcyWyR/xndQtOz0it+ruw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199015)(2906002)(83380400001)(55016003)(41300700001)(33656002)(110136005)(76116006)(86362001)(82960400001)(38100700002)(64756008)(66946007)(186003)(9686003)(122000001)(26005)(38070700005)(8676002)(66446008)(5660300002)(52536014)(66556008)(66476007)(478600001)(71200400001)(316002)(6506007)(8936002)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cndIUXZaYnpqTk53ZC9ka0lCb0FzdGpRVXZMenEwY2w3RjlKOGYvWThQOURs?=
 =?utf-8?B?NmVjajNKUDZIUHpoMmdXVXNhT0hFOTNIOFQ4NEVzazluNW1UQkZCZTE0QjNt?=
 =?utf-8?B?Y2diZGFQaWxDSUcvdm5sN2NFbmZxdVNTSWFqWU85U1hNRGIwVlk1VTNFZVZ3?=
 =?utf-8?B?QkVvdGYrcmhCU2t3WWNlMnlySG9pS1l3TG9FUkVaV0FEaXg3VmxIaWEzaENV?=
 =?utf-8?B?SkhEZEg0RUZPMGFiY0Zoakt2d2dtL3pYbDVKc3FxZUxNWlFhdFJzc1c0Vncv?=
 =?utf-8?B?dFVQRUloenEzZ2RHZ0hJeCtKTVpDMWYvY01ZaGFnN0UrSXI1aDZiR0xPeTJm?=
 =?utf-8?B?WnRxS0hzWGxhNmkvQmVXSVVtanVZbTVncjJoOW9BN2VOWHBVTFlLZzlZZTM5?=
 =?utf-8?B?QVRKQjlHdmw3Mlp3M0NqMi9FZ2FTaEtCVXZ0VHQrMnBOOEswU0w5UTIyTEpZ?=
 =?utf-8?B?RmtIazhxdHIzdFZDbGxUSTRUU1BXZ0wvY0RuZ2NZU0ZydmJpWFhzZ0VpZ05U?=
 =?utf-8?B?TlFmbDQxcWthMG4vN1ArSS8vZWVKWTdJNExuWDc3d0xwWS9KVW55MytGSEhT?=
 =?utf-8?B?R3Z6RkhqaUdEUFlwbFpWMjJtbGlBWTRLNzFvK2hkYTNrSnRHV3h2WkNDUzFu?=
 =?utf-8?B?Qkx2VjFCbVBwbkpoSEFpdm9EVmNUanh0RElqb1dQN04xcGsxdmtaOGlSOGxm?=
 =?utf-8?B?ZjV5QVZlaVU0NEJJSjJzeHM3RjV6M3pkQkpEc3oxLzJCYXBWWU5DV0pzRk1F?=
 =?utf-8?B?T3lkNjdUWW4xWE0yc29rOTJ5NGhtUXo4ZU5ZT295d2pLamx3WlRBMmNuVSt4?=
 =?utf-8?B?MUpLTlYyT0RZdE5jeHg1N3dCdzlXa0hQUk1pMVd1TUFyNlk0LzQ0ZWo0Qm1r?=
 =?utf-8?B?Sk1hVmkrTHc2Tm1ZYUIxNnppUkQwRFZqY0lCTTJpWWtJMEJnSnJQQ0thWHc0?=
 =?utf-8?B?akwyazZXU0RkVldxU1Q1TmVSRTJja014bUJXMkpkTWJXZm8xSXZPRUl3WW1O?=
 =?utf-8?B?cEozWXl3Sk1YYkxvUm1xN2EraXQxWk9zZUxsdkNObVFmTjF3d1dUQVBWbVpv?=
 =?utf-8?B?U0h1S2FjMXRNV0JWbzZPaHRpTkErcVN6Vld3eSttKytBczR6emU1RkZYSmph?=
 =?utf-8?B?RjZQNjVUKzZleGdNeTVpNUM2RjA1RjkwRzU2eFl1Rlg5L001RkpYV0U2ZVdQ?=
 =?utf-8?B?bHNWQ1NCclc2UFlGRm9DOEV0Uyt3Q0lTQytEdUVFdVBiUlVudFdnR3ZPb3ZM?=
 =?utf-8?B?NTlKZmhNN0dqLzB3M2dETUdWZDNTU2x1ODdoZ2VaK2FMd0pCSmZaU3BQWkww?=
 =?utf-8?B?bzFHRjUvRnYzQ3poZ2RWbkZocmtCcG90RDFjMTF2VW5nS2UwTDhlUlM0dGxC?=
 =?utf-8?B?UzZoWnkyY0pzL25oclFSRUtUeG9vODhKdE9YajA5N3VhbldSdmh4M1RLeTA5?=
 =?utf-8?B?d0ZLazVUNElESTdrVzMyYmhUQ3lQcmR5N3haRGpWVmtzVG9LbEJLbU1uS0xU?=
 =?utf-8?B?Y05PN05NZUZLT3luWTdQYy9YbkMvYW1rclNEa2hzb2dKWC9kVDR3YStYKytG?=
 =?utf-8?B?S3B0V1hydFo5WGZhZmhPZDBkb0J0UUdMenNhWjAvbE54VXNDY3NRSDVPR3J2?=
 =?utf-8?B?aHRheTVIZlp0MEt4V2l4a3VDaFVKNjlhWkpQbDhFaSt0TVhRVVR6Nk5aZDhG?=
 =?utf-8?B?dndSVDZ5bnh3K0RUS085ZTRWbDBvTDNlWnk4dkdJTnJ1YVJicEJoazhMUFlQ?=
 =?utf-8?B?NXovNEo0ZWE1N1VVNGJTSWY1LzR2NDE2SE9FRXRXeFNOSXNmOUV1MXN3NVlp?=
 =?utf-8?B?ZnVacmVLZmJpZXJoOXlMVktYbDhodERjb0dFK21ET0hUZURyaDhzdU1pekpF?=
 =?utf-8?B?SzRJbkVTME1QNngreVpiWThQdlBaOVVRNnJ1bTVXRzh3SWhXN2k4LzBCMWdq?=
 =?utf-8?B?UkJOVDhZWDNQaXlnOEFodWJKYmMzTXBpQVpzVEJUZzllTitsWVUzSE5tOFZK?=
 =?utf-8?B?NU1PaTd5OWxFUXdYak96S3VOZE1ra3VlU2ZzSVZZcnVUZUxkTE1SVWI3VFdK?=
 =?utf-8?B?Z255Ym5NQ0F0YXovakZmTWI5SjlyVG9WcDltSjNQY1drdDBEa2RCalBFUUI5?=
 =?utf-8?Q?leTSaQtlcHzmBbfmojRlruI/y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e4c276e-cfa6-4c56-706c-08dad813d19e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 05:28:05.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wkOw/SI54bLs9jeMy5l0rU9PPbtj+Gi8O9kOKRaNUpWotrO/9EcJeM4P7cMtDdM0y86h88XjaxJ0LpuPyRvPKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Shorten
 GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDEvMTNdIGRybS9pOTE1OiBTaG9ydGVuDQo+IEdBTU1BX01PREVfTU9ERV8xMkJJ
VF9NVUxUSV9TRUdNRU5URUQgYSBiaXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBzL0dBTU1BX01PREVfTU9ERV8xMkJJ
VF9NVUxUSV9TRUdNRU5URUQvR0FNTUFfTU9ERV9NT0RFXzEyQg0KPiBJVF9NVUxUSV9TRUcvDQo+
IHRvIG1ha2UgdGhpcyB0aGluZyBzbGlnaHRseSBzaG9ydGVyLg0KDQpMb29rcyBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4g
DQo+IEFsc28gZml4IHVwIHRoZSBwbGF0Zm9ybSBjb21tZW50IHdoaWxlIGF0IGl0Lg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMgfCAxMCArKysrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgfCAgMiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jDQo+IGluZGV4IDg0MmQ1OGRhMzEyOC4uOTU2YjIyMTg2MGU2IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xMjEyLDcg
KzEyMTIsNyBAQCBzdGF0aWMgdm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6
DQo+ICAJCWlsa19sb2FkX2x1dF84KGNydGMsIHBvc3RfY3NjX2x1dCk7DQo+ICAJCWJyZWFrOw0K
PiAtCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRDoNCj4gKwljYXNl
IEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUc6DQo+ICAJCWljbF9wcm9ncmFtX2dhbW1h
X3N1cGVyZmluZV9zZWdtZW50KGNydGNfc3RhdGUpOw0KPiAgCQlpY2xfcHJvZ3JhbV9nYW1tYV9t
dWx0aV9zZWdtZW50KGNydGNfc3RhdGUpOw0KPiAgCQlpdmJfbG9hZF9sdXRfZXh0X21heChjcnRj
X3N0YXRlKTsNCj4gQEAgLTIwOTEsNyArMjA5MSw3IEBAIHN0YXRpYyB1MzIgaWNsX2dhbW1hX21v
ZGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJZWxz
ZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTMpDQo+ICAJCWdhbW1hX21vZGUgfD0gR0FNTUFf
TU9ERV9NT0RFXzEwQklUOw0KPiAgCWVsc2UNCj4gLQkJZ2FtbWFfbW9kZSB8PQ0KPiBHQU1NQV9N
T0RFX01PREVfMTJCSVRfTVVMVElfU0VHTUVOVEVEOw0KPiArCQlnYW1tYV9tb2RlIHw9IEdBTU1B
X01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUc7DQo+IA0KPiAgCXJldHVybiBnYW1tYV9tb2RlOw0K
PiAgfQ0KPiBAQCAtMjI4Myw3ICsyMjgzLDcgQEAgc3RhdGljIGludCBpY2xfcG9zdF9jc2NfbHV0
X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gIAkJcmV0dXJuIDg7DQo+ICAJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+ICAJCXJl
dHVybiAxMDsNCj4gLQljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQ6
DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VHOg0KPiAgCQlyZXR1cm4g
MTY7DQo+ICAJZGVmYXVsdDoNCj4gIAkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21v
ZGUpOw0KPiBAQCAtMjQ1NSw3ICsyNDU1LDcgQEAgc3RhdGljIGJvb2wgaWNsX2x1dF9lcXVhbChj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gDQo+ICAJLyog
aHcgcmVhZG91dCBicm9rZW4gZXhjZXB0IGZvciB0aGUgc3VwZXIgZmluZSBzZWdtZW50IDooICov
DQo+ICAJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0sp
ID09DQo+IC0JICAgIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQpDQo+ICsJ
ICAgIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUcpDQo+ICAJCWNoZWNrX3NpemUgPSA5
Ow0KPiANCj4gIAlyZXR1cm4gaW50ZWxfbHV0X2VxdWFsKGJsb2IxLCBibG9iMiwgY2hlY2tfc2l6
ZSwgQEAgLTI5NzEsNyArMjk3MSw3IEBADQo+IHN0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJY2FzZSBHQU1NQV9NT0RFX01P
REVfMTBCSVQ6DQo+ICAJCWNydGNfc3RhdGUtPnBvc3RfY3NjX2x1dCA9IGJkd19yZWFkX2x1dF8x
MChjcnRjLA0KPiBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7DQo+ICAJCWJyZWFrOw0KPiAtCWNh
c2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRDoNCj4gKwljYXNlIEdBTU1B
X01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUc6DQo+ICAJCWNydGNfc3RhdGUtPnBvc3RfY3NjX2x1
dCA9IGljbF9yZWFkX2x1dF9tdWx0aV9zZWdtZW50KGNydGMpOw0KPiAgCQlicmVhazsNCj4gIAlk
ZWZhdWx0Og0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggMGI5MGZlNmEyOGY3Li5i
MWMzMTQwOTM3MzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtNTMxNiw3
ICs1MzE2LDcgQEANCj4gICNkZWZpbmUgIEdBTU1BX01PREVfTU9ERV8xMEJJVAkoMSA8PCAwKQ0K
PiAgI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUCSgyIDw8IDApDQo+ICAjZGVmaW5lICBH
QU1NQV9NT0RFX01PREVfU1BMSVQJKDMgPDwgMCkgLyogaXZiLWJkdyAqLw0KPiAtI2RlZmluZSAg
R0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRAkoMyA8PCAwKSAvKiBpY2wgKyAq
Lw0KPiArI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFRwkoMyA8PCAwKSAv
KiBpY2wtdGdsICovDQo+IA0KPiAgLyogRGlzcGxheSBJbnRlcm5hbCBUaW1lb3V0IFJlZ2lzdGVy
ICovDQo+ICAjZGVmaW5lIFJNX1RJTUVPVVQJCV9NTUlPKDB4NDIwNjApDQo+IC0tDQo+IDIuMzcu
NA0KDQo=
