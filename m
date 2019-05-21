Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4357224D2F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 12:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF4D89199;
	Tue, 21 May 2019 10:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F2189199;
 Tue, 21 May 2019 10:51:28 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3B273AF61;
 Tue, 21 May 2019 10:51:27 +0000 (UTC)
Date: Tue, 21 May 2019 12:51:26 +0200
From: Michal Hocko <mhocko@suse.com>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <20190521105126.GP32329@dhcp22.suse.cz>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlIDIxLTA1LTE5IDE5OjQ0OjAxLCBUZXRzdW8gSGFuZGEgd3JvdGU6Cj4gT24gMjAxOS8w
NS8yMSAxOTowNiwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IEluIHNvbWUgc3BlY2lhbCBjYXNl
cyB3ZSBtdXN0IG5vdCBibG9jaywgYnV0IHRoZXJlJ3Mgbm90IGEKPiA+IHNwaW5sb2NrLCBwcmVl
bXB0LW9mZiwgaXJxcy1vZmYgb3Igc2ltaWxhciBjcml0aWNhbCBzZWN0aW9uIGFscmVhZHkKPiA+
IHRoYXQgYXJtcyB0aGUgbWlnaHRfc2xlZXAoKSBkZWJ1ZyBjaGVja3MuIEFkZCBhIG5vbl9ibG9j
a19zdGFydC9lbmQoKQo+ID4gcGFpciB0byBhbm5vdGF0ZSB0aGVzZS4KPiA+IAo+ID4gVGhpcyB3
aWxsIGJlIHVzZWQgaW4gdGhlIG9vbSBwYXRocyBvZiBtbXUtbm90aWZpZXJzLCB3aGVyZSBibG9j
a2luZyBpcwo+ID4gbm90IGFsbG93ZWQgdG8gbWFrZSBzdXJlIHRoZXJlJ3MgZm9yd2FyZCBwcm9n
cmVzcy4gUXVvdGluZyBNaWNoYWw6Cj4gPiAKPiA+ICJUaGUgbm90aWZpZXIgaXMgY2FsbGVkIGZy
b20gcXVpdGUgYSByZXN0cmljdGVkIGNvbnRleHQgLSBvb21fcmVhcGVyIC0KPiA+IHdoaWNoIHNo
b3VsZG4ndCBkZXBlbmQgb24gYW55IGxvY2tzIG9yIHNsZWVwYWJsZSBjb25kaXRpb25hbHMuIFRo
ZSBjb2RlCj4gPiBzaG91bGQgYmUgc3dpZnQgYXMgd2VsbCBidXQgd2UgbW9zdGx5IGRvIGNhcmUg
YWJvdXQgaXQgdG8gbWFrZSBhIGZvcndhcmQKPiA+IHByb2dyZXNzLiBDaGVja2luZyBmb3Igc2xl
ZXBhYmxlIGNvbnRleHQgaXMgdGhlIGJlc3QgdGhpbmcgd2UgY291bGQgY29tZQo+ID4gdXAgd2l0
aCB0aGF0IHdvdWxkIGRlc2NyaWJlIHRoZXNlIGRlbWFuZHMgYXQgbGVhc3QgcGFydGlhbGx5LiIK
PiA+IAo+IAo+IENhbiB0aGlzIGJlIGNoZWNrZWQgZm9yIE9PTSBub3RpZmllciBhcyB3ZWxsPwo+
IAo+ICAJaWYgKCFpc19tZW1jZ19vb20ob2MpKSB7Cj4gKwkJbm9uX2Jsb2NrX3N0YXJ0KCk7Cj4g
IAkJYmxvY2tpbmdfbm90aWZpZXJfY2FsbF9jaGFpbigmb29tX25vdGlmeV9saXN0LCAwLCAmZnJl
ZWQpOwo+ICsJCW5vbl9ibG9ja19lbmQoKTsKPiAgCQlpZiAoZnJlZWQgPiAwKQo+ICAJCQkvKiBH
b3Qgc29tZSBtZW1vcnkgYmFjayBpbiB0aGUgbGFzdCBzZWNvbmQuICovCj4gIAkJCXJldHVybiB0
cnVlOwo+ICAJfQo+IAo+IEl0IGlzIG5vdCBjbGVhciB3aGV0aGVyIGk5MTUncyBvb21fbm90aWZp
ZXIgZnVuY3Rpb24gaGFzIHN1Y2ggZGVwZW5kZW5jeS4KCkl0IGlzIG5vdCBidXQgdGhlbiB3ZSBz
aG91bGQgYmUgdXNpbmcgdGhlIG5vbi1ibG9ja2luZyBBUEkgaWYgdGhpcyBpcwphIHJlYWwgcHJv
YmxlbS4gVGhlIGFib3ZlIGNvZGUganVzdCBkb2Vzbid0IG1ha2UgYW55IHNlbnNlLiBXZSBoYXZl
IGEKYmxvY2tpbmcgQVBJIGNhbGxlZCBhbmQgd3JhcHBlZCBieSBub24tYmxvY2tpbmcgb25lLgoK
Ci0tIApNaWNoYWwgSG9ja28KU1VTRSBMYWJzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
