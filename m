Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FF95F682
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7145E6E2B4;
	Thu,  4 Jul 2019 10:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56036E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:22:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="187542682"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2019 03:22:25 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F06D15C1EB4; Thu,  4 Jul 2019 13:22:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190703171913.16585-4-chris@chris-wilson.co.uk>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-4-chris@chris-wilson.co.uk>
Date: Thu, 04 Jul 2019 13:22:17 +0300
Message-ID: <87lfxe2j6u.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Flush the workqueue before
 draining
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVHJ5aW5n
IHRvIGRyYWluIGEgd29ya3F1ZXVlIHdoaWxlIHdlIG1heSBzdGlsbCBiZSBhZGRpbmcgdG8gaXQg
ZnJvbQo+IGJhY2tncm91bmQgdGFza3MgaXMsIGFjY29yZGluZyB0byBrZXJuZWwvd29ya3F1ZXVl
LmMsIHZlcmJvdGVuLiBTbywgYWRkCj4gYSBmbHVzaF93b3JrcXVldWUoKSBhdCB0aGUgc3RhcnQg
b2Ygb3VyIGNsZWFudXAgcHJvY2VkdXJlLgoKSSBkb24ndCBnZXQgaXQuIGRyYWluX3dvcmtxdWV1
ZSBkb2VzIGl0J3Mgb3duIGZsdXNoaW5nLgotTWlrYQoKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggOWQxMzJjOWQxN2IwLi5kMmY5YWYz
YTE2ZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMjQ3Miw2ICsyNDcyLDcg
QEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2RyYWluX3dvcmtxdWV1ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCSAqLwo+ICAJaW50IHBhc3MgPSAzOwo+ICAJZG8gewo+
ICsJCWZsdXNoX3dvcmtxdWV1ZShpOTE1LT53cSk7Cj4gIAkJcmN1X2JhcnJpZXIoKTsKPiAgCQlp
OTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwo+ICAJfSB3aGlsZSAoLS1wYXNzKTsK
PiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
