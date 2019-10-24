Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB322E3120
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E266589ACD;
	Thu, 24 Oct 2019 11:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACA089ACD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:45:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="197086218"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.122.10])
 ([10.66.122.10])
 by fmsmga008.fm.intel.com with ESMTP; 24 Oct 2019 04:45:46 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-3-animesh.manna@intel.com>
 <20191021225731.GA29989@intel.com>
 <bd7b9c22-7a51-7dfc-e86c-039aa5d47ab4@intel.com>
 <20191022174055.GC2533@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <3d2643e4-0d25-70d9-f60c-e1883735324c@intel.com>
Date: Thu, 24 Oct 2019 17:15:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191022174055.GC2533@intel.com>
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915/dp: Move vswing/pre-emphasis
 adjustment calculation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMjIvMjAxOSAxMToxMCBQTSwgTWFuYXNpIE5hdmFyZSB3cm90ZToKPiBPbiBUdWUsIE9j
dCAyMiwgMjAxOSBhdCAwNzozNDoxM1BNICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+PiBP
biAxMC8yMi8yMDE5IDQ6MjcgQU0sIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4+PiBPbiBUaHUsIE9j
dCAwMywgMjAxOSBhdCAwODozNjo0OVBNICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+Pj4+
IHZzd2luZy9wcmUtZW1waGFzaXMgYWRqdXN0bWVudCBjYWxjdWxhdGlvbiBpcyBuZWVkZWQgaW4g
cHJvY2Vzc2luZwo+Pj4+IG9mIGF1dG8gcGh5IGNvbXBsaWFuY2UgcmVxdWVzdCBvdGhlciB0aGFu
IGxpbmsgdHJhaW5pbmcsIHNvIG1vdmVkCj4+Pj4gdGhlIHNhbWUgZnVuY3Rpb24gaW4gaW50ZWxf
ZHAuYy4KPj4+Pgo+Pj4+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlLgo+Pj4gWW91IGNvdWxkIGp1c3Qg
bWFrZSBpdCBhIG5vbiBzdGF0aWMgZnVuY3Rpb24gaW5zdGVhZCBvZiBtb3ZpbmcgdG8gaW50ZWxf
ZHAuYwo+PiBJbml0aWFsbHkgSSBkaWQgdGhlIHNhbWUgLi4uIDopCj4+IExhdGVyIEkgdGhvdWdo
dCBpbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgZmlsZSBpcyBtYWlubHkgZm9jdXNlZCBvbmx5IG9u
IGxpbmsKPj4gdHJhaW5pbmcgcHJvY2Vzcywgc3RhcnRfbGlua190cmFpbigpIGFuZCBzdG9wX2xp
bmtfdHJhaW4oKSBhcmUgb25seSBleHBvc2VkLgo+PiBJIHRob3VnaHQgSSBtYXkgbm90IGJlIGFs
bG93ZWQgdG8gZXhwb3NlIGludGVsX2dldF9hZGp1c3RfdHJhaW4oKSBhcyBpdCBpcwo+PiBub3Qg
ZXhjbHVzaXZlIGZvciBsaW5rIHRyYWluaW5nLgo+PiBQbGVhc2UgbGV0IG1lIGtub3cgeW91ciB2
aWV3Lgo+IEluZmFjdCBub3cgdGhhdCBJIGxvb2sgYXQgdGhpcywgaSB0aGluayB0aGUgcHJlcGFy
ZV9waHlfdGVzdCBmdW5jdGlvbiBzaG91bGQgb25seQo+IHByb2JhYmx5IGdldCB0aGUgZHJtX2dl
dF9waHlfdGVzdF9wYXR0ZXJuIGFuZCBwb3B1bGF0ZSBpbiB0aGUgaW50ZWxfZHBfY29tcGxpYW5j
ZQo+IHN0cnVjdHVyZSBhbmQgdGhlbiBhZGp1c3QgdHJhaW4gYW5kIGFsbCB0aGF0IGNhbiBoYXBw
ZW4gcmlnaHQgYmVmb3JlIHBhdHRlcm4gdXBkYXRlCj4gd2hpY2ggd2lsbCBuZWVkIHRvIGhhcHBl
biBpbiBhdG9taWNfY29tbWl0X3RhaWwuCgpPa2F5LCBpbiBjb21taXQtdGFpbCB3ZSBmb2xsb3cg
bW9kZXNldCBzZXF1ZW5jZSBhbmQgdXNlIGVuY29kZXIgc3BlY2lmaWMgCmhvb2sgdG8gZG8gZW5j
b2RlciBzcGVjaWZpYyBwcm9ncmFtbWluZy4KQ2FuIHlvdSBwbGVhc2Ugc2hhcmUgeW91ciB0aG91
Z2h0IGFib3V0IHRoZSByaWdodCBwbGFjZSB0byBkbyBEUCBwaHkgCmNvbXBsaWFuY2Ugc3BlY2lm
aWMgcHJvZ3JhbW1pbmcuCgo+Cj4gSG93IGRvIHlvdSBoYW5kbGUgdGhlIHJlZ3VsYXIgbGluayB0
cmFpbmluZyBzZXF1ZW5jZSBpbiB0aGUgY2FzZSBvZiBQSFkgdGVzdD8KCkluIGF1dG9tYXRlZCBw
aHkgY29tcGxpYW5jZSB0ZXN0aW5nIGFzIHN1Y2ggdGhlcmUgaXMgbm8gcmVxdWlyZW1lbnQgdG8g
CmRvIGxpbmsgdHJhaW5pbmcgaW4gYmV0d2Vlbi4KRG8geW91IHNlZSBhbnkgbmVlZCBvZiBsaW5r
IHRyYWluaW5nIGluIGJldHdlZW4gY29tcGxpYW5jZSB0ZXN0aW5nPwoKPiBXaGF0IGhhcHBlbnMg
dG8gdGhlIGFkanVzdCB0cmFpbiB0aGUgdGhlIHJlZ3VsYXIgbGluayB0cmFpbmluZyBjbG9jayBy
ZWNvdmVyeSBhbmQKPiBjaGFubmVsIGVxIHN0YWdlcz8KCkkgZmVsdCBhZGp1c3QgdHJhaW4gY2Fs
Y3VsYXRpb24gY2FuIGJlIGV4cG9zZWQgZnJvbSBpbnRlbF9kcC5jLy5oIGFuZCBzYW1lIGxpa2Ug
b3RoZXIgaGVscGVyIGxpbmsgdHJhaW5pbmcgcHJvY2VzcyhjbG9jayByZWNvdmVyeSArIGNoYW5u
ZWwgZXEpIGNhbiB1c2UgaXQuCgpSZWdhcmRzLApBbmltZXNoCgo+Cj4gTWFuYXNpCj4KPj4gUmVn
YXJkcywKPj4gQW5pbWVzaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
