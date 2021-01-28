Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159DF306CEF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297C46E85B;
	Thu, 28 Jan 2021 05:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCE66E8C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:35 +0000 (UTC)
IronPort-SDR: ODhQSuWPBfvTY8zk5ergY5U3c6KMztkP3tfODK9qo1qirl/MPw0FsuwsZb59FoaqlM1xNlqIla
 VZorKWQI65Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279151"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279151"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:34 -0800
IronPort-SDR: FR50fn/zK0lvFPhdGAzIE1rRtNRRqx0QDgiGNPZj11HSwlODHKY9TUDaytL+9Ckb//Ta7cDOA3
 YCXXkK9lUaRg==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386065"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:35 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:16 -0800
Message-Id: <20210128053024.23540-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/adl_s: Update PHY_MISC programming
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkFETC1TIHN3aXRj
aGVzIHVwIHdoaWNoIFBIWXMgYXJlIGNvbnNpZGVyZWQgYSBtYXN0ZXIgdG8gb3RoZXIgUEhZczsK
UEhZLUMgaXMgbm8gbG9uZ2VyIGEgbWFzdGVyLCBidXQgUEhZLUQgaXMgbm93LgoKQnNwZWM6IDQ5
MjkxCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgfCAxMiAr
KysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21i
b19waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMK
aW5kZXggZGQ0NWNiYWZjZjQyLi5jNTU4MTNjNjE5NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYwpAQCAtMTg3LDEwICsxODcsMTYgQEAgc3Rh
dGljIGJvb2wgaGFzX3BoeV9taXNjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVt
IHBoeSBwaHkpCiAJICogU29tZSBwbGF0Zm9ybXMgb25seSBleHBlY3QgUEhZX01JU0MgdG8gYmUg
cHJvZ3JhbW1lZCBmb3IgUEhZLUEgYW5kCiAJICogUEhZLUIgYW5kIG1heSBub3QgZXZlbiBoYXZl
IGluc3RhbmNlcyBvZiB0aGUgcmVnaXN0ZXIgZm9yIHRoZQogCSAqIG90aGVyIGNvbWJvIFBIWSdz
LgorCSAqCisJICogQURMLVMgdGVjaG5pY2FsbHkgaGFzIHRocmVlIGluc3RhbmNlcyBvZiBQSFlf
TUlTQywgYnV0IG9ubHkgcmVxdWlyZXMKKwkgKiB0aGF0IHdlIHByb2dyYW0gaXQgZm9yIFBIWSBB
LgogCSAqLwotCWlmIChJU19KU0xfRUhMKGk5MTUpIHx8Ci0JICAgIElTX1JPQ0tFVExBS0UoaTkx
NSkgfHwKLQkgICAgSVNfREcxKGk5MTUpKQorCisJaWYgKElTX0FMREVSTEFLRV9TKGk5MTUpKQor
CQlyZXR1cm4gcGh5ID09IFBIWV9BOworCWVsc2UgaWYgKElTX0pTTF9FSEwoaTkxNSkgfHwKKwkJ
IElTX1JPQ0tFVExBS0UoaTkxNSkgfHwKKwkJIElTX0RHMShpOTE1KSkKIAkJcmV0dXJuIHBoeSA8
IFBIWV9DOwogCiAJcmV0dXJuIHRydWU7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
