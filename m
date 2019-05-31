Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB230BE2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 11:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B872B89233;
	Fri, 31 May 2019 09:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27BB89233;
 Fri, 31 May 2019 09:42:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:42:48 -0700
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:42:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 31 May 2019 11:42:40 +0200
Message-ID: <2471729.uJ4SIPptZY@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <155929533994.27302.4836840217803805430@skylake-alporthouse-com>
References: <20190531092916.23662-1-janusz.krzysztofik@linux.intel.com>
 <155929533994.27302.4836840217803805430@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v4] lib/i915/gem_mman: Add a helper
 for obtaining MMAP_GTT interface version
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpZGF5LCBNYXkgMzEsIDIwMTkgMTE6MzU6MzkgQU0gQ0VTVCBDaHJpcyBXaWxzb24gd3Jv
dGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDUtMzEgMTA6Mjk6MTYpCj4g
PiBGcm9tOiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BpbnRlbC5jb20+
Cj4gPiAKPiA+IElmIGEgdGVzdCBjYWxscyBhIGZ1bmN0aW9uIHdoaWNoIGRlcGVuZHMgb24gYXZh
aWxhYmlsaXR5IG9mIGEgc3BlY2lmaWMKPiA+IHZlcnNpb24gb2YgTU1BUF9HVFQgaW50ZXJmYWNl
LCBhbiBlcnJvciBtYXkgb2NjdXIgb24gdW5zdXBwb3J0ZWQgaGFyZHdhcmUuCj4gPiBUaGF0IG1h
eSBuZWdhdGl2ZWx5IGFmZmVjdCByZXN1bHRzIHJlcG9ydGVkIGJ5IGEgdGVzdCBmcmFtZXdvcmsg
ZXZlbiBpZgo+ID4gdGhhdCB0ZXN0IGlnbm9yZXMgdGhlIGZhaWx1cmUgYW5kIHN1Y2NlZWRlcy4K
PiA+IAo+ID4gVGhpcyBoZWxwZXIgd3JhcHMgdXAgYW4gSU9DVEwgY2FsbCB3aGljaCByZXR1cm5z
IGEgdmVyc2lvbiBudW1iZXIgb2YKPiA+IE1NQVBfR1RUIGludGVyZmFjZS4gIEl0IG1heSBiZSB1
c2VkIGJ5IHRlc3RzIHdoaWNoIHNob3VsZCBhZGp1c3QgdGhlaXIKPiA+IHNjb3BlIGRlcGVuZGlu
ZyBvbiBhdmFpbGFiaWxpdHkgb2YgYSBzcGVjaWZpYyB2ZXJzaW9uIG9mIE1NQVBfR1RUCj4gPiBp
bnRlcmZhY2UuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFu
dXN6LmtyenlzenRvZmlrQGludGVsLmNvbT4KPiA+IENjOiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFu
dG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+Cj4gPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWlj
aGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZWxvZzoKPiA+IHYzIC0+
IHY0Ogo+ID4gLSByZXR1cm4gZXJybm8gdmFsdWUgb24gZmFpbHVyZSAoQ2hyaXMgLSB0aGFua3Mh
KSwKPiA+IC0gY2xlYXIgZXJybm8gYmVmb3JlIHJldHVybiwgYXMgb3RoZXIgaGVscGVycyBkbywK
PiA+IC0gcmV3b3JkIHRoZSBoZWxwZXIgZG9jdW1lbnRhdGlvbiBhbmQgY29tbWl0IG1lc3NhZ2Ug
YWdhaW4gKENocmlzIC0KPiA+ICAgdGhhbmtzISkuCj4gPiAKPiA+IHYyIChpbnRlcm5hbCkgLT4g
djM6Cj4gPiAtIG1ha2UgdGhlIGNvZGUgbGVzcyBvYnN1Y3JlLCBtb3JlIGV4cGxpY2l0IChBbnRv
bmlvIC0gdGhhbmtzISksCj4gPiAtIHJld29yZCB0aGUgaGVscGVyIGRvY3VtZW50YXRpb24gYW5k
IGNvbW1pdCBtZXNzYWdlLgo+ID4gCj4gPiB2MSAoaW50ZXJuYWwpIC0+IHYyIChpbnRlcm5hbCk6
Cj4gPiAtIG1pbmltaXplIGZ1dHVyZSBwb3RlbnRpYWwgY29uZmxpY3RzIHdpdGggCj4gPiAgIGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8yOTQwNTMvP3Nlcmllcz01ODU1
MSZyZXY9MQo+ID4gICAobm8gcHJvZ3Jlc3Mgd2l0aCB0aGFuIG9uZSBzbyBub3Qgd2FpdGluZyBm
b3IgaXQgYW55IGxvbmdlcik6Cj4gPiAgIC0gY29udmVydCB0aGUgaGVscGVyIHRvIGEgZHJvcC1p
biByZXBsYWNlbWVudCBvZiB0aGUgb25lIGZyb20gdGhlCj4gPiAgICAgYWJvdmUgbWVudGlvbmVk
IHBhdGNoLCByZXR1cm5pbmcgbWFwcGFibGUgYXBlcnR1cmUgdmVyc2lvbiwgbm90Cj4gPiAgICAg
b25seSBpbmZvcm1hdGlvbiBvbiBpdHMgYXZhaWxhYmlsaXR5LAo+ID4gICAtIGRyb3AgYW55IG90
aGVyIHdyYXBwZXJzLAo+ID4gLSBkb2N1bWVudCB0aGUgaGVscGVyLAo+ID4gLSByZXdvcmQgY29t
bWl0IG1lc3NhZ2UuCj4gPiAKPiA+ICBsaWIvaTkxNS9nZW1fbW1hbi5jIHwgMjUgKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ID4gIGxpYi9pOTE1L2dlbV9tbWFuLmggfCAgMSArCj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9saWIv
aTkxNS9nZW1fbW1hbi5jIGIvbGliL2k5MTUvZ2VtX21tYW4uYwo+ID4gaW5kZXggM2NmOWE2YmIu
LjJjM2Q2OTcxIDEwMDY0NAo+ID4gLS0tIGEvbGliL2k5MTUvZ2VtX21tYW4uYwo+ID4gKysrIGIv
bGliL2k5MTUvZ2VtX21tYW4uYwo+ID4gQEAgLTQwLDYgKzQwLDMxIEBACj4gPiAgI2RlZmluZSBW
Ryh4KSBkbyB7fSB3aGlsZSAoMCkKPiA+ICAjZW5kaWYKPiA+ICAKPiA+ICsvKioKPiA+ICsgKiBn
ZW1fbW1hcF9fZ3R0X3ZlcnNpb246Cj4gPiArICogQGZkOiBvcGVuIGk5MTUgZHJtIGZpbGUgZGVz
Y3JpcHRvcgo+ID4gKyAqCj4gPiArICogVGhpcyBmdW5jdGlvbnMgd3JhcHMgdXAgYW4gSU9DVEwg
dG8gb2J0YWluIE1NQVBfR1RUIGludGVyZmFjZSB2ZXJzaW9uCj4gPiArICoKPiA+ICsgKiBSZXR1
cm5zOiBNTUFQX0dUVCBpbnRlcmZhY2UgdmVyc2lvbiwga2VybmVsIGVycm9yIGNvZGUgb24gZmFp
bHVyZS4KPiA+ICsgKi8KPiA+ICtpbnQgZ2VtX21tYXBfX2d0dF92ZXJzaW9uKGludCBmZCkKPiA+
ICt7Cj4gPiArICAgICAgIGludCBndHRfdmVyc2lvbiwgcmV0Owo+ID4gKyAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2V0cGFyYW0gZ3AgPSB7Cj4gPiArICAgICAgICAgICAgICAgLnBhcmFtID0gSTkx
NV9QQVJBTV9NTUFQX0dUVF9WRVJTSU9OLAo+ID4gKyAgICAgICAgICAgICAgIC52YWx1ZSA9ICZn
dHRfdmVyc2lvbiwKPiA+ICsgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKGlvY3RsKGZk
LCBEUk1fSU9DVExfSTkxNV9HRVRQQVJBTSwgJmdwKSkKPiA+ICsgICAgICAgICAgICAgICByZXQg
PSBlcnJubzsKPiAKPiByZXQgPSAtZXJybm87IDopCgpTb3JyeS4KCj4gUGV0cmkgYWxzbyBsaWtl
IGl0IHdoZW4gd2UgdGhlbiBzYXkgaWd0X2Fzc3VtZShyZXQpOwo+IAo+IE9yIG9uZSBjb3VsZCB1
c2UKPiAKPiB7Cj4gCWludCByZXN1bHQgPSAtRUlPOwo+IAlzdHJ1Y3QgLi4uIGdwID0gewo+IAkJ
LnBhcmFtID0gSTkxNV9QQVJBTV9NTUFQX0dUVF9WRVJTSU9OLAo+IAkJLnZhbHVlID0gJnJlc3Vs
dCwKPiAJfTsKPiAKPiAJaWYgKGlvY3RsKGZkLCBEUk1fSU9DVExfSTkxNV9HRVRQQVJBTSwgJmdw
KSkgewo+IAkJcmVzdWx0ID0gLWVycm5vOwo+IAkJaWd0X2Fzc3VtZShyZXN1bHQpOwoKT0ssIEkn
bGwgbGVhcm4gd2hhdCBpZ3RfYXNzdW1lKCkgaXMgZmlyc3QgdGhlbiB1c2UgaXQuCgpUaGFua3Ms
CkphbnVzegoKPiAJfQo+IAo+IAllcnJubyA9IDA7Cj4gCXJldHVybiByZXN1bHQ7Cj4gfQo+IAo+
IE5vdyBqdXN0IHB1dCBpdCB0byB1c2Ugc29tZXdoZXJlLgo+IC1DaHJpcwo+IAoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
