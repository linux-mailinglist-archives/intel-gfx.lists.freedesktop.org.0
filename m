Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 206C910DD9D
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 13:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B02A6E0C9;
	Sat, 30 Nov 2019 12:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939376E0B7
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2019 12:24:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19405607-1500050 
 for multiple; Sat, 30 Nov 2019 12:24:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Nov 2019 12:24:45 +0000
Message-Id: <20191130122445.1637141-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130122445.1637141-1-chris@chris-wilson.co.uk>
References: <20191130122445.1637141-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Tweak scheduler's
 kick_submission()
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

U2tpcCB1c2VsZXNzIHByaW9yaXR5IGJ1bXBpbmcgb24gYWRkaW5nIGEgbmV3IGRlcGVuZGVuY3ks
IGJ1dCBvdGhlcndpc2UKcHJldmVudCB0YXNrbGV0IHNjaGVkdWxpbmcgdW50aWwgd2UgaGF2ZSBj
b21wbGV0ZWQgYWxsIHRoZSBwb3RlbnRpYWwKcmVzY2hlZHVsaW5nLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyB8IDEwICsrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
Y2hlZHVsZXIuYwppbmRleCAxOTM3YTI2ZDQxMmYuLmFkNmZmNTJiYzMxNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCkBAIC0yMTYsMTIgKzIxNiwxMyBAQCBzdGF0aWMgdm9p
ZCBraWNrX3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCWlmIChp
bmZsaWdodC0+aHdfY29udGV4dCA9PSBycS0+aHdfY29udGV4dCkKIAkJZ290byB1bmxvY2s7CiAK
LQllbmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50ID0gcHJpbzsKIAlpZiAobmVl
ZF9wcmVlbXB0KHByaW8sIHJxX3ByaW8oaW5mbGlnaHQpKSkKIAkJdGFza2xldF9oaV9zY2hlZHVs
ZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7CiAKIHVubG9jazoKIAlyY3VfcmVhZF91bmxv
Y2soKTsKKworCWVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBwcmlvOwog
fQogCiBzdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAq
bm9kZSwKQEAgLTM2NSw2ICszNjYsOSBAQCBzdGF0aWMgdm9pZCBfX2J1bXBfcHJpb3JpdHkoc3Ry
dWN0IGk5MTVfc2NoZWRfbm9kZSAqbm9kZSwgdW5zaWduZWQgaW50IGJ1bXApCiB7CiAJc3RydWN0
IGk5MTVfc2NoZWRfYXR0ciBhdHRyID0gbm9kZS0+YXR0cjsKIAorCWlmIChhdHRyLnByaW9yaXR5
ICYgYnVtcCkKKwkJcmV0dXJuOworCiAJYXR0ci5wcmlvcml0eSB8PSBidW1wOwogCV9faTkxNV9z
Y2hlZHVsZShub2RlLCAmYXR0cik7CiB9CkBAIC00NjMsMTEgKzQ2NywxNSBAQCBpbnQgaTkxNV9z
Y2hlZF9ub2RlX2FkZF9kZXBlbmRlbmN5KHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKm5vZGUsCiAJ
aWYgKCFkZXApCiAJCXJldHVybiAtRU5PTUVNOwogCisJbG9jYWxfYmhfZGlzYWJsZSgpOworCiAJ
aWYgKCFfX2k5MTVfc2NoZWRfbm9kZV9hZGRfZGVwZW5kZW5jeShub2RlLCBzaWduYWwsIGRlcCwK
IAkJCQkJICAgICAgSTkxNV9ERVBFTkRFTkNZX0VYVEVSTkFMIHwKIAkJCQkJICAgICAgSTkxNV9E
RVBFTkRFTkNZX0FMTE9DKSkKIAkJaTkxNV9kZXBlbmRlbmN5X2ZyZWUoZGVwKTsKIAorCWxvY2Fs
X2JoX2VuYWJsZSgpOyAvKiBraWNrIHN1Ym1pc3Npb24gdGFza2xldCAqLworCiAJcmV0dXJuIDA7
CiB9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
