Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FEC115EAA
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 21:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1116E23D;
	Sat,  7 Dec 2019 20:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 9452 seconds by postgrey-1.36 at gabe;
 Sat, 07 Dec 2019 20:41:17 UTC
Received: from 1.mo7.mail-out.ovh.net (1.mo7.mail-out.ovh.net [178.33.45.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719AB6E23D
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 20:41:17 +0000 (UTC)
Received: from player735.ha.ovh.net (unknown [10.109.146.122])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id CFAFE140CF2
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 20:24:49 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player735.ha.ovh.net (Postfix) with ESMTPSA id 1C366CF2576C;
 Sat,  7 Dec 2019 19:24:42 +0000 (UTC)
Date: Sat, 7 Dec 2019 21:24:41 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191207192441.GE1300@jack.zhora.eu>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
 <20191206105527.1130413-5-chris@chris-wilson.co.uk>
 <20191207000327.GB1300@jack.zhora.eu>
 <157567804007.2300.9959810670397535928@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157567804007.2300.9959810670397535928@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 18194542496450069001
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudekhedguddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Avoid calling
 i915_gem_object_unbind holding object lock
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFp
bi5jCj4gPiA+IGluZGV4IDgwOGViMzI3YTI5Yi4uNTNlMjhlNDE3Y2M5IDEwMDY0NAo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gPiA+IEBAIC0x
ODcsMjEgKzE4NywyMyBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gPiAgewo+ID4gPiAgICAgICBpbnQgcmV0
Owo+ID4gPiAgCj4gPiA+IC0gICAgIGFzc2VydF9vYmplY3RfaGVsZChvYmopOwo+ID4gPiAtCj4g
PiA+ICAgICAgIGlmIChvYmotPmNhY2hlX2xldmVsID09IGNhY2hlX2xldmVsKQo+ID4gCj4gPiB5
b3UncmUgY2hlY2tpbmcgaGVyZS4uLgo+ID4gCj4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7
Cj4gPiA+ICAKPiA+ID4gLSAgICAgcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3VuYmluZChvYmosIEk5
MTVfR0VNX09CSkVDVF9VTkJJTkRfQUNUSVZFKTsKPiA+ID4gKyAgICAgcmV0ID0gaTkxNV9nZW1f
b2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmopOwo+ID4gPiAgICAgICBpZiAocmV0KQo+ID4g
PiAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICAKPiA+ID4gLSAgICAgLyogVGhlIGNh
Y2hlLWxldmVsIHdpbGwgYmUgYXBwbGllZCB3aGVuIGVhY2ggdm1hIGlzIHJlYm91bmQuICovCj4g
PiA+ICsgICAgIC8qIEFsd2F5cyBpbnZhbGlkYXRlIHN0YWxlIGNhY2hlbGluZXMgKi8KPiA+ID4g
KyAgICAgaWYgKG9iai0+Y2FjaGVfbGV2ZWwgIT0gY2FjaGVfbGV2ZWwpIHsKPiA+IAo+ID4gLi4u
IGFuZCBoZXJlLi4uIHlvdSBtaWdodCB3YW50IHRvIGdldCByaWQgb2YgdGhpcyBvbmU/Cj4gCj4g
T25lIG91dHNpZGUsIG9uZSBpbnNpZGUgdGhlIGxvY2suCgpPSyEKCkFueXdheSwgSSBkb24ndCBz
ZWUgYW55IGlzc3VlcyB3aXRoIHRoZSBjb2RlLAoKUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAaW50ZWwuY29tPgoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
