Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08910F138
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 09:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1550689452;
	Tue, 30 Apr 2019 07:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6FB89452
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 07:24:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 00:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="146919013"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.88.66])
 by orsmga003.jf.intel.com with ESMTP; 30 Apr 2019 00:24:08 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <87a7g9rmje.fsf@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
 <770f5f1c2dd99e4d6a314b70184e71b928a6d362.1556540890.git.jani.nikula@intel.com>
 <155654191148.27886.16635270994402996173@skylake-alporthouse-com>
 <87a7g9rmje.fsf@intel.com>
Message-ID: <155660904725.8345.13603335266649148461@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 30 Apr 2019 10:24:07 +0300
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915: move some leftovers to
 intel_pm.h from i915_drv.h
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNC0yOSAxNjowMzozMykKPiBPbiBNb24sIDI5IEFw
ciAyMDE5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTA0LTI5IDEzOjI5OjM3KQo+ID4+IENvbW1pdCA2
OTYxNzNiMDY0YzYgKCJkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9wbS5oIGZyb20gaW50ZWxfZHJ2
LmgiKQo+ID4+IG1pc3NlZCB0aGUgZGVjbGFyYXRpb25zIGluIGk5MTVfZHJ2LmguCj4gPgo+ID4g
RndpdywgSSB3YW50IHRvIHB1bGwgdGhlc2UgYWxvbmcgd2l0aCBndCBwb3dlcm1hbmFnZW1lbnQg
YW5kIHJwcyBpbnRvCj4gPiBndC9pbnRlbF9ndF9wbS5jIGFuZCBhIGZldyBmcmllbmRzLgo+ID4K
PiA+IERvZXNuJ3QgbWFrZSBtdWNoIGRpZmZlcmVuY2UgZm9yIHRoaXMgcGF0Y2g7IGp1c3QgcGxh
bm5lZCBvYnNvbGVzY2VuY2UuCj4gCj4gSSdtIGZpbmUgZWl0aGVyIHdheSwgdmlhIHRoaXMgcGF0
Y2ggb3IgZGlyZWN0bHkuCj4gCj4gSW4gZ2VuZXJhbCBJIGxpa2UgaG93IGl0J3MgZWFzaWVyIHRv
IGxvb2sgYXQgdGhlIG5ldyBoZWFkZXJzIGFuZCB3b25kZXIKPiB3aHkgb24gZWFydGggc29tZSBm
dW5jdGlvbnMgYXJlIGluIHRoZSBmaWxlcyB0aGV5IGFyZSwgYW5kIHRyeSB0byBjb21lCj4gdXAg
d2l0aCBiZXR0ZXIgZGl2aXNpb24gaW50byBmaWxlcy4KPiAKPiAtLS0KPiAKPiBJJ20gYWxzbyB0
cnlpbmcgdG8gcHJvYmUgZmVlZGJhY2sgb24gc29tZSBzdHlsZSBndWlkZWxpbmVzIEkgbWlnaHQg
bGlrZQo+IHRvIGVuZm9yY2UgaW4gdGhlIGZ1dHVyZToKPiAKPiAxKSBBIGZpbGUgYW5kIHRoZSBu
b24tc3RhdGljIGZ1bmN0aW9ucyBpbiBpdCBzaG91bGQgaGF2ZSB0aGUgc2FtZQo+ICAgIHByZWZp
eCwgaS5lLiBpbnRlbF9mb28uYyBoYXMgZnVuY3Rpb25zIHByZWZpeGVkIGludGVsX2Zvb18qLgo+
IAo+IDIpIE5vIGZpbGUgc2hvdWxkIGhhdmUgcGxhdGZvcm0gc3BlY2lmaWMgbm9uLXN0YXRpYyBm
dW5jdGlvbnMsIGkuZS4gYWxsCj4gICAgdGhlIG5vbi1zdGF0aWMgZnVuY3Rpb25zIHNob3VsZCBi
ZSBpbnRlbF9mb29fKiBhbmQgdGhpcyBzaG91bGQKPiAgICBpbnRlcm5hbGx5IHNwbGl0IHRvIHBs
YXRmb3JtX2Zvb18qIGluc3RlYWQgb2YgbGVhdmluZyB0aGUgaWYgbGFkZGVycwo+ICAgIG9yIGZ1
bmN0aW9uIHBvaW50ZXIgaW5pdGlhbGl6YXRpb25zIHRvIHRoZSBjYWxsZXJzLgoKQWdyZWVkIG9u
IHRoZXNlLiBHRU0gc2lkZSBoYXMgYmVlbiBtb3ZpbmcgdG8gdGhpcyBkaXJlY3Rpb24gc2xvd2x5
LgoKPiBTbywgdGhvdWdodHMgb24gbmFtaW5nIHRoZSBmdW5jdGlvbnMgaW50ZWxfZ3RfcG1fKiB1
cG9uIG1vdmluZyB0aGVtPwoKU291bmRzIHJlYXNvbmFibGUgdG8gbWUuCgpSZWdhcmRzLCBKb29u
YXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
