Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B8EC9B53
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 11:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E682E6E0DF;
	Thu,  3 Oct 2019 09:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1866E0DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 09:58:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 02:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="205581633"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2019 02:58:11 -0700
Date: Thu, 3 Oct 2019 12:58:11 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <alpine.DEB.2.21.1910021852400.16459@zeliteleevi>
Message-ID: <alpine.DEB.2.21.1910031256280.16459@zeliteleevi>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
 <20191002121139.GB11229@ideak-desk.fi.intel.com>
 <alpine.DEB.2.21.1910021852400.16459@zeliteleevi>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio power up sequence
 for gen10/11
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBXZWQsIDIgT2N0IDIwMTksIEthaSBWZWhtYW5lbiB3cm90ZToKPiBJIGhhdmUgb25l
IGZhaWxpbmcgY2FzZSBsZWZ0IG9uIElDTCB3aGVyZSB2MSBwYXRjaHNldCBkb2VzIG5vdCBzZWVt
IAo+IHN1ZmZpY2llbnQuIFRoZSB0ZXN0IGNhc2UgaW52b2x2ZXMgYSBsb29wIG9mIGRvaW5nIFMz
IHN1c3BlbmQsIHJlc3VtZSwgCj4gdW5sb2FkIGRyaXZlciwgbG9hZCBkcml2ZXIsIHBsYXkgYXVk
aW8gdmlhIEhETUkgYW5kIHJlcGVhdC4gSSBnZXQgCj4gc3lzdGVtYXRpY2FsbHkgYmV0dGVyIHJl
c3VsdHMgd2l0aCB0aGlzIHBhdGNoLCBidXQgaXQgc3RpbGwgZmFpbHMgYmVmb3JlIAo+IDEwMCBp
dGVyYXRpb25zLiBJdCdzIGEgZGVmaW5pdGUgaW1wcm92ZW1lbnQsIHNvIHByb2JhYmx5IHRoaXMg
cGF0Y2ggCj4gc2hvdWxkIGdvIGluIGluIGFueSBjYXNlLgoKb2ssIHRoaXMgdHVybmVkIG91dCB0
byBiZSBhbiBpc3N1ZSBvbiBIREEgZHJpdmVyIHNpZGUgYW5kIG9ubHkgaGFwcGVucyAKd2l0aCBT
T0YgZHJpdmVyIChub3Qgd2l0aCB0aGUgc25kX2hkYV9pbnRlbCBub24tRFNQIEhEQSBjb2RlYyBk
cml2ZXIpLiAKClNvIHRoZSB2MiB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBpcyByZWFkeSB0byBnby4K
CkJyLCBLYWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
