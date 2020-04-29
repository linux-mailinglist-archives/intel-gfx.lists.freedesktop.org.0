Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 184381BE6AF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 20:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306686EADC;
	Wed, 29 Apr 2020 18:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A5E6EADC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 18:55:00 +0000 (UTC)
IronPort-SDR: fLxhXTCz3IoVI04A5i4750O6+PkV+gmJt2aWwTWrt4B780JXXR+g2mpuqcEUBl5/S6RmsXS60j
 LDib9eVcQeSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 11:55:00 -0700
IronPort-SDR: Vq+Qj04OcryxiboKXZW7fcSkgoOFDOMRyy1QD5+PMMq6oAgSu0daYfvMxQI6ZcMKsfGCSZRjdh
 GA3zDF8o/Pww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="246938483"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 29 Apr 2020 11:54:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 21:54:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 21:54:55 +0300
Message-Id: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke mode.vrefresh usage
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCm1v
ZGUudnJlZnJlc2ggaXMgcm91bmRlZCB0byB0aGUgbmVhcmVzdCBpbnRlZ2VyLiBZb3UgZG9uJ3Qg
d2FudCB0byB1c2UKaXQgYW55d2hlcmUgdGhhdCByZXF1aXJlcyBwcmVjaXNpb24uIEFsc28gSSB3
YW50IHRvIG51a2UgaXQuCnZ0b3RhbCp2cmVmcmVzaCA9PSAxMDAwKmNsb2NrL2h0b3RhbCwgc28g
bGV0J3MgdXNlIHRoZSBsYXR0ZXIuCgpDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRh
QGludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jIHwgMTAgKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKaW5kZXggMzZhYWVl
ODUzNmYxLi5mNTY4NmU1MDgzM2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F1ZGlvLmMKQEAgLTUyNCwxNCArNTI0LDEyIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0
X2hibGFua19lYXJseV9lbmFibGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
CiAJdW5zaWduZWQgaW50IGxpbmtfY2xrc19hdmFpbGFibGUsIGxpbmtfY2xrc19yZXF1aXJlZDsK
IAl1bnNpZ25lZCBpbnQgdHVfZGF0YSwgdHVfbGluZSwgbGlua19jbGtzX2FjdGl2ZTsKIAl1bnNp
Z25lZCBpbnQgaGJsYW5rX3Jpc2UsIGhibGFua19lYXJseV9wcm9nOwotCXVuc2lnbmVkIGludCBo
X2FjdGl2ZSwgaF90b3RhbCwgaGJsYW5rX2RlbHRhLCBwaXhlbF9jbGssIHZfdG90YWw7Ci0JdW5z
aWduZWQgaW50IGZlY19jb2VmZiwgcmVmcmVzaF9yYXRlLCBjZGNsaywgdmRzY19icHA7CisJdW5z
aWduZWQgaW50IGhfYWN0aXZlLCBoX3RvdGFsLCBoYmxhbmtfZGVsdGEsIHBpeGVsX2NsazsKKwl1
bnNpZ25lZCBpbnQgZmVjX2NvZWZmLCBjZGNsaywgdmRzY19icHA7CiAKIAloX2FjdGl2ZSA9IGNy
dGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y19oZGlzcGxheTsKIAloX3RvdGFsID0gY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2h0b3RhbDsKLQl2X3RvdGFsID0gY3J0Y19z
dGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbDsKIAlwaXhlbF9jbGsgPSBjcnRjX3N0
YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2s7Ci0JcmVmcmVzaF9yYXRlID0gY3J0Y19z
dGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS52cmVmcmVzaDsKIAl2ZHNjX2JwcCA9IGNydGNfc3RhdGUt
PmRzYy5jb21wcmVzc2VkX2JwcDsKIAljZGNsayA9IGk5MTUtPmNkY2xrLmh3LmNkY2xrOwogCS8q
IGZlYz0gMC45NzIyNjEsIHVzaW5nIHJvdW5kaW5nIG11bHRpcGxpZXIgb2YgMTAwMDAwMCAqLwpA
QCAtNTQ5LDkgKzU0Nyw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0X2hibGFua19lYXJseV9l
bmFibGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyCiAJbGlua19jbGtzX2F2
YWlsYWJsZSA9ICgoKChoX3RvdGFsIC0gaF9hY3RpdmUpICoKIAkJCSAgICAgICAoKGNydGNfc3Rh
dGUtPnBvcnRfY2xvY2sgKiBST1VORElOR19GQUNUT1IpIC8KIAkJCQlwaXhlbF9jbGspKSAvIFJP
VU5ESU5HX0ZBQ1RPUikgLSAyOCk7Ci0KLQlsaW5rX2Nsa3NfcmVxdWlyZWQgPSBESVZfUk9VTkRf
VVAoMTkyMDAwLCAocmVmcmVzaF9yYXRlICoKLQkJCQkJICB2X3RvdGFsKSkgKiAoKDQ4IC8KKwls
aW5rX2Nsa3NfcmVxdWlyZWQgPSBESVZfUk9VTkRfVVAoMTkyMDAwLCAoMTAwMCAqIHBpeGVsX2Ns
ayAvIGhfdG90YWwpKSAqICgoNDggLwogCQkJCQkgIGNydGNfc3RhdGUtPmxhbmVfY291bnQpICsg
Mik7CiAKIAlpZiAobGlua19jbGtzX2F2YWlsYWJsZSA+IGxpbmtfY2xrc19yZXF1aXJlZCkKLS0g
CjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
