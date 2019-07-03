Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC45E2C5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 13:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA17F6E11A;
	Wed,  3 Jul 2019 11:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9686E11A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 11:23:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 04:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184725975"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 04:23:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <629db077-98c1-d547-e665-2ec3cdac542d@linux.intel.com>
Date: Wed, 3 Jul 2019 12:23:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915/gt: Use caller provided
 forcewake for intel_mocs_init_engine
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA3LzIwMTkgMTA6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBEdXJpbmcgcG9zdC1y
ZXNldCByZXN1bWUsIHdlIGNhbGwgaW50ZWxfbW9jc19pbml0X2VuZ2luZSB0byByZWluaXRpYWxp
c2UKPiB0aGUgTU9DUyByZWdpc3RlcnMuIFN1cHJpc2luZ2x5LCBlc3BlY2lhbGx5IHdoZW4gZW5o
YW5jZWQgYnkgbG9ja2RlcCwKPiB0aGUgYWNxdWlzaXRpb24gb2YgdGhlIGZvcmNld2FrZSBsb2Nr
IGFyb3VuZCBlYWNoIHJlZ2lzdGVyIHdyaXRlIHRha2VzIGEKPiBzdWJzdGFudGlhbCBwb3J0aW9u
IG9mIHRoZSByZXNldCB0aW1lLiBXZSBkb24ndCBuZWVkIHRvIHVzZSB0aGUKPiBpbmRpdmlkdWFs
IGZvcmNld2FrZSBoZXJlIGFzIHdlIGNhbiBhc3N1bWUgdGhhdCB0aGUgY2FsbGVyIGlzIGhvbGRp
bmcgYQo+IGJsYW5rZXQgZm9yY2V3YWtlIGZvciB0aGUgcmVzZXQmcmVzdW1lIGFuZCB0aGUgcmVz
dW1lIGlzIHNlcmlhbGlzZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9tb2NzLmMgfCAxNSArKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21vY3MuYwo+IGluZGV4IGFlNmNiZjBkNTE3Yy4uMjkwYTVlOWI5MGI5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IEBAIC0zNDYsNiArMzQ2LDkgQEAgdm9pZCBpbnRl
bF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIAl1
bnNpZ25lZCBpbnQgaW5kZXg7Cj4gICAJdTMyIHVudXNlZF92YWx1ZTsKPiAgIAo+ICsJLyogQ2Fs
bGVkIHVuZGVyIGEgYmxhbmtldCBmb3JjZXdha2UgKi8KPiArCWFzc2VydF9mb3JjZXdha2VzX2Fj
dGl2ZSh1bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwo+ICsKCkFzc2VydCBpcyBzdHJpY3RseSBzcGVh
a2luZyBhIGJpdCB3ZWFrIHNpbmNlIGZvcmNld2FrZSBzdGF0dXMgY2FuIAp0aGVvcmV0aWNhbGx5
IGNoYW5nZSB1bnRpbCB0aGUgYWN0dWFsIGFjY2VzcyBiZWxvdy4gQnV0IGluIG91ciBjdXJyZW50
IApjb2RlIHdlIGluZGVlZCBob2xkIGl0IGZvciB0aGUgd2hvbGUgcmVzZXQuCgpJIGRvbid0IGhh
dmUgYW55IGFjdHVhbCBpZGVhcyBvbiBob3cgdG8gZnVuZGFtZW50YWxseSBpbXByb3ZlIHRoZSAK
YXNzZXJ0LiBUaG91Z2h0IHRvIGhhdmUgaXQgYWZ0ZXIgdGhlIHdyaXRlcyBpcyB0aGUgb25seSB0
aGluZyB3aGljaCBjYW1lIAp0byBtaW5kLiBUaG91Z2h0cz8KClJlZ2FyZHMsCgpUdnJ0a28KCj4g
ICAJaWYgKCFnZXRfbW9jc19zZXR0aW5ncyhndCwgJnRhYmxlKSkKPiAgIAkJcmV0dXJuOwo+ICAg
Cj4gQEAgLTM1NSwxNiArMzU4LDE2IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJZm9yIChpbmRleCA9IDA7IGluZGV4IDwg
dGFibGUuc2l6ZTsgaW5kZXgrKykgewo+ICAgCQl1MzIgdmFsdWUgPSBnZXRfZW50cnlfY29udHJv
bCgmdGFibGUsIGluZGV4KTsKPiAgIAo+IC0JCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCj4g
LQkJCQkgICBtb2NzX3JlZ2lzdGVyKGVuZ2luZS0+aWQsIGluZGV4KSwKPiAtCQkJCSAgIHZhbHVl
KTsKPiArCQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLAo+ICsJCQkJICAgICAgbW9jc19y
ZWdpc3RlcihlbmdpbmUtPmlkLCBpbmRleCksCj4gKwkJCQkgICAgICB2YWx1ZSk7Cj4gICAJfQo+
ICAgCj4gICAJLyogQWxsIHJlbWFpbmluZyBlbnRyaWVzIGFyZSBhbHNvIHVudXNlZCAqLwo+ICAg
CWZvciAoOyBpbmRleCA8IHRhYmxlLm5fZW50cmllczsgaW5kZXgrKykKPiAtCQlpbnRlbF91bmNv
cmVfd3JpdGUodW5jb3JlLAo+IC0JCQkJICAgbW9jc19yZWdpc3RlcihlbmdpbmUtPmlkLCBpbmRl
eCksCj4gLQkJCQkgICB1bnVzZWRfdmFsdWUpOwo+ICsJCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsCj4gKwkJCQkgICAgICBtb2NzX3JlZ2lzdGVyKGVuZ2luZS0+aWQsIGluZGV4KSwKPiAr
CQkJCSAgICAgIHVudXNlZF92YWx1ZSk7Cj4gICB9Cj4gICAKPiAgIC8qKgo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
