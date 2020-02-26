Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2AB170650
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 18:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC75B6EB45;
	Wed, 26 Feb 2020 17:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6A96EB45
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 17:40:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 09:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,488,1574150400"; d="scan'208";a="241744943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 26 Feb 2020 09:40:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2020 19:40:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 19:40:37 +0200
Message-Id: <20200226174038.8391-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200226174038.8391-1-ville.syrjala@linux.intel.com>
References: <20200226174038.8391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Document our lackluster FSB
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
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBlYjMyMGIyY2Q5ZjQu
LmE3MWU2NTMxMmJhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwpAQCAtMjY4Miw3ICsyNjgyLDE2IEBAIHN0YXRpYyBpbnQgZzR4X2hyYXdjbGsoc3RydWN0
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
IG9mIHRoZSB2YWx1ZXMgKi8KLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
