Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 070DE19D604
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 13:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323356EB78;
	Fri,  3 Apr 2020 11:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2F06E105;
 Fri,  3 Apr 2020 11:47:50 +0000 (UTC)
IronPort-SDR: 1clLGZGBD7kYqUHcBfcw394Nga4eG6lgKOA9m2gAscxbDgCIo6eeb4VG2Vv7fVcpz5h0WHraRI
 1YggrkCHLwnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 04:47:50 -0700
IronPort-SDR: 50cFYT3nV1VDcEeu8b4OBwddCZiouI/GJsF0vLPeDoU+oFVG+x9I8VK6L6rJWGXN4hVGLFs9w/
 dCwO8ngkPj7w==
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="273921952"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 04:47:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  3 Apr 2020 13:47:27 +0200
Message-Id: <20200403114727.27760-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] lib: Fix device lists not cleaned up
 sufficiently before rescan
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSBlZmZvcnQgaXMgYWxyZWFkeSB0YWtlbiB0byBjbGVhbiB1cCBwcmV2aW91cyBjb250ZW50
IG9mIGRldmljZQpsaXN0cyBiZWZvcmUgZm9yY2VkIGRldmljZSByZXNjYW4gaXMgcGVyZm9ybWVk
IGJ1dCBpdCBpcyBub3QKc3VmZmljaWVudC4gIEFuIGF0dGVtcHQgdG8gdXNlIGZvcmNlZCBkZXZp
Y2UgcmVzY2FuIGluIGEgdGVzdCByZXN1bHRzCmluIHRoYXQgdGVzdCBjcmFzaGluZyBvciBzcGlu
bmluZyB1bnRpbCBiZWluZyBraWxsZWQgYnkgT09NIGtpbGxlci4KRml4IGl0LgoKdjI6IFJlbW92
ZSBkZXZpY2UgZnJvbSB0aGUgbGlzdCBiZWZvcmUgZGV2aWNlIGF0dHJpYnV0ZXMgYXJlIGRlc3Ry
b3llZAoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9m
aWtAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6
Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Ci0tLQogbGliL2lndF9kZXZpY2Vfc2Nhbi5j
IHwgMTYgKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9kZXZpY2Vfc2Nhbi5jIGIvbGli
L2lndF9kZXZpY2Vfc2Nhbi5jCmluZGV4IGNmN2M0ZDk1MS4uMzBhOTcwNGE1IDEwMDY0NAotLS0g
YS9saWIvaWd0X2RldmljZV9zY2FuLmMKKysrIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5jCkBAIC0z
NTMsMTQgKzM1MywxMSBAQCBzdGF0aWMgdm9pZCBzZXRfdmVuZG9yX2RldmljZShzdHJ1Y3QgaWd0
X2RldmljZSAqZGV2KQogCWRldi0+ZGV2aWNlID0gc3RybmR1cChwY2lfaWQgKyA1LCA0KTsKIH0K
IAotLyogQWxsb2NhdGUgYXJyYXlzIGZvciBrZWVwaW5nIHNjYW5uZWQgZGV2aWNlcyAqLworLyog
SW5pdGlhbGl6ZSBsaXN0cyBmb3Iga2VlcGluZyBzY2FubmVkIGRldmljZXMgKi8KIHN0YXRpYyBi
b29sIHByZXBhcmVfc2Nhbih2b2lkKQogewotCWlmIChpZ3RfZGV2cy5hbGwucHJldiA9PSBOVUxM
IHx8IGlndF9kZXZzLmFsbC5uZXh0ID09IE5VTEwpCi0JCUlHVF9JTklUX0xJU1RfSEVBRCgmaWd0
X2RldnMuYWxsKTsKLQotCWlmIChpZ3RfZGV2cy5maWx0ZXJlZC5wcmV2ID09IE5VTEwgfHwgaWd0
X2RldnMuZmlsdGVyZWQubmV4dCA9PSBOVUxMKQotCQlJR1RfSU5JVF9MSVNUX0hFQUQoJmlndF9k
ZXZzLmZpbHRlcmVkKTsKKwlJR1RfSU5JVF9MSVNUX0hFQUQoJmlndF9kZXZzLmFsbCk7CisJSUdU
X0lOSVRfTElTVF9IRUFEKCZpZ3RfZGV2cy5maWx0ZXJlZCk7CiAKIAlyZXR1cm4gdHJ1ZTsKIH0K
QEAgLTU5NSw3ICs1OTIsMTQgQEAgdm9pZCBpZ3RfZGV2aWNlc19zY2FuKGJvb2wgZm9yY2UpCiB7
CiAJaWYgKGZvcmNlICYmIGlndF9kZXZzLmRldnNfc2Nhbm5lZCkgewogCQlzdHJ1Y3QgaWd0X2Rl
dmljZSAqZGV2LCAqdG1wOworCisJCWlndF9saXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoZGV2LCB0
bXAsICZpZ3RfZGV2cy5maWx0ZXJlZCwKKwkJCQkJICAgICBsaW5rKSB7CisJCQlpZ3RfbGlzdF9k
ZWwoJmRldi0+bGluayk7CisJCQlmcmVlKGRldik7CisJCX0KIAkJaWd0X2xpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZShkZXYsIHRtcCwgJmlndF9kZXZzLmFsbCwgbGluaykgeworCQkJaWd0X2xpc3Rf
ZGVsKCZkZXYtPmxpbmspOwogCQkJaWd0X2RldmljZV9mcmVlKGRldik7CiAJCQlmcmVlKGRldik7
CiAJCX0KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
