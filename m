Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547AE14BB44
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B574B6EE61;
	Tue, 28 Jan 2020 14:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C81E6EE61
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:45:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:45:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="217630004"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Jan 2020 06:45:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 16:45:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 16:45:01 +0200
Message-Id: <20200128144501.3714-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
References: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Limit display Wa_1405510057 to
 gen11
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRH
TCsgc3VwcG9zZWRseSBkbyBub3QgbmVlZCBXYV8xNDA1NTEwMDU3IHNvIGxpbWl0IGl0IHRvCmdl
bjExIG9ubHkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXgg
OWU0MDlhODE5ZmY1Li41OTkxYTk5YzQzYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jCkBAIC0yMjc0LDkgKzIyNzQsOSBAQCBzdGF0aWMgYm9vbCBoZG1pX2Rl
ZXBfY29sb3JfcG9zc2libGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCiAJCX0KIAl9CiAKLQkvKiBEaXNwbGF5IFdhXzE0MDU1MTAwNTc6aWNsICovCisJLyogRGlz
cGxheSBXYV8xNDA1NTEwMDU3OmljbCxlaGwgKi8KIAlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zv
cm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwICYmCi0JICAgIGJwYyA9PSAxMCAm
JiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmCisJICAgIGJwYyA9PSAxMCAmJiBJU19HRU4o
ZGV2X3ByaXYsIDExKSAmJgogCSAgICAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oYmxhbmtfZW5kIC0K
IAkgICAgIGFkanVzdGVkX21vZGUtPmNydGNfaGJsYW5rX3N0YXJ0KSAlIDggPT0gMikKIAkJcmV0
dXJuIGZhbHNlOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
