Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A57F9FE3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 02:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50EAD6EC40;
	Wed, 13 Nov 2019 01:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E10B6EC40
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 01:09:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 17:09:28 -0800
X-IronPort-AV: E=Sophos;i="5.68,298,1569308400"; d="scan'208";a="198280735"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 17:09:28 -0800
Date: Tue, 12 Nov 2019 17:09:21 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191113010921.3saafyl6mo6ien5c@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191112224757.25116-1-matthew.d.roper@intel.com>
 <20191112224757.25116-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112224757.25116-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: MOCS table update
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
Cc: intel-gfx@lists.freedesktop.org,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDI6NDc6NTdQTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPlRoZSBic3BlYyB3YXMganVzdCB1cGRhdGVkIHdpdGggYSBtaW5vciBjb3JyZWN0aW9uIHRv
IGVudHJ5IDYxIChpdAo+c2hvdWxkbid0IGhhdmUgaGFkIHRoZSBTQ0YgYml0IHNldCkuCj4KPnYy
Ogo+IC0gQWRkIGEgTU9DU19FTlRSWV9VTlVTRUQoKSBhbmQgdXNlIGl0IHRvIGRlY2xhcmUgdGhl
Cj4gICBleHBsaWNpdGx5LXJlc2VydmVkIE1PQ1MgZW50cmllcy4gKEx1Y2FzKQo+IC0gTW92ZSB0
aGUgd2FybmluZyBzdXBwcmVzc2lvbiBmcm9tIHRoZSBNYWtlZmlsZSB0byBhICNwcmFnbWEgdGhh
dCBvbmx5Cj4gICBhZmZlY3RzIHRoZSBUR0wgdGFibGUuIChMdWNhcykKPgo+djM6Cj4gLSBFbnRy
aWVzIDE2IGFuZCAxNyBhcmUgaWRlbnRpY2FsIHRvIElDTCBub3csIHNvIG5vIG5lZWQgdG8gZXhw
bGljaXRseQo+ICAgYWRqdXN0IHRoZW0gKG9yIG1lc3Mgd2l0aCBjb21waWxlciB3YXJuaW5nIG92
ZXJyaWRlcykuCj4KPkJzcGVjOiA0NTEwMQo+Rml4ZXM6IDJkZGY5OTIxNzljNCAoImRybS9pOTE1
L3RnbDogRGVmaW5lIE1PQ1MgZW50cmllcyBmb3IgVGlnZXJsYWtlIikKPkNjOiBUb21hc3ogTGlz
IDx0b21hc3oubGlzQGludGVsLmNvbT4KPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPkNjOiBGcmFuY2lzY28gSmVyZXogPGZyYW5jaXNjby5qZXJlei5wbGF0
YUBpbnRlbC5jb20+Cj5DYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNv
bT4KPlNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
CgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgoKTHVjYXMgRGUgTWFyY2hpCgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bW9jcy5jIHwgMiArLQo+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj5pbmRleCAwNmUyYWRiZjI3
YmUuLjJiOTc3OTkxYjc4NSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj5A
QCAtMjYzLDcgKzI2Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRy
eSB0aWdlcmxha2VfbW9jc190YWJsZVtdID0gewo+IAkJICAgTDNfMV9VQyksCj4gCS8qIEhXIFNw
ZWNpYWwgQ2FzZSAoRGlzcGxheWFibGUpICovCj4gCU1PQ1NfRU5UUlkoNjEsCj4tCQkgICBMRV8x
X1VDIHwgTEVfVENfMV9MTEMgfCBMRV9TQ0YoMSksCj4rCQkgICBMRV8xX1VDIHwgTEVfVENfMV9M
TEMsCj4gCQkgICBMM18zX1dCKSwKPiB9Owo+Cj4tLSAKPjIuMjEuMAo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
