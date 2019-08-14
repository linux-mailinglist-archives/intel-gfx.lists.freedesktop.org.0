Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F268D537
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 15:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08026E5EF;
	Wed, 14 Aug 2019 13:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9486F6E5EF;
 Wed, 14 Aug 2019 13:45:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 06:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="328055697"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.30.104])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2019 06:45:48 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lukasz Kalamarz <lukasz.kalamarz@intel.com>, igt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <156578676134.10647.13792156620503442179@jlahtine-desk.ger.corp.intel.com>
References: <20190814102140.3275-1-lukasz.kalamarz@intel.com>
 <20190814102140.3275-3-lukasz.kalamarz@intel.com>
 <156577867063.2301.17355529603266735071@skylake-alporthouse-com>
 <156578676134.10647.13792156620503442179@jlahtine-desk.ger.corp.intel.com>
Message-ID: <156579034684.12626.12701872101760656075@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 14 Aug 2019 16:45:46 +0300
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH 2/4]
 lib/i915/intel_memory_region: Add lib to manage memory regions
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KyBBYmRpZWwvaW50ZWwtZ2Z4CgpRdW90aW5nIEpvb25hcyBMYWh0aW5lbiAoMjAxOS0wOC0xNCAx
NTo0NjowMSkKPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wOC0xNCAxMzozMToxMCkKPiA+
IFF1b3RpbmcgTHVrYXN6IEthbGFtYXJ6ICgyMDE5LTA4LTE0IDExOjIxOjM4KQo+ID4gPiArLyoq
Cj4gPiA+ICsgKiAgZ2VtX2dldF9wYWdlX3NpemU6Cj4gPiA+ICsgKiAgQGZkOiBvcGVuIGk5MTUg
ZHJtIGZpbGUgZGVzY3JpcHRvcgo+ID4gPiArICogIEBtZW1fcmVnaW9uX3R5cGU6IHVzZWQgbWVt
b3J5X3JlZ2lvbiB0eXBlCj4gPiA+ICsgKgo+ID4gPiArICogIFdpdGggaW50cm9kdWN0aW9uIG9m
IExNRU0gd2Ugb2JzZXJ2ZSBkaWZmZXJlbnQgcGFnZSBzaXplcyBmb3IgdGhvc2UgdHdvCj4gPiA+
ICsgKiAgbWVtb3J5IHJlZ2lvbnMuIFdpdGhvdXQgdGhpcyBoZWxwZXIgZnVuY3Rpb24gd2UgbWF5
IGJlIHByb25lIHRvIGZvcmdldAo+ID4gPiArICogIGFib3V0IHNldHRpbmcgcHJvcGVyIHBhZ2Ug
c2l6ZS4KPiA+ID4gKyAqLwo+ID4gPiArdWludDMyX3QgZ2VtX2dldF9iYXRjaF9zaXplKGludCBm
ZCwgdWludDhfdCBtZW1fcmVnaW9uX3R5cGUpCj4gPiA+ICt7Cj4gPiA+ICsgICAgICAgcmV0dXJu
IChtZW1fcmVnaW9uX3R5cGUgPT0gTE9DQUxfSTkxNV9ERVZJQ0VfTUVNT1JZKSA/IDY1NTM2IDog
NDA5NjsKPiA+IAo+ID4gWW91IGhhdmUgdG8gYmUga2lkZGluZyBtZS4gVGhpcywgdGhpcyBjb25z
dGl0dXRlcyBhIGZvcndhcmQgdGhpbmtpbmcgdUFQST8KPiAKPiBXZSBzaG91bGQgYmUganVzdCBm
aW5lIHJlcXVlc3RpbmcgdGhlIG1pbmltdW0gQk8gc2l6ZSB3ZSBuZWVkLCBsZXR0aW5nIHRoZSBL
TUQKPiByb3VuZCB0aGUgc2l6ZXMgdXAgYW5kIHJlYWRpbmcgYmFjayB0aGUgY3JlYXRlZCBCTyBz
aXplLgo+IAo+IChOb3cgdGhhdCB0aGUgcmVncmVzc2lvbiBoYXMgYmVlbiBmaXhlZCwgdG9vIDop
ICkKPiAKPiBTbyB0aGUgY29kZSBsb2dpYyBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIGZvbGxvdyB0
aGF0LgoKT24gYSBzZWNvbmQgdGhvdWdodCB3ZSBtYXkgYmUgYmV0dGVyIG9mZiByb3VuZGluZyB0
aGUgYmFja2luZyBzdG9yYWdlCnNpemUgdXAgdHJhbnNwYXJlbnRseS4KCkkgZ3Vlc3MgdGhlIHBy
aW1lIHF1ZXN0aW9uIGlzIHdoeSB3b3VsZCB0aGUgdXNlcnNwYWNlL0lHVCBjYXJlIGZvcgphY3R1
YWwgYmFja2luZyBzdG9yYWdlIHNpemU/CgpBYmRpZWwvTWF0dCwgaG93IHBhaW5mdWwgd291bGQg
aXQgYmUgdG8gcm91bmQgdGhlIGJhY2tpbmcgc3RvcmFnZSBzaXplCnVwLCBpcnJlc3BlY3RpdmUg
b2YgdGhlIEJPIHNpemU/CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
