Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7203D50515
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 11:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E5C898B7;
	Mon, 24 Jun 2019 09:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DA2898B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 09:04:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 02:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,411,1557212400"; d="scan'208";a="359499870"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2019 02:04:00 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 421A55C0407; Mon, 24 Jun 2019 12:03:48 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190624054315.18910-1-chris@chris-wilson.co.uk>
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
Date: Mon, 24 Jun 2019 12:03:48 +0300
Message-ID: <87mui75p8r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/execlists: Always clear
 ring_pause if we do not submit
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gdGhl
IHVubGlrZWx5IGNhc2UgKHRoYW5rIHlvdSBDSSEpLCB3ZSBtYXkgZmluZCBvdXJzZWx2ZXMgd2Fu
dGluZyB0bwo+IGlzc3VlIGEgcHJlZW1wdGlvbiBidXQgaGF2aW5nIG5vIHJ1bm5hYmxlIHJlcXVl
c3RzIGxlZnQuIEluIHRoaXMgY2FzZSwKPiB3ZSBzZXQgdGhlIHNlbWFwaG9yZSBiZWZvcmUgY29t
cHV0aW5nIHRoZSBwcmVlbXB0aW9uIGFuZCBzbyBtdXN0IHVuc2V0Cj4gaXQgYmVmb3JlIGZvcmdl
dHRpbmcgKG9yIGVsc2Ugd2UgbGVhdmUgdGhlIG1hY2hpbmUgYnVzeXdhaXRpbmcgdW50aWwgdGhl
Cj4gbmV4dCByZXF1ZXN0IGNvbWVzIGFsb25nIGFuZCBzbyBsaWtlbHkgaGFuZykuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA5ICsrKysrKysrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGM4YTBjOWIzMjc2NC4uZWZjY2MzMTg4N2Rl
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMjMzLDEzICsyMzMs
MTggQEAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfaHdzX3ByZWVtcHRfYWRkcmVzcyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIHN0YXRpYyBpbmxpbmUgdm9pZAo+ICByaW5nX3Nl
dF9wYXVzZWQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgc3RhdGUp
Cj4gIHsKPiArCXUzMiAqc2VtYSA9ICZlbmdpbmUtPnN0YXR1c19wYWdlLmFkZHJbSTkxNV9HRU1f
SFdTX1BSRUVNUFRdOwo+ICsKPiArCWlmICgqc2VtYSA9PSBzdGF0ZSkKPiArCQlyZXR1cm47Cj4g
KwoKU28geW91IHdhbnQgdG8gYXZvaWQgdXNlbGVzcyB3bWIsIGFzIEkgZG9uJ3Qgc2VlIG90aGVy
CmJlbmVmaXQuIE1ha2VzIHRoaXMgbG9vayBzdXNwaWNpb3VzbHkgcmFjeSBidXQgc2VlbXMKdG8g
YmUganVzdCBteSB1c3VhbCBwYXJhbm9pYS4KCgo+ICAJLyoKPiAgCSAqIFdlIGluc3BlY3QgSFdT
X1BSRUVNUFQgd2l0aCBhIHNlbWFwaG9yZSBpbnNpZGUKPiAgCSAqIGVuZ2luZS0+ZW1pdF9maW5p
X2JyZWFkY3J1bWIuIElmIHRoZSBkd29yZCBpcyB0cnVlLAo+ICAJICogdGhlIHJpbmcgaXMgcGF1
c2VkIGFzIHRoZSBzZW1hcGhvcmUgd2lsbCBidXN5d2FpdAo+ICAJICogdW50aWwgdGhlIGR3b3Jk
IGlzIGZhbHNlLgo+ICAJICovCj4gLQllbmdpbmUtPnN0YXR1c19wYWdlLmFkZHJbSTkxNV9HRU1f
SFdTX1BSRUVNUFRdID0gc3RhdGU7Cj4gKwkqc2VtYSA9IHN0YXRlOwo+ICAJd21iKCk7Cj4gIH0K
PiAgCj4gQEAgLTEyNDMsNiArMTI0OCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVl
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCQkqcG9ydCA9IGV4ZWNsaXN0c19z
Y2hlZHVsZV9pbihsYXN0LCBwb3J0IC0gZXhlY2xpc3RzLT5wZW5kaW5nKTsKPiAgCQltZW1zZXQo
cG9ydCArIDEsIDAsIChsYXN0X3BvcnQgLSBwb3J0KSAqIHNpemVvZigqcG9ydCkpOwo+ICAJCWV4
ZWNsaXN0c19zdWJtaXRfcG9ydHMoZW5naW5lKTsKPiArCX0gZWxzZSB7Cj4gKwkJcmluZ19zZXRf
cGF1c2VkKGVuZ2luZSwgMCk7CgpUaGlzIGxvb2tzIGxpa2UgYSByaWdodCB0aGluZyB0byBkby4g
QnV0IHdoeSBkaWQgd2UgZW5kIHVwCmZpZ3VyaW5nIHRoaW5ncyBvdXQgd3JvbmcgaW4gbmVlZF9w
cmVlbXB0KCk/CgpPbmUgd291bGQgdGhpbmsgdGhhdCBpZiB0aGVyZSB3ZXJlIG5vdGhpbmcgdG8g
cHJlZW1wdCBpbnRvLAp3ZSB3b3VsZCBuZXZlciBzZXQgdGhlIHBhdXNlIGluIHRoZSBmaXJzdCBw
bGFjZS4KCkFsc28gdGhlIHByZWVtcHQgdG8gaWRsZSBjeWNsZSBtZW50aW9uIGluIGVmZmVjdGl2
ZV9wcmlvKCkKc2VlbXMgdG8gYmUgb2ZmLiBDb3VsZCBiZSB0aGF0IHNvbWVvbmUgZm9yZ290IHRv
CnBvaW50IHRoYXQgb3V0IHdoZW4gaGUgZGlkIHJldmlldyBwcmVlbXB0LXRvLWJ1c3kuCgotTWlr
YQoKPiAgCX0KPiAgfQo+ICAKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
