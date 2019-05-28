Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1528C2CFFC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 22:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7998E6E064;
	Tue, 28 May 2019 20:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6415C6E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 20:07:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16711522-1500050 
 for multiple; Tue, 28 May 2019 21:06:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 21:06:55 +0100
Message-Id: <20190528200655.11605-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl sseu
 slice
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

V2Ugd2FudCB0aGUgaW5kZXggY29ycmVzcG9uZGluZyB0byB0aGUgc2V0IGJpdCBidXQgZmxzKCkg
cmV0dXJucyB0aGUKMS1pbmRleCB2YWx1ZS4KCk90aGVyd2lzZSwgd2UgdHJpZ2dlciB0aGUgc2Fu
aXR5Y2hlY2sKCWludGVsX3NzZXVfZ2V0X3N1YnNsaWNlczo0NiBHRU1fQlVHX09OKHNsaWNlID49
IHNzZXUtPm1heF9zbGljZXMpCndoZW4gd2UgbG9vayB1cCB0aGUgaW52YWxpZCBzbGljZS4KClRo
ZSBvbmx5IHJlbWFpbmluZyBxdWVzdGlvbiB0aGVuIGlzIGp1c3QgaG93IHJlbGlhYmxlIHRoZSBy
ZXN0IG9mCmludGVsX2NhbGN1bGF0ZV9tY3Jfc19zc19zZWxlY3QoKSBpcyAtLSBob3cgbWFueSBt
b3JlIG9mIHRob3NlIGZscygpIGFyZQphbHNvIG9mZi1ieS1vbmUuCgpGaXhlczogMWFjMTU5ZTIz
YzJjICgiZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrIikKRml4ZXM6IDFlNDBkNGFlYTU3
YiAoImRybS9pOTE1L2NubDogSW1wbGVtZW50IFdhUHJvZ3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VT
cGVjaWZpY01taW9SZWFkcyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5k
d2VybGluQGludGVsLmNvbT4KQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRl
bC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBmYmM4NTMwODU4MDkuLjQ4NWNk
MWM4ZWNjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
CkBAIC03ODEsNyArNzgxLDcgQEAgd2FfaW5pdF9tY3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJICogcmVhZCBGVVNFMyBmb3IgZW5h
YmxlZCBMMyBCYW5rIElEcywgaWYgTDMgQmFuayBtYXRjaGVzCiAJCSAqIGVuYWJsZWQgc3Vic2xp
Y2UsIG5vIG5lZWQgdG8gcmVkaXJlY3QgTUNSIHBhY2tldAogCQkgKi8KLQkJdTMyIHNsaWNlID0g
ZmxzKHNzZXUtPnNsaWNlX21hc2spOworCQl1MzIgc2xpY2UgPSBfX2Zscyhzc2V1LT5zbGljZV9t
YXNrKTsKIAkJdTMyIGZ1c2UzID0KIAkJCWludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUs
IEdFTjEwX01JUlJPUl9GVVNFMyk7CiAJCXUzMiBzc19tYXNrID0gaW50ZWxfc3NldV9nZXRfc3Vi
c2xpY2VzKHNzZXUsIHNsaWNlKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
