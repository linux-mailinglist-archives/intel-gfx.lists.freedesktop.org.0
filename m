Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A31BA7CC6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 09:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730EE89349;
	Wed,  4 Sep 2019 07:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4C089349
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 07:28:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 00:28:17 -0700
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="190076239"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 00:28:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190903165227.6056-2-shashank.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903165227.6056-2-shashank.sharma@intel.com>
Date: Wed, 04 Sep 2019 10:28:11 +0300
Message-ID: <87h85s4j1w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Indicate integer up-scaling
 ratios
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMyBTZXAgMjAxOSwgU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50
ZWwuY29tPiB3cm90ZToKPiBJZiB0aGUgdXBzY2FsaW5nIHJhdGlvIGlzIGEgY29tcGxldGUgaW50
ZWdlciwgSW50ZWwgZGlzcGxheSBIVyBjYW4KPiBwaWNrdXAgc3BlY2lhbCBzY2FsaW5nIG1vZGUs
IHdoaWNoIGNhbiBwcm9kdWNlIGJldHRlciBub24tYmx1cnJ5Cj4gb3V0cHV0cy4gVGhpcyBwYXRj
aCBhZGRzIGEgY2hlY2sgdG8gaW5kaWNhdGUgaWYgdGhpcyBpcyBzdWNoIGFuIHVwc2NhbGluZwo+
IG9wcG9ydHVuaXR5LCB3aGlsZSBjYWxjdWxhdGluZyB0aGUgc2NhbGVyIGNvbmZpZywgYW5kIHN0
b3JlcyBpdCBpbnRvIHNjYWxlcgo+IHN0YXRlLgo+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
Pgo+IENjOiBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMjEgKysr
KysrKysrKysrKysrKysrKwo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgNyArKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBp
bmRleCBlZTU0ZDk2NTljOTkuLjYxMzEzMGRiM2MwNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTUzODgsNiArNTM4OCwxOSBAQCB1
MTYgc2tsX3NjYWxlcl9jYWxjX3BoYXNlKGludCBzdWIsIGludCBzY2FsZSwgYm9vbCBjaHJvbWFf
Y29zaXRlZCkKPiAgI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JDX1cgMTYKPiAgI2RlZmluZSBT
S0xfTUlOX1lVVl80MjBfU1JDX0ggMTYKPiAgCj4gK3N0YXRpYyBpbmxpbmUgYm9vbAoKUGxlYXNl
IGRvbid0IGFkZCBzdXBlcmZsdW91cyBpbmxpbmVzIHRvIHN0YXRpYyBmdW5jdGlvbnMgaW4gLmMK
ZmlsZXMuIExldCB0aGUgY29tcGlsZXIgZG8gaXRzIGpvYi4KCkJSLApKYW5pLgoKPiArc2NhbGlu
Z19yYXRpb19pbnRlZ2VyKGludCBzcmNfdywgaW50IGRzdF93LCBpbnQgc3JjX2gsIGludCBkc3Rf
aCkKPiArewo+ICsJLyogSW50ZWdlciBtb2RlIHNjYWxpbmcgaXMgYXBwbGljYWJsZSBvbmx5IGZv
ciB1cHNjYWxpbmcgc2NlbmFyaW9zICovCj4gKwlpZiAoZHN0X3cgPCBzcmNfdyB8fCBkc3RfaCA8
IHNyY19oKQo+ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwlpZiAoZHN0X3cgJSBzcmNfdyA9PSAw
ICYmIGRzdF9oICUgc3JjX2ggPT0gMCkKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlyZXR1cm4g
ZmFsc2U7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQKPiAgc2tsX3VwZGF0ZV9zY2FsZXIoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIGJvb2wgZm9yY2VfZGV0YWNoLAo+ICAJCSAg
dW5zaWduZWQgaW50IHNjYWxlcl91c2VyLCBpbnQgKnNjYWxlcl9pZCwKPiBAQCAtNTQyMiw2ICs1
NDM1LDE0IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLCBib29sIGZvcmNlX2RldGFjaCwKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAg
Cj4gKwkvKgo+ICsJICogSWYgd2UgYXJlIHVwc2NhbGluZywgYW5kIHRoZSBzY2FsaW5nIHJhdGlv
cyBhcmUgaW50ZWdlciwgd2UgY2FuCj4gKwkgKiBwaWNrIG5lYXJlc3QtbmVpZ2hib3VyIG1ldGhv
ZCBpbiBIVyBmb3Igc2NhbGluZywgd2hpY2ggcHJvZHVjZXMKPiArCSAqIGJsdXJsZXNzIG91dHB1
dHMgaW4gc3VjaCBzY2VuYXJpb3MuCj4gKwkgKi8KPiArCWlmIChzY2FsaW5nX3JhdGlvX2ludGVn
ZXIoc3JjX3csIGRzdF93LCBzcmNfaCwgZHN0X2gpKQo+ICsJCXNjYWxlcl9zdGF0ZS0+aW50ZWdl
cl9zY2FsaW5nID0gdHJ1ZTsKPiArCj4gIAkvKgo+ICAJICogaWYgcGxhbmUgaXMgYmVpbmcgZGlz
YWJsZWQgb3Igc2NhbGVyIGlzIG5vIG1vcmUgcmVxdWlyZWQgb3IgZm9yY2UgZGV0YWNoCj4gIAkg
KiAgLSBmcmVlIHNjYWxlciBiaW5kZWQgdG8gdGhpcyBwbGFuZS9jcnRjCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBpbmRleCAz
YzFhNWYzZTFkMjIuLjZiYjMyZmJmMzE1MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTYxMyw2ICs2MTMsMTMg
QEAgc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlIHsKPiAgCj4gIAkvKiBzY2FsZXIgdXNl
ZCBieSBjcnRjIGZvciBwYW5lbCBmaXR0aW5nIHB1cnBvc2UgKi8KPiAgCWludCBzY2FsZXJfaWQ7
Cj4gKwo+ICsJLyoKPiArCSAqIE5lYXJlc3QtbmVpZ2hib3IgbWV0aG9kIG9mIHVwc2NhbGluZyBn
aWV2ZXMgYmx1cmxlc3Mgb3V0cHV0IGlmCj4gKwkgKiB0aGUgdXBzY2FsaW5nIHJhdGlvIGlzIGEg
Y29tcGxldGUgaW50ZWdlci4gVGhpcyBib29sIGlzIHRvIGluZGljYXRlCj4gKwkgKiBzdWNoIGFu
IG9wcG9ydHVuaXR5Lgo+ICsJICovCj4gKwlib29sIGludGVnZXJfc2NhbGluZzsKPiAgfTsKPiAg
Cj4gIC8qIGRybV9tb2RlLT5wcml2YXRlX2ZsYWdzICovCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
