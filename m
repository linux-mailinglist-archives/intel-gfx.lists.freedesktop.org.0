Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B1F6FF41
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 14:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01ED489C6A;
	Mon, 22 Jul 2019 12:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AF789C6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 12:08:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 05:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368495218"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 05:08:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190719130423.11195-1-chris@chris-wilson.co.uk>
 <20190719172145.7283-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fb7711e6-8f9a-6221-5f9f-605b520d671b@linux.intel.com>
Date: Mon, 22 Jul 2019 13:08:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719172145.7283-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Hide unshrinkable context objects
 from the shrinker
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

Ck9uIDE5LzA3LzIwMTkgMTg6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgc2hyaW5rZXIg
Y2Fubm90IHRvdWNoIG9iamVjdHMgdXNlZCBieSB0aGUgY29udGV4dHMgKGxvZ2ljYWwgc3RhdGUK
PiBhbmQgcmluZykuIEN1cnJlbnRseSB3ZSBtYXJrIHRob3NlIGFzICJwaW5fZ2xvYmFsIiB0byBs
ZXQgdGhlIHNocmlua2VyCj4gc2tpcCBvdmVyIHRoZW0sIGhvd2V2ZXIsIGlmIHdlIHJlbW92ZSB0
aGVtIGZyb20gdGhlIHNocmlua2VyIGxpc3RzCj4gZW50aXJlbHksIHdlIGRvbid0IGV2ZW50IGhh
dmUgdG8gaW5jbHVkZSB0aGVtIGluIG91ciBzaHJpbmsgYWNjb3VudGluZy4KPiAKPiBCeSBrZWVw
aW5nIHRoZSB1bnNocmlua2FibGUgb2JqZWN0cyBpbiBvdXIgc2hyaW5rZXIgdHJhY2tpbmcsIHdl
IHJlcG9ydAo+IGEgbGFyZ2UgbnVtYmVyIG9mIG9iamVjdHMgYXZhaWxhYmxlIHRvIGJlIHNocnVu
aywgYW5kIGxlYXZlIHRoZSBzaHJpbmtlcgo+IGRlZXBseSB1bnNhdGlzZmllZCB3aGVuIHdlIGZh
aWwgdG8gcmVjbGFpbSB0aG9zZS4gVGhlIHNocmlua2VyIHdpbGwKPiBwZXJzaXN0IGluIHRyeWlu
ZyB0byByZWNsYWltIHRoZSB1bmF2YWlsYWJsZSBvYmplY3RzLCBmb3JjaW5nIHRoZSBzeXN0ZW0K
PiBpbnRvIGEgbGl2ZWxvY2sgKG5vdCBldmVuIGhpdHRpbmcgdGhlIGRyZWFkIG9vbWtpbGxlciku
Cj4gCj4gdjI6IEV4dGVuZCB1bnNocmlua2FibGUgcHJvdGVjdGlvbiBmb3IgcGVybWEtcGlubmVk
IHNjcmF0Y2ggYW5kIGd1Ywo+IGFsbG9jYXRpb25zIChUdnJ0a28pCj4gdjM6IE5vdGljZSB0aGF0
IHdlIHNob3VsZCBiZSBwaW5uZWQgd2hlbiBtYXJraW5nIHVuc2hyaW5rYWJsZSBhbmQgc28gdGhl
Cj4gbGluayBjYW5ub3QgYmUgZW1wdHk7IG1lcmdlIGR1cGxpY2F0ZSBwYXRocy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgIHwgMTEgKy0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgfCAgNCArKwo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgfCAxMyArLS0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgfCA1OCArKysrKysr
KysrKysrKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
ICAgICAgfCAgNCArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAg
ICAgICAgfCAgMyArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jICAgfCAxNyArKystLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Yy5jICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
ICAgICAgICAgIHwgIDMgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAg
ICAgICAgICAgIHwgMTYgKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5o
ICAgICAgICAgICAgICB8ICA0ICsrCj4gICAxMSBmaWxlcyBjaGFuZ2VkLCAxMDIgaW5zZXJ0aW9u
cygrKSwgMzMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuYwo+IGluZGV4IGQ1MTk3YTJhMTA2Zi4uNGVhOTdmY2E5YzM1IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+IEBAIC02Myw2ICs2
Myw4IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKPiAgIAlzcGluX2xvY2tfaW5pdCgmb2JqLT52bWEubG9jayk7Cj4gICAJSU5JVF9M
SVNUX0hFQUQoJm9iai0+dm1hLmxpc3QpOwo+ICAgCj4gKwlJTklUX0xJU1RfSEVBRCgmb2JqLT5t
bS5saW5rKTsKPiArCj4gICAJSU5JVF9MSVNUX0hFQUQoJm9iai0+bHV0X2xpc3QpOwo+ICAgCUlO
SVRfTElTVF9IRUFEKCZvYmotPmJhdGNoX3Bvb2xfbGluayk7Cj4gICAKPiBAQCAtMjczLDE0ICsy
NzUsNyBAQCB2b2lkIGk5MTVfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
Z2VtX29iaikKPiAgIAkgKiBvciBlbHNlIHdlIG1heSBvb20gd2hpbHN0IHRoZXJlIGFyZSBwbGVu
dHkgb2YgZGVmZXJyZWQKPiAgIAkgKiBmcmVlZCBvYmplY3RzLgo+ICAgCSAqLwo+IC0JaWYgKGk5
MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSAmJgo+IC0JICAgIGk5MTVfZ2VtX29iamVjdF9p
c19zaHJpbmthYmxlKG9iaikpIHsKPiAtCQl1bnNpZ25lZCBsb25nIGZsYWdzOwo+IC0KPiAtCQlz
cGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKPiAtCQlsaXN0X2Rl
bF9pbml0KCZvYmotPm1tLmxpbmspOwo+IC0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUt
Pm1tLm9ial9sb2NrLCBmbGFncyk7Cj4gLQl9Cj4gKwlpOTE1X2dlbV9vYmplY3RfbWFrZV91bnNo
cmlua2FibGUob2JqKTsKPiAgIAo+ICAgCS8qCj4gICAJICogU2luY2Ugd2UgcmVxdWlyZSBibG9j
a2luZyBvbiBzdHJ1Y3RfbXV0ZXggdG8gdW5iaW5kIHRoZSBmcmVlZAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBpbmRleCA2N2FlYTA3ZWEwMTkuLjM3MTRj
ZjIzNGQ2NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmgKPiBAQCAtMzk0LDYgKzM5NCwxMCBAQCBpOTE1X2dlbV9vYmplY3RfcGluX3RvX2Rpc3BsYXlf
cGxhbmUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCQkgICAgIHVuc2ln
bmVkIGludCBmbGFncyk7Cj4gICB2b2lkIGk5MTVfZ2VtX29iamVjdF91bnBpbl9mcm9tX2Rpc3Bs
YXlfcGxhbmUoc3RydWN0IGk5MTVfdm1hICp2bWEpOwo+ICAgCj4gK3ZvaWQgaTkxNV9nZW1fb2Jq
ZWN0X21ha2VfdW5zaHJpbmthYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+
ICt2b2lkIGk5MTVfZ2VtX29iamVjdF9tYWtlX3Nocmlua2FibGUoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7Cj4gK3ZvaWQgaTkxNV9nZW1fb2JqZWN0X21ha2VfcHVyZ2VhYmxlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+ICsKPiAgIHN0YXRpYyBpbmxpbmUgYm9v
bCBjcHVfd3JpdGVfbmVlZHNfY2xmbHVzaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQo+ICAgewo+ICAgCWlmIChvYmotPmNhY2hlX2RpcnR5KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9wYWdlcy5jCj4gaW5kZXggYjM2YWQyNjlmNGVhLi45MmFkM2NjMjIwZTMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwo+IEBAIC0x
NTMsMjQgKzE1MywxMyBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX29iamVjdF9yZXNldF9wYWdl
X2l0ZXIoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiAgIHN0cnVjdCBzZ190YWJs
ZSAqCj4gICBfX2k5MTVfZ2VtX29iamVjdF91bnNldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQo+ICAgewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KG9iai0+YmFzZS5kZXYpOwo+ICAgCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7Cj4gICAK
PiAgIAlwYWdlcyA9IGZldGNoX2FuZF96ZXJvKCZvYmotPm1tLnBhZ2VzKTsKPiAgIAlpZiAoSVNf
RVJSX09SX05VTEwocGFnZXMpKQo+ICAgCQlyZXR1cm4gcGFnZXM7Cj4gICAKPiAtCWlmIChpOTE1
X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7Cj4gLQkJdW5zaWduZWQgbG9uZyBmbGFn
czsKPiAtCj4gLQkJc3Bpbl9sb2NrX2lycXNhdmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7
Cj4gLQo+IC0JCWxpc3RfZGVsKCZvYmotPm1tLmxpbmspOwo+IC0JCWk5MTUtPm1tLnNocmlua19j
b3VudC0tOwo+IC0JCWk5MTUtPm1tLnNocmlua19tZW1vcnkgLT0gb2JqLT5iYXNlLnNpemU7Cj4g
LQo+IC0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7
Cj4gLQl9Cj4gKwlpOTE1X2dlbV9vYmplY3RfbWFrZV91bnNocmlua2FibGUob2JqKTsKPiAgIAo+
ICAgCWlmIChvYmotPm1tLm1hcHBpbmcpIHsKPiAgIAkJdm9pZCAqcHRyOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCj4gaW5kZXggM2Y0YzZiZGNjM2Mz
Li41YWI3ZGY1M2MyYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3Nocmlua2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2hyaW5rZXIuYwo+IEBAIC01MzAsMyArNTMwLDYxIEBAIHZvaWQgaTkxNV9nZW1fc2hyaW5r
ZXJfdGFpbnRzX211dGV4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgCWlmICh1
bmxvY2spCj4gICAJCW11dGV4X3JlbGVhc2UoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXguZGVwX21h
cCwgMCwgX1JFVF9JUF8pOwo+ICAgfQo+ICsKPiArI2RlZmluZSBvYmpfdG9faTkxNShvYmpfXykg
dG9faTkxNSgob2JqX18pLT5iYXNlLmRldikKPiArCj4gK3ZvaWQgaTkxNV9nZW1fb2JqZWN0X21h
a2VfdW5zaHJpbmthYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gK3sKPiAr
CS8qCj4gKwkgKiBXZSBjYW4gb25seSBiZSBjYWxsZWQgd2hpbGUgdGhlIHBhZ2VzIGFyZSBwaW5u
ZWQgb3Igd2hlbgo+ICsJICogdGhlIHBhZ2VzIGFyZSByZWxlYXNlZC4gSWYgcGlubmVkLCB3ZSBz
aG91bGQgb25seSBiZSBjYWxsZWQKPiArCSAqIGZyb20gYSBzaW5nbGUgY2FsbGVyIHVuZGVyIGNv
bnRyb2xsZWQgY29uZGl0aW9uczsgYW5kIG9uIHJlbGVhc2UKPiArCSAqIG9ubHkgb25lIGNhbGxl
ciBtYXkgcmVsZWFzZSB1cy4gTmVpdGhlciB0aGUgdHdvIG1heSBjcm9zcy4KPiArCSAqLwo+ICsJ
aWYgKCFsaXN0X2VtcHR5KCZvYmotPm1tLmxpbmspKSB7IC8qIHBpbm5lZCBieSBjYWxsZXIgKi8K
Ckl0J3MgbWFraW5nIG1lIG5lcnZvdXMuIEFyZSB5b3UgYXZvaWRpbmcgY2hlY2tpbmcgdW5kZXIg
dGhlIGxvY2sganVzdCBhcyAKYW4gb3B0aW1pc2F0aW9uPyBJdCdzIG5vdCBvbiBhbnkgaG90IHBh
dGhzLCBvciBhdCBsZWFzdCBub3QgdmVyeSBob3Q/IApSaW5nL2NvbnRleHQgcGluIGFuZCB0aGF0
Li4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gKwkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBvYmpfdG9faTkxNShvYmopOwo+ICsJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKwo+ICsJCXNw
aW5fbG9ja19pcnFzYXZlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwo+ICsJCUdFTV9CVUdf
T04obGlzdF9lbXB0eSgmb2JqLT5tbS5saW5rKSk7Cj4gKwo+ICsJCWxpc3RfZGVsX2luaXQoJm9i
ai0+bW0ubGluayk7Cj4gKwkJaTkxNS0+bW0uc2hyaW5rX2NvdW50LS07Cj4gKwkJaTkxNS0+bW0u
c2hyaW5rX21lbW9yeSAtPSBvYmotPmJhc2Uuc2l6ZTsKPiArCj4gKwkJc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKPiArCX0KPiArfQo+ICsKPiArc3Rh
dGljIHZvaWQgX19pOTE1X2dlbV9vYmplY3RfbWFrZV9zaHJpbmthYmxlKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCj4gKwkJCQkJICAgICAgc3RydWN0IGxpc3RfaGVhZCAqaGVhZCkK
PiArewo+ICsJR0VNX0JVR19PTighaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKTsKPiAr
CUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJm9iai0+bW0ubGluaykpOwo+ICsKPiArCWlmIChpOTE1
X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7Cj4gKwkJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBvYmpfdG9faTkxNShvYmopOwo+ICsJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7
Cj4gKwo+ICsJCXNwaW5fbG9ja19pcnFzYXZlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwo+
ICsJCUdFTV9CVUdfT04oIWtyZWZfcmVhZCgmb2JqLT5iYXNlLnJlZmNvdW50KSk7Cj4gKwo+ICsJ
CWxpc3RfYWRkX3RhaWwoJm9iai0+bW0ubGluaywgaGVhZCk7Cj4gKwkJaTkxNS0+bW0uc2hyaW5r
X2NvdW50Kys7Cj4gKwkJaTkxNS0+bW0uc2hyaW5rX21lbW9yeSArPSBvYmotPmJhc2Uuc2l6ZTsK
PiArCj4gKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdz
KTsKPiArCX0KPiArfQo+ICsKPiArdm9pZCBpOTE1X2dlbV9vYmplY3RfbWFrZV9zaHJpbmthYmxl
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gK3sKPiArCV9faTkxNV9nZW1fb2Jq
ZWN0X21ha2Vfc2hyaW5rYWJsZShvYmosCj4gKwkJCQkJICAmb2JqX3RvX2k5MTUob2JqKS0+bW0u
c2hyaW5rX2xpc3QpOwo+ICt9Cj4gKwo+ICt2b2lkIGk5MTVfZ2VtX29iamVjdF9tYWtlX3B1cmdl
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICt7Cj4gKwlfX2k5MTVfZ2Vt
X29iamVjdF9tYWtlX3Nocmlua2FibGUob2JqLAo+ICsJCQkJCSAgJm9ial90b19pOTE1KG9iaikt
Pm1tLnB1cmdlX2xpc3QpOwo+ICt9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYwo+IGluZGV4IDllNGY1MWNlNTJmZi4uOTgzMGVkZGExYWRlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+IEBAIC0xMTgsNyArMTE4LDcgQEAgc3RhdGlj
IGludCBfX2NvbnRleHRfcGluX3N0YXRlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICAgCSAqIEFu
ZCBtYXJrIGl0IGFzIGEgZ2xvYmFsbHkgcGlubmVkIG9iamVjdCB0byBsZXQgdGhlIHNocmlua2Vy
IGtub3cKPiAgIAkgKiBpdCBjYW5ub3QgcmVjbGFpbSB0aGUgb2JqZWN0IHVudGlsIHdlIHJlbGVh
c2UgaXQuCj4gICAJICovCj4gLQl2bWEtPm9iai0+cGluX2dsb2JhbCsrOwo+ICsJaTkxNV92bWFf
bWFrZV91bnNocmlua2FibGUodm1hKTsKPiAgIAl2bWEtPm9iai0+bW0uZGlydHkgPSB0cnVlOwo+
ICAgCj4gICAJcmV0dXJuIDA7Cj4gQEAgLTEyNiw4ICsxMjYsOCBAQCBzdGF0aWMgaW50IF9fY29u
dGV4dF9waW5fc3RhdGUoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gICAKPiAgIHN0YXRpYyB2b2lk
IF9fY29udGV4dF91bnBpbl9zdGF0ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgIHsKPiAtCXZt
YS0+b2JqLT5waW5fZ2xvYmFsLS07Cj4gICAJX19pOTE1X3ZtYV91bnBpbih2bWEpOwo+ICsJaTkx
NV92bWFfbWFrZV9zaHJpbmthYmxlKHZtYSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIF9f
aW50ZWxfY29udGV4dF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gaW5kZXggZjdlNjlkYjQwMTlkLi5kZTBkNmFkNWY5M2Mg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPiBAQCAtMjMxLDcgKzIzMSw4IEBA
IGludCBpbnRlbF9ndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQg
aW50IHNpemUpCj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBlcnJfdW5yZWY7Cj4gICAKPiAtCWd0
LT5zY3JhdGNoID0gdm1hOwo+ICsJZ3QtPnNjcmF0Y2ggPSBpOTE1X3ZtYV9tYWtlX3Vuc2hyaW5r
YWJsZSh2bWEpOwo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIAo+ICAgZXJyX3VucmVmOgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiBpbmRleCAzOGVjMTFhZTZl
ZDcuLmQ4ZWZiODhmMzNmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nYnVmZmVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nYnVmZmVyLmMKPiBAQCAtMTIzOCw3ICsxMjM4LDcgQEAgaW50IGludGVsX3JpbmdfcGluKHN0
cnVjdCBpbnRlbF9yaW5nICpyaW5nKQo+ICAgCQlnb3RvIGVycl9yaW5nOwo+ICAgCX0KPiAgIAo+
IC0Jdm1hLT5vYmotPnBpbl9nbG9iYWwrKzsKPiArCWk5MTVfdm1hX21ha2VfdW5zaHJpbmthYmxl
KHZtYSk7Cj4gICAKPiAgIAlHRU1fQlVHX09OKHJpbmctPnZhZGRyKTsKPiAgIAlyaW5nLT52YWRk
ciA9IGFkZHI7Cj4gQEAgLTEyNjcsNiArMTI2Nyw4IEBAIHZvaWQgaW50ZWxfcmluZ19yZXNldChz
dHJ1Y3QgaW50ZWxfcmluZyAqcmluZywgdTMyIHRhaWwpCj4gICAKPiAgIHZvaWQgaW50ZWxfcmlu
Z191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiAgIHsKPiArCXN0cnVjdCBpOTE1X3Zt
YSAqdm1hID0gcmluZy0+dm1hOwo+ICsKPiAgIAlpZiAoIWF0b21pY19kZWNfYW5kX3Rlc3QoJnJp
bmctPnBpbl9jb3VudCkpCj4gICAJCXJldHVybjsKPiAgIAo+IEBAIC0xMjc1LDE4ICsxMjc3LDE3
IEBAIHZvaWQgaW50ZWxfcmluZ191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiAgIAkv
KiBEaXNjYXJkIGFueSB1bnVzZWQgYnl0ZXMgYmV5b25kIHRoYXQgc3VibWl0dGVkIHRvIGh3LiAq
Lwo+ICAgCWludGVsX3JpbmdfcmVzZXQocmluZywgcmluZy0+dGFpbCk7Cj4gICAKPiAtCUdFTV9C
VUdfT04oIXJpbmctPnZtYSk7Cj4gLQlpOTE1X3ZtYV91bnNldF9nZ3R0X3dyaXRlKHJpbmctPnZt
YSk7Cj4gLQlpZiAoaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFibGUocmluZy0+dm1hKSkKPiAt
CQlpOTE1X3ZtYV91bnBpbl9pb21hcChyaW5nLT52bWEpOwo+ICsJaTkxNV92bWFfdW5zZXRfZ2d0
dF93cml0ZSh2bWEpOwo+ICsJaWYgKGk5MTVfdm1hX2lzX21hcF9hbmRfZmVuY2VhYmxlKHZtYSkp
Cj4gKwkJaTkxNV92bWFfdW5waW5faW9tYXAodm1hKTsKPiAgIAllbHNlCj4gLQkJaTkxNV9nZW1f
b2JqZWN0X3VucGluX21hcChyaW5nLT52bWEtPm9iaik7Cj4gKwkJaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX21hcCh2bWEtPm9iaik7Cj4gICAKPiAgIAlHRU1fQlVHX09OKCFyaW5nLT52YWRkcik7Cj4g
ICAJcmluZy0+dmFkZHIgPSBOVUxMOwo+ICAgCj4gLQlyaW5nLT52bWEtPm9iai0+cGluX2dsb2Jh
bC0tOwo+IC0JaTkxNV92bWFfdW5waW4ocmluZy0+dm1hKTsKPiArCWk5MTVfdm1hX3VucGluKHZt
YSk7Cj4gKwlpOTE1X3ZtYV9tYWtlX3B1cmdlYWJsZSh2bWEpOwo+ICAgCj4gICAJaW50ZWxfdGlt
ZWxpbmVfdW5waW4ocmluZy0+dGltZWxpbmUpOwo+ICAgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCj4gaW5kZXggODNmMmMxOTczNzVmLi45YzE3MTI3NDg1MjcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+IEBAIC01OTcsNyArNTk3LDcg
QEAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9ndWNfYWxsb2NhdGVfdm1hKHN0cnVjdCBpbnRlbF9n
dWMgKmd1YywgdTMyIHNpemUpCj4gICAJCWdvdG8gZXJyOwo+ICAgCX0KPiAgIAo+IC0JcmV0dXJu
IHZtYTsKPiArCXJldHVybiBpOTE1X3ZtYV9tYWtlX3Vuc2hyaW5rYWJsZSh2bWEpOwo+ICAgCj4g
ICBlcnI6Cj4gICAJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCj4gaW5kZXggNmI4NGQwNGE2YTI4Li5jNDNmMjcwMDg1ZjUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0zNjMsOCArMzYzLDkgQEAgc3RhdGlj
IGludCBpOTE1X2dlbV9vYmplY3RfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEp
Cj4gICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBub2RlX3RvX2k5MTUobS0+cHJp
dmF0ZSk7Cj4gICAJaW50IHJldDsKPiAgIAo+IC0Jc2VxX3ByaW50ZihtLCAiJXUgc2hyaW5rYWJs
ZSBvYmplY3RzLCAlbGx1IGJ5dGVzXG4iLAo+ICsJc2VxX3ByaW50ZihtLCAiJXUgc2hyaW5rYWJs
ZSBbJXUgZnJlZV0gb2JqZWN0cywgJWxsdSBieXRlc1xuIiwKPiAgIAkJICAgaTkxNS0+bW0uc2hy
aW5rX2NvdW50LAo+ICsJCSAgIGF0b21pY19yZWFkKCZpOTE1LT5tbS5mcmVlX2NvdW50KSwKPiAg
IAkJICAgaTkxNS0+bW0uc2hyaW5rX21lbW9yeSk7Cj4gICAKPiAgIAlzZXFfcHV0YyhtLCAnXG4n
KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiBpbmRleCBlYjE2YTFhOTNiYmMuLmI1MmY3MWUw
YWRlNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwo+IEBAIC0xMDMwLDYgKzEwMzAsMjIg
QEAgaW50IGk5MTVfdm1hX3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgIAlyZXR1cm4g
MDsKPiAgIH0KPiAgIAo+ICtzdHJ1Y3QgaTkxNV92bWEgKmk5MTVfdm1hX21ha2VfdW5zaHJpbmth
YmxlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICt7Cj4gKwlpOTE1X2dlbV9vYmplY3RfbWFrZV91
bnNocmlua2FibGUodm1hLT5vYmopOwo+ICsJcmV0dXJuIHZtYTsKPiArfQo+ICsKPiArdm9pZCBp
OTE1X3ZtYV9tYWtlX3Nocmlua2FibGUoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gK3sKPiArCWk5
MTVfZ2VtX29iamVjdF9tYWtlX3Nocmlua2FibGUodm1hLT5vYmopOwo+ICt9Cj4gKwo+ICt2b2lk
IGk5MTVfdm1hX21ha2VfcHVyZ2VhYmxlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICt7Cj4gKwlp
OTE1X2dlbV9vYmplY3RfbWFrZV9wdXJnZWFibGUodm1hLT5vYmopOwo+ICt9Cj4gKwo+ICAgI2lm
IElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQo+ICAgI2luY2x1ZGUgInNlbGZ0
ZXN0cy9pOTE1X3ZtYS5jIgo+ICAgI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oCj4gaW5k
ZXggNGI3NjlkYjY0OWJmLi41YzQyMjQ3NDliZGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1h
LmgKPiBAQCAtNDU5LDQgKzQ1OSw4IEBAIHZvaWQgaTkxNV92bWFfcGFya2VkKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KTsKPiAgIHN0cnVjdCBpOTE1X3ZtYSAqaTkxNV92bWFfYWxsb2Mo
dm9pZCk7Cj4gICB2b2lkIGk5MTVfdm1hX2ZyZWUoc3RydWN0IGk5MTVfdm1hICp2bWEpOwo+ICAg
Cj4gK3N0cnVjdCBpOTE1X3ZtYSAqaTkxNV92bWFfbWFrZV91bnNocmlua2FibGUoc3RydWN0IGk5
MTVfdm1hICp2bWEpOwo+ICt2b2lkIGk5MTVfdm1hX21ha2Vfc2hyaW5rYWJsZShzdHJ1Y3QgaTkx
NV92bWEgKnZtYSk7Cj4gK3ZvaWQgaTkxNV92bWFfbWFrZV9wdXJnZWFibGUoc3RydWN0IGk5MTVf
dm1hICp2bWEpOwo+ICsKPiAgICNlbmRpZgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
