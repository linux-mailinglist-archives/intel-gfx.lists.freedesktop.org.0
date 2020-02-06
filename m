Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F1D154CB3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C586FB38;
	Thu,  6 Feb 2020 20:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880C46FB38
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:12:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 12:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="250172548"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 06 Feb 2020 12:12:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2020 22:12:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 22:12:04 +0200
Message-Id: <20200206201204.31704-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Use fb->format->is_yuv for the
 g4x+ sprite RGB vs. YUV check
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmc0
eCsgc3ByaXRlcyBoYXZlIGFuIGV4dHJhIGNkY2xrIGxpbWl0YXRpb24gbGlzdGVkIGZvciBSR0Ig
Zm9ybWF0cy4KRm9yIHNvbWUgcmFuZG9tIHJlYXNvbiBJIGNob3NlIHRvIHVzZSBjcHA+PTQgYXMg
dGhlIGNoZWNrIGZvciB0aGF0LgpXaGlsZSB0aGF0IGRvZXMgYWN0dWFsbHkgd29yayBsZXQncyBk
ZW9iZnVzY2F0ZSBpdCBieSBjaGVja2luZwpmb3IgIWlzX3l1diBpbnN0ZWFkLiBJIHN1c3BlY3Qg
aXNfeXV2IGRpZG4ndCBleGlzdCB3YXkgYmFjayB3aGVuCkkgb3JpZ2luYWxseSB3cml0ZSB0aGUg
Y29kZS4KCkFsc28gZHJvcCB0aGUgZHVwbGljYXRlIGNvbW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCA0ICsrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggNmUyZTIyZDliYmFhLi5mOTVmZTJj
OTk0NjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpA
QCAtMTYyNCw4ICsxNjI0LDggQEAgc3RhdGljIGludCBnNHhfc3ByaXRlX21pbl9jZGNsayhjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlsaW1pdCAtPSBkZWNpbWF0
ZTsKIAogCS8qIC0xMCUgZm9yIFJHQiAqLwotCWlmIChmYi0+Zm9ybWF0LT5jcHBbMF0gPj0gNCkK
LQkJbGltaXQtLTsgLyogLTEwJSBmb3IgUkdCICovCisJaWYgKCFmYi0+Zm9ybWF0LT5pc195dXYp
CisJCWxpbWl0LS07CiAKIAkvKgogCSAqIFdlIHNob3VsZCBhbHNvIGRvIC0xMCUgaWYgc3ByaXRl
IHNjYWxpbmcgaXMgZW5hYmxlZAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
