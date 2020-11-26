Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BA52C5D00
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FD16EAC0;
	Thu, 26 Nov 2020 20:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104AF6EAC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:30:04 +0000 (UTC)
IronPort-SDR: ezVN/KYzSNVrxiHP9m/R8OqXnHKdUTN76mSlVPNJ8C5ZT/2trHobQm28b69GJNzJ+qGBZioQ8q
 /VjIw0BjbCnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171543170"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="171543170"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:30:04 -0800
IronPort-SDR: sL8ABv225tJ65CuI78J/u4wTInwzh+l5w9AfSs3nVlRJx0TIu5g6HP24496BO063l3LxxiWSiO
 PsIpyupVtjHA==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479459608"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:30:03 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 02:33:12 +0530
Message-Id: <20201126210314.7882-14-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v12 13/15] drm/i915/display: Implement DRM infoframe
 read for LSPCON
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

SW1wbGVtZW50IFJlYWQgYmFjayBvZiBIRFIgbWV0YWRhdGEgaW5mb2ZyYW1lcyBpLmUgRHluYW1p
YyBSYW5nZQphbmQgTWFzdGVyaW5nIEluZm9mcmFtZSBmb3IgTFNQQ09OIGRldmljZXMuCgp2Mjog
QWRkZWQgcHJvcGVyIGJpdG1hc2sgb2YgZW5hYmxlZCBpbmZvZnJhbWVzIGFzIHBlciBWaWxsZSdz
CnJlY29tbWVuZGF0aW9uLgoKdjM6IERyb3BwZWQgYSByZWR1bmRhbnQgd3JhcHBlciBhcyBwZXIg
VmlsbGUncyBjb21tZW50LgoKdjQ6IERyb3BwZWQgYSByZWR1bmRhbnQgcHJpbnQsIGFkZGVkIFZp
bGxlJ3MgUkIuCgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAg
IHwgNyArKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5j
IHwgNSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCB8
IDQgKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggODhjMTUz
NDA3YTdkLi5lMTBmZGIzNjlkYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jCkBAIC01NTUsMTAgKzU1NSw5IEBAIHZvaWQgaHN3X3dyaXRlX2luZm9mcmFtZShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2
X3ByaXYsIGN0bF9yZWcpOwogfQogCi1zdGF0aWMgdm9pZCBoc3dfcmVhZF9pbmZvZnJhbWUoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCi0JCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQkgICAgICAgdW5zaWduZWQgaW50IHR5cGUsCi0J
CQkgICAgICAgdm9pZCAqZnJhbWUsIHNzaXplX3QgbGVuKQordm9pZCBoc3dfcmVhZF9pbmZvZnJh
bWUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQljb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCXVuc2lnbmVkIGludCB0eXBlLCB2b2lkICpmcmFt
ZSwgc3NpemVfdCBsZW4pCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2Nv
ZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCA3NzY4Y2YzNGY0ZTkuLmU0ZmY1MzNlM2E2OSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC00ODQs
NyArNDg0LDEwIEBAIHZvaWQgbHNwY29uX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQkJICAgdW5zaWduZWQgaW50IHR5cGUsCiAJCQkgICB2b2lkICpmcmFt
ZSwgc3NpemVfdCBsZW4pCiB7Ci0JLyogRklYTUUgaW1wbGVtZW50IHRoaXMgKi8KKwkvKiBGSVhN
RSBpbXBsZW1lbnQgZm9yIEFWSSBJbmZvZnJhbWUgYXMgd2VsbCAqLworCWlmICh0eXBlID09IEhE
TUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEpCisJCWhzd19yZWFkX2luZm9mcmFtZShlbmNv
ZGVyLCBjcnRjX3N0YXRlLCB0eXBlLAorCQkJCSAgIGZyYW1lLCBsZW4pOwogfQogCiB2b2lkIGxz
cGNvbl9zZXRfaW5mb2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oCmluZGV4IDQ0YWE2YmMzODUx
Mi4uZTE5ZTEwNDkyYjA1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2xzcGNvbi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHNwY29uLmgKQEAgLTM5LDUgKzM5LDkgQEAgdm9pZCBoc3dfd3JpdGVfaW5mb2ZyYW1lKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAogCQkJIHVuc2lnbmVkIGludCB0eXBlLAogCQkJIGNvbnN0IHZvaWQg
KmZyYW1lLCBzc2l6ZV90IGxlbik7Cit2b2lkIGhzd19yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAorCQkJdW5zaWduZWQgaW50IHR5cGUsCisJCQl2b2lkICpmcmFtZSwgc3NpemVf
dCBsZW4pOwogCiAjZW5kaWYgLyogX19JTlRFTF9MU1BDT05fSF9fICovCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
