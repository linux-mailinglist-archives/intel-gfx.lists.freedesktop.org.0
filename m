Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E025F8645B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 16:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB106E84B;
	Thu,  8 Aug 2019 14:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479186E84B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 14:30:35 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 07:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="174863658"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by fmsmga008.fm.intel.com with ESMTP; 08 Aug 2019 07:30:34 -0700
Date: Thu, 8 Aug 2019 10:46:44 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20190808144643.GF3842@intel.com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
 <20190807205556.40435-2-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807205556.40435-2-stuart.summers@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Return true by default in
 mocs settings
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

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDE6NTU6NTZQTSAtMDcwMCwgU3R1YXJ0IFN1bW1lcnMg
d3JvdGU6Cj4gUmVkdWNlIGNvZGUgYnkgZGVmYXVsdGluZyB0byB0cnVlIGluIHRoZSBNT0NTIHNl
dHRpbmdzCj4gaW5pdGlhbGl6YXRpb24gZnVuY3Rpb24uIFNldCB0byBmYWxzZSBmb3IgdW5leHBl
Y3RlZAo+IHBsYXRmb3Jtcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1
YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6UHJhdGhhcCBLdW1hciBWYWxzYW4g
PHByYXRoYXAua3VtYXIudmFsc2FuQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgNyArKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21vY3MuYwo+IGluZGV4IGZlYThlZjJmZDJhYS4uZmZkMTA1YzUzZmY0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IEBAIC0yOTEsMzEgKzI5MSwyOCBAQCBzdGF0aWMg
Ym9vbCBnZXRfbW9jc19zZXR0aW5ncyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAo+ICAJCQkgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7Cj4gLQlib29sIHJlc3VsdCA9IGZhbHNlOwo+ICsJ
Ym9vbCByZXN1bHQgPSB0cnVlOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIpIHsK
PiAgCQl0YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKHRpZ2VybGFrZV9tb2NzX3RhYmxlKTsKPiAg
CQl0YWJsZS0+dGFibGUgPSB0aWdlcmxha2VfbW9jc190YWJsZTsKPiAgCQl0YWJsZS0+bl9lbnRy
aWVzID0gR0VOMTFfTlVNX01PQ1NfRU5UUklFUzsKPiAtCQlyZXN1bHQgPSB0cnVlOwo+ICAJfSBl
bHNlIGlmIChJU19HRU4oaTkxNSwgMTEpKSB7Cj4gIAkJdGFibGUtPnNpemUgID0gQVJSQVlfU0la
RShpY2VsYWtlX21vY3NfdGFibGUpOwo+ICAJCXRhYmxlLT50YWJsZSA9IGljZWxha2VfbW9jc190
YWJsZTsKPiAgCQl0YWJsZS0+bl9lbnRyaWVzID0gR0VOMTFfTlVNX01PQ1NfRU5UUklFUzsKPiAt
CQlyZXN1bHQgPSB0cnVlOwo+ICAJfSBlbHNlIGlmIChJU19HRU45X0JDKGk5MTUpIHx8IElTX0NB
Tk5PTkxBS0UoaTkxNSkpIHsKPiAgCQl0YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKHNreWxha2Vf
bW9jc190YWJsZSk7Cj4gIAkJdGFibGUtPm5fZW50cmllcyA9IEdFTjlfTlVNX01PQ1NfRU5UUklF
UzsKPiAgCQl0YWJsZS0+dGFibGUgPSBza3lsYWtlX21vY3NfdGFibGU7Cj4gLQkJcmVzdWx0ID0g
dHJ1ZTsKPiAgCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChpOTE1KSkgewo+ICAJCXRhYmxlLT5zaXpl
ICA9IEFSUkFZX1NJWkUoYnJveHRvbl9tb2NzX3RhYmxlKTsKPiAgCQl0YWJsZS0+bl9lbnRyaWVz
ID0gR0VOOV9OVU1fTU9DU19FTlRSSUVTOwo+ICAJCXRhYmxlLT50YWJsZSA9IGJyb3h0b25fbW9j
c190YWJsZTsKPiAtCQlyZXN1bHQgPSB0cnVlOwo+ICAJfSBlbHNlIHsKPiAgCQlXQVJOX09OQ0Uo
SU5URUxfR0VOKGk5MTUpID49IDksCj4gIAkJCSAgIlBsYXRmb3JtIHRoYXQgc2hvdWxkIGhhdmUg
YSBNT0NTIHRhYmxlIGRvZXMgbm90LlxuIik7Cj4gKwkJcmVzdWx0ID0gZmFsc2U7Cj4gIAl9Cj4g
IAo+ICAJLyogV2FEaXNhYmxlU2tpcENhY2hpbmc6c2tsLGJ4dCxrYmwsZ2xrICovCj4gLS0gCj4g
Mi4yMi4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
