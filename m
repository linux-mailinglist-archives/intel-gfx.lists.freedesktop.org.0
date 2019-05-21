Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B9F24F34
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 14:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF738921A;
	Tue, 21 May 2019 12:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4083589227
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 12:50:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16626951-1500050 
 for multiple; Tue, 21 May 2019 13:43:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2019 13:43:12 +0100
Message-Id: <20190521124318.26310-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521124318.26310-1-chris@chris-wilson.co.uk>
References: <20190521124318.26310-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 04/10] drm/i915: Re-expose SINGLE_TIMELINE flags
 for context creation
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

VGhlIFNJTkdMRV9USU1FTElORSBmbGFnIGNhbiBiZSB1c2VkIHRvIGNyZWF0ZSBhIGNvbnRleHQg
c3VjaCB0aGF0IGFsbAplbmdpbmUgaW5zdGFuY2VzIHdpdGhpbiB0aGF0IGNvbnRleHQgc2hhcmUg
YSBjb21tb24gdGltZWxpbmUuIFRoaXMgY2FuCmJlIHVzZWZ1bCBmb3IgbWl4aW5nIG9wZXJhdGlv
bnMgYmV0d2VlbiByZWFsIGFuZCB2aXJ0dWFsIGVuZ2luZXMsIG9yCndoZW4gdXNpbmcgYSBjb21w
b3NpdGUgY29udGV4dCBmb3IgYSBzaW5nbGUgY2xpZW50IEFQSSBjb250ZXh0LgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2NvbnRleHQuYyB8IDQgLS0tLQogaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oICAgICAgICAgICAgIHwgMyArKy0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Nv
bnRleHQuYwppbmRleCA1ZmRiNDQ3MTRhNWMuLjljZDY3MTI5OGRhZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtOTYsOCArOTYsNiBAQAogI2luY2x1ZGUgImk5
MTVfdHJhY2UuaCIKICNpbmNsdWRlICJpOTE1X3VzZXJfZXh0ZW5zaW9ucy5oIgogCi0jZGVmaW5l
IEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1NfU0lOR0xFX1RJTUVMSU5FICgxIDw8IDEpCi0KICNk
ZWZpbmUgQUxMX0wzX1NMSUNFUyhkZXYpICgxIDw8IE5VTV9MM19TTElDRVMoZGV2KSkgLSAxCiAK
IHN0YXRpYyBzdHJ1Y3QgaTkxNV9nbG9iYWxfZ2VtX2NvbnRleHQgewpAQCAtNTA1LDggKzUwMyw2
IEBAIGk5MTVfZ2VtX2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgdW5zaWduZWQgaW50IGZsYWdzKQogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2X3By
aXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCi0JQlVJTERfQlVHX09OKEk5MTVfQ09OVEVYVF9DUkVB
VEVfRkxBR1NfU0lOR0xFX1RJTUVMSU5FICYKLQkJICAgICB+STkxNV9DT05URVhUX0NSRUFURV9G
TEFHU19VTktOT1dOKTsKIAlpZiAoZmxhZ3MgJiBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJ
TkdMRV9USU1FTElORSAmJgogCSAgICAhSEFTX0VYRUNMSVNUUyhkZXZfcHJpdikpCiAJCXJldHVy
biBFUlJfUFRSKC1FSU5WQUwpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2Ry
bS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCmluZGV4IDgyYmQ0ODhlZDBkMS4uOTU3
YmE4ZTYwZTAyIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKKysrIGIv
aW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCkBAIC0xNDY5LDggKzE0NjksOSBAQCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCB7CiAJX191MzIgY3R4X2lkOyAvKiBvdXRw
dXQ6IGlkIG9mIG5ldyBjb250ZXh0Ki8KIAlfX3UzMiBmbGFnczsKICNkZWZpbmUgSTkxNV9DT05U
RVhUX0NSRUFURV9GTEFHU19VU0VfRVhURU5TSU9OUwkoMXUgPDwgMCkKKyNkZWZpbmUgSTkxNV9D
T05URVhUX0NSRUFURV9GTEFHU19TSU5HTEVfVElNRUxJTkUJKDF1IDw8IDEpCiAjZGVmaW5lIEk5
MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1NfVU5LTk9XTiBcCi0JKC0oSTkxNV9DT05URVhUX0NSRUFU
RV9GTEFHU19VU0VfRVhURU5TSU9OUyA8PCAxKSkKKwkoLShJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZM
QUdTX1NJTkdMRV9USU1FTElORSA8PCAxKSkKIAlfX3U2NCBleHRlbnNpb25zOwogfTsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
