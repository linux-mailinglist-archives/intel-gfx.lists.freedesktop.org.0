Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB1410A4A8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 20:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25096E1B5;
	Tue, 26 Nov 2019 19:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 336F66E1B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 19:41:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211517049"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 26 Nov 2019 11:41:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Nov 2019 21:41:52 +0200
Date: Tue, 26 Nov 2019 21:41:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191126194152.GF1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123005459.155383-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: Check the old state
 to find port sync slave
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

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6NTQ6NTRQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBJZiB0aGUgQ1JUQyBpcyBnb2luZyBmcm9tIGVuYWJsZWQgdG8gZGlz
YWJsZWQgYW5kIGl0IGlzIGEgcG9ydCBzeW5jCj4gc2xhdmUsIGl0IG5lZWRzIHRvIGNoZWNrIHRv
IHRoZSBvbGQgc3RhdGUgdG8gYmUgZGlzYWJsZWQgYmVmb3JlIHRoZQo+IHBvcnQgc3luYyBtYXN0
ZXIuCj4gCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4g
Q2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCAxYjFm
YmI2ZDhhY2MuLjgwMWI5NzVjN2QzOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE0NDYwLDkgKzE0NDYwLDkgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpCj4gIAkJICogc2xhdmUgQ1JUQ3MgYXJlIGRpc2FibGVkIGZpcnN0IGFuZCB0aGVu
IG1hc3RlciBDUlRDIHNpbmNlCj4gIAkJICogU2xhdmUgdmJsYW5rcyBhcmUgbWFza2VkIHRpbGwg
TWFzdGVyIFZibGFua3MuCj4gIAkJICovCj4gLQkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfbW9k
ZShuZXdfY3J0Y19zdGF0ZSkpCj4gKwkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfbW9kZShvbGRf
Y3J0Y19zdGF0ZSkpCj4gIAkJCWNvbnRpbnVlOwo+IC0JCWlmIChpc190cmFuc19wb3J0X3N5bmNf
bWFzdGVyKG5ld19jcnRjX3N0YXRlKSkKPiArCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21hc3Rl
cihvbGRfY3J0Y19zdGF0ZSkpCj4gIAkJCWNvbnRpbnVlOwoKTWF5YmUgdGhpcyBzaG91bGQgYmUg
cGF0Y2ggMT8KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgoKPiAgCj4gIAkJaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShvbGRfY3J0Y19z
dGF0ZSwgbmV3X2NydGNfc3RhdGUpOwo+IC0tIAo+IDIuMjQuMAoKLS0gClZpbGxlIFN5cmrDpGzD
pApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
