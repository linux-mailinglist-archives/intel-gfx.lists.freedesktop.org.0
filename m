Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA674175D68
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D08E6E431;
	Mon,  2 Mar 2020 14:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751EF6E431
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:39:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:39:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="351553872"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 02 Mar 2020 06:39:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 16:39:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 16:39:38 +0200
Message-Id: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Nuke pointless div by 64bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkJ1
bmNoIG9mIHBsYWNlcyB1c2UgYSA2NGJpdCBkaXZpc29yIG5lZWRsZXNzbHkuIFN3aXRjaAp0byAz
MmJpdCBkaXZpc29yLgoKQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8
IDExICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggMjMzNGM0NWYxZDA4Li43MTZm
ZTZlNGU1NmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0xNjY3LDEwICsxNjY3LDkg
QEAgc3RhdGljIGludCBhbGxvY19ub2Ffd2FpdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3Ry
ZWFtKQogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpibzsKIAlzdHJ1Y3QgaTkxNV92bWEg
KnZtYTsKIAljb25zdCB1NjQgZGVsYXlfdGlja3MgPSAweGZmZmZmZmZmZmZmZmZmZmYgLQotCQlE
SVY2NF9VNjRfUk9VTkRfVVAoCi0JCQlhdG9taWM2NF9yZWFkKCZzdHJlYW0tPnBlcmYtPm5vYV9w
cm9ncmFtbWluZ19kZWxheSkgKgotCQkJUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBf
ZnJlcXVlbmN5X2toeiwKLQkJCTEwMDAwMDB1bGwpOworCQlESVZfUk9VTkRfVVBfVUxMKGF0b21p
YzY0X3JlYWQoJnN0cmVhbS0+cGVyZi0+bm9hX3Byb2dyYW1taW5nX2RlbGF5KSAqCisJCQkJIFJV
TlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHosCisJCQkJIDEwMDAw
MDApOwogCWNvbnN0IHUzMiBiYXNlID0gc3RyZWFtLT5lbmdpbmUtPm1taW9fYmFzZTsKICNkZWZp
bmUgQ1NfR1BSKHgpIEdFTjhfUklOR19DU19HUFIoYmFzZSwgeCkKIAl1MzIgKmJhdGNoLCAqdHMw
LCAqY3MsICpqdW1wOwpAQCAtMzQ2Nyw4ICszNDY2LDggQEAgaTkxNV9wZXJmX29wZW5faW9jdGxf
bG9ja2VkKHN0cnVjdCBpOTE1X3BlcmYgKnBlcmYsCiAKIHN0YXRpYyB1NjQgb2FfZXhwb25lbnRf
dG9fbnMoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwgaW50IGV4cG9uZW50KQogewotCXJldHVybiBk
aXY2NF91NjQoMTAwMDAwMDAwMFVMTCAqICgyVUxMIDw8IGV4cG9uZW50KSwKLQkJCSAxMDAwVUxM
ICogUlVOVElNRV9JTkZPKHBlcmYtPmk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2toeik7
CisJcmV0dXJuIGRpdl91NjQoMTAwMDAwMCAqICgyVUxMIDw8IGV4cG9uZW50KSwKKwkJICAgICAg
IFJVTlRJTUVfSU5GTyhwZXJmLT5pOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopOwog
fQogCiAvKioKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
