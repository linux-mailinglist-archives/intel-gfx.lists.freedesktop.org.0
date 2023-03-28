Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FF76CBC2D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 12:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF3C10E45F;
	Tue, 28 Mar 2023 10:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C0510E45F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 10:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679998393; x=1711534393;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wD5NL90XtZhXDqC1quaT1WHKwYJjtYCw2ArVRWx+YvM=;
 b=MqREW4C0tNL3PO2IC0Cn21ifgFOz34SUd4tYws6e8rpr59qH+Xnpp/Rt
 TpFMfFN6zs+nwJc1isrWpPCDWZn4XdrlM4BB/pTF67RTxnp5vGYomzpZu
 9RYNZjUhEKhOGTbU+5bHKm6ymgzcg9nNgBWkVeQoXwQyZd04eW8ZuuFaB
 U7xiup3DU0ElRk1yB93mXv9SWeo5M435I9FZMQicbxt4ykhbcVLYJWn1o
 0A+Wic2W8pvYqSMXot6XNrJNDdUNT7ZTVfEK12AOo5ybYFOAWxZlthU+T
 HtHwGAAV9vFx0RBOTMOa6sTThNxR3YmlUb7F3Yt7+NURi5bU/pPtZqkHJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="328985338"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="328985338"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686368911"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686368911"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 28 Mar 2023 03:13:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:13:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 03:13:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 03:13:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5c5c+jhiAxg+E6/OkaWQhrw6tT+JLJFgfqFq8qXVTb5J5Le2/Pe7jY2/0f+oLjw7Tqn54C31+9eE08+2XUDVOLqFj2mAb+EhjboFqo34mV5XmxphPHgk6QqexnHTr1mb8fZiWM7xE6n4NQLRnIlDbc1xM6+ZUscF1X59/zooHSW1apRrzKMbPt6/KEB/SpuYWxdWL4rdXr/IodUfVdrnA9HIDPAeBVyxRl/dEvqn7czZ1SjkIJcPPyfnGbqZ2qB/eOksds0LkBCVEu+czDpZA5rs8qvMasjUAq16OTdhN4Y9/U08hD6A0q/XjdgD/V9ID4cxYsxiBS7jyS3iDK2Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wD5NL90XtZhXDqC1quaT1WHKwYJjtYCw2ArVRWx+YvM=;
 b=b74gK1SPWjrALByzGy3d3vtJt0TSgFE70mGXKO4aXHdk/gX65HEzqlZNMIy5IQLF3clr/Xl5MnWFhJV/oACWYFXhoJSIKiyItsQub6HfDSQmIcvaRnXyoAPdFPQQnaPJdQquat7gZKTWt1Zwh8q/0MotE/P6Rf9VsZkFlcxIE8t08YF2FrYzMA0OL/vGDMwmUjOqFiqgTWGYUzwzZZRn4EX+Fy3WPKmSj1FiIdqV1Moz0174eMOcaFqYvzsN4glPb290RXp8AA2oih+BPRiN3DLxOKr2VSxeWZ7OVrkwAzdMKyObpRtuR5hbKV9TS6P9rBo+VIyoWMRKWzIMVms1KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 10:13:04 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 10:13:04 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 25/29] drm/i915/adlp/tc: Align the
 connect/disconnect PHY sequence with bspec
Thread-Index: AQHZXZLN21caZm4f2kWyM7upkDQsJa8QAG0Q
Date: Tue, 28 Mar 2023 10:13:04 +0000
Message-ID: <MW4PR11MB7054E5858E272D6D8AAB9C22EF889@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-26-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-26-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB6779:EE_
x-ms-office365-filtering-correlation-id: 79f69d82-1b7a-4d52-3b6e-08db2f750502
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Euyu7tLqG5XwktDyO6MxGTAd6rg2iComUcHAPetOo4m52jFAGd8bw5FbPSW2C6ta51XETRLW90CbljNlxri1WiA8e3ZETmeeQ6Fs5O7RTw6u2kbulJ+koFX7/XHAbpXXLBOMNHEuPqh1nYHODnpFFoq/0sgG7KOY63osSGJr85pUtlkG80J6ytgubo1UPMIk47dRkTzCtuW7vHj6uOLl00yrP4pJ06nzUWK4+Zh5KNPguR7n+P1dx1EEgsd/6JtEmIMTvRlVJqxbhQpy/MrJ5YDDhzaCzE70p6BiycFybOTL9WPj3RlEt701yvpfVQvK7O2AaewogZl+vwu3XcN+o/F7sKEdeFK4PjMcvcOMFFi+3YsilpZ78edViW047X6YCtYSsL4bQt+926uCKzW/V3C5u1Esa9ICaRbt5G5WxD+Qryp/tuZlhOJPCP9dQfTo9qa699kdLVLm5ZcCDNvz8iV5IrlOtJHsghbvYtDr+jx7JdqFg095P5pdJSIVC7rc0sd85ovv76Kp8Q6Chx80+RZ98NPM5GlTWkSMQhbUDuIkBYJyxdUiTVJuH87IArJx86UryVv0m8NkdtnG9uaWa94+1Ou4sVVxZoXjIoX6AvDx1JpAqOs88bBVBGhgqrA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199021)(316002)(110136005)(478600001)(52536014)(8936002)(122000001)(82960400001)(38070700005)(86362001)(5660300002)(66446008)(76116006)(2906002)(64756008)(38100700002)(66476007)(33656002)(8676002)(66946007)(66556008)(41300700001)(6506007)(186003)(55016003)(26005)(9686003)(53546011)(83380400001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NExGNVBRSWpYTDdwcmZ3emhYYUh3YTloNTR6TlBaM3NsTnNWK1JTNWRIOWdy?=
 =?utf-8?B?RFpFNWpXSHdTZjRXMTJtRDVxOXlzK2VSQXNKR1JXdzlad252NFluMkU4WlFN?=
 =?utf-8?B?ZkJ5TVFXb3QxZXhoTW9MVitDS2tLUitZNGpCWUlybWp5Nktlc0VhaWQrUXJp?=
 =?utf-8?B?NEFYMGlnRDN5ZEY1c2laRUNaZ2RydU0xMTNsRmRYb1NPMGpVckplc3dkY3Ba?=
 =?utf-8?B?RTRadFRtc01zcERHV3pUU3ViUkRhOWo0ZVNvbjNjOXBRUUN3aGt5VDFJM0dp?=
 =?utf-8?B?OU53Ui9ZRjVLSzZlRUZLVW56OEt4MkErdWt2dzJaR0pxRVB5aDV1TEFSMlZE?=
 =?utf-8?B?U2xlRW1Xc2tURnBLMElOSkU4bVFSWXdhMkdWVjVZS01CTS82Z2VDUURIQllj?=
 =?utf-8?B?UUtwdk1WbkwwL2dmSkRUT2tzSElDeC9QbisvVGlQQWphdGlkNzA5cVd6cVg1?=
 =?utf-8?B?UUNHN1AwbE96bllUUEF6a0tOTHBpa0EzTzlIcTBOanJaRFQxK3ZMRW9TWTcz?=
 =?utf-8?B?SGFTRlRVTW1zSDNQWlZwcjNQcVhiTTN1T1paMEQwMjVxL2pXU3MzbXpPQXpw?=
 =?utf-8?B?WmZlUlR0Uk9hZEV0NHhLU1JONHZ5K0cxV2pJODl2YjhhTjFwNFVWYVU1WDV1?=
 =?utf-8?B?Z2twVkFuQWdWNk9xZ0VkNlVKUEp3NXJaRWYyYnhWQy8zSDdjY3ZQZHUyVWRD?=
 =?utf-8?B?YVRjUVRnUjEvN0VjUjJ2aU9mMmIyVDR4VjFrZlR2eXhxWEFJdXpEZTgwNzh4?=
 =?utf-8?B?UnF6SWNJWmJYM0hIVjNGUGdhTFFwV0VkcENwR0pCK3gwZmtKWXkvNko3VUtp?=
 =?utf-8?B?dlFsTDlrdTk5U0VSSlQ5K01HZ09VNDZzNFJGVWRRSlZseWdaL3k4K1VkTlhM?=
 =?utf-8?B?ZWJSamtleTlEZGFnTXZOV2F2dWJlZkxSMW9sd01DTE01NmZVTktYUGJEbzRF?=
 =?utf-8?B?R0poMHJUU0VJajVNUUt3WHNzeURjbzFDeVJWZVFuNGZmYmlSQ3ZpMHljZ1Js?=
 =?utf-8?B?SFpHa1hRYkd3Z0c1SHk2WVk3dEkzTytmczBJc0VhenJjN1NYbWtmSHdCQmpo?=
 =?utf-8?B?emJwdnZyZ1pkSzZBQmdhRGVvK2dUME9DdEsxYVh6SHdHMDBabkRRTVl0cWp2?=
 =?utf-8?B?OGRKOVQ5K1JtSmJjR2hNaHByY2lrWTd3U0hXRXBDT29CMkNVSXNPMlV4dGIx?=
 =?utf-8?B?YlhKQUNaR3ZSZXlDSFRCekNOWUNNRTBWN2tmamoxbW5TYTNYUzQ3WWFFZ2Ry?=
 =?utf-8?B?NnVwdnE0L0RCK2tkS1c2b1VwK2l6ZmNWZUNvN0NWWGRvaEs0OWhxRFBiS2lG?=
 =?utf-8?B?UlFoRVJSZU13Z1NUQTFqZ052bFlDMy9sNWpoQUpMNXpYb0NGY0pKc0FCdnhJ?=
 =?utf-8?B?c0NHZFpjdDlidnpyYVhiYTdaT0prRlY3YjNnQ0JKNEZoRkZ3YzJRZmFQZ1VS?=
 =?utf-8?B?TnhxZEN1VWVpN0M0K0dnbUo1ck41elc2Y3h2YWRBdEN1WUJqdUdlTlZ1SlFR?=
 =?utf-8?B?cHkzYVp2eFQyM1RXMHlvbnQ2N3Z2SjVidkFmelZTb2NWZFlsYjcyc3ZMbDJJ?=
 =?utf-8?B?aDJsZC9qaDJEVXlHL3lCODI2bXliQ2dVMTU3ajVSOFRyQVJoQU9xdjZycGVs?=
 =?utf-8?B?bGxyaUREK3JtdE9WNzd1cGlBRk94YkM2MFAxbk5UNjRhNDV2NkEvWXNPU2I4?=
 =?utf-8?B?N2pTeklKM1BDNm1qTmlYR2dJc2pMTkoyelgvL2dzYWZQcmpRMVJnTFNEckts?=
 =?utf-8?B?dFBpZUlhUm1VL2kzTU1ETHRTYU9pTmRpSkpMTmt5d2FyUlRwNjNTTjYrbXJC?=
 =?utf-8?B?OVFha2JBTTVVQWs4Y01YSU9hd21jcnRjdTI2QW1YSVUrOFFlcEFENWRrWHNI?=
 =?utf-8?B?K25OT2IzRFViSXk0Q2RDRjBNbWdsUkhsYmpZcnF0TjBRd0JYS0pNZ1VUQkVl?=
 =?utf-8?B?Y1lXRGRJeVhjVTdHSEt5aitmZGdQazNxbGFrUy9KUERyVENMNTRTdXAzbC81?=
 =?utf-8?B?VTU2blZJMjdTeVk5V3FrZG9mNy9tUnl6QmFRZ0gyZTJnQTBWZnpaZ1ZGQTI4?=
 =?utf-8?B?bjRaMDc4dnpiOXRYWTNvcytlM1lsVDFFSEVvbmFIT2ZxUjJJSzRFODJkaS9D?=
 =?utf-8?Q?YSgxGKXHX6KEHwaHFkTWPAExv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f69d82-1b7a-4d52-3b6e-08db2f750502
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 10:13:04.4143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j/RDQ7Zn5FxyJOhDsbAu7abkSmRS9ZDzUFW/Izveqeb/BLnbw1GfOHSkkzfydqeAXv7N3cpdGaz04Jq5cTK6yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 25/29] drm/i915/adlp/tc: Align the
 connect/disconnect PHY sequence with bspec
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMSBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjUvMjldIGRybS9pOTE1L2FkbHAvdGM6IEFsaWduIHRoZQ0KPiBjb25uZWN0L2Rpc2Nvbm5lY3Qg
UEhZIHNlcXVlbmNlIHdpdGggYnNwZWMNCj4gDQo+IEJzcGVjIGhhcyB1cGRhdGVkIHRoZSBUQyBj
b25uZWN0L2Rpc2Nvbm5lY3Qgc2VxdWVuY2VzLCBhZGQgdGhlIHJlcXVpcmVkDQo+IHBsYXRmb3Jt
IGhvb2tzIGZvciB0aGVzZS4NCj4gDQo+IFRoZSBkaWZmZXJlbmNlIHdydC4gdGhlIG9sZCBzZXF1
ZW5jZSBpcyB0aGUgb3JkZXIgb2YgdGFraW5nIHRoZSBQSFkgb3duZXJzaGlwIC0NCj4gd2hpbGUg
aG9sZGluZyBhIHBvcnQgcG93ZXIgcmVmZXJlbmNlIHRoaXMgcmVxdWlyZXMgLSBhbmQgYmxvY2tp
bmcgdGhlIFRDLWNvbGQNCj4gcG93ZXIgc3RhdGUuDQo+IA0KPiBCc3BlYzogNDkyOTQNCj4gDQoN
ClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAxMTEgKysrKysrKysrKysr
KysrKysrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgMTcgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
DQo+IGluZGV4IGYyMDJiYTMyNGZkMGEuLjM2NDU0ZWM1ZThlMDkgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTU5LDcgKzU5LDYgQEAgc3RhdGlj
IGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gdGNfcGh5X2NvbGRfb2ZmX2RvbWFp
bihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqKTsgIHN0YXRpYyB1MzINCj4gdGNfcGh5X2hwZF9saXZl
X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpOyAgc3RhdGljIGJvb2wNCj4gdGNfcGh5
X2lzX3JlYWR5KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0Yyk7IC1zdGF0aWMgYm9vbA0KPiB0Y19w
aHlfdGFrZV9vd25lcnNoaXAoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLCBib29sIHRha2UpOyAg
c3RhdGljIGVudW0NCj4gdGNfcG9ydF9tb2RlIHRjX3BoeV9nZXRfY3VycmVudF9tb2RlKHN0cnVj
dCBpbnRlbF90Y19wb3J0ICp0Yyk7DQo+IA0KPiAgc3RhdGljIGNvbnN0IGNoYXIgKnRjX3BvcnRf
bW9kZV9uYW1lKGVudW0gdGNfcG9ydF9tb2RlIG1vZGUpIEBAIC01ODEsNw0KPiArNTgwLDcgQEAg
c3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywN
Cj4gIAkJcmV0dXJuIHRydWU7DQo+IA0KPiAgCWlmICgoIXRjX3BoeV9pc19yZWFkeSh0YykgfHwN
Cj4gLQkgICAgICF0Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIHRydWUpKSAmJg0KPiArCSAgICAg
IWljbF90Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIHRydWUpKSAmJg0KPiAgCSAgICAhZHJtX1dB
Uk5fT04oJmk5MTUtPmRybSwgdGMtPm1vZGUgPT0gVENfUE9SVF9MRUdBQ1kpKSB7DQo+ICAJCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sICJQb3J0ICVzOiBjYW4ndCB0YWtlIFBIWSBvd25lcnNoaXAN
Cj4gKHJlYWR5ICVzKVxuIiwNCj4gIAkJCSAgICB0Yy0+cG9ydF9uYW1lLA0KPiBAQCAtNTk2LDcg
KzU5NSw3IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNf
cG9ydCAqdGMsDQo+ICAJcmV0dXJuIHRydWU7DQo+IA0KPiAgb3V0X3JlbGVhc2VfcGh5Og0KPiAt
CXRjX3BoeV90YWtlX293bmVyc2hpcCh0YywgZmFsc2UpOw0KPiArCWljbF90Y19waHlfdGFrZV9v
d25lcnNoaXAodGMsIGZhbHNlKTsNCj4gIG91dF91bmJsb2NrX3RjX2NvbGQ6DQo+ICAJdGNfY29s
ZF91bmJsb2NrKHRjLCBmZXRjaF9hbmRfemVybygmdGMtPmxvY2tfd2FrZXJlZikpOw0KPiANCj4g
QEAgLTYxMiw3ICs2MTEsNyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Rpc2Nvbm5lY3Qoc3Ry
dWN0IGludGVsX3RjX3BvcnQNCj4gKnRjKQ0KPiAgCXN3aXRjaCAodGMtPm1vZGUpIHsNCj4gIAlj
YXNlIFRDX1BPUlRfTEVHQUNZOg0KPiAgCWNhc2UgVENfUE9SVF9EUF9BTFQ6DQo+IC0JCXRjX3Bo
eV90YWtlX293bmVyc2hpcCh0YywgZmFsc2UpOw0KPiArCQlpY2xfdGNfcGh5X3Rha2Vfb3duZXJz
aGlwKHRjLCBmYWxzZSk7DQo+ICAJCWZhbGx0aHJvdWdoOw0KPiAgCWNhc2UgVENfUE9SVF9UQlRf
QUxUOg0KPiAgCQl0Y19jb2xkX3VuYmxvY2sodGMsIGZldGNoX2FuZF96ZXJvKCZ0Yy0+bG9ja193
YWtlcmVmKSk7DQo+IEBAIC03NjksNiArNzY4LDk0IEBAIHN0YXRpYyBib29sIGFkbHBfdGNfcGh5
X2lzX293bmVkKHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ICp0YykNCj4gIAlyZXR1cm4gdmFsICYg
RERJX0JVRl9DVExfVENfUEhZX09XTkVSU0hJUDsgIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBhZGxw
X3RjX3BoeV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gKwllbnVtIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIHBvcnRfcG93ZXJfZG9tYWluID0NCj4gKwkJdGNfcG9y
dF9wb3dlcl9kb21haW4odGMpOw0KPiArCWludGVsX3dha2VyZWZfdCBwb3J0X3dha2VyZWY7DQo+
ICsNCj4gKwlwb3J0X3dha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChpOTE1LCBwb3J0
X3Bvd2VyX2RvbWFpbik7DQo+ICsNCj4gKwl0Yy0+bW9kZSA9IHRjX3BoeV9nZXRfY3VycmVudF9t
b2RlKHRjKTsNCj4gKwlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNURUQpDQo+ICsJ
CXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjKTsNCj4gKw0KPiArCWludGVsX2Rp
c3BsYXlfcG93ZXJfcHV0KGk5MTUsIHBvcnRfcG93ZXJfZG9tYWluLCBwb3J0X3dha2VyZWYpOyB9
DQo+ICsNCj4gK3N0YXRpYyBib29sIGFkbHBfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX3Rj
X3BvcnQgKnRjLCBpbnQNCj4gK3JlcXVpcmVkX2xhbmVzKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gKwllbnVtIGludGVsX2Rpc3BsYXlf
cG93ZXJfZG9tYWluIHBvcnRfcG93ZXJfZG9tYWluID0NCj4gKwkJdGNfcG9ydF9wb3dlcl9kb21h
aW4odGMpOw0KPiArCWludGVsX3dha2VyZWZfdCBwb3J0X3dha2VyZWY7DQo+ICsNCj4gKwlpZiAo
dGMtPm1vZGUgPT0gVENfUE9SVF9UQlRfQUxUKSB7DQo+ICsJCXRjLT5sb2NrX3dha2VyZWYgPSB0
Y19jb2xkX2Jsb2NrKHRjKTsNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsJfQ0KPiArDQo+ICsJcG9y
dF93YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoaTkxNSwgcG9ydF9wb3dlcl9kb21h
aW4pOw0KPiArDQo+ICsJaWYgKCFhZGxwX3RjX3BoeV90YWtlX293bmVyc2hpcCh0YywgdHJ1ZSkg
JiYNCj4gKwkgICAgIWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHRjLT5tb2RlID09IFRDX1BPUlRf
TEVHQUNZKSkgew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczogY2FuJ3Qg
dGFrZSBQSFkNCj4gb3duZXJzaGlwXG4iLA0KPiArCQkJICAgIHRjLT5wb3J0X25hbWUpOw0KPiAr
CQlnb3RvIG91dF9wdXRfcG9ydF9wb3dlcjsNCj4gKwl9DQo+ICsNCj4gKwlpZiAoIXRjX3BoeV9p
c19yZWFkeSh0YykgJiYNCj4gKwkgICAgIWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHRjLT5tb2Rl
ID09IFRDX1BPUlRfTEVHQUNZKSkgew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9y
dCAlczogUEhZIG5vdCByZWFkeVxuIiwNCj4gKwkJCSAgICB0Yy0+cG9ydF9uYW1lKTsNCj4gKwkJ
Z290byBvdXRfcmVsZWFzZV9waHk7DQo+ICsJfQ0KPiArDQo+ICsJdGMtPmxvY2tfd2FrZXJlZiA9
IHRjX2NvbGRfYmxvY2sodGMpOw0KPiArDQo+ICsJaWYgKCF0Y19waHlfdmVyaWZ5X2xlZ2FjeV9v
cl9kcF9hbHRfbW9kZSh0YywgcmVxdWlyZWRfbGFuZXMpKQ0KPiArCQlnb3RvIG91dF91bmJsb2Nr
X3RjX2NvbGQ7DQo+ICsNCj4gKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBwb3J0X3Bv
d2VyX2RvbWFpbiwgcG9ydF93YWtlcmVmKTsNCj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArDQo+
ICtvdXRfdW5ibG9ja190Y19jb2xkOg0KPiArCXRjX2NvbGRfdW5ibG9jayh0YywgZmV0Y2hfYW5k
X3plcm8oJnRjLT5sb2NrX3dha2VyZWYpKTsNCj4gK291dF9yZWxlYXNlX3BoeToNCj4gKwlhZGxw
X3RjX3BoeV90YWtlX293bmVyc2hpcCh0YywgZmFsc2UpOw0KPiArb3V0X3B1dF9wb3J0X3Bvd2Vy
Og0KPiArCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGk5MTUsIHBvcnRfcG93ZXJfZG9tYWluLCBw
b3J0X3dha2VyZWYpOw0KPiArDQo+ICsJcmV0dXJuIGZhbHNlOw0KPiArfQ0KPiArDQo+ICtzdGF0
aWMgdm9pZCBhZGxwX3RjX3BoeV9kaXNjb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0Yykg
ew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7DQo+
ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBwb3J0X3Bvd2VyX2RvbWFpbiA9DQo+
ICsJCXRjX3BvcnRfcG93ZXJfZG9tYWluKHRjKTsNCj4gKwlpbnRlbF93YWtlcmVmX3QgcG9ydF93
YWtlcmVmOw0KPiArDQo+ICsJcG9ydF93YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQo
aTkxNSwgcG9ydF9wb3dlcl9kb21haW4pOw0KPiArDQo+ICsJdGNfY29sZF91bmJsb2NrKHRjLCBm
ZXRjaF9hbmRfemVybygmdGMtPmxvY2tfd2FrZXJlZikpOw0KPiArDQo+ICsJc3dpdGNoICh0Yy0+
bW9kZSkgew0KPiArCWNhc2UgVENfUE9SVF9MRUdBQ1k6DQo+ICsJY2FzZSBUQ19QT1JUX0RQX0FM
VDoNCj4gKwkJYWRscF90Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIGZhbHNlKTsNCj4gKwkJZmFs
bHRocm91Z2g7DQo+ICsJY2FzZSBUQ19QT1JUX1RCVF9BTFQ6DQo+ICsJCWJyZWFrOw0KPiArCWRl
ZmF1bHQ6DQo+ICsJCU1JU1NJTkdfQ0FTRSh0Yy0+bW9kZSk7DQo+ICsJfQ0KPiArDQo+ICsJaW50
ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgcG9ydF9wb3dlcl9kb21haW4sIHBvcnRfd2FrZXJl
Zik7IH0NCj4gKw0KPiAgc3RhdGljIHZvaWQgYWRscF90Y19waHlfaW5pdChzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMpICB7DQo+ICAJdGNfcGh5X2xvYWRfZmlhX3BhcmFtcyh0YywgdHJ1ZSk7DQo+
IEBAIC03NzksOSArODY2LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF90Y19waHlfb3Bz
IGFkbHBfdGNfcGh5X29wcyA9IHsNCj4gIAkuaHBkX2xpdmVfc3RhdHVzID0gYWRscF90Y19waHlf
aHBkX2xpdmVfc3RhdHVzLA0KPiAgCS5pc19yZWFkeSA9IGFkbHBfdGNfcGh5X2lzX3JlYWR5LA0K
PiAgCS5pc19vd25lZCA9IGFkbHBfdGNfcGh5X2lzX293bmVkLA0KPiAtCS5nZXRfaHdfc3RhdGUg
PSBpY2xfdGNfcGh5X2dldF9od19zdGF0ZSwNCj4gLQkuY29ubmVjdCA9IGljbF90Y19waHlfY29u
bmVjdCwNCj4gLQkuZGlzY29ubmVjdCA9IGljbF90Y19waHlfZGlzY29ubmVjdCwNCj4gKwkuZ2V0
X2h3X3N0YXRlID0gYWRscF90Y19waHlfZ2V0X2h3X3N0YXRlLA0KPiArCS5jb25uZWN0ID0gYWRs
cF90Y19waHlfY29ubmVjdCwNCj4gKwkuZGlzY29ubmVjdCA9IGFkbHBfdGNfcGh5X2Rpc2Nvbm5l
Y3QsDQo+ICAJLmluaXQgPSBhZGxwX3RjX3BoeV9pbml0LA0KPiAgfTsNCj4gDQo+IEBAIC04MjMs
MTYgKzkxMCw2IEBAIHN0YXRpYyB2b2lkIHRjX3BoeV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVs
X3RjX3BvcnQNCj4gKnRjKQ0KPiAgCXRjLT5waHlfb3BzLT5nZXRfaHdfc3RhdGUodGMpOw0KPiAg
fQ0KPiANCj4gLXN0YXRpYyBib29sIHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMsIGJvb2wgdGFrZSkgLXsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiAtDQo+IC0JaWYgKElTX0FMREVSTEFLRV9QKGk5MTUp
KQ0KPiAtCQlyZXR1cm4gYWRscF90Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIHRha2UpOw0KPiAt
DQo+IC0JcmV0dXJuIGljbF90Y19waHlfdGFrZV9vd25lcnNoaXAodGMsIHRha2UpOw0KPiAtfQ0K
PiAtDQo+ICBzdGF0aWMgYm9vbCB0Y19waHlfaXNfcmVhZHlfYW5kX293bmVkKHN0cnVjdCBpbnRl
bF90Y19wb3J0ICp0YywNCj4gIAkJCQkgICAgICBib29sIHBoeV9pc19yZWFkeSwgYm9vbCBwaHlf
aXNfb3duZWQpICB7DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
