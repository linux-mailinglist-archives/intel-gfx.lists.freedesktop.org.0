Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D245565
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2969589395;
	Fri, 14 Jun 2019 07:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A2DB89369
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:10:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897507-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:09:48 +0100
Message-Id: <20190614071023.17929-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/39] drm/i915: Enable refcount debugging for
 default debug levels
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

cmVmY291bnRfdCBpcyBvdXIgZmlyc3QgbGluZSBvZiBkZWZlbmNlIGFnYWluc3QgdXNlLWFmdGVy
LWZyZWUsIHNvIGxldCdzCmVuYWJsZSBpdCBmb3IgZGVidWdnaW5nLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKaW5kZXggMDlhYTBmNGM4YmYxLi44ZDky
MmJiNGQ5NTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZwpAQCAtMjEsNiArMjEsNyBA
QCBjb25maWcgRFJNX0k5MTVfREVCVUcKICAgICAgICAgZGVwZW5kcyBvbiBEUk1fSTkxNQogICAg
ICAgICBzZWxlY3QgREVCVUdfRlMKICAgICAgICAgc2VsZWN0IFBSRUVNUFRfQ09VTlQKKyAgICAg
ICAgc2VsZWN0IFJFRkNPVU5UX0ZVTEwKICAgICAgICAgc2VsZWN0IEkyQ19DSEFSREVWCiAgICAg
ICAgIHNlbGVjdCBTVEFDS0RFUE9UCiAgICAgICAgIHNlbGVjdCBEUk1fRFBfQVVYX0NIQVJERVYK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
