Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF66118592
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A2F6E8B1;
	Tue, 10 Dec 2019 10:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0EF6E8B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:52:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:10 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="363226425"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:52:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:55 +0200
Message-Id: <b6c52b320daa8aaa0d79618ce714170f8f04ff67.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 11/16] drm/i915/dsi: use afe_clk() instead of
 intel_dsi_bitrate()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UnbGwgYmUgZXhwYW5kaW5nIGFmZV9jbGsoKSB0byB0YWtlIERTQyBpbnRvIGFjY291bnQuIFN3
aXRjaCB0byB1c2luZwppdCB3aGVyZSBEU0MgbWF0dGVycy4gV2hpY2ggaXMgcmVhbGx5IGV2ZXJ5
d2hlcmUgdGhhdAppbnRlbF9kc2lfYml0cmF0ZSgpIGlzIGN1cnJlbnRseSB1c2VkIGluIElDTCBE
U0kgY29kZS4KClRoZSBmdW5jdGlvbmFsIGRpZmZlcmVuY2UgaXMgdGhhdCB3ZSByb3VuZCB0aGUg
cmVzdWx0IGNsb3Nlc3QgaW5zdGVhZCBvZgpkb3duLgoKQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRp
dGEua3Vsa2FybmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2Rz
aS5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IGRlMzc0
MzIzM2RjYi4uZDU3NmYyOWNlZjc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYwpAQCAtNTM5LDcgKzUzOSw3IEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9zZXR1cF9kcGh5
X3RpbWluZ3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJICogbGVhdmUgYWxsIGZp
ZWxkcyBhdCBIVyBkZWZhdWx0IHZhbHVlcy4KIAkgKi8KIAlpZiAoSVNfR0VOKGRldl9wcml2LCAx
MSkpIHsKLQkJaWYgKGludGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSkgPD0gODAwMDAwKSB7CisJ
CWlmIChhZmVfY2xrKGVuY29kZXIpIDw9IDgwMDAwMCkgewogCQkJZm9yX2VhY2hfZHNpX3BvcnQo
cG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgewogCQkJCXRtcCA9IEk5MTVfUkVBRChEUEhZX1RBX1RJ
TUlOR19QQVJBTShwb3J0KSk7CiAJCQkJdG1wICY9IH5UQV9TVVJFX01BU0s7CkBAIC02NDksNyAr
NjQ5LDcgQEAgZ2VuMTFfZHNpX2NvbmZpZ3VyZV90cmFuc2NvZGVyKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQkJdG1wIHw9IEVPVFBfRElTQUJMRUQ7CiAKIAkJLyogZW5hYmxlIGxp
bmsgY2FsaWJyYXRpb24gaWYgZnJlcSA+IDEuNUdicHMgKi8KLQkJaWYgKGludGVsX2RzaV9iaXRy
YXRlKGludGVsX2RzaSkgPj0gMTUwMCAqIDEwMDApIHsKKwkJaWYgKGFmZV9jbGsoZW5jb2Rlcikg
Pj0gMTUwMCAqIDEwMDApIHsKIAkJCXRtcCAmPSB+TElOS19DQUxJQlJBVElPTl9NQVNLOwogCQkJ
dG1wIHw9IENBTElCUkFUSU9OX0VOQUJMRURfSU5JVElBTF9PTkxZOwogCQl9CkBAIC05MzAsNyAr
OTMwLDcgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX3NldHVwX3RpbWVvdXRzKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQogCSAqIFRJTUVfTlMgPSAoQllURV9DTEtfQ09VTlQgKiA4ICog
MTBeNikvIEJpdHJhdGUKIAkgKiBFU0NBUEVfQ0xLX0NPVU5UICA9IFRJTUVfTlMvRVNDX0NMS19O
UwogCSAqLwotCWRpdmlzb3IgPSBpbnRlbF9kc2lfdGxweF9ucyhpbnRlbF9kc2kpICogaW50ZWxf
ZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSAqIDEwMDA7CisJZGl2aXNvciA9IGludGVsX2RzaV90bHB4
X25zKGludGVsX2RzaSkgKiBhZmVfY2xrKGVuY29kZXIpICogMTAwMDsKIAltdWwgPSA4ICogMTAw
MDAwMDsKIAloc190eF90aW1lb3V0ID0gRElWX1JPVU5EX1VQKGludGVsX2RzaS0+aHNfdHhfdGlt
ZW91dCAqIG11bCwKIAkJCQkgICAgIGRpdmlzb3IpOwpAQCAtMTMwMCw3ICsxMzAwLDcgQEAgc3Rh
dGljIGludCBnZW4xMV9kc2lfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiAJCXBpcGVfY29uZmlnLT5waXBlX2JwcCA9IDE4OwogCiAJcGlwZV9jb25maWctPmNs
b2NrX3NldCA9IHRydWU7Ci0JcGlwZV9jb25maWctPnBvcnRfY2xvY2sgPSBpbnRlbF9kc2lfYml0
cmF0ZShpbnRlbF9kc2kpIC8gNTsKKwlwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9IGFmZV9jbGso
ZW5jb2RlcikgLyA1OwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
