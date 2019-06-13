Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE95043635
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46EBA89904;
	Thu, 13 Jun 2019 13:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA98D898BE;
 Thu, 13 Jun 2019 13:03:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 2CEEC279009
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <a5f5b7c277c99682721fc998932895ebbb5646fe.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <05c4aa32-3103-d82f-e596-90537d48a10d@collabora.com>
Date: Thu, 13 Jun 2019 13:55:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a5f5b7c277c99682721fc998932895ebbb5646fe.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] tests: add libatomic
 dependency
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMDYvMjAxOSAwODoxOCwgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBNb24sIDIwMTktMDYt
MDMgYXQgMTI6NTQgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+IEFkZCBkZXBlbmRl
bmN5IHRvIGxpYmF0b21pYyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHVzZSB0aGUgX19hdG9taWNf
Kgo+PiBmdW5jdGlvbnMgaW5zdGVhZCBvZiB0aGUgb2xkZXIgX19zeW5jXyogb25lcy4gIFRoaXMg
aXMgdG8gZW5hYmxlCj4+IGF0b21pYyBvcGVyYXRpb25zIG9uIGEgd2lkZXIgbnVtYmVyIG9mIGFy
Y2hpdGVjdHVyZXMgaW5jbHVkaW5nIE1JUFMuCj4gCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoISBJ
IGhhdmUgYSBmZXcgcXVlc3Rpb25zIGJlY2F1c2UgSSBkb24ndCBrbm93IHdlbGwKPiBob3cgbGli
YXRvbWljIHdvcmtzLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKPiBEbyB3ZSB3YW50IHRvIGFs
d2F5cyBsaW5rIGFnYWluc3QgbGliYXRvbWljPyBGb3IgaW5zdGFuY2UgTExWTSB0cmllcyB0bwo+
IGNvbXBpbGUgYSBwcm9ncmFtIHdpdGggYXRvbWljIGJlZm9yZSBmYWxsaW5nIGJhY2sgdG8gbGli
YXRvbWljOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9sbHZtLW1pcnJvci9sbHZtL2Jsb2IvbWFzdGVy
L2NtYWtlL21vZHVsZXMvQ2hlY2tBdG9taWMuY21ha2UKPiAKPiBTaG91bGQgdGhpcyBkZXBlbmRl
bmN5IGJlIG1hbmRhdG9yeT8KCkkndmUgaGFkIGEgbG9vayBhcm91bmQsIHRoZSBzaG9ydCBhbnN3
ZXIgaXMgd2Ugc2hvdWxkIG1ha2UgdGhpcwpkZXBlbmRlbmN5IG9wdGlvbmFsLiAgSSdtIHNlbmRp
bmcgYSB2MiBvZiB0aGlzIHNlcmllcyB3aGljaAphZGRyZXNzZXMgdGhpcyBpc3N1ZS4KCkZyb20g
d2hhdCBJIHVuZGVyc3RhbmQsIGxpbmtpbmcgYWdhaW5zdCBsaWJhdG9taWMgaXMgYWN0dWFsbHkK
b25seSBuZWVkZWQgd2hlbiBzb21lIGF0b21pYyBvcGVyYXRpb25zIGFyZW4ndCBzdXBwb3J0ZWQg
bmF0aXZlbHkKYnkgYSBDUFUgYXJjaGl0ZWN0dXJlLiAgRm9yIGV4YW1wbGUsIHRoaXMgaXMgdGhl
IGNhc2Ugd2l0aCA2NC1iaXQKYXRvbWljcyBvbiAzMi1iaXQgTUlQUy4gIElmIHRoZSBDUFUgY2Fu
J3QgZG8gYW4gYXRvbWljIG9wZXJhdGlvbgphbmQgdGhlcmUncyBubyBsaWJhdG9taWMgYXZhaWxh
YmxlLCB0aGVuIGl0IHdvbid0IGJ1aWxkLiAgU28gSSd2ZQptYWRlIGEgdGVzdCBpbiBtZXNvbi5i
dWlsZCB0byBjaGVjayB3aGV0aGVyIGxpbmtpbmcgYWdhaW5zdApsaWJhdG9taWMgaXMgcmVxdWly
ZWQgb3Igbm90LCB0byBkcm9wIHRoZSBkZXBlbmRlbmN5IHdoZW4gaXQKaXNuJ3QuICBJJ3ZlIHZl
cmlmaWVkIHRoYXQgdGhlIHRlc3QgcGFzc2VzIG9uIHg4NiAoaS5lLiBubwpkZXBlbmRlbmN5KSBh
bmQgZmFpbHMgb24gMzItYml0IE1JUFMgKGkuZS4gd2l0aCBkZXBlbmRlbmN5KS4KCkd1aWxsYXVt
ZQoKCj4+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJA
Y29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICBtZXNvbi5idWlsZCAgICAgICB8IDEgKwo+PiAgdGVz
dHMvbWVzb24uYnVpbGQgfCAyICstCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5i
dWlsZAo+PiBpbmRleCA2MjY4YzU4ZDM2MzQuLjRlNWJiMzIzZmE0OSAxMDA2NDQKPj4gLS0tIGEv
bWVzb24uYnVpbGQKPj4gKysrIGIvbWVzb24uYnVpbGQKPj4gQEAgLTE3OSw2ICsxNzksNyBAQCBt
YXRoID0gY2MuZmluZF9saWJyYXJ5KCdtJykKPj4gIHJlYWx0aW1lID0gY2MuZmluZF9saWJyYXJ5
KCdydCcpCj4+ICBkbHN5bSA9IGNjLmZpbmRfbGlicmFyeSgnZGwnKQo+PiAgemxpYiA9IGNjLmZp
bmRfbGlicmFyeSgneicpCj4+ICtsaWJhdG9taWMgPSBjYy5maW5kX2xpYnJhcnkoJ2F0b21pYycp
Cj4+ICAKPj4gIGlmIGNjLmhhc19oZWFkZXIoJ2xpbnV4L2tkLmgnKQo+PiAgCWNvbmZpZy5zZXQo
J0hBVkVfTElOVVhfS0RfSCcsIDEpCj4+IGRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBi
L3Rlc3RzL21lc29uLmJ1aWxkCj4+IGluZGV4IDgwNjc2NmU1MTY2Ny4uNjg3N2NjZDU5MjM1IDEw
MDY0NAo+PiAtLS0gYS90ZXN0cy9tZXNvbi5idWlsZAo+PiArKysgYi90ZXN0cy9tZXNvbi5idWls
ZAo+PiBAQCAtMjMzLDcgKzIzMyw3IEBAIGk5MTVfcHJvZ3MgPSBbCj4+ICAJJ2k5MTVfc3VzcGVu
ZCcsCj4+ICBdCj4+ICAKPj4gLXRlc3RfZGVwcyA9IFsgaWd0X2RlcHMgXQo+PiArdGVzdF9kZXBz
ID0gWyBpZ3RfZGVwcywgbGliYXRvbWljIF0KPj4gIAo+PiAgaWYgbGliZHJtX25vdXZlYXUuZm91
bmQoKQo+PiAgCXRlc3RfcHJvZ3MgKz0gWwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
