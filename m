Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E17C3BE044
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 02:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75B96E7DC;
	Wed,  7 Jul 2021 00:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB416E7DC;
 Wed,  7 Jul 2021 00:28:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209173973"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="209173973"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:28:22 -0700
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="481771723"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:28:19 -0700
Date: Wed, 7 Jul 2021 05:59:58 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210707002958.GA26377@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
 <20210705135310.1502437-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705135310.1502437-2-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/uapi: convert
 drm_i915_gem_caching to kernel doc
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNy0wNSBhdCAxNDo1MzowNyArMDEwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IENv
bnZlcnQgYWxsIHRoZSBkcm1faTkxNV9nZW1fY2FjaGluZyBiaXRzIHRvIHByb3BlciBrZXJuZWwg
ZG9jLgo+IAo+IFN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+
IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KTEdU
TS4KClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4g
Q2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4K
PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4K
PiBDYzogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwuanVzdGVuQGludGVsLmNvbT4KPiBDYzogS2Vu
bmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+Cj4gQ2M6IEphc29uIEVrc3RyYW5k
IDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4KPiBDYzogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+
IC0tLQo+ICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggfCA3MCArKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCsp
LCAyNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1
X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4gaW5kZXggMmY3MGM0ODU2N2Mw
Li5kMTNjNmM1ZmFkMDQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5o
Cj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4gQEAgLTEzNjMsNDMgKzEzNjMs
NTkgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9idXN5IHsKPiAgfTsKPiAgCj4gIC8qKgo+IC0gKiBJ
OTE1X0NBQ0hJTkdfTk9ORQo+ICsgKiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NhY2hpbmcgLSBTZXQg
b3IgZ2V0IHRoZSBjYWNoaW5nIGZvciBnaXZlbiBvYmplY3QKPiArICogaGFuZGxlLgo+ICAgKgo+
IC0gKiBHUFUgYWNjZXNzIGlzIG5vdCBjb2hlcmVudCB3aXRoIGNwdSBjYWNoZXMuIERlZmF1bHQg
Zm9yIG1hY2hpbmVzIHdpdGhvdXQgYW4KPiAtICogTExDLgo+IC0gKi8KPiAtI2RlZmluZSBJOTE1
X0NBQ0hJTkdfTk9ORQkJMAo+IC0vKioKPiAtICogSTkxNV9DQUNISU5HX0NBQ0hFRAo+ICsgKiBB
bGxvdyB1c2Vyc3BhY2UgdG8gY29udHJvbCB0aGUgR1RUIGNhY2hpbmcgYml0cyBmb3IgYSBnaXZl
biBvYmplY3Qgd2hlbiB0aGUKPiArICogb2JqZWN0IGlzIGxhdGVyIG1hcHBlZCB0aHJvdWdoIHRo
ZSBwcEdUVChvciBHR1RUIG9uIG9sZGVyIHBsYXRmb3JtcyBsYWNraW5nCj4gKyAqIHBwR1RUIHN1
cHBvcnQsIG9yIGlmIHRoZSBvYmplY3QgaXMgdXNlZCBmb3Igc2Nhbm91dCkuIE5vdGUgdGhhdCB0
aGlzIG1pZ2h0Cj4gKyAqIHJlcXVpcmUgdW5iaW5kaW5nIHRoZSBvYmplY3QgZnJvbSB0aGUgR1RU
IGZpcnN0LCBpZiBpdHMgY3VycmVudCBjYWNoaW5nIHZhbHVlCj4gKyAqIGRvZXNuJ3QgbWF0Y2gu
Cj4gICAqCj4gLSAqIEdQVSBhY2Nlc3MgaXMgY29oZXJlbnQgd2l0aCBjcHUgY2FjaGVzIGFuZCBm
dXJ0aGVybW9yZSB0aGUgZGF0YSBpcyBjYWNoZWQgaW4KPiAtICogbGFzdC1sZXZlbCBjYWNoZXMg
c2hhcmVkIGJldHdlZW4gY3B1IGNvcmVzIGFuZCB0aGUgZ3B1IEdULiBEZWZhdWx0IG9uCj4gLSAq
IG1hY2hpbmVzIHdpdGggSEFTX0xMQy4KPiAtICovCj4gLSNkZWZpbmUgSTkxNV9DQUNISU5HX0NB
Q0hFRAkJMQo+IC0vKioKPiAtICogSTkxNV9DQUNISU5HX0RJU1BMQVkKPiAgICoKPiAtICogU3Bl
Y2lhbCBHUFUgY2FjaGluZyBtb2RlIHdoaWNoIGlzIGNvaGVyZW50IHdpdGggdGhlIHNjYW5vdXQg
ZW5naW5lcy4KPiAtICogVHJhbnNwYXJlbnRseSBmYWxscyBiYWNrIHRvIEk5MTVfQ0FDSElOR19O
T05FIG9uIHBsYXRmb3JtcyB3aGVyZSBubyBzcGVjaWFsCj4gLSAqIGNhY2hlIG1vZGUgKGxpa2Ug
d3JpdGUtdGhyb3VnaCBvciBnZmR0IGZsdXNoaW5nKSBpcyBhdmFpbGFibGUuIFRoZSBrZXJuZWwK
PiAtICogYXV0b21hdGljYWxseSBzZXRzIHRoaXMgbW9kZSB3aGVuIHVzaW5nIGEgYnVmZmVyIGFz
IGEgc2Nhbm91dCB0YXJnZXQuCj4gLSAqIFVzZXJzcGFjZSBjYW4gbWFudWFsbHkgc2V0IHRoaXMg
bW9kZSB0byBhdm9pZCBhIGNvc3RseSBzdGFsbCBhbmQgY2xmbHVzaCBpbgo+IC0gKiB0aGUgaG90
cGF0aCBvZiBkcmF3aW5nIHRoZSBmaXJzdCBmcmFtZS4KPiAgICovCj4gLSNkZWZpbmUgSTkxNV9D
QUNISU5HX0RJU1BMQVkJCTIKPiAtCj4gIHN0cnVjdCBkcm1faTkxNV9nZW1fY2FjaGluZyB7Cj4g
IAkvKioKPiAtCSAqIEhhbmRsZSBvZiB0aGUgYnVmZmVyIHRvIHNldC9nZXQgdGhlIGNhY2hpbmcg
bGV2ZWwgb2YuICovCj4gKwkgKiBAaGFuZGxlOiBIYW5kbGUgb2YgdGhlIGJ1ZmZlciB0byBzZXQv
Z2V0IHRoZSBjYWNoaW5nIGxldmVsLgo+ICsJICovCj4gIAlfX3UzMiBoYW5kbGU7Cj4gIAo+ICAJ
LyoqCj4gLQkgKiBDYWNoZWluZyBsZXZlbCB0byBhcHBseSBvciByZXR1cm4gdmFsdWUKPiArCSAq
IEBjYWNoaW5nOiBUaGUgR1RUIGNhY2hpbmcgbGV2ZWwgdG8gYXBwbHkgb3IgcG9zc2libGUgcmV0
dXJuIHZhbHVlLgo+ICsJICoKPiArCSAqIFRoZSBzdXBwb3J0ZWQgQGNhY2hpbmcgdmFsdWVzOgo+
ICAJICoKPiAtCSAqIGJpdHMwLTE1IGFyZSBmb3IgZ2VuZXJpYyBjYWNoaW5nIGNvbnRyb2wgKGku
ZS4gdGhlIGFib3ZlIGRlZmluZWQKPiAtCSAqIHZhbHVlcykuIGJpdHMxNi0zMSBhcmUgcmVzZXJ2
ZWQgZm9yIHBsYXRmb3JtLXNwZWNpZmljIHZhcmlhdGlvbnMKPiAtCSAqIChlLmcuIGwzJCBjYWNo
aW5nIG9uIGdlbjcpLiAqLwo+ICsJICogSTkxNV9DQUNISU5HX05PTkU6Cj4gKwkgKgo+ICsJICog
R1BVIGFjY2VzcyBpcyBub3QgY29oZXJlbnQgd2l0aCBDUFUgY2FjaGVzLiAgRGVmYXVsdCBmb3Ig
bWFjaGluZXMKPiArCSAqIHdpdGhvdXQgYW4gTExDLiBUaGlzIG1lYW5zIHdlIG5lZWQgdG8gbWFu
dWFsbHkgY2xmbHVzaCwgaWYgd2Ugd2FudAo+ICsJICogR1BVIGFjY2VzcyB0byBiZSBjb2hlcmVu
dC4KPiArCSAqCj4gKwkgKiBJOTE1X0NBQ0hJTkdfQ0FDSEVEOgo+ICsJICoKPiArCSAqIEdQVSBh
Y2Nlc3MgaXMgY29oZXJlbnQgd2l0aCBDUFUgY2FjaGVzIGFuZCBmdXJ0aGVybW9yZSB0aGUgZGF0
YSBpcwo+ICsJICogY2FjaGVkIGluIGxhc3QtbGV2ZWwgY2FjaGVzIHNoYXJlZCBiZXR3ZWVuIENQ
VSBjb3JlcyBhbmQgdGhlIEdQVSBHVC4KPiArCSAqIERlZmF1bHQgb24gbWFjaGluZXMgd2l0aCBI
QVNfTExDLiBJbiBnZW5lcmFsIHRoZSBmYXN0IHNoYXJlZAo+ICsJICogbGFzdC1sZXZlbCBjYWNo
ZShIQVNfTExDKSBpcyBjb25zaWRlcmVkIG11Y2ggZmFzdGVyIHRoZW4gcGxhdGZvcm1zCj4gKwkg
KiB3aGljaCBvbmx5IHN1cHBvcnQgc25vb3BpbmcoSEFTX1NOT09QKSwgaGVuY2UgYnkgZGVmYXVs
dAo+ICsJICoKPiArCSAqIEk5MTVfQ0FDSElOR19ESVNQTEFZOgo+ICsJICoKPiArCSAqIFNwZWNp
YWwgR1BVIGNhY2hpbmcgbW9kZSB3aGljaCBpcyBjb2hlcmVudCB3aXRoIHRoZSBzY2Fub3V0IGVu
Z2luZXMuCj4gKwkgKiBUcmFuc3BhcmVudGx5IGZhbGxzIGJhY2sgdG8gSTkxNV9DQUNISU5HX05P
TkUgb24gcGxhdGZvcm1zIHdoZXJlIG5vCj4gKwkgKiBzcGVjaWFsIGNhY2hlIG1vZGUgKGxpa2Ug
d3JpdGUtdGhyb3VnaCBvciBnZmR0IGZsdXNoaW5nKSBpcwo+ICsJICogYXZhaWxhYmxlLiBUaGUg
a2VybmVsIGF1dG9tYXRpY2FsbHkgc2V0cyB0aGlzIG1vZGUgd2hlbiB1c2luZyBhCj4gKwkgKiBi
dWZmZXIgYXMgYSBzY2Fub3V0IHRhcmdldC4gIFVzZXJzcGFjZSBjYW4gbWFudWFsbHkgc2V0IHRo
aXMgbW9kZSB0bwo+ICsJICogYXZvaWQgYSBjb3N0bHkgc3RhbGwgYW5kIGNsZmx1c2ggaW4gdGhl
IGhvdHBhdGggb2YgZHJhd2luZyB0aGUgZmlyc3QKPiArCSAqIGZyYW1lLgo+ICsJICoKPiArCSAq
IFNpZGUgbm90ZTogT24gZ2VuOCsgdGhpcyBubyBsb25nZXIgZG9lcyBtdWNoIHNpbmNlIHdlIGxv
c3QgdGhlIEdHVFQKPiArCSAqIGNhY2hpbmcgYml0cy4gQWx0aG91Z2ggc2V0dGluZyB0aGlzIGlz
IGhhcm1sZXNzLCBzaW5jZSBpdCBzdGlsbAo+ICsJICogZWZmZWN0aXZlbHkgZmFsbHMgYmFjayB0
byBJOTE1X0NBQ0hJTkdfTk9ORS4KPiArCSAqLwo+ICsjZGVmaW5lIEk5MTVfQ0FDSElOR19OT05F
CQkwCj4gKyNkZWZpbmUgSTkxNV9DQUNISU5HX0NBQ0hFRAkJMQo+ICsjZGVmaW5lIEk5MTVfQ0FD
SElOR19ESVNQTEFZCQkyCj4gIAlfX3UzMiBjYWNoaW5nOwo+ICB9Owo+ICAKPiAtLSAKPiAyLjI2
LjMKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
