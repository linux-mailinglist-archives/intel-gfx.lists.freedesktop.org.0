Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418EBBC84
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 21:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5576E8DA;
	Mon, 23 Sep 2019 19:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219CF6E875
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 19:55:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 12:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="179238313"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga007.jf.intel.com with ESMTP; 23 Sep 2019 12:55:14 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 12:55:04 -0700
Message-Id: <20190923195513.207536-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/9] TGL TC enabling v3
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

djE6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY2OTUvI3JldjEK
djI6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY2OTUvI3JldjIK
djIgcGF0Y2hlcyBtZXJnZWQ6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjcwMjIvCgpNYWpvciBkaWZmZXJlbmNlcyBmcm9tIHYyIGlzIHRoYXQgc29tZSBwYXRjaGVz
IHdlcmUgYWxyZWFkeSBtZXJnZWQgYW5kIGFwcGxpZWQgdGhlIGZpeGVzIHJlcXVlc3RlZCBvdmVy
IHYyIHBhdGNoZXMsIGFsbCBub3RlZCBpbiBlYWNoIHBhdGNoLgoKQ2xpbnRvbiBBIFRheWxvciAo
Mik6CiAgZHJtL2k5MTUvdGdsOiBUQyBoZWxwZXIgZnVuY3Rpb24gdG8gcmV0dXJuIHBpbiBtYXBw
aW5nCiAgZHJtL2k5MTUvdGdsOiBBZGQgZGtsIHBoeSBwcm9ncmFtbWluZyBzZXF1ZW5jZXMKCkpv
c8OpIFJvYmVydG8gZGUgU291emEgKDMpOgogIGRybS9pOTE1L3RnbDogQWRkIGRrbCBwaHkgcGxs
IGNhbGN1bGF0aW9ucwogIGRybS9pOTE1L3RnbDogRml4IGRrbCBsaW5rIHRyYWluaW5nCiAgZHJt
L2k5MTUvdGdsOiBSZXR1cm4gdGhlIG1nL2RrbCBwbGwgYXMgRERJIGNsb2NrIGZvciBuZXcgVEMg
cG9ydHMKCkx1Y2FzIERlIE1hcmNoaSAoMyk6CiAgZHJtL2k5MTUvdGdsOiBBZGQgaW5pdGlhbCBk
a2wgcGxsIHN1cHBvcnQKICBkcm0vaTkxNS90Z2w6IHJlLWluZGVudCBjb2RlIHRvIHByZXBhcmUg
Zm9yIERLTCBjaGFuZ2VzCiAgZHJtL2k5MTUvdGdsOiBpbml0aWFsaXplIFRDIGFuZCBUQlQgcG9y
dHMKClZhbmRpdGEgS3Vsa2FybmkgKDEpOgogIGRybS9pOTE1L3RnbDogQWRkIHN1cHBvcnQgZm9y
IGRrbCBwbGwgd3JpdGUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
ICAgICAgfCAyODAgKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jIHwgMzQzICsrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDUgKwogNiBmaWxlcyBjaGFuZ2VkLCA1Nzcg
aW5zZXJ0aW9ucygrKSwgNzQgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
