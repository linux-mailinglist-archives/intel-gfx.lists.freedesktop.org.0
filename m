Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8551263E85
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 02:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2E589907;
	Wed, 10 Jul 2019 00:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8BE89907
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 00:03:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 17:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="173713786"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jul 2019 17:03:58 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 17:06:13 -0700
Message-Id: <20190710000613.18866-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190709214735.16907-1-manasi.d.navare@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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

T24gVEdMKyB3ZSBzdXBwb3J0IDhLIGRpc3BsYXkgcmVzb2x1dGlvbiwgaGVuY2UgYnVtcCB1cCB0
aGUgdmVydGljYWwKYWN0aXZlIGxpbWl0cyB0byA0MzIwIGluIGludGVsX21vZGVfdmFsaWQoKQoK
djI6CiogQ2hlY2twYXRjaCB3YXJuaW5nIChNYW5hc2kpCgpDYzogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGYwNzA4MTgxNWI4MC4uY2ZjZWIyN2U0YjllIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTU3
NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYyKSkKIAkJcmV0dXJuIE1PREVfQkFEOwogCi0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSB8fAotCSAgICBJU19CUk9BRFdFTEwoZGV2X3By
aXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIpIHsKKwkJaGRpc3BsYXlfbWF4ID0gODE5MjsKKwkJdmRpc3BsYXlfbWF4ID0gNDMyMDsK
KwkJaHRvdGFsX21heCA9IDgxOTI7CisJCXZ0b3RhbF9tYXggPSA4MTkyOworCX0gZWxzZSBpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8CisJCSAgIElTX0JST0FEV0VMTChkZXZfcHJpdikg
fHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyogRkRJ
IG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCiAJCXZkaXNwbGF5X21heCA9IDQwOTY7CiAJ
CWh0b3RhbF9tYXggPSA4MTkyOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
