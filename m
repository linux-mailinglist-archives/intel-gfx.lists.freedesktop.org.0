Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08222D4638
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 19:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF006EC67;
	Fri, 11 Oct 2019 17:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A086EC67
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 17:08:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 10:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="278182914"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by orsmga001.jf.intel.com with ESMTP; 11 Oct 2019 10:08:34 -0700
Date: Fri, 11 Oct 2019 10:08:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191011170832.cvbcoqji3wyjv3ij@ldmartin-desk1>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-7-lucas.demarchi@intel.com>
 <20191011120850.GN1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011120850.GN1208@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: prettify MST debug message
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMDM6MDg6NTBQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDZQTSAtMDcwMCwgTHVjYXMg
RGUgTWFyY2hpIHdyb3RlOgo+PiBzLz8vOi8gc28gaXQncyBnZXQgY29ycmVjdGx5IGNvbG9yZWQg
YnkgZG1lc2cuCj4KPldoYXQgZG8geW91IG1lYW4gY29ycmVjdGx5Pwo+Cj5UaGUgZGVidWcgbWVz
c2FnZSB3YXMgYXNraW5nIHRoZSBxdWVzdGlvbiAiKGlzKSBNU1Qgc3VwcG9ydGVkPyIKPkFmdGVy
IHRoaXMgaXQganVzdCBkZWNsYXJlcyB0aGF0IE1TVCBpcyBub3Qgc3VwcG9ydGVkLiBJIGd1ZXNz
IG5vIHJlYWwKPmRpZmZlcmVuY2Ugc28gSSBjb3VsZCBsaXZlIHdpdGggZWl0aGVyIG9uZS4KPgo+
VGhlIG9ubHkgdGhpbmcgdGhhdCBzbGlnaHRseSBib3RoZXJzIG1lIHdpdGggdGhlICc6JyBpcyB0
aGF0IHRoZQo+cG9ydC9zaW5rL21vZHBhcmFtIGFsc28gdXNlIGl0LCBidXQgaW4gYSBzbGlnaHRs
eSBkaWZmZXJlbnQgd2F5Cj5zbyB0aGUgIk1TVCBzdXBwb3J0ZWQ6IiAnOicgbG9va3MgYSBiaXQg
bmFrZWQuCgpXaGF0IEkgbWVhbiBpcyB0aGF0IGRtZXNnIHVzZXMgdGhlIGZpcnN0ICI6IiBhZnRl
ciBbXSB0byBjb2xvcml6ZS4KCkJlZm9yZToKKltFTkNPREVSOnh4Onl5eV0gTVNUIHN1cHBvcnQ/
IHBvcnQ6KiB5ZXMsIHNpbms6IHllcywgbW9kcGFyYW06IHllcwoKQWZ0ZXI6CipbRU5DT0RFUjp4
eDp5eXldIE1TVCBzdXBwb3J0OiogcG9ydDogeWVzLCBzaW5rOiB5ZXMsIG1vZHBhcmFtOiB5ZXMK
Ck5vdCByZWFsbHkgaW1wb3J0YW50LCBqdXN0IG1ha2VzIG1vcmUgc2Vuc2UgSU1PLgoKTHVjYXMg
RGUgTWFyY2hpCgo+Cj5SZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KPgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+PiBpbmRleCAzNDhhMDk4OTA2MTEuLjMzYTU1ZGE4OWNlOSAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBAQCAtNDQ1MCw3ICs0NDUwLDcg
QEAgaW50ZWxfZHBfY29uZmlndXJlX21zdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+PiAg
CQkmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlOwo+PiAgCWJvb2wgc2lua19jYW5fbXN0
ID0gaW50ZWxfZHBfc2lua19jYW5fbXN0KGludGVsX2RwKTsKPj4KPj4gLQlEUk1fREVCVUdfS01T
KCJbRU5DT0RFUjolZDolc10gTVNUIHN1cHBvcnQ/IHBvcnQ6ICVzLCBzaW5rOiAlcywgbW9kcGFy
YW06ICVzXG4iLAo+PiArCURSTV9ERUJVR19LTVMoIltFTkNPREVSOiVkOiVzXSBNU1Qgc3VwcG9y
dDogcG9ydDogJXMsIHNpbms6ICVzLCBtb2RwYXJhbTogJXNcbiIsCj4+ICAJCSAgICAgIGVuY29k
ZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLAo+PiAgCQkgICAgICB5ZXNubyhp
bnRlbF9kcC0+Y2FuX21zdCksIHllc25vKHNpbmtfY2FuX21zdCksCj4+ICAJCSAgICAgIHllc25v
KGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcF9tc3QpKTsKPj4gLS0KPj4gMi4yMy4wCj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+Cj4t
LSAKPlZpbGxlIFN5cmrDpGzDpAo+SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
