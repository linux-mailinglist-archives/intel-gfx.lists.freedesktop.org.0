Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD27DCC92
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 19:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500E56EB79;
	Fri, 18 Oct 2019 17:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CED06EB78
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 17:25:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 10:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="195522785"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga008.fm.intel.com with ESMTP; 18 Oct 2019 10:25:17 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 10:27:22 -0700
Message-Id: <20191018172725.1338-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191018172725.1338-1-manasi.d.navare@intel.com>
References: <20191018172725.1338-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v12 3/6] drm/i915/display/icl: HW state readout for
 transcoder port sync config
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgdGhlIHN0YXRlIGlzIGNvbW1pdHRlZCwgd2UgcmVhZG91dCB0aGUgSFcgcmVnaXN0ZXJz
IGFuZCBjb21wYXJlCnRoZSBIVyBzdGF0ZSB3aXRoIHRoZSBTVyBzdGF0ZSB0aGF0IHdlIGp1c3Qg
Y29tbWl0dGVkLgpGb3IgVHJhbnNjZG9lciBwb3J0IHN5bmMsIHdlIGFkZCBtYXN0ZXJfdHJhbnNj
b2RlciBhbmQgdGhlCnNhbHZlcyBiaXRtYXNrIHRvIHRoZSBjcnRjX3N0YXRlLCBoZW5jZSB3ZSBu
ZWVkIHRvIHJlYWQgdGhvc2UgZHVyaW5nCnRoZSBIVyBzdGF0ZSByZWFkb3V0IHRvIGF2b2lkIHBp
cGUgc3RhdGUgbWlzbWF0Y2guCgp2MTE6CiogTW92ZSBtYXN0ZXIgdHJhbnMgaW5pdCB0byBnZXQg
cGlwZV9Db25maWcgaG9va3MgKFZpbGxlKQp2MTA6CiogSW5pdGlhbGl6ZSBtYXN0ZXJfdGFybnNj
b2RlciByZWFkb3V0IGZvciBhbGwgcGxhdGZvcm1zIChWaWxsZSkKdjk6CiogSW5pdGlhbGl6ZSBt
YXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSUQgYXQgZ2V0IGNvbmZpZyAoVmlsbGUpCnY4OgoqIFVz
ZSBtYXN0ZXJfc2VsZWN0IC0xLCBhZGRyZXNzIFRSQU5TX0VEUCBjYXNlIChWaWxsZSkKKiBSZW5h
bWUgbWFzdGVyX3RyYW5zY29kZXIgdG8gX3JlYWRvdXQgKEx1Y2FzKQp2NzoKKiBORG9udCByZWFk
IEhXIHN0YXRlIGZvciBEU0kKdjY6CiogR28gdGhyb3VnaCBib3RoIHBhcnRzIG9mIEhXIHJlYWRv
dXQgKE1hYXJ0ZW4pCiogQWRkIGEgV0FSTiBpZiB0aGUgc2FtZSB0cmFucyBjb25maWd1cmVkIGFz
Cm1hc3RlciBhbmQgc2xhdmUgKFZpbGxlLCBNYWFydGVuKQp2NToKKiBBZGQgcmV0dXJuIElOVkFM
SUQgaW4gZGVmYXV0IGNhc2UgKE1hYXJ0ZW4pCnY0OgoqIEdldCBwb3dlciBkb21haW5zIGluIG1h
c3RlciBsb29wIGZvciBnZXRfY29uZmlnIChWaWxsZSkKdjM6CiogQWRkIFRSQU5TQ09ERVJfRCAo
TWFhcnRlbikKKiB2MyBSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KdjI6CiogQWRkIFRyYW5zY29kZXJfRCBhbmQgTUlTU0lO
R19DQVNFIChNYWFydGVuKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNjEgKysrKysrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhZWYxMTA4N2EwZmEu
LmY2YzU3MjU1YmYyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKQEAgLTg3OTgsNiArODc5OCw3IEBAIHN0YXRpYyBib29sIGk5eHhfZ2V0X3BpcGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9y
bWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7CiAJcGlwZV9jb25maWctPmNwdV90cmFuc2Nv
ZGVyID0gKGVudW0gdHJhbnNjb2RlcikgY3J0Yy0+cGlwZTsKIAlwaXBlX2NvbmZpZy0+c2hhcmVk
X2RwbGwgPSBOVUxMOworCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURf
VFJBTlNDT0RFUjsKIAogCXJldCA9IGZhbHNlOwogCkBAIC05OTg3LDYgKzk5ODgsNyBAQCBzdGF0
aWMgYm9vbCBpcm9ubGFrZV9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMs
CiAKIAlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPSAoZW51bSB0cmFuc2NvZGVyKSBjcnRj
LT5waXBlOwogCXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IE5VTEw7CisJcGlwZV9jb25maWct
Pm1hc3Rlcl90cmFuc2NvZGVyID0gSU5WQUxJRF9UUkFOU0NPREVSOwogCiAJcmV0ID0gZmFsc2U7
CiAJdG1wID0gSTkxNV9SRUFEKFBJUEVDT05GKGNydGMtPnBpcGUpKTsKQEAgLTEwNDM3LDYgKzEw
NDM5LDU5IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAogCX0KIH0KIAorc3RhdGljIGVudW0gdHJhbnNjb2RlciB0cmFuc2Nv
ZGVyX21hc3Rlcl9yZWFkb3V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJ
CQkJCSBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCit7CisJdTMyIHRyYW5zX3BvcnRf
c3luYywgbWFzdGVyX3NlbGVjdDsKKworCXRyYW5zX3BvcnRfc3luYyA9IEk5MTVfUkVBRChUUkFO
U19ERElfRlVOQ19DVEwyKGNwdV90cmFuc2NvZGVyKSk7CisKKwlpZiAoKHRyYW5zX3BvcnRfc3lu
YyAmIFBPUlRfU1lOQ19NT0RFX0VOQUJMRSkgPT0gMCkKKwkJcmV0dXJuIElOVkFMSURfVFJBTlND
T0RFUjsKKworCW1hc3Rlcl9zZWxlY3QgPSB0cmFuc19wb3J0X3N5bmMgJgorCQkJUE9SVF9TWU5D
X01PREVfTUFTVEVSX1NFTEVDVF9NQVNLOworCWlmIChtYXN0ZXJfc2VsZWN0ID09IDApCisJCXJl
dHVybiBUUkFOU0NPREVSX0VEUDsKKwllbHNlCisJCXJldHVybiBtYXN0ZXJfc2VsZWN0IC0gMTsK
K30KKworc3RhdGljIHZvaWQgaWNlbGFrZV9nZXRfdHJhbnNfcG9ydF9zeW5jX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKKwl1
MzIgdHJhbnNjb2RlcnM7CisJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyOworCisJY3J0
Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPSB0cmFuc2NvZGVyX21hc3Rlcl9yZWFkb3V0KGRl
dl9wcml2LAorCQkJCQkJCQkgIGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsKKworCXRyYW5z
Y29kZXJzID0gQklUKFRSQU5TQ09ERVJfQSkgfAorCQlCSVQoVFJBTlNDT0RFUl9CKSB8CisJCUJJ
VChUUkFOU0NPREVSX0MpIHwKKwkJQklUKFRSQU5TQ09ERVJfRCk7CisJZm9yX2VhY2hfY3B1X3Ry
YW5zY29kZXJfbWFza2VkKGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciwgdHJhbnNjb2RlcnMpIHsK
KwkJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBwb3dlcl9kb21haW47CisJCWludGVs
X3dha2VyZWZfdCB0cmFuc193YWtlcmVmOworCisJCXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSKGNwdV90cmFuc2NvZGVyKTsKKwkJdHJhbnNfd2FrZXJlZiA9IGludGVsX2Rp
c3BsYXlfcG93ZXJfZ2V0X2lmX2VuYWJsZWQoZGV2X3ByaXYsCisJCQkJCQkJCSAgIHBvd2VyX2Rv
bWFpbik7CisKKwkJaWYgKCF0cmFuc193YWtlcmVmKQorCQkJY29udGludWU7CisKKwkJaWYgKHRy
YW5zY29kZXJfbWFzdGVyX3JlYWRvdXQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKSA9PQorCQkg
ICAgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpCisJCQljcnRjX3N0YXRlLT5zeW5jX21vZGVf
c2xhdmVzX21hc2sgfD0gQklUKGNwdV90cmFuc2NvZGVyKTsKKworCQlpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dChkZXZfcHJpdiwgcG93ZXJfZG9tYWluLCB0cmFuc193YWtlcmVmKTsKKwl9CisKKwlX
QVJOX09OKGNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyICE9IElOVkFMSURfVFJBTlNDT0RF
UiAmJgorCQljcnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2spOworfQorCiBzdGF0aWMg
Ym9vbCBoYXN3ZWxsX2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJ
CQkgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewpAQCAtMTA0NDgs
NiArMTA1MDMsOCBAQCBzdGF0aWMgYm9vbCBoYXN3ZWxsX2dldF9waXBlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKIAogCWludGVsX2NydGNfaW5pdF9zY2FsZXJzKGNydGMsIHBpcGVf
Y29uZmlnKTsKIAorCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURfVFJB
TlNDT0RFUjsKKwogCXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QSVBFKGNydGMtPnBpcGUp
OwogCXdmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZChkZXZfcHJpdiwgcG93
ZXJfZG9tYWluKTsKIAlpZiAoIXdmKQpAQCAtMTA1NTYsNiArMTA2MTMsMTAgQEAgc3RhdGljIGJv
b2wgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCXBp
cGVfY29uZmlnLT5waXhlbF9tdWx0aXBsaWVyID0gMTsKIAl9CiAKKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSAmJgorCSAgICAhdHJhbnNjb2Rlcl9pc19kc2kocGlwZV9jb25maWctPmNw
dV90cmFuc2NvZGVyKSkKKwkJaWNlbGFrZV9nZXRfdHJhbnNfcG9ydF9zeW5jX2NvbmZpZyhwaXBl
X2NvbmZpZyk7CisKIG91dDoKIAlmb3JfZWFjaF9wb3dlcl9kb21haW4ocG93ZXJfZG9tYWluLCBw
b3dlcl9kb21haW5fbWFzaykKIAkJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsCi0t
IAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
