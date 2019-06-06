Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5521536E8A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 10:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E47789270;
	Thu,  6 Jun 2019 08:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44ADB89270
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 08:25:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 01:25:35 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2019 01:25:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
 <20190605215107.GA14368@intel.com>
 <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
Date: Thu, 06 Jun 2019 11:28:39 +0300
Message-ID: <87y32f15jc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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

T24gV2VkLCAwNSBKdW4gMjAxOSwgTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6NTE6MDhQTSAtMDcwMCwgTWFu
YXNpIE5hdmFyZSB3cm90ZToKPj4gT24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6MTg6MzJQTSAt
MDcwMCwgTWF0dCBSb3BlciB3cm90ZToKPj4gPiBVbmxpa2UgSUNMLCBFSEwncyBjb21ibyBQSFlz
IGNhbiBzdXBwb3J0IEhCUjMgZGF0YSByYXRlcy4gIE5vdGUgdGhhdAo+PiA+IHRoaXMganVzdCBl
eHRlbmRzIHRoZSB1cHBlciBsaW1pdDsgd2Ugd2lsbCBjb250aW51ZSB0byBob25vciB0aGUgbWF4
Cj4+ID4gZGF0YSByYXRlIHNwZWNpZmllZCBpbiB0aGUgVkJUIGluIGNhc2VzIHdoZXJlIGl0IGlz
IGxvd2VyIHRoYW4gSEJSMy4KPj4gPiAKPj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+PiAKPj4gWWVzIGxvb2tzIGdvb2QgdG8gbWUuCj4+
IAo+PiBSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNv
bT4KPj4gCj4+IE1hbmFzaQo+Cj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgcmV2aWV3LiAgQ0kgbG9v
a3MgaGFwcHkgdG9vLCBzbyBwdXNoZWQgdG8gZGlucS4KCkNJIGRpZG4ndCBhY3R1YWxseSByZXBv
cnQgZnVsbCBJR1QgcnVucyB5ZXQsIGp1c3QgdGhlIEJBVCByZXN1bHRzLgoKQlIsCkphbmkuCgoK
Pgo+Cj4gTWF0dAo+Cj4+IAo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcC5jIHwgMSArCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+PiA+IAo+
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+PiA+IGluZGV4IDI0YjU2YjJhNzZjOC4uYjA5OWE5
ZGMyOGZkIDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMK
Pj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4+ID4gQEAgLTMzMiw2
ICszMzIsNyBAQCBzdGF0aWMgaW50IGljbF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKPj4gPiAgCWVudW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsK
Pj4gPiAgCj4+ID4gIAlpZiAoaW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkg
JiYKPj4gPiArCSAgICAhSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmCj4+ID4gIAkgICAgIWlu
dGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4+ID4gIAkJcmV0dXJuIDU0MDAwMDsKPj4gPiAgCj4+
ID4gLS0gCj4+ID4gMi4xNC41Cj4+ID4gCj4+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+ID4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
