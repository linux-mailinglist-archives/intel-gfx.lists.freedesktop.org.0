Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07016501E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F16296ECB8;
	Wed, 19 Feb 2020 20:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0D06ECB6;
 Wed, 19 Feb 2020 20:36:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 12:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="229914824"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 19 Feb 2020 12:36:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2020 22:36:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 Feb 2020 22:35:43 +0200
Message-Id: <20200219203544.31013-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm: Shrink mode->private_flags
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmdt
YTUwMCBuZWVkcyA0IGJpdHMgKHRvIHN0b3JlIGEgcGl4ZWwgbXVsdGlwbGllcikgaW4gdGhlCm1v
ZGUtPnByaXZhdGVfZmxhZ3MsIGk5MTUgY3VycmVudGx5IGhhcyB0aHJlZSBiaXRzIGRlZmluZWQu
Ck5vIG9uZSBlbHNlIHVzZXMgdGhpcy4gUmVkdWNlIHRoZSBzaXplIHRvIHU4LgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBpbmNsdWRlL2RybS9kcm1fbW9kZXMuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2Rl
cy5oIGIvaW5jbHVkZS9kcm0vZHJtX21vZGVzLmgKaW5kZXggYjU4NTA3NDk0NWI1Li5kYWRiMGYz
ZTViMGIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oCisrKyBiL2luY2x1ZGUv
ZHJtL2RybV9tb2Rlcy5oCkBAIC0zNzgsNyArMzc4LDcgQEAgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgewogCSAqIGJ5IGF0b21pYyBkcml2ZXJzIHNpbmNlIHRoZXkgY2FuIHN0b3JlIGFueSBhZGRp
dGlvbmFsIGRhdGEgYnkKIAkgKiBzdWJjbGFzc2luZyBzdGF0ZSBzdHJ1Y3R1cmVzLgogCSAqLwot
CWludCBwcml2YXRlX2ZsYWdzOworCXU4IHByaXZhdGVfZmxhZ3M7CiAKIAkvKioKIAkgKiBAcGlj
dHVyZV9hc3BlY3RfcmF0aW86Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
