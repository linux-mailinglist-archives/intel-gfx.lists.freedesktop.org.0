Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAA4294D45
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5416EACC;
	Wed, 21 Oct 2020 13:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758C46EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:14:48 +0000 (UTC)
IronPort-SDR: 7327eypvl88zAGWjBIcNX4x7h2c9sqz720t01PEKkb0eyLrXdADSRHNdbIMGrah5CMCg2qzY3B
 /rzefk6qettA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="147220836"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="147220836"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:14:46 -0700
IronPort-SDR: BHJ7erK/zo8E+rVN8E8rEFoOTgjfX1Z1AYb4BbHXX8A2/YVpRpKCLZUnoS0V5UYcLpcNhozz85
 uE4N4Gq8wHxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="321009626"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 21 Oct 2020 06:14:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 16:14:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 16:14:39 +0300
Message-Id: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Restore ILK-M RPS support
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
c3RvcmUgUlBTIGZvciBJTEstTS4gV2UgbG9zdCBpdCB3aGVuIGFuIGV4dHJhIEhBU19SUFMoKQpj
aGVjayBhcHBlYXJlZCBpbiBpbnRlbF9ycHNfZW5hYmxlKCkuCgpVbmZvcnR1bmFsdGV5IHRoaXMg
anVzdCBtYWtlcyB0aGUgcGVyZm9ybWFuY2Ugd29yc2Ugb24gbXkKSUxLIGJlY2F1c2UgaW50ZWxf
aXBzIGluc2lzdHMgb24gbGltaXRpbmcgdGhlIEdQVSBmcmVxIHRvCnRoZSBtaW5pbXVtLiBJZiB3
ZSBkb24ndCBkbyB0aGUgUlBTIGluaXQgdGhlbiBpbnRlbF9pcHMgd2lsbApub3QgbGltaXQgdGhl
IGZyZXF1ZW5jeSBmb3Igd2hhdGV2ZXIgcmVhc29uLiBFaXRoZXIgaXQgY2FuJ3QKZ2V0IGF0IHNv
bWUgcmVxdWlyZWQgaW5mb3JtYXRpb24gYW5kIHRodXMgbWFrZXMgd3JvbmcgZGVjaXNpb25zLApv
ciB3ZSBtZXNzIHVwIHNvbWUgd2VpZ2h0cy9ldGMuIGFuZCBjYXVzZSBpdCB0byBtYWtlIHRoZSB3
cm9uZwpkZWNpc2lvbnMgd2hlbiBSUFMgaW5pdCBoYXMgYmVlbiBkb25lLCBvciB0aGUgZW50aXJl
IHRoaW5nIGlzCmp1c3Qgd3JvbmcuIFdvdWxkIHJlcXVpcmUgYSBidW5jaCBvZiByZXZlcnNlIGVu
Z2luZWVyaW5nIHRvCmZpZ3VyZSBvdXQgd2hhdCdzIGdvaW5nIG9uLgoKQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpG
aXhlczogOWM4Nzg1NTdiMWViICgiZHJtL2k5MTUvZ3Q6IFVzZSB0aGUgUlBNIGNvbmZpZyByZWdp
c3RlciB0byBkZXRlcm1pbmUgY2xrIGZyZXF1ZW5jaWVzIikKU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCAyNzk2NGFjMDYzOGEuLjFmZTM5MDcyN2Q4
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC0zODksNiArMzg5LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbGtfbV9pbmZvID0gewogCUdFTjVfRkVBVFVS
RVMsCiAJUExBVEZPUk0oSU5URUxfSVJPTkxBS0UpLAogCS5pc19tb2JpbGUgPSAxLAorCS5oYXNf
cnBzID0gdHJ1ZSwKIAkuZGlzcGxheS5oYXNfZmJjID0gMSwKIH07CiAKLS0gCjIuMjYuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
