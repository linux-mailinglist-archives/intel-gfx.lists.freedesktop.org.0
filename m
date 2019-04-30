Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B45DBED7B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 02:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3F089358;
	Tue, 30 Apr 2019 00:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A4E89358
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 00:04:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 17:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="227895989"
Received: from aswarup-desk.jf.intel.com ([10.54.75.32])
 by orsmga001.jf.intel.com with ESMTP; 29 Apr 2019 17:04:54 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 17:00:28 -0700
Message-Id: <20190430000028.4690-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Fix setting 10 bit deep color mode
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZXJlIGlzIGEgYnVnIGluIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZSgpIC0gd2UgY29tcGFyZSBw
aXBlX2JwcAo8PSA4KjMgd2hpY2ggcmV0dXJucyB0cnVlIGV2ZXJ5IHRpbWUgZm9yIGhkbWlfZGVl
cF9jb2xvcl9wb3NzaWJsZSAxMiBiaXQKZGVlcCBjb2xvciBtb2RlIHRlc3QgaW4gaW50ZWxfaGRt
aV9jb21wdXRlX2NvbmZpZygpLihFdmVuIHdoZW4gdGhlCnJlcXVlc3RlZCBjb2xvciBtb2RlIGlz
IDEwIGJpdCB0aHJvdWdoIG1heCBicGMgcHJvcGVydHkpCgpDb21wYXJpbmcgcGlwZV9icHAgd2l0
aCBicGMgKiAzIHRha2VzIGNhcmUgb2YgdGhpcyBjb25kaXRpb24gd2hlcmUKcmVxdWVzdGVkIG1h
eCBicGMgaXMgMTAgYml0LCBzbyBoZG1pX2RlZXBfY29sb3JfcG9zc2libGUgd2l0aCAxMiBiaXQK
cmV0dXJucyBmYWxzZSB3aGVuIHJlcXVlc3RlZCBtYXggYnBjIGlzIDEwLgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CkNjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9y
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9oZG1pLmMKaW5kZXggOTkxZWIzNjJlZjRmLi43NGYyZGNiOGIxYWQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKQEAgLTIxNTksNyArMjE1OSw3IEBAIHN0YXRpYyBib29s
IGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKIAlpZiAoYnBjID09IDEwICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkK
IAkJcmV0dXJuIGZhbHNlOwogCi0JaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDw9IDgqMykKKwlp
ZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPCBicGMgKiAzKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlp
ZiAoIWNydGNfc3RhdGUtPmhhc19oZG1pX3NpbmspCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
