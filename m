Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D5B22ED3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02C989450;
	Mon, 20 May 2019 08:28:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60BA8940F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:28:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 01:28:20 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga006.jf.intel.com with ESMTP; 20 May 2019 01:28:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 09:28:16 +0100
Message-Id: <20190520082816.32137-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082816.32137-1-tvrtko.ursulin@linux.intel.com>
References: <20190520082816.32137-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/icl: Add WaDisableBankHangMode
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
R1BVIGhhbmcgYnkgZGVmYXVsdCBvbiB1bnJlY292ZXJhYmxlIEVDQyBjYWNoZSBlcnJvcnMuCgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDQ0OTRiYzkxNzA4NC4uZGVhN2RmMDFlMGRjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTUzMiw2
ICs1MzIsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGVuZ2luZS0+aTkxNTsKIAlzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwgPSAmZW5naW5lLT5j
dHhfd2FfbGlzdDsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBpOTE1Owor
CisJLyogV2FEaXNhYmxlQmFua0hhbmdNb2RlOmljbCAqLworCXdhX3dyaXRlKHdhbCwKKwkJIEdF
TjhfTDNDTlRMUkVHLAorCQkgSTkxNV9SRUFEKEdFTjhfTDNDTlRMUkVHKSB8IEdFTjhfRVJSREVU
QkNUUkwpOwogCiAJLyogV2FfMTYwNDM3MDU4NTppY2wgKHByZS1wcm9kKQogCSAqIEZvcm1lcmx5
IGtub3duIGFzIFdhUHVzaENvbnN0YW50RGVyZWZlcmVuY2VIb2xkRGlzYWJsZQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggZTk3YzQ3ZmNhNjQ1Li44N2U4NzgwNzExZDcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNzYyMSw2ICs3NjIxLDkgQEAgZW51bSB7CiAgICNkZWZpbmUgR0VO
OF9TQkVfRElTQUJMRV9SRVBMQVlfQlVGX09QVElNSVpBVElPTgkJKDEgPDwgOCkKICAgI2RlZmlu
ZSBHRU44X0NTQzJfU0JFX1ZVRV9DQUNIRV9DT05TRVJWQVRJVkUJCQkoMSA8PCAwKQogCisjZGVm
aW5lIEdFTjhfTDNDTlRMUkVHCV9NTUlPKDB4NzAzNCkKKyAgI2RlZmluZSBHRU44X0VSUkRFVEJD
VFJMICgxIDw8IDkpCisKICNkZWZpbmUgR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zCQlfTU1J
TygweDczMDQpCiAgICNkZWZpbmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNBQkxFX0lOX1JDQwko
MSA8PCAxMSkKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
