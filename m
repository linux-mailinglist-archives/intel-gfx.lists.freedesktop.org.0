Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597DADDBB
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 19:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFAD8892FF;
	Mon,  9 Sep 2019 17:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3BE892FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 17:02:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 10:02:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="183879386"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.93.73])
 ([10.252.93.73])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 10:02:42 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-9-animesh.manna@intel.com>
 <cd39c7eb-ccc9-8606-1c49-b6637f6722a1@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <963f8096-cfee-7edf-8808-8ed7a7bd30cd@intel.com>
Date: Mon, 9 Sep 2019 22:32:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <cd39c7eb-ccc9-8606-1c49-b6637f6722a1@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 08/11] drm/i915/dsb: added dsb refcount
 to synchronize between get/put.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzkvMjAxOSA2OjUxIFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4gT24gOS83
LzIwMTkgNDozNyBQTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gVGhlIGxpZmV0aW1lIG9mIGNv
bW1hbmQgYnVmZmVyIGNhbiBiZSBjb250cm9sbGVkIGJ5IHRoZSBkc2IgdXNlcgo+PiB0aHJvdWgg
cmVmY291bnQuIEFkZGVkIHJlZmNvdW50IG1lY2hhbmlzbSBpcyBkc2IgZ2V0L3B1dCBjYWxsCj4+
IHdoaWNoIGNyZWF0ZS9kZXN0cm95IGRzYiBjb250ZXh0Lgo+Pgo+PiBDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsu
c2hhcm1hQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgfCAyMiArKysrKysrKysrKysrKysrLS0tLS0tCj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAxICsKPj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIAo+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggODUzNjg1NzUxNTQwLi5iOTUx
YTZiNTI2NGEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Ywo+PiBAQCAtNzgsNyArNzgsMTIgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykKPj4gICAgICAgc3RydWN0IGludGVsX2RzYiAqZHNiID0gJmNydGMtPmRzYjsKPj4gICAg
ICAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4+ICAgLSAgICBpZiAoKCFIQVNfRFNCKGk5MTUp
KSB8fCBkc2ItPmNtZF9idWYpCj4+ICsgICAgaWYgKCFIQVNfRFNCKGk5MTUpKQo+PiArICAgICAg
ICByZXR1cm4gZHNiOwo+PiArCj4+ICsgICAgYXRvbWljX2luYygmZHNiLT5yZWZjb3VudCk7Cj4+
ICsKPgo+IEFzIGRpc2N1c3NlZCB3ZSBhcmUgbm90IHNvbHZpbmcgYW55IHByb2JsZW0gd2l0aCBy
ZWZlcmVuY2UgY291bnRpbmcsIAo+IHJhdGhlciwgd2UgYXJlIGFkZGluZyBhIGNvbXBsZXhpdHkg
aGVyZS4gSXQgbWF5IGJlIHVzZWZ1bCwgd2hlbiB3ZSBhcmUgCj4gZXh0ZW5kaW5nIHNpbmdsZSBp
bnN0YW5jZSBvZiBEU0IgdG8gRFNCIHBvb2wgYnV0IG5vdCByaWdodCBub3cuCj4KPiBJIHdvdWxk
IHNheSB3ZSBkcm9wIHRoaXMgcGF0Y2ggYWxsIHRvZ2V0aGVyLCBhbmQganVzdCBoYXZlIHRoZSBz
aW1wbGUgCj4gaW1wbGVtZW50YXRpb24gbm93LgoKVHJpZWQgdG8gaGF2ZSBzeW5jaHJvbml6YXRp
b24gaW4gc2luZ2xlIHRocmVhZCBtdWx0aXBsZSB1c2VyIHNjZW5hcmlvIAp0aHJvdWdoIHJlZi1j
b3VudCBtZWNoYW5pc20sIGJ1dCBjYW4gYmUgdGFrZW4gaW4gcGhhc2VkIGFwcHJvYWNoIGluIGZ1
dHVyZS4KClJlZ2FyZHMsCkFuaW1lc2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
