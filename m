Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A70324C63BD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 08:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A7F10E4D0;
	Mon, 28 Feb 2022 07:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F37510E4D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 07:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646032875; x=1677568875;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uTsC1TQ/bsrhq30eekXo26FjIo5Pmkehj6bbZYTeIMY=;
 b=ZY5gg+WxTFoblfODDO+lnyBdz0W/1+MKJhYo5yvhunVPz1UoT2bvT1hI
 5U9lVdpwx/og7CylTsWxBI0JHchXilJhroch+E+F06mR7vcu0OKfzubPg
 WYKedXbYioJ5zxpAPkceNIWffw76fyiwlrfexC2pThGQO701smz0BhCvU
 8q1MB6slxwO6Fvhj0PBkAd5kOP4M3IkbmXo4JDIK+zSbdZGNHTKEtegd8
 a+wzCaRB20pumXSZnDvs7umKERz3yAbEAiRZYwc7BxaUX7zj5jDuhwD3q
 LRpbNkAd1ns3thK7kKSFwRmh5IK5h5F1WnnHjqsnlnGH07xH/ngUKAL0G w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="233443388"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="233443388"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 23:21:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="638902078"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2022 23:21:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 27 Feb 2022 23:21:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sun, 27 Feb 2022 23:21:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 27 Feb 2022 23:21:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XriMqczcvh3BGKSIlPlzjBp0+od0ZtPGMR9aCVFpm3lbeap6j3AJyKfGIvO2r91qSaPgkWG/bUD5AlIv9WEBMf40y36xc8yAOJ9g6LLPEarpsf+vk0Rqw+1/T362gyTaG4w67TsYNxHz4gg2IOZjhN62JsbkEgqGQ+ocSMKLQ0EzhPoVXWZRDBpEIPnJKM1Hr2MqF2TZRgcrx5Z2f8u/voH/oId1MPVIMAr4e/SH16c5yJrbzOtUVw0GD/bCvqp9mlnNHvaTEX6hMNAWVl9OaiXd51fTNSA2327iGdNtW34WrGgT35eZzfw1mCCOthNB+Ys9gw+zlbirAH6QLSGDDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTsC1TQ/bsrhq30eekXo26FjIo5Pmkehj6bbZYTeIMY=;
 b=Z48UZXiKqqkMPpPypsfgdickZo52hPsL5eEsSLzcLcGbRV9Km94M6RSkbp/YURb5vY0MZOl7/+sseljVQh6934LaxtyO8C4uyWLZBP10VcAiyhkKiErRg51M3e+HJXAricVgu6HwL1Yyk0z2gy7zezlm8K5IjWdDRkJqNca1CRiiyqoAPwc5wxuHw51yPL7mUcLEUbSJwlnqg5edxhsWXc7Bz+ZEdNQDgAobr9yQlZ3k6R08HijKwuLDLsnR5x8EtUDOmLaRD6k0sXKEtMIKPS9SyRLrcq6/xVBP87BTu+G/qGCt9cWZg280lX7m9CfdszvSI0924edLdMRLmSQg5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5543.namprd11.prod.outlook.com (2603:10b6:208:317::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.21; Mon, 28 Feb 2022 07:21:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c%2]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 07:21:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Set "SF Partial Frame Enable" also on
 full update
Thread-Index: AQHYKLO7XIcvhJ5Y5E608SWSTnIrKayhZUGAgAG8JoCAAa39AIADxrkA
Date: Mon, 28 Feb 2022 07:21:11 +0000
Message-ID: <6206f22ae505a29cdcfad742049a55aba4c0cc62.camel@intel.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
 <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
 <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
 <6a55495c4c5585e7bf6c912447d0d27765fc2c72.camel@redhat.com>
In-Reply-To: <6a55495c4c5585e7bf6c912447d0d27765fc2c72.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06c70bcf-e331-42dc-e229-08d9fa8ae58d
x-ms-traffictypediagnostic: BL1PR11MB5543:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL1PR11MB55430EEE792919C5C2F270E58A019@BL1PR11MB5543.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uEqcSLQ06i12cpIezIPXUIb/fxhA3zEFGEZYJJ4Vm7LpHmUaJD/rpLv5opQsXA+f9/HunVN12HuEX+bKBhRNcHcKmbPM/exUAgF8e6cF1Df2GFvb7SXwSuTmRhbaBMsD/O1tDnWjikE6m8fprnSwntSMBWQSolbdXYIetEyCdnf6MIsagjhgoquRaqgVlcdkVljXXap2msTMwZAzjf3cWfHNd4hfHcsNIj48mXfpxFT0RljUYb6FTUcEn9Ian7McAacNgWiAk/OCLemXltE+mpdSGe7qwT3V5UKtqjOrzgEQeVSr+FjUojYrIoC7d9W5v5leaBvk/6N8Mi6mRXEG3NJT6Pp5QdYI5SuQ9RRya02om3ClW8tfE8TNr8lyocD7PBOU6ChGzEimrU813sgz7Cxe/c8zm4oBcOwxs1APdGlebO/GRqkMO5HVUzI2fHvJX3g7alx++3Ahg5yWLsf7fkV6zq5XI4LXDdx8s3bZswBXyhPZPvCRM6CbKDMkxGh0sgxhiyoqoEHf9DmoyxOlBwwImSH9chRSWNdjzJDSoxLtjSQMWP9F5GNyGF4v+55pe0+AfgYGdFrnwDIu4yUu3rjYWUKSwnpYoWfmz/ATUcE/C8CxMa/2f2xlTSBXEihe1SzqVRTdJoo5SJmhA/j7fu4tpcnG4AqhFAdpnHaJp9RX1zzLyvSjNAaqzfhIF8uq0ZzWEjokv+scgEhaDTt/2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(2616005)(186003)(26005)(66574015)(83380400001)(15650500001)(2906002)(5660300002)(8936002)(966005)(6486002)(508600001)(6506007)(71200400001)(91956017)(76116006)(66476007)(66446008)(8676002)(64756008)(4326008)(6636002)(66556008)(66946007)(54906003)(110136005)(316002)(38070700005)(38100700002)(86362001)(36756003)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Kyt0M2w5MzdhQ0pLNllRbHJ4TURkZTY2SnhTcEx1T09WaHdxa0IvWFNKUEpq?=
 =?utf-8?B?WVZVVUVFSEYrY2J3UDZ2UTZMWitmM1Rka1BidHdkVmtzd292VTlZaGxCR3Zi?=
 =?utf-8?B?ZGtVY21icGxkZm16THJIZE40eHY2VHJibmhzQlc2aWdKYWkra2Y2MFlIY1JD?=
 =?utf-8?B?cHprSUJ0M1ptUno1TFJVM0JyVkx5SFdsNEc5Uk93UEd0UEdhMkZrNTJSQW5X?=
 =?utf-8?B?cEp4Y3Q1MHhHZW5MZVJHeDJnRnNzRmM0R1k1cDBkbXoxTHdxMWdCV05IYkUw?=
 =?utf-8?B?OFhTT1o0eEk4clZyUzNrYWxnQ2xMWndSTDd2azVpck5OVmYyNzl0L0ZwWkQy?=
 =?utf-8?B?TlBSTnhEQkhpZlZibzN2WVlWK3FDeE5oc3A5TFJDWE4xMHdNMHpvVDBSVVhI?=
 =?utf-8?B?L2NPU1lPNElvdk5MZjhzS0lPT1BVYXR2N1h2ME5tNlkzZEFFek15bjJqaDN2?=
 =?utf-8?B?alkrbGI5TWwyai9jODJJN2JSTVV5ODdDSUZqNUJ6VjRNcCtYdmRrRUZsV0tS?=
 =?utf-8?B?TWlPdkRTMzBaUFRwRU5xaEt2SFA0dFlHbXpheTZrWGI1N0dlaGFLdS9zOThi?=
 =?utf-8?B?UmZoRHBOVmQ1UkdLMlVYVnVDQzJ4UzJENUF0Mm5INWkvS2hsclBMUE9hdkp4?=
 =?utf-8?B?eDUzeWhVVnpwUGdacEIvOE5nTUlzNmx1UFU2eng5NDl1M0xLa3JHSi9MclFw?=
 =?utf-8?B?UUIrZmRuRjBnY1BucWtMSzlmbytpUjFoVkt0c2hZZk1qQWlHR0pVVWFZdGN0?=
 =?utf-8?B?RWtrVU51NTljMCtxRTVWemZsdGRlMS9hUElYbHo5YUR6Q0oyWnhXTVQ0Mm9r?=
 =?utf-8?B?ckhRTUVjRHp5NFRzOUt3NXZnT1BuaVBWSHB0UnF1aU9ndW1wMFlSU3ZBeVln?=
 =?utf-8?B?bURBNEZBWXM5VlVmN0lFN1NidXcrYmJ3S1lxN0s4bTQveEFHcm4yekMxM2E0?=
 =?utf-8?B?QTFBLys2cHJWaUxhVmpTcWJEeFM5SmE0SmcyK3R4UzlxcFVHMmR4eDNTaVJr?=
 =?utf-8?B?WktBbFhmLzdwODJ4M0VtK0FIZHFNc3RXYnRwSDFvOWN6cHZ5eUZ0Si90K3Rh?=
 =?utf-8?B?NHF1dXZhbUU0ZGFza1Fpa21Wb01oU2JWRWcwRkhzYi9YU1QwdmVGR0Y3SVBR?=
 =?utf-8?B?YU93ZHFCSldLNGlJTGVwT0VBTm4wQUE5QWZyUTdpdzBkdjM0Rjc2dVgwbWxq?=
 =?utf-8?B?VzJJVWw1M0lycWplQmZoTjVXYUgvd2RNSTRGNXllS1NZcmZxTFFQSkRoNmt0?=
 =?utf-8?B?LzBFRlh3MDdFU0kyUzZrcGViQkxPdFJsUGpCQnI3MTdUb3oyVXJKejJuci9q?=
 =?utf-8?B?Tk03am1iYUpZOWVlcjc0K2tLeXUxQ25xamlKV0p0UFFCSEhVbjhpQWVVWk9U?=
 =?utf-8?B?RVJkZjJTRGJsV0lNU0pVOWZ0SVgxa1l5OTYxZmxFSnhhbmpGeHNvM1hxeGUw?=
 =?utf-8?B?QkJMVy9QYUdXM1oycDdpVTdOdWVjNlE5UFAxdXBOb1ZjK1RWN3h1VFlCdGJ0?=
 =?utf-8?B?VWhOQ0lPd3lEQzJWVDU2NGc4NHREa2ZtbGcxd0J4VzBzWHBSeUVLSEFJSEpa?=
 =?utf-8?B?WmlXSEtwU0ZNY0t6enZJc3cvbVI4WVdQcmZqcTRna0h1SXhJTXNxaThvQ0Iv?=
 =?utf-8?B?cHNtY29JU1VHdVluR3JuN01yKzREYktvbWpPUHdaeHk0UTZqbU9OSjRBZUVz?=
 =?utf-8?B?TWNNNzRSRzg3MzJ6LzZQZ0pncFBIRktUdmh5cFRGR1h6NE9SYy9hN3hMaWNS?=
 =?utf-8?B?czF3UWhhNWlTTGJ5ZnB2UC9rMjNNQ0lPNmsrL1hJc3VLS2NaYnJBdnpwTjZV?=
 =?utf-8?B?Vmd5dEhPT200V3Nmb3p3ZmhMeStURkIxR0ExdWd5anJTT21CajErQXphY0pD?=
 =?utf-8?B?VGZ2bkJNbTQ2U2t3SzdQZCtER0lDUGZFYWpRU0F4REVsdEs3aDhMZmdMSll4?=
 =?utf-8?B?VTdmZGlzWlJGdlk0SkZKVTRhOSsxd01tTWlXNTMzQzlQaUJJT2ZRZHhyd2Ns?=
 =?utf-8?B?cGFydTJpOGIrMGJoUVdURmVCWHVhdXFBTkRFRlJJN1N2VW5BQ2ZJbDZtTlJV?=
 =?utf-8?B?WGdxbGgzS3pwZHlUcDFpb1BFOVdVa1FTb3dZbUlrREtlT3YyOTJPdnhJeTZD?=
 =?utf-8?B?cEo1LzR2aXRmeVJuTit4TFZ4NkFaWlVuUlF4SVEwSTN4M1dZaWpuWGF3N05k?=
 =?utf-8?B?TzFRbVdtSUg5TXdhRncwQXpOdTBldFR5WkxodVhRN0xEWFNWR3JOQ3VzYWI0?=
 =?utf-8?Q?bI/GGKc9xy10vCLaxaLXdqVjYeKz8LEabRer4rz31w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C76B93E6D10D2046ADBCD4719766977A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06c70bcf-e331-42dc-e229-08d9fa8ae58d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2022 07:21:11.2272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkdHY7TbcetU4d4rxIGrkPNElUlC1FPG+tTPOvX2R1BME3cUoX86oqLBRoPQG65652YiGc/GBjRQAmGOGy3wZ3XivqvimYyweZEU7QnEC5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Set "SF Partial Frame
 Enable" also on full update
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
Cc: "mharpau@gmail.com" <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTAyLTI1IGF0IDE2OjQxIC0wNTAwLCBMeXVkZSBQYXVsIHdyb3RlOg0KPiBK
RllJIEkndmUgYmVlbiBydW5uaW5nIHRoZSBwYXRjaCBvbiBteSBsYXB0b3AgZm9yIGFib3V0IGEg
ZGF5IG5vdywNCj4gZmxpY2tlcmluZw0KPiBpcyB0b3RhbGx5IGdvbmUgYW5kIGFsc28gSSdtIGEg
Yml0IGFzdG9uaXNoZWQgYXQgdGhlIHBvd2VyIHNhdmluZ3MhDQoNCkdvb2QgdG8gaGVhciB5b3Ug
aGFkIG5vdyB0aGlzIGdvb2QgdXNlciBleHBlcmllbmNlIHdpdGggaTkxNSArIGxhdGVzdA0KUFNS
MiBmaXhlcy4NCg0KPiBUZXN0ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+
IA0KDQpUaGFuayB5b3UgYSBsb3QgZm9yIHRlc3Rpbmcgc3VwcG9ydCB5b3UgcHJvdmlkZWQgaGVy
ZS4NCg0KPiBPbiBUaHUsIDIwMjItMDItMjQgYXQgMTU6MDIgLTA1MDAsIEx5dWRlIFBhdWwgd3Jv
dGU6DQo+ID4gQWxzbyAtIEkgcmVhbGl6ZWQgdGhpcyBpcyBtaXNzaW5nIGFuIGFwcHJvcHJpYXRl
IEZpeGVzOiB0YWcgZm9yIHRoZQ0KPiA+IGNvbW1pdA0KPiA+IHRoYXQgZW5hYmxlZCBQU1IyIHNl
bGVjdGl2ZSBmZXRjaCBvbiB0aWdlcmxha2UgaW4gdGhlIGZpcnN0IHBsYWNlDQo+ID4gDQo+ID4g
T24gV2VkLCAyMDIyLTAyLTIzIGF0IDE3OjMyICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
PiA+IE9uIFdlZCwgMjAyMi0wMi0yMyBhdCAxNDo0OCArMDIwMCwgSm91bmkgSMO2Z2FuZGVyIHdy
b3RlOg0KPiA+ID4gPiBDdXJyZW50bHkgd2UgYXJlIG9ic2VydmluZyBvY2Nhc2lvbmFsIHNjcmVl
biBmbGlja2VyaW5nIHdoZW4NCj4gPiA+ID4gUFNSMiBzZWxlY3RpdmUgZmV0Y2ggaXMgZW5hYmxl
ZC4gTW9yZSBzcGVjaWZpY2FsbHkgZ2xpdGNoIHNlZW1zDQo+ID4gPiA+IHRvIGhhcHBlbiBvbiBm
dWxsIGZyYW1lIHVwZGF0ZSB3aGVuIGN1cnNvciBtb3ZlcyB0byBjb29yZHMNCj4gPiA+ID4geCA9
IC0xIG9yIHkgPSAtMS4NCj4gPiA+ID4gDQo+ID4gPiA+IEFjY29yZGluZyB0byBCc3BlYyBTRiBT
aW5nbGUgZnVsbCBmcmFtZSBzaG91bGQgbm90IGJlIHNldCBpZg0KPiA+ID4gPiBTRiBQYXJ0aWFs
IEZyYW1lIEVuYWJsZSBpcyBub3Qgc2V0LiBUaGlzIGhhcHBlbmVkIHRvIGJlIHRydWUNCj4gPiA+
ID4gZm9yDQo+ID4gPiA+IEFETFAgYXMgUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUgaXMgYWx3YXlz
IHNldCBhbmQgZm9yIEFETFAgaXQncw0KPiA+ID4gPiBhY3R1YWxseSAiU0YgUGFydGlhbCBGcmFt
ZSBFbmFibGUiIChCaXQgMzEpLg0KPiA+ID4gPiANCj4gPiA+ID4gU2V0dGluZyAiU0YgUGFydGlh
bCBGcmFtZSBFbmFibGUiIGJpdCBhbHNvIG9uIGZ1bGwgdXBkYXRlIHNlZW1zDQo+ID4gPiA+IHRv
DQo+ID4gPiA+IGZpeCBzY3JlZW4gZmxpY2tlcmluZy4NCj4gPiA+ID4gDQo+ID4gPiA+IEFsc28g
bWFrZSBjb2RlIG1vcmUgY2xlYXIgYnkgc2V0dGluZyBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRQ0K
PiA+ID4gPiBvbmx5IGlmIG5vdCBvbiBBRExQIGFzIHRoaXMgYml0IGRvZXNuJ3QgZXhpc3QgaW4g
QURMUC4NCj4gPiA+IA0KPiA+ID4gQml0IGV4aXN0IGJ1dCBoYXMgYW5vdGhlciBuYW1lLg0KPiA+
ID4gDQo+ID4gPiA+IEJzcGVjOiA0OTI3NA0KPiA+ID4gPiANCj4gPiA+ID4gdjI6IEZpeCBNaWhh
aSBIYXJwYXUgZW1haWwgYWRkcmVzcw0KPiA+ID4gPiANCj4gPiA+ID4gUmVwb3J0ZWQtYnk6IEx5
dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+ID4gPiA+IENjOiBNaWhhaSBIYXJwYXUgPG1o
YXJwYXVAZ21haWwuY29tPg0KPiA+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiBCdWd6aWxsYTogDQo+ID4gPiA+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNTA3Nw0KPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgMjANCj4gPiA+ID4gKysrKysrKysrKysrKysrKysrLS0NCj4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMSArDQo+ID4gPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gPiA+
IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ID4gaW5kZXggMmUwYjA5MmY0YjZiLi45MGFjYTc1ZTA1ZTAgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiBAQCAtMTQzOSw2ICsxNDM5LDEzIEBAIHN0YXRpYyBpbmxpbmUgdTMyDQo+ID4gPiA+IG1hbl90
cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUN
Cj4gPiA+ID4gICAgICAgICAgICAgICAgUFNSMl9NQU5fVFJLX0NUTF9TRl9TSU5HTEVfRlVMTF9G
UkFNRTsNCj4gPiA+ID4gIH0NCj4gPiA+ID4gIA0KPiA+ID4gPiArc3RhdGljIGlubGluZSB1MzIg
bWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KHN0cnVjdA0KPiA+ID4gPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+ID4gK3sNCj4gPiA+ID4gKyAgICAgICByZXR1cm4g
SVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpID8NCj4gPiA+ID4gKyAgICAgICAgICAgICAgQURMUF9Q
U1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBEQVRFIDoNCj4gPiA+ID4gKyAgICAg
ICAgICAgICAgUFNSMl9NQU5fVFJLX0NUTF9TRl9QQVJUSUFMX0ZSQU1FX1VQREFURTsNCj4gPiA+
ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiAgc3RhdGljIHZvaWQgcHNyX2ZvcmNlX2h3X3RyYWNr
aW5nX2V4aXQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gIHsN
Cj4gPiA+ID4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+
ID4gPiBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiA+ID4gQEAgLTE1NDMsNyArMTU1MCwxNyBA
QCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0DQo+ID4gPiA+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICAgICAgICAgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtDQo+ID4gPiA+
ID51YXBpLmNydGMpOw0KPiA+ID4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0NCj4gPiA+ID4gPmJhc2UuZGV2KTsNCj4gPiA+ID4gLSAg
ICAgICB1MzIgdmFsID0gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEU7DQo+ID4gPiA+ICsgICAgICAg
dTMyIHZhbCA9IDA7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgICAvKg0KPiA+ID4gPiArICAg
ICAgICAqIEFETF9QIGRvZXNuJ3QgaGF2ZSBIVyB0cmFja2luZyBub3IgbWFudWFsIHRyYWNraW5n
DQo+ID4gPiA+IGVuYWJsZQ0KPiA+ID4gPiArICAgICAgICAqIGJpdA0KPiA+ID4gPiArICAgICAg
ICAqLw0KPiA+ID4gDQo+ID4gPiBOaXQ6IFVubmVjZXNzYXJ5IGNvbW1lbnQuDQo+ID4gPiANCj4g
PiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiA+IA0KPiA+ID4gPiArICAgICAgIGlmICghSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKQ0KPiA+ID4gPiArICAgICAgICAgICAgICAgdmFsID0gUFNSMl9NQU5fVFJLX0NUTF9FTkFC
TEU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgICAvKiBTRiBwYXJ0aWFsIGZyYW1lIGVuYWJs
ZSBoYXMgdG8gYmUgc2V0IGV2ZW4gb24gZnVsbA0KPiA+ID4gPiB1cGRhdGUgKi8NCj4gPiA+ID4g
KyAgICAgICB2YWwgfD0gbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2
KTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAgICAgICAgIGlmIChmdWxsX3VwZGF0ZSkgew0KPiA+ID4g
PiAgICAgICAgICAgICAgICAgLyoNCj4gPiA+ID4gQEAgLTE1NjMsNyArMTU4MCw2IEBAIHN0YXRp
YyB2b2lkIHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ID4gICAgICAgICB9IGVsc2Ugew0KPiA+ID4gPiAgICAg
ICAgICAgICAgICAgZHJtX1dBUk5fT04oY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYsIGNsaXAt
DQo+ID4gPiA+ID55MSAlIDQgfHwNCj4gPiA+ID4gY2xpcC0+eTIgJSA0KTsNCj4gPiA+ID4gIA0K
PiA+ID4gPiAtICAgICAgICAgICAgICAgdmFsIHw9DQo+ID4gPiA+IFBTUjJfTUFOX1RSS19DVExf
U0ZfUEFSVElBTF9GUkFNRV9VUERBVEU7DQo+ID4gPiA+ICAgICAgICAgICAgICAgICB2YWwgfD0N
Cj4gPiA+ID4gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fU1RBUlRfQUREUihjbGlwLT55MSAv
DQo+ID4gPiA+IDQNCj4gPiA+ID4gKyAxKTsNCj4gPiA+ID4gICAgICAgICAgICAgICAgIHZhbCB8
PQ0KPiA+ID4gPiBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUihjbGlwLT55MiAv
IDQNCj4gPiA+ID4gKw0KPiA+ID4gPiAxKTsNCj4gPiA+ID4gICAgICAgICB9DQo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gPiBpbmRleCAyYjhhMzA4NmVkMzUu
Ljg5YmJiNjRlNTIwZCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID4gPiA+IEBAIC0yMzE2LDYgKzIzMTYsNyBAQA0KPiA+ID4gPiAgI2RlZmluZSANCj4gPiA+
ID4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSKHZhbCkgICAgICAg
UkVHX0ZJRUxEDQo+ID4gPiA+IF9QUkVQKEFETA0KPiA+ID4gPiBQXw0KPiA+ID4gPiBQU1IyX01B
Tl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSX01BU0ssIHZhbCkNCj4gPiA+ID4gICNkZWZp
bmUgDQo+ID4gPiA+IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFJfTUFT
SyAgICAgICAgIFJFR19HRU5NQQ0KPiA+ID4gPiBTSygxMiwgMCkNCj4gPiA+ID4gICNkZWZpbmUg
DQo+ID4gPiA+IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIodmFsKSAg
ICAgICAgIFJFR19GSUVMRA0KPiA+ID4gPiBfUFJFUChBREwNCj4gPiA+ID4gUF8NCj4gPiA+ID4g
UFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFJfTUFTSywgdmFsKQ0KPiA+ID4gPiAr
I2RlZmluZSANCj4gPiA+ID4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVf
VVBEQVRFICAgICAgICAgUkVHX0JJVCgzDQo+ID4gPiA+IDEpDQo+ID4gPiA+ICAjZGVmaW5lIA0K
PiA+ID4gPiBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUUgICAgICAg
ICAgICBSRUdfQklUKDENCj4gPiA+ID4gNCkNCj4gPiA+ID4gICNkZWZpbmUgDQo+ID4gPiA+IEFE
TFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFNRSAgICAgICAgIFJFR19C
SVQoMQ0KPiA+ID4gPiAzKQ0KPiA+ID4gPiAgDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg==
