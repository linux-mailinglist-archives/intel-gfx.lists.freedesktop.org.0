Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8782FE157
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490636E89C;
	Fri, 15 Nov 2019 15:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACDA6E89C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:34:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:43 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="208449845"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 17:33:45 +0200
Message-Id: <cf46441e047c3232f226ea5d57d153e4854c51a6.1573831924.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915/dsi: use afe_clk() instead of
 intel_dsi_bitrate()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UnbGwgYmUgZXhwYW5kaW5nIGFmZV9jbGsoKSB0byB0YWtlIERTQyBpbnRvIGFjY291bnQuIFN3
aXRjaCB0byB1c2luZwppdCB3aGVyZSBEU0MgbWF0dGVycy4gV2hpY2ggaXMgcmVhbGx5IGV2ZXJ5
d2hlcmUgdGhhdAppbnRlbF9kc2lfYml0cmF0ZSgpIGlzIGN1cnJlbnRseSB1c2VkIGluIElDTCBE
U0kgY29kZS4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgOCArKysrLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IGRlMzc0MzIzM2RjYi4uZDU3NmYyOWNl
Zjc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNTM5LDcgKzUz
OSw3IEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9zZXR1cF9kcGh5X3RpbWluZ3Moc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpCiAJICogbGVhdmUgYWxsIGZpZWxkcyBhdCBIVyBkZWZhdWx0
IHZhbHVlcy4KIAkgKi8KIAlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKLQkJaWYgKGludGVs
X2RzaV9iaXRyYXRlKGludGVsX2RzaSkgPD0gODAwMDAwKSB7CisJCWlmIChhZmVfY2xrKGVuY29k
ZXIpIDw9IDgwMDAwMCkgewogCQkJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5w
b3J0cykgewogCQkJCXRtcCA9IEk5MTVfUkVBRChEUEhZX1RBX1RJTUlOR19QQVJBTShwb3J0KSk7
CiAJCQkJdG1wICY9IH5UQV9TVVJFX01BU0s7CkBAIC02NDksNyArNjQ5LDcgQEAgZ2VuMTFfZHNp
X2NvbmZpZ3VyZV90cmFuc2NvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJ
dG1wIHw9IEVPVFBfRElTQUJMRUQ7CiAKIAkJLyogZW5hYmxlIGxpbmsgY2FsaWJyYXRpb24gaWYg
ZnJlcSA+IDEuNUdicHMgKi8KLQkJaWYgKGludGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSkgPj0g
MTUwMCAqIDEwMDApIHsKKwkJaWYgKGFmZV9jbGsoZW5jb2RlcikgPj0gMTUwMCAqIDEwMDApIHsK
IAkJCXRtcCAmPSB+TElOS19DQUxJQlJBVElPTl9NQVNLOwogCQkJdG1wIHw9IENBTElCUkFUSU9O
X0VOQUJMRURfSU5JVElBTF9PTkxZOwogCQl9CkBAIC05MzAsNyArOTMwLDcgQEAgc3RhdGljIHZv
aWQgZ2VuMTFfZHNpX3NldHVwX3RpbWVvdXRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQogCSAqIFRJTUVfTlMgPSAoQllURV9DTEtfQ09VTlQgKiA4ICogMTBeNikvIEJpdHJhdGUKIAkg
KiBFU0NBUEVfQ0xLX0NPVU5UICA9IFRJTUVfTlMvRVNDX0NMS19OUwogCSAqLwotCWRpdmlzb3Ig
PSBpbnRlbF9kc2lfdGxweF9ucyhpbnRlbF9kc2kpICogaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxf
ZHNpKSAqIDEwMDA7CisJZGl2aXNvciA9IGludGVsX2RzaV90bHB4X25zKGludGVsX2RzaSkgKiBh
ZmVfY2xrKGVuY29kZXIpICogMTAwMDsKIAltdWwgPSA4ICogMTAwMDAwMDsKIAloc190eF90aW1l
b3V0ID0gRElWX1JPVU5EX1VQKGludGVsX2RzaS0+aHNfdHhfdGltZW91dCAqIG11bCwKIAkJCQkg
ICAgIGRpdmlzb3IpOwpAQCAtMTMwMCw3ICsxMzAwLDcgQEAgc3RhdGljIGludCBnZW4xMV9kc2lf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCXBpcGVfY29u
ZmlnLT5waXBlX2JwcCA9IDE4OwogCiAJcGlwZV9jb25maWctPmNsb2NrX3NldCA9IHRydWU7Ci0J
cGlwZV9jb25maWctPnBvcnRfY2xvY2sgPSBpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIC8g
NTsKKwlwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9IGFmZV9jbGsoZW5jb2RlcikgLyA1OwogCiAJ
cmV0dXJuIDA7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
