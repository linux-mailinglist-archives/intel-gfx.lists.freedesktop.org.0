Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F662229B4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB74F6EC9C;
	Thu, 16 Jul 2020 17:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587436EC9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:50 +0000 (UTC)
IronPort-SDR: lTRUfHHWZ3G+1LjsoZAC9K8BwOg6Qx46saOc3+6T3syBJEVScfCuVaU1/Dzl/d2BiZmusROGge
 1sJ4aeYYJt8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167580936"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="167580936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:49 -0700
IronPort-SDR: cWidY+kZ8mcXSpgmY/I/gtwvbl/yG2m4VfrDW8t16PyKtZmREZ1gE5YqYgJBQ6w11Z+dgxP+Dh
 3Vgos7z8jZtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="318497032"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 16 Jul 2020 10:21:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:06 +0300
Message-Id: <20200716172106.2656-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/14] drm/i915: Sort EHL/JSL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIEVITC9KU0wgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0
ZXIgdGhhbgpyYW5kb21uZXNzLgoKQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRlbGVA
Z21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCAxNCArKysr
KysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaAppbmRleCA0NWRhMWI0NWMwMWUuLjg4MGZmZTg1NzFlOCAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oCkBAIC01ODUsMTYgKzU4NSwxNiBAQAogLyogRUhML0pTTCAqLwogI2RlZmluZSBJTlRFTF9F
SExfSURTKGluZm8pIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4NDUwMCwgaW5mbyksCVwKLQlJTlRF
TF9WR0FfREVWSUNFKDB4NDU3MSwgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NDU1MSwg
aW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4NDU0MSwgaW5mbyksIFwKLQlJTlRFTF9WR0Ff
REVWSUNFKDB4NEU3MSwgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NDU1NywgaW5mbyks
IFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4NDU1MSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNF
KDB4NDU1NSwgaW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NEU2MSwgaW5mbyksIFwKLQlJ
TlRFTF9WR0FfREVWSUNFKDB4NEU1NywgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4NDU1
NywgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4NDU3MSwgaW5mbyksIFwKKwlJTlRFTF9W
R0FfREVWSUNFKDB4NEU1MSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4NEU1NSwgaW5m
byksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4NEU1MSwgaW5mbykKKwlJTlRFTF9WR0FfREVWSUNF
KDB4NEU1NywgaW5mbyksIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4NEU2MSwgaW5mbyksIFwKKwlJ
TlRFTF9WR0FfREVWSUNFKDB4NEU3MSwgaW5mbykKIAogLyogVEdMICovCiAjZGVmaW5lIElOVEVM
X1RHTF8xMl9JRFMoaW5mbykgXAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
