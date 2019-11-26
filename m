Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB9E109F6B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B42D6E3D3;
	Tue, 26 Nov 2019 13:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E3B6E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:44 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="206590129"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:44 +0200
Message-Id: <bf3b0fb17595eb483597f2dd6d14f861656eba01.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 09/13] drm/i915/dsi: use afe_clk() instead of
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
U0kgY29kZS4KClRoZSBmdW5jdGlvbmFsIGRpZmZlcmVuY2UgaXMgdGhhdCB3ZSByb3VuZCB0aGUg
cmVzdWx0IGNsb3Nlc3QgaW5zdGVhZCBvZgpkb3duLgoKQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
YyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCBkZTM3NDMy
MzNkY2IuLmQ1NzZmMjljZWY3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNp
LmMKQEAgLTUzOSw3ICs1MzksNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90
aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCSAqIGxlYXZlIGFsbCBmaWVs
ZHMgYXQgSFcgZGVmYXVsdCB2YWx1ZXMuCiAJICovCiAJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEp
KSB7Ci0JCWlmIChpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIDw9IDgwMDAwMCkgeworCQlp
ZiAoYWZlX2NsayhlbmNvZGVyKSA8PSA4MDAwMDApIHsKIAkJCWZvcl9lYWNoX2RzaV9wb3J0KHBv
cnQsIGludGVsX2RzaS0+cG9ydHMpIHsKIAkJCQl0bXAgPSBJOTE1X1JFQUQoRFBIWV9UQV9USU1J
TkdfUEFSQU0ocG9ydCkpOwogCQkJCXRtcCAmPSB+VEFfU1VSRV9NQVNLOwpAQCAtNjQ5LDcgKzY0
OSw3IEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAkJCXRtcCB8PSBFT1RQX0RJU0FCTEVEOwogCiAJCS8qIGVuYWJsZSBsaW5r
IGNhbGlicmF0aW9uIGlmIGZyZXEgPiAxLjVHYnBzICovCi0JCWlmIChpbnRlbF9kc2lfYml0cmF0
ZShpbnRlbF9kc2kpID49IDE1MDAgKiAxMDAwKSB7CisJCWlmIChhZmVfY2xrKGVuY29kZXIpID49
IDE1MDAgKiAxMDAwKSB7CiAJCQl0bXAgJj0gfkxJTktfQ0FMSUJSQVRJT05fTUFTSzsKIAkJCXRt
cCB8PSBDQUxJQlJBVElPTl9FTkFCTEVEX0lOSVRJQUxfT05MWTsKIAkJfQpAQCAtOTMwLDcgKzkz
MCw3IEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9zZXR1cF90aW1lb3V0cyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcikKIAkgKiBUSU1FX05TID0gKEJZVEVfQ0xLX0NPVU5UICogOCAqIDEw
XjYpLyBCaXRyYXRlCiAJICogRVNDQVBFX0NMS19DT1VOVCAgPSBUSU1FX05TL0VTQ19DTEtfTlMK
IAkgKi8KLQlkaXZpc29yID0gaW50ZWxfZHNpX3RscHhfbnMoaW50ZWxfZHNpKSAqIGludGVsX2Rz
aV9iaXRyYXRlKGludGVsX2RzaSkgKiAxMDAwOworCWRpdmlzb3IgPSBpbnRlbF9kc2lfdGxweF9u
cyhpbnRlbF9kc2kpICogYWZlX2NsayhlbmNvZGVyKSAqIDEwMDA7CiAJbXVsID0gOCAqIDEwMDAw
MDA7CiAJaHNfdHhfdGltZW91dCA9IERJVl9ST1VORF9VUChpbnRlbF9kc2ktPmhzX3R4X3RpbWVv
dXQgKiBtdWwsCiAJCQkJICAgICBkaXZpc29yKTsKQEAgLTEzMDAsNyArMTMwMCw3IEBAIHN0YXRp
YyBpbnQgZ2VuMTFfZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCQlwaXBlX2NvbmZpZy0+cGlwZV9icHAgPSAxODsKIAogCXBpcGVfY29uZmlnLT5jbG9j
a19zZXQgPSB0cnVlOwotCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gaW50ZWxfZHNpX2JpdHJh
dGUoaW50ZWxfZHNpKSAvIDU7CisJcGlwZV9jb25maWctPnBvcnRfY2xvY2sgPSBhZmVfY2xrKGVu
Y29kZXIpIC8gNTsKIAogCXJldHVybiAwOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
