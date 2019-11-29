Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3260810D4FE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FE86E8DF;
	Fri, 29 Nov 2019 11:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C924C6E8DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:38:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:38:47 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203710961"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 03:38:46 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191129093908.631527-1-chris@chris-wilson.co.uk>
 <375aef03-4aa6-cbbd-3bcd-0eb7a44cc2f4@linux.intel.com>
 <157502688469.11312.886721160006481649@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <30147b20-3b82-9ad6-adfe-5106aca60eb7@linux.intel.com>
Date: Fri, 29 Nov 2019 11:38:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157502688469.11312.886721160006481649@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialise i915_active_wait() with
 its retirement
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

Ck9uIDI5LzExLzIwMTkgMTE6MjgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI5IDExOjE1OjQ2KQo+Pgo+PiBPbiAyOS8xMS8yMDE5IDA5OjM5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBcyB0aGUgaTkxNV9hY3RpdmUucmV0aXJlKCkgbWF5
IGJlIHJ1bm5pbmcgb24gYW5vdGhlciBDUFUgYXMgd2UgZGV0ZWN0Cj4+PiB0aGF0IHRoZSBpOTE1
X2FjdGl2ZSBpcyBpZGxlLCB3ZSBtYXkgbm90IHdhaXQgZm9yIHRoZSByZXRpcmVtZW50IGl0c2Vs
Zi4KPj4+IFdhaXQgZm9yIHRoZSByZW1vdGUgY2FsbGJhY2sgYnkgd2FpdGluZyBmb3IgdGhlIHJl
dGlyZW1lbnQgd29ya2VyLgo+Pj4KPj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTI0MjQKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMSArCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPj4+IGluZGV4
IDQ3OTE5NWVjYmM2Yy4uZTg2MzBlZTMzMzM2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYwo+Pj4gQEAgLTQ2OSw2ICs0NjksNyBAQCBpbnQgaTkxNV9hY3RpdmVfd2FpdChz
dHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKPj4+ICAgICAgICBpZiAod2FpdF92YXJfZXZlbnRfaW50
ZXJydXB0aWJsZShyZWYsIGk5MTVfYWN0aXZlX2lzX2lkbGUocmVmKSkpCj4+PiAgICAgICAgICAg
ICAgICByZXR1cm4gLUVJTlRSOwo+Pj4gICAgCj4+PiArICAgICBmbHVzaF93b3JrKCZyZWYtPndv
cmspOwo+Pj4gICAgICAgIHJldHVybiAwOwo+Pj4gICAgfQo+Pj4gICAgCj4+Pgo+Pgo+PiBIbSwg
YnV0IHdha2VfdXBfd2FyIGlzIGluIHRoZSB3b3JrZXIgc28gaG93IGRvZXMgd2FpdF92YXJfZXZl
bnQgd2FrZSB0aGUKPj4gd2FpdGVyIHVwIGJlZm9yZSBpdCBoYXMgYmVlbiByZXRpcmVkPwo+IAo+
IFJlbWVtYmVyIHRoZSB3YWl0X2V2ZW50IHBhdHRlcm4gaXMgdG8gc2tpcCB0aGUgd2FpdCBpZiBD
T05EIGlzIGFscmVhZHkKPiBtZXQuIFNvIHNpbmNlIHRoZSBmaXJzdCB0aGluZyB0aGUgcmV0aXJl
bWVudCBkb2VzIGlzIHRoZQo+IGF0b21pY19kZWNfYW5kX3Rlc3QoKSwgd2UgY2FuIHNlZSByZWYt
PmNvdW50ID09IDAgdmVyeSBlYXJseSwgbG9uZwo+IGJlZm9yZSByZWYtPnJldGlyZSgpIGlzIGNh
bGxlZC4gT3VyIHNlbGZ0ZXN0IGlzIGNoZWNraW5nIHRoYXQgaWYKPiBpOTE1X2FjdGl2ZV93YWl0
KCkgcmVwb3J0cyBjb21wbGV0aW9uLCB0aGUgY2FsbGJhY2sgaGFzIGFsc28gcnVuIGFuZAo+IHRo
YXQgdGhlIGk5MTVfYWN0aXZlIGNhbiB0aGVuIGJlIGRlc3Ryb3llZC4KClRydWUhCgpSZXZpZXdl
ZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMs
CgpUdnJ0a28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
