Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA12C4FA3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC496E833;
	Thu, 26 Nov 2020 07:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4612A6E7F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:32 +0000 (UTC)
IronPort-SDR: XyUUrF8I8fbRuT+/j55M5C+igQtqsb0q65fb+LvTUOhDRLP/ECs6BsZ7h/yc8Hh+A0UHVoRzGx
 xch2SBERKimQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741384"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741384"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:32 -0800
IronPort-SDR: G2N27EwOWvXQkTLewEpuhTEWOr97kB6+aztXG6b1AMHVp2tzoDn1DHdHEdtC9uJ/U4qw+JnE5D
 HR0MEbltebAg==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448128"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:30 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:42 +0530
Message-Id: <20201126081445.29759-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 10/13] drm/i915/display: Implement DRM infoframe
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
Y29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgIHwg
NyArKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIHwg
NSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCB8IDQg
KysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggMGYyY2M0MGNj
NzkyLi4xMmExYzUyZmUxYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jCkBAIC01NTUsMTAgKzU1NSw5IEBAIHZvaWQgaHN3X3dyaXRlX2luZm9mcmFtZShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3By
aXYsIGN0bF9yZWcpOwogfQogCi1zdGF0aWMgdm9pZCBoc3dfcmVhZF9pbmZvZnJhbWUoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCi0JCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQkgICAgICAgdW5zaWduZWQgaW50IHR5cGUsCi0JCQkg
ICAgICAgdm9pZCAqZnJhbWUsIHNzaXplX3QgbGVuKQordm9pZCBoc3dfcmVhZF9pbmZvZnJhbWUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCXVuc2lnbmVkIGludCB0eXBlLCB2b2lkICpmcmFtZSwg
c3NpemVfdCBsZW4pCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
ID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCA0ZjNjNDk0M2U5MTguLmI1MjBiYjA0YTA5MCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC00ODMsNyAr
NDgzLDEwIEBAIHZvaWQgbHNwY29uX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCQkJICAgdW5zaWduZWQgaW50IHR5cGUsCiAJCQkgICB2b2lkICpmcmFtZSwg
c3NpemVfdCBsZW4pCiB7Ci0JLyogRklYTUUgaW1wbGVtZW50IHRoaXMgKi8KKwkvKiBGSVhNRSBp
bXBsZW1lbnQgZm9yIEFWSSBJbmZvZnJhbWUgYXMgd2VsbCAqLworCWlmICh0eXBlID09IEhETUlf
UEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEpCisJCWhzd19yZWFkX2luZm9mcmFtZShlbmNvZGVy
LCBjcnRjX3N0YXRlLCB0eXBlLAorCQkJCSAgIGZyYW1lLCBsZW4pOwogfQogCiAvKiBIRE1JIEhE
UiBDb2xvcnNwYWNlIFNwZWMgRGVmaW5pdGlvbnMgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2xzcGNvbi5oCmluZGV4IDQyY2NiMjFjOTA4Zi4uZDYyMjE1NmQwYzRlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmgKQEAgLTM3LDUg
KzM3LDkgQEAgdm9pZCBoc3dfd3JpdGVfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAog
CQkJIHVuc2lnbmVkIGludCB0eXBlLAogCQkJIGNvbnN0IHZvaWQgKmZyYW1lLCBzc2l6ZV90IGxl
bik7Cit2b2lkIGhzd19yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKKwkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJdW5z
aWduZWQgaW50IHR5cGUsCisJCQl2b2lkICpmcmFtZSwgc3NpemVfdCBsZW4pOwogCiAjZW5kaWYg
LyogX19JTlRFTF9MU1BDT05fSF9fICovCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
