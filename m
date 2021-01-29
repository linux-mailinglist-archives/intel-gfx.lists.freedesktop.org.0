Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A93308C62
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764FE6EBA2;
	Fri, 29 Jan 2021 18:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899D66EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:29:57 +0000 (UTC)
IronPort-SDR: RL0MwJB7kDSFbDHOMyRtOmFuMdYNTWOLaV1FUipI6J+g+FvoyOByT4EBBGpLFh5ID7O+OWY7nF
 kK2xd2EXCqeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131272"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131272"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:57 -0800
IronPort-SDR: 9IfMv86u4iRc0P8U6vwo7n+UuSooLjofsqc41ZTS++ZbvW4+hvzqBRfbgXNYaDYh87uvmpXj+3
 /8eXg2esRI0g==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952912"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:56 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:38 -0800
Message-Id: <20210129182945.217078-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/adl_s: Update PHY_MISC programming
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
