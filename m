Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78369EB06E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 13:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B3A6EC2D;
	Thu, 31 Oct 2019 12:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3756B6EC2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 12:40:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 05:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="199002817"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga008.fm.intel.com with ESMTP; 31 Oct 2019 05:40:38 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 12:40:37 +0000
Date: Thu, 31 Oct 2019 14:40:35 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: add the fake lmem region
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMTA6MjI6MzdQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IE9uIFR1ZSwgMjkgT2N0IDIwMTkgYXQgMTY6NTEsIE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSW50ZW5kZWQgZm9yIHVwc3RyZWFtIHRl
c3Rpbmcgc28gdGhhdCB3ZSBjYW4gc3RpbGwgZXhlcmNpc2UgdGhlIExNRU0KPiA+IHBsdW1iaW5n
IGFuZCAhaTkxNV9nZ3R0X2hhc19hcGVydHVyZSBwYXRocy4gU21va2UgdGVzdGVkIG9uIFNrdWxs
IENhbnlvbgo+ID4gZGV2aWNlLiBUaGlzIHdvcmtzIGJ5IGFsbG9jYXRpbmcgYW4gaW50ZWxfbWVt
b3J5X3JlZ2lvbiBmb3IgYSByZXNlcnZlZAo+ID4gcG9ydGlvbiBvZiBzeXN0ZW0gbWVtb3J5LCB3
aGljaCB3ZSB0cmVhdCBsaWtlIExNRU0uIEZvciB0aGUgTE1FTUJBUiB3ZQo+ID4gc3RlYWwgdGhl
IGFwZXJ0dXJlIGFuZCAxOjEgaXQgbWFwIHRvIHRoZSBzdG9sZW4gcmVnaW9uLgo+ID4KPiA+IFRv
IGVuYWJsZSBzaW1wbHkgc2V0IHRoZSBpOTE1IG1vZHBhcmFtIGZha2VfbG1lbV9zdGFydD0gb24g
dGhlIGtlcm5lbAo+ID4gY21kbGluZSB3aXRoIHRoZSBzdGFydCBvZiByZXNlcnZlZCByZWdpb24o
c2VlIG1lbW1hcD0pLiBUaGUgc2l6ZSBvZiB0aGUKPiA+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlzIGRl
dGVybWluZWQgYnkgdGhlIHNpemUgb2YgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+ID4gdGhl
IHNpemUgb2YgcmVzZXJ2ZWQgcmVnaW9uIHNob3VsZCBiZSA+PSBtYXBwYWJsZV9lbmQuIEZvciBu
b3cgd2Ugb25seQo+ID4gZW5hYmxlIGZvciB0aGUgc2VsZnRlc3RzLiBEZXBlbmRzIG9uIENPTkZJ
R19EUk1fSTkxNV9VTlNUQUJMRSBiZWluZwo+ID4gZW5hYmxlZC4KPiA+Cj4gPiBlZy4gbWVtbWFw
PTJHJDE2RyBpOTE1LmZha2VfbG1lbV9zdGFydD0weDQwMDAwMDAwMAo+IAo+IEhpIEFyZWssCj4g
Cj4gV291bGQgeW91IGJlIGFibGUgdG8gdXBkYXRlIHRoZSBmaS1za2wtbG1lbSBrZXJuZWwgY21k
IGxpbmUgd2l0aAo+IHMvaTkxNV9mYWtlX2xtZW1fc3RhcnQvaTkxNS5mYWtlX2xtZW1fc3RhcnQ/
Cgpkb25lCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
