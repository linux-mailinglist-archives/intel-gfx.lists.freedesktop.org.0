Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5F0D7A44
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D90D8926E;
	Tue, 15 Oct 2019 15:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD2189971
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279222127"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 15 Oct 2019 08:45:20 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 06BE8840790; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:43 +0300
Message-Id: <20191015154449.10338-5-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 05/11] drm/i915/tgl: Keep FF dop clock enabled
 for A0
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gZW5zdXJlIGNvcnJlY3Qgc3RhdGUgZGF0YSBmb3IgY29tcHV0ZSB3b3JrbG9hZHMsIHdlCm5l
ZWQgdG8ga2VlcCB0aGUgZmYgZG9wIGNsb2NrIGVuYWJsZWQuCgpSZWZlcmVuY2VzOiBIU0RFUyMx
NjA2NzAwNjE3ClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCA5ICsrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRl
eCBiYTY1ZTUwMTg5NzguLmRiNzg0NGRhYWNlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC01NjcsNyArNTY3LDcgQEAgc3RhdGljIHZvaWQgaWNs
X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIHN0
YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCiAJCQkJICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7Ci0JLyogV2Ff
MTQwOTE0MjI1OSAqLworCS8qIFdhXzE0MDkxNDIyNTk6dGdsICovCiAJV0FfU0VUX0JJVF9NQVNL
RUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zLAogCQkJICBHRU4xMl9ESVNBQkxFX0NQU19B
V0FSRV9DT0xPUl9QSVBFKTsKIH0KQEAgLTEyNjAsNiArMTI2MCwxMyBAQCByY3NfZW5naW5lX3dh
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7
CiAKKwlpZiAoSVNfVEdMX1JFVklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkg
eworCQkvKiBXYV8xNjA2NzAwNjE3OnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLAorCQkJICAg
ICBHRU45X0NTX0RFQlVHX01PREUxLAorCQkJICAgICBGRl9ET1BfQ0xPQ0tfR0FURV9ESVNBQkxF
KTsKKwl9CisKIAlpZiAoSVNfR0VOKGk5MTUsIDExKSkgewogCQkvKiBUaGlzIGlzIG5vdCBhbiBX
YS4gRW5hYmxlIGZvciBiZXR0ZXIgaW1hZ2UgcXVhbGl0eSAqLwogCQl3YV9tYXNrZWRfZW4od2Fs
LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggN2RkMTI2Y2MzYWMzLi43ODFjYTE4Y2I0NWIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzY3MSw2ICs3NjcxLDcgQEAgZW51bSB7CiAj
ZGVmaW5lICBHRU45X1BPT0xFRF9FVV9MT0FEX0JBTEFOQ0lOR19GSVhfRElTQUJMRSAgKDEgPDwg
MTApCiAKICNkZWZpbmUgR0VOOV9DU19ERUJVR19NT0RFMQkJX01NSU8oMHgyMGVjKQorICAjZGVm
aW5lIEZGX0RPUF9DTE9DS19HQVRFX0RJU0FCTEUJQklUKDEpCiAjZGVmaW5lIEdFTjlfQ1RYX1BS
RUVNUFRfUkVHCQlfTU1JTygweDIyNDgpCiAjZGVmaW5lIEdFTjhfQ1NfQ0hJQ0tFTjEJCV9NTUlP
KDB4MjU4MCkKICNkZWZpbmUgR0VOOV9QUkVFTVBUXzNEX09CSkVDVF9MRVZFTAkJKDEgPDwgMCkK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
