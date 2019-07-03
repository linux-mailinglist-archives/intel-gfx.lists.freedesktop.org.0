Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03DA5E0CB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70516E10C;
	Wed,  3 Jul 2019 09:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3E96E10A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:17:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110507-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:16 +0100
Message-Id: <20190703091726.11690-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/15] drm/i915/gt: Ignore forcewake acquisition
 for posting_reads
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZG9uJ3QgY2FyZSBhYm91dCB0aGUgcmVzdWx0IG9mIHRoZSByZWFkLCBzbyBpdCBtYXkgYmUg
Z2FyYmFnZSwgd2UKb25seSBjYXJlIHRoYXQgdGhlIG1taW8gaXMgZmx1c2hlZC4gQXMgc3VjaCwg
d2UgY2FuIGZvcmdvIHVzaW5nIGFuCmluZGl2aWR1YWwgZm9yY2V3YWtlIGFuZCBsb2NrIGFyb3Vu
ZCBhbnkgcG9zdGluZy1yZWFkIGZvciBhbiBlbmdpbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmUuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5k
ZXggNTU3YjA4YjEzZmViLi4wMzMxZTlhYzI0ODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oCkBAIC01MSw3ICs1MSw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKICNkZWZp
bmUgRU5HSU5FX1JFQUQxNiguLi4pCV9fRU5HSU5FX1JFQURfT1AocmVhZDE2LCBfX1ZBX0FSR1Nf
XykKICNkZWZpbmUgRU5HSU5FX1JFQUQoLi4uKQlfX0VOR0lORV9SRUFEX09QKHJlYWQsIF9fVkFf
QVJHU19fKQogI2RlZmluZSBFTkdJTkVfUkVBRF9GVyguLi4pCV9fRU5HSU5FX1JFQURfT1AocmVh
ZF9mdywgX19WQV9BUkdTX18pCi0jZGVmaW5lIEVOR0lORV9QT1NUSU5HX1JFQUQoLi4uKSBfX0VO
R0lORV9SRUFEX09QKHBvc3RpbmdfcmVhZCwgX19WQV9BUkdTX18pCisjZGVmaW5lIEVOR0lORV9Q
T1NUSU5HX1JFQUQoLi4uKSBfX0VOR0lORV9SRUFEX09QKHBvc3RpbmdfcmVhZF9mdywgX19WQV9B
UkdTX18pCiAjZGVmaW5lIEVOR0lORV9QT1NUSU5HX1JFQUQxNiguLi4pIF9fRU5HSU5FX1JFQURf
T1AocG9zdGluZ19yZWFkMTYsIF9fVkFfQVJHU19fKQogCiAjZGVmaW5lIEVOR0lORV9SRUFENjQo
ZW5naW5lX18sIGxvd2VyX3JlZ19fLCB1cHBlcl9yZWdfXykgXAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
