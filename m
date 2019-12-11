Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB6311A9A9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:08:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6786EB0E;
	Wed, 11 Dec 2019 11:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9837A6EB0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:08:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 03:08:51 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="203520197"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 03:08:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:08:44 +0200
Message-Id: <20191211110844.2996-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: fix pipe D readout for DSI
 transcoders
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDRkODlhZGM3YjU2ZiAoImRybS9pOTE1L2Rpc3BsYXkvZHNpOiBBZGQgc3VwcG9ydCB0
byBwaXBlIEQiKQphZGRlZCBwaXBlIEQgc3VwcG9ydCBmb3IgRFNJLCBidXQgZmFpbGVkIHRvIHVw
ZGF0ZSB0aGUgc3RhdGUgcmVhZG91dC4KCkZpeGVzOiA0ZDg5YWRjN2I1NmYgKCJkcm0vaTkxNS9k
aXNwbGF5L2RzaTogQWRkIHN1cHBvcnQgdG8gcGlwZSBEIikKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1YTRiZDM3ODYzZTMuLjNlMDg3
NGUxYjBmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTEwNDMxLDYgKzEwNDMxLDkgQEAgc3RhdGljIGJvb2wgaHN3X2dldF90cmFuc2NvZGVy
X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQljYXNlIFRSQU5TX0RESV9FRFBfSU5Q
VVRfQ19PTk9GRjoKIAkJCXRyYW5zX3BpcGUgPSBQSVBFX0M7CiAJCQlicmVhazsKKwkJY2FzZSBU
UkFOU19ERElfRURQX0lOUFVUX0RfT05PRkY6CisJCQl0cmFuc19waXBlID0gUElQRV9EOworCQkJ
YnJlYWs7CiAJCX0KIAogCQlpZiAodHJhbnNfcGlwZSA9PSBjcnRjLT5waXBlKSB7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
