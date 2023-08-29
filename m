Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7864178C603
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 15:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F359210E284;
	Tue, 29 Aug 2023 13:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E76410E27E;
 Tue, 29 Aug 2023 13:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693316125; x=1724852125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FuUFJh3sfkceHX4zDhT+Hb2kdwcWDEqILBgphs15zRA=;
 b=P0teqc/7tv6e5jXhzcUX+pRYnEho8qgqYsjmkMzq/vYU9TS8sD4NLtuF
 stbdt0m50oN+QE6ZWhE2Mw1sLnl1HbvgL3QovkFTdC4v2SE9lJwStYUOV
 u6ck36k9NuFVtK0HvSVRzZzGEtTZ+b5XDaVL9y3TeLDVtVhOtUy0buMz2
 xPZxDl+iEo8PvzMoccju+y6L8s5oTUgFcepYeUvLGwhfWenzM7x0R/Lpx
 os2NVA7iG8jeSMwI1cDKY6L6vXNa//5iYIabF/k2ll2s+Idw/vIiz9wkc
 gxcctIMW1bGcPQygVtpCCnEv0ypGmtEhi1HAJsJnKfnnd0yZlr+SkJAAc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="374260179"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="374260179"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 06:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="732217496"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="732217496"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 29 Aug 2023 06:34:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 06:34:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 06:34:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 06:34:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b8X7qPfngDw/IbJOUHQH+7sUWWqJKomO1POLbR9/ZBvllkdAI+V4tcZWBmWDT3yt1vrEmH6s8ZqWPue6Igwdiyok7lY+cB7D5Iwsu7lGudh212iArFzQtzNkbstPFwX/8CR2a4PBnozETEVmNbgbk/6dtb2MiSdrDNllYtFOxeo5byCC+hwcyXvUAw8FEFfuKwxH/bhz60/lymXO5BF69pst0rP66vFthFihcW12xMfMz4ocAmtXsU8J1Q71Zjm4sfCaq/FUfKOwMcocemdLg9ovHikJDeKPCYgqx+MOy+fb4P2xCj1FKl0PblMSENONYHOD7s47QfI+Ah7fKvKXrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FuUFJh3sfkceHX4zDhT+Hb2kdwcWDEqILBgphs15zRA=;
 b=EeVM7YBzEKw9Q+e3PhLQ7/HoddLQfyk2Gk0NMc52tYWNxt1XPvt7kDD1Z7E1A1lX/4LeZUPDXM3XP9zKf0dqnR6Hp/AgYESV3pdcXZZGvIQ4wtr/zDwIz8P46Oax5ZGjpUGsa7FuGTg937XhgT+ppzxlNeKmJKPfJvirCQgbl4zkhl6Fl/1457nh6kxLDXNjOGpy91ZMJc5+CERvk3yYeCnj6OBhYJhqHfIooT7uIMYM1FabkwbmGk3IN9rwzGPAVCGx9hhlubG7uqRKeFJXWrtNpIgVyeITsz6CKZTA/ZM3JAh86mgl6J6wvV7hIwrr16SSMlOWE5X5MFHrGyvQKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB7820.namprd11.prod.outlook.com (2603:10b6:610:120::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 13:34:56 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 13:34:56 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on any plane
Thread-Index: AQHZ2XfWeQjFVrBu0EShGKZtbMH1irAA5+oAgABgVgA=
Date: Tue, 29 Aug 2023 13:34:56 +0000
Message-ID: <b97f948a77128607be6b7a5cd12f82423e987377.camel@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
 <ZO2jLiEn9zuQFqsO@intel.com>
In-Reply-To: <ZO2jLiEn9zuQFqsO@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB7820:EE_
x-ms-office365-filtering-correlation-id: aa27776d-0440-4ac3-cba6-08dba894bbe8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XpETfGoawxIiuIMwYbofM15qZKP/RoIGd6YeJ0zLIOY/yhVq+XGo5V4cDxi6Zpvw9MRvo057FAfTlu8ybxXRNaSvVfaUNZ4WtF5SEql6xE6x17oKM2txZHoNeyGNqLXKcLnR4qiblmIWC6NHmd+DVJ3hcWftSeC0IYzCe9nPQzMSBKh8X/ZM6Q4y5FjdoApbftNaQ3wOIthz5Q7j+YDPPqaMXkxz3YgTQzd3HIeg/HTq2hujeMqNekWnDIkNnIwfbhLv3h7imwWVKp5vVv7/7Ve8swCflHmUWnEKREoXu4u47zLXmlRRgVANp0N/3lNBtbyE75hPg62Wyk6tPzqTS2C0uevF2VOXrESof4Qhe9E39Y3+vCawso3taI9CAO8FMYd+IdDBnIF3LAQi2fD5fTzPx2DnlGJfgRzKRNqC4fh+pR6L70jh7ihmGxo2CmK1Yb+mXKACMsxxcUpS4ZNarg3wDJ/HWsjN+RdqLl9qRUU471/5HDxhml/R4r8zQ+Ur9fZjDfmKfoOKI2DoCmagLeCCYgprvwWSXf0qynJFR42UXql7DSetSu674x1atwnkWJ4h+dv34gxehmbsuK6EPt3bZMZ3WW3Rts0aXruZvrZOXQB+aUh4+QK2UW5y/HTo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(366004)(376002)(186009)(1800799009)(451199024)(6506007)(6512007)(71200400001)(6486002)(83380400001)(91956017)(478600001)(26005)(2906002)(2616005)(66446008)(64756008)(54906003)(6916009)(66476007)(66556008)(66946007)(76116006)(8676002)(5660300002)(316002)(8936002)(4326008)(41300700001)(66574015)(86362001)(36756003)(82960400001)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1ZrOFVmRTVFR0drMjRleTg0Zk15eFJsSXA1dTJTZDhMYTNSaGxuVUtucjFO?=
 =?utf-8?B?enhtaGZJRk1NMFVwTVBoSFBtUVF3aXZPQ1FISXdPUmI1MUx5NTd3dTN1dy94?=
 =?utf-8?B?b1ljVGFOdTFPbEJyYzNtZ1BnVWdISGZidlZnY081NGZNK0dlRFZWZnhYejNj?=
 =?utf-8?B?Z2V3SDZlVWJHdm12Mit3MHVuZWVNMUtvWnB4Q0FBOVZpcFkvTmxuV0RpaVBv?=
 =?utf-8?B?N1hFY3B2b1Jia2dYcnhaamxiWElucENYT0tScGJNQ1RyTVV4Z3VLWEVNaEhi?=
 =?utf-8?B?cUZ3SVpRblRKY09ZSW12WnpUeHhQWEx1d0pJeTZacEZvMTVnMGtzR1BEUW10?=
 =?utf-8?B?VWZWOHE2bDFXa2xNMEFJTXNrMStzTnBSZkV4VVlOQ013NkVxT2FkQzJUV1pN?=
 =?utf-8?B?L1VzNC9uREpDY09CSmdGNk1jZnAyTkdjY0lDWDJWRVFxelNNaEMrK21mN3J6?=
 =?utf-8?B?WURqZEYxbkFzVzdCaERuTG5QMTJkK0RFREdNamhzNzBXNjJNc0N0cDNYYlpj?=
 =?utf-8?B?aXRtV1I2YnNOT3RqSSt5SVZlZ2VackJqbEpLejFObUVxd0I4dVVnYkZ1U0RT?=
 =?utf-8?B?eVFGWW5sMEkyVkUyTjFsdEFzdnppM04wdHpGZFBBcHBPS3QxTGFyTTZnZDRR?=
 =?utf-8?B?RHBwVEpLaE91V1JvbDRzVGU2cW8wcWF5U0hoNXhraVZHRE1Ya1dqUXB1c2J6?=
 =?utf-8?B?ZU0vOFB2K0l2K1EvWnlJUkNyODRNU3paR1NTT3d6alVFc2lTYWJnd2twV0hU?=
 =?utf-8?B?RHZmdWpRYkRhZFhuaWM5aCttSHVsWFFRUnRHblBtYnpIQXNWRDFRR2lmZ3Uz?=
 =?utf-8?B?VFpiekZKMExENVBhVmlmUUdxZi9pbTAvVVgyekJYUzlFekxlYnJrVDU4VmpJ?=
 =?utf-8?B?R0l0TktQbXNzT2FzV1NsT3dKQlRORFJkdXdoK0hFYlJaZVVSYmcvaDV0ZTc1?=
 =?utf-8?B?TEtZQWZoTGNCL0o0OWdua3JkM01BQncvRlBKeXpzNnh2d1Y4bkR6UzZHbFdS?=
 =?utf-8?B?c0hZdVV1TEllQnBham8xbFV2bk1RYi9GSnFSdE1hZko0Wk9PR1Q5OHV4a244?=
 =?utf-8?B?dzNrUFM5bFBiUEVQeWFyeFloOVVvNGxmam5QNytyV3ZhL1Y0c1FjWHJWbnoy?=
 =?utf-8?B?cG9aTy92QlkrUk5GdXFub1drUkxtZkM2Q1NacEVZRE5PWUtnNDhZTnlWdUVY?=
 =?utf-8?B?MHU0RTFXNElDelFONkdNR0tXRE9lV3lNYWFDMkZ2NDhiSGI1bHJzSy9EZ05G?=
 =?utf-8?B?NHFSUkFwZkR0VVlDTEFpYXdXSWF0MFpZQTZTTUN1NTEyRHVxU0RRbytITnhL?=
 =?utf-8?B?NDdoMHpTOGE5VHBHY1oxcmdCZjN5eXZlOTNFVWE4cUMxeWVCeGlSYUoySEZU?=
 =?utf-8?B?VlNBYk5IYUhWVGdyb2pSRFQxR0YzL2VTUTFxdlRMb1p0aDRocUU1Qlp1UVhq?=
 =?utf-8?B?Rzc1eWlzTWNHWTJjcUR6RDNDWGI3RmxQSS9FWmhaN2d6cjc2S1EvUE80SkY2?=
 =?utf-8?B?TkJHaDBTcUtWd3VHK0t3ZFFITVdRNjFnVmRnN1FTT2h1VUZ6YzV1TllHeit2?=
 =?utf-8?B?eXE2UFNjZ1dRWGFFSjg1eWgyTTBmY2NvRFM1ck8rTndRL2hoZm5ubjFNemxS?=
 =?utf-8?B?eCt5eUlCYXQ1bWlPVFhkWGxVK1RNaDVLbjJVMURsV25saWJqdjdGeGswWEs1?=
 =?utf-8?B?Y1Z4T1IxQUxTeDhJRHZ2TlFPS04yU3AxbDQ5bGdCNEx4ckkyOE52Vzhheng2?=
 =?utf-8?B?UDYydFA3Y3JvbThzQVhBM29abElUaUNrLzRmQW9KVlRDMmVSVnVEM25BdUg0?=
 =?utf-8?B?cWVkdHZvRTdxNWxucmwvdkRURDc1YTU2YXIyWDJJQzdJY29GZDg2czNCTi91?=
 =?utf-8?B?VU1QK1h2NHRxT1ZIM05xZTNtOGVXcGl6UmRONVFWY0pWR2ZZeFRlelBlcVpU?=
 =?utf-8?B?UzhjZ1JFenlJSG1Ka2MxeDVMSGlxaFFodDVMeTBzZzhWbG1ySFh0MHp6ZkRV?=
 =?utf-8?B?S05XWTl0R2JpUXRXVzh3V1R6dWl1MGxNLzAvZU5maFNJWERuNU5sQlZWcnFk?=
 =?utf-8?B?SGhaeVBNSW1hRlFzclNRRUI3Ly9RN01KTjI0Zkl5OFJQYXpMcVBlV0pYUnJN?=
 =?utf-8?B?RkNpaS9nVGdwcy9yM3RtVkVVM01hV0pteVJ4ZlNiUlI4b0lzVmN5TUNtazJU?=
 =?utf-8?Q?Fyq+y/3mcqWEe5LdWMK/mvk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3571583E8F4AD4196B0FC2E9E15FD78@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa27776d-0440-4ac3-cba6-08dba894bbe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 13:34:56.3828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EihMufzabeT+YAYZr3HIakH2eiu2hVwMNfKw1Kg46mGIYNYcKluTC3ovc+jQyqL4E9fDRKQFpLDTy7V9wzcTYcw72GExsAPBhrMUdwcvMKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA4LTI5IGF0IDEwOjUwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gTW9uLCBBdWcgMjgsIDIwMjMgYXQgMDk6MjA6MzRBTSArMDMwMCwgVmlub2QgR292aW5k
YXBpbGxhaSB3cm90ZToKPiA+IEluIExOTCBvbndhcmRzLCBGQkMgY2FuIGJlIGFzc29jaWF0ZWQg
dG8gdGhlIGZpcnN0IHRocmVlIHBsYW5lcy4KPiA+IFRoZSBGQkMgd2lsbCBiZSBlbmFibGVkIGZv
ciBmaXJzdCBGQkMgY2FwYWJsZSB2aXNpYmxlIHBsYW5lCj4gPiB1bnRpbCB0aGUgdXNlcnNwYWNl
IGNhbiBzZWxlY3Qgb25lIG9mIHRoZXNlIEZCQyBjYXBhYmxlIHBsYW5lCj4gPiBleHBsaWNpdGx5
Cj4gPiAKPiA+IEJzcGVjOiA2OTU2MAo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBp
bGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuY8KgwqDCoMKgwqAgfCAyOSArKysrKysr
KysrKysrKysrKysrCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxh
bmUuY8KgwqDCoCB8wqAgNSArKystCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICsrKwo+ID4gwqAzIGZpbGVzIGNo
YW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gPiBpbmRleCA0NWUyMDVhMGY3NDAuLjYy
ZjU5NjMwZDQxMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKPiA+IEBAIC02NDksNiArNjQ5LDIxIEBAIHN0YXRpYyB2b2lkIHNrbF9mYmNfcHJvZ3Jh
bV9jZmJfc3RyaWRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ0hJQ0tFTl9GQkNfU1RSSURFX01BU0ssIHZhbCk7Cj4g
PiDCoH0KPiA+IMKgCj4gPiArc3RhdGljIHUzMiBsbmxfcGxhbmVfYmluZGluZyhzdHJ1Y3QgaW50
ZWxfZmJjICpmYmMpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgc3dpdGNoIChmYmMtPnN0YXRl
LnBsYW5lLT5pZCkgewo+ID4gK8KgwqDCoMKgwqDCoMKgZGVmYXVsdDoKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBNSVNTSU5HX0NBU0UoZmJjLT5zdGF0ZS5wbGFuZS0+aWQpOwo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhbGx0aHJvdWdoOwo+ID4gK8KgwqDC
oMKgwqDCoMKgY2FzZSAwOgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
biBEUEZDX0NUTF9QTEFORV9CSU5ESU5HXzE7Cj4gPiArwqDCoMKgwqDCoMKgwqBjYXNlIDE6Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIERQRkNfQ1RMX1BMQU5FX0JJ
TkRJTkdfMjsKPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgMjoKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gRFBGQ19DVExfUExBTkVfQklORElOR18zOwo+ID4gK8KgwqDC
oMKgwqDCoMKgfQo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGljIHUzMiBpdmJfZHBmY19jdGwoc3Ry
dWN0IGludGVsX2ZiYyAqZmJjKQo+ID4gwqB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3Ry
dWN0IGludGVsX2ZiY19zdGF0ZSAqZmJjX3N0YXRlID0gJmZiYy0+c3RhdGU7Cj4gPiBAQCAtNjYw
LDYgKzY3NSw5IEBAIHN0YXRpYyB1MzIgaXZiX2RwZmNfY3RsKHN0cnVjdCBpbnRlbF9mYmMgKmZi
YykKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfSVZZQlJJREdFKGk5MTUpKQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcGZjX2N0bCB8PSBEUEZDX0NUTF9QTEFORV9JVkIo
ZmJjX3N0YXRlLT5wbGFuZS0+aTl4eF9wbGFuZSk7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRwZmNfY3RsIHw9IGxubF9wbGFuZV9iaW5kaW5nKGZiYyk7Cj4gPiArCj4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKGZiY19zdGF0ZS0+ZmVuY2VfaWQgPj0gMCkKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZHBmY19jdGwgfD0gRFBGQ19DVExfRkVOQ0VfRU5fSVZCOwo+
ID4gwqAKPiA+IEBAIC0xMjUwLDYgKzEyNjgsMTcgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hl
Y2tfcGxhbmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoAo+ID4g
K8KgwqDCoMKgwqDCoMKgLyoKPiA+ICvCoMKgwqDCoMKgwqDCoCAqIEZyb20gTE5MLCBGQkMgY2Fu
IGJlIGFzc2lnbmVkIG9uIGFueSBwbGFuZS4gVW50aWwgYSBwcm92aXNpb24gaXMKPiA+ICvCoMKg
wqDCoMKgwqDCoCAqIHByb3ZpZGVkIGZvciB0aGUgdXNlcnNwYWNlIHRvIHNlbGVjdCBhIHBsYW5l
IGZvciBGQkMsIGxldHMgc2VsZWN0Cj4gPiArwqDCoMKgwqDCoMKgwqAgKiB0aGUgZmlyc3Qgdmlz
aWJsZSBwbGFuZSB0aGF0IGlzIEZCQyBjYXBhYmxlLgo+ID4gK8KgwqDCoMKgwqDCoMKgICovCj4g
PiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjAgJiYgZmJjLT5zdGF0
ZS5wbGFuZSAmJgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGZiYy0+c3RhdGUucGxhbmUgIT0g
cGxhbmUpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbGFuZV9zdGF0ZS0+
bm9fZmJjX3JlYXNvbiA9ICJmYmMgZW5hYmxlZCBvbiBhbm90aGVyIHBsYW5lIjsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiA+ICvCoMKgwqDCoMKgwqDCoH0K
PiAKPiBUaGlzIGlzbid0IHJpZ2h0LiBmYmMtPnN0YXRlLnBsYW5lIGlzIGFuIGludGVybmFsIHN0
YXRlIHRoaW5nCj4gdGhhdCBjaGFuZXMgd2lsbHkgbmlsbHksIHNvIHdlIGRvbid0IHdhbnQgdG8g
Y2hlY2sgaXQgaGVyZS4KPiAKPiBCdXQgd2Ugc2hvdWxkbid0IG5lZWQgdGhpcyBraW5kIG9mIGNo
ZWNrIGFueXdheS4gVGhlIGNvZGUgCj4gc2hvdWxkIGFscmVhZHkgd29yayBqdXN0IGZpbmUgaWYg
eW91IGp1c3QgZG8gdGhlIHR3ZWFrIHRvCj4gc2tsX3BsYW5lX2hhc19mYmMoKCkuIFdoaWNoIHBs
YW5lIGFjdHVhbGx5IGdldHMgRkJDIHdpbGwgYmUKPiBhIGJpdCByYW5kb20sIGJ1dCBJIHRoaW5r
IHRoYXQncyBmaW5lIGZvciB0aGUgbW9tZW50LgoKQ3VycmVudGx5LCBpbnRlbF9jcnRjX2luaXQo
KSBjcmVhdGVzIHRoZSBwcmltYXJ5IHBsYW5lIGFuZCBvdGhlciBwbGFuZXMuIFRoZW4gdGhlICJm
YmMiIGlzCmFzc29jaWF0ZWQgd2l0aCB0aGUgcHJpbWFyeSBwbGFuZSBiYXNlZCBvbiBza2xfcGxh
bmVfaGFzX2ZiYygpIAoKSW4gTG5sLCB0aGUgZmlyc3QgMyBwbGFuZXMgYXJlIEZCQyBjYXBhYmxl
LiBTbyBteSB0aGlua2luZyBoYXMgYmVlbiB0aGF0IHRob3NlIHRocmVlIHBsYW5lcyBjYW4gaGF2
ZQp0aGUgZmJjIHBvaW50ZXJzLiAKCkFuZCBiZWNhdXNlIGF0IHRoZSBtb21lbnQgd2UgZG9uJ3Qg
aGF2ZSBhIGxvZ2ljIHRvIHNlbGVjdCB3aGljaCBmcmFtZSBzaG91bGQgZ2V0IHRoaXMgRkJDLCBJ
IHVzZWQKdGhlIGFib3ZlIHNuaXBwZXQgdG8gYXZvaWQgRkJDIGJlaW5nIGFzc29pY2F0ZWQgd2l0
aCBtdWx0aXBsZSBwbGFuZXMgaW4gYSBwaXBlLiBTbyB0aGUgZmlyc3QgdmlzaWJsZQpmYmMgY2Fw
YWJsZSBwbGFuZSB3aWxsIGhhZCBub19mYmNfcmVhc29uIGFzIE5VTEwgYW5kIHRoZSBvdGhlciAy
IHBsYW5lcyB3aWxsIGhhdmUgImZiYyBvbiBhbm90aGVyCnBsYW5lIi4KCkJSClZpbm9kCgo+IAo+
ID4gKwo+ID4gwqDCoMKgwqDCoMKgwqDCoHBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gTlVM
TDsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiA+IGlu
ZGV4IDRkMDFjN2FlNDQ4NS4uMTI5MTM1MWM5OTQxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCj4gPiBAQCAtMTk2
Miw3ICsxOTYyLDEwIEBAIHN0YXRpYyBib29sIHNrbF9wbGFuZV9oYXNfZmJjKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoKERJU1BMQVlf
UlVOVElNRV9JTkZPKGRldl9wcml2KS0+ZmJjX21hc2sgJiBCSVQoZmJjX2lkKSkgPT0gMCkKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ID4gwqAKPiA+
IC3CoMKgwqDCoMKgwqDCoHJldHVybiBwbGFuZV9pZCA9PSBQTEFORV9QUklNQVJZOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAyMCkKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcGxhbmVfaWQgPD0gUExBTkVfU1BSSVRFMTsK
PiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gcGxhbmVfaWQgPT0gUExBTkVfUFJJTUFSWTsKPiA+IMKgfQo+ID4gwqAKPiA+IMKg
c3RhdGljIHN0cnVjdCBpbnRlbF9mYmMgKnNrbF9wbGFuZV9mYmMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiBpbmRleCBhZWZh
ZDE0YWIyN2EuLmIyMDc3NzRmM2MzMyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiA+IEBAIC0xMzI3LDYgKzEzMjcsMTAgQEAKPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfUExB
TkVfSVZCKGk5eHhfcGxhbmUpwqDCoMKgwqDCoMKgwqBSRUdfRklFTERfUFJFUChEUEZDX0NUTF9Q
TEFORV9NQVNLX0lWQiwKPiA+IChpOXh4X3BsYW5lKSkKPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19D
VExfRkVOQ0VfRU5fSVZCwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgUkVHX0JJVCgyOCkgLyogaXZiKyAqLwo+ID4gwqAjZGVmaW5lwqDCoCBEUEZDX0NUTF9Q
RVJTSVNURU5UX01PREXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19CSVQoMjUpIC8qIGc0
eC1zbmIgKi8KPiA+ICsjZGVmaW5lwqDCoCBEUEZDX0NUTF9QTEFORV9CSU5ESU5HX01BU0vCoMKg
wqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLKDEyLCAxMSkgLyogWEUgKi8KPiA+ICsjZGVmaW5l
wqDCoCBEUEZDX0NUTF9QTEFORV9CSU5ESU5HXzHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJF
R19GSUVMRF9QUkVQKERQRkNfQ1RMX1BMQU5FX0JJTkRJTkdfTUFTSywgMCkKPiA+IC8qIFhFICov
Cj4gPiArI2RlZmluZcKgwqAgRFBGQ19DVExfUExBTkVfQklORElOR18ywqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBSRUdfRklFTERfUFJFUChEUEZDX0NUTF9QTEFORV9CSU5ESU5HX01BU0ssIDEp
Cj4gPiAvKiBYRSAqLwo+ID4gKyNkZWZpbmXCoMKgIERQRkNfQ1RMX1BMQU5FX0JJTkRJTkdfM8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoRFBGQ19DVExfUExBTkVfQklO
RElOR19NQVNLLCAyKQo+ID4gLyogWEUgKi8KPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfRkFM
U0VfQ09MT1LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgxMCkgLyog
aXZiKyAqLwo+ID4gwqAjZGVmaW5lwqDCoCBEUEZDX0NUTF9TUl9FTsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDEwKSAvKiBnNHggb25seSAqLwo+
ID4gwqAjZGVmaW5lwqDCoCBEUEZDX0NUTF9TUl9FWElUX0RJU8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBSRUdfQklUKDkpIC8qIGc0eCBvbmx5ICovCj4gPiAtLSAKPiA+IDIuMzQu
MQo+IAoK
