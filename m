Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ACD653B4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 11:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765446E16D;
	Thu, 11 Jul 2019 09:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBDC6E16D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 09:23:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17217793-1500050 
 for multiple; Thu, 11 Jul 2019 10:22:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:22:54 +0100
Message-Id: <20190711092254.1719-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915: Enable PSR2 by
 default"
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TXVsdGlwbGUgdXNlcnMgYXJlIHJlcG9ydGluZyBibGFjayBzY3JlZW5zIHVwb24gYm9vdCwgYWZ0
ZXIgcmVzdW1lLCBvcgpmcm96ZW4gYWZ0ZXIgYSBzaG9ydCBwZXJpb2Qgb2YgaWRsZW5lc3MuIEEg
YmxhY2sgc2NyZWVuIG9uIGJvb3QgaXMgYQpjcml0aWNhbCBpc3N1ZSBzbyBkaXNhYmxlIHBzcjIg
YWdhaW4gdW50aWwgcmVzb2x2ZWQuCgpUaGlzIHJldmVydHMgY29tbWl0IDhmNmU4N2Q2ZDU2MWYx
MGNmYTQ4YTY4NzM0NTUxMjQxOTgzOWI2ZDguCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDg4CkZpeGVzOiA4ZjZlODdkNmQ1NjEgKCJk
cm0vaTkxNTogRW5hYmxlIFBTUjIgYnkgZGVmYXVsdCIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5k
aXlhbkBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNj
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnICN2NS4yCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggNjlkOTA4ZTZh
MDUwLi5kZGRlNGRhMmRlMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwpAQCAtODMsNiArODMsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2VuYWJsZWQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWNhc2UgSTkxNV9QU1JfREVCVUdfRElT
QUJMRToKIAljYXNlIEk5MTVfUFNSX0RFQlVHX0ZPUkNFX1BTUjE6CiAJCXJldHVybiBmYWxzZTsK
KwljYXNlIEk5MTVfUFNSX0RFQlVHX0RFRkFVTFQ6CisJCWlmIChpOTE1X21vZHBhcmFtcy5lbmFi
bGVfcHNyIDw9IDApCisJCQlyZXR1cm4gZmFsc2U7CiAJZGVmYXVsdDoKIAkJcmV0dXJuIGNydGNf
c3RhdGUtPmhhc19wc3IyOwogCX0KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
