Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05345313B9B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DAB76E97E;
	Mon,  8 Feb 2021 17:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEBF6E97E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:53:46 +0000 (UTC)
IronPort-SDR: VwEIW7DDV8Qktplz/IYpVMifk/tAXnWxSqXbEKdVK6cfjnDhUid+C+0TU2boicheW8gEXMolCB
 Jmyt9XrdXfdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="179192776"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="179192776"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:53:45 -0800
IronPort-SDR: BRbgEeZGJGRgmbX62u/0s4Cr3LLPBJbsnpeOytjtOPeZd3aEa+sDNPnJRWiwHRn4S2R8EvZY6N
 rboRVqVJRfdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="360121561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 08 Feb 2021 09:53:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Feb 2021 19:53:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: gregkh@linuxfoundation.org
Date: Mon,  8 Feb 2021 19:53:40 +0200
Message-Id: <20210208175341.8695-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <16127808794868@kroah.com>
References: <16127808794868@kroah.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH stable-5.10 1/2] drm/i915: Fix ICL MG PHY vswing
 handling
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNv
bW1pdCBhMmE1ZjU2MjhlNTQ5NGNhOTM1M2Y3NjFmN2ZlNzgzZGZhODJmYjlhIHVwc3RyZWFtLgoK
VGhlIE1IIFBIWSB2c3dpbmcgdGFibGUgZG9lcyBoYXZlIGFsbCB0aGUgZW50cmllcyB0aGVzZSBk
YXlzLiBHZXQKcmlkIG9mIHRoZSBvbGQgaGFja3MgaW4gdGhlIGNvZGUgd2hpY2ggY2xhaW0gb3Ro
ZXJ3aXNlLgoKVGhpcyBoYWNrIHdhcyB0b3RhbGx5IGJvZ3VzIGFueXdheS4gVGhlIGNvcnJlY3Qg
d2F5IHRvIGhhbmRsZSB0aGUKbGFjayBvZiB0aG9zZSB0d28gZW50cmllcyB3b3VsZCBoYXZlIGJl
ZW4gdG8gZGVjbGFyZSBvdXIgbWF4CnZzd2luZyBhbmQgcHJlLWVtcGggdG8gYm90aCBiZSBsZXZl
bCAyLgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpD
YzogQ2xpbnRvbiBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpGaXhlczogOWY3
ZmZhMjk3OTc4ICgiZHJtL2k5MTUvdGMvaWNsOiBVcGRhdGUgVEMgdnN3aW5nIHRhYmxlcyIpClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDIwMTIwNzIwMzUxMi4xNzE4LTEtdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20KUmV2aWV3
ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgooY2hlcnJ5IHBpY2tlZCBm
cm9tIGNvbW1pdCA1ZWMzNDY0NzZlNzk1MDg5YjdkYWM4YWI5ZGNlZTMwYzhkODBhZDg0KQpTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgooY2hlcnJ5IHBp
Y2tlZCBmcm9tIGNvbW1pdCBhMmE1ZjU2MjhlNTQ5NGNhOTM1M2Y3NjFmN2ZlNzgzZGZhODJmYjlh
KQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA3ICsrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggM2YyYmJkOTM3MGE4Li41
MWY0ZjQzNzRkZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpA
QCAtMjYwNSwxMiArMjYwNSwxMSBAQCBzdGF0aWMgdm9pZCBpY2xfbWdfcGh5X2RkaV92c3dpbmdf
c2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAlkZGlfdHJhbnNsYXRp
b25zID0gaWNsX2dldF9tZ19idWZfdHJhbnMoZW5jb2RlciwgdHlwZSwgcmF0ZSwKIAkJCQkJCSZu
X2VudHJpZXMpOwotCS8qIFRoZSB0YWJsZSBkb2VzIG5vdCBoYXZlIHZhbHVlcyBmb3IgbGV2ZWwg
MyBhbmQgbGV2ZWwgOS4gKi8KLQlpZiAobGV2ZWwgPj0gbl9lbnRyaWVzIHx8IGxldmVsID09IDMg
fHwgbGV2ZWwgPT0gOSkgeworCWlmIChsZXZlbCA+PSBuX2VudHJpZXMpIHsKIAkJZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgIkRESSB0cmFuc2xhdGlvbiBub3QgZm91bmQgZm9y
IGxldmVsICVkLiBVc2luZyAlZCBpbnN0ZWFkLiIsCi0JCQkgICAgbGV2ZWwsIG5fZW50cmllcyAt
IDIpOwotCQlsZXZlbCA9IG5fZW50cmllcyAtIDI7CisJCQkgICAgbGV2ZWwsIG5fZW50cmllcyAt
IDEpOworCQlsZXZlbCA9IG5fZW50cmllcyAtIDE7CiAJfQogCiAJLyogU2V0IE1HX1RYX0xJTktf
UEFSQU1TIGNyaV91c2VfZnMzMiB0byAwLiAqLwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
