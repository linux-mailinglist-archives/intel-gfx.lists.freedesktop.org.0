Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BA75BF870
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E465E10E8C1;
	Wed, 21 Sep 2022 07:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B5710E8C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663747193; x=1695283193;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=pEKvmK7Y8AMQEFLKqVKYZHUPI7G+JttMPzi2XaxaT3o=;
 b=Bj6sbQ92SgxsHWRRvDfO08QDqFtYipC7v5Tkh4JgU5Hl+xJu/AtX2bhz
 /eCSOwQcyMSf5WWVapyJQXPIpz7wr3Fw8wjWgSeauhoJzWAELgtf7cFzb
 TjEPe/dTPFOb48kf/nouO9P94t7PJyRfdAmEt2Y9i1Qlkzp2JmeVHXBcf
 u9xrckhY8EIRgCHXo2HNoQM5og7mKYo+cghk9t/iqh5vgMR1ZIKBNdweD
 ffMe+WdOhxjhvN0Yy0Eo9iCNt00NbSIdKx2jfufDDU35JA+DMVFwpE1A3
 OFn9lJOcRgI/SbscTHh8Eqf8IvW0YCCFuUnCBFheyCFuEJGsBnUmZoHs5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="279659088"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="279659088"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="652433235"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Sep 2022 00:59:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 00:59:51 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 00:59:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 00:59:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 00:59:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=id7WTD9nUSIQiQbzfvzpFJbcrztOCbRs1JaHR/VWnWWm7AEUBS8xQX06Y89SoBeCIeeN/bZdkU14PXv9XDrXjc102ZtIwnqoVjZCh209gOLWrHdCFCpgSfcsv+Y3SMJ99P2xtbhdOSgG2F8VYzqKioTjW/f7fLU+EksJGX/3D3a/kCF4nYKICVn7zQNbWH61eyqWsnQEZXBzeVeqD2QXQ7nqVyB6oNPGn9R2V2tYO24c7cX1h+tCqclCZ9USMjymgsnxSl5bbFN+rCJe3DwWIFI30hukt4VbHqcKzEEdYT61hOp3hOgzYmubQq1an3fz8ZfXDddOy9YNQ6NNQQo06A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pEKvmK7Y8AMQEFLKqVKYZHUPI7G+JttMPzi2XaxaT3o=;
 b=LlJuFFuI+haxOq/paIix9yn8nhBcz1mV6hMi+Sdth+i1eX6ulkSYp/mTn3h/M2KtYAqGEye9P6r88YltHl5EqLJtL0kTiTKsUfES72Y1co1o362AYeiissZIELKE43ybZUm0IDVQCXIMXaPc3fYdWg6W0tOwtsYcenFt4t5qqum5racrase5H6ndTzLyx8DRJe4AbS4IzwLuTa/Xfe6SKbwXCIgevoN2TLozTGTEKHV33A47/xY71cvr95uG/CXZzmT5lQLT3q5wNypPoSFplpBaEJjEA1zdwoOVS5MrVihpRhVpjYpTXB7t8N9859klRtuZLQR+Zi6uBkic1ofDKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.16; Wed, 21 Sep 2022 07:59:49 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 07:59:49 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
Thread-Index: AQHYyKhoBCHXprrm7U24rox/6Qj+2K3gLo8AgAGDhgCAABGfAIAAbyGAgAdcmYA=
Date: Wed, 21 Sep 2022 07:59:49 +0000
Message-ID: <820df17d125d8a0cb090b1c05f59be361b31b429.camel@intel.com>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
 <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
 <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
In-Reply-To: <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY5PR11MB6163:EE_
x-ms-office365-filtering-correlation-id: 32e5f0d6-a48f-42b2-3fda-08da9ba74206
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sfKmIWsXs9cUEkTa1vlWoMEABg+BOz3YfQktSTNrbIU6ip0Ecxxcjw33arDJKXcSNRc1mmO5pim7/+11ETJNlBhmE+Iol89m8olf9aRjDnvv0j9LFiZuZXfE28ZKZpTcuDW4MwgekUVoCpwyrI421oJ0pELmWnZNp41wLAaiMhRfKRN5C1fbXRaD4L+/UDxNbqGrxiVyjmu65rt9+jKBYoJinp7ALugKrLbm9shQrTbJukZaFMikBECB8X5Z46xbZUUrsc9i6uSBMVnwhZHVlRpjOQ4W6+jRzSWB4+AZJwdhv78doPbMQ4r5OaZ+I6/sLhgd5k7Uv5J28rvBWpfaO37CM8M+DzqmL7kLZujzh3LMHQvRQykjt1SOil3lhHUDUmdYilKhzrkcR4JMu+E2GuwDwX2b41esHkVskseyIvu+MXXNgnaXbfIArZD+9JGIMGT2lVf/kXoJWzm+v6R+vm7DNPGSCWjub8zFNYwwX+qgVkN0/O75MWlyztMimmZLg/UFh3P4RX10CwqSzGifthg03nd1bMX5XPjc586VofEnxG3JZ5KJhoIYFo5q6/fsoEGq6x05RjrZQdSFWZdVVRjzZ+YNzqIQ96nRHPdzh1gnWeIj8CAFVY1g2f8PCBVQT7bzzhaycj0RxUEE7tjcwkPxdSiCaXtxJSR6Q+GKj1MIGBUqBEMh5XYlwJadVjrM/n5ZWLh5uoqjSqez8oKDz4Go7rTfOMLVrJqLWmKOOSdcapM+4mzH7f7/JYdb9+2svbwr4Vx0V87ZWkwrRWH9Vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199015)(478600001)(71200400001)(6486002)(110136005)(36756003)(5660300002)(8936002)(316002)(26005)(6506007)(6512007)(2616005)(186003)(76116006)(8676002)(41300700001)(66476007)(66556008)(66946007)(64756008)(66446008)(91956017)(2906002)(83380400001)(86362001)(38070700005)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?citFUmxKaUxGMmd1blljQWVST0pZYTVrdCtWSWdZTFh6RUJqc3RMVVVpcWFa?=
 =?utf-8?B?YUo2TVJJQ3hNbjJEdkdaNTlaM3BCbW53c0lGbUY4eGl3M0pDL1dDdFo0b3B4?=
 =?utf-8?B?RnE2T2xzb1Rub2tYSGV1UXZhM1I2bUVmQTI5cjREeGhzSEFhbFpxcVB4b1ZO?=
 =?utf-8?B?TVl3Yk11d2pLL0RGck1kaUY0VHNEQWFSQVZuSW9uY1B4eWFvZ3VScG9tZFJB?=
 =?utf-8?B?cjF0NWRVSHJwNVBodEFvakFNZzFscGZUa0VzdGdGZk0rREJQTzUwSGJVSWxF?=
 =?utf-8?B?RmQrR0lXOGVHQmpZejJxYkFlbGwzdEJxSWs0bTY3M1BySWdJb0x3eDl5TCtK?=
 =?utf-8?B?KzROY0RxUHNleTFLcTQ3RnVYMDAwVmxHeTZpczlYTm45VmN5SU1sclQxN2Ro?=
 =?utf-8?B?ZmRyTnlWdC80S2tKd1JCQ2JFc2gvVVlwandtSjdLQkQvdmE1dlBPZU8rT3lt?=
 =?utf-8?B?VG5sUjZrWW10b2lPLzBwamZNSVhkN3VXT3lqYk9qSDA1RUFoRWNsSFBFTmJK?=
 =?utf-8?B?bkIyZjVmR01ZV2RrR0VGcWwrTXRtVmUxbnBnTmhuVCtBSUxXUXpIWG4za2cw?=
 =?utf-8?B?aHU5Yno5dVI2dFRxdVlFV1IwRmFsK2NJZDFabEhDVUlhZmNCRDVzY3lJeGdE?=
 =?utf-8?B?NkZCOHBxSFUrSmlzZ1hBLzgyUFZjTmlQc1Q3NVRHL1B5YloweElzeDBBRkpw?=
 =?utf-8?B?TlVVUWlXbFZ0Y1BOb284dDlqMWErd1NNK1dmQytaeUN2OUx0WlFia1JHaUdv?=
 =?utf-8?B?dmFnN2pJdjR3R0pUalhOVkg1akcrRnZ3U3dsemJzQStFOGU5dWZWaEh3SnE3?=
 =?utf-8?B?amhyMzhWV1QwNG5nMWlWTHFVNGF6UFczR0hQbGlvUHFqOTlVM2NJUlIyL3ZV?=
 =?utf-8?B?MEJxa1VZMGs0QzljWTkzN2RwMFdJMm9aRXc4OVhoajRxT1hvaGlNTTUrK3lv?=
 =?utf-8?B?SFNhZ2M2NlZNY3ZNTXkrYkJQMFpOSVpxVnkrOXoraDlqUUlYSU1VVjRkcmdY?=
 =?utf-8?B?TE14ZTJhbVhkL1cybTRGNFNiNXg3OUwyTGhJNkJLcEV4WFBuWDJqMHZvTjhK?=
 =?utf-8?B?bldYbVpYRVZxZ1YzUWdqbnAwWVhFOTMzZEQ5bXdqVWxaZnBJZWYrTk55L0w3?=
 =?utf-8?B?c0x6ZGRQYmZaMFdVekV0RjFNcG9lSGdtanFTclhlY2l1eTNEVEhSUFZGMGJu?=
 =?utf-8?B?TGh4cTMzUWlCWVVNdGxZWVNWcjhMNW92QU0rcm9Kc0hycnlncEw0T0dhSk43?=
 =?utf-8?B?UGRXUDJ0aG1DekYrYXJSK0wrTUlnRGx1aFZBQmtzZjBRVGxnek45RWhRNmRD?=
 =?utf-8?B?VGZndnNva1RjMDcrUXBIaStlSEF5dEFJNnNCdE84ZmFjclI3RGtTNXFCajZ3?=
 =?utf-8?B?aUdpaWhhTUtXazh2MjB3SnN6YlZtcU8rUFpsYmNFYjRGVnRrWUxrRmh3WWNB?=
 =?utf-8?B?aVlOd0ZoVU8xRjFYeStReWdKV2M3UGl5WFN0Rk9WNE5QbWZSK3FIWEgxbnEx?=
 =?utf-8?B?UkNqbWYvaVZ1ZHUrN2sxQ1pYa3hGVlUyQytEb2tHZDdKb3lOQXVjRkdCVDdu?=
 =?utf-8?B?N2RoYWxJbklWcTAzcmlCa1k4TDF6cnIyWFFFVXFNYTJXeG9xemZWTHhiSWcr?=
 =?utf-8?B?S3BXMk80OFJqeUlPUVNCY0ZMeWVvQ01OSXlXcWZzQzAySHVIcGhEVnByZkxk?=
 =?utf-8?B?MlVsQ05xV09VZXZaY2lzNFhYUno4ejMxOUk4OEZuVm52aDB6WnhPUi9oQmZu?=
 =?utf-8?B?cTNPc1hyUEYraFFuTHhlRnZndUpTa3dxaVd2UjMxeml0RHV0VWhaYW53Y2E0?=
 =?utf-8?B?eUl0YkRLdm9WdFZmcUdzZmhHeHcwck1qSUlTTG1vMFZqbC9UZ3BEcThqNDNz?=
 =?utf-8?B?YnAzRjZ1bm1sSGNuRlQxNFVnZXR0ZEZJV05Fc1MvK1NNVVV4M0NDaDZXRW5O?=
 =?utf-8?B?OHpaK1Z0QUZKZEZMenRpb2RoS2MvZkR2ZStMOUxUaFZtSmY2VmdpSE52bFZw?=
 =?utf-8?B?T0FhZEo3dU50Q0hXOHdsVDQ4NjIrTTJPZkF0NFkrUGhhaG9RNkg1YlJVTU5B?=
 =?utf-8?B?MmFWMnFWMkIySzZNeFdhUHNrSVJQSCt4Uk5DSVNEeWdNcmtXNTBEN0dSb0J2?=
 =?utf-8?B?L05Ba3VybVExblI5dUF0MXFLMVI0NjJ0cVByNUV4djRSU3JxM1ZTbFZFN2xR?=
 =?utf-8?Q?B0AC5vmNcKGeHfLCg16U5177NcjZ9IlFC8JepY0Rf7t/?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <28F40BAAD2784042A09B1687833C4243@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e5f0d6-a48f-42b2-3fda-08da9ba74206
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 07:59:49.5271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e+yDZoXvm5PfqmcxVeUrsSYzU3fUgB1iiooMh5BB9pOn+Nr7H6bih34Wf0BHx98w05PjPZOneffW2zKhZaYL5rKOQ/rIMeHloVlUJFPQ7eoxm9/E3+lWJAYwfnVLgt8K
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

DQpPbiBGcmksIDIwMjItMDktMTYgYXQgMDg6MzYgLTA3MDAsIENlcmFvbG8gU3B1cmlvLCBEYW5p
ZWxlIHdyb3RlOg0KPiANCj4gDQphbGFuOiBbc25pcF0NCj4gPiA+ID4gPiArICAgIC8qDQo+ID4g
PiA+ID4gKyAgICAgKiBJZiB0aGUgY29udGV4dCBnZXRzIGNsb3NlZCB3aGlsZSB0aGUgZXhlY2J1
ZiBpcyBvbmdvaW5nLCANCj4gPiA+ID4gPiB0aGUgY29udGV4dA0KPiA+ID4gPiA+ICsgICAgICog
Y2xvc2UgY29kZSB3aWxsIHJhY2Ugd2l0aCB0aGUgYmVsb3cgY29kZSB0byBjYW5jZWwgdGhlIA0K
PiA+ID4gPiA+IGRlbGF5ZWQgd29yay4NCj4gPiA+ID4gPiArICAgICAqIElmIHRoZSBjb250ZXh0
IGNsb3NlIHdpbnMgdGhlIHJhY2UgYW5kIGNhbmNlbHMgdGhlIHdvcmssIGl0IA0KPiA+ID4gPiA+
IHdpbGwNCj4gPiA+ID4gPiArICAgICAqIGltbWVkaWF0ZWx5IGNhbGwgdGhlIHNjaGVkIGRpc2Fi
bGUgKHNlZSBndWNfY29udGV4dF9jbG9zZSksIA0KPiA+ID4gPiA+IHNvIHRoZXJlDQo+ID4gPiA+
ID4gKyAgICAgKiBpcyBhIGNoYW5jZSB3ZSBjYW4gZ2V0IHBhc3QgdGhpcyBjaGVjayB3aGlsZSB0
aGUgDQo+ID4gPiA+ID4gc2NoZWRfZGlzYWJsZSBjb2RlDQo+ID4gPiA+ID4gKyAgICAgKiBpcyBi
ZWluZyBleGVjdXRlZC4gVG8gbWFrZSBzdXJlIHRoYXQgY29kZSBjb21wbGV0ZXMgYmVmb3JlIA0K
PiA+ID4gPiA+IHdlIGNoZWNrDQo+ID4gPiA+ID4gKyAgICAgKiB0aGUgc3RhdHVzIGZ1cnRoZXIg
ZG93biwgd2Ugd2FpdCBmb3IgdGhlIGNsb3NlIHByb2Nlc3MgdG8gDQo+ID4gPiA+ID4gY29tcGxl
dGUuDQo+ID4gPiA+ID4gKyAgICAgKi8NCj4gPiA+ID4gPiArICAgIGlmIChjYW5jZWxfZGVsYXll
ZF93b3JrX3N5bmMoJmNlLT5ndWNfc3RhdGUuc2NoZWRfZGlzYWJsZV9kZWxheSkpDQo+ID4gPiA+
ID4gKyAgICAgICAgaW50ZWxfY29udGV4dF9zY2hlZF9kaXNhYmxlX3VucGluKGNlKTsNCj4gPiA+
ID4gPiArICAgIGVsc2UgaWYgKGludGVsX2NvbnRleHRfaXNfY2xvc2VkKGNlKSkNCj4gPiA+ID4g
PiArICAgICAgICB3YWl0X2Zvcihjb250ZXh0X2Nsb3NlX2RvbmUoY2UpLCAxKTsNCj4gPiA+ID4g
DQo+ID4gPiA+IENvbW1lbnQgbWFrZXMgaXQgc291bmRzIGltcG9ydGFudCB0byBoYW5kbGUgdGhl
IHJhY2UsIGFsdGhvdWdodCBpdA0KPiA+ID4gPiBkb2Vzbid0IHJlYWxseSBleHBsYWluIHRoZSBj
b25zZXF1ZW5jZXMuIEJ1dCBtb3N0IGltcG9ydGFudGx5LCB3aGF0IGlmDQo+ID4gPiA+IGNsb3Nl
IGRvZXNuJ3QgY29tcGxldGUgaW4gMW1zPw0KPiA+ID4gDQo+ID4gPiB3aWxsIGFkZCB0aGUgY29u
c2VxdWVuY2UgKGkgYmVsaWV2ZSB0aGUgY29uc2VxdWVuY2UgaXMgdGhhdCB3ZSBjb3VsZCANCj4g
PiA+IHByZW1hdHVyZWx5DQo+ID4gPiByZWFkIGNvbnRleHQgZmxhZ3MgYml0IGluZGljYXRpbmcg
aXRzIGd1Y2lkIGlzIHN0aWxsIHJlZ2lzdGVyZWQgYW5kIA0KPiA+ID4gYWZ0ZXIgc2tpcHBpbmcN
Cj4gPiA+IHJlLXJlZ2lzdHJhdGlvbiwgZmluZCB0aGF0IGNvbnRleHQgZ2V0cyBjbG9zZWQgYW5k
IGd1Yy1pZCBmcmVlZCkuDQo+ID4gPiANCj4gPiA+IFllcyB0aGUgMSBzZWNvbmQgaXMgYXJiaXRy
YXJ5IGFuZCB1bm5lcnZpbmdseSBzaG9ydC4gSnVzdCBzcGVudCANCj4gPiA+IHNvbWV0aW1lIHRy
eWluZyB0bw0KPiA+IA0KPiA+IE9uZSBtaWxsaXNlY29uZCBldmVuLiA6KQ0KPiANCj4gTm9ybWFs
bHkgMW1zIGlzIG5vdCBhIHNsb3cgdGltZSBmb3IgdGhpcy4gV2UgY2FuIG9ubHkgaGl0IHRoZSB3
YWl0IGlmIA0KPiB0aGUgY29udGV4dF9jbG9zZSBjYWxsIGhhcyBhbHJlYWR5IGNhbGxlZCB0aGUg
Y2FuY2VsX2RlbGF5ZWRfd29yaywgc28gDQo+IHRoZSBvbmx5IHRoaW5nIGxlZnQgdG8gZG8gaW4g
dGhhdCBmdW5jdGlvbiBpcyB0byBzZW5kIHRoZSBIMkcsIHdoaWNoIGlzIA0KPiByZWxhdGl2ZWx5
IGZhc3QuIEhvd2V2ZXIsIEkndmUganVzdCByZWFsaXplZCB0aGF0IGlmIHRoZSBIMkcgYnVmZmVy
IGlzIA0KPiBmdWxsIHRoZSBIMkcgd2lsbCBzdGFsbCwgc28gaW4gdGhhdCBjYXNlIGl0IGNhbiB0
YWtlIGxvbmdlciAobWF4aW11bSANCj4gc3RhbGwgdGltZSBiZWZvcmUgYSBoYW5nIGlzIGRlY2xh
cmVkIGlzIDEuNXMpLg0KPiANCmFsYW46IEknbGwgaW5jcmVhc2UgdG8gMS41IHNlY3MNCg0KPiA+
IFdoYXQgd291bGQgYmUgdGhlIGNvbnNlcXVlbmNlIG9mIHByZW1hdHVyZWx5IHJlYWRpbmcgdGhl
IHN0aWxsIA0KPiA+IHJlZ2lzdGVyZWQgY29udGV4dCBmbGFnPyBFeGVjYnVmIGZhaWxzPyBHdUMg
aGFuZ3M/IEtlcm5lbCBjcmFzaGVzPyANCj4gPiBTb21ldGhpbmcgZWxzZT8NCj4gDQo+IGk5MTUg
dGhpbmtzIHRoYXQgYSByZXF1ZXN0IHBlbmRpbmcgd2l0aCB0aGUgR3VDLCB3aGlsZSBHdUMgdGhp
bmtzIHdlIA0KPiBkaXNhYmxlZCBpdCAoYmVjYXVzZSB0aGUgY29tcGxldGlvbiBvZiB0aGUgZGVs
YXllZF9kaXNhYmxlIGhhcHBlbnMgYWZ0ZXIgDQo+IHRoZSBuZXcgcmVxdWVzdCBoYXMgYmVlbiBz
dWJtaXR0ZWQpLiBUaGUgaGVhcnRiZWF0IHdpbGwgc3RpbGwgZ28gDQo+IHRocm91Z2gsIHNvIG5v
IHJlc2V0IHdpbGwgYmUgdHJpZ2dlcmVkLCB0aGUgcmVxdWVzdCBpcyBqdXN0IGxvc3QuIEEgbmV3
IA0KPiByZXF1ZXN0IHN1Ym1pc3Npb24gb24gdGhlIHNhbWUgY29udGV4dCBzaG91bGQgYmUgYWJs
ZSB0byByZWNvdmVyIGl0LCBidXQgDQo+IHdlIGRpZG4ndCB0ZXN0IHRoYXQuDQo+IA0KPiANCj4g
PiBBbmQgd2h5IGNhbnQnIHRoaXMgcmFjZSB3aXRoIGNvbnRleHQgY2xvc2UgaGFwcGVuIGF0IGFu
eSBvdGhlciBwb2ludCANCj4gPiB0aGFuIHRoaXMgcGFydGljdWxhciBzcG90IGluIGd1Y19yZXF1
ZXN0X2FsbG9jPyBJbW1lZGlhdGVseSBhZnRlciB0aGUgDQo+ID4gYWRkZWQgY2hlY2tzPyBBZnRl
ciBhdG9taWNfYWRkX3VubGVzcz8NCj4gDQo+IFRoZSByYWNlIGlzIHRpZWQgdG8gdGhlIGNhbmNl
bGluZyBvZiB0aGUgZGVsYXllZCB3b3JrLiBjb250ZXh0X2Nsb3NlIA0KPiBvbmx5IGRvZXMgc29t
ZXRoaW5nIGlmIGl0IGNhbmNlbHMgdGhlIGRlbGF5ZWQgd29yaywgc28gaWYgdGhlIA0KPiBjYW5j
ZWxfZGVsYXllZF93b3JrX3N5bmMgaGVyZSBkb2VzIHRoZSBjYW5jZWxsaW5nIHRoZW4gY29udGV4
dF9jbG9zZSBpcyANCj4gYSBuby1vcC4NCj4gDQphbGFuOiBUaGVuIGknbGwgYWRkIGEgd2FybiAt
IGVzcGVjaWFsbHkgYWZ0ZXIgYSAxLjUgc2VjIGRlbGF5IGFuZCBzdGlsbCB3YWl0aW5nDQpmb3Ig
dGhhdCBjbG9zZS4NCg0K
