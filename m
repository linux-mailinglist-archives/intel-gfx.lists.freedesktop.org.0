Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE9950B76
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 15:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BDE89B0C;
	Mon, 24 Jun 2019 13:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B3D89A92
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 13:07:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17005453-1500050 
 for multiple; Mon, 24 Jun 2019 14:07:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 14:07:06 +0100
Message-Id: <20190624130707.13292-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624130707.13292-1-chris@chris-wilson.co.uk>
References: <20190624130707.13292-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Emit final breadcrumb in
 request_add
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

V2l0aCBldmVyeXRoaW5nIG5vdyBrbm93biBhdCB0aGUgcG9pbnQgb2YgYWRkaW5nIHRoZSByZXF1
ZXN0IHRvIHRoZQpjb250ZXh0J3MgdGltZWxpbmUsIHdlIGNhbiBtb3ZlIHRoZSBlbWlzc2lvbiBv
ZiB0aGUgZmluYWwgYnJlYWRjcnVtYiB0bwp0aGUgcmVxdWVzdCBhZGQgYW5kIHB1bGwgaXQgb3V0
IG9mIHRoZSBDUyBpbnRlcnJ1cHQgc2VydmljZSBoYW5kbGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmlu
ZGV4IDVmZjg3YzRhMGNkNS4uZjQ1ZGQyYzI2MGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYwpAQCAtNDM3LDkgKzQzNyw2IEBAIHZvaWQgX19pOTE1X3JlcXVlc3Rfc3VibWl0KHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAKIAlzcGluX3VubG9jaygmcmVxdWVzdC0+bG9j
ayk7CiAKLQllbmdpbmUtPmVtaXRfZmluaV9icmVhZGNydW1iKHJlcXVlc3QsCi0JCQkJICAgICBy
ZXF1ZXN0LT5yaW5nLT52YWRkciArIHJlcXVlc3QtPnBvc3RmaXgpOwotCiAJZW5naW5lLT5zZXJp
YWwrKzsKIAogCXRyYWNlX2k5MTVfcmVxdWVzdF9leGVjdXRlKHJlcXVlc3QpOwpAQCAtMTE3OCw2
ICsxMTc1LDkgQEAgc3RydWN0IGk5MTVfcmVxdWVzdCAqX19pOTE1X3JlcXVlc3RfY29tbWl0KHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCUdFTV9CVUdfT04oSVNfRVJSKGNzKSk7CiAJcnEtPnBv
c3RmaXggPSBpbnRlbF9yaW5nX29mZnNldChycSwgY3MpOwogCisJY3MgPSBlbmdpbmUtPmVtaXRf
ZmluaV9icmVhZGNydW1iKHJxLCBjcyk7CisJR0VNX0JVR19PTihycS0+cmluZy0+dmFkZHIgKyBy
cS0+cmluZy0+ZW1pdCAhPSBjcyk7CisKIAlwcmV2ID0gX19pOTE1X3JlcXVlc3RfYWRkX3RvX3Rp
bWVsaW5lKHJxKTsKIAogCWxpc3RfYWRkX3RhaWwoJnJxLT5yaW5nX2xpbmssICZyaW5nLT5yZXF1
ZXN0X2xpc3QpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
