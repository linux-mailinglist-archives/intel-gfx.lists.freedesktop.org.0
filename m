Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8BC714BE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB816E2BE;
	Tue, 23 Jul 2019 09:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84CFF6E2CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 09:14:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17528119-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 10:14:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:14:04 +0100
Message-Id: <20190723091404.6449-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190723091404.6449-1-chris@chris-wilson.co.uk>
References: <20190723091404.6449-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/uc: Sanitize uC when GT is sanitized
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClRoZSBtaWNyb2NvbnRyb2xsZXJzIGFyZSBwYXJ0IG9mIEdUIHNvIGl0IG1ha2VzIGxv
Z2ljYWwgc2Vuc2UgdG8gaGF2ZQp0aGVtIHNhbml0aXplZCBhdCB0aGUgc2FtZSB0aW1lLiBUaGlz
IGFsc28gZml4ZWQgYW4gaXNzdWUgd2l0aCBvdXIKc3RhdHVzIHRyYWNraW5nIHdoZXJlIHRoZSBG
VyBsb2FkIHN0YXR1cyBpcyBub3QgcmVzZXQgYXJvdW5kCmhpYmVybmF0aW9uLgoKU2lnbmVkLW9m
Zi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcG0uYyAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXgg
OGZhZjI2MjI3OGFlLi5iNTU2MWNiZGM1ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jCkBAIC0yMzksNyArMjM5LDYgQEAgdm9pZCBpOTE1X2dlbV9zdXNwZW5kX2xhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJfQogCXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAKLQlpbnRlbF91Y19zYW5pdGl6ZSgmaTkx
NS0+Z3QudWMpOwogCWk5MTVfZ2VtX3Nhbml0aXplKGk5MTUpOwogfQogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRleCA2MWVkOTEyMzQxZjEuLjY1YzBkMGM5ZDU0MyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0xMTgsNiArMTE4LDggQEAgdm9p
ZCBpbnRlbF9ndF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIGZvcmNlKQogCiAJ
R0VNX1RSQUNFKCJcbiIpOwogCisJaW50ZWxfdWNfc2FuaXRpemUoJmd0LT51Yyk7CisKIAlpZiAo
IXJlc2V0X2VuZ2luZXMoZ3QpICYmICFmb3JjZSkKIAkJcmV0dXJuOwogCi0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
