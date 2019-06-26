Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5D57079
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 20:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C465E6E4CD;
	Wed, 26 Jun 2019 18:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BA66E4CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 18:20:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 11:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="313509442"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2019 11:20:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190624203152.13725-1-daniele.ceraolospurio@intel.com>
 <20190624203152.13725-2-daniele.ceraolospurio@intel.com>
 <156154334639.2637.9988052891636686902@skylake-alporthouse-com>
 <35062553-0982-376a-3b4a-4dcf19524c12@intel.com>
 <156157189800.26855.15905781510534161945@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ba043018-2324-b4e3-a3c7-df55647d3fbd@intel.com>
Date: Wed, 26 Jun 2019 11:20:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156157189800.26855.15905781510534161945@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915: split out uncore_mmio_debug
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzI2LzE5IDEwOjU4IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI2IDE4OjM4OjQ1KQo+Pgo+Pgo+PiBPbiA2LzI2
LzE5IDM6MDIgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoMjAxOS0wNi0yNCAyMTozMTo0OSkKPj4+PiBAQCAtNjA1LDE4ICs2MTQsMjAg
QEAgdm9pZCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1
bmNvcmUsCj4+Pj4gICAgdm9pZCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3VzZXJfZ2V0KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSkKPj4+PiAgICB7Cj4+Pj4gICAgICAgICAgIHNwaW5fbG9j
a19pcnEoJnVuY29yZS0+bG9jayk7Cj4+Pj4gKyAgICAgICBzcGluX2xvY2soJnVuY29yZS0+ZGVi
dWctPmxvY2spOwo+Pj4+ICAgICAgICAgICBpZiAoIXVuY29yZS0+dXNlcl9mb3JjZXdha2UuY291
bnQrKykgewo+Pj4KPj4+IEFmYWljdCwgdW5jb3JlLT51c2VyX2ZvcmNld2FrZS5jb3VudCBpcyBv
bmx5IGd1YXJkZWQgYnkgdW5jb3JlLT5sb2NrCj4+PiBhbmQgd2Ugb25seSBuZWVkIHRvIHRha2Ug
ZGVidWctPmxvY2sgZm9yIHRoZSBkZWJ1Zy0+dW5jbGFpbWVkX21taW9fY2hlY2sKPj4+IG1hbmlw
dWxhdGlvbi4gQnV0IHRoZXJlIG5lZWRzIHRvIGJlIGEgc2hhcmVkIHVzYWdlIGNvdW50ZXIgYXJv
dW5kIHRoZQo+Pj4gZGVidWcgYXMgaXQgaXMgc2hhcmVkIHN0YXRlLgo+Pj4KPj4+PiAgICAgICAg
ICAgICAgICAgICBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldF9fbG9ja2VkKHVuY29yZSwgRk9S
Q0VXQUtFX0FMTCk7Cj4+Pj4gICAgCj4+Pj4gICAgICAgICAgICAgICAgICAgLyogU2F2ZSBhbmQg
ZGlzYWJsZSBtbWlvIGRlYnVnZ2luZyBmb3IgdGhlIHVzZXIgYnlwYXNzICovCj4+Pj4gICAgICAg
ICAgICAgICAgICAgdW5jb3JlLT51c2VyX2ZvcmNld2FrZS5zYXZlZF9tbWlvX2NoZWNrID0KPj4+
PiAtICAgICAgICAgICAgICAgICAgICAgICB1bmNvcmUtPnVuY2xhaW1lZF9tbWlvX2NoZWNrOwo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHVuY29yZS0+ZGVidWctPnVuY2xhaW1lZF9tbWlv
X2NoZWNrOwo+Pj4+ICAgICAgICAgICAgICAgICAgIHVuY29yZS0+dXNlcl9mb3JjZXdha2Uuc2F2
ZWRfbW1pb19kZWJ1ZyA9Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X21vZHBh
cmFtcy5tbWlvX2RlYnVnOwo+Pj4KPj4+IFNvbWV0aGluZyBtb3JlIGxpa2UKPj4+Cj4+PiBzcGlu
X2xvY2tfaXJxKCZ1bmNvcmUtPmxvY2spOwo+Pj4gaWYgKCF1bmNvcmUtPnVzZXJfZm9yY2V3YWtl
X2NvdW50KyspIHsKPj4+ICAgICAgICBzcGluX2xvY2soJnVuY29yZS0+ZGVidWctPmxvY2spOwo+
Pj4gICAgICAgIGlmICghdW5jb3JlLT5kZWJ1Zy0+dXNhZ2VfY291bnQrKykgewo+Pj4gICAgICAg
ICAgICAgICAgLi4uCj4+PiAgICAgICAgfQo+Pj4gICAgICAgIHNwaW5fdW5sb2NrKCZ1bmNvcmUt
PmRlYnVnLT5sb2NrKTsKPj4+IH0KPj4+IC4uLgo+Pj4gc3Bpbl91bmxvY2tfaXJxKCZ1bmNvcmUt
PmxvY2spOwo+Pj4gPwo+Pj4gLUNocmlzCj4+Pgo+Pgo+PiBJIGRvIHNvbWV0aGluZyBzaW1pbGFy
IGluIHRoZSBuZXh0IHBhdGNoIGluIHRoZSBzZXJpZXMgKHdpdGggdGhlIGxvY2sKPj4gc3RpbGwg
b24gdGhlIG91dHNpZGUgb2YgdGhlIGlmKS4gSSd2ZSBzcGxpdCB0aGF0IG91dCBiZWNhdXNlIEkn
dmUgYWRkZWQKPj4gc29tZSBmdW5jdGlvbmFsIGNoYW5nZXMgdG8gdGhlIGZsb3cuIEkgY2FuIHNx
dWFzaCB0aGUgMiBwYXRjaGVzIGlmIHlvdQo+PiB0aGluZyBpdCBpcyBiZXR0ZXIgdGhhdCB3YXku
Cj4gCj4gWWVzLiBMb29raW5nIGF0IHRoZSBzZWNvbmQgcGF0Y2gsIHRoYXQgaXMgY2xlYXJlciB3
cnQgd2hhdCBkYXRhIHdlIGFyZQo+IGd1YXJkaW5nIHdpdGggdGhlIGxvY2tzLgo+IAo+IERvbid0
IGRyb3AgdGhlIGludGVsXyBwcmVmaXggZnJvbSBpbnRlbF91bmNvcmVfZGVidWcgYXMgaXQgbG9v
a3MgdG8KPiBzdGlsbCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgaXRzIGVuY2xhdmUgKGl0J3MgZ2V0
dGluZyBsb25nLCBidXQgaXQgc2hvdWxkCgpJJ20gYXNzdW1pbmcgeW91J3JlIHJlZmVycmluZyB0
byB0aGUgMiBuZXcgZnVuY3Rpb25zLiBUaGVzZSBhcmUgYWN0dWFsbHkgCm1lYW50IHRvIG9ubHkg
dXNlZCB3aXRoaW4gdGhlIGZpbGUgYW5kIG5vdCBiZSBleHRlcm5hbGx5IHZpc2libGUsIEkganVz
dCAKZm9yZ290IHRoZSBzdGF0aWMgdGFnIChhbmQgc3BhcnNlIGNvbXBsYWluZWQgZm9yIHRoYXQp
LiBFdmVyeXRoaW5nIGVsc2UgCnNob3VsZCBzdGlsbCBoYXZlIHRoZSBpbnRlbF8gcHJlZml4LgoK
RGFuaWVsZQoKPiBiZSBtb3JlIG9yIGxlc3MgaW50ZXJuYWwgdG8gdGhlIHZhcmlvdXMgaW50ZWxf
dW5jb3JlIGltcGxlbWVudGF0aW9ucykgYW5kCj4gc3F1YXNoIHRoZXNlIDIgYXMgSSBmZWVsIG1v
cmUgY29tZm9ydGFibGUgd2l0aCBpbnRlbF91bmNvcmVfZGVidWcgdGFraW5nCj4gY29udHJvbCBv
ZiB0aGUgbG9ja2luZyBhcyByZXF1aXJlZCBmb3Igc2hhcmluZyBhbmQgcmV2aWV3aW5nIHRoZSBs
b2NraW5nCj4gd3J0IHRvIHRoZSBzaGFyZWQgZGF0YS4KPiAtQ2hyaXMKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
