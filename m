Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA49B0F2E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B756ED34;
	Thu, 12 Sep 2019 12:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E23F6ED34
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:54:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 05:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385056581"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 05:54:41 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.141) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Sep 2019 13:54:40 +0100
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 12 Sep 2019 15:54:18 +0300
Message-ID: <20190912125418.23115-2-arkadiusz.hiler@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912125418.23115-1-arkadiusz.hiler@intel.com>
References: <20190912125418.23115-1-arkadiusz.hiler@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Originating-IP: [10.237.68.141]
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Get the correct wakeref for
 reading HOTPLUG_EN et al.
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

V2l0aG91dCBpdCB3ZSBnZXQ6CiBVbmNsYWltZWQgcmVhZCBmcm9tIHJlZ2lzdGVyIDB4MWUxMTEw
CiBXQVJOSU5HOiBDUFU6IDIgUElEOiAxMDI5IGF0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3VuY29yZS5jOjExMDEgX191bmNsYWltZWRfcmVnX2RlYnVnKzB4NDAvMHg1MCBbaTkxNV0KIENh
bGwgVHJhY2U6CiAgZnd0YWJsZV9yZWFkMzIrMHgyMzMvMHgzMDAgW2k5MTVdCiAgaTkxNV9pbnRl
cnJ1cHRfaW5mbysweGE3My8weGQ2MCBbaTkxNV0KICBzZXFfcmVhZCsweGRiLzB4M2MwCiAgZnVs
bF9wcm94eV9yZWFkKzB4NTEvMHg4MAogIHZmc19yZWFkKzB4OWUvMHgxNjAKICBrc3lzX3JlYWQr
MHg4Zi8weGUwCiAgZG9fc3lzY2FsbF82NCsweDU1LzB4MWMwCiAgZW50cnlfU1lTQ0FMTF82NF9h
ZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA5ODI0ClNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBIaWxlciA8YXJrYWRpdXN6
LmhpbGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZTU4MzUzMzdmMDIyLi4yOWYz
NDM2MTY3YTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC01MzQsNiArNTM0
LDcgQEAgc3RhdGljIGludCBpOTE1X2ludGVycnVwdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwg
dm9pZCAqZGF0YSkKIAogCQlnZW44X2Rpc3BsYXlfaW50ZXJydXB0X2luZm8obSk7CiAJfSBlbHNl
IGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSkgeworCQlpbnRlbF93YWtlcmVmX3QgcHJlZjsK
IAkJc2VxX3ByaW50ZihtLCAiRGlzcGxheSBJRVI6XHQlMDh4XG4iLAogCQkJICAgSTkxNV9SRUFE
KFZMVl9JRVIpKTsKIAkJc2VxX3ByaW50ZihtLCAiRGlzcGxheSBJSVI6XHQlMDh4XG4iLApAQCAt
NTQ0LDcgKzU0NSw2IEBAIHN0YXRpYyBpbnQgaTkxNV9pbnRlcnJ1cHRfaW5mbyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCQkgICBJOTE1X1JFQUQoVkxWX0lNUikpOwogCQlmb3Jf
ZWFjaF9waXBlKGRldl9wcml2LCBwaXBlKSB7CiAJCQllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJf
ZG9tYWluIHBvd2VyX2RvbWFpbjsKLQkJCWludGVsX3dha2VyZWZfdCBwcmVmOwogCiAJCQlwb3dl
cl9kb21haW4gPSBQT1dFUl9ET01BSU5fUElQRShwaXBlKTsKIAkJCXByZWYgPSBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2dldF9pZl9lbmFibGVkKGRldl9wcml2LApAQCAtNTc4LDEyICs1NzgsMTQgQEAg
c3RhdGljIGludCBpOTE1X2ludGVycnVwdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkKIAkJc2VxX3ByaW50ZihtLCAiUE0gSU1SOlx0XHQlMDh4XG4iLAogCQkJICAgSTkxNV9S
RUFEKEdFTjZfUE1JTVIpKTsKIAorCQlwcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2
X3ByaXYsIFBPV0VSX0RPTUFJTl9JTklUKTsKIAkJc2VxX3ByaW50ZihtLCAiUG9ydCBob3RwbHVn
Olx0JTA4eFxuIiwKIAkJCSAgIEk5MTVfUkVBRChQT1JUX0hPVFBMVUdfRU4pKTsKIAkJc2VxX3By
aW50ZihtLCAiRFBGTElQU1RBVDpcdCUwOHhcbiIsCiAJCQkgICBJOTE1X1JFQUQoVkxWX0RQRkxJ
UFNUQVQpKTsKIAkJc2VxX3ByaW50ZihtLCAiRFBJTlZHVFQ6XHQlMDh4XG4iLAogCQkJICAgSTkx
NV9SRUFEKERQSU5WR1RUKSk7CisJCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBQ
T1dFUl9ET01BSU5fSU5JVCwgcHJlZik7CiAKIAl9IGVsc2UgaWYgKCFIQVNfUENIX1NQTElUKGRl
dl9wcml2KSkgewogCQlzZXFfcHJpbnRmKG0sICJJbnRlcnJ1cHQgZW5hYmxlOiAgICAlMDh4XG4i
LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
