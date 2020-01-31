Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC88B14EA1B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3876E202;
	Fri, 31 Jan 2020 09:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958306E202
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 01:34:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223087253"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.66.114.55])
 ([10.66.114.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 31 Jan 2020 01:34:22 -0800
To: "Souza, Jose" <jose.souza@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <db28322f94782e13905cac3ccdaaef9e3cb665b7.camel@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <5a7b6710-fb66-ca0e-666b-4b98c0e8052e@intel.com>
Date: Fri, 31 Jan 2020 15:04:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <db28322f94782e13905cac3ccdaaef9e3cb665b7.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Ck9uIDMwLTAxLTIwMjAgMjM6NDMsIFNvdXphLCBKb3NlIHdyb3RlOgo+IE9uIFdlZCwgMjAyMC0w
MS0yOSBhdCAyMDoyMCArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4KPj4gV2UgbWF5IHdh
bnQgdG8gbm90IHVzZSB0aGUgRFNCIGV2ZW4gaWYgdGhlIHBsYXRmb3JtIGhhcyBvbmUuCj4+IFNv
IHJlcGxhY2UgdGhlIEhBU19EU0IgY2hlY2sgaW4gdGhlIF9wdXQoKSB3aXRoIGEgY21kX2J1ZiBj
aGVjawo+PiB0aGF0IHdpbGwgd29yayBpbiBlaXRoZXIgY2FzZS4KPiBSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4KPj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4g
LS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDMgKy0t
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggOWRk
MTgxNDRhNjY0Li4xMjc3NmYwOWYyMjcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYwo+PiBAQCAtMTYwLDkgKzE2MCw4IEBAIGludGVsX2RzYl9nZXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAgdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRl
bF9kc2IgKmRzYikKPj4gICB7Cj4+ICAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFp
bmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwKPj4gZHNiKTsKPj4gLQlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+PiAgIAo+PiAtCWlmICgh
SEFTX0RTQihpOTE1KSkKPj4gKwlpZiAoIWRzYi0+Y21kX2J1ZikKClZpbGxlIGFuZCBKb3NlLAoK
SGF2ZSBhIGNvbmNlcm4gaGVyZS4gSW4gaW50ZWxfZHNiX2dldCgpIGlmIGdldCBmYWlsdXJlIGR1
cmluZyBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsLCBpOTE1X2dlbV9vYmplY3RfZ2d0
dF9waW4sIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwIHRoZW4gd2UgbWF5IG5vdCBoYXZlIGRzYi0+
Y21kX2J1Zi4KVGhlbiByZWYtY291bnQgbWVjaGFuaXNtIHdpbGwgYnJlYWsuCkkgZmVlbCBIQVNf
RFNCKGk5MTUpIGNoZWNrIGlzIGJldHRlciB0aGFuIGRzYi0+Y21kX2J1ZiBvdGhlcndpc2UgbmVl
ZCB0byBkbyBzb21lIGNsZWFudXAgaXMgaW50ZWxfZHNiX2dldCgpIGFzIHdlbGwuCgpSZWdhcmRz
LApBbmltZXNoCgo+PiAgIAkJcmV0dXJuOwo+PiAgIAo+PiAgIAlpZiAoV0FSTl9PTihkc2ItPnJl
ZmNvdW50ID09IDApKQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
