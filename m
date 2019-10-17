Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 175AFDA5E4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B49306E450;
	Thu, 17 Oct 2019 07:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9F56E450
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:02:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="397425774"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 00:02:29 -0700
Date: Thu, 17 Oct 2019 12:32:35 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191017070235.GB4730@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
 <20191010145127.7487-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010145127.7487-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Remove dead weight from
 hdcp2_msg_timeout[]
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

T24gMjAxOS0xMC0xMCBhdCAxNzo1MToyNSArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IFRoZSAucmVhZF8yXzIoKSBob29rcyBpcyBuZXZlciBjYWxsZWQgZm9yIGFueSBvZiB0aGUgbWVz
c2FnZQo+IHR5cGVzIHdpdGggYSB6ZXJvIHRpbWVvdXQuIFNvIGl0J3MgYWxsIGp1c3QgZGVhZCB3
ZWlnaHQgd2hpY2gKPiB3ZSBjYW4gY2h1Y2suCj4gCj4gICAgIHRleHQJICAgZGF0YQkgICAgYnNz
CSAgICBkZWMJICAgIGhleAlmaWxlbmFtZQo+IC0gIDM0NzAxCSAgICAzNjAJICAgICAgMAkgIDM1
MDYxCSAgIDg4ZjUJaW50ZWxfaGRtaS5vCj4gKyAgMzQ2MzMJICAgIDM2MAkgICAgICAwCSAgMzQ5
OTMJICAgODhiMQlpbnRlbF9oZG1pLm8KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKVGltZW91dCBpcyBhZGRlZCBmb3Ig
c3VwcG9ydGluZyBtc2dzIHJlYWQuIFRoZXNlIG1zZ3Mgd2l0aCAwIHRpbWVvdXQKYXJlIG9ubHkg
d3JpdHRlbi4gSGVuY2UgY2FuIGJlIHJlbW92ZWQgZnJvbSB0aGUgdGltZW91dCB0YWJsZS4KClJl
dml3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8IHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDcgLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGluZGV4IDEzYzU4OGFlODhhNC4uOGE1NzRiZTg2YmM2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAt
MTUzNCwxOSArMTUzNCwxMiBAQCBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfdGltZW91dCB7Cj4gIH07
Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGhkY3AyX2hkbWlfbXNnX3RpbWVvdXQgaGRjcDJf
bXNnX3RpbWVvdXRbXSA9IHsKPiAtCXsgSERDUF8yXzJfQUtFX0lOSVQsIDAsIDAgfSwKPiAgCXsg
SERDUF8yXzJfQUtFX1NFTkRfQ0VSVCwgSERDUF8yXzJfQ0VSVF9USU1FT1VUX01TLCAwIH0sCj4g
LQl7IEhEQ1BfMl8yX0FLRV9OT19TVE9SRURfS00sIDAsIDAgfSwKPiAtCXsgSERDUF8yXzJfQUtF
X1NUT1JFRF9LTSwgMCwgMCB9LAo+ICAJeyBIRENQXzJfMl9BS0VfU0VORF9IUFJJTUUsIEhEQ1Bf
Ml8yX0hQUklNRV9QQUlSRURfVElNRU9VVF9NUywKPiAgCSAgSERDUF8yXzJfSFBSSU1FX05PX1BB
SVJFRF9USU1FT1VUX01TIH0sCj4gIAl7IEhEQ1BfMl8yX0FLRV9TRU5EX1BBSVJJTkdfSU5GTywg
SERDUF8yXzJfUEFJUklOR19USU1FT1VUX01TLCAwIH0sCj4gLQl7IEhEQ1BfMl8yX0xDX0lOSVQs
IDAsIDAgfSwKPiAgCXsgSERDUF8yXzJfTENfU0VORF9MUFJJTUUsIEhEQ1BfMl8yX0hETUlfTFBS
SU1FX1RJTUVPVVRfTVMsIDAgfSwKPiAtCXsgSERDUF8yXzJfU0tFX1NFTkRfRUtTLCAwLCAwIH0s
Cj4gIAl7IEhEQ1BfMl8yX1JFUF9TRU5EX1JFQ1ZJRF9MSVNULCBIRENQXzJfMl9SRUNWSURfTElT
VF9USU1FT1VUX01TLCAwIH0sCj4gLQl7IEhEQ1BfMl8yX1JFUF9TRU5EX0FDSywgMCwgMCB9LAo+
IC0JeyBIRENQXzJfMl9SRVBfU1RSRUFNX01BTkFHRSwgMCwgMCB9LAo+ICAJeyBIRENQXzJfMl9S
RVBfU1RSRUFNX1JFQURZLCBIRENQXzJfMl9TVFJFQU1fUkVBRFlfVElNRU9VVF9NUywgMCB9LAo+
ICB9Owo+ICAKPiAtLSAKPiAyLjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
