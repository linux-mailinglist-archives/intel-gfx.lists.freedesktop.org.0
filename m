Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719481655B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 16:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14C96E7DD;
	Tue,  7 May 2019 14:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8706E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 14:06:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 07:06:49 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 07 May 2019 07:06:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2019 17:06:46 +0300
Date: Tue, 7 May 2019 17:06:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190507140646.GO24299@intel.com>
References: <20190507130257.22837-1-shashank.sharma@intel.com>
 <20190507130257.22837-2-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507130257.22837-2-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
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

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDY6MzI6NTdQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IEZyb206IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gCj4g
Q3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZlcnNpb24gaGFuZGxlcyBv
bmx5Cj4gQlQ2MDEgYW5kIEJ0NzA5LiBFeHRlbmRpbmcgaXQgdG8gc3VwcG9ydCBCVDIwMjAgYXMg
d2VsbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgfCAy
NCArKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+IGluZGV4IDQ0YWFlYWMx
YjJlZC4uMjUzNmU3NTdiZWMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3Nwcml0ZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMK
PiBAQCAtNDMzLDYgKzQzMywxOCBAQCBpY2xfcHJvZ3JhbV9pbnB1dF9jc2Moc3RydWN0IGludGVs
X3BsYW5lICpwbGFuZSwKPiAgCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJGOCwKPiAgCQkJMHgwLCAw
eDc4MDAsICAweDdFRDgsCj4gIAkJfSwKPiArCQkvKgo+ICsJCSAqIEJULjIwMjAgZnVsbCByYW5n
ZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgo+ICsJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMg
Ogo+ICsJCSAqIFsxLjAwMCwgMC4wMDAsIDEuNDc0LAo+ICsJCSAqICAxLjAwMCwgLTAuMTY0NSwg
LTAuNTcxMywKPiArCQkgKiAgMS4wMDAsIDEuODgxNCwgMC4wMDAwXQo+ICsJCSAqLwo+ICsJCVtE
Uk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsKPiArCQkJMHg3QkM4LCAweDc4MDAsIDB4MCwKPiAr
CQkJMHg4OTI4LCAweDc4MDAsIDB4QUE4OCwKPiArCQkJMHgwLCAweDc4MDAsIDB4N0YxMCwKPiAr
CQl9LAo+ICAJfTsKPiAgCj4gIAkvKiBNYXRyaXggZm9yIExpbWl0ZWQgUmFuZ2UgdG8gRnVsbCBS
YW5nZSBDb252ZXJzaW9uICovCj4gQEAgLTQ2MSw2ICs0NzMsMTggQEAgaWNsX3Byb2dyYW1faW5w
dXRfY3NjKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIAkJCTB4ODg4OCwgMHg3OTE4LCAw
eEFEQTgsCj4gIAkJCTB4MCwgMHg3OTE4LCAgMHg2ODcwLAo+ICAJCX0sCj4gKwkJLyoKPiArCQkg
KiBCVC4yMDIwIExpbWl0ZWQgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKPiArCQkgKiBU
aGUgbWF0cml4IHJlcXVpcmVkIGlzIDoKPiArCQkgKiBbMS4xNjQsIDAuMDAwLCAxLjcxNywKPiAr
CQkgKiAgMS4xMzgsIC0wLjE4NzMsIC0wLjY1MDQsCj4gKwkJICogIDEuMTM4MCwgMi4xNDE3LCAw
LjAwMDBdCgpXaGVyZSBhcmUgdGhvc2UgMS4xMzggY29taW5nIGZyb20/Cgo+ICsJCSAqLwo+ICsJ
CVtEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsKPiArCQkJMHg3REMwLCAweDc5NTAsIDB4MCwK
PiArCQkJMHg4QTY4LCAweDc5MTgsIDB4QUMwMCwKPiArCQkJMHgwLCAweDc5MTgsIDB4Njg5MCwK
PiArCQl9LAo+ICAJfTsKPiAgCWNvbnN0IHUxNiAqY3NjOwo+ICAKPiAtLSAKPiAyLjE3LjEKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0t
IApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
