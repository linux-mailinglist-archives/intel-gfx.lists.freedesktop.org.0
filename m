Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E251DF1726
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471B76ED36;
	Wed,  6 Nov 2019 13:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3186ED36
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:31:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19102339-1500050 
 for multiple; Wed, 06 Nov 2019 13:31:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 13:31:29 +0000
Message-Id: <20191106133129.17732-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only drop heartbeat.systole if the
 sole owner
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

TWlrYSBzcG90dGVkIHRoYXQgb25seSB1c2luZyBjYW5jZWxfZGVsYXllZF93b3JrKCkgY291bGQg
bWVhbiB0aGF0IHdlCmF0dGVtcHRlZCB0byBjbGVhciB0aGUgaGVhcnRiZWF0LnN5c3RvbGUgd2hp
bGUgdGhlIHdvcmtlciB3YXMgc3RpbGwKcnVubmluZy4gUmVjdGlmeSB0aGUgc2l0dWF0aW9uIGJ5
IG9ubHkgdG91Y2hpbmcgdGhlIHN5c3RvbGUgZnJvbSBvdXRzaWRlCnRoZSB3b3JrZXIgaWYgd2Ug
c3VjZWVkZWQgaW4gY2FuY2VsbGluZyB0aGUgd29ya2VyIGJlZm9yZSBpdCBjb3VsZCBydW4uClRo
ZSB3b3JrZXIgaXMgZXhwZWN0ZWQgdG8gY2xlYW4gdXAgYnkgaXRzZWxmIHVwb24gaWRsaW5nLgoK
UmVwb3J0ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgpGaXhlczogMDU4MTc5ZTcyZTA5ICgiZHJtL2k5MTUvZ3Q6IFJlcGxhY2UgaGFuZ2NoZWNrIGJ5
IGhlYXJ0YmVhdHMiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQu
YyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVh
cnRiZWF0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0
LmMKaW5kZXggNTA1MWYzMDQ3MDViLi4wNmFhMTRjN2FhOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMKQEAgLTE0MSw4ICsxNDEsOCBA
QCB2b2lkIGludGVsX2VuZ2luZV91bnBhcmtfaGVhcnRiZWF0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAogdm9pZCBpbnRlbF9lbmdpbmVfcGFya19oZWFydGJlYXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCWNhbmNlbF9kZWxheWVkX3dvcmsoJmVuZ2luZS0+
aGVhcnRiZWF0LndvcmspOwotCWk5MTVfcmVxdWVzdF9wdXQoZmV0Y2hfYW5kX3plcm8oJmVuZ2lu
ZS0+aGVhcnRiZWF0LnN5c3RvbGUpKTsKKwlpZiAoY2FuY2VsX2RlbGF5ZWRfd29yaygmZW5naW5l
LT5oZWFydGJlYXQud29yaykpCisJCWk5MTVfcmVxdWVzdF9wdXQoZmV0Y2hfYW5kX3plcm8oJmVu
Z2luZS0+aGVhcnRiZWF0LnN5c3RvbGUpKTsKIH0KIAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9o
ZWFydGJlYXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotLSAKMi4yNC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
