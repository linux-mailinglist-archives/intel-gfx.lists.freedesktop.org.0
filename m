Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64886874E3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDFD6ED3F;
	Fri,  9 Aug 2019 09:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E864A6ED41
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 09:10:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17939914-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2019 10:10:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 10:10:08 +0100
Message-Id: <20190809091010.23281-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Check for a second VCS engine more
 carefully
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

VG8gdXNlIHRoZSBsZWdhY3kgQlNEIHNlbGVjdG9yLCB5b3UgbXVzdCBoYXZlIGEgc2Vjb25kIFZD
UyBlbmdpbmUsIG9yCmVsc2UgdGhlIEFCSSBzaW1wbHkgbWFwcyB0aGUgcmVxdWVzdCBmb3IgYW5v
dGhlciBlbmdpbmUgb250byBWQ1MwLgpIb3dldmVyLCB3ZSBvbmx5IGNoZWNrZWQgYSBzaW5nbGUg
VkNTMSBsb2NhdGlvbiBhbmQgb3Zlcmxvb2tpbmcgdGhlCnBvc3NpYmlsaXR5IG9mIGEgc3BhcnNl
IFZDUyBzZXQgYmVpbmcgbWFwcGVkIHRvIHRoZSBkZW5zZSBBQkkuCgp2MjogbnVtX3Zjc19lbmdp
bmVzKCkgdHVybnMgb3V0IHRvIGJlIHJldXNhYmxlIGFuZCBmdXR1cmVwcm9vZiBpdCBzbyB3ZQpu
ZXZlciBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoaXMgc2lsbHkgYml0IG9mIEFCSSBhZ2FpbiEKClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMg
TGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDggKysrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCA1NjZlOGE0
ODQ0Y2YuLmRjOGI4MGM2YzMxNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMTAyLDYgKzIxMDIsMTIgQEAgc3RhdGljIGludCBlYl9z
dWJtaXQoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRp
YyBpbnQgbnVtX3Zjc19lbmdpbmVzKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQoreworCXJldHVybiBod2VpZ2h0NjQoSU5URUxfSU5GTyhpOTE1KS0+ZW5naW5lX21hc2sgJgor
CQkJIEdFTk1BU0tfVUxMKFZDUzAgKyBJOTE1X01BWF9WQ1MsIFZDUzApKTsKK30KKwogLyoKICAq
IEZpbmQgb25lIEJTRCByaW5nIHRvIGRpc3BhdGNoIHRoZSBjb3JyZXNwb25kaW5nIEJTRCBjb21t
YW5kLgogICogVGhlIGVuZ2luZSBpbmRleCBpcyByZXR1cm5lZC4KQEAgLTIyMDAsNyArMjIwNiw3
IEBAIGViX3NlbGVjdF9sZWdhY3lfcmluZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJ
cmV0dXJuIC0xOwogCX0KIAotCWlmICh1c2VyX3JpbmdfaWQgPT0gSTkxNV9FWEVDX0JTRCAmJiBI
QVNfRU5HSU5FKGk5MTUsIFZDUzEpKSB7CisJaWYgKHVzZXJfcmluZ19pZCA9PSBJOTE1X0VYRUNf
QlNEICYmIG51bV92Y3NfZW5naW5lcyhpOTE1KSA+IDEpIHsKIAkJdW5zaWduZWQgaW50IGJzZF9p
ZHggPSBhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19CU0RfTUFTSzsKIAogCQlpZiAoYnNkX2lkeCA9
PSBJOTE1X0VYRUNfQlNEX0RFRkFVTFQpIHsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
