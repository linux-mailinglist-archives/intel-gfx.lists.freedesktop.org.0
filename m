Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B841407DA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 11:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB9A6F4DB;
	Fri, 17 Jan 2020 10:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACF06F4DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 10:21:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19913901-1500050 
 for multiple; Fri, 17 Jan 2020 10:21:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 10:21:45 +0000
Message-Id: <20200117102145.2948244-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include the debugfs params header for
 its own definition
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jOjIyODoxNTogd2Fybmlu
Zzogc3ltYm9sICdpOTE1X2RlYnVnZnNfcGFyYW1zJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQg
aXQgYmUgc3RhdGljPwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnNfcGFyYW1zLmM6
MjI4OjE2OiBlcnJvcjogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhpOTE1X2RlYnVnZnNf
cGFyYW1z4oCZIFstV2Vycm9yPW1pc3NpbmctcHJvdG90eXBlc10KICAyMjggfCBzdHJ1Y3QgZGVu
dHJ5ICppOTE1X2RlYnVnZnNfcGFyYW1zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmc19wYXJhbXMuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
X3BhcmFtcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jCmlu
ZGV4IDEyY2JkYmRmNGQ4MC4uNjJiMmM1ZjA0OTVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnNfcGFyYW1zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jCkBAIC01LDYgKzUsNyBAQAogCiAjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+CiAKKyNpbmNsdWRlICJpOTE1X2RlYnVnZnNfcGFyYW1zLmgiCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X3BhcmFtcy5oIgogCi0tIAoyLjI1LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
