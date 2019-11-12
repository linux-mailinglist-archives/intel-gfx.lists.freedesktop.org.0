Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7C7F9131
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 14:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56618981D;
	Tue, 12 Nov 2019 13:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEC38981D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 13:58:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 05:58:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="216037731"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 12 Nov 2019 05:58:46 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 199B15C1E42; Tue, 12 Nov 2019 15:58:36 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191111120957.17732-1-chris@chris-wilson.co.uk>
References: <20191111120957.17732-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Nov 2019 15:58:36 +0200
Message-ID: <87sgmt42nn.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Try an extra flush on the
 Haswell blitter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gT24gZ2Vu
NywgaW5jbHVkaW5nIEhhc3dlbGwsIHRoZSBNSV9GTFVTSF9EVyBjb21tYW5kIGlzIG5vdCBzeW5j
aHJvbm91cwo+IHdpdGggdGhlIGNvbW1hbmQgc3RyZWFtZXIgbm9yIGlzIHRoZXJlIGFuIG9wdGlv
biB0byBtYWtlIGl0IHNvLiBUbyBoaWRlCj4gdGhpcyB3ZSBhZGQgYSBsYXJnZSBkZWxheSBvbiB0
aGUgQ1Mgc28gdGhhdCB0aGUgYnJlYWRjcnVtYiBzaG91bGQgYWx3YXlzCj4gYmUgdmlzaWJsZSBi
ZWZvcmUgdGhlIGludGVycnVwdC4gSG93ZXZlciwgdGhhdCBkb2VzIG5vdCBzZWVtIHRvIGJlCj4g
ZW5vdWdoIHRvIGVuc3VyZSB0aGUgbWVtb3J5IGlzIGFjdHVhbGx5IGNvaGVyZW50IHdpdGggdGhl
IHJlYWQgb2YgdGhlCj4gYnJlYWRjcnVtYi4gVGhlIGJyZWFkY3J1bWIgdXBkYXRlIGlzIGEgcG9z
dC1zeW5jIG9wLi4uIFRocm93IGluIGEKPiBwcmVsaW1pbmFyeSBNSV9GTFVTSF9EVyBiZWZvcmUg
dGhlIGJyZWFkY3J1bWIgdXBkYXRlIGluIHRoZSBob3BlIHRoYXQKPiBoZWxwcy4KPgo+IEJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIxNDcK
CklmIHdlIGFyZSBub3Qgc3VyZSwgUmVmZXJlbmNlcwoKPiBUZXN0Y2FzZTogaWd0L2k5MTVfc2Vs
ZnRlc3QvbGl2ZV9ibHQKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Z19zdWJtaXNzaW9uLmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jpbmdfc3VibWlzc2lvbi5jCj4gaW5kZXggYTQ3ZDVhN2MzMmM5Li5mYzI5ZGY3MTI4MTAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9u
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24u
Ywo+IEBAIC00NTQsNiArNDU0LDEwIEBAIHN0YXRpYyB1MzIgKmdlbjdfeGNzX2VtaXRfYnJlYWRj
cnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdTMyICpjcykKPiAgCUdFTV9CVUdfT04oaTkx
NV9yZXF1ZXN0X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3BfZ2d0dCAhPSBycS0+ZW5naW5lLT5z
dGF0dXNfcGFnZS52bWEpOwo+ICAJR0VNX0JVR19PTihvZmZzZXRfaW5fcGFnZShpOTE1X3JlcXVl
c3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9vZmZzZXQpICE9IEk5MTVfR0VNX0hXU19TRVFO
T19BRERSKTsKPiAgCj4gKwkqY3MrKyA9IE1JX0ZMVVNIX0RXOwo+ICsJKmNzKysgPSAwOwo+ICsJ
KmNzKysgPSAwOwoKSSBzZWUgdGhpcyBhcyB3bWIgd3J0IHNlcW5vIHdyaXRlLgoKTWFzc2l2ZSBo
YW1tZXIgd291bGQgYmUgdG8gaW5jbHVkZSB0aW1lc3RhbXAgd3JpdGUgaW4gaGVyZSB3aXRoIHRs
YgpmbHVzaD8KCkJ1dCBvbmUgY2FuIGFsd2F5cyBob3BlLgoKPiArCj4gIAkqY3MrKyA9IE1JX0ZM
VVNIX0RXIHwgTUlfRkxVU0hfRFdfT1BfU1RPUkVEVyB8IE1JX0ZMVVNIX0RXX1NUT1JFX0lOREVY
Owo+ICAJKmNzKysgPSBJOTE1X0dFTV9IV1NfU0VRTk9fQUREUiB8IE1JX0ZMVVNIX0RXX1VTRV9H
VFQ7Cj4gIAkqY3MrKyA9IHJxLT5mZW5jZS5zZXFubzsKPiBAQCAtNDY5LDcgKzQ3Myw2IEBAIHN0
YXRpYyB1MzIgKmdlbjdfeGNzX2VtaXRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwgdTMyICpjcykKPiAgCSpjcysrID0gMDsKPiAgCj4gIAkqY3MrKyA9IE1JX1VTRVJfSU5URVJS
VVBUOwo+IC0JKmNzKysgPSBNSV9OT09QOwoKRXZlbnMsCkFja2VkLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAo+ICAJcnEtPnRhaWwgPSBpbnRl
bF9yaW5nX29mZnNldChycSwgY3MpOwo+ICAJYXNzZXJ0X3JpbmdfdGFpbF92YWxpZChycS0+cmlu
ZywgcnEtPnRhaWwpOwo+IC0tIAo+IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
