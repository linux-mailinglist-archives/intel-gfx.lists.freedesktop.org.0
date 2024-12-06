Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D20E39E791D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 20:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFE010E619;
	Fri,  6 Dec 2024 19:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BFD10E619
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 19:39:30 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-184-wSN4kbhlPXCqAnAYZUig_Q-1; Fri, 06 Dec 2024 19:39:27 +0000
X-MC-Unique: wSN4kbhlPXCqAnAYZUig_Q-1
X-Mimecast-MFC-AGG-ID: wSN4kbhlPXCqAnAYZUig_Q
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Fri, 6 Dec
 2024 19:38:40 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Fri, 6 Dec 2024 19:38:40 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>
CC: Vincent Mailhol <vincent.mailhol@gmail.com>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Nathan Chancellor <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, James Clark <james.clark@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, Rikard Falkeborn
 <rikard.falkeborn@gmail.com>, "linux-sparse@vger.kernel.org"
 <linux-sparse@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "llvm@lists.linux.dev"
 <llvm@lists.linux.dev>, "linux-hardening@vger.kernel.org"
 <linux-hardening@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "coresight@lists.linaro.org"
 <coresight@lists.linaro.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "uecker@tugraz.at" <uecker@tugraz.at>
Subject: RE: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
Thread-Topic: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
Thread-Index: AQHbROFPJXcuwP9wN0+yRzIQ2cx/pbLWa+gggAFf14CAACMqUIABpzoGgAAClHCAAAPoAIAAAwjg
Date: Fri, 6 Dec 2024 19:38:40 +0000
Message-ID: <0f5c07b827c3468c8fa3928a93a98bfa@AcuMS.aculab.com>
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
 <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
 <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
 <d23fe8a5dbe84bfeb18097fdef7aa4c4@AcuMS.aculab.com>
 <CAHk-=win8afdcergvJ6f2=rRrff8giGUW62qmYs9Ae6aw=wcnA@mail.gmail.com>
In-Reply-To: <CAHk-=win8afdcergvJ6f2=rRrff8giGUW62qmYs9Ae6aw=wcnA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dQK6wOGjRIX-QnbUS1EtbtREWNlAP7taf-1nntmOaJw_1733513966
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
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

RnJvbTogTGludXMgVG9ydmFsZHMNCj4gU2VudDogMDYgRGVjZW1iZXIgMjAyNCAxOToxNQ0KPiBP
biBGcmksIDYgRGVjIDIwMjQgYXQgMTE6MDcsIERhdmlkIExhaWdodCA8RGF2aWQuTGFpZ2h0QGFj
dWxhYi5jb20+IHdyb3RlOg0KPiA+DQo+ID4gSSdtIG1pc3NpbmcgdGhlIGNvbXBpbGVyIHZlcnNp
b24gYW5kIG9wdGlvbnMgdG8gZ2VuZXJhdGUgdGhlIGVycm9yLg0KPiANCj4gSnVzdCAtV2FsbCB3
aXRoIG1vc3QgcmVjZW50IGdjYyB2ZXJzaW9ucyBzZWVtcyB0byBkbyBpdC4gQXQgbGVhc3QgSQ0K
PiBjYW4gcmVwcm8gaXQgd2l0aCBnY2MtMTQuMi4xIGFuZCBzb21ldGhpbmcgc2lsbHkgbGlrZSB0
aGlzOg0KDQpJIG1heSBoYXZlIGp1c3QgbWlzc2VkIGdvbGJvbHQgcmV0dXJuaW5nIGEgd2Fybmlu
Zy4NCi4uLg0KPiA+IERvZXMgYSAnKyAwJyBoZWxwPyAgIih2YXIgPDwgMikgKyAwID8gMCA6IDAi
DQo+IA0KPiBZZWFoLCB0aGF0IGFjdHVhbGx5IHdvcmtzLg0KPiANCj4gQW5kICIrMCIgaXMgbmlj
ZSBpbiB0aGF0IGl0IHNob3VsZCB3b3JrIGluIGFueSBjb250ZXh0Lg0KDQpVbmxlc3MgaXQgZmFs
bHMgZm91bCBvZiB0aGUgY2xhbmcgdGVzdCBmb3IgYXJ0aG1ldGljIG9uIE5VTEwgcG9pbnRlcnMu
DQooSSdtIHN1cmUgdGhhdCBpcyBvbmx5IGEgcHJvYmxlbSBpZiBOVUxMIGlzbid0IHRoZSBhbGwt
emVybyBiaXQgcGF0dGVybi4NCkFuZCBwcmV0dHkgbXVjaCBubyBDIGNvZGUgaGFzIGV2ZXIgYmVl
biAndGhhdCBwb3J0YWJsZScuKQ0KDQpBZGRpbmcgMCBjYW4gYWxzbyBoZWxwIHdoZW4gY29tcGxp
ZXJzIGFyZSBiZWluZyBwaWNreSBhYm91dCBlbnVtcy4NClNpbmNlIG5vbmUgaGF2ZSAoeWV0KSBt
YWRlIHRoZW0gbW9yZSBsaWtlIGEgMzJiaXQgcG9pbnRlciB0byBhIG9uZQ0KYnl0ZSBzdHJ1Y3R1
cmUgKG9yIHRoZSBQYXNjYWwgZW51bSkuDQpJbiBjYXNlIHRoZSByZWxldmFudCBwZW9wbGUgYXJl
IHJlYWRpbmcgdGhpcywgbWF5YmUgb25seSBkbyBhbnkNCm5vbi1pbnRlZ2VyIHdhcm5pbmdzIGZv
ciBuYW1lZCBlbnVtcz8NCg0KPiA+ICNkZWZpbmUgY29uc3RfTlVMTCh4KSBfR2VuZXJpYygwID8g
KHgpIDogKGNoYXIgKikwLCBjaGFyICo6IDEsIHZvaWQgKjogMCkNCj4gPiAjZGVmaW5lIGNvbnN0
X3RydWUoeCkgY29uc3RfTlVMTCgoeCkgPyBOVUxMIDogKHZvaWQgKikxTCkpDQo+ID4gI2RlZmlu
ZSBjb25zdF9leHByKHgpIGNvbnN0X05VTEwoKHgpID8gTlVMTCA6IE5VTEwpKQ0KPiA+IEkgc2Vu
ZCB0aGlzIG1vcm5pbmcuDQo+ID4gTmVlZHMgJ3MvY2hhci9zdHJ1Y3Qga2pramtqa2p1aS8nIGFw
cGxpZWQuDQo+IA0KPiBPaCBDaHJpc3QuIFlvdSByZWFsbHkgYXJlIHRha2luZyB0aGlzIHdob2xl
IHVnbHkgdG8gYW5vdGhlciBsZXZlbC4NCg0KSSBzb3J0IG9mIGxpa2VkIHRoYXQgdmVyc2lvbiBp
biBhIHBlcnZlcnNlIHNvcnQgb2Ygd2F5Lg0KSXQgZG9lcyBnaXZlIHlvdSBhIHNpbXBsZSB0ZXN0
IGZvciBOVUxMICh1bmxlc3MgeW91J3ZlIHVzZWQgJ3N0cnVjdCBramtqa2pranVpJykuDQoNCglE
YXZpZA0KDQotDQpSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91
bnQgRmFybSwgTWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsNClJlZ2lzdHJhdGlvbiBObzogMTM5
NzM4NiAoV2FsZXMpDQo=

