Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1964C63D15
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD9B6E0AC;
	Tue,  9 Jul 2019 21:06:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293666E0AA
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:06:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="364267306"
Received: from dawalker-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.131])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2019 14:06:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 22:06:20 +0100
Message-Id: <20190709210620.15805-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/icl: Verify engine workarounds in
 GEN8_L3SQCREG4
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkhhdmluZyBm
aXhlZCB0aGUgaW5jb3JlY3QgTUNSIHByb2dyYW1taW5nIGluIGFuIGVhcmxpZXIgcGF0Y2gsIHdl
IGNhbiBub3cKc3RvcCBpZ25vcmluZyByZWFkIGJhY2sgb2YgR0VOOF9MM1NRQ1JFRzQgZHVyaW5n
IGVuZ2luZSB3b3JrYXJvdW5kCnZlcmlmaWNhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDI3ICsrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYjVmMTlhZDQ4ZDIyLi4w
ZmE0M2ZmNzM2NmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwpAQCAtMTc2LDE5ICsxNzYsNiBAQCB3YV93cml0ZV9vcihzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogCXdhX3dyaXRlX21hc2tlZF9vcih3YWws
IHJlZywgdmFsLCB2YWwpOwogfQogCi1zdGF0aWMgdm9pZAotaWdub3JlX3dhX3dyaXRlX29yKHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLCB1MzIgdmFs
KQotewotCXN0cnVjdCBpOTE1X3dhIHdhID0gewotCQkucmVnICA9IHJlZywKLQkJLm1hc2sgPSBt
YXNrLAotCQkudmFsICA9IHZhbCwKLQkJLyogQm9ua2VycyBIVywgc2tpcCB2ZXJpZnlpbmcgKi8K
LQl9OwotCi0JX3dhX2FkZCh3YWwsICZ3YSk7Ci19Ci0KICNkZWZpbmUgV0FfU0VUX0JJVF9NQVNL
RUQoYWRkciwgbWFzaykgXAogCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIChhZGRyKSwgKG1hc2sp
LCBfTUFTS0VEX0JJVF9FTkFCTEUobWFzaykpCiAKQEAgLTEyMzQsMTAgKzEyMjEsOSBAQCByY3Nf
ZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwpCiAJCQkgICAgIF8zRF9DSElDS0VOM19BQV9MSU5FX1FVQUxJVFlfRklY
X0VOQUJMRSk7CiAKIAkJLyogV2FQaXBlbGluZUZsdXNoQ29oZXJlbnRMaW5lczppY2wgKi8KLQkJ
aWdub3JlX3dhX3dyaXRlX29yKHdhbCwKLQkJCQkgICBHRU44X0wzU1FDUkVHNCwKLQkJCQkgICBH
RU44X0xRU0NfRkxVU0hfQ09IRVJFTlRfTElORVMsCi0JCQkJICAgR0VOOF9MUVNDX0ZMVVNIX0NP
SEVSRU5UX0xJTkVTKTsKKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJICAgIEdFTjhfTDNTUUNSRUc0
LAorCQkJICAgIEdFTjhfTFFTQ19GTFVTSF9DT0hFUkVOVF9MSU5FUyk7CiAKIAkJLyoKIAkJICog
V2FfMTQwNTU0MzYyMjppY2wKQEAgLTEyNjQsMTAgKzEyNTAsOSBAQCByY3NfZW5naW5lX3dhX2lu
aXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwpCiAJCSAqIFdhXzE0MDU3MzMyMTY6aWNsCiAJCSAqIEZvcm1lcmx5IGtub3duIGFzIFdhRGlz
YWJsZUNsZWFuRXZpY3RzCiAJCSAqLwotCQlpZ25vcmVfd2Ffd3JpdGVfb3Iod2FsLAotCQkJCSAg
IEdFTjhfTDNTUUNSRUc0LAotCQkJCSAgIEdFTjExX0xRU0NfQ0xFQU5fRVZJQ1RfRElTQUJMRSwK
LQkJCQkgICBHRU4xMV9MUVNDX0NMRUFOX0VWSUNUX0RJU0FCTEUpOworCQl3YV93cml0ZV9vcih3
YWwsCisJCQkgICAgR0VOOF9MM1NRQ1JFRzQsCisJCQkgICAgR0VOMTFfTFFTQ19DTEVBTl9FVklD
VF9ESVNBQkxFKTsKIAogCQkvKiBXYUZvcndhcmRQcm9ncmVzc1NvZnRSZXNldDppY2wgKi8KIAkJ
d2Ffd3JpdGVfb3Iod2FsLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
