Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F84FF18F1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 15:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D85887B3;
	Wed,  6 Nov 2019 14:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E2A6ED91
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 14:42:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19103234-1500050 
 for multiple; Wed, 06 Nov 2019 14:41:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 14:41:55 +0000
Message-Id: <20191106144155.25727-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Fix error path to unlock if the
 GEM context is closed
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBpbnNpZGUgdGhlIGxvY2ssIHJlbWVtYmVyIHRvIHVubG9jayBldmVuIGlmIHlvdSB3YW50
IHRvIGxlYXZlCmVhcmx5LgoKUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50
ZXJAb3JhY2xlLmNvbT4KRml4ZXM6IGE0ZTdjY2RhYzM4ZSAoImRybS9pOTE1OiBNb3ZlIGNvbnRl
eHQgbWFuYWdlbWVudCB1bmRlciBHRU0iKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGEw
NmNjOGU2MzI4MS4uNzc0ZDcxYjFlYTliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMKQEAgLTExNjgsNyArMTE2OCw3IEBAIHN0YXRpYyBpbnQgc2V0X3Bw
Z3R0KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKIAogCWlmIChpOTE1
X2dlbV9jb250ZXh0X2lzX2Nsb3NlZChjdHgpKSB7CiAJCWVyciA9IC1FTk9FTlQ7Ci0JCWdvdG8g
b3V0OworCQlnb3RvIHVubG9jazsKIAl9CiAKIAlpZiAodm0gPT0gcmN1X2FjY2Vzc19wb2ludGVy
KGN0eC0+dm0pKQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
