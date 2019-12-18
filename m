Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3465124CD6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAEAF6E8C4;
	Wed, 18 Dec 2019 16:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4016E8A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189675"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:59 +0200
Message-Id: <20191218161105.30638-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Make sure Y slave planes get
 all the required state
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WSBwbGFuZXMgcHJvZ3JhbSB0aGUgb2Zmc2V0IGFuZCBzdHJpZGUgb2YgdGhlIEFVWCBwbGFuZSwg
c28gbWFrZSBzdXJlIHdlCmNvcHkgdGhlIHJlcXVpcmVkIGluZm8gZm9yIHRoaXMgaW50byB0aGVp
ciBwbGFuZSBzdGF0ZS4KCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5A
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICsr
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYjRlYjBkMjE0
N2Y1Li5lMzUwZjFkNDBiODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCkBAIC0xMjE3OSw3ICsxMjE3OSw4IEBAIHN0YXRpYyBpbnQgaWNsX2NoZWNr
X252MTJfcGxhbmVzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQkvKiBD
b3B5IHBhcmFtZXRlcnMgdG8gc2xhdmUgcGxhbmUgKi8KIAkJbGlua2VkX3N0YXRlLT5jdGwgPSBw
bGFuZV9zdGF0ZS0+Y3RsIHwgUExBTkVfQ1RMX1lVVjQyMF9ZX1BMQU5FOwogCQlsaW5rZWRfc3Rh
dGUtPmNvbG9yX2N0bCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9jdGw7Ci0JCWxpbmtlZF9zdGF0ZS0+
Y29sb3JfcGxhbmVbMF0gPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF07CisJCW1lbWNweShs
aW5rZWRfc3RhdGUtPmNvbG9yX3BsYW5lLCBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmUsCisJCSAg
ICAgICBzaXplb2YobGlua2VkX3N0YXRlLT5jb2xvcl9wbGFuZSkpOwogCiAJCWludGVsX3BsYW5l
X2NvcHlfdWFwaV90b19od19zdGF0ZShsaW5rZWRfc3RhdGUsIHBsYW5lX3N0YXRlKTsKIAkJbGlu
a2VkX3N0YXRlLT51YXBpLnNyYyA9IHBsYW5lX3N0YXRlLT51YXBpLnNyYzsKLS0gCjIuMjIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
