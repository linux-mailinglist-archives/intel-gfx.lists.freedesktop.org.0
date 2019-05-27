Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03C2B9A0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 19:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC6F893A7;
	Mon, 27 May 2019 17:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FFF893A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 17:56:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 10:56:01 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 27 May 2019 10:55:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 May 2019 20:55:58 +0300
Date: Mon, 27 May 2019 20:55:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190527175558.GJ5942@intel.com>
References: <20190521164025.30225-2-ville.syrjala@linux.intel.com>
 <20190524153614.32410-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524153614.32410-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915: Make sure we have enough
 memory bandwidth on ICL
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

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMDY6MzY6MTRQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IElDTCBoYXMgc28gbWFueSBwbGFuZXMgdGhhdCBpdCBjYW4gZWFzaWx5IGV4Y2Vl
ZCB0aGUgbWF4aW11bQo+IGVmZmVjdGl2ZSBtZW1vcnkgYmFuZHdpZHRoIG9mIHRoZSBzeXN0ZW0u
IFdlIG11c3QgdGhlcmVmb3JlIGNoZWNrCj4gdGhhdCB3ZSBkb24ndCBleGNlZWQgdGhhdCBsaW1p
dC4KPiAKPiBUaGUgYWxnb3JpdGhtIGlzIHZlcnkgbWFnaWMgbnVtYmVyIGhlYXZ5IGFuZCBsYWNr
cyBzdWZmaWNpZW50Cj4gZXhwbGFuYXRpb24gZm9yIG5vdy4gV2UgYWxzbyBoYXZlIG5vIHNhbmUg
d2F5IHRvIHF1ZXJ5IHRoZQo+IG1lbW9yeSBjbG9jayBhbmQgdGltaW5ncywgc28gd2UgbXVzdCBy
ZWx5IG9uIGEgY29tYmluYXRpb24gb2YKPiByYXcgcmVhZG91dCBmcm9tIHRoZSBtZW1vcnkgY29u
dHJvbGxlciBhbmQgaGFyZGNvZGVkIGFzc3VtcHRpb25zLgo+IFRoZSBtZW1vcnkgY29udHJvbGxl
ciB2YWx1ZXMgb2J2aW91c2x5IGNoYW5nZSBhcyB0aGUgc3lzdGVtCj4ganVtcHMgYmV0d2VlbiB0
aGUgZGlmZmVyZW50IFNBR1YgcG9pbnRzLCBzbyB3ZSB0cnkgdG8gc3RhYmlsaXplCj4gaXQgZmly
c3QgYnkgZGlzYWJsaW5nIFNBR1YgZm9yIHRoZSBkdXJhdGlvbiBvZiB0aGUgcmVhZG91dC4KPiAK
PiBUaGUgdXRpbGl6ZWQgYmFuZHdpZHRoIGlzIHRyYWNrZWQgdmlhIGEgZGV2aWNlIHdpZGUgYXRv
bWljCj4gcHJpdmF0ZSBvYmplY3QuIFRoYXQgaXMgYWN0dWFsbHkgbm90IHJvYnVzdCBiZWNhdXNl
IHdlIGNhbid0Cj4gYWZmb3JkIHRvIGVuZm9yY2Ugc3RyaWN0IGdsb2JhbCBvcmRlcmluZyBiZXR3
ZWVuIHRoZSBwaXBlcy4KPiBUaHVzIEkgdGhpbmsgSSdsbCBuZWVkIHRvIGNoYW5nZSB0aGlzIHRv
IHNpbXBseSBjaG9wIHVwIHRoZQo+IGF2YWlsYWJsZSBiYW5kd2lkdGggYmV0d2VlbiBhbGwgdGhl
IGFjdGl2ZSBwaXBlcy4gRWFjaCBwaXBlCj4gY2FuIHRoZW4gZG8gd2hhdGV2ZXIgaXQgd2FudHMg
YXMgbG9uZyBhcyBpdCBkb2Vzbid0IGV4Y2VlZAo+IGl0cyBidWRnZXQuIFRoYXQgc2NoZW1lIHdp
bGwgYWxzbyByZXF1aXJlIHRoYXQgd2UgYXNzdW1lIHRoYXQKPiBhbnkgbnVtYmVyIG9mIHBsYW5l
cyBjb3VsZCBiZSBhY3RpdmUgYXQgYW55IHRpbWUuCj4gCj4gVE9ETzogbWFrZSBpdCByb2J1c3Qg
YW5kIGRlYWwgd2l0aCBhbGwgdGhlIG9wZW4gcXVlc3Rpb25zCj4gCj4gdjI6IFNsZWVwIGxvbmdl
ciBhZnRlciBkaXNhYmxpbmcgU0FHVgo+IHYzOiBQb2xsIGZvciB0aGUgZGNsayB0byBnZXQgcmFp
c2VkIChzZWVuIGl0IHRha2UgMjUwbXMhKQo+ICAgICBJZiB0aGUgc3lzdGVtIGhhcyAyMTMzTVQv
cyBtZW1vcnkgdGhlbiB3ZSBwb2ludGxlc3NseQo+ICAgICB3YWl0IG9uZSBmdWxsIHNlY29uZCA6
KAo+IHY0OiBVc2UgdGhlIG5ldyBwY29kZSBpbnRlcmZhY2UgdG8gZ2V0IHRoZSBxZ3YgcG9pbnRz
IHJhdGhlcgo+ICAgICB0aGF0IHVzaW5nIGhhcmRjb2RlZCBudW1iZXJzCj4gdjU6IE1vdmUgdGhl
IHBjb2RlIHN0dWZmIGludG8gaW50ZWxfYncuYyAoTWF0dCkKPiAgICAgcy9pbnRlbF9zYWd2X2lu
Zm8vaW50ZWxfcWd2X2luZm8vCj4gICAgIERvIHRoZSBOVjEyL1AwMTAgYXMgcGVyIHNwZWMgZm9y
IG5vdyAoTWF0dCkKPiAgICAgcy9JU19JQ0VMQUtFL0lTX0dFTjExLwo+IHY2OiBJZ25vcmUgYmFu
ZHdpZHRoIGxpbWl0cyBpZiB0aGUgcGNvZGUgcXVlcnkgZmFpbHMKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFJldmll
d2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IEFja2VkLWJ5
OiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgoKU2VyaWVzIHB1c2hl
ZCB0byBkaW5xLiBUaGFua3MgZm9yIHRoZSByZXZpZXdzLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
