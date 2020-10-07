Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A188286573
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 19:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42426E081;
	Wed,  7 Oct 2020 17:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBEE6E081
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 17:09:35 +0000 (UTC)
IronPort-SDR: HLglBVW213euN8DKLjUQgN1ujs6leIL+XVD+YKKnbqY6P3DudKKgMOsWgF5XqtEhNmbGMLDkQo
 IaccXHGZ6MvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164254640"
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="164254640"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:22 -0700
IronPort-SDR: O5h9/4TvSNkh0F2b/cDqEXaE6lF6uQnDzLHlKmE+0UXMDGdFBZp01XBxIHLKXLILnObtMu85nK
 826z+aiBgO+Q==
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="528056837"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 20:09:11 +0300
Message-Id: <20201007170917.1764556-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/6] rm/i915: Add support for LTTPR
 non-transparent link training mode
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

VGhpcyBwYXRjaHNldCBpcyB2MyBvZiBbMV0sIHJlYmFzZWQgb24gZHJtLXRpcCwgZml4aW5nIGFu
IGVEUCByZWxhdGVkCmNoZWNrIGluIHBhdGNoIDUgYW5kIGFkZHJlc3NpbmcgYSByZXZpZXcgY29t
bWVudCBmcm9tIFZpbGxlIGluIHBhdGNoIDYuCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy84MTk2OC8KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgoKSW1yZSBEZWFrICg2KToKICBkcm0vaTkxNTogRml4IERQIGxp
bmsgdHJhaW5pbmcgcGF0dGVybiBtYXNrCiAgZHJtL2k5MTU6IFNpbXBsaWZ5IHRoZSBsaW5rIHRy
YWluaW5nIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBGYWN0b3Igb3V0IGEgaGVscGVyIHRvIGRpc2Fi
bGUgdGhlIERQQ0QgdHJhaW5pbmcgcGF0dGVybgogIGRybS9kcDogQWRkIExUVFBSIGhlbHBlcnMK
ICBkcm0vaTkxNTogU3dpdGNoIHRvIExUVFBSIHRyYW5zcGFyZW50IG1vZGUgbGluayB0cmFpbmlu
ZwogIGRybS9pOTE1OiBTd2l0Y2ggdG8gTFRUUFIgbm9uLXRyYW5zcGFyZW50IG1vZGUgbGluayB0
cmFpbmluZwoKIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgICAgICAgICAgICAgICB8
IDIzMiArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAg
ICAgIHwgICAzICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAg
IHwgIDQ3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggICAgICAg
fCAgIDQgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwg
NTAyICsrKysrKysrKysrKysrKy0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5oIHwgICA5ICsKIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAgICAg
ICAgICAgICAgICB8ICA2MiArKysKIDggZmlsZXMgY2hhbmdlZCwgNzU1IGluc2VydGlvbnMoKyks
IDEwNiBkZWxldGlvbnMoLSkKCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
