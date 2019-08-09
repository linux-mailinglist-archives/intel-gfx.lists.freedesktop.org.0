Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D10883F3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 22:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D334E6EE99;
	Fri,  9 Aug 2019 20:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E476EE99
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 20:29:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 13:29:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="204035014"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.86])
 by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2019 13:29:29 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 21:29:25 +0100
Message-Id: <20190809202926.14545-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809202926.14545-1-matthew.auld@intel.com>
References: <20190809202926.14545-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/blt: don't assume pinned
 intel_context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHdlIGp1c3QgcGFzcyBpbiBiY3MwLT5lbmdpbmVfY29udGV4dCBzbyBpdCBtYXR0
ZXJzIG5vdCwgYnV0IGluCnRoZSBmdXR1cmUgd2UgbWF5IHdhbnQgdG8gcGFzcyBpbiBzb21ldGhp
bmcgdGhhdCBpcyBub3QgYQprZXJuZWxfY29udGV4dCwgc28gdHJ5IHRvIGJlIGEgYml0IG1vcmUg
Z2VuZXJpYy4KClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgfCAzICsrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYyB8IDMgKystCiAyIGZpbGVz
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwppbmRleCBkZTY2MTZiZGIzYTYu
LjA4YTg0Yzk0MGQ4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y2xpZW50X2JsdC5jCkBAIC00LDYgKzQsNyBAQAogICovCiAKICNpbmNsdWRlICJpOTE1X2Rydi5o
IgorI2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9jbGll
bnRfYmx0LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0X2JsdC5oIgogCkBAIC0xNzUsNyAr
MTc2LDcgQEAgc3RhdGljIHZvaWQgY2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVj
dCAqd29yaykKIAlpZiAodW5saWtlbHkoZXJyKSkKIAkJZ290byBvdXRfdW5sb2NrOwogCi0JcnEg
PSBpOTE1X3JlcXVlc3RfY3JlYXRlKHctPmNlKTsKKwlycSA9IGludGVsX2NvbnRleHRfY3JlYXRl
X3JlcXVlc3Qody0+Y2UpOwogCWlmIChJU19FUlIocnEpKSB7CiAJCWVyciA9IFBUUl9FUlIocnEp
OwogCQlnb3RvIG91dF91bnBpbjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2JsdC5jCmluZGV4IDgzN2RkNjYzNmRkMS4uZmE5MGMzOGM4YjA3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTQsNiAr
NCw3IEBACiAgKi8KIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxf
Y29udGV4dC5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCIKICNpbmNsdWRlICJpOTE1
X2dlbV9vYmplY3RfYmx0LmgiCiAKQEAgLTY0LDcgKzY1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVj
dF9maWxsX2JsdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlpOTE1X2dlbV9v
YmplY3RfdW5sb2NrKG9iaik7CiAJfQogCi0JcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsK
KwlycSA9IGludGVsX2NvbnRleHRfY3JlYXRlX3JlcXVlc3QoY2UpOwogCWlmIChJU19FUlIocnEp
KSB7CiAJCWVyciA9IFBUUl9FUlIocnEpOwogCQlnb3RvIG91dF91bnBpbjsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
