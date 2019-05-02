Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABD211B1D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D613C89453;
	Thu,  2 May 2019 14:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7636389453
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:16:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:16:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140682039"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 07:16:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-7-chris@chris-wilson.co.uk>
 <8c7b0892-d100-f64b-37c0-e601471708a8@linux.intel.com>
 <155680565207.9023.4775855077538661232@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1e8bc905-0663-b0de-6605-8d788bf6d31d@linux.intel.com>
Date: Thu, 2 May 2019 15:16:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155680565207.9023.4775855077538661232@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Stop spinning for DROP_IDLE
 (debugfs/i915_drop_caches)
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

Ck9uIDAyLzA1LzIwMTkgMTU6MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAyIDE0OjM0OjExKQo+Pgo+PiBPbiAwMS8wNS8yMDE5IDEyOjQ1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJZiB0aGUgdXNlciBpcyByYWNpbmcgYSBjYWxsIHRv
IGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcyB3aXRoIG9uZ29pbmcKPj4+IHN1Ym1pc3Npb24gZnJv
bSBhbm90aGVyIHRocmVhZC9wcm9jZXNzLCB3ZSBtYXkgbmV2ZXIgZW5kIHVwIGlkbGluZyB0aGUK
Pj4+IEdQVSBhbmQgYmUgdW5pbnRlcnJ1cHRpYmx5IHNwaW5uaW5nIGluIGRlYnVnZnMvaTkxNV9k
cm9wX2NhY2hlcyB0cnlpbmcKPj4+IHRvIGNhdGNoIGFuIGlkbGUgbW9tZW50Lgo+Pj4KPj4+IEp1
c3QgZmx1c2ggdGhlIHdvcmsgb25jZSwgdGhhdCBzaG91bGQgYmUgZW5vdWdoIHRvIHBhcmsgdGhl
IHN5c3RlbSB1bmRlcgo+Pj4gY29ycmVjdCBjb25kaXRpb25zLiBPdXRzaWRlIG9mIHRob3NlIHdl
IGVpdGhlciBoYXZlIGEgZHJpdmVyIGJ1ZyBvciB0aGUKPj4+IHVzZXIgaXMgcmFjaW5nIHRoZW1z
ZWx2ZXMuIFNhZGx5LCBiZWNhdXNlIHRoZSB1c2VyIG1heSBiZSBwcm92b2tpbmcgdGhlCj4+PiB1
bndhbnRlZCBzaXR1YXRpb24gd2UgY2FuJ3QgcHV0IGEgd2FybiBoZXJlIHRvIGF0dHJhY3QgYXR0
ZW50aW9uIHRvIGEKPj4+IHByb2JhYmxlIGJ1Zy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IC0tLQo+Pj4gICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA0ICstLS0KPj4+ICAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYwo+Pj4gaW5kZXggN2U4ODk4ZDBiNzhiLi4yZWNlZmFjYjFlNjYgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPj4+IEBAIC0zOTMzLDkgKzM5
MzMsNyBAQCBpOTE1X2Ryb3BfY2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQo+Pj4gICAg
ICAgIGZzX3JlY2xhaW1fcmVsZWFzZShHRlBfS0VSTkVMKTsKPj4+ICAgIAo+Pj4gICAgICAgIGlm
ICh2YWwgJiBEUk9QX0lETEUpIHsKPj4+IC0gICAgICAgICAgICAgZG8gewo+Pj4gLSAgICAgICAg
ICAgICAgICAgICAgIGZsdXNoX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3JrKTsK
Pj4+IC0gICAgICAgICAgICAgfSB3aGlsZSAoUkVBRF9PTkNFKGk5MTUtPmd0LmF3YWtlKSk7Cj4+
PiArICAgICAgICAgICAgIGZsdXNoX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3Jr
KTsKPj4+ICAgICAgICAgICAgICAgIGZsdXNoX3dvcmsoJmk5MTUtPmdlbS5pZGxlX3dvcmspOwo+
Pj4gICAgICAgIH0KPj4+ICAgIAo+Pj4KPj4KPj4gV2hhdCB3ZXJlIHN1cHBvc2VkIHRvIGJlIHNl
bWFudGljcyBvZiBEUk9QX0lETEU/IE5vdyBpdCBzZWVtcyByYXRoZXIKPj4gd2Vhay4gU2hvdWxk
IGl0IGZvciBpbnN0YW5jZSBhbHNvIGltcGx5IERST1BfQUNUSVZFPwo+IAo+IEFsbCBJIG5lZWQg
Zm9yIERST1BfSURMRSBpcyB0aGF0IHRoZSBpZGxlIHdvcmtlciBpcyBmbHVzaGVkLiBJJ3ZlIGFs
d2F5cwo+IGFzc3VtZWQgeW91IHdvdWxkIHBhc3MgaW4gRFJPUF9BQ1RJVkUgfCBEUk9QX1JFVElS
RSB8IERST1BfSURMRSBhcyB0aGUKPiB0cmlmZWN0YS4KPiAKPiBUaGUgYmlnZ2VzdCBwcm9ibGVt
IGhlcmUgaXMgdGhhdCdzIGl0IGlzIGFuIHVuaW50ZXJydXB0aWJsZSBsb29wLgoKT2theS4uIGxl
dHMgc2VlIGlmIElHVCBpcyBwbGF5aW5nIGJhbGwuIDopCgpSZXZpZXdlZC1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
