Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC8763900
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 18:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC27189DC0;
	Tue,  9 Jul 2019 16:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A9D89DC0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 16:01:14 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 09:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="173600770"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jul 2019 09:01:12 -0700
Date: Tue, 9 Jul 2019 09:01:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190709160111.vnz3fggz4fuyebht@ldmartin-desk1>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-9-lucas.demarchi@intel.com>
 <78195a95a2f4e18aa3e1ce003150365f0cc038f1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78195a95a2f4e18aa3e1ce003150365f0cc038f1.camel@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 08/25] drm/i915/tgl: use
 TRANSCODER_EDP_VDSC on transcoder A
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDY6MDc6MTdQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk9uIE1vbiwgMjAxOS0wNy0wOCBhdCAxNjoxNiAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdy
b3RlOgo+PiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KPj4KPj4gT24gVEdMIHRoZSBzcGVjaWFsIEVEUCB0cmFuc2NvZGVyIGlzIGdvbmUgYW5kIGl0
IHNob3VsZCBiZSBoYW5kbGVkIGJ5Cj4+IHRyYW5zY29kZXIgQS4KPj4KPj4gdjIgKEx1Y2FzKToK
Pj4gICAtIFJldXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDIChzdWdnZXN0ZWQg
YnkgVmlsbGUpCj4+ICAgLSBVc2UgY3J0Yy0+ZGV2IHNpbmNlIG5ld19jcnRjX3N0YXRlLT5zdGF0
ZSBtYXkgYmUgTlVMTCBvbiBhdG9taWMKPj4gICAgIGNvbW1pdCAoc3VnZ2VzdGVkIGJ5IE1hYXJ0
ZW4pCj4KPkFzIHdlIGFyZSByZXVzaW5nIHdvdWxkIGJlIG5pY2UgYWxzbyByZW5hbWUgaXQgdG8g
c29tZXRoaW5nIGxpa2U6Cj5QT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9WRFNDX1BXMgo+UE9XRVJf
RE9NQUlOX0xPV19QT1dFUl9UUkFOU0NPREVSX1ZEU0MgLwo+UE9XRVJfRE9NQUlOX0xQX1RSQU5T
Q09ERVJfVkRTQwoKYXMgaXQgaXMgc3RpbGwgYmVpbmcgdXNlZCBmb3IgRURQLCBJIGRpZG4ndCB0
aGluayB0aGUgcmVuYW1lIHdhcyB3b3J0aC4KCkx1Y2FzIERlIE1hcmNoaQoKPgo+Pgo+PiBDYzog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgfCA5ICsrKysrKy0tLQo+PiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPj4gaW5kZXggZmZlYzgw
N2I4OTYwLi5jMjc5MTJmNTUyZjAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jCj4+IEBAIC00NTksMTYgKzQ1OSwxOSBAQCBpbnQgaW50ZWxfZHBfY29t
cHV0ZV9kc2NfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcAo+PiAqaW50ZWxfZHAsCj4+ICBlbnVtIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluCj4+ICBpbnRlbF9kc2NfcG93ZXJfZG9tYWluKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiAgewo+PiArCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtCj4+
ID5kZXYpOwo+PiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUt
PmNwdV90cmFuc2NvZGVyOwo+Pgo+PiAgCS8qCj4+IC0JICogT24gSUNMIFZEU0Mvam9pbmluZyBm
b3IgZURQIHRyYW5zY29kZXIgdXNlcyBhIHNlcGFyYXRlIHBvd2VyCj4+IHdlbGwgUFcyCj4+IC0J
ICogVGhpcyByZXF1aXJlcyBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQyBwb3dlciBk
b21haW4uCj4+ICsJICogT24gSUNMKyBWRFNDL2pvaW5pbmcgZm9yIGVEUC9BIHRyYW5zY29kZXIg
dXNlcyBhIHNlcGFyYXRlCj4+IHBvd2VyIHdlbGwKPj4gKwkgKiBQVzIuIFRoaXMgcmVxdWlyZXMg
UE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0MgcG93ZXIKPj4gZG9tYWluLgo+PiAgCSAq
IEZvciBhbnkgb3RoZXIgdHJhbnNjb2RlciwgVkRTQy9qb2luaW5nIHVzZXMgdGhlIHBvd2VyIHdl
bGwKPj4gYXNzb2NpYXRlZAo+PiAgCSAqIHdpdGggdGhlIHBpcGUvdHJhbnNjb2RlciBpbiB1c2Uu
IEhlbmNlIGFub3RoZXIgcmVmZXJlbmNlIG9uCj4+IHRoZQo+PiAgCSAqIHRyYW5zY29kZXIgcG93
ZXIgZG9tYWluIHdpbGwgc3VmZmljZS4KPj4gIAkgKi8KPj4gLQlpZiAoY3B1X3RyYW5zY29kZXIg
PT0gVFJBTlNDT0RFUl9FRFApCj4+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMiAmJiBjcHVf
dHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0EpCj4+ICsJCXJldHVybiBQT1dFUl9ET01BSU5fVFJB
TlNDT0RFUl9FRFBfVkRTQzsKPj4gKwllbHNlIGlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NP
REVSX0VEUCkKPj4gIAkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDOwo+
PiAgCWVsc2UKPj4gIAkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSKGNwdV90cmFuc2Nv
ZGVyKTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
