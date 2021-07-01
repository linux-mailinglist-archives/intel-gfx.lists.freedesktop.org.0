Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541953B9723
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:20:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 421056E0B8;
	Thu,  1 Jul 2021 20:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7996E0B8;
 Thu,  1 Jul 2021 20:20:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272469698"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272469698"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:20:22 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="448041878"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:20:21 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: michael.j.ruhl@intel.com, daniel@ffwll.ch,
 thomas.hellstrom@linux.intel.com, ckoenig.leichtzumerken@gmail.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 matthew.auld@intel.com, maarten.lankhorst@linux.intel.com
Date: Thu,  1 Jul 2021 16:20:14 -0400
Message-Id: <20210701202014.910098-2-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210701202014.910098-1-michael.j.ruhl@intel.com>
References: <20210701202014.910098-1-michael.j.ruhl@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915/gem: Migrate to system at
 dma-buf attach time
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgoKVW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBt
aWdyYXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lIGlmIHBv
c3NpYmxlLgoKdjI6Ci0gUmViYXNlIG9uIGR5bmFtaWMgZXhwb3J0ZXIuIFVwZGF0ZSB0aGUgaWd0
X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIKICBzZWxmdGVzdCB0byBtaWdyYXRlIGlmIHdlIGFy
ZSBMTUVNIGNhcGFibGUuCnYzOgotIE1pZ3JhdGUgYWxzbyBpbiB0aGUgcGluKCkgY2FsbGJhY2su
CnY0OgotIE1pZ3JhdGUgaW4gYXR0YWNoCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2
bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hh
ZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICAgICAgICAgfCAxMiArKysrKysrKysrKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgfCAg
NCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IGNjYWUx
N2Q1ZjQ0MS4uMjgwMjkxYTRhOWRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RtYWJ1Zi5jCkBAIC0xNzAsOSArMTcwLDE5IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fZG1h
YnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCQkJCSAgc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNoKQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmog
PSBkbWFfYnVmX3RvX29iaihkbWFidWYpOworCWludCByZXQ7CiAKIAlhc3NlcnRfb2JqZWN0X2hl
bGQob2JqKTsKLQlyZXR1cm4gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCisJaWYg
KCFpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUob2JqLCBJTlRFTF9SRUdJT05fU01FTSkpCisJ
CXJldHVybiAtRU9QTk9UU1VQUDsKKwlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbWlncmF0ZShvYmos
IE5VTEwsIElOVEVMX1JFR0lPTl9TTUVNKTsKKwlpZiAoIXJldCkKKwkJcmV0ID0gaTkxNV9nZW1f
b2JqZWN0X3dhaXRfbWlncmF0aW9uKG9iaiwgMCk7CisJaWYgKCFyZXQpCisJCXJldCA9IGk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKKworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyB2
b2lkIGk5MTVfZ2VtX2RtYWJ1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVm
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5j
CmluZGV4IDg2OGIzNDY5ZWNiZC4uYjFlODdlYzA4NzQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTEwNiw3ICsx
MDYsOSBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X3NhbWVfZHJpdmVyKHZvaWQgKmFy
ZykKIAlpbnQgZXJyOwogCiAJZm9yY2VfZGlmZmVyZW50X2RldmljZXMgPSB0cnVlOwotCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgUEFHRV9TSVpFKTsKKwlvYmogPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oaTkxNSwgUEFHRV9TSVpFLCAwKTsKKwlpZiAoSVNf
RVJSKG9iaikpCisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgUEFH
RV9TSVpFKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCWdvdG8gb3V0X3JldDsKIAotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
