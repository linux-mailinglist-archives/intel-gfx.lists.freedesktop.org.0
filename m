Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A191FF7352
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2A76E1B5;
	Mon, 11 Nov 2019 11:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839016E1B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:43:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19158481-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:43:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:43:23 +0000
Message-Id: <20191111114323.5833-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111114323.5833-1-chris@chris-wilson.co.uk>
References: <20191111114323.5833-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915: Cancel context if it hangs after it
 is closed
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

SWYgd2UgZGV0ZWN0IGEgaGFuZyBpbiBhIGNsb3NlZCBjb250ZXh0LCBqdXN0IGZsdXNoIGFsbCBv
ZiBpdHMgcmVxdWVzdHMKYW5kIGNhbmNlbCBhbnkgcmVtYWluaW5nIGV4ZWN1dGlvbiBhbG9uZyB0
aGUgY29udGV4dC4gTm90ZSB0aGF0IGFmdGVyCmNsb3NpbmcgdGhlIGNvbnRleHQsIHRoZSBsYXN0
IHJlZmVyZW5jZSB0byB0aGUgY29udGV4dCBtYXkgYmUgZHJvcHBlZCwKbGVhdmluZyBpdCBvbmx5
IHZhbGlkIHVuZGVyIFJDVS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IDg2ZDUyMzgzYmY5ZC4uYjcwMDdjZDc4
YzZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKQEAgLTgxLDYgKzgxLDEx
IEBAIHN0YXRpYyBib29sIGNvbnRleHRfbWFya19ndWlsdHkoc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCkKIAlib29sIGJhbm5lZDsKIAlpbnQgaTsKIAorCWlmIChpOTE1X2dlbV9jb250ZXh0
X2lzX2Nsb3NlZChjdHgpKSB7CisJCWk5MTVfZ2VtX2NvbnRleHRfc2V0X2Jhbm5lZChjdHgpOwor
CQlyZXR1cm4gdHJ1ZTsKKwl9CisKIAlhdG9taWNfaW5jKCZjdHgtPmd1aWx0eV9jb3VudCk7CiAK
IAkvKiBDb29sIGNvbnRleHRzIGFyZSB0b28gY29vbCB0byBiZSBiYW5uZWQhIChVc2VkIGZvciBy
ZXNldCB0ZXN0aW5nLikgKi8KQEAgLTEyOCw2ICsxMzMsNyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0
X3Jlc2V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBib29sIGd1aWx0eSkKIAogCUdFTV9CVUdf
T04oaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpOwogCisJcmN1X3JlYWRfbG9jaygpOyAvKiBw
cm90ZWN0IHRoZSBHRU0gY29udGV4dCAqLwogCWlmIChndWlsdHkpIHsKIAkJaTkxNV9yZXF1ZXN0
X3NraXAocnEsIC1FSU8pOwogCQlpZiAoY29udGV4dF9tYXJrX2d1aWx0eShycS0+Z2VtX2NvbnRl
eHQpKQpAQCAtMTM2LDYgKzE0Miw3IEBAIHZvaWQgX19pOTE1X3JlcXVlc3RfcmVzZXQoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEsIGJvb2wgZ3VpbHR5KQogCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZy
cS0+ZmVuY2UsIC1FQUdBSU4pOwogCQljb250ZXh0X21hcmtfaW5ub2NlbnQocnEtPmdlbV9jb250
ZXh0KTsKIAl9CisJcmN1X3JlYWRfdW5sb2NrKCk7CiB9CiAKIHN0YXRpYyBib29sIGk5MTVfaW5f
cmVzZXQoc3RydWN0IHBjaV9kZXYgKnBkZXYpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
