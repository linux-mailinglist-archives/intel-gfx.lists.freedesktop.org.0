Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C010BD5F52
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2EC96E088;
	Mon, 14 Oct 2019 09:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003206E088
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:50:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 02:50:29 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185445687"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 02:50:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191013203012.25208-1-chris@chris-wilson.co.uk>
 <6a6df2f0-9bed-fc54-2322-f2b6c250a30d@linux.intel.com>
 <157104606340.18859.18244611984814432108@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8205054f-5739-cc9e-ef45-2334c1a334d5@linux.intel.com>
Date: Mon, 14 Oct 2019 10:50:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157104606340.18859.18244611984814432108@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Tweak virtual
 unsubmission
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

Ck9uIDE0LzEwLzIwMTkgMTA6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE0IDEwOjM0OjMxKQo+Pgo+PiBPbiAxMy8xMC8yMDE5IDIxOjMw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBTaW5jZSBjb21taXQgZTIxNDQ1MDNiZjNiICgiZHJt
L2k5MTU6IFByZXZlbnQgYm9uZGVkIHJlcXVlc3RzIGZyb20KPj4+IG92ZXJ0YWtpbmcgZWFjaCBv
dGhlciBvbiBwcmVlbXB0aW9uIikgd2UgaGF2ZSByZXN0cmljdGVkIHJlcXVlc3RzIHRvIHJ1bgo+
Pj4gb24gdGhlaXIgY2hvc2VuIGVuZ2luZSBhY3Jvc3MgcHJlZW1wdGlvbiBldmVudHMuIFdlIGNh
biB0YWtlIHRoaXMKPj4+IHJlc3RyaWN0aW9uIGludG8gYWNjb3VudCB0byBrbm93IHRoYXQgd2Ug
d2lsbCB3YW50IHRvIHJlc3VibWl0IHRob3NlCj4+PiByZXF1ZXN0cyBvbnRvIHRoZSBzYW1lIHBo
eXNpY2FsIGVuZ2luZSwgYW5kIHNvIGNhbiBzaG9ydGNpcmN1aXQgdGhlCj4+PiB2aXJ0dWFsIGVu
Z2luZSBzZWxlY3Rpb24gcHJvY2VzcyBhbmQga2VlcCB0aGUgcmVxdWVzdCBvbiB0aGUgc2FtZQo+
Pj4gZW5naW5lIGR1cmluZyB1bndpbmQuCj4+Pgo+Pj4gUmVmZXJlbmNlczogZTIxNDQ1MDNiZjNi
ICgiZHJtL2k5MTU6IFByZXZlbnQgYm9uZGVkIHJlcXVlc3RzIGZyb20gb3ZlcnRha2luZyBlYWNo
IG90aGVyIG9uIHByZWVtcHRpb24iKQo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgfCA2ICsrKy0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgfCAyICstCj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4g
aW5kZXggZTZiZjYzM2I0OGQ1Li4wMzczMmUzZjVlYzcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPj4+IEBAIC04OTUsNyArODk1LDYgQEAgX191bndpbmRfaW5jb21w
bGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+PiAgICAgICAg
bGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlX3JldmVyc2UocnEsIHJuLAo+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cywKPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzY2hlZC5saW5rKSB7Cj4+
PiAtICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm93bmVyOwo+Pj4gICAgCj4+
PiAgICAgICAgICAgICAgICBpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOyAvKiBYWFggKi8KPj4+IEBAIC05MTAsOCArOTA5
LDcgQEAgX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCj4+PiAgICAgICAgICAgICAgICAgKiBlbmdpbmUgc28gdGhhdCBpdCBjYW4gYmUg
bW92ZWQgYWNyb3NzIG9udG8gYW5vdGhlciBwaHlzaWNhbAo+Pj4gICAgICAgICAgICAgICAgICog
ZW5naW5lIGFzIGxvYWQgZGljdGF0ZXMuCj4+PiAgICAgICAgICAgICAgICAgKi8KPj4+IC0gICAg
ICAgICAgICAgb3duZXIgPSBycS0+aHdfY29udGV4dC0+ZW5naW5lOwo+Pj4gLSAgICAgICAgICAg
ICBpZiAobGlrZWx5KG93bmVyID09IGVuZ2luZSkpIHsKPj4+ICsgICAgICAgICAgICAgaWYgKGxp
a2VseShycS0+ZXhlY3V0aW9uX21hc2sgPT0gZW5naW5lLT5tYXNrKSkgewo+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICBHRU1fQlVHX09OKHJxX3ByaW8ocnEpID09IEk5MTVfUFJJT1JJVFlfSU5W
QUxJRCk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChycV9wcmlvKHJxKSAhPSBwcmlv
KSB7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpbyA9IHJxX3ByaW8ocnEp
Owo+Pj4gQEAgLTkyMiw2ICs5MjAsOCBAQCBfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
bGlzdF9tb3ZlKCZycS0+c2NoZWQubGluaywgcGwpOwo+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICBhY3RpdmUgPSBycTsKPj4+ICAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqb3duZXIgPSBycS0+aHdfY29udGV4
dC0+ZW5naW5lOwo+Pgo+PiBJIGd1ZXNzIHRoZXJlIGlzIHNvbWUgYmVuZWZpdCBpbiBkb2luZyBm
ZXdlciBvcGVyYXRpb25zIGFzIGxvbmcgYXMgd2UKPj4gYXJlIGZpeGluZyB0aGUgZW5naW5lIGFu
eXdheSAoYXQgdGhlIG1vbWVudCBhdCBsZWFzdCkuCj4+Cj4+IEhvd2V2ZXIgb24gdGhpcyBicmFu
Y2ggaGVyZSB0aGUgY29uY2VybiB3YXMgcmVxdWVzdCBjb21wbGV0aW9uIHJhY2luZwo+PiB3aXRo
IHByZWVtcHRpb24gaGFuZGxpbmcgYW5kIHdpdGggdGhpcyBjaGFuZ2UgdGhlIGJyZWFkY3J1bWIg
d2lsbCBub3QKPj4gZ2V0IGNhbmNlbGVkIGFueSBsb25nZXIgYW5kIG1heSBnZXQgc2lnbmFsZWQg
b24gdGhlIHZpcnR1YWwgZW5naW5lLgo+PiBXaGljaCB0aGVuIGxlYWRzIHRvIHRoZSBleHBsb3Np
b24gdGhpcyBicmFuY2ggZml4ZWQuIEF0IGxlYXN0IHRoYXQncwo+PiB3aGF0IEkgcmVtZW1iZXJl
ZCBpbiBjb21iaW5hdGlvbiB3aXRoIHRoZSBjb21tZW50IGJlbG93Li4KPiAKPiBObywgd2UgZG9u
J3QgY2hhbmdlIGJhY2sgdG8gdGhlIHZpcnR1YWwgZW5naW5lLCBzbyB0aGF0IGlzIG5vdCBhbiBp
c3N1ZS4KPiBUaGUgcHJvYmxlbSB3YXMgb25seSBiZWNhdXNlIG9mIHRoZSBycS0+ZW5naW5lID0g
b3duZXIgd2hlcmUgdGhlCj4gYnJlYWRjcnVtYnMgd2VyZSBzdGlsbCBvbiB0aGUgcHJldmlvdXMg
ZW5naW5lIGxpc3RzIGFuZCBhc3N1bWVkIHRvIGJlCj4gdW5kZXIgdGhhdCBlbmdpbmUtPmJyZWFk
Y3J1bWJzLmxvY2sgKGJ1dCB3b3VsZCBpbiBmdXR1cmUgYmUgYXNzdW1lZCB0byBiZQo+IHVuZGVy
IHJxLT5lbmdpbmUtPmJyZWFkY3J1bWJzLmxvY2spLgoKQnJlYWRjcnVtYiBzaWduYWxpbmcgY2Fu
IG9ubHkgYmUgc2V0IHVwIG9uIHRoZSBwaHlzaWNhbCBlbmdpbmU/IEhtLCBtdXN0IApiZSBmaW5l
IHNpbmNlIHdpdGhvdXQgcHJlZW1wdGlvbiB0aGF0IHdvdWxkIGJlIHRoZSBzY2VuYXJpbyBleGFj
dGx5LiAKT2theSwgSSBzZWUgdGhlcmUgaXMgci1iIGZyb20gUmFtIGFscmVhZHkgc28gbm8gbmVl
ZCBmb3IgYW5vdGhlciBvbmUuCgpSZWdhcmRzLAoKVHZydGtvCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
