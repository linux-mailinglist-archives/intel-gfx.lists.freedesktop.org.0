Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A42D842E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 01:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1293C6E893;
	Tue, 15 Oct 2019 23:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAFA06E8A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 23:03:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 16:03:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,301,1566889200"; d="scan'208";a="225590071"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2019 16:03:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 16:05:16 -0700
Message-Id: <20191015230519.15022-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191015230519.15022-1-manasi.d.navare@intel.com>
References: <20191015230519.15022-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 3/6] drm/i915/display/icl: HW state readout
 for transcoder port sync config
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
cGUgc3RhdGUgbWlzbWF0Y2guCgp2OToKKiBJbml0aWFsaXplIG1hc3Rlcl90cmFuc2NvZGVyID0g
SU5WQUxJRCBhdCBnZXQgY29uZmlnIChWaWxsZSkKdjg6CiogVXNlIG1hc3Rlcl9zZWxlY3QgLTEs
IGFkZHJlc3MgVFJBTlNfRURQIGNhc2UgKFZpbGxlKQoqIFJlbmFtZSBtYXN0ZXJfdHJhbnNjb2Rl
ciB0byBfcmVhZG91dCAoTHVjYXMpCnY3OgoqIE5Eb250IHJlYWQgSFcgc3RhdGUgZm9yIERTSQp2
NjoKKiBHbyB0aHJvdWdoIGJvdGggcGFydHMgb2YgSFcgcmVhZG91dCAoTWFhcnRlbikKKiBBZGQg
YSBXQVJOIGlmIHRoZSBzYW1lIHRyYW5zIGNvbmZpZ3VyZWQgYXMKbWFzdGVyIGFuZCBzbGF2ZSAo
VmlsbGUsIE1hYXJ0ZW4pCnY1OgoqIEFkZCByZXR1cm4gSU5WQUxJRCBpbiBkZWZhdXQgY2FzZSAo
TWFhcnRlbikKdjQ6CiogR2V0IHBvd2VyIGRvbWFpbnMgaW4gbWFzdGVyIGxvb3AgZm9yIGdldF9j
b25maWcgKFZpbGxlKQp2MzoKKiBBZGQgVFJBTlNDT0RFUl9EIChNYWFydGVuKQoqIHYzIFJldmll
d2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgp2MjoKKiBBZGQgVHJhbnNjb2Rlcl9EIGFuZCBNSVNTSU5HX0NBU0UgKE1hYXJ0ZW4pCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1OSArKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGI1NDdmMjhlMTk3MS4uM2Y0MGZhMmQ4Mjc4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTA0NDAs
NiArMTA0NDAsNTkgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9nZXRfZGRpX3BvcnRfc3RhdGUoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJfQogfQogCitzdGF0aWMgZW51bSB0cmFuc2NvZGVyIHRy
YW5zY29kZXJfbWFzdGVyX3JlYWRvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAorCQkJCQkJIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKK3sKKwl1MzIgdHJhbnNf
cG9ydF9zeW5jLCBtYXN0ZXJfc2VsZWN0OworCisJdHJhbnNfcG9ydF9zeW5jID0gSTkxNV9SRUFE
KFRSQU5TX0RESV9GVU5DX0NUTDIoY3B1X3RyYW5zY29kZXIpKTsKKworCWlmICgodHJhbnNfcG9y
dF9zeW5jICYgUE9SVF9TWU5DX01PREVfRU5BQkxFKSA9PSAwKQorCQlyZXR1cm4gSU5WQUxJRF9U
UkFOU0NPREVSOworCisJbWFzdGVyX3NlbGVjdCA9IHRyYW5zX3BvcnRfc3luYyAmCisJCQlQT1JU
X1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0s7CisJaWYgKG1hc3Rlcl9zZWxlY3QgPT0gMCkK
KwkJcmV0dXJuIFRSQU5TQ09ERVJfRURQOworCWVsc2UKKwkJcmV0dXJuIG1hc3Rlcl9zZWxlY3Qg
LSAxOworfQorCitzdGF0aWMgdm9pZCBpY2VsYWtlX2dldF90cmFuc19wb3J0X3N5bmNfY29uZmln
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYp
OworCXUzMiB0cmFuc2NvZGVyczsKKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXI7CisK
KwljcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9IHRyYW5zY29kZXJfbWFzdGVyX3JlYWRv
dXQoZGV2X3ByaXYsCisJCQkJCQkJCSAgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOworCisJ
dHJhbnNjb2RlcnMgPSBCSVQoVFJBTlNDT0RFUl9BKSB8CisJCUJJVChUUkFOU0NPREVSX0IpIHwK
KwkJQklUKFRSQU5TQ09ERVJfQykgfAorCQlCSVQoVFJBTlNDT0RFUl9EKTsKKwlmb3JfZWFjaF9j
cHVfdHJhbnNjb2Rlcl9tYXNrZWQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCB0cmFuc2NvZGVy
cykgeworCQllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIHBvd2VyX2RvbWFpbjsKKwkJ
aW50ZWxfd2FrZXJlZl90IHRyYW5zX3dha2VyZWY7CisKKwkJcG93ZXJfZG9tYWluID0gUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5zY29kZXIpOworCQl0cmFuc193YWtlcmVmID0gaW50
ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZChkZXZfcHJpdiwKKwkJCQkJCQkJICAgcG93
ZXJfZG9tYWluKTsKKworCQlpZiAoIXRyYW5zX3dha2VyZWYpCisJCQljb250aW51ZTsKKworCQlp
ZiAodHJhbnNjb2Rlcl9tYXN0ZXJfcmVhZG91dChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpID09
CisJCSAgICBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikKKwkJCWNydGNfc3RhdGUtPnN5bmNf
bW9kZV9zbGF2ZXNfbWFzayB8PSBCSVQoY3B1X3RyYW5zY29kZXIpOworCisJCWludGVsX2Rpc3Bs
YXlfcG93ZXJfcHV0KGRldl9wcml2LCBwb3dlcl9kb21haW4sIHRyYW5zX3dha2VyZWYpOworCX0K
KworCVdBUk5fT04oY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgIT0gSU5WQUxJRF9UUkFO
U0NPREVSICYmCisJCWNydGNfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayk7Cit9CisKIHN0
YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7CkBAIC0x
MDQ0OSw2ICsxMDUwMiw4IEBAIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCXU2NCBwb3dlcl9kb21haW5fbWFzazsKIAlib29sIGFj
dGl2ZTsKIAorCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURfVFJBTlND
T0RFUjsKKwogCWludGVsX2NydGNfaW5pdF9zY2FsZXJzKGNydGMsIHBpcGVfY29uZmlnKTsKIAog
CXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QSVBFKGNydGMtPnBpcGUpOwpAQCAtMTA1NTks
NiArMTA2MTQsMTAgQEAgc3RhdGljIGJvb2wgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJCXBpcGVfY29uZmlnLT5waXhlbF9tdWx0aXBsaWVyID0gMTsK
IAl9CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJgorCSAgICAhdHJhbnNjb2Rl
cl9pc19kc2kocGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyKSkKKwkJaWNlbGFrZV9nZXRfdHJh
bnNfcG9ydF9zeW5jX2NvbmZpZyhwaXBlX2NvbmZpZyk7CisKIG91dDoKIAlmb3JfZWFjaF9wb3dl
cl9kb21haW4ocG93ZXJfZG9tYWluLCBwb3dlcl9kb21haW5fbWFzaykKIAkJaW50ZWxfZGlzcGxh
eV9wb3dlcl9wdXQoZGV2X3ByaXYsCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
