Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB70CDDF5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DC76E4F9;
	Mon,  7 Oct 2019 09:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B226E4F8;
 Mon,  7 Oct 2019 09:08:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 02:08:46 -0700
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="183375365"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 02:08:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "20191004215851.31446-1-shawn.c.lee\@intel.com"
 <20191004215851.31446-1-shawn.c.lee@intel.com>, Adam Jackson <ajax@redhat.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel\@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
In-Reply-To: <D42A2A322A1FCA4089E30E9A9BA36AC65D6A9C66@PGSMSX111.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191004215851.31446-1-shawn.c.lee@intel.com>
 <33dcaf669eae3acfc3b716e68b69c0fe76dd2dbc.camel@redhat.com>
 <87d0fce4mh.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D6A9C66@PGSMSX111.gar.corp.intel.com>
Date: Mon, 07 Oct 2019 12:08:40 +0300
Message-ID: <877e5gj52f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: customize DPCD brightness control
 for specific panel
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 Gustavo Padovan <gustavo@padovan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNyBPY3QgMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gRnJpLCAwNCBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4gd3JvdGU6Cj4+T24gRnJpLCAwNCBPY3QgMjAxOSwgQWRhbSBKYWNrc29uIDxh
amF4QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gT24gU2F0LCAyMDE5LTEwLTA1IGF0IDA1OjU4ICsw
ODAwLCBMZWUgU2hhd24gQyB3cm90ZToKPj4+PiBUaGlzIHBhbmVsIChtYW51ZmFjdHVyZXIgaXMg
U0RDLCBwcm9kdWN0IElEIGlzIDB4NDE0MSkgdXNlZCAKPj4+PiBtYW51ZmFjdHVyZXIgZGVmaW5l
ZCBEUENEIHJlZ2lzdGVyIHRvIGNvbnRyb2wgYnJpZ2h0bmVzcyB0aGF0IG5vdCAKPj4+PiBkZWZp
bmVkIGluIGVEUCBzcGVjIHNvIGZhci4gVGhpcyBjaGFuZ2UgZm9sbG93IHBhbmVsIHZlbmRvcidz
IAo+Pj4+IGluc3RydWN0aW9uIHRvIHN1cHBvcnQgYnJpZ2h0bmVzcyBhZGp1c3RtZW50Lgo+Pj4K
Pj4+IEknbSBzdXJlIHRoaXMgd29ya3MsIGJ1dCB0aGlzIHNtZWxscyBhIGxpdHRsZSBmdW5ueSB0
byBtZS4KPj4KPj5UaGF0IHdhcyBraW5kbHkgcHV0LiA7KQo+Pgo+Pj4+ICsJLyogU2Ftc3VuZyBl
RFAgcGFuZWwgKi8KPj4+PiArCXsgIlNEQyIsIDB4NDE0MSwgRURJRF9RVUlSS19OT05fU1REX0JS
SUdIVE5FU1NfQ09OVFJPTCB9LAo+Pj4KPj4+IEl0IGZlZWxzIGEgYml0IGxpa2UgYSBsYXllcmlu
ZyB2aW9sYXRpb24gdG8gaWRlbnRpZnkgZURQIGJlaGF2aW9yIAo+Pj4gY2hhbmdlcyBiYXNlZCBv
biBFRElELiBCdXQgSSdtIG5vdCBzdXJlIHRoZXJlJ3MgYW55IG9idmlvdXMgd2F5IHRvIAo+Pj4g
aWRlbnRpZnkgdGhpcyBkZXZpY2UgYnkgaXRzIERQQ0QuIFRoZSBTaW5rIE9VSSAoZnJvbSB0aGUg
bGlua2VkCj4+PiBidWd6aWxsYSkgc2VlbXMgdG8gYmUgMDAxMUY4LCB3aGljaCBkb2Vzbid0IG1h
dGNoIHVwIHRvIGFueXRoaW5nIGluIG15IAo+Pj4gb3VpLnR4dC4uLgo+Pgo+PldlIGhhdmUgdGhl
IERQQ0QgcXVpcmsgc3R1ZmYgaW4gZHJtX2RwX2hlbHBlci5jLCBidXQgSUlVQyBpbiB0aGlzIGNh
c2UgCj4+dGhlcmUncyBvbmx5IHRoZSBPVUksIGFuZCB0aGUgZGV2aWNlIGlkIGV0Yy4gYXJlIGFs
bCB6ZXJvcy4gT3RoZXJ3aXNlIEkKPj50aGluayB0aGF0IHdvdWxkIGJlIHRoZSBuYXR1cmFsIHRo
aW5nIHRvIGRvLCBhbmQgYWxsIHRoaXMgY291bGQgYmUKPj5iZXR0ZXIgaGlkZGVuIGF3YXkgaW4g
aTkxNS4KPj4KPgo+IEJlbG93IGlzIHdoYXQgd2UgZHVtcGVkIGZyb20gdGhpcyBwYW5lbC4gT25s
eSBzaW5rIE9VSSAoYmEtNDEtNTkpIGluIGl0Cj4gYW5kIG5vdGhpbmcgZWxzZS4gCj4gMDAwMDA0
MDAgIGJhIDQxIDU5IDAwIDAwIDAwIDAwIDAwICAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAgfC5B
WS4uLi4uLi4uLi4uLi58Cj4gMDAwMDA0MTAgIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwICAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAgfC4uLi4uLi4uLi4uLi4uLi4KPgo+IFRoYXQncyB3aHkgdGhl
IHBhdGNoIHRvIGlkZW50aWZ5IEVESUQncyBtYW51ZmFjdHVyZXIgYW5kIHByb2R1Y3QgSUQKPiB0
byBtYWtlIHN1cmUgdGhpcyBtZXRob2QgYXBwbGllZCBvbiBzcGVjaWZpYyBwYW5lbC4KPgo+Pj4K
Pj4+PiBAQCAtMTk1Myw2ICsxOTU2LDcgQEAgc3RhdGljIHUzMiBlZGlkX2dldF9xdWlya3MoY29u
c3Qgc3RydWN0IGVkaWQgCj4+Pj4gKmVkaWQpCj4+Pj4gIAo+Pj4+ICAJcmV0dXJuIDA7Cj4+Pj4g
IH0KPj4+PiArRVhQT1JUX1NZTUJPTChlZGlkX2dldF9xdWlya3MpOwo+Pj4KPj4+IElmIHdlJ3Jl
IGdvaW5nIHRvIGV4cG9ydCB0aGlzIGl0IHNob3VsZCBwcm9iYWJseSBnZXQgYSBkcm1fIHByZWZp
eC4KPgo+IFllcyEgSXQgd2lsbCBiZSBiZXR0ZXIgdG8gaGF2ZSBkcm1fIHByZWZpeCBmb3IgZXhw
b3J0IGZ1bmNpdG9uLgo+Cj4+Pgo+Pj4+ICsjZGVmaW5lIERQQ0RfRURQX0dFVFNFVF9DVFJMX1BB
UkFNUwkJMHgzNDQKPj4+PiArI2RlZmluZSBEUENEX0VEUF9DT05URU5UX0xVTUlOQU5DRQkJMHgz
NDYKPj4+PiArI2RlZmluZSBEUENEX0VEUF9QQU5FTF9MVU1JTkFOQ0VfT1ZFUlJJREUJMHgzNGEK
Pj4+PiArI2RlZmluZSBEUENEX0VEUF9CUklHSFRORVNTX05JVFMJCTB4MzU0Cj4+Pj4gKyNkZWZp
bmUgRFBDRF9FRFBfQlJJR0hUTkVTU19PUFRJTUlaQVRJT04JMHgzNTgKPj4+PiArCj4+Pj4gKyNk
ZWZpbmUgRURQX0NVU1RPTUlaRV9NQVhfQlJJR0hUTkVTU19MRVZFTAkoNTEyKQo+Pj4KPj4+IFRo
aXMgYWxzbyBzZWVtcyBhIGJpdCB3ZWlyZCwgdGhlIDB4MzAwLTB4M0ZGIHJlZ2lzdGVycyBiZWxv
bmcgdG8gdGhlIAo+Pj4gX3NvdXJjZV8gRFAgZGV2aWNlLiBCdXQgdGhlbiBsYXRlci4uLgo+Pj4K
Pj4+PiArCS8qIHdyaXRlIHNvdXJjZSBPVUkgKi8KPj4+PiArCXdyaXRlX3ZhbFswXSA9IDB4MDA7
Cj4+Pj4gKwl3cml0ZV92YWxbMV0gPSAweGFhOwo+Pj4+ICsJd3JpdGVfdmFsWzJdID0gMHgwMTsK
Pj4+Cj4+PiBPaCBoZXksIHlvdSdyZSB3cml0aW5nIChhbikgSW50ZWwgT1VJIHRvIHRoZSBTb3Vy
Y2UgT1VJLCBzbyBub3cgaXQgCj4+PiBtYWtlcyBzZW5zZSB0aGF0IHlvdSdyZSB3cml0aW5nIHRv
IHJlZ2lzdGVycyB3aG9zZSBiZWhhdmlvciB0aGUgc291cmNlIAo+Pj4gZGVmaW5lcy4gQnV0IHRo
aXMgZG9lcyByYWlzZSB0aGUgcXVlc3Rpb246IGlzIHRoaXMganVzdCBhIGNvbnZlbnRpb24gCj4+
PiBiZXR3ZWVuIEludGVsIGFuZCB0aGlzIHBhcnRpY3VsYXIgcGFuZWw/IFdvdWxkIHdlIGV4cGVj
dCB0aGlzIHRvIHdvcmsgCj4+PiB3aXRoIG90aGVyIHNpbWlsYXIgcGFuZWxzPyBJcyB0aGVyZSBh
bnkgd2F5IHRvIGtub3cgdG8gZXhwZWN0IHRoaXMgCj4+PiBjb252ZW50aW9uIGZyb20gRFBDRCBp
bnN0ZWFkPwo+Cj4gVENPTiB3b3VsZCByZXBseSBvbiBzb3VyY2UgT1VJIHRvIGNvbmZpZ3VyZSBp
dHMgY2FwYWJpbGl0eS4gQW5kIHRoZXNlCj4gRFBDRCByZWdpc3RlcnMgd2VyZSBkZWZpbmVkIGJ5
IHZlbmRvciBhbmQgSW50ZWwuIFRoaXMgY2hhbmdlIHNob3VsZCB3b3Jrcwo+IHdpdGggc2ltaWxh
ciBwYW5lbHMgKHdpdGggc2FtZSBUQ09OKS4gU2VlbXMgdGhlcmUgaXMgYW5vdGhlciBpc3N1ZSBz
bwo+IHZlbmRvciBkZWNpZGUgdG8gdXNlIG5vbiBzdGFuZGFyZCB3YXkgdG8gc2V0dXAgYnJpZ2h0
bmVzcy4KPgo+PkZvciBvbmUgdGhpbmcsIGl0J3Mgbm90IHN0YW5kYXJkLiBJIGhvbmVzdGx5IGRv
bid0IGtub3csIGJ1dCBJJ2QgYXNzdW1lCj4+eW91IHdvdWxkbid0IGZpbmQgYmVoYXZpb3VyIHdp
dGggSW50ZWwgT1VJIGluIG5vbi1JbnRlbCBkZXNpZ25zLi4uIGFuZCBhCj4+cXVpcmsgb2Ygc29t
ZSBzb3J0IHNlZW1zIGxpa2UgdGhlIG9ubHkgd2F5IHRvIG1ha2UgdGhpcyB3b3JrLgo+Pgo+Pkkg
c3VwcG9zZSB3ZSBjb3VsZCBzdGFydCBvZmYgd2l0aCBhIERQQ0QgcXVpcmsgdGhhdCBvbmx5IGxv
b2tzIGF0IHRoZQo+PnNpbmsgT1VJLCBhbmQgdGhlbiwgaWYgbmVlZGVkLCBsaW1pdCBieSBETUkg
bWF0Y2hpbmcgb3IgYnkgY2hlY2tpbmcgZm9yCj4+c29tZSBEUENEIHJlZ2lzdGVycyAod2hhdCwg
SSBhbSBub3Qgc3VyZSwgcGVyaGFwcyB3cml0ZSB0aGUgc291cmNlIE9VSQo+PmFuZCBzZWUgaG93
IGl0IGJlaGF2ZXMpLgo+Pgo+PlRoYXQgd291bGQgYXZvaWQgdGhlIG1pbGRseSBhbm5veWluZyBj
aGFuZ2UgaW4gdGhlIEVESUQgcXVpcmsgaW50ZXJmYWNlCj4+YW5kIGhvdyBpdCdzIGJlaW5nIHVz
ZWQuCj4+Cj4+VGhvdWdodHM/Cj4+Cj4+Cj4+QlIsCj4+SmFuaS4KPj4KPgo+IFRvIGJlIGhvbmVz
dC4gUGFuZWwgdmVuZG9yIGRpZCBub3QgcHJvdmlkZSBlbm91Z2ggc2luayBpbmZvIGluIERQQ0Qu
Cj4gVGhhdCdzIHdoeSBoYXJkIHRvIHJlY29nbml6ZSBpdCBhbmQgd2UgaGF2ZSB0byBjb25maXJt
IEVESUQgaW5zdGVhZCBvZiBEUENELgo+Cj4gRG8geW91IG1lYW4ganVzdCBjb25maXJtIHNpbmsg
T1VJIG9ubHkgZnJvbSBEUENEIHF1aXJrPyBJJ20gYWZyYWlkIGl0Cj4gbWF5IGltcGFjdCB0aGUg
b3RoZXIgcGFuZWxzIHdpdGggdGhlIHNhbWUgVENPTi4gQW55IHN1Z2dlc3Rpb24/CgpUaGUgcHJv
YmxlbSB3aXRoIHRoZSBFRElEIHF1aXJrcyBpcyB0aGF0IGV4cG9zaW5nIHRoZSBxdWlya3Mgc3Rp
Y2tzIG91dApsaWtlIGEgc29yZSB0aHVtYi4gVGh1cyBmYXIgYWxsIG9mIGl0IGhhcyBiZWVuIGNv
bnRhaW5lZCBpbiBkcm1fZWRpZC5jCmFuZCB0aGV5IGFmZmVjdCBob3cgdGhlIEVESUQgZ2V0cyBw
YXJzZWQsIGZvciBhbGwgZHJpdmVycy4gT2J2aW91c2x5CnRoaXMgY291bGQgYmUgY2hhbmdlZCwg
YnV0IGlzIGl0IHRoZSByaWdodCB0aGluZyB0byBkbz8KCldoYXQgSSBzdWdnZXN0ZWQgd2FzLCBj
aGVjayB0aGUgT1VJIG9ubHksIGFuZCBpZiBpdCBtYXRjaGVzLCBkbwptb3JlLiBQZXJoYXBzIHRo
ZXJlJ3Mgc29tZXRoaW5nIGluIHRoZSAweDMwMCByYW5nZSBvZiBEUENEIG9mZnNldHMgdGhhdAp5
b3UgY2FuIHJlYWQ/IE9yIHBlcmhhcHMgeW91IG5lZWQgdG8gd3JpdGUgdGhlIHNvdXJjZSBPVUkg
Zmlyc3QsIGFuZAp0aGVuIGRvIHRoYXQuCgpCUiwKSmFuaS4KCgo+Cj4+Cj4+LS0KPj5KYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4+CgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
