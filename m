Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F36D7A46
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9FB6E830;
	Tue, 15 Oct 2019 15:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB7F8926E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="396849944"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga006.fm.intel.com with ESMTP; 15 Oct 2019 08:45:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 09961840792; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:44 +0300
Message-Id: <20191015154449.10338-6-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/tgl: Wa_1409420604
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

QXZvaWQgcG9zc2libGUgaGFuZyBpbiBDUFNTIHVuaXQuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCmluZGV4IGRiNzg0NGRhYWNlOS4uYjdkN2ZkYzViYTkwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTg5Nyw2ICs4OTcsMTEgQEAgaWNsX2d0
X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCkKIHN0YXRpYyB2b2lkCiB0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQog
eworCS8qIFdhXzE0MDk0MjA2MDQ6dGdsICovCisJaWYgKElTX1RHTF9SRVZJRChpOTE1LCBUR0xf
UkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpCisJCXdhX3dyaXRlX29yKHdhbCwKKwkJCSAgICBTVUJT
TElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAorCQkJICAgIENQU1NVTklUX0NMS0dBVEVfRElTKTsK
IH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDc4MWNhMThjYjQ1
Yi4uNTFjM2U3OTc1ZDZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQwNTQsNiArNDA1
NCw5IEBAIGVudW0gewogI2RlZmluZSBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUJX01NSU8o
MHg5NTI0KQogI2RlZmluZSAgR1dVTklUX0NMS0dBVEVfRElTCQkoMSA8PCAxNikKIAorI2RlZmlu
ZSBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyCV9NTUlPKDB4OTUyOCkKKyNkZWZpbmUgIENQ
U1NVTklUX0NMS0dBVEVfRElTCQkoMSA8PCA5KQorCiAjZGVmaW5lIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFCV9NTUlPKDB4OTQzNCkKICNkZWZpbmUgIFZGVU5JVF9DTEtHQVRFX0RJUwkJKDEg
PDwgMjApCiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
