Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C621AE744
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEFD89308;
	Tue, 10 Sep 2019 09:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A3089308;
 Tue, 10 Sep 2019 09:46:12 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 99648AE5E;
 Tue, 10 Sep 2019 09:46:10 +0000 (UTC)
Date: Tue, 10 Sep 2019 11:46:20 +0200
From: Jean Delvare <jdelvare@suse.de>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190910114620.78a774a1@endymion>
In-Reply-To: <20190902131546.4691-2-ville.syrjala@linux.intel.com>
References: <20190902131546.4691-1-ville.syrjala@linux.intel.com>
 <20190902131546.4691-2-ville.syrjala@linux.intel.com>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/edid: Have cea_db_offsets() zero
 start/end when the data block collection isn't found
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpPbiBNb24sICAyIFNlcCAyMDE5IDE2OjE1OjQ2ICswMzAwLCBWaWxsZSBTeXJq
YWxhIHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gCj4gTGV0J3MgbWFrZSBjZWFfZGJfb2Zmc2V0cygpIGEgYml0IG1vcmUgY29u
dmVuaWVudCB0byB1c2UgYnkKPiBzZXR0aW5nIHRoZSBzdGFydC9lbmQgb2Zmc2V0cyB0byB6ZXJv
IHdoZW5ldmVyIHRoZSBkYXRhIGJsb2NrCj4gY29sbGVjdGlvbiBpc24ndCBwcmVzZW50LiBUaGlz
IG1ha2VzIGl0IHNhZmUgZm9yIHRoZSBjYWxsZXIKPiB0byBibGluZGx5IGl0ZXJhdGUgdGhlIGRh
dGEgYmxvY2tzIGV2ZW4gaWYgdGhlcmUgYXJlIG5vbmUuCj4gCj4gQ2M6IEplYW4gRGVsdmFyZSA8
amRlbHZhcmVAc3VzZS5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Vk
aWQuYyB8IDggKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwo+IGluZGV4IDdiMzA3MmZjNTUwYi4uZTU5MDVk
Yzc2NGMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKPiBAQCAtMzY5MCw2ICszNjkwLDkgQEAgY2VhX3Jl
dmlzaW9uKGNvbnN0IHU4ICpjZWEpCj4gIHN0YXRpYyBpbnQKPiAgY2VhX2RiX29mZnNldHMoY29u
c3QgdTggKmNlYSwgaW50ICpzdGFydCwgaW50ICplbmQpCj4gIHsKPiArCSpzdGFydCA9IDA7Cj4g
KwkqZW5kID0gMDsKPiArCj4gIAlpZiAoY2VhX3JldmlzaW9uKGNlYSkgPCAzKQo+ICAJCXJldHVy
biAtRU5PVFNVUFA7Cj4gIAo+IEBAIC00MTE2LDEwICs0MTE5LDcgQEAgc3RhdGljIHZvaWQgZHJt
X2VkaWRfdG9fZWxkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIHN0cnVjdCBlZGlk
ICplZGlkKQo+ICAJaWYgKGNlYV9yZXZpc2lvbihjZWEpID49IDMpIHsKPiAgCQlpbnQgaSwgc3Rh
cnQsIGVuZDsKPiAgCj4gLQkJaWYgKGNlYV9kYl9vZmZzZXRzKGNlYSwgJnN0YXJ0LCAmZW5kKSkg
ewo+IC0JCQlzdGFydCA9IDA7Cj4gLQkJCWVuZCA9IDA7Cj4gLQkJfQo+ICsJCWNlYV9kYl9vZmZz
ZXRzKGNlYSwgJnN0YXJ0LCAmZW5kKTsKPiAgCj4gIAkJZm9yX2VhY2hfY2VhX2RiKGNlYSwgaSwg
c3RhcnQsIGVuZCkgewo+ICAJCQlkYiA9ICZjZWFbaV07CgpOb3Qgc3VyZSBpZiB0aGF0J3MgcmVh
bGx5IG5lZWRlZC4gQXMgaXQgc3RhbmRzIHRoZXJlJ3Mgb25seSBvbmUKZnVuY3Rpb24gd2hpY2gg
d2FudHMgdG8gY29udGludWUgYWZ0ZXIgY2VhX2RiX29mZnNldHMoKSBmYWlscywgYWxsCm90aGVy
cyBqdXN0IGJhaWwgb3V0IGF0IHRoYXQgcG9pbnQuIE5vdyB0aGF0IGNlYV9kYl9vZmZzZXRzKCkg
Y2hlY2tzCmZvciByZXZpc2lvbiA+PSAzLCB0aGUgY29uc3RydWN0IGFib3ZlIGNvdWxkIHNpbXBs
eSBiZWNvbWU6CgoJaW50IGksIHN0YXJ0LCBlbmQ7CgoJaWYgKGNlYV9kYl9vZmZzZXRzKGNlYSwg
JnN0YXJ0LCAmZW5kKSA9PSAwKSB7CgkJZm9yX2VhY2hfY2VhX2RiKGNlYSwgaSwgc3RhcnQsIGVu
ZCkgewoJCQlkYiA9ICZjZWFbaV07Cgp3aGljaCBpcyBJTUhPIG1vcmUgZWxlZ2FudCBhbmQgZG9l
cyBub3QgcmVxdWlyZSB6ZXJvaW5nIHN0YXJ0IGFuZCBlbmQKaW4gY2VhX2RiX29mZnNldHMoKS4K
Ci0tIApKZWFuIERlbHZhcmUKU1VTRSBMMyBTdXBwb3J0Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
