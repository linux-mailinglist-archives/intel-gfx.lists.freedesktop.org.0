Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51465113224
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 19:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9347E6F48D;
	Wed,  4 Dec 2019 18:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CED06F48D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 18:06:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 10:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="223317424"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 04 Dec 2019 10:06:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Dec 2019 20:06:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 20:05:44 +0200
Message-Id: <20191204180549.1267-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Use the passed in encoder
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgdXNlIHRoZSBwYXNzZWQgaW4gZW5jb2RlciBpbnN0ZWFkIG9mIGRpZ2dpbmcgaXQgb3V0IHZp
YQp0aGUgbGVnYWN5IGRybV9jb25uZWN0b3ItPmVuY29kZXIgcG9pbnRlciAod2hpY2ggd2UnbGwg
d2FudCB0bwpzdG9wIHVzaW5nKS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdWRpby5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXVkaW8uYwppbmRleCAyNzcxMDA5OGQwNTYuLmY5ZDdhNzdmYmRiZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwpAQCAtNzA3LDggKzcwNyw4IEBAIHZvaWQg
aW50ZWxfYXVkaW9fY29kZWNfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CURSTV9ERUJVR19EUklWRVIoIkVMRCBvbiBbQ09OTkVDVE9SOiVkOiVzXSwgW0VOQ09ERVI6JWQ6
JXNdXG4iLAogCQkJIGNvbm5lY3Rvci0+YmFzZS5pZCwKIAkJCSBjb25uZWN0b3ItPm5hbWUsCi0J
CQkgY29ubmVjdG9yLT5lbmNvZGVyLT5iYXNlLmlkLAotCQkJIGNvbm5lY3Rvci0+ZW5jb2Rlci0+
bmFtZSk7CisJCQkgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLAorCQkJIGVuY29kZXItPmJhc2UubmFt
ZSk7CiAKIAljb25uZWN0b3ItPmVsZFs2XSA9IGRybV9hdl9zeW5jX2RlbGF5KGNvbm5lY3Rvciwg
YWRqdXN0ZWRfbW9kZSkgLyAyOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
