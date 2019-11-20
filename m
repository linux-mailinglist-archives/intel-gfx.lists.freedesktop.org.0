Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538B110433F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 19:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C546E9CC;
	Wed, 20 Nov 2019 18:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAB06E9CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 18:23:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19276431-1500050 
 for multiple; Wed, 20 Nov 2019 18:22:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 18:22:09 +0000
Message-Id: <20191120182209.3967833-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fixup config ifdeffery for
 pm_suspend_target_state
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cG1fc3VzcGVuZF90YXJnZXRfc3RhdGUgaXMgZGVjbGFyZWQgdW5kZXIgQ09ORklHX1BNX1NMRUVQ
IGJ1dCBvbmx5CmRlZmluZWQgdW5kZXIgQ09ORklHX1NVU1BFTkQuIFBsYXkgc2FmZSBhbmQgb25s
eSB1c2UgdGhlIHN5bWJvbCBpZiBpdCBpcwpib3RoIGRlY2xhcmVkIGFuZCBkZWZpbmVzLgoKUmVw
b3J0ZWQtYnk6IGtidWlsZC1hbGxAbGlzdHMuMDEub3JnClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpGaXhlczogYTcwYTllOTk4ZThlICgiZHJt
L2k5MTU6IERlZmVyIHJjNiBzaHV0ZG93biB0byBzdXNwZW5kX2xhdGUiKQpDYzogQW5kaSBTaHl0
aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCmluZGV4IDA2MGVlMGY0NGM3
MC4uOTgyMDQwZWNiZDAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKQEAg
LTI3NSw3ICsyNzUsNyBAQCB2b2lkIGludGVsX2d0X3N1c3BlbmRfcHJlcGFyZShzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQogCiBzdGF0aWMgc3VzcGVuZF9zdGF0ZV90IHBtX3N1c3BlbmRfdGFyZ2V0KHZv
aWQpCiB7Ci0jaWYgSVNfRU5BQkxFRChDT05GSUdfUE1fU0xFRVApCisjaWYgSVNfRU5BQkxFRChD
T05GSUdfU1VTUEVORCkgJiYgSVNfRU5BQkxFRChDT05GSUdfUE1fU0xFRVApCiAJcmV0dXJuIHBt
X3N1c3BlbmRfdGFyZ2V0X3N0YXRlOwogI2Vsc2UKIAlyZXR1cm4gUE1fU1VTUEVORF9UT19JRExF
OwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
