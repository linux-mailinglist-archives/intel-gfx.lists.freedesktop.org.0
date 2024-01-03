Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0EF822F35
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 15:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F79A10E166;
	Wed,  3 Jan 2024 14:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E25B10E166
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 14:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704291015; x=1735827015;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JLc/IwZoCoXtF9gRuVycT4yS1CkL6KtV93bQZYzBHAI=;
 b=Htl+hgRQlK0r0k+cqz7J3ZuJlsNVbfgvp/XoSekdfKxZCKM7bPwyNFjn
 0DJiRVNrJepDP19WqzzVZFcQKPoHh+d3705YmS1SWVak44e1MWjvQBwF1
 187dWPY+gyibJjvXGGWk1S/ernFd53lMnIKaZtMgE1olCDaKFJ5G6esv/
 Yl+XeiBaIZC6Os1pEZsC/kIljGFeF/zlbNrS0Ok76S8hJbE6CJctu6hIH
 w9rBX1bloJw2hYHsQzIPhzUrr9h5kuEpaEhJJK1/0KlI7XH4LHU7a+D82
 /Nb83GswBOIjyzWbGpYyxEDpLxdpNwrUv7ynYNab7AMAqZwkdqc4MfmPs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="463415124"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="463415124"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 06:10:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="729794151"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="729794151"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 06:10:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 06:10:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 06:10:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 06:10:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 06:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dw/almXgFH5A7uo4tcMmN3UTpXMYQqDkRtXWoRSmnkWbZioSLjqTwud3YANy/aBNVOWCHGybuukmq/tlsnwb0UqYgpkcZ64L6Cgq2Mk/+Sj4nGbe3nvtH8un+idw29F2woy/+EWftVmcom7VFcuWewcuw+I9V9BwSshpO58hqAbZXqo52KuQ7B0ciGYdqpq9h2E/tQjZgaTsZ21U4cIt6ey8Jj7+M/frBqEZH2kwdRX96LOgdbi2I4gmpRZ+/b8p930LVv562dHfCS1kljVprSPdBv/fKUWUReBBrHetFrabx212b7rf0g+oZaxM+cy2jaXoN2C51t5+qwYwIRSR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JLc/IwZoCoXtF9gRuVycT4yS1CkL6KtV93bQZYzBHAI=;
 b=lMO95FQF3QWuJf9hVT44TWcfVP8Qkv9VkIrFdn2T0gXP5iCMzsWaka0CjqMNlEw/5ouUv4LyYyBw6/PDtFJ/mPiGLQoSQ4H4lAx2HmKBtzDnTqbYZsgyvP5BAyu/7XVg9YgLgGPj49sNsJ6qqwQcc65Bf+9duhTkVQxbQzZbO/R3Ix6COVKoeNPH2gvBm4WdEtiD/qvc0S2M/dN9Is2Ka6VyGbsKhMHfDH+NmKEzypoZlzsxiaSXhL8v5jXZkCyQG+94AGWMModEltByt10UKTa/zFG1lGY1/dZfdQ7vbhaItrZelpciCafKfUssgPIezgcrlKZLppXDaBhY+ix4vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB8271.namprd11.prod.outlook.com (2603:10b6:a03:47a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 14:10:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 14:10:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Topic: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Index: AQHaPjQi0w812XLjtkCHy0lr/oonxbDH7dYAgAADV4CAAATFAIAAKAwAgAACsQA=
Date: Wed, 3 Jan 2024 14:10:05 +0000
Message-ID: <050237d78f8863264e1478d00ee2d599ae0e0964.camel@intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
 <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
 <ZZVC4XwaAbSGnpqF@ideak-desk.fi.intel.com>
 <769a9b24f6c938abb5131f4036e59c6fdce6739c.camel@intel.com>
 <ZZVoekU4A/YJZXDw@ideak-desk.fi.intel.com>
In-Reply-To: <ZZVoekU4A/YJZXDw@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB8271:EE_
x-ms-office365-filtering-correlation-id: be4fc3ed-04d9-4c28-3bf7-08dc0c65afc6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +epqhlykvTlOM8er7qdAktzowOdq6k2TkfWA2crE17IbWaAaIb8eBMT/GvIFdgCJ4rQg34s0ueb6j3jQeXQTZBIeixRsYLZ9d4vvbh/uagu9+YlVBjI9m4gy3hrHdwLC9A09fiTlrBzdv7dC1c0B9Lvdu7VAd9xxrmFleBE56vUHiqyNhpSMFDDth7fUJYjTof5Haqv9JFZgRu0OzQfvkBwE5ffLV04oHcF3J2dgtOgseE44w+6q4sozo+y1ox0cPccVtdgmhhukIXARy/NXCG/L3hKP0C2YqERQbcInYH1y8CwOK1N9QW494qiBauEH3jDNkXdmVCvFvN4Ht3QIwdUreNowz0lG0ECwX/rOZQE7BGzwpLSkszSFLjVc6S1kWORF73dJxNE7vS2CHi8RSgqHTEE3G28cdCD/IZ7wm5PWOYi/nkih8nRcn42Gb2iqxOI/ilnbsY2ovoAB5YxqRZfiYIzhMPOy1yrn1lSlFNIsYrnCK7ZT8KYel5cPjC9kK10Wyw0RcIWlr35oLIjbegzlZYLCTHamSdWUP+3IkPtPyX69FeaZZzvhsqgCoU+4BJaRe2E3OPNo2HpeE398ydGkIv21nLx2nGBYbt6UoN/LnfLwDfI9nqFVoAdgvECz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(39860400002)(136003)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6512007)(26005)(66574015)(2616005)(6506007)(54906003)(8936002)(8676002)(6862004)(5660300002)(122000001)(4326008)(66946007)(41300700001)(6486002)(478600001)(64756008)(6636002)(2906002)(91956017)(37006003)(316002)(76116006)(66476007)(66556008)(66446008)(86362001)(38100700002)(36756003)(82960400001)(71200400001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azlmYkFxVmM0YS9ybDJrcmhQY0ZmNWZsNzF4ZE5wTks3YXU2K3B2bUtvVUhH?=
 =?utf-8?B?TlZyUTVMTUhHSmpNRzVVUWVEa3dyMjdlS0k2QVYrdDd1Y2JTWTlGcGZPN0ta?=
 =?utf-8?B?Zngvd0lwV2RCcFNiYTdEUS9BQW0rMno4RlJYc3dPcFpZOWx6YlJVdlg0eUVw?=
 =?utf-8?B?SjFsa3NicTc1RmwzdXFHWDBWVUt6OFR1MHZsNUVGME5sNUF4bEJzc3NaN2ow?=
 =?utf-8?B?c05WT1dFOWhEc25hS3FCUFlsSlZDWkdFRG4rdEt3Z0tKeEFHaCsxTmZDY1Zj?=
 =?utf-8?B?VVJqTFUzZXNDSzJEZnpYaUsvaWcrSHpBRy9FK3FGUTRyZ1JDY2V0dHprZk8v?=
 =?utf-8?B?aWdDUGMzQ1Y3RmxKOW5aRTBodGQ2TVpCMHR3L01kZEU0OGZvUS9kTlUwL05K?=
 =?utf-8?B?T3gzZE9ZcnR3TzNkSm5XVFF6M2trT244UkFocnZlRlNUTS9BK1l2ZUZjODVu?=
 =?utf-8?B?UC9pMlZ4ZEpQc2hDc0t2dnRNVHAyUWRUM0JzZzhRSnlPWStVb2VCOFd3d1oz?=
 =?utf-8?B?QWdLcmVkaWE4K1VuM1NxR0hRODlFUVVNTTRzcXpKU0dOVXJFS1k0Z3JURXB2?=
 =?utf-8?B?cFZnL2VRbkc4TFBzUWdkaUQ4dlRHdHFUakZqdzQwQUt4bEkxMmo3T3lzTUFU?=
 =?utf-8?B?dEE2alljaTlzSVA5bWE3OG4zdy92bmNFV0VkRHc2MGMwdkdpMWt1OGQrc2pG?=
 =?utf-8?B?MytpQUZvV3c5cjI0L29RT2txWHh4WmFTY2dNTXRtakN1N3h1TlVYeGFxWGlC?=
 =?utf-8?B?U3hscE9NSW9ZQUQ3NEFqRzY1RndsN1l1Q3F1L0VRT2l3Rk82cWZsTk1GYlNk?=
 =?utf-8?B?YVJzblNmUnNBVVpDRVFwUk5ydXE5QksyZHNOV09vR3NzQ0xhNElkNUFaNE1T?=
 =?utf-8?B?TE82TTZiKzhjY0ZHK0w0cGpqUTQ2M1JHLzdCYVhZcnFXNVdGTEFyVDAwSUM2?=
 =?utf-8?B?SlJYb0ZnT0Y1azNKRUVYNGZLRTM0Mms1V2JHTUVaVGVKYjlNUWgvVkNpbFlB?=
 =?utf-8?B?N0d3ZzQ2SE9lVEZYS2ladjRnQldHNDFJbkhjTE5jUVgrRDZId3ZwbGEydzN1?=
 =?utf-8?B?eFZnVExlWEhQMXN2Um8wc2h1eTlJSzFNWGlkVGZKK1Zmb2Q5MHBYZHNlQmtm?=
 =?utf-8?B?WXlPU2lDbjVVZ3lweGFhdVVNODE5SE9LVnM2Q0RqenRhL2l5bWN3Tlc0R3Fr?=
 =?utf-8?B?MC9WYXhpcW9MQWhWT0dzVi9lN3EzSWFIUnJHd3F5VUNoZHFMeWZTRXhqZDVH?=
 =?utf-8?B?STd0MkxNa1FLYWhldDkrT0RVSDlUT0Y5UEl4TGpGLzNjamZRTDRTUEQ3V3Nz?=
 =?utf-8?B?QVRjL25ydjJGMXZIS1FGeThCeFd6eUhHQStwL05nZUtXblQzTHNOWXE2UGVH?=
 =?utf-8?B?QTUwNkZ3ZHpKWXJoWlNNU3FtNXlKbStsL2ExS0dpaEU5MzJNRnhiNkdub1kz?=
 =?utf-8?B?WC9aYlgyZmVGSEUxNU50OW8zTUVqRzYxVWxUZzBsQXdqM3prZURseTNYNUl0?=
 =?utf-8?B?ZXZLdEpZK0lZZVFnSDUyME4zK3RZbHJOMFhscnFYbXE4bGh6LzBkeE8weWVi?=
 =?utf-8?B?cE9ZSWNhUXk5Nmg4T0hyUmRqcjJOU1FZakNLemVNUE9ZaFVXbWIyVkNTQlp0?=
 =?utf-8?B?SlBiWXZHK1ZSYkZ0YjAwbVRpRGRFM1BJVG5vQzZYTnovd25ieDE5bGwzbEIy?=
 =?utf-8?B?d0V6dWZ0YlRBWGpwVkt5N0JPcDJuOHVRUlpHUGJjMHdIUXE4bjJBQjFOUFpF?=
 =?utf-8?B?aFpCcTVKbmgzcFM1RlBDN09Kc1V1bHkxMU43MTJtTUZ2OVNoV1FsUHRMbXJi?=
 =?utf-8?B?YUNHWmdnQXo1NmtGTzFmUWltaFZpWCtGQ1U0RHEvN0x0ZTlxS1hJTGJQcEZs?=
 =?utf-8?B?b3pTazBIMkFueFZHdExYaXF0Sks2Y1MrQzNuMFZqYzJiRVIvaXRRSGJEY0kw?=
 =?utf-8?B?ckkwY05ONVdNcXBWWEF6YnE4TDU0T1gzdW5yN2kyNmxTRGM4a0x4SG4vRm15?=
 =?utf-8?B?bTVXcllUanhFWUVWSXdDS1JxYVhDeUNaWDlYSlpET1pHQVQvSmlEQ3JmZ2ZY?=
 =?utf-8?B?UTlzK25wMlpQVkxGeldVbSt4ZU5pbTRRNVhHNzdTNmxkYTFTSzV5eC96K2Yv?=
 =?utf-8?B?ZVNtVWFJNGxxbm9RNE9RemxyOWErZDVmL3d4N1hjWUJCbE00U056TFpKR2Jm?=
 =?utf-8?B?TEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <18F6C4E7E8D0304BB47A09EE271294F2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be4fc3ed-04d9-4c28-3bf7-08dc0c65afc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 14:10:05.9766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lsy4ljI3QLtLxpdUUPw9X/bAW1iV+XY4Q7r/jiNo53ubKNymDZT899y5Gc0rommzebIag9dGYjFav0zeEVYR1Rjeb/MHu0abDX01X2DwuTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8271
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTAxLTAzIGF0IDE2OjAwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgSmFuIDAzLCAyMDI0IGF0IDAxOjM3OjA4UE0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiA+ID4gPiBbLi4uXQ0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gaW5kZXggNDk0ZDA4ODE3ZDcx
ZS4uYjViOTM0MGU1MDVlMyAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+IEBAIC0zMzEwLDExICszMzEwLDgg
QEAgdm9pZA0KPiA+ID4gPiA+IGludGVsX3Bzcl9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0
DQo+ID4gPiA+ID4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4gPiA+ID4gwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rv
ci0NCj4gPiA+ID4gPiA+YmFzZS5kZXYpOw0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBkZW50cnkgKnJvb3QgPSBjb25uZWN0b3ItPmJhc2UuZGVidWdmc19lbnRyeTsNCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgIGlmIChjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9y
X3R5cGUgIT0NCj4gPiA+ID4gPiBEUk1fTU9ERV9DT05ORUNUT1JfZURQKQ0KPiA+ID4gPiA+IHsN
Cj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIShIQVNfRFAyMChp
OTE1KSAmJg0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbm5lY3Rvci0+YmFzZS5jb25uZWN0b3JfdHlwZSA9PQ0KPiA+ID4gPiA+IERSTV9NT0RF
X0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCkpDQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKg
IH0NCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIGlmIChjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9y
X3R5cGUgIT0NCj4gPiA+ID4gPiBEUk1fTU9ERV9DT05ORUNUT1JfZURQKQ0KPiA+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4gPiA+ID4gDQo+ID4gPiA+IFdv
dWxkIGl0IGJlIHBvc3NpYmxlIHRvIGRpc2FibGUgaXQgb25seSBmb3IgTVNUIGNvbm5lY3Rvcj8g
SQ0KPiA+ID4gPiB0aGluaw0KPiA+ID4gPiB0aGlzIGlzIGRpc2FibGluZyBpdCBhbHNvIGZvciBE
UCBTU1QsIG5vPw0KPiA+ID4gDQo+ID4gPiBZZXMsIGl0IGtlZXBzIGl0IGVuYWJsZWQgb25seSBm
b3IgZURQLiBJdCBjb3VsZCBiZSBlbmFibGVkIGZvcg0KPiA+ID4gU1NUIGFzDQo+ID4gPiB3ZWxs
IHllcywgYnV0IEkgdGhvdWdodCBhcyBhIGZpeCB0aGUgYWJvdmUgaXMgYmV0dGVyLCBhZGRpbmcN
Cj4gPiA+IHN1cHBvcnQNCj4gPiA+IGZvciBvdGhlciBjb25uZWN0b3IgdHlwZXMgYXMgYSBmb2xs
b3cgdXAuDQo+ID4gDQo+ID4gaWYgKGNvbm5lY3Rvci0+bXN0X3BvcnQgfHwgIShIQVNfRFAyMChp
OTE1KSAmJg0KPiA+IGNvbm5lY3RvcmJhc2UuY29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09O
TkVDVE9SX0Rpc3BsYXlQb3J0KSkNCj4gPiDCoMKgwqAgcmV0dXJuOw0KPiA+IA0KPiA+IElzIGl0
IHBvc3NpYmxlIHRvIHVzZSB0aGlzIGluc3RlYWQ/DQo+IA0KPiBMb29raW5nIHRocm91Z2ggaXQg
SSBkb24ndCBzZWUgYSBwcm9ibGVtIG9uIFNTVCBjb25uZWN0b3JzIGVpdGhlciwgc28NCj4gSSdk
IHJhdGhlciBsZWF2ZSB0aGUgZW50cmllcyBlbmFibGVkIGZvciB0aGVtIG9uIGFsbCBwbGF0Zm9y
bXMsIHRoYXQNCj4gaXMNCj4gDQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoKGNvbm5lY3Rvcl90eXBl
ICE9IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgJiYNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbm5lY3Rvcl90eXBlICE9IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCkgfHwNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3ItPm1zdF9wb3J0KQ0KPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCg0KU291bmRzIGdvb2QuIFRoYXQgaXMgYW55
d2F5cyBzYW1lIHdoYXQgaXMgZG9uZSBmb3IgUFNSIGFzIHdlbGwuIA0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQoNCj4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4g
DQo+ID4gPiANCj4gPiA+ID4gQlIsDQo+ID4gPiA+IA0KPiA+ID4gPiBKb3VuaSBIw7ZnYW5kZXIN
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBkZWJ1Z2ZzX2NyZWF0ZV9maWxl
KCJpOTE1X3Bzcl9zaW5rX3N0YXR1cyIsIDA0NDQsDQo+ID4gPiA+ID4gcm9vdCwNCj4gPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29ubmVjdG9yLA0KPiA+ID4gPiA+ICZpOTE1X3Bzcl9zaW5rX3N0YXR1c19mb3BzKTsNCj4gPiA+
ID4gDQo+ID4gDQoNCg==
