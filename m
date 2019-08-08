Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDEE863BA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAE388E9D;
	Thu,  8 Aug 2019 13:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B386E83B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193160664"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:54:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <156527094392.21710.16070553711212669704@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190808014423.20377-1-daniele.ceraolospurio@intel.com>
 <156527094392.21710.16070553711212669704@skylake-alporthouse-com>
Date: Thu, 08 Aug 2019 16:58:37 +0300
Message-ID: <87ef1viws2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 0/3] Display uncore
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwOCBBdWcgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOC0wOCAw
Mjo0NDoyMCkKPj4gSSd2ZSBiZWVuIHRyeWluZyB0byBpZGVudGlmeSBNTUlPIHJhbmdlcyB0byBj
bGVhcmx5IGRlZmluZSB3aGF0IGJlbG9uZ3MKPj4gdG8gZGlzcGxheV91bmNvcmUgdG8gZG8gYSBj
aGVjayBvbiBhY2Nlc3MsIGJ1dCB0aGVyZSBhcmUgbG90cyBvZgo+PiBleGNlcHRpb25zIGFuZCBk
aWZmZXJlbmNlcyBhY3Jvc3MgZ2VucyAod2l0aCBhIGZldyBtb3JlIGNvbWluZyB3aXRoIFRHTCks
Cj4+IHNvIEkgZG9uJ3QgdGhpbmsgdGhhdCdzIGEgdmlhYmxlIHdheS4gVGhlIGFsdGVybmF0aXZl
IG9wdGlvbiBpbXBsZW1lbnRlZAo+PiBoZXJlIGlzIHRvIGRpZmZlcmVudGlhdGUgdGhlIHJlZ2lz
dGVyIGJ5IHR5cGUsIHdoaWNoIHNob3VsZCBlbnN1cmUgd2UKPj4gbmV2ZXIgbWl4IHRoZW0gdXAs
IGJ1dCBhdCB0aGUgY29zdCBvZiBhIG1vcmUgY29tcGxleCB0cmFuc2l0aW9uLgo+Cj4gT25lIHRo
aW5nIHdlIGNvdWxkIHRyeSB3aXRoIHRoaXMgYXBwcm9hY2ggaXMgdG8gdGFnIGV2ZXJ5IF9NTUlP
KCkgYXMKPiBlaXRoZXIgREUgb3IgR1QgYW5kIGhhdmUgdGhlIHVuY29yZSBhY2Nlc3NvcnMgY2hl
Y2sgdGhlIG1hZ2ljIGJpdHMKPiBiZWZvcmUgc2NydWJiaW5nIHRoZW0uIChXaXRoIGVub3VnaCBt
YWdpYyBtYWNyb3MgdG8gbWFrZSBpdCBkaXNhcHBlYXIKPgo+IEh1Z2UgdGFzaywgYnV0IG5vdCBp
bnN1cm1vdW50YWJsZS4gVGhlIGRhbmdlciBpcyB0aGF0IGlmIHdlIGRvIHRoaXMKPiBwaWVjZW1l
YWwgaXMgdGhhdCB3ZSBtYXkgZW5kIHVwIHdpdGggdHdvIHNpbXVsdGFuZW91cyBhY2Nlc3NlcyB2
aWEgdGhlCj4gc2VwYXJhdGUgdW5jb3JlIGFjY2Vzc29ycy4gSG1tLgoKWW91IG1lYW4gc29tZXRo
aW5nIGxpa2UgdGhpcz8KCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiMzYyY2EwNjYzYTYu
LjQwMTQ5MGY3OTkzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xNzksNyArMTc5LDgg
QEAKICNkZWZpbmUgUkVHX0ZJRUxEX0dFVChfX21hc2ssIF9fdmFsKQkoKHUzMilGSUVMRF9HRVQo
X19tYXNrLCBfX3ZhbCkpCiAKIHR5cGVkZWYgc3RydWN0IHsKLQl1MzIgcmVnOworCXUzMiBkZTox
OworCXUzMiByZWc6MzE7CiB9IGk5MTVfcmVnX3Q7CiAKICNkZWZpbmUgX01NSU8ocikgKChjb25z
dCBpOTE1X3JlZ190KXsgLnJlZyA9IChyKSB9KQotLS0KCmJsb2F0LW8tbWV0ZXIgdGVsbHMgbWUg
anVzdCB0aGF0LCB3aXRoIG5vIG90aGVyIGNoYW5nZXMgaXMgKzAuNTMlCmluY3JlYXNlLiBQZXJo
YXBzIHN0aWxsIGFjY2VwdGFibGUuCgpJIHRoaW5rIHdlIGNvdWxkIGp1c3QgYWRkIHNvbWV0aGlu
ZyBsaWtlCgojZGVmaW5lIF9NTUlPX0RFKHIpICgoY29uc3QgaTkxNV9yZWdfdCl7IC5kZSA9IDEs
IC5yZWcgPSAocikgfSkKCmFuZCB1cGRhdGUgaTkxNV9yZWcuaCB0byB1c2UgdGhhdCBhcyB0aGUg
Zmlyc3Qgc3RlcCwgd2l0aCBubyBvdGhlcgpjaGFuZ2VzLCBhbmQgYnVpbGQgb24gdG9wIG9mIHRo
YXQuIEkgZG9uJ3QgdGhpbmsgdGhlcmUgc2hvdWxkIGJlIGxhcmdlCnNjYWxlIGNoYW5nZXMgb3V0
c2lkZSBvZiBpOTE1X3JlZy5oIHJlcXVpcmVkIGF0IGFsbCBhdCBmaXJzdC4gVGhlIHVwZGF0ZQp0
byBtb3ZlIGF3YXkgZnJvbSBJOTE1X1JFQUQgYW5kIEk5MTVfV1JJVEUgY291bGQgY29tZSBhZnRl
cndhcmRzIGFuZApwaWVjZW1lYWwgQUZBSUNULgoKPiBPbiB0aGluZyB0aG91Z2ggaXMgdGhhdCBK
YW5pIG1heSBmaW5kIHRoZSBpbnRlbF9kZV93cml0ZSAob3IganVzdAo+IGRlX3dyaXRlLCB0aGUg
ZnJlcXVlbmN5IG1heSBiZSB3b3J0aCBiZW5kaW5nIHRoZSBuYW1pbmcgcnVsZXMpIGFzIGJlaW5n
Cj4gcGFsYXRhYmxlLgoKSW5kZWVkLiBBbHJlYWR5IGludGVsX2RlX3dyaXRlKGk5MTUsIC4uLikg
aXMgc28gbXVjaCBiZXR0ZXIgdGhhbgppbnRlbF91bmNvcmVfd3JpdGUoJmk5MTUtPnVuY29yZSwg
Li4uKS4KClRob3VnaC4uLiB3aXRoIGRlIGVuY29kZWQgaW4gaTkxNV9yZWdfdCwgd2UgY291bGQg
aGF2ZSBpbnRlbF93cml0ZShpOTE1LAouLi4pIGRvIHRoZSByaWdodCB0aGluZyBiYXNlZCBvbiAu
ZGUuIEl0IGNvdWxkIGludGVybmFsbHkgY2hvb3NlIHRoZQpyaWdodCB1bmNvcmUgZm9yIGludGVs
X3VuY29yZV93cml0ZSgpLiBFdmVuIGlmIG1vc3Qgbm9uLWRlIHdvdWxkCmRpcmVjdGx5IHVzZSB0
aGUgdW5jb3JlIHZlcnNpb25zLgoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
