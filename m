Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA4165016
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1926ECB0;
	Wed, 19 Feb 2020 20:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88F86ECB1;
 Wed, 19 Feb 2020 20:36:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 12:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="269314170"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 Feb 2020 12:36:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2020 22:36:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 Feb 2020 22:35:40 +0200
Message-Id: <20200219203544.31013-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm: Make mode->flags u32
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBtb2RlIGZsYWdzIGFyZSBkaXJlY2x0eSBleHBvc2VkIGluIHRoZSB1YXBpIGFzIHUzMi4gVXNl
IHRoZQpzYW1lIHNpemUgdHlwZSB0byBzdG9yZSB0aGVtIGludGVybmFsbHkuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGluY2x1ZGUvZHJtL2RybV9tb2Rlcy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX21vZGVz
LmggYi9pbmNsdWRlL2RybS9kcm1fbW9kZXMuaAppbmRleCA1YzIwMjg1Y2MzMTcuLmIyOGMwMjM0
ZmNkNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzLmgKKysrIGIvaW5jbHVkZS9k
cm0vZHJtX21vZGVzLmgKQEAgLTMyMiw3ICszMjIsNyBAQCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSB7CiAJICogIC0gRFJNX01PREVfRkxBR18zRF9TSURFX0JZX1NJREVfSEFMRjogZnJhbWUgc3Bs
aXQgaW50byBsZWZ0IGFuZAogCSAqICAgIHJpZ2h0IHBhcnRzLgogCSAqLwotCXVuc2lnbmVkIGlu
dCBmbGFnczsKKwl1MzIgZmxhZ3M7CiAKIAkvKioKIAkgKiBAd2lkdGhfbW06Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
