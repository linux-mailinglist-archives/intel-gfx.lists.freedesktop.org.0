Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CEF231FE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 13:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7B389247;
	Mon, 20 May 2019 11:10:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E2289247;
 Mon, 20 May 2019 11:10:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 04:10:12 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 20 May 2019 04:10:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-13-tvrtko.ursulin@linux.intel.com>
 <155812174911.1890.4438273089258312619@skylake-alporthouse-com>
 <5fcce814-0534-9435-4219-3900b46fa44d@linux.intel.com>
 <155834999475.6928.18037861860341795901@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e7157283-5ad0-5f81-be8a-9f4d914beb11@linux.intel.com>
Date: Mon, 20 May 2019 12:10:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155834999475.6928.18037861860341795901@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 12/25] gem_wsim: Engine map
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzA1LzIwMTkgMTE6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIwIDExOjQ5OjEzKQo+Pgo+PiBPbiAxNy8wNS8yMDE5IDIwOjM1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTE3IDEyOjI1OjEzKQo+Pj4+ICsgICAgICAgLyoKPj4+PiArICAgICAgICAqIEVuc3VyZSBWQ1Mg
aXMgbm90IGFsbG93ZWQgd2l0aCBlbmdpbmUgbWFwIGNvbnRleHRzLgo+Pj4+ICsgICAgICAgICov
Cj4+Pj4gKyAgICAgICBmb3IgKGogPSAwOyBqIDwgd3JrLT5ucl9jdHhzOyBqICs9IDIpIHsKPj4+
PiArICAgICAgICAgICAgICAgZm9yIChpID0gMCwgdyA9IHdyay0+c3RlcHM7IGkgPCB3cmstPm5y
X3N0ZXBzOyBpKyssIHcrKykgewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICh3LT5j
b250ZXh0ICE9IChqIC8gMikpCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsKPj4+PiArCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKHctPnR5cGUg
IT0gQkFUQ0gpCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsK
Pj4+PiArCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKHdyay0+Y3R4X2xpc3Rbal0u
ZW5naW5lX21hcCAmJiB3LT5lbmdpbmUgPT0gVkNTKSB7Cj4+Pgo+Pj4gQnV0IHdvdWxkbid0IFZD
UyBzdGlsbCBiZSBtZWFuaW5nIHVzZSB0aGUgYmFsYW5jZXIgYW5kIG5vdCBhIHNwZWNpZmljCj4+
PiBlbmdpbmU/Pz8KPj4+Cj4+PiBJJ20gbm90IHVuZGVyc3RhbmRpbmcgaG93IHlvdSBhcmUgdXNp
bmcgbWFwcyBpbiB0aGUgLndzaW0gOigKPj4KPj4gQmF0Y2ggc2VudCB0byBWQ1MgbWVhbnMgYW55
IFZDUyBpZiBub3QgYSBjb250ZXh0IHdpdGggYSBtYXAsIGJ1dCBWQ1MKPj4gbWVudGlvbmVkIGlu
IHRoZSBtYXAgbm93IGF1dG8tZXhwYW5kcyB0byBhbGwgcHJlc2VudCBWQ1MgaW5zdGFuY2VzLgo+
Pgo+PiBWQ1MgYXMgZW5naW5lIHNwZWNpZmllciBhdCBleGVjYnVmIHRpbWUgY291bGQgYmUgYWxs
b3dlZCBpZiBjb2RlIHdvdWxkCj4+IHRoZW4gY2hlY2sgaWYgdGhlcmUgaXMgYSBsb2FkIGJhbGFu
Y2VyIGJ1aWx0IG9mIHZjcyBlbmdpbmVzIGluIHRoaXMgY29udGV4dC4KPj4KPj4gQnV0IHdoYXQg
dXNlIGNhc2UgeW91IHRoaW5rIGlzIG5vdCBjb3ZlcmVkPwo+Pgo+PiBXZSBnb3QgbGVnYWN5IHdz
aW0gZmlsZXMgd2hpY2ggaW1wbGljaXRseSBjcmVhdGUgYSBtYXAgYnkgZG9pbmc6Cj4+Cj4+IDEu
VkNTLjEwMDAuMC4wIC0+IHN1Ym1pdCBhIGJhdGNoIHRvIGFueSB2Y3MKPj4KPj4gQW5kIHRoZW4g
YWZ0ZXIgdGhpcyBzZXJpZXMgeW91IGNhbiBhbHNvIGRvOgo+Pgo+PiBNLjEuVkNTCj4+IEIuMQo+
PiAxLkRFRkFVTFQuMTAwMC4wLjAKPj4KPj4gV2hpY2ggd291bGQgaGF2ZSB0aGUgc2FtZSBlZmZl
Y3QuCj4+Cj4+IFlvdSB3b3VsZCBzZWVtIHdhbnQ6Cj4+Cj4+IE0uMS5WQ1MKPj4gQi4xCj4+IDEu
VkNTLjEwMDAuMC4wCj4+Cj4+ID8KPj4KPj4gQnV0IEkgZG9uJ3Qgc2VlIHdoYXQgaXQgZ2FpbnM/
Cj4gCj4gSSBqdXN0IGhhdmUgYSBwaWN0dXJlIG9mIGEgbWFwIGNvbnNpc3Rpbmcgb2YKPiAKPiAJ
W1JDU10gPSByY3MwLAo+IAlbQkNTXSA9IDAsCj4gCVtWQ1NdID0gKHZjczAsIHZjczIpLAo+IAo+
IFRoZW4gdGhlIHdvcmtsb2FkIHdvdWxkIGJlIGEgc2luZ2xlIGNvbnRleHQsIGZlZWRpbmcgYmF0
Y2hlcyB0byBSQ1MgYW5kCj4gVkNTLCB3aGljaCBhcmUgdGhlbiBtYXBwZWQgdG8gaGFyZHdhcmUg
YW5kIGJhbGFuY2VkIGFzIHN1aXRhYmxlLiBPbmUKPiBjb3VsZCBnbyBldmVuIGZ1cnRoZXIgd2l0
aCBSQ1MwLCBSQ1MxIGZvciBkaWZmZXJlbnQgbG9naWNhbCBzdGF0ZSB3aXRoaW4KPiB0aGUgc2Ft
ZSBjbGllbnQgY29udGV4dCAoZGlmZmVyZW50IHBpcGVsaW5lcywgc2FtZSB2bSkuIFRoYXQgaXMg
aG93IEkKPiB0aGluayBJIHdvdWxkIGRlY29tcG9zZSB0aGUgbWVkaWEgd29ya2xvYWRzIGdpdmVu
IGEgZnJlc2ggc3RhcnQgb24gdG9wCj4gb2YgdGhlIG5ldyBhcGkgLS0gYW5kIHRoZW4gcHJvYmFi
bHkgY3Vyc2luZyB0aGUgbGltaXRzIG9mIHRoYXQgYXBpLgoKSG0uLiB0aGlzIGlzIHF1aXRlIGFu
IGFwcGVhbGluZyBpZGVhLiBJJ2xsIGdpdmUgaXQgc29tZSB0aG91Z2h0IHRvIHNlZSAKaG93IGRp
ZmZpY3VsdCBvciBlYXN5IGl0IHdvdWxkIGJlIHRvIGltcGxlbWVudCBpdC4gSSBob3dldmVyIGFz
ayBmb3IgCmRpc3BlbnNhdGlvbiB0byBjb25zaWRlciB0aGlzIGZvbGxvdyB1cCB3b3JrIHNpbmNl
IHR1cm5pbmcgc29tZSAKaW1wbGVtZW50YXRpb24gZGV0YWlscyBvbiB0aGVpciBoZWFkIGNvdWxk
IGJlIGEgYml0IHRpbWUgY29uc3VtaW5nLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
