Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5A81D2FEC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180786EB32;
	Thu, 14 May 2020 12:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3697E6EB32
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 12:38:45 +0000 (UTC)
IronPort-SDR: T7Q8usbHLdvULBMvGJJgY1CouXOG2hgziv7gCCn5D5Lk7T6sCTyvgvPX9l7lY6pfzOXQwyBomJ
 M4vtFQF1URhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 05:38:44 -0700
IronPort-SDR: p/MhGKW2V8xltSce/h0FyaCa91XiJyVkpA9X33QlSqimdzkCEcw/SRV8HIYf8RumDVhy/NDXrg
 UkOyjlGZOOjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="252067962"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 14 May 2020 05:38:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 May 2020 15:38:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 15:38:37 +0300
Message-Id: <20200514123838.3017-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
References: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Document our lackluster FSB
 frequency readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
Y3VtZW50IHRoZSBmYWN0IHRoYXQgd2UgYXJlbid0IHJlYWRpbmcgb3V0IHRoZSBhY3R1YWwgRlNC
CmZyZXF1ZW5jeSBidXQgcmF0aGVyIGp1c3QgdGhlIHN0YXRlIG9mIHRoZSBGU0Igc3RyYXBzLgpT
b21lIEJJT1NlbiBhbGxvdyB5b3UgdG8gY29uZmlndXJlIHRoZSB0d28gaW5kZXBlbmRlbnRseS4K
U28gaWYgc29tZW9uZSBzZXRzIHRoZSB0d28gdXAgaW4gYW4gaW5jb25zaXN0ZW50IG1hbm5lcgp3
ZSdsbCBnZXQgdGhlIHdyb25nIGFuc3dlciBoZXJlIGFuZCB0aHVzIHdpbGwgZW5kIHVwIHdpdGgK
aW5jb3JyZWN0IGF1eC9wcHMgY2xvY2sgZGl2aWRlcnMuIEFsYXMsIHByb3BlciBkb2NzIGFyZSBu
bwpsb25nZXIgYXJvdW5kIHNvIHdlIGNhbid0IGRvIGFueSBiZXR0ZXIuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDExICsrKysrKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBjMTdjZjYxMTYyNWMu
LmQ1N2RmZWM3ZTlhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwpAQCAtMjcwNCw3ICsyNzA0LDE2IEBAIHN0YXRpYyBpbnQgZzR4X2hyYXdjbGsoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXUzMiBjbGtjZmc7CiAKLQkvKiBocmF3
Y2xvY2sgaXMgMS80IHRoZSBGU0IgZnJlcXVlbmN5ICovCisJLyoKKwkgKiBocmF3Y2xvY2sgaXMg
MS80IHRoZSBGU0IgZnJlcXVlbmN5CisJICoKKwkgKiBOb3RlIHRoYXQgdGhpcyBvbmx5IHJlYWRz
IHRoZSBzdGF0ZSBvZiB0aGUgRlNCCisJICogc3RyYXBzLCBub3QgdGhlIGFjdHVhbCBGU0IgZnJl
cXVlbmN5LiBTb21lIEJJT1NlbgorCSAqIGxldCB5b3UgY29uZmlndXJlIGVhY2ggaW5kZXBlbmRl
bnRseS4gSWRlYWxseSB3ZSdkCisJICogcmVhZCBvdXQgdGhlIGFjdHVhbCBGU0IgZnJlcXVlbmN5
IGJ1dCBzYWRseSB3ZQorCSAqIGRvbid0IGtub3cgd2hpY2ggcmVnaXN0ZXJzIGhhdmUgdGhhdCBp
bmZvcm1hdGlvbiwKKwkgKiBhbmQgYWxsIHRoZSByZWxldmFudCBkb2NzIGhhdmUgZ29uZSB0byBi
aXQgaGVhdmVuIDooCisJICovCiAJY2xrY2ZnID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgQ0xL
Q0ZHKSAmIENMS0NGR19GU0JfTUFTSzsKIAogCS8qIEVMSyBzZWVtcyB0byByZWRlZmluZSBzb21l
IG9mIHRoZSB2YWx1ZXMgKi8KLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
