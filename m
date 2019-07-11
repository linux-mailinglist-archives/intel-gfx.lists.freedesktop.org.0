Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E76D56547A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 12:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1646E179;
	Thu, 11 Jul 2019 10:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5306E179;
 Thu, 11 Jul 2019 10:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 03:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="249741600"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 11 Jul 2019 03:32:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 13:32:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 13:32:29 +0300
Message-Id: <20190711103234.6294-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] drm/edid: Add new modes from CTA-861-G
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
Cc: Hans Verkuil <hansverk@cisco.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cG9zdGluZyBhIHNlcmllcyBmcm9tIDEtMiB5ZWFycyBhZ28uIEkgZGlkIHRvc3MgaW4gb25lIGV4
dHJhIHBhdGNoIGF0CnRoZSBlbmQgdG8gYm9vc3Qgb3VyIGNvbmZpZGVuY2UgYSBiaXQgYml0LgoK
Q2M6IEhhbnMgVmVya3VpbCA8aGFuc3ZlcmtAY2lzY28uY29tPgpDYzogU2hhc2hhbmsgU2hhcm1h
IDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgoKVmlsbGUgU3lyasOkbMOkICg1KToKICBkcm0v
ZWRpZDogQWRkIENUQS04NjEtRyBtb2RlcyB3aXRoIFZJQyA8IDEyOAogIGRybS9lZGlkOiBBYnN0
cmFjdCBhd2F5IGNlYV9lZGlkX21vZGVzW10KICBkcm0vZWRpZDogQWRkIENUQS04NjEtRyBtb2Rl
cyB3aXRoIFZJQyA+PSAxOTMKICBkcm0vZWRpZDogVGhyb3cgYXdheSB0aGUgZHVtbXkgVklDIDAg
Y2VhIG1vZGUKICBkcm0vZWRpZDogTWFrZSBzdXJlIHRoZSBDRUEgbW9kZSBhcnJheXMgaGF2ZSB0
aGUgY29ycmVjdCBhbW91bnQgb2YKICAgIG1vZGVzCgogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlk
LmMgfCAzMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDMwNiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
