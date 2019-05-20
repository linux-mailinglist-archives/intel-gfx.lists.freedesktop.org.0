Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FA023129
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A8D892BF;
	Mon, 20 May 2019 10:18:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7342C8925D
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 10:18:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 03:18:21 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2019 03:18:20 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 11:18:16 +0100
Message-Id: <20190520101816.20016-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520101816.20016-1-tvrtko.ursulin@linux.intel.com>
References: <20190520101816.20016-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/icl: Add WaDisableBankHangMode
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkRpc2FibGUg
R1BVIGhhbmcgYnkgZGVmYXVsdCBvbiB1bnJlY292ZXJhYmxlIEVDQyBjYWNoZSBlcnJvcnMuCgp2
MjoKICogUmViYXNlLgoKRml4ZXM6IGNjMzhjYWU3YzRlOSAoImRybS9pOTE1L2ljbDogSW50cm9k
dWNlIGluaXRpYWwgSWNlbGFrZSBXb3JrYXJvdW5kcyIpClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkFja2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA0
Njg5MjhjZDhmYjMuLjFhNzMwNDI0ZWJhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCkBAIC01MjgsNiArNTI4LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9j
dHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkJ
ICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gaTkxNTsKKworCS8qIFdhRGlzYWJsZUJhbmtIYW5nTW9kZTppY2wgKi8KKwl3YV93cml0
ZSh3YWwsCisJCSBHRU44X0wzQ05UTFJFRywKKwkJIEk5MTVfUkVBRChHRU44X0wzQ05UTFJFRykg
fCBHRU44X0VSUkRFVEJDVFJMKTsKIAogCS8qIFdhXzE2MDQzNzA1ODU6aWNsIChwcmUtcHJvZCkK
IAkgKiBGb3JtZXJseSBrbm93biBhcyBXYVB1c2hDb25zdGFudERlcmVmZXJlbmNlSG9sZERpc2Fi
bGUKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGU5N2M0N2ZjYTY0NS4uODdlODc4MDcxMWQ3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc2MjEsNiArNzYyMSw5IEBAIGVudW0gewog
ICAjZGVmaW5lIEdFTjhfU0JFX0RJU0FCTEVfUkVQTEFZX0JVRl9PUFRJTUlaQVRJT04JCSgxIDw8
IDgpCiAgICNkZWZpbmUgR0VOOF9DU0MyX1NCRV9WVUVfQ0FDSEVfQ09OU0VSVkFUSVZFCQkJKDEg
PDwgMCkKIAorI2RlZmluZSBHRU44X0wzQ05UTFJFRwlfTU1JTygweDcwMzQpCisgICNkZWZpbmUg
R0VOOF9FUlJERVRCQ1RSTCAoMSA8PCA5KQorCiAjZGVmaW5lIEdFTjExX0NPTU1PTl9TTElDRV9D
SElDS0VOMwkJX01NSU8oMHg3MzA0KQogICAjZGVmaW5lIEdFTjExX0JMRU5EX0VNQl9GSVhfRElT
QUJMRV9JTl9SQ0MJKDEgPDwgMTEpCiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
