Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2201200A0A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 15:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681F36ECB2;
	Fri, 19 Jun 2020 13:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D736ECB2;
 Fri, 19 Jun 2020 13:27:53 +0000 (UTC)
IronPort-SDR: HZwp0Q2i+1Jz+wWA66EhaUKNPRQ9gShJJ1LLKDz/OohhZkZzxlIWgCvLG7/fPBd3SZ4cVVOu09
 dHL7fMZngwAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="208188896"
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="208188896"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 06:27:53 -0700
IronPort-SDR: KMCPWy3jGVg9BLky1c8RTJU2O7CDfHbLeuVo51DHsrJilFQv7U2ODsE150+Qi2G9Gh9ATxQpZt
 2xQ2f++KfugQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="421849393"
Received: from bhanu-nuc8i7beh.iind.intel.com ([10.145.162.210])
 by orsmga004.jf.intel.com with ESMTP; 19 Jun 2020 06:27:49 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: bhanuprakash.modem@intel.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Sat, 20 Jun 2020 02:53:55 +0530
Message-Id: <20200619212356.19285-3-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619212356.19285-1-bhanuprakash.modem@intel.com>
References: <20200619212356.19285-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 2/3] drm/i915/dp: Attach and set drm connector VRR
 property
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

RnJvbTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CgpUaGlzIGZ1bmN0
aW9uIHNldHMgdGhlIFZSUiBwcm9wZXJ0eSBmb3IgY29ubmVjdG9yIGJhc2VkCm9uIHRoZSBwbGF0
Zm9ybSBzdXBwb3J0LCBFRElEIG1vbml0b3IgcmFuZ2UgYW5kIERQIHNpbmsKRFBDRCBjYXBhYmls
aXR5IG9mIG91dHB1dGluZyB2aWRlbyB3aXRob3V0IG1zYQp0aW1pbmcgaW5mb3JtYXRpb24uCgp2
NToKKiBGaXggdGhlIHZyciBwcm9wIG5vdCBiZWluZyBzZXQgaW4ga2VybmVsIChNYW5hc2kpCiog
VW5zZXQgdGhlIHByb3Agb24gY29ubmVjdG9yIGRpc2Nvbm5lY3QgKE1hbmFzaSkKdjQ6CiogUmVi
YXNlIChNYW5zaSkKdjM6CiogaW50ZWxfZHBfaXNfdnJyX2NhcGFibGUgY2FuIGJlIHVzZWQgZm9y
IGRlYnVnZnMsIG1ha2UgaXQKbm9uIHN0YXRpYyAoTWFuYXNpKQp2MjoKKiBKdXN0IHNldCB0aGlz
IGluIGludGVsX2RwX2dldF9tb2RlcyBpbnN0ZWFkIG9mIG5ldyBob29rIChKYW5pKQoKQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEg
U3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5h
dmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggfCAgMiArKwogMiBmaWxlcyBjaGFu
Z2VkLCAyOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IDQyNTg5Y2FlNzY2ZC4uZDBkYmE4MWNmYjA3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02MTQ5LDYgKzYxNDksOSBAQCBpbnRlbF9kcF9kZXRl
Y3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlpZiAoc3RhdHVzID09IGNvbm5l
Y3Rvcl9zdGF0dXNfZGlzY29ubmVjdGVkKSB7CiAJCW1lbXNldCgmaW50ZWxfZHAtPmNvbXBsaWFu
Y2UsIDAsIHNpemVvZihpbnRlbF9kcC0+Y29tcGxpYW5jZSkpOwogCQltZW1zZXQoaW50ZWxfZHAt
PmRzY19kcGNkLCAwLCBzaXplb2YoaW50ZWxfZHAtPmRzY19kcGNkKSk7CisJCS8qUmVzZXQgdGhl
IGltbXV0YWJsZSBWUlIgQ2FwYWJsZSBwcm9wZXJ0eSAqLworCQlkcm1fY29ubmVjdG9yX3NldF92
cnJfY2FwYWJsZV9wcm9wZXJ0eShjb25uZWN0b3IsCisJCQkJCQkgICAgICAgZmFsc2UpOwogCiAJ
CWlmIChpbnRlbF9kcC0+aXNfbXN0KSB7CiAJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwK
QEAgLTYyNTYsNiArNjI1OSwyMyBAQCBpbnRlbF9kcF9mb3JjZShzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQogCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBhdXhfZG9t
YWluLCB3YWtlcmVmKTsKIH0KIAorYm9vbCBpbnRlbF9kcF9pc192cnJfY2FwYWJsZShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PSBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7CisJY29u
c3Qgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2lu
Zm87CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0
b3ItPmRldik7CisKKwkvKgorCSAqIERQIFNpbmsgaXMgY2FwYWJsZSBvZiBWYXJpYWJsZSByZWZy
ZXNoIHZpZGVvIHRpbWluZ3MgaWYKKwkgKiBJZ25vcmUgTVNBIGJpdCBpcyBzZXQgaW4gRFBDRC4K
KwkgKiBFRElEIG1vbml0b3IgcmFuZ2UgYWxzbyBzaG91bGQgYmUgYXRsZWFzdCAxMCBmb3IgcmVh
c29uYWJsZQorCSAqIEFkYXB0aXZlIHN5bmMvIFZSUiBlbmQgdXNlciBleHBlcmllbmNlLgorCSAq
LworCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyICYmCisJCWRybV9kcF9zaW5rX2Nh
bl9kb192aWRlb193aXRob3V0X3RpbWluZ19tc2EoaW50ZWxfZHAtPmRwY2QpICYmCisJCWluZm8t
Pm1vbml0b3JfcmFuZ2UubWF4X3ZmcmVxIC0gaW5mby0+bW9uaXRvcl9yYW5nZS5taW5fdmZyZXEg
PiAxMDsKK30KKwogc3RhdGljIGludCBpbnRlbF9kcF9nZXRfbW9kZXMoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvcikKIHsKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25u
ZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKQEAgLTYyNjQsNiArNjI4NCwx
MCBAQCBzdGF0aWMgaW50IGludGVsX2RwX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQogCWVkaWQgPSBpbnRlbF9jb25uZWN0b3ItPmRldGVjdF9lZGlkOwogCWlmIChl
ZGlkKSB7CiAJCWludCByZXQgPSBpbnRlbF9jb25uZWN0b3JfdXBkYXRlX21vZGVzKGNvbm5lY3Rv
ciwgZWRpZCk7CisKKwkJaWYgKGludGVsX2RwX2lzX3Zycl9jYXBhYmxlKGNvbm5lY3RvcikpCisJ
CQlkcm1fY29ubmVjdG9yX3NldF92cnJfY2FwYWJsZV9wcm9wZXJ0eShjb25uZWN0b3IsCisJCQkJ
CQkJICAgICAgIHRydWUpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAl9CkBAIC03MzI1
LDYgKzczNDksOSBAQCBpbnRlbF9kcF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdAogCQljb25uZWN0b3ItPnN0YXRl
LT5zY2FsaW5nX21vZGUgPSBEUk1fTU9ERV9TQ0FMRV9BU1BFQ1Q7CiAKIAl9CisKKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfdnJyX2NhcGFi
bGVfcHJvcGVydHkoY29ubmVjdG9yKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZHBfaW5pdF9w
YW5lbF9wb3dlcl90aW1lc3RhbXBzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKaW5kZXggMGE4OTUwZjc0NGY2Li5kYjg5NWEz
Y2Q5M2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKQEAgLTE0LDYg
KzE0LDcgQEAgZW51bSBwaXBlOwogZW51bSBwb3J0Owogc3RydWN0IGRybV9jb25uZWN0b3Jfc3Rh
dGU7CiBzdHJ1Y3QgZHJtX2VuY29kZXI7CitzdHJ1Y3QgZHJtX2Nvbm5lY3RvcjsKIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlOwogc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4Owogc3RydWN0
IGRybV9kcF92c2Nfc2RwOwpAQCAtMTIwLDYgKzEyMSw3IEBAIHZvaWQgaW50ZWxfcmVhZF9kcF9z
ZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCSAgICAgICB1bnNpZ25lZCBpbnQg
dHlwZSk7CiBib29sIGludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpOwogdm9pZCBpbnRlbF9kcF9wcm9jZXNzX3BoeV9yZXF1ZXN0KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApOworYm9vbCBpbnRlbF9kcF9pc192cnJfY2FwYWJsZShzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKIAogc3RhdGljIGlubGluZSB1bnNpZ25lZCBp
bnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQgbGFuZV9jb3VudCkKIHsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
