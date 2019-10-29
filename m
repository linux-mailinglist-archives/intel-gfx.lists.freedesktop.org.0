Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E47E909D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 21:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E606E61B;
	Tue, 29 Oct 2019 20:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560796E61B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 20:12:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 13:12:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="399916849"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2019 13:12:54 -0700
Date: Tue, 29 Oct 2019 13:15:05 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191029201504.GB17819@intel.com>
References: <20191029103947.7535-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029103947.7535-1-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: only include
 intel_dp_link_training.h where needed
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

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTI6Mzk6NDdQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gVGhlIGludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCBpbmNsdWRlIGhhcyBubyBuZWVkIG9y
IHBsYWNlIGluCj4gaW50ZWxfZGlzcGxheS5oLiBJbmNsdWRlIGl0IGluIGludGVsX2Rpc3BsYXku
YyBpbnN0ZWFkLgo+IAo+IENjOgo+IAo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgo+IEZpeGVzOiBlYWRmNmY5MTcwZDUgKCJkcm0vaTkxNS9kaXNwbGF5L2lj
bDogRW5hYmxlIG1hc3Rlci1zbGF2ZXMgaW4gdHJhbnMgcG9ydCBzeW5jIikKPiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKQWggb2theSB5ZXMgbWFr
ZXMgc2VucyBldG8gYWRkIGl0IGluIGludGVsX2Rpc3BsYXkuYyBUaGFua3MgZm9yIGZpeGluZyB0
aGlzLgpBZnRlciByZW1vdmluZyB0aGUgcmVkdW5kYW50IENjOiwKClJldmlld2VkLWJ5OiBNYW5h
c2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoKTWFuYXNpCgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEgKwo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDEgLQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA5ZGNlMmU5ZTUzNzYu
LjUwNWQ2OTdmNmI0YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gQEAgLTY2LDYgKzY2LDcgQEAKPiAgI2luY2x1ZGUgImludGVsX2NkY2xr
LmgiCj4gICNpbmNsdWRlICJpbnRlbF9jb2xvci5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV90eXBlcy5oIgo+ICsjaW5jbHVkZSAiaW50ZWxfZHBfbGlua190cmFpbmluZy5oIgo+ICAjaW5j
bHVkZSAiaW50ZWxfZmJjLmgiCj4gICNpbmNsdWRlICJpbnRlbF9mYmRldi5oIgo+ICAjaW5jbHVk
ZSAiaW50ZWxfZmlmb191bmRlcnJ1bi5oIgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggY2E3Y2EyODA0ZDhiLi43Mjc4ZjlhZWU4Y2EgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBA
IC0yNyw3ICsyNyw2IEBACj4gIAo+ICAjaW5jbHVkZSA8ZHJtL2RybV91dGlsLmg+Cj4gICNpbmNs
dWRlIDxkcm0vaTkxNV9kcm0uaD4KPiAtI2luY2x1ZGUgImludGVsX2RwX2xpbmtfdHJhaW5pbmcu
aCIKPiAgCj4gIGVudW0gbGlua19tX25fc2V0Owo+ICBzdHJ1Y3QgZHBsbDsKPiAtLSAKPiAyLjIw
LjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
