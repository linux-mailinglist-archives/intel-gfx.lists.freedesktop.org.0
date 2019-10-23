Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB9BE1650
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539276EA0F;
	Wed, 23 Oct 2019 09:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12DB46EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 09:38:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="196726286"
Received: from server.fi.intel.com (HELO teofilatto.example.org)
 ([10.237.72.186])
 by fmsmga008.fm.intel.com with ESMTP; 23 Oct 2019 02:38:24 -0700
From: Andi Shyti <andi.shyti@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Wed, 23 Oct 2019 12:38:19 +0300
Message-Id: <20191023093821.3350-1-andi.shyti@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Extract rps and guc
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

SGksCgp0aGlzIGlzIHRoZSBsYXN0IHNlcmllcyBvZiB0aGUgR1QgcmVmYWN0b3JpbmcuIEluIHRo
ZXNlIHR3bwpwYXRjaGVzIEd1QyBpcnEgbWFuYWdlbWVudCBhbmQgUlBTIGFyZSBtb3ZlZCBpbnRv
IGd0Ly4KClRoYW5rcyBhIGxvdCBDaHJpcyBmb3IgeW91ciBoZWxwIQoKQW5kaQoKQW5kaSBTaHl0
aSAoMik6CiAgZHJtL2k5MTU6IEV4dHJhY3QgR1QgcmVuZGVyIHBvd2VyIHN0YXRlIG1hbmFnZW1l
bnQKICBkcm0vaTkxNTogRXh0cmFjdCB0aGUgR3VDIGludGVycnVwdCBoYW5kbGVycwoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgIDMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgIDggKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICB8ICAgIDYgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jICAgICAgICB8ICAgIDUgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgICAgICAgICB8ICAgNDkgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmggICAgICAgICB8ICAgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgICAgMiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9sbGMuYyAgICAgICAgICAgfCAgICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYyAgICAgICAgICAgfCAxODcyICsrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmggICAgICAgICAgIHwgICAz
NyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHNfdHlwZXMuaCAgICAgfCAgIDkz
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xsYy5jICAgICAgICB8ICAgIDcg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jICAgICAgICB8ICAgODcg
KwogLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgICAgNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgICA3MyAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgICAgMiAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDk2IC0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICAgIDMgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICB8ICA0NTIgKy0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCAgICAgICAgICAgICAgIHwgICAxMiAt
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jICAgICAgICAgICAgICAgfCAgIDEwICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAgICA3ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgICAgICAgICAgICAgfCAgIDc0ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAyMTA1ICsr
LS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAg
ICAgICAgfCAgIDIyIC0KIDI1IGZpbGVzIGNoYW5nZWQsIDI0NDYgaW5zZXJ0aW9ucygrKSwgMjU4
NiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ycHMuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jwcy5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcnBzX3R5cGVzLmgKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
