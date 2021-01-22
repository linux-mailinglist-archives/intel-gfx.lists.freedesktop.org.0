Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3733010E2
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDE26EA6F;
	Fri, 22 Jan 2021 23:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C743A6E984
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:30 +0000 (UTC)
IronPort-SDR: m/egcCQ9YZboavvLTX4IsDKT+Y4vF/whY4yncVYsZmXkUJK0oDNdpOMOX2RBzu15eC4rboC093
 u4y3S9kWFb2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344448"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344448"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: Z60KPt0lPwJuxTci9//NJvbicTuNNCgUFY9sjUq/hvYez0hSR9htci4vpzhbO4j7YaNj/volj+
 EwzO4Dtp1qmw==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466002"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:31 -0800
Message-Id: <20210122232647.22688-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 02/18] drm/i915/display/dp: Attach and set drm
 connector VRR property
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
ODoKKiBVc2UgSEFTX1ZSUiwgcmVtb3ZlIGRybV9jb25uIGRlY2xhcmF0aW9uIChKYW5pIE4pCiog
Rml4IHR5cG9zIGluIENvbW1lbnQgKEphbmkgTikKdjc6CiogTW92ZSB0aGUgaGVscGVyIHRvIHNl
cGFyYXRlIGZpbGUgKE1hbmFzaSkKdjY6CiogUmVtb3ZlIHVuc2V0IG9mIHByb3AKdjU6CiogRml4
IHRoZSB2cnIgcHJvcCBub3QgYmVpbmcgc2V0IGluIGtlcm5lbCAoTWFuYXNpKQoqIFVuc2V0IHRo
ZSBwcm9wIG9uIGNvbm5lY3RvciBkaXNjb25uZWN0IChNYW5hc2kpCnY0OgoqIFJlYmFzZSAoTWFu
c2kpCnYzOgoqIGludGVsX2RwX2lzX3Zycl9jYXBhYmxlIGNhbiBiZSB1c2VkIGZvciBkZWJ1Z2Zz
LCBtYWtlIGl0Cm5vbiBzdGF0aWMgKE1hbmFzaSkKdjI6CiogSnVzdCBzZXQgdGhpcyBpbiBpbnRl
bF9kcF9nZXRfbW9kZXMgaW5zdGVhZCBvZiBuZXcgaG9vayAoSmFuaSkKCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8
YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyAgfCA4ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CmluZGV4IDg5Nzk5OTZmMTc0Ny4uZTZlZmEwZmMzMWVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02Myw2ICs2Myw3IEBACiAjaW5jbHVkZSAiaW50ZWxfc2lk
ZWJhbmQuaCIKICNpbmNsdWRlICJpbnRlbF90Yy5oIgogI2luY2x1ZGUgImludGVsX3Zkc2MuaCIK
KyNpbmNsdWRlICJpbnRlbF92cnIuaCIKIAogI2RlZmluZSBEUF9EUFJYX0VTSV9MRU4gMTQKIApA
QCAtNTU0Nyw2ICs1NTQ4LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X21vZGVzKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJZWRpZCA9IGludGVsX2Nvbm5lY3Rvci0+ZGV0
ZWN0X2VkaWQ7CiAJaWYgKGVkaWQpIHsKIAkJaW50IHJldCA9IGludGVsX2Nvbm5lY3Rvcl91cGRh
dGVfbW9kZXMoY29ubmVjdG9yLCBlZGlkKTsKKworCQlpZiAoaW50ZWxfdnJyX2lzX2NhcGFibGUo
Y29ubmVjdG9yKSkKKwkJCWRybV9jb25uZWN0b3Jfc2V0X3Zycl9jYXBhYmxlX3Byb3BlcnR5KGNv
bm5lY3RvciwKKwkJCQkJCQkgICAgICAgdHJ1ZSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0
OwogCX0KQEAgLTU5NTksNiArNTk2NCw5IEBAIGludGVsX2RwX2FkZF9wcm9wZXJ0aWVzKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0CiAJCWNv
bm5lY3Rvci0+c3RhdGUtPnNjYWxpbmdfbW9kZSA9IERSTV9NT0RFX1NDQUxFX0FTUEVDVDsKIAog
CX0KKworCWlmIChIQVNfVlJSKGRldl9wcml2KSkKKwkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfdnJy
X2NhcGFibGVfcHJvcGVydHkoY29ubmVjdG9yKTsKIH0KIAogLyoqCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYwppbmRleCBlMDRjZGQwNjU3NDguLmIwNTAzZWRiZmRmZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCkBAIC0yMCwxMCArMjAs
MTAgQEAgYm9vbCBpbnRlbF92cnJfaXNfY2FwYWJsZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQogCiAJaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0
b3IoY29ubmVjdG9yKSk7CiAJLyoKLQkgKiBEUCBTaW5rIGlzIGNhcGFibGUgb2YgVmFyaWFibGUg
cmVmcmVzaCB2aWRlbyB0aW1pbmdzIGlmCisJICogRFAgU2luayBpcyBjYXBhYmxlIG9mIFZSUiB2
aWRlbyB0aW1pbmdzIGlmCiAJICogSWdub3JlIE1TQSBiaXQgaXMgc2V0IGluIERQQ0QuCiAJICog
RURJRCBtb25pdG9yIHJhbmdlIGFsc28gc2hvdWxkIGJlIGF0bGVhc3QgMTAgZm9yIHJlYXNvbmFi
bGUKLQkgKiBBZGFwdGl2ZSBzeW5jLyBWUlIgZW5kIHVzZXIgZXhwZXJpZW5jZS4KKwkgKiBBZGFw
dGl2ZSBTeW5jIG9yIFZhcmlhYmxlIFJlZnJlc2ggUmF0ZSBlbmQgdXNlciBleHBlcmllbmNlLgog
CSAqLwogCXJldHVybiBIQVNfVlJSKGk5MTUpICYmCiAJCWRybV9kcF9zaW5rX2Nhbl9kb192aWRl
b193aXRob3V0X3RpbWluZ19tc2EoaW50ZWxfZHAtPmRwY2QpICYmCi0tIAoyLjE5LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
