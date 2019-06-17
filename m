Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDA448B95
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E328930F;
	Mon, 17 Jun 2019 18:13:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9A48930F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:13:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:13:04 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2019 11:13:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 19:12:14 +0100
Message-Id: <20190617181236.7981-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 11/33] drm/i915: Store backpointer to intel_gt in
 the engine
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHdpbGwg
Y29tZSB1c2VmdWwgaW4gdGhlIG5leHQgcGF0Y2guCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV90eXBlcy5oIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDgwZmY0NzVm
OGQ1My4uMjllYzlhYWFmMWM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwpAQCAtMzE2LDYgKzMxNiw3IEBAIGludGVsX2VuZ2luZV9zZXR1cChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJZW5naW5lLT5pZCA9IGlkOwogCWVuZ2luZS0+bWFz
ayA9IEJJVChpZCk7CiAJZW5naW5lLT5pOTE1ID0gZGV2X3ByaXY7CisJZW5naW5lLT5ndCA9ICZk
ZXZfcHJpdi0+Z3Q7CiAJZW5naW5lLT51bmNvcmUgPSAmZGV2X3ByaXYtPnVuY29yZTsKIAlfX3Nw
cmludF9lbmdpbmVfbmFtZShlbmdpbmUtPm5hbWUsIGluZm8pOwogCWVuZ2luZS0+aHdfaWQgPSBl
bmdpbmUtPmd1Y19pZCA9IGluZm8tPmh3X2lkOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaAppbmRleCBiMmZhY2E4ZTVkZWMuLjdhM2YxZjQzNTY3ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTM1LDYg
KzM1LDcgQEAgc3RydWN0IGRybV9pOTE1X3JlZ190YWJsZTsKIHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0Owogc3RydWN0IGk5MTVfcmVxdWVzdDsKIHN0cnVjdCBpOTE1X3NjaGVkX2F0dHI7CitzdHJ1
Y3QgaW50ZWxfZ3Q7CiBzdHJ1Y3QgaW50ZWxfdW5jb3JlOwogCiB0eXBlZGVmIHU4IGludGVsX2Vu
Z2luZV9tYXNrX3Q7CkBAIC0yNjcsNiArMjY4LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9leGVj
bGlzdHMgewogCiBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0OwogCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZTsKIAljaGFyIG5hbWVbSU5URUxfRU5HSU5FX0NTX01BWF9OQU1FXTsKIAotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
