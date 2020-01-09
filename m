Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 045D11355D5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 10:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7765E6E8F8;
	Thu,  9 Jan 2020 09:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 367E66E8EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 09:32:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 01:32:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="216243340"
Received: from vmastnak-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.252.37.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 01:32:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109062745.9831-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109062745.9831-1-manasi.d.navare@intel.com>
Date: Thu, 09 Jan 2020 11:32:58 +0200
Message-ID: <87r209j7p1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Reset intel_dp->link_trained
 in init_connector
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwOCBKYW4gMjAyMCwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gTGluayBoYXMgbm90IGJlZW4gdHJhaW5lZCBkdXJpbmcgY29ubmVjdG9y
IGluaXRpYWxpemF0aW9uCj4gaGVuY2UgcmVzZXQgdGhlIHZhcmlhYmxlIGludGVsX2RwLT5saW5r
X3RyYWluZWQuIFRoaXMKPiBhdm9pZHMgYWNjaWRlbnRseSBjYWxsaW5nIGxpbmsgdHJhaW5pbmcg
cm91dGluZSBiZWZvcmUgdGhlIHBpcGUKPiBpcyBzZXQgdXAuCj4KPiBJc3N1ZTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTg1CgpzL0lzc3VlL0Nsb3Nl
cy8KCj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMSArCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+IGluZGV4IGQyOTljZWUxNzVlNy4uZjQ1NTMzYWY3NTI0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC03NDcxLDYgKzc0NzEsNyBAQCBpbnRl
bF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdf
cG9ydCwKPiAgCWludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoaW50ZWxfZHApOwo+ICAKPiAgCWlu
dGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7Cj4gKwlpbnRlbF9kcC0+bGlua190cmFp
bmVkID0gIGZhbHNlOwo+ICAJaW50ZWxfZHAtPnBwc19waXBlID0gSU5WQUxJRF9QSVBFOwo+ICAJ
aW50ZWxfZHAtPmFjdGl2ZV9waXBlID0gSU5WQUxJRF9QSVBFOwoKLS0gCkphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
