Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC70792A9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 19:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C469E8926B;
	Mon, 29 Jul 2019 17:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE7A8924C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 17:54:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 10:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="162302400"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2019 10:54:27 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org,
 "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
 <20190729152301.22588-2-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <68fcfb3c-6558-3c03-b519-8eae3453ce5c@intel.com>
Date: Mon, 29 Jul 2019 10:54:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729152301.22588-2-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Report -ENODEV after
 injecting probe failure
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

CgpPbiA3LzI5LzE5IDg6MjIgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gV2Ugd2FudCB0
byBkbyBtb3JlIGRyaXZlciB0ZXN0aW5nIHVzaW5nIGluamVjdGVkIGxvYWQgZXJyb3JzLAo+IGJ1
dCB3ZSBkb24ndCB3YW50IHRvIGxpbWl0IG91cnNlbHZlcyB0byB1c2Ugb25seSAtRU5PREVWIChh
cwo+IG90aGVyIGVycm9ycyBhcmUgaW50ZXJwcmV0ZWQgYXMgcmVhbCBpc3N1ZXMsIGxpa2UgdGhp
czoKPiAKPiA8ND4gWzM4MS41Njk0NzldIGk5MTU6IHByb2JlIG9mIDAwMDA6MDA6MDIuMCBmYWls
ZWQgd2l0aCBlcnJvciAtNwo+IAo+IFN1Z2dlc3RlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCklJUkMgdGhl
IGZpbmFsIG91dGNvbWUgb2YgdGhlIGRpc2N1c3Npb24gd2UgaGFkIG9uIHRoaXMgYSB3aGlsZSBi
YWNrIHdhcyAKdGhhdCBDSSB3b3VsZCBpZ25vcmUgdGhpcyBraW5kIG9mIGVycm9yIG1lc3NhZ2Uu
IEFueXRoaW5nIGNoYW5nZWQ/IFdlIAphbHJlYWR5IGhhdmUgcGxhY2VzIHdlIHJldHVybiBzb21l
dGhpbmcgZGlmZmVyZW50IGZyb20gLUVOT0RFViAoZS5nLiAKX19md19kb21haW5faW5pdCgpIGlu
IGludGVsX3VuY29yZS5jKQoKRGFuaWVsZQoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBpbmRleCBiZDkyMTFiM2Q3
NmUuLjMzMjk0OWMyMGEyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IEBAIC05NTYs
NyArOTU2LDcgQEAgc3RhdGljIGludCBpOTE1X3BjaV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKPiAgIAo+ICAgCWVyciA9IGk5MTVf
ZHJpdmVyX3Byb2JlKHBkZXYsIGVudCk7Cj4gICAJaWYgKGVycikKPiAtCQlyZXR1cm4gZXJyOwo+
ICsJCXJldHVybiBpOTE1X2Vycm9yX2luamVjdGVkKCkgPyAtRU5PREVWIDogZXJyOwo+ICAgCj4g
ICAJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoKSkgewo+ICAgCQlpOTE1X3BjaV9yZW1v
dmUocGRldik7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
