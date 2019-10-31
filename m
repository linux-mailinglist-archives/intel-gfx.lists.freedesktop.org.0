Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54DCEACBD
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 10:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533836EE05;
	Thu, 31 Oct 2019 09:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50056EE05
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 09:43:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19029563-1500050 
 for multiple; Thu, 31 Oct 2019 09:43:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 09:42:59 +0000
Message-Id: <20191031094259.23028-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191031094212.22896-1-chris@chris-wilson.co.uk>
References: <20191031094212.22896-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Assert that the idle_pulse
 is sent
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

V2hlbiBjaGVja2luZyB0aGUgaGVhcnRiZWF0IHB1bHNlLCB3ZSBleHBlY3QgaXQgdG8gaGF2ZSBi
ZWVuIHNlbnQgYnkgdGhlCnRpbWUgd2UgaGF2ZSBzbGVwdC4gV2UgY2FuIHZlcmlmeSB0aGlzIGJ5
IGNoZWNraW5nIHRoZSBlbmdpbmUgc2VyaWFsCm51bWJlciB0byBzZWUgaWYgdGhhdCBtYXRjaGVz
IHRoZSBwcmVkaWN0ZWQgcHVsc2Ugc2VyaWFsLiBJdCB3aWxsIGFsd2F5cwpiZSB0cnVlIGlmLCBh
bmQgb25seSBpZiwgdGhlIHB1bHNlIHdhcyBzZW50IGJ5IGl0c2VsZiAoYXMgZGVzaWduZWQgYnkK
dGhlIHRlc3QpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hl
YXJ0YmVhdC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwpp
bmRleCA5ZTczNzZiNTkyZTUuLjA3YTJmZmZlMTZhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwpAQCAtOTcsNiArOTcsOCBA
QCBzdGF0aWMgaW50IF9fbGl2ZV9pZGxlX3B1bHNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwKIAkJZ290byBvdXQ7CiAJfQogCisJR0VNX0JVR19PTihSRUFEX09OQ0UoZW5naW5lLT5z
ZXJpYWwpICE9IGVuZ2luZS0+d2FrZXJlZl9zZXJpYWwpOworCiAJcHVsc2VfdW5sb2NrX3dhaXQo
cCk7IC8qIHN5bmNocm9uaXplIHdpdGggdGhlIHJldGlyZW1lbnQgY2FsbGJhY2sgKi8KIAogCWlm
ICghaTkxNV9hY3RpdmVfaXNfaWRsZSgmcC0+YWN0aXZlKSkgewotLSAKMi4yNC4wLnJjMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
