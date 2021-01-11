Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AF62F1B2F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1297289AF3;
	Mon, 11 Jan 2021 16:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F6A89AF3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:41:18 +0000 (UTC)
IronPort-SDR: rsp2j7BdS67geykSMp3zecXlfj9KUhowP2/iWdiSAf3m+camdFqMY17xRCw50gPR7Hr1YcXfTZ
 APAuxO5SbFaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="241965281"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="241965281"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:41:14 -0800
IronPort-SDR: 7JhTK6AskMPFRF+2hng+5WWDWKgJajgHlHa325R8pbo060ZpPurHufA90VtBDHoOGF9rp22I67
 9i8xHwh92MSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="381068973"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 11 Jan 2021 08:41:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Jan 2021 18:41:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 18:41:11 +0200
Message-Id: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only enable DFP 4:4:4->4:2:0
 conversion when outputting YCbCr 4:4:4
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
dCdzIG5vdCBlbmFibGUgdGhlIDQ6NDo0LT40OjI6MCBjb252ZXJzaW9uIGJpdCBpbiB0aGUgREZQ
IHVubGVzcyB3ZSdyZQphY3R1YWxseSBvdXRwdXR0aW5nIFlDYkNyIDQ6NDo0LiBJdCB3b3VsZCBh
cHBlYXIgc29tZSBwcm90b2NvbApjb252ZXJ0ZXJzIGJsaW5keSBjb25zdWx0IHRoaXMgYml0IGV2
ZW4gd2hlbiB0aGUgc291cmNlIGlzIG91dHB1dHRpbmcKUkdCLCByZXN1bHRpbmcgaW4gYSB2aXN1
YWwgbWVzcy4KCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC8tL2lzc3Vlcy8yOTE0ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA0
ZjE5MGE4MmQ0YWQuLmFhMzBlZjlmNjkwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwpAQCAtNDM2OCw4ICs0MzY4LDggQEAgdm9pZCBpbnRlbF9kcF9jb25maWd1cmVf
cHJvdG9jb2xfY29udmVydGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCWRybV9kYmdf
a21zKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gc2V0IHByb3RvY29sIGNvbnZlcnRlciBIRE1JIG1v
ZGUgdG8gJXNcbiIsCiAJCQkgICAgZW5hYmxlZGRpc2FibGVkKGludGVsX2RwLT5oYXNfaGRtaV9z
aW5rKSk7CiAKLQl0bXAgPSBpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0NF90b180MjAgPwotCQlEUF9D
T05WRVJTSU9OX1RPX1lDQkNSNDIwX0VOQUJMRSA6IDA7CisJdG1wID0gY3J0Y19zdGF0ZS0+b3V0
cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDQ0ICYmCisJCWludGVsX2Rw
LT5kZnAueWNiY3JfNDQ0X3RvXzQyMCA/IERQX0NPTlZFUlNJT05fVE9fWUNCQ1I0MjBfRU5BQkxF
IDogMDsKIAogCWlmIChkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsCiAJCQkgICAg
ICAgRFBfUFJPVE9DT0xfQ09OVkVSVEVSX0NPTlRST0xfMSwgdG1wKSAhPSAxKQotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
