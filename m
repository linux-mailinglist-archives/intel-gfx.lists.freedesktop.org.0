Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1104043F4D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49509896ED;
	Thu, 13 Jun 2019 15:56:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D716896ED
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:56:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:56:38 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 08:56:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-4-tvrtko.ursulin@linux.intel.com>
 <156044076342.17012.8061368513293260014@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fe6e9e90-6502-5d0e-94fb-8dd2e55aeb7f@linux.intel.com>
Date: Thu, 13 Jun 2019 16:56:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156044076342.17012.8061368513293260014@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 27/28] drm/i915: Compartmentalize ring buffer
 creation
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

Ck9uIDEzLzA2LzIwMTkgMTY6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE2OjE5OjAzKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBDb250aW51aW5nIG9uIHRoZSB0aGVtZSBv
ZiBjb21wYXJ0bWVudGFsaXppbmcgdGhlIGNvZGUgYmV0dGVyIHRvIG1ha2UKPj4gZnV0dXJlIHNw
bGl0IGJldHdlZW4gZ3QgYW5kIGRpc3BsYXkgaW4gZ2xvYmFsIGk5MTUgY2xlYXJlci4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwg
MTcgKysrKysrKysrLS0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Z2J1ZmZlci5jCj4+IGluZGV4IGIzYmY0N2U4MTYyZi4uMGExZDk1MmFkMTYwIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4+IEBAIC0xMjI2LDE2
ICsxMjI2LDE2IEBAIHZvaWQgaW50ZWxfcmluZ191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmlu
ZykKPj4gICAgICAgICAgaTkxNV90aW1lbGluZV91bnBpbihyaW5nLT50aW1lbGluZSk7Cj4+ICAg
fQo+PiAgIAo+PiAtc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqCj4+IC1pbnRlbF9yaW5nX2NyZWF0
ZV92bWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgc2l6ZSkKPj4gK3N0
YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9yaW5nX3ZtYShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
LCBpbnQgc2l6ZSkKPiAKPiBIZXJlLCBpdCBwcm9iYWJseSBtYWtlcyBtb3JlIHNlbnNlIHRvIGJl
IHBhc3NpbmcgaTkxNV9nZ3R0IChzaW5jZSB0aGlzCj4gaXMgYWJvdXQgdGhlIGk5MTVfdm1hIGl0
c2VsZikuCgpZZXAsIGdvb2QgcG9pbnQuCgo+PiAgIHsKPj4gLSAgICAgICBzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSA9ICZkZXZfcHJpdi0+Z2d0dC52bTsKPj4gKyAgICAgICBzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZndC0+Z2d0dC0+dm07Cj4+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPj4gICAgICAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4gICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7
Cj4+ICAgCj4+IC0gICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2
X3ByaXYsIHNpemUpOwo+PiArICAgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3Rv
bGVuKGk5MTUsIHNpemUpOwo+PiAgICAgICAgICBpZiAoIW9iaikKPj4gLSAgICAgICAgICAgICAg
IG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoZGV2X3ByaXYsIHNpemUpOwo+
PiArICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChp
OTE1LCBzaXplKTsKPj4gICAgICAgICAgaWYgKElTX0VSUihvYmopKQo+PiAgICAgICAgICAgICAg
ICAgIHJldHVybiBFUlJfQ0FTVChvYmopOwo+PiAgIAo+PiBAQCAtMTI2MiwxMyArMTI2MiwxNCBA
QCBpbnRlbF9lbmdpbmVfY3JlYXRlX3Jpbmcoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0aW1l
bGluZSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgc2l6ZSkKPj4gICB7Cj4+ICsg
ICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7Cj4+ICAg
ICAgICAgIHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nOwo+PiAgICAgICAgICBzdHJ1Y3QgaTkxNV92
bWEgKnZtYTsKPj4gICAKPj4gICAgICAgICAgR0VNX0JVR19PTighaXNfcG93ZXJfb2ZfMihzaXpl
KSk7Cj4+ICAgICAgICAgIEdFTV9CVUdfT04oUklOR19DVExfU0laRShzaXplKSAmIH5SSU5HX05S
X1BBR0VTKTsKPj4gICAgICAgICAgR0VNX0JVR19PTih0aW1lbGluZSA9PSAmZW5naW5lLT50aW1l
bGluZSk7Cj4+IC0gICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5pOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPj4gKyAgICAgICBsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPiAKPiBIZXJlc3kuCgpXaGF0IHdoeT8KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
