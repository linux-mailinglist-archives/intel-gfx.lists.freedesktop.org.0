Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 887593504C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 21:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCD089BD4;
	Tue,  4 Jun 2019 19:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7283989BD4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 19:34:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 12:34:59 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2019 12:34:58 -0700
Date: Tue, 4 Jun 2019 12:36:46 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190604193646.GB7353@intel.com>
References: <20190604140214.9947-1-ville.syrjala@linux.intel.com>
 <20190604140214.9947-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604140214.9947-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop pointless WARN_ON
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDU6MDI6MTRQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IGludGVsX2RwX2xpbmtfZG93bigpIGlzIHN0YXRpYyBhbmQgaXQncyBvbmx5IGNh
bGxlZCBmcm9tIHRoZSBwcmUtZGRpCj4gRFAgZnVuY3Rpb25zLCBzbyBoYXZpbmcgYSBXQVJOX09O
KEhBU19EREkpIGluIHRoZXJlIGlzIHF1aXRlIHBvaW50bGVzcy4KPiBSZW1vdmUgaXQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KCkxvb2tzIGdvb2QgdG8gbWUsCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4KCk1hbmFzaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHAuYyB8IDMgLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+IGluZGV4IDY0ZmVmYzlhZjdhNi4uNzY0ZTU0
ZmVmNWVlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gQEAgLTM5OTQsOSArMzk5NCw2
IEBAIGludGVsX2RwX2xpbmtfZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAg
CWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKPiAgCXUzMiBEUCA9IGludGVsX2RwLT5E
UDsKPiAgCj4gLQlpZiAoV0FSTl9PTihIQVNfRERJKGRldl9wcml2KSkpCj4gLQkJcmV0dXJuOwo+
IC0KPiAgCWlmIChXQVJOX09OKChJOTE1X1JFQUQoaW50ZWxfZHAtPm91dHB1dF9yZWcpICYgRFBf
UE9SVF9FTikgPT0gMCkpCj4gIAkJcmV0dXJuOwo+ICAKPiAtLSAKPiAyLjIxLjAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
