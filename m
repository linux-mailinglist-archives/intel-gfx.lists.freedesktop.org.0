Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E41B1142
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 16:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC356EC6A;
	Thu, 12 Sep 2019 14:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DD36EC6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:39:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 07:39:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="186146677"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO [10.252.3.203])
 ([10.252.3.203])
 by fmsmga007.fm.intel.com with ESMTP; 12 Sep 2019 07:39:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, 
 torvalds@linux-foundation.org
References: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
 <20190912125634.29054-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ae31587d-bd36-5f6a-6479-df23f3eda590@linux.intel.com>
Date: Thu, 12 Sep 2019 15:39:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912125634.29054-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/userptr: Acquire the page
 lock around set_page_dirty()"
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
Cc: tiwai@suse.de, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 leho@kraav.com, Jani Nikula <jani.nikula@intel.com>, MKoutny@suse.com,
 Martin.Wilck@suse.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzA5LzIwMTkgMTM6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgdXNlcnB0ciBw
dXRfcGFnZXMgY2FuIGJlIGNhbGxlZCBmcm9tIGluc2lkZSB0cnlfdG9fdW5tYXAsIGFuZCBzbwo+
IGVudGVycyB3aXRoIHRoZSBwYWdlIGxvY2sgaGVsZCBvbiBvbmUgb2YgdGhlIG9iamVjdCdzIGJh
Y2tpbmcgcGFnZXMuIFdlCj4gY2Fubm90IHRha2UgdGhlIHBhZ2UgbG9jayBvdXJzZWx2ZXMgZm9y
IGZlYXIgb2YgcmVjdXJzaW9uLgo+IAo+IFJlcG9ydGVkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8
bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gUmVwb3J0ZWQtYnk6IE1hcnRpbiBXaWxj
ayA8TWFydGluLldpbGNrQHN1c2UuY29tPgo+IFJlcG9ydGVkLWJ5OiBMZW8gS3JhYXYgPGxlaG9A
a3JhYXYuY29tPgo+IEZpeGVzOiBhYTU2YTI5MmNlNjIgKCJkcm0vaTkxNS91c2VycHRyOiBBY3F1
aXJlIHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdlX2RpcnR5KCkiKQo+IFJlZmVyZW5jZXM6
IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjAzMzE3Cj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDEw
ICstLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMK
PiBpbmRleCA3NGRhMzU2MTFkN2MuLjExYjIzMWMxODdjNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwo+IEBAIC02NzIsMTUgKzY3Miw3IEBAIGk5
MTVfZ2VtX3VzZXJwdHJfcHV0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
Cj4gICAKPiAgIAlmb3JfZWFjaF9zZ3RfcGFnZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKPiAg
IAkJaWYgKG9iai0+bW0uZGlydHkpCj4gLQkJCS8qCj4gLQkJCSAqIEFzIHRoaXMgbWF5IG5vdCBi
ZSBhbm9ueW1vdXMgbWVtb3J5IChlLmcuIHNobWVtKQo+IC0JCQkgKiBidXQgZXhpc3Qgb24gYSBy
ZWFsIG1hcHBpbmcsIHdlIGhhdmUgdG8gbG9jawo+IC0JCQkgKiB0aGUgcGFnZSBpbiBvcmRlciB0
byBkaXJ0eSBpdCAtLSBob2xkaW5nCj4gLQkJCSAqIHRoZSBwYWdlIHJlZmVyZW5jZSBpcyBub3Qg
c3VmZmljaWVudCB0bwo+IC0JCQkgKiBwcmV2ZW50IHRoZSBpbm9kZSBmcm9tIGJlaW5nIHRydW5j
YXRlZC4KPiAtCQkJICogUGxheSBzYWZlIGFuZCB0YWtlIHRoZSBsb2NrLgo+IC0JCQkgKi8KPiAt
CQkJc2V0X3BhZ2VfZGlydHlfbG9jayhwYWdlKTsKPiArCQkJc2V0X3BhZ2VfZGlydHkocGFnZSk7
Cj4gICAKPiAgIAkJbWFya19wYWdlX2FjY2Vzc2VkKHBhZ2UpOwo+ICAgCQlwdXRfcGFnZShwYWdl
KTsKPiAKCkFja2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
