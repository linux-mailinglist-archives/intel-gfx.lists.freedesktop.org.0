Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EF6D40C6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9296E40D;
	Fri, 11 Oct 2019 13:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F8C6E40D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:14:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:14:15 -0700
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="197576588"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 06:14:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191011113620.4671-1-chris@chris-wilson.co.uk>
 <be2b663c-f1f1-3ad9-01cf-9e33d393446a@linux.intel.com>
 <157079711961.31572.1591190452318333837@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <58a65fb2-f7f1-557f-480f-4aad6de7aaf3@linux.intel.com>
Date: Fri, 11 Oct 2019 14:14:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157079711961.31572.1591190452318333837@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
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

Ck9uIDExLzEwLzIwMTkgMTM6MzEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTExIDEzOjE2OjMzKQoKW3NuaXBdCgo+PiBMb29rcyBmaW5lIGlu
IHByaW5jaXBsZS4KPj4KPj4gSSBhbSB0ZW1wdGVkIHRvIGdvIHdpdGggc29tZSBvZiB0aGUgZW5n
aW5lLT5mbGFncyBmcm9tIHRoZSBzdGFydCBidXQgSQo+PiBkb24ndCBoYXZlIGFuIHVzZSBjYXNl
IGFwYXJ0IGZyb20gc2F5aW5nIHRoYXQgaXQgc291bmRzIGxpa2UgaXQgbWFrZXMgc2Vuc2UuCj4g
Cj4gVGhlIHByb2JsZW0gSSBzYXcgd2l0aCBlbmdpbmUtPmZsYWdzIGlzIHRoYXQgYXJlIG1vc3Rs
eSBpbnRlcm5hbAo+IGRldGFpbHM7IHRoZSBwdWJsaWMgcGFydHMgYmVjb21lIGNhcHMuc2NoZWR1
bGVyLiBUaGF0IHNlZW1lZCByZWFzb25hYmxlCj4gdG8gYWRkLCBidXQgd2hlcmU/IGNhcmROL3Nj
aGVkdWxlciAoc2FtZSBsZXZlbCBhcyBjYXJkTi9lbmdpbmUpPyBCdXQKPiB0aGVyZSdzIGEgbGFy
Z2Ugb3ZlcmxhcCBiZXR3ZWVuIHRoYXQgYW5kIHRoZSBwZXItZW5naW5lIGNvbnRyb2xzLiBTbwo+
IGNhcmROL2VuZ2luZS9zY2hlZHVsZXI/IFRoZW4gdGhlIHVzZXIgaGFzIHRvIHJlbWVtYmVyIHRo
YXQgbm90IGFsbAo+IGVudHJpZXMgYXJlIGVuZ2luZXMuCj4gCj4gSSBzdXBwb3NlIGNhcmROL2Vu
Z2luZS9hbGwvIHdvdWxkIGZpdCB0aGUgcGF0dGVybiBvZiBzb21lIG90aGVyIHN5c2ZzCj4gaW50
ZXJmYWNlcyBbY2FyZE4vZW5naW5lL2FsbC9zY2hlZHVsZXIvY2Fwcz9dIE9ubHkgcHJvYmxlbSB0
aGVuIGlzIHlvdQo+IHdvdWxkIHJlYXNvbmFibHkgZXhwZWN0IHRvIGhhdmUgc29tZSBnbG9iYWwg
Y29udHJvbHMgOikKPiAKPj4gUHJlZW1wdGlvbiBjYXAgbWF5IG1ha2Ugc2Vuc2UgaW4gY29uanVu
Y3Rpb24gd2l0aCBoZWFydGJlYXQgaW50ZXJ2YWwgdG8KPj4gdGVsbCB1c2Vyc3BhY2Ugc29tZXRo
aW5nIG1vcmU/Cj4+Cj4+IEJ1c3lfc3RhdHMgbWlnaHQgbWFrZSBzZW5zZSBmb3IgcGVvcGxlIGlu
dGVyZXN0ZWQgaW4gZG9pbmcgcGVyZiBzdGF0Pwo+Pgo+PiBXaGF0IHdvcnJpZXMgbWUgc2xpZ2h0
bHkgaXMgbm90IGJlaW5nIGFibGUgdG8gdGVsbCBpZiBhIGNhcCBpcyBzdXBwb3J0ZWQKPj4ganVz
dCBub3QgZXhwb3J0ZWQsIG9yIG5vdCBzdXBwb3J0ZWQgYnV0IGV4cG9ydGVkLCBpZiB5b3UgYXJl
IGFibGUgdG8KPj4gZm9sbG93LiA6KSBXaGljaCB3b3VsZCBoYXBwZW4gaWYgd2UgZGVjaWRlZCB0
byBsYXRlciBhZGQgc29tZXRoaW5nIGZyb20KPj4gZmxhZ3MuCj4gCj4gQWxvbmcgdGhhdCBwYXRo
IHdlIGVuZCB1cCB3aXRoIGJjczAvYXZhaWxhYmxlX2ZsYWdzIGFuZCBiY3MwL2ZsYWdzIChvcgo+
IGJjczAvYXZhaWxhYmxlX2NhcGFiaWxpdGllcyBhbmQgYmNzMC9jYXBhYmlsaXRpZXMpLiBPcgo+
IGNhcmROL2VuZ2luZS92ZXJzaW9uPwoKYXZhaWxhYmxlX2NhcGFiaWxpdGllcyBzb3VuZHMgZ29v
ZCBlbm91Z2ggYW5kIGZ1dHVyZSBwcm9vZi4KClJlZ2FyZHMsCgpUdnJ0a28KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
