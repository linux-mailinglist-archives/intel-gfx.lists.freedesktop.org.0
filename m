Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E54268F84
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 17:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCBC6E4CA;
	Mon, 14 Sep 2020 15:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8C06E4CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:20:17 +0000 (UTC)
IronPort-SDR: s5g2dwhqmy3AWwL9CsMGTwHfi19jtUxrwMkIK3suylUI2QY0Ba6GsPMk4O3jY4BlDQFU90kYWJ
 wq6Gxgbqcvxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158376759"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="158376759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:20:14 -0700
IronPort-SDR: c8wI/0qb+AhHm+dPYqWmueLJj3gPFjd0jS7hGdABkFy4XJSkliOBPL0uFcBhnZL8JpA7FbUAr2
 u9TPQVuUI1+w==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="482376849"
Received: from akeogh1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.27.129])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:20:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200914134413.GL6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
 <20200206201204.31704-2-ville.syrjala@linux.intel.com>
 <87d02syyf5.fsf@intel.com> <20200914134413.GL6112@intel.com>
Date: Mon, 14 Sep 2020 18:20:17 +0300
Message-ID: <87sgbkxu4u.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use fb->format->is_yuv for
 the g4x+ sprite RGB vs. YUV check
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNCBTZXAgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBTZXAgMTEsIDIwMjAgYXQgMDk6MTM6MThQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFRodSwgMDYgRmViIDIwMjAsIFZpbGxlIFN5
cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPj4gPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+Cj4+ID4g
ZzR4KyBzcHJpdGVzIGhhdmUgYW4gZXh0cmEgY2RjbGsgbGltaXRhdGlvbiBsaXN0ZWQgZm9yIFJH
QiBmb3JtYXRzLgo+PiA+IEZvciBzb21lIHJhbmRvbSByZWFzb24gSSBjaG9zZSB0byB1c2UgY3Bw
Pj00IGFzIHRoZSBjaGVjayBmb3IgdGhhdC4KPj4gPiBXaGlsZSB0aGF0IGRvZXMgYWN0dWFsbHkg
d29yayBsZXQncyBkZW9iZnVzY2F0ZSBpdCBieSBjaGVja2luZwo+PiA+IGZvciAhaXNfeXV2IGlu
c3RlYWQuIEkgc3VzcGVjdCBpc195dXYgZGlkbid0IGV4aXN0IHdheSBiYWNrIHdoZW4KPj4gPiBJ
IG9yaWdpbmFsbHkgd3JpdGUgdGhlIGNvZGUuCj4+IAo+PiBNbWgsIHRoZXJlIGFyZSBmb3JtYXRz
IHdpdGggY3BwID49IDQgJiYgaXNfeXV2ID09IHRydWUgbWFraW5nIHRoaXMgbG9vawo+PiBsaWtl
IGEgZnVuY3Rpb25hbCBjaGFuZ2UuLi4gYnV0IEkgcHJlc3VtZSB0aG9zZSBhcmUgbm90IHJlbGV2
YW50IGFuZC9vcgo+PiB0aGlzIGNoYW5nZSBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gYW55d2F5
Lgo+Cj4gVGhpcyBvbmx5IGFwcGxpZXMgdG8gZzR4L2lsay9zbmIgd2hpY2ggb25seSBzdXBwb3J0
Cj4gWVVZVi9ldGMuIChjcHA9PTIpLCBhbmQgMzIvNjRicHAgUkdCIChjcHA9PTQvOCkuCgpBY2su
Cgo+Cj4+IAo+PiBBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
Pj4gCj4+ID4KPj4gPiBBbHNvIGRyb3AgdGhlIGR1cGxpY2F0ZSBjb21tZW50Lgo+PiA+Cj4+ID4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYyB8IDQgKystLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jCj4+ID4gaW5kZXggNmUyZTIyZDliYmFhLi5mOTVmZTJjOTk0NjggMTAwNjQ0
Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPj4g
PiBAQCAtMTYyNCw4ICsxNjI0LDggQEAgc3RhdGljIGludCBnNHhfc3ByaXRlX21pbl9jZGNsayhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPj4gPiAgCWxpbWl0IC09
IGRlY2ltYXRlOwo+PiA+ICAKPj4gPiAgCS8qIC0xMCUgZm9yIFJHQiAqLwo+PiA+IC0JaWYgKGZi
LT5mb3JtYXQtPmNwcFswXSA+PSA0KQo+PiA+IC0JCWxpbWl0LS07IC8qIC0xMCUgZm9yIFJHQiAq
Lwo+PiA+ICsJaWYgKCFmYi0+Zm9ybWF0LT5pc195dXYpCj4+ID4gKwkJbGltaXQtLTsKPj4gPiAg
Cj4+ID4gIAkvKgo+PiA+ICAJICogV2Ugc2hvdWxkIGFsc28gZG8gLTEwJSBpZiBzcHJpdGUgc2Nh
bGluZyBpcyBlbmFibGVkCj4+IAo+PiAtLSAKPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
