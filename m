Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6288A154CB4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:12:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE146FB3A;
	Thu,  6 Feb 2020 20:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5FA36FB3A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:12:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 12:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="345126776"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 06 Feb 2020 12:12:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2020 22:12:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 22:12:03 +0200
Message-Id: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix g4x+ sprite dotclock limit
 for upscaling
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV2
ZW4gaWYgd2UncmUgbm90IGRvaW5nIGRvd25zY2FsaW5nIHdlIHNob3VsZCBhY2NvdW50IGZvcgpz
b21lIG9mIHRoZSBleHRyYSBkb3RjbG9jayBsaW1pdGF0aW9ucyBmb3IgZzR4KyBzcHJpdGVzLiBJ
bgpwYXJ0aWN1bGFyIHdlIG11c3QgbmV2ZXIgZXhjZWVkIHRoZSA5MCUgcnVsZSwgYW5kIHdpdGgg
UkdCCnRoYXQgbGltaXRzIGFjdHVhbGx5IGRyb3BzIHRvIDgwJS4KClNvIGluc3RlYWQgb2YgYmFp
bGluZyBvdXQgd2hlbiB1cHNjYWxpbmcgbGV0J3MgY2xhbXAgdGhlCnNjYWxpbmcgZmFjdG9yIGFw
cHJvcHJpYXRlbHkgYW5kIGdvIHRocm91Z2ggdGhlIHJlc3Qgb2YKY2FsY3VsYXRpb24gbm9ybWFs
bHkuIEJ5IGx1Y2sgd2UgYWxyZWFkeSBkaWQgdGhlIGZ1bGwKY2FsY3VsYXRpb25zIGZvciB0aGUg
MToxIGNhc2UuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmlu
ZGV4IDdhYmVlZmU4ZGNlNS4uNmUyZTIyZDliYmFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTE2MTEsOCArMTYxMSw3IEBAIHN0YXRpYyBpbnQg
ZzR4X3Nwcml0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJaHNjYWxlID0gZHJtX3JlY3RfY2FsY19oc2NhbGUoJnBsYW5lX3N0YXRlLT51YXBp
LnNyYywKIAkJCQkgICAgICAmcGxhbmVfc3RhdGUtPnVhcGkuZHN0LAogCQkJCSAgICAgIDAsIElO
VF9NQVgpOwotCWlmIChoc2NhbGUgPCAweDEwMDAwKQotCQlyZXR1cm4gcGl4ZWxfcmF0ZTsKKwlo
c2NhbGUgPSBtYXgoaHNjYWxlLCAweDEwMDAwdSk7CiAKIAkvKiBEZWNpbWF0aW9uIHN0ZXBzIGF0
IDJ4LDR4LDh4LDE2eCAqLwogCWRlY2ltYXRlID0gaWxvZzIoaHNjYWxlID4+IDE2KTsKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
