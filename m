Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AB17A400
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9556E45E;
	Tue, 30 Jul 2019 09:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF8E6E460
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:25:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 02:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="162520841"
Received: from jneville-mobl.ger.corp.intel.com (HELO [10.252.2.158])
 ([10.252.2.158])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 02:25:11 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-17-matthew.auld@intel.com>
 <20190730085822.GL15868@phenom.ffwll.local>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <85ba8bc8-d3b2-da46-1116-3032c02aafb6@intel.com>
Date: Tue, 30 Jul 2019 10:25:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190730085822.GL15868@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 16/37] drm/i915/lmem: support pread
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

T24gMzAvMDcvMjAxOSAwOTo1OCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBPbiBUaHUsIEp1biAy
NywgMjAxOSBhdCAwOTo1NjoxMlBNICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IFdlIG5l
ZWQgdG8gYWRkIHN1cHBvcnQgZm9yIHByZWFkJ2luZyBhbiBMTUVNIG9iamVjdC4KPiAKPiBXaHk/
IFVzYWdlIG91dHNpZGUgZnJvbSBpZ3RzIHNlZW1zIHByZXR0eSBkZWFkLCBhdCBsZWFzdCBsb29r
aW5nIGF0IGlyaXMKPiBhbmQgYW52LiBUaGlzIHdhcyBraW5kYSBhIG5lYXQgdGhpbmcgZm9yIHdo
ZW4gd2UgZGlkbid0IHlldCByZWFsaXplZCB0aGF0Cj4gZG9pbmcgY2xmbHVzaCBpbiB1c2Vyc3Bh
Y2UgaXMgYm90aCBwb3NzaWJsZSBhbmQgbW9yZSBlZmZpY2llbnQuCj4gCj4gU2FtZSBmb3IgcHdy
aXRlLCBpcmlzIGp1c3QgZHJvcHBlZCBpdCwgYW52IGRvZXNuJ3Qgc2VlbSB0byB1c2UgaXQuIEFu
ZCBJCj4gdGhvdWdodCBtZXNhIHBsYW4gaXMgdG8gZHJvcCB0aGUgb2xkIGNsYXNzaWMgZHJpdmVy
IGZvciB3aGVuIHdlJ2xsIG5lZWQKPiBsbWVtLiBJdCdzIG5vdCBtdWNoLCBidXQgd291bGQgYWxs
b3cgdXMgdG8gZHJvcCBhIGZldyB0aGluZ3MuCgpIbW0sIGl0IHdhcyBhdCBsZWFzdCB1c2VmdWwg
aW4gdGhlIHN1cGVyIGVhcmx5IGRheXMgZm9yIGRlYnVnZ2luZy4gSWYgd2UgCndlcmUgdG8gZHJv
cCB0aGlzIHdoYXQgZG8gd2UgZG8gd2l0aCB0aGUgaWd0cz8gSnVzdCB1c2UgbW1hcD8KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
