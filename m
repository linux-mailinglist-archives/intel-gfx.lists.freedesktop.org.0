Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0ECAF880
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 11:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571866EA64;
	Wed, 11 Sep 2019 09:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FF76EA64
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 09:06:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 02:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="200481406"
Received: from kropac-mobl.ger.corp.intel.com (HELO localhost) ([10.252.54.11])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2019 02:06:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20190910211907.GA32065@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <87pnk81ouo.fsf@intel.com> <20190910180729.GB31258@intel.com>
 <20190910211907.GA32065@intel.com>
Date: Wed, 11 Sep 2019 12:08:00 +0300
Message-ID: <87r24nurnz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/6] Remaining patches to enable Transcoder
 Port Sync for tiled displays
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

T24gVHVlLCAxMCBTZXAgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTE6MDc6MzBBTSAtMDcwMCwg
TWFuYXNpIE5hdmFyZSB3cm90ZToKPj4gT24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTI6Mjk6MTlQ
TSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+ID4gT24gU3VuLCAwOCBTZXAgMjAxOSwgTWFu
YXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4gd3JvdGU6Cj4+ID4gPiBUaGlz
IHBhdGNoIHNlcmllcyBhZGRyZXNzZXMgYWxsIHJldmlldyBjb21tZW50cyBhbmQgbm93IHRoZSBl
bmFibGUgYW5kCj4+ID4gPiBkaXNhYmxlIHBhdGhzIGZvbGxvdyB0aGUgbWV0aG9kIG9mIG9idGFp
bmluZyBzbGF2ZSBzdGF0ZXMgZnJvbSBtYXN0ZXIKPj4gPiA+IGFuZCB1cGRhdGluZyBtYXN0ZXIt
c2xhdmVzIGluIGNvcnJlY3Qgb3JkZXIgZHVyaW5nIG1hc3RlciBtb2Rlc2V0Lgo+PiA+IAo+PiA+
IE1haW4gaGlnaCBsZXZlbCBxdWVzdGlvbjogd2hhdCBkb2VzIGl0IHRha2UgdG8gZW5hYmxlIHRo
aXMgb24gZ2VuOSs/Cj4+IAo+PiBBcyBwZXIgdGhlIEJzcGVjIHByb2plY3QgcGxhdGZvcm1zLCB0
aGUgZmlyc3QgcGxhdGZvcm0gdGhhdCBzdXBwb3J0cyB0aGlzIGlzCj4+IElDTAo+Cj4gSGkgSmFu
aSwKPgo+IEFwcGFyZW50bHkgdGhlIEJzcGVjIGNhdXNlZCBzb21lIGNvbmZ1c2lvbiwgYWZ0ZXIg
ZG91YmxlIGNoZWNraW5nIHdpdGggdGhlCj4gSFcgdGVhbXMgaGVyZSwgdGhpcyBmZWF0dXJlIGlz
IGVuYWJsZWQgc3RhcnRpbmcgQkRXIGZvciB0aGUgU1NUIGNvbm5lY3RvcnMKPiBhbmQgb25seSB0
aGUgTVNUIHN1cHBvcnQgaXMgbmV3IHRvIEdlbiAxMSsuCj4KPiBTbyBpIGd1ZXNzIEkgY2FuIGNo
YW5nZSB0aGUgcGF0Y2hlcyB0byBhZGQgc3VwcG9ydCBzdGFydGluZyBCRFcgYW5kCj4gdGhpcyBz
aG91bGQgYWxzbyBmaXggdGhlIDVLIHRpbGVkIGRpc3BsYXkgaXNzdWUgdGhhdCBBbmtpdCBoYXMg
YmVlbgo+IHdvcmtpbmcgb24KClRoYW5rcyEgSSBkb24ndCBtaW5kIGdldHRpbmcgdGhlIHBhdGNo
ZXMgbWVyZ2VkIGZvciBJQ0wrIGF0IGZpcnN0LCBhbmQKdXBkYXRpbmcgdG8gY292ZXIgb2xkZXIg
Z2VucyBpbiBmb2xsb3ctdXAuCgpCUiwKSmFuaS4KCgo+Cj4gTWFuYXNpCj4KPj4gCj4+IFJlZ2Fy
ZHMKPj4gTWFuYXNpCj4+IAo+PiA+IAo+PiA+IEJSLAo+PiA+IEphbmkuCj4+ID4gCj4+ID4gCj4+
ID4gLS0gCj4+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
