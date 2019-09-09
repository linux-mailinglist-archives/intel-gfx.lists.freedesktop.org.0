Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55465AE162
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 01:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3714A89D4A;
	Mon,  9 Sep 2019 23:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B43A89D4A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 23:13:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 16:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="185334999"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2019 16:13:09 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 16:14:45 -0700
Message-Id: <20190909231445.23815-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement Wa_1409142259
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

RGlzYWJsZSBDUFMgYXdhcmUgY29sb3IgcGlwZSBieSBzZXR0aW5nIGNoaWNrZW4gYml0LgoKQlNw
ZWM6IDUyODkwCkhTREVTOiAxNDA5MTQyMjU5Cgp2MjogTW92ZSBXQSB0byBjdHggV0EncyhEYW5p
ZWxlKQoKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+CkNjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpD
YzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
UmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMyArKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKaW5kZXggMjQzZDNmNzdiZTEzLi45NWVmMmYxZGZkYmIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNTY3LDYgKzU2Nyw5
IEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCiBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJCSAgICAgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQogeworCS8qIFdhXzE0MDkxNDIyNTkgKi8KKwlXQV9TRVRfQklUX01BU0tFRChHRU4x
MV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCisJCQkgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NP
TE9SX1BJUEUpOwogfQogCiBzdGF0aWMgdm9pZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXgg
MDA2Y2ZmZDU2YmUyLi41M2UwNzg4MmVmYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAt
NzY2OCw2ICs3NjY4LDcgQEAgZW51bSB7CiAKICNkZWZpbmUgR0VOMTFfQ09NTU9OX1NMSUNFX0NI
SUNLRU4zCQlfTU1JTygweDczMDQpCiAgICNkZWZpbmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNB
QkxFX0lOX1JDQwkoMSA8PCAxMSkKKyAgI2RlZmluZSBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9D
T0xPUl9QSVBFCSgxIDw8IDkpCiAKICNkZWZpbmUgSElaX0NISUNLRU4JCQkJCV9NTUlPKDB4NzAx
OCkKICMgZGVmaW5lIENIVl9IWl84WDhfTU9ERV9JTl8xWAkJCQkoMSA8PCAxNSkKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
