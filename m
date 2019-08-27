Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F49C9E5BC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 12:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E191789A20;
	Tue, 27 Aug 2019 10:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F1589A20
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 10:34:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 03:34:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="197282657"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga001.fm.intel.com with ESMTP; 27 Aug 2019 03:34:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal\, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com>
Date: Tue, 27 Aug 2019 13:34:15 +0300
Message-ID: <87o90a99so.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prune 2560x2880 mode for 5K tiled
 dual DP monitors
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

T24gVHVlLCAyNyBBdWcgMjAxOSwgIk5hdXRpeWFsLCBBbmtpdCBLIiA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+IHdyb3RlOgo+IEZyb206IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRp
eWFsQGludGVsLmNvbT4KPgo+IEN1cnJlbnRseSwgdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIGZl
YXR1cmUgaXMgbm90IGF2YWlsYWJsZSwgZHVlIHRvCj4gd2hpY2ggdGhlIDVLLXRpbGVkIGR1YWwg
RFAgbW9uaXRvcnMgZXhwZXJpZW5jZSBjb3JydXB0aW9uIHdoZW4KPiAyNTYweDI4ODAgbW9kZSBp
cyBhcHBsaWVkIGZvciBib3RoIG9mIHRoZSB0aWxlZCBEUCBjb25uZWN0b3JzLgo+IEJ1Z3ppbGxh
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05NzI0NAo+Cj4g
VGhlcmUgaXMgYSBwYXRjaCBzZXJpZXMgdG8gZW5hYmxlIHRyYW5zY29kZSBwb3J0IHN5bmMgZmVh
dHVyZSBmb3IKPiB0aWxlZCBkaXNwbGF5IGZvciBJQ0wrLCB3aGljaCBpcyB1bmRlciByZXZpZXc6
Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2ludGVsLWdmeC9saXN0Lz9z
ZXJpZXM9MTM3MzM5Cj4KPiBGb3IgdGhlIG9sZGVyIHBsYXRmb3Jtcywgd2UgbmVlZCB0byByZW1v
dmUgdGhlIDI1NjB4Mjg4MCBtb2RlIHRvIGF2b2lkCj4gYSBwb3NzaWJpbGl0eSBvZiB1c2Vyc3Bh
Y2UgY2hvb3NpbmcgMjU2MHgyODgwIG1vZGUgZm9yIGJvdGggdGlsZWQKPiBkaXNwbGF5cywgcmVz
dWx0aW5nIGluIGNvcnJ1cHRpb24uCj4KPiBUaGlzIHBhdGNoIHBydW5lcyAyNTYweDI4ODAgbW9k
ZSBmb3Igb25lIG9mIHRoZSB0aWxlZCBEUCBjb25uZWN0b3IuCj4gU2luY2UgYm90aCB0aGUgdGls
ZWQgRFAgY29ubmVjdG9ycyBoYXZlIGRpZmZlcmVudCB0aWxlX2hfbG9jIGFuZAo+IHRpbGVfdl9s
b2MsIHRoZSB0aWxlZCBjb25uZWN0b3Igd2l0aCB0aWxlX2hfbG9jIGFuZCB0aWxlX3ZfbG9jIGFz
ICcwJywKPiBpcyBjaG9zZW4sIGZvciB3aGljaCB0aGUgZ2l2ZW4gcmVzb2x1dGlvbiBpcyByZW1v
dmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxA
aW50ZWwuY29tPgo+IENDOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMSAr
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDVjNDVhM2IuLmFhNDNhM2Ig
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTU2NCw2
ICs1NjQsMTcgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAo+ICAJaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspCj4gIAkJ
cmV0dXJuIE1PREVfSF9JTExFR0FMOwo+ICAKPiArCS8qCj4gKwkgKiBGb3IgNUsgdGlsZWQgZHVh
bCBEUCBtb25pdG9ycywgZHVhbC1EUCBzeW5jIGlzIG5vdCB5ZXQgc3VwcG9ydGVkLgo+ICsJICog
VGhpcyByZXN1bHRzIGluIGRpc3BsYXkgc3luYyBpc3N1ZXMsIHdoZW4gYm90aCB0aWxlZCBjb25u
ZWN0b3JzIHJ1bgo+ICsJICogb24gMjU2MHgyODgwIHJlc29sdXRpb24uIFRoZXJlZm9yZSBwcnVu
ZSB0aGUgMjU2MHgyODgwIG1vZGUgb24gb25lCj4gKwkgKiBvZiB0aGUgdGlsZWQgY29ubmVjdG9y
LCB0byBhdm9pZCBzdWNoIGEgY2FzZS4KPiArCSAqLwo+ICsJaWYgKGNvbm5lY3Rvci0+aGFzX3Rp
bGUgJiYKPiArCSAgICAoY29ubmVjdG9yLT50aWxlX2hfbG9jID09IDAgJiYgY29ubmVjdG9yLT50
aWxlX3ZfbG9jID09IDApICYmCj4gKwkgICAgKG1vZGUtPmhkaXNwbGF5ID09IDI1NjAgJiYgbW9k
ZS0+dmRpc3BsYXkgPT0gMjg4MCkpCj4gKwkJcmV0dXJuIE1PREVfUEFORUw7Cj4gKwoKVGhpcyBh
c3N1bWVzIGFsbCB0aWxlZCBjYXNlcyB3aXRoIHNwZWNpZmljIHJlc29sdXRpb25zIGZhaWwuIFlv
dSBkb24ndAprbm93IHRoYXQuIFlvdSBvbmx5IGtub3cgdGhpcyBmYWlscyBvbiBhIHNwZWNpZmlj
IGRpc3BsYXkuIEluc3RlYWQgb2YKY29taW5nIHVwIHdpdGggdmFyaW91cyBydWxlcyBvbiB0aWxl
cyBhbmQgcmVzb2x1dGlvbnMgdGhhdCBtYXRjaCB0aGUKZGlzcGxheSAoYnV0IG1pZ2h0ICphbHNv
KiBtYXRjaCBhbnkgbnVtYmVyIG9mICpvdGhlciogZGlzcGxheXMhKSwgeW91Cm5lZWQgdG8gYWN0
dWFsbHkgaWRlbnRpZnkgYW5kIG1hdGNoIHRoYXQgc3BlY2lmaWMgZGlzcGxheSBpbnN0ZWFkLgoK
VGhlcmUgYXJlIHR3byB3YXlzIHRvIGFkZCBkaXNwbGF5IHNwZWNpZmljIHF1aXJrczogYmFzZWQg
b24gRURJRAooZWRpZF9xdWlya19saXN0IGluIGRybV9lZGlkLmMpIGFuZCBiYXNlZCBvbiBEUENE
IChkcGNkX3F1aXJrX2xpc3QgaW4KZHJtX2RwX2hlbHBlci5jKS4gWW91IGlkZW50aWZ5IHRoZSBk
aXNwbGF5LCBhbmQgdGhlbiBwcnVuZSB0aGUgbW9kZXMKdGhhdCByZXF1aXJlIHBvcnQgc3luYyB0
byB3b3JrLCBmb3IgKnRoYXQqIGRpc3BsYXkuCgpCbGFua2V0IGZpbHRlcnMgbGlrZSB0aGlzIGFy
ZSBhIG5vLWdvLgoKQlIsCkphbmkuCgoKPiAgCXJldHVybiBNT0RFX09LOwo+ICB9CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
