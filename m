Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A087731461C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 03:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501FF6EA78;
	Tue,  9 Feb 2021 02:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1478F6EA78
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 02:19:27 +0000 (UTC)
IronPort-SDR: m0OmsexRAqaIzX3sjhEh+Zmy5gUGOTgkLooz2ZOo4s+bFrUUJz+Jv9r5bPZp0qU6X0qVAIxPE0
 NRbuE5lQlNow==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181036570"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181036570"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 18:19:27 -0800
IronPort-SDR: hcV6QV51Xa1T++9a/uWzwDUA/h6ygqVkEIGq5KjY7OWupTYUhb8vqRixSz5i8MEgAND2Vc/0dh
 ujdXgL6fxrTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="435893131"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2021 18:19:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Feb 2021 04:19:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 04:19:18 +0200
Message-Id: <20210209021918.16234-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Warn when releasing a frontbuffer
 while in use
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHNjcmVhbSBpZiB3ZSBhcmUgYWJvdXQgdG8gcmVsZWFzZSBhIGZyb250YnVmZmVyIHdoaWNo
CmlzIHN0aWxsIGluIHVzZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mcm9udGJ1ZmZlci5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJv
bnRidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZm
ZXIuYwppbmRleCA3YjM4ZWVlOTk4MGYuLjZmYzY5NjViNjEzMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYwpAQCAtMjI0LDYgKzIyNCw4
IEBAIHN0YXRpYyB2b2lkIGZyb250YnVmZmVyX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZikKIAlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZnJvbnQtPm9iajsKIAlzdHJ1Y3QgaTkx
NV92bWEgKnZtYTsKIAorCWRybV9XQVJOX09OKG9iai0+YmFzZS5kZXYsIGF0b21pY19yZWFkKCZm
cm9udC0+Yml0cykpOworCiAJc3Bpbl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKIAlmb3JfZWFjaF9n
Z3R0X3ZtYSh2bWEsIG9iaikgewogCQlpOTE1X3ZtYV9jbGVhcl9zY2Fub3V0KHZtYSk7Ci0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
