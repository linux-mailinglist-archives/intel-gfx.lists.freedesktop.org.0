Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B1629671F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBAE6E40F;
	Thu, 22 Oct 2020 22:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511936E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
IronPort-SDR: ZLEvW2BSUMozVngvwiAjxvx+hfNqXGXV3upA2qRVLTbBlt3zy6wzME8a5OlA2p/2FWi6LE+CDF
 IJc+5iDENJHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386817"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386817"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: vPBqHqruyZ6o8wcMuGhzGOKUgveIIBJp5T8zTc2nwaBa4cvfz8MjGN5/7JHu36abJr7fiqVEF6
 XjagsYhWBYAA==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153954"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:01 -0700
Message-Id: <20201022222709.29386-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/display/dp: Attach and set drm
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
NzoKKiBNb3ZlIHRoZSBoZWxwZXIgdG8gc2VwYXJhdGUgZmlsZSAoTWFuYXNpKQp2NjoKKiBSZW1v
dmUgdW5zZXQgb2YgcHJvcAp2NToKKiBGaXggdGhlIHZyciBwcm9wIG5vdCBiZWluZyBzZXQgaW4g
a2VybmVsIChNYW5hc2kpCiogVW5zZXQgdGhlIHByb3Agb24gY29ubmVjdG9yIGRpc2Nvbm5lY3Qg
KE1hbmFzaSkKdjQ6CiogUmViYXNlIChNYW5zaSkKdjM6CiogaW50ZWxfZHBfaXNfdnJyX2NhcGFi
bGUgY2FuIGJlIHVzZWQgZm9yIGRlYnVnZnMsIG1ha2UgaXQKbm9uIHN0YXRpYyAoTWFuYXNpKQp2
MjoKKiBKdXN0IHNldCB0aGlzIGluIGludGVsX2RwX2dldF9tb2RlcyBpbnN0ZWFkIG9mIG5ldyBo
b29rIChKYW5pKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggfCAxICsKIDIgZmlsZXMgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CmluZGV4IDgxOGRhYWIyNTJmMy4uMzc5NGI4ZjM1ZWRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02Miw2ICs2Miw3IEBACiAjaW5jbHVkZSAiaW50ZWxfc2lk
ZWJhbmQuaCIKICNpbmNsdWRlICJpbnRlbF90Yy5oIgogI2luY2x1ZGUgImludGVsX3Zkc2MuaCIK
KyNpbmNsdWRlICJpbnRlbF92cnIuaCIKIAogI2RlZmluZSBEUF9EUFJYX0VTSV9MRU4gMTQKIApA
QCAtNjYyMiw2ICs2NjIzLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X21vZGVzKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJZWRpZCA9IGludGVsX2Nvbm5lY3Rvci0+ZGV0
ZWN0X2VkaWQ7CiAJaWYgKGVkaWQpIHsKIAkJaW50IHJldCA9IGludGVsX2Nvbm5lY3Rvcl91cGRh
dGVfbW9kZXMoY29ubmVjdG9yLCBlZGlkKTsKKworCQlpZiAoaW50ZWxfaXNfdnJyX2NhcGFibGUo
Y29ubmVjdG9yKSkKKwkJCWRybV9jb25uZWN0b3Jfc2V0X3Zycl9jYXBhYmxlX3Byb3BlcnR5KGNv
bm5lY3RvciwKKwkJCQkJCQkgICAgICAgdHJ1ZSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0
OwogCX0KQEAgLTcwODAsNiArNzA4NSw5IEBAIGludGVsX2RwX2FkZF9wcm9wZXJ0aWVzKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0CiAJCWNv
bm5lY3Rvci0+c3RhdGUtPnNjYWxpbmdfbW9kZSA9IERSTV9NT0RFX1NDQUxFX0FTUEVDVDsKIAog
CX0KKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQlkcm1fY29ubmVjdG9yX2F0
dGFjaF92cnJfY2FwYWJsZV9wcm9wZXJ0eShjb25uZWN0b3IpOwogfQogCiBzdGF0aWMgdm9pZCBp
bnRlbF9kcF9pbml0X3BhbmVsX3Bvd2VyX3RpbWVzdGFtcHMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAppbmRleCAzZjg2MmI0
ZmQzNGYuLmFhZjBhNDE1ODJkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaApAQCAtMTUsNiArMTUsNyBAQCBlbnVtIHBpcGU7CiBlbnVtIHBvcnQ7CiBzdHJ1Y3QgZHJt
X2Nvbm5lY3Rvcl9zdGF0ZTsKIHN0cnVjdCBkcm1fZW5jb2RlcjsKK3N0cnVjdCBkcm1fY29ubmVj
dG9yOwogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWly
ZV9jdHg7CiBzdHJ1Y3QgZHJtX2RwX3ZzY19zZHA7Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
