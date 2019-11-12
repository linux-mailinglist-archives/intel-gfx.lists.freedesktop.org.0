Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1BEF95C9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:38:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797026E4B7;
	Tue, 12 Nov 2019 16:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792546E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:38:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="198134089"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Nov 2019 08:38:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 18:38:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 18:38:11 +0200
Message-Id: <20191112163812.22075-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHN0YXJ0IHRvIGVsaW1pbmF0ZSBpbnRlbF9waXBlX3RvX2NwdV90cmFuc2NvZGVyKCkgc28g
dGhhdAp3ZSBjYW4gZ2V0IHJpZCBvZiBvbmUgbW9yZSBjcnRjLT5jb25maWcgdXNhZ2UgKHdoaWNo
IHdlIHdpbGwgd2FudAp0byBudWtlIGFzIHdlbGwpLgoKSW4gdGhlIGNhc2Ugb2YgYXNzZXJ0X2Zk
aV90eCgpIHdlIGtub3cgdGhhdCB3ZSdyZSBuZXZlcgpkZWFsaW5nIHdpdGggdGhlIEVEUCB0cmFu
c2NvZGVyIHNvIHdlIGNhbiBzaW1wbHkgcmVwbGFjZQp0aGlzIHdpdGggYSBjYXN0LgoKU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsr
KysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBl
N2U1NDk3ZTZmMmUuLmNhYmQ4ODMzNzgyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExNDEsMTEgKzExNDEsMTUgQEAgc3RhdGljIHZvaWQg
YXNzZXJ0X2ZkaV90eChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgIGVu
dW0gcGlwZSBwaXBlLCBib29sIHN0YXRlKQogewogCWJvb2wgY3VyX3N0YXRlOwotCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX3BpcGVfdG9fY3B1X3RyYW5zY29kZXIoZGV2
X3ByaXYsCi0JCQkJCQkJCSAgICAgIHBpcGUpOwogCiAJaWYgKEhBU19EREkoZGV2X3ByaXYpKSB7
Ci0JCS8qIERESSBkb2VzIG5vdCBoYXZlIGEgc3BlY2lmaWMgRkRJX1RYIHJlZ2lzdGVyICovCisJ
CS8qCisJCSAqIERESSBkb2VzIG5vdCBoYXZlIGEgc3BlY2lmaWMgRkRJX1RYIHJlZ2lzdGVyLgor
CQkgKgorCQkgKiBGREkgaXMgbmV2ZXIgaG9va2VkIGZlZCBmcm9tIEVEUCB0cmFuc2NvZGVyCisJ
CSAqIHNvIHBpcGUtPnRyYW5zY29kZXIgY2FzdCBpcyBmaW5lIGhlcmUuCisJCSAqLworCQllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSAoZW51bSB0cmFuc2NvZGVyKXBpcGU7CiAJCXUz
MiB2YWwgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CiAJ
CWN1cl9zdGF0ZSA9ICEhKHZhbCAmIFRSQU5TX0RESV9GVU5DX0VOQUJMRSk7CiAJfSBlbHNlIHsK
LS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
