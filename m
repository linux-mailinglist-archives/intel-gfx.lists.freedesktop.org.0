Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0C729CA61
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 21:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14AE6E0DD;
	Tue, 27 Oct 2020 20:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187256E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 20:39:59 +0000 (UTC)
IronPort-SDR: Cqsm8OH1el6XmQ9OoYaZyaHLSTGF9eM1YVxHknAJC1Fw72iGMsWsqG4lwsGqG+X4sMp1XEdwaN
 eGLpgCZP5AGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="165569930"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="165569930"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:39:58 -0700
IronPort-SDR: XuD/90fOQPRpOIcQn6Wo5ZWlwBfaS57E6mp6JN94fvmy+MNnRPpE6MUuYHGHmmHAZ7OSWOjYIj
 iW84iktQV6AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="350410246"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 27 Oct 2020 13:39:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Oct 2020 22:39:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 22:39:47 +0200
Message-Id: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Remainder of dbuf state stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSByZW1haW5kZXIgb2YgbXkgb3JpZ2luYWwgZGJ1ZiBzdGF0ZSBzZXJpZXMuIFdlIG1lcmdlZCBt
b3N0IG9mIGl0CmluIGJ1dCB3b3VsZCBiZSBnb29kIHRvIGdldCByaWQgb2YgdGhlIHJlbWFpbmlu
ZyB3YXJ0cyBhcyBzb21lIG9mCnRob3NlIGhhdmUgYmVlbiBjYXVzaW5nIGdyaWVmIHRvIGFjdHVh
bCB1c2Vycy4KClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxf
Y3J0Y19kZGJfd2VpZ2h0KCkKICBkcm0vaTkxNTogUGFzcyB0aGUgY3J0YyB0byBza2xfY29tcHV0
ZV9kYnVmX3NsaWNlcygpCiAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9kYnVmX3NsaWNlX3Np
emUoKQogIGRybS9pOTE1OiBJbnRyb2R1Y2Ugc2tsX2RkYl9lbnRyeV9mb3Jfc2xpY2VzKCkKICBk
cm0vaTkxNTogTW92ZSBwaXBlIGRkYiBlbnRyaWVzIGludG8gdGhlIGRidWYgc3RhdGUKICBkcm0v
aTkxNTogRXh0cmFjdCBpbnRlbF9jcnRjX2RidWZfd2VpZ2h0cygpCiAgZHJtL2k5MTU6IEVuY2Fw
c3VsYXRlIGRidWYgc3RhdGUgaGFuZGxpbmcgaGFyZGVyCiAgZHJtL2k5MTU6IERvIGEgYml0IG1v
cmUgaW5pdGlhbCByZWFkb3V0IGZvciBkYnVmCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQwICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuYyAgfCAgIDEgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgICAgICB8ICAgOSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAg
ICAgICAgICAgICAgfCA1MzkgKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDcgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMjY5
IGluc2VydGlvbnMoKyksIDMyOCBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
