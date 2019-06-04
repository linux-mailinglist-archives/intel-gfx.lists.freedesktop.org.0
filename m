Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A033496B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC03898F1;
	Tue,  4 Jun 2019 13:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95DAA898F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 06:51:41 -0700
X-ExtLoop1: 1
Received: from bblokx-mobl.ger.corp.intel.com (HELO [10.249.139.199])
 ([10.249.139.199])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2019 06:51:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
 <20190604131140.12647-6-lionel.g.landwerlin@intel.com>
 <155965563149.21578.6954397047180158057@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <59cc211a-272d-e153-abfb-d07cece35129@intel.com>
Date: Tue, 4 Jun 2019 16:51:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155965563149.21578.6954397047180158057@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915: add a new perf
 configuration execbuf parameter
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDQvMDYvMjAxOSAxNjo0MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMDQgMTQ6MTE6MzgpCj4+ICAgICAgICAgIGxpc3RfYWRkX3Rh
aWwoJnJxLT5jbGllbnRfbGluaywgJnJxLT5maWxlX3ByaXYtPm1tLnJlcXVlc3RfbGlzdCk7Cj4+
ICAgfQo+PiAgIAo+PiArc3RhdGljIGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfdm1hICpvYV92bWE7Cj4+ICsg
ICAgICAgaW50IGVycjsKPj4gKwo+PiArICAgICAgIGlmICghZWItPm9hX2NvbmZpZykKPj4gKyAg
ICAgICAgICAgICAgIHJldHVybiAwOwo+PiArCj4+ICsgICAgICAgLyoKPj4gKyAgICAgICAgKiBJ
ZiB0aGUgY29uZmlnIGhhc24ndCBjaGFuZ2VkLCBza2lwIHJlY29uZmlndXJpbmcgdGhlIEhXICh0
aGlzIGlzCj4+ICsgICAgICAgICogc3ViamVjdCB0byBhIGRlbGF5IHdlIHdhbnQgdG8gYXZvaWQg
aGFzIG11Y2ggYXMgcG9zc2libGUpLgo+PiArICAgICAgICAqLwo+PiArICAgICAgIGlmIChlYi0+
b2FfY29uZmlnID09IGViLT5pOTE1LT5wZXJmLm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZp
ZykKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+IEJ1dCB5b3UgZG9uJ3Qgb3JkZXIgdGhl
IGV4ZWN1dGlvbiBzbyBpdCBtYXkgbm90IGJlIHRoZSByaWdodCBvYV9jb25maWcuCj4gSnVzdCBh
ZGQgdGhlIGJhcnJpZXIuIEl0IGlzIHZpcnR1YWxseSBubyBjb3N0IGZvciB0aGUgZXhjbHVzaXZl
IG9hCj4gdXNlcnNwYWNlLgoKCkFoIHJpZ2h0IHNvcnJ5IDooCgoKPgo+IEhvdyBkb2VzIHRoaXMg
aW50ZXJhY3Qgd2l0aCB0aGUgZ2xvYmFsIG9hX2NvbmZpZyBiZWluZyBjaGFuZ2VkIHZpYSB0aGUK
PiBpb2N0bD8KCgplYl9vYV9jb25maWcoKSBzaG91bGQgYmUgY2FsbGVkIHVuZGVyIHRoZSBnbG9i
YWwgbG9jayByaWdodD8KT3IgYXJlIHlvdSByZWZlcnJpbmcgdG8gc29tZXRoaW5nIGVsc2U/CgoK
PiAgIFdoYXQgc2lnbmlmaWNhbmNlIGlzIHRoZXJlIGZvciB0aGlzIHBlci1leGVjYnVmIG9hX2Nv
bmZpZyBiZWluZwo+IGFwcGxpZWQgdG8gb3RoZXIgdXNlcnM/CgoKVGhlIGV4cGVjdGF0aW9uIGlz
IHRoYXQgYSBzaW5nbGUgYXBwbGljYXRpb24gaXMgdXNpbmcgdGhpcyBhbmQgZGF0YSAKb3RoZXIg
dXNlcnMgZ2V0IGZyb20gTUlfUkVQT1JUX1BFUkZfQ09VTlQgaXMgdW5kZWZpbmVkIChtdWNoIGxp
a2Ugd2hlbiAKT0EgaXMgdHVybmVkIG9mZikuCgpOb3cgSSBzZWUgdGhlcmUgaXMgYSBwcm9ibGVt
IHdpdGggYW4gYXBwbGljYXRpb24gd2l0aCBtdWx0aXBsZSBjb250ZXh0cyAKYmVjYXVzZSB3ZSBo
YXZlIHRoZSBGbGV4IEVVIGNvdW50ZXIgY29uZmlndXJhdGlvbnMgcGVyIGNvbnRleHQuCgpJIGNh
biBicmVhayB0aGUgY29uZmlnIGluIDIgcGFydHMgYW5kIGV4ZWN1dGUgdGhlIGZsZXggY291bnRl
ciAKcHJvZ3JhbW1pbmcgZXZlcnl0aGluZyByZWdhcmRsZXNzLgoKCldlIHJlYWxseSB3YW50IHRv
IG1pbmltaXplIHRoZSBOT0EgcmVwcm9ncmFtbWluZyBiZWNhdXNlIGl0IHRha2VzIGFuIAp1bmRl
ZmluZWQgYW1vdW50IG9mIHRpbWUgdG8gYXBwbHkgKGJlZW4gdG9sZCBiZWxvdyAxbXMpLgoKClRo
YW5rcyBmb3Igc3BvdHRpbmcgdGhvc2UgaXNzdWUuCgoKLUxpb25lbAoKCj4gLUNocmlzCj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
