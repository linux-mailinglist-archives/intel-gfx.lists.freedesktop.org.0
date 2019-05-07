Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9133616A13
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 20:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED57A6E822;
	Tue,  7 May 2019 18:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9388E6E822
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 18:23:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 11:23:06 -0700
X-ExtLoop1: 1
Received: from aswarup-desk.jf.intel.com ([10.54.75.32])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 11:23:06 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 11:18:56 -0700
Message-Id: <20190507181856.16091-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430000028.4690-1-aditya.swarup@intel.com>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/icl: Fix setting 10 bit deep color
 mode
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

VGhlcmUgaXMgYSBidWcgaW4gaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlKCkgLSB3ZSBjb21wYXJl
IHBpcGVfYnBwCjw9IDgqMyB3aGljaCByZXR1cm5zIHRydWUgZXZlcnkgdGltZSBmb3IgaGRtaV9k
ZWVwX2NvbG9yX3Bvc3NpYmxlIDEyIGJpdApkZWVwIGNvbG9yIG1vZGUgdGVzdCBpbiBpbnRlbF9o
ZG1pX2NvbXB1dGVfY29uZmlnKCkuKEV2ZW4gd2hlbiB0aGUKcmVxdWVzdGVkIGNvbG9yIG1vZGUg
aXMgMTAgYml0IHRocm91Z2ggbWF4IGJwYyBwcm9wZXJ0eSkKCkNvbXBhcmluZyBwaXBlX2JwcCB3
aXRoIGJwYyAqIDMgdGFrZXMgY2FyZSBvZiB0aGlzIGNvbmRpdGlvbiB3aGVyZQpyZXF1ZXN0ZWQg
bWF4IGJwYyBpcyAxMCBiaXQsIHNvIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZSB3aXRoIDEyIGJp
dApyZXR1cm5zIGZhbHNlIHdoZW4gcmVxdWVzdGVkIG1heCBicGMgaXMgMTAuKFZpbGxlKQoKdjI6
QWRkIHN1Z2dlc3RlZCBieSBWaWxsZSBTeXJqw6Rsw6QKClN1Z2dlc3RlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRp
dHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KQ2M6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9o
ZG1pLmMKaW5kZXggOTkxZWIzNjJlZjRmLi43NGYyZGNiOGIxYWQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9oZG1pLmMKQEAgLTIxNTksNyArMjE1OSw3IEBAIHN0YXRpYyBib29sIGhkbWlfZGVlcF9j
b2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
IAlpZiAoYnBjID09IDEwICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKIAkJcmV0dXJuIGZh
bHNlOwogCi0JaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDw9IDgqMykKKwlpZiAoY3J0Y19zdGF0
ZS0+cGlwZV9icHAgPCBicGMgKiAzKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlpZiAoIWNydGNfc3Rh
dGUtPmhhc19oZG1pX3NpbmspCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
