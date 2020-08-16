Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE78245884
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Aug 2020 18:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABB56E153;
	Sun, 16 Aug 2020 16:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB79E6E153
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Aug 2020 16:22:41 +0000 (UTC)
IronPort-SDR: Bk9U3b6SjLTnLyLcTLr0l0UoyLzqMe1kpqNcZvlWki1seWD1SRu36adPNu846xqd7R+oZQXUE5
 zzSb13yjSp0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="154571066"
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; d="scan'208";a="154571066"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2020 09:22:41 -0700
IronPort-SDR: 0sQ6MDDsPtibI1e3iDWNUpeMxZpjgto5+zvAiRonQPR6PbjGiSBYqJbnpGNrnE5HRQ4Z6ij9NO
 II67lO1EbNJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; d="scan'208";a="370354490"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga001.jf.intel.com with ESMTP; 16 Aug 2020 09:22:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 16 Aug 2020 09:22:40 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 16 Aug 2020 09:22:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 16 Aug 2020 09:22:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 16 Aug 2020 09:22:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iHWNOKpiiGxJBW8er8VMW6oWjLZGZ05EhqfR6SNhEPWDsSyAKJV6hnPLtWTjsrnXeDAsqHDdGNNJxUWt++4OcVJqyGlXGcSq1+U1QFKNwgTcGTANCWUDu6KMrNzGm1WiUXtEbeAW4kjaCuleAV4bXzsty+dQJMgT2Wdf7FMhiRYyASZgXkrKLfKITjKi2DMAwy3TmszvSh9QadldyRARyop4m0Xo83erIlslxEEKvd2bBV8bQfiPAXOMZOHl7itHMVseuMywLkEhUkhQe3pQ4EvsxI6+NWWNlTXXh/g4W0oc9IaYHYDtAyqTlpXM0v8wxUFJC+NOyY3Z/3hNUC7+/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcLL7LuMu9pCIO3xpCkkw0tOtMDFZfCNkoADAZGjtqE=;
 b=iJifsrBslHq9e4i/+578IHS1W2Ar+FtmiQSNEMuYQcdZL87xdrogvqSUySzpZbKDDf9+pcKXLZfVtxHpXq7EWANh3SvSAnaHie3MogwnvECFQenpwaWJU7LRgFSLbed1XQiYudFy4+kGZCMWBbDm5vaZ/hZ4mn86/QCd3UlFzKpd5Ejm6IEBQUxppUazRx+37YR1ubl8YAy1Jp2ygV+tIgf40Eqrtm6+DrFU/oBd98XJSRd+1uHVGMMDuxh6+fjmunShty36tXY2+vgqF09n20adu66FwESGDcjWR8oErBv1pVh9tYW7BoAH0pqWd1WMPOPi0mr0l99mgoTHu6XvoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcLL7LuMu9pCIO3xpCkkw0tOtMDFZfCNkoADAZGjtqE=;
 b=KiABz9dFdJi/Gbkxp/XbjLb97CmEd9FN+DvdKpC/5I41z+JmlMaTk2KWxdwH4BjYf50lLT/JGPG3PT23qKGASMkowii/t6suRyhYuxbgPyCfFqIo9hV295ZfTec37vlhHLBSrdAkWIQKt1BlLwaKGeZ01XS2CH9hnQJilCbxt6A=
Received: from BYAPR11MB3190.namprd11.prod.outlook.com (2603:10b6:a03:7b::17)
 by BYAPR11MB2533.namprd11.prod.outlook.com (2603:10b6:a02:c8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.20; Sun, 16 Aug
 2020 16:22:37 +0000
Received: from BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf]) by BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf%3]) with mapi id 15.20.3283.027; Sun, 16 Aug 2020
 16:22:37 +0000
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Thread-Topic: [Regression] "drm/i915: Implement display w/a #1143" breaks HDMI
 on ASUS GL552VW
Thread-Index: AQHWcSdUQCvrdeyJJk2X6NbGbHjfx6k2QUkAgAARAoCAAL69gIAD3okQ
Date: Sun, 16 Aug 2020 16:22:37 +0000
Message-ID: <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
 <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
In-Reply-To: <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.2.83.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1bf32da-af94-47c4-3d8d-08d842009727
x-ms-traffictypediagnostic: BYAPR11MB2533:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB253315D940F0EABEDC792228B25E0@BYAPR11MB2533.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lsdk/ybMJglwxolfo3zNSqjGubcjVFVvEEGEFFdU8CaUctMsyePV56Ap8co+a7RB1wKEMNWWlhjEnX6s6hliW1vFVYI+T+Q3++B2WqHqyygwhWhklQOAbTYm1hqzVnRJ5T7Vn2iWxHxR/livggrcNhGbdhIfMZIZ3MRPY80Yhx+4ldu8kSc+BSE6KT0lP2uYAgRvrLZwh6NPcpUUpT89A2ewv9S8MNclxXmOFIDNSLbpoxzDBs+caKBKNtY8d9nEc6yjHd9/EAIJubHtsjsECRhsn0EHXHXFXm2cvJLIKnUfPmZhk9ToMvhNSbNNAxPpzJ07zshWYdJBhSAukj/DzU4WmLixzRMOe+got4RBLXP8qqq0/mPIVssYvimywPoqNZWnvcXMx+KOt/6t6DGKew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3190.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(366004)(136003)(39860400002)(6506007)(186003)(53546011)(7696005)(66574015)(33656002)(6916009)(83380400001)(55016002)(2906002)(52536014)(9686003)(316002)(5660300002)(478600001)(64756008)(66446008)(66556008)(966005)(76116006)(66476007)(8676002)(8936002)(4326008)(86362001)(26005)(54906003)(66946007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jeRxHumPjOG7zjqgsS1I/H6JaibC8jjGEgPCGbbNU+3dvlCEj0K7AhHSlGlCT5UTnyrbGE9dg+4KXV+Hku9JkHO+GMfYC9Km6tqJnyyOlrwQ8qj41+Kx2d14AWyfp3sVrLTSBHvHdx2up1bXLL9Pvjqj7nii5naFuHdrXDZ1eplqJcjEgo2mTf0/bsp2JwoycVuSCHuefiem4TbGKHpneq7E08iV2PjPQQcaxWxlLOQ4ajl8P8njYWk+Q/jAK+WAS8McYcC983Xaqcx20VZLQ7zsQwoSA9AEnT+mhbvPjTUkI9+7tz31nqbYFY0Wr/r71NpctUnRavUegWO837WcnhftSWYox+ET5tYaZG2vaJN1EGgyvm7ecqB0wZsu/WqwoxZD7Yo6FdDMdSE//eRdUHBRukisiBKwZn/tFuMhXwkgF2w6WAOLIQlJqeKZHlETeFT6cUfze1pjkeFDe7c2aoBmQN+lrZSDiaHAH4O+SMYIvf1s85pH6jl26rCuAb6PL0k5leeUwqsEGTLByGEOawckgIvCeDsnimFrX+/6Dp6ZadBLbQ1aDVeii1kqonGFRqKhAZf0jL8vVm1PPrmtk8GGhltT5CUL5qU1y1c7LzurD+PHBGwjAQISnArFnqAYYrABPRpY4dUr56nI4vmOFA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3190.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1bf32da-af94-47c4-3d8d-08d842009727
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 16:22:37.5250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qrwFyCUq4ATi7nUpZdisltKDfWoNul4lmeDF339txXdWGgYAKj1jpVCt0j0RR9OpcayASeyNENF0vXIp/kMTnKeSRDPuWXUlRYqF6jmVPYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2533
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WW91J2xsIG5lZWQgdG8gcmVhZCBvdXQgdGhlIERESV9CVUZfVFJBTlNfKiBhbmQgRElTUElPX0NS
X1RYX0JNVV9DUjAgcmVnaXN0ZXJzIGF0IGJvb3QgYmVmb3JlIGk5MTUgcHJvZ3JhbXMgdGhlbSBh
bmQgY29tcGFyZSB3aXRoIHdoYXQgZHJpdmVyIHByb2dyYW1zLiAgDQpSb2RyaWdvIGNhbiBwcm9i
YWJseSBzaG93IHlvdSBob3cuIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
S2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiANClNlbnQ6IFRodXJz
ZGF5LCBBdWd1c3QgMTMsIDIwMjAgMTA6MTQgUE0NClRvOiBSdW55YW4sIEFydGh1ciBKIDxhcnRo
dXIuai5ydW55YW5AaW50ZWwuY29tPg0KQ2M6IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PjsgaW50ZWwtZ2Z4IDxpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KU3ViamVjdDog
UmU6IFtSZWdyZXNzaW9uXSAiZHJtL2k5MTU6IEltcGxlbWVudCBkaXNwbGF5IHcvYSAjMTE0MyIg
YnJlYWtzIEhETUkgb24gQVNVUyBHTDU1MlZXDQoNCkhpLA0KDQo+IE9uIEF1ZyAxNCwgMjAyMCwg
YXQgMDE6NTYsIFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+IHdy
b3RlOg0KPiANCj4gVGhlIHdvcmthcm91bmQgaXMgZnJlZWluZyB1cCBzdHVjayB2c3dpbmcgdmFs
dWVzIHRvIGxldCBuZXcgdnN3aW5nIHByb2dyYW1taW5nIGtpY2sgaW4uICBNYXliZSB0aGUgbmV3
IHZzd2luZyB2YWx1ZXMgYXJlIHdyb25nLg0KPiBUcnkgY2hlY2tpbmcgdGhlIHZzd2luZyB0aGF0
IGRyaXZlciBwcm9ncmFtcyBhZ2FpbnN0IHdoYXQgQklPUy9HT1AgcHJvZ3JhbXMuDQoNCkRvIHlv
dSBtZWFuIHRvIHByaW50IG91dCB2YWx1ZSBvZiBJOTE1X1JFQUQoKT8NCnZhbCA9IEk5MTVfUkVB
RChDSElDS0VOX1RSQU5TKHRyYW5zY29kZXIpKTsNCg0KS2FpLUhlbmcNCg0KPiANCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxMywgMjAyMCA5OjUwIEFNDQo+
IFRvOiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+OyBSdW55YW4s
IEFydGh1ciBKIA0KPiA8YXJ0aHVyLmoucnVueWFuQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC1nZnggDQo+IDxp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KPiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Np
b25dICJkcm0vaTkxNTogSW1wbGVtZW50IGRpc3BsYXkgdy9hICMxMTQzIiANCj4gYnJlYWtzIEhE
TUkgb24gQVNVUyBHTDU1MlZXDQo+IA0KPiBBcnQsIGFueSBjb21tZW50IGhlcmU/DQo+IA0KPiBJ
IGp1c3QgY2hlY2tlZCBhbmQgdGhlICBXL2EgMTE0MyBpcyBpbXBsZW1lbnRlZCBhcyBkZXNjcmli
ZWQsIGJ1dCBpdCBpcyBmYWlsaW5nIEhETUkgb24gdGhpcyBoeWJyaWQgc3lzdGVtLg0KPiANCj4+
IE9uIEF1ZyAxMiwgMjAyMCwgYXQgOTowNyBQTSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVu
Z0BjYW5vbmljYWwuY29tPiB3cm90ZToNCj4+IA0KPj4gSGksDQo+PiANCj4+IFRoZXJlJ3MgYSBy
ZWdyZXNzaW9uIHJlcG9ydGVkIHRoYXQgSERNSSBvdXRwdXQgc3RvcHMgd29ya2luZyBhZnRlciBv
cyB1cGdyYWRlOg0KPj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvYnVncy8xODcxNzIxDQo+
PiANCj4+IEhlcmUncyB0aGUgYmlzZWN0IHJlc3VsdDoNCj4+IDA1MTljMTAyZjUyODU0NzZkNzg2
OGEzODdiZGI2YzU4Mzg1ZTQwNzQgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQgDQo+PiBjb21taXQg
MDUxOWMxMDJmNTI4NTQ3NmQ3ODY4YTM4N2JkYjZjNTgzODVlNDA3NA0KPj4gQXV0aG9yOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPj4gRGF0ZTogICBN
b24gSmFuIDIyIDE5OjQxOjMxIDIwMTggKzAyMDANCj4+IA0KPj4gICBkcm0vaTkxNTogSW1wbGVt
ZW50IGRpc3BsYXkgdy9hICMxMTQzDQo+PiANCj4+ICAgQXBwYXJlbnRseSBTS0wvS0JML0NGTCBu
ZWVkIHNvbWUgbWFudWFsIGhlbHAgdG8gZ2V0IHRoZQ0KPj4gICBwcm9ncmFtbWVkIEhETUkgdnN3
aW5nIHRvIHN0aWNrLiBJbXBsZW1lbnQgdGhlIHJlbGV2YW50DQo+PiAgIHdvcmthcm91bmQgKGRp
c3BsYXkgdy9hICMxMTQzKS4NCj4+IA0KPj4gICBOb3RlIHRoYXQgdGhlIHJlbGV2YW50IGNoaWNr
ZW4gYml0cyBsaXZlIGluIGEgdHJhbnNjb2RlciByZWdpc3Rlcg0KPj4gICBldmVuIHRob3VnaCB0
aGUgYml0cyBhZmZlY3QgYSBzcGVjaWZpYyBEREkgcG9ydCByYXRoZXIgdGhhbiBhDQo+PiAgIHNw
ZWNpZmljIHRyYW5zY29kZXIuIEhlbmNlIHdlIG11c3QgcGljayB0aGUgY29ycmVjdCB0cmFuc2Nv
ZGVyDQo+PiAgIHJlZ2lzdGVyIGluc3RhbmNlIGJhc2VkIG9uIHRoZSBwb3J0IHJhdGhlciB0aGFu
IGJhc2VkIG9uIHRoZQ0KPj4gICBjcHVfdHJhbnNjb2Rlci4NCj4+IA0KPj4gICBBbHNvIG5vdGUg
dGhhdCBmb3IgY29tcGxldGVuZXNzIEkgaW5jbHVkZWQgc3VwcG9ydCBmb3IgRERJIEEvRQ0KPj4g
ICBpbiB0aGUgY29kZSBldmVuIHRob3VnaCB3ZSBuZXZlciBoYXZlIEhETUkgb24gdGhvc2UgcG9y
dHMuDQo+PiANCj4+ICAgdjI6IENGTCBuZWVkcyB0aGUgdy9hIGFzIHdlbGwgKFJvZHJpZ28gYW5k
IEFydCkNCj4+IA0KPj4gICBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
Pg0KPj4gICBDYzogQXJ0IFJ1bnlhbiA8YXJ0aHVyLmoucnVueWFuQGludGVsLmNvbT4NCj4+ICAg
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4+ICAgTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
L21zZ2lkLzIwMTgwMTIyMTc0MTMxLjI4MDQ2LTEtdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20NCj4+ICAgUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4NCj4+IA0KPj4gDQo+PiBkbWVzZyBmcm9tIGRybS10aXAgd2l0aCBkcm0uZGVidWc9MHhlIGNh
biBiZSBmb3VuZCBoZXJlOg0KPj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytz
b3VyY2UvbGludXgvK2J1Zy8xODcxNzIxL2NvbW1lbnRzDQo+PiAvDQo+PiA2NA0KPj4gDQo+PiBL
YWktSGVuZw0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
