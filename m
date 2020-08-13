Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDC8243DB3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 18:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE9B6E222;
	Thu, 13 Aug 2020 16:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5179A6E222
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 16:50:07 +0000 (UTC)
IronPort-SDR: Lp+MoijZA61HRzftfYEvWE5JYznVlxcrKUZsb7g+jCburePXFtk6GmjK5VTPV8rO+7TyYbA10w
 ws4WzKru07pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="239103322"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="239103322"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 09:50:06 -0700
IronPort-SDR: Li/6LjJYh/pciDPr3jxDCcNgOB00Sq8mqWzl60ikuhTemRQuKi58NZekz1898PWsu2nNJMDtRF
 Ec092ZRWF0zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="495455641"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by fmsmga006.fm.intel.com with ESMTP; 13 Aug 2020 09:50:05 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 09:50:06 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 09:50:06 -0700
Received: from orsmsx163.amr.corp.intel.com ([169.254.9.31]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.181]) with mapi id 14.03.0439.000;
 Thu, 13 Aug 2020 09:50:05 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, "Runyan, Arthur J"
 <arthur.j.runyan@intel.com>
Thread-Topic: [Regression] "drm/i915: Implement display w/a #1143" breaks
 HDMI on ASUS GL552VW
Thread-Index: AQHWcSdKqZp36odf806kQgU4Brc2iqk2tqCA
Date: Thu, 13 Aug 2020 16:50:06 +0000
Message-ID: <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
In-Reply-To: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.212.219.132]
Content-ID: <A39EB450F504614FBDC145CD96E7BD32@intel.com>
MIME-Version: 1.0
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

QXJ0LCBhbnkgY29tbWVudCBoZXJlPw0KDQpJIGp1c3QgY2hlY2tlZCBhbmQgdGhlICBXL2EgMTE0
MyBpcyBpbXBsZW1lbnRlZCBhcyBkZXNjcmliZWQsIGJ1dCBpdCBpcw0KZmFpbGluZyBIRE1JIG9u
IHRoaXMgaHlicmlkIHN5c3RlbS4NCg0KPiBPbiBBdWcgMTIsIDIwMjAsIGF0IDk6MDcgUE0sIEth
aS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4gd3JvdGU6DQo+IA0KPiBI
aSwNCj4gDQo+IFRoZXJlJ3MgYSByZWdyZXNzaW9uIHJlcG9ydGVkIHRoYXQgSERNSSBvdXRwdXQg
c3RvcHMgd29ya2luZyBhZnRlciBvcyB1cGdyYWRlOg0KPiBodHRwczovL2J1Z3MubGF1bmNocGFk
Lm5ldC9idWdzLzE4NzE3MjENCj4gDQo+IEhlcmUncyB0aGUgYmlzZWN0IHJlc3VsdDoNCj4gMDUx
OWMxMDJmNTI4NTQ3NmQ3ODY4YTM4N2JkYjZjNTgzODVlNDA3NCBpcyB0aGUgZmlyc3QgYmFkIGNv
bW1pdA0KPiBjb21taXQgMDUxOWMxMDJmNTI4NTQ3NmQ3ODY4YTM4N2JkYjZjNTgzODVlNDA3NA0K
PiBBdXRob3I6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IERhdGU6ICAgTW9uIEphbiAyMiAxOTo0MTozMSAyMDE4ICswMjAwDQo+IA0KPiAgICBkcm0v
aTkxNTogSW1wbGVtZW50IGRpc3BsYXkgdy9hICMxMTQzDQo+IA0KPiAgICBBcHBhcmVudGx5IFNL
TC9LQkwvQ0ZMIG5lZWQgc29tZSBtYW51YWwgaGVscCB0byBnZXQgdGhlDQo+ICAgIHByb2dyYW1t
ZWQgSERNSSB2c3dpbmcgdG8gc3RpY2suIEltcGxlbWVudCB0aGUgcmVsZXZhbnQNCj4gICAgd29y
a2Fyb3VuZCAoZGlzcGxheSB3L2EgIzExNDMpLg0KPiANCj4gICAgTm90ZSB0aGF0IHRoZSByZWxl
dmFudCBjaGlja2VuIGJpdHMgbGl2ZSBpbiBhIHRyYW5zY29kZXIgcmVnaXN0ZXINCj4gICAgZXZl
biB0aG91Z2ggdGhlIGJpdHMgYWZmZWN0IGEgc3BlY2lmaWMgRERJIHBvcnQgcmF0aGVyIHRoYW4g
YQ0KPiAgICBzcGVjaWZpYyB0cmFuc2NvZGVyLiBIZW5jZSB3ZSBtdXN0IHBpY2sgdGhlIGNvcnJl
Y3QgdHJhbnNjb2Rlcg0KPiAgICByZWdpc3RlciBpbnN0YW5jZSBiYXNlZCBvbiB0aGUgcG9ydCBy
YXRoZXIgdGhhbiBiYXNlZCBvbiB0aGUNCj4gICAgY3B1X3RyYW5zY29kZXIuDQo+IA0KPiAgICBB
bHNvIG5vdGUgdGhhdCBmb3IgY29tcGxldGVuZXNzIEkgaW5jbHVkZWQgc3VwcG9ydCBmb3IgRERJ
IEEvRQ0KPiAgICBpbiB0aGUgY29kZSBldmVuIHRob3VnaCB3ZSBuZXZlciBoYXZlIEhETUkgb24g
dGhvc2UgcG9ydHMuDQo+IA0KPiAgICB2MjogQ0ZMIG5lZWRzIHRoZSB3L2EgYXMgd2VsbCAoUm9k
cmlnbyBhbmQgQXJ0KQ0KPiANCj4gICAgQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT4NCj4gICAgQ2M6IEFydCBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+
DQo+ICAgIFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+ICAgIExpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9wYXRjaC9tc2dpZC8yMDE4MDEyMjE3NDEzMS4yODA0Ni0xLXZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tDQo+ICAgIFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+DQo+IA0KPiANCj4gZG1lc2cgZnJvbSBkcm0tdGlwIHdpdGggZHJtLmRlYnVnPTB4
ZSBjYW4gYmUgZm91bmQgaGVyZToNCj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1
Lytzb3VyY2UvbGludXgvK2J1Zy8xODcxNzIxL2NvbW1lbnRzLzY0DQo+IA0KPiBLYWktSGVuZw0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
