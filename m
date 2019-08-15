Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A98DC8F6F2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 00:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A74A6EA98;
	Thu, 15 Aug 2019 22:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A0A6EA98
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 22:24:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 15:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="328507210"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga004.jf.intel.com with ESMTP; 15 Aug 2019 15:24:12 -0700
Date: Thu, 15 Aug 2019 15:24:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190815222412.GF832@mdroper-desk.amr.corp.intel.com>
References: <20190815215859.10970-1-matthew.d.roper@intel.com>
 <156590757631.14277.4562730943843997465@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156590757631.14277.4562730943843997465@skylake-alporthouse-com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMTE6MTk6MzZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgTWF0dCBSb3BlciAoMjAxOS0wOC0xNSAyMjo1ODo1OSkKPiA+IEZyb20g
dGhlIGJzcGVjOgo+ID4gCj4gPiAgICAgICAgICJTVyBtdXN0IGFsd2F5cyBwcm9ncmFtIHRoZSBG
QkNfUlRfQkFTRV9BRERSX1JFR0lTVEVSXyogcmVnaXN0ZXIKPiA+ICAgICAgICAgaW4gUmVuZGVy
IEVuZ2luZSB0byBhIHJlc2VydmVkIHZhbHVlICgweEZGRkZfRkZGRikgc3VjaCB0aGF0IHRoZQo+
ID4gICAgICAgICBwcm9ncmFtbWVkIHZhbHVlIGRvZXNu4oCZdCBtYXRjaCB0aGUgcmVuZGVyIHRh
cmdldCBzdXJmYWNlIGFkZHJlc3MKPiA+ICAgICAgICAgcHJvZ3JhbW1lZC4gVGhpcyB3b3VsZCBk
aXNhYmxlIHJlbmRlciBlbmdpbmUgZnJvbSBnZW5lcmF0aW5nCj4gPiAgICAgICAgIG1vZGlmeSBt
ZXNzYWdlcyB0byBGQkMgdW5pdCBpbiBkaXNwbGF5LiIKPiA+IAo+ID4gQnNwZWM6IDExMzg4Cj4g
PiBCc3BlYzogMzM0NTEKPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgNiArKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgICAgIHwgMSArCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4gPiBpbmRleCA3MDRhY2UwMWU3ZjUuLjI5YjUwZTJjMDYyNyAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IEBAIC01NjcsNiArNTY3
LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsCj4gPiAgICAgICAgIC8qIGFsbG93IGhlYWRlcmxlc3MgbWVzc2Fn
ZXMgZm9yIHByZWVtcHRpYmxlIEdQR1BVIGNvbnRleHQgKi8KPiA+ICAgICAgICAgV0FfU0VUX0JJ
VF9NQVNLRUQoR0VOMTBfU0FNUExFUl9NT0RFLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICBHRU4xMV9TQU1QTEVSX0VOQUJMRV9IRUFETEVTU19NU0cpOwo+ID4gKwo+ID4gKyAgICAgICAv
KiBXYV8xNjA0Mjc4Njg5OmljbCxlaGwgKi8KPiA+ICsgICAgICAgd2Ffd3JpdGVfbWFza2VkX29y
KHdhbCwgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgMCwgLyogd3JpdGUtb25seSByZWdpc3Rlcjsgc2tpcCB2YWxpZGF0aW9uICovCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAweEZGRkZGRkZGKTsKPiA+ICsgICAgICAgd2Ffd3JpdGUo
d2FsLCBJVkJfRkJDX1JUX0JBU0UsIDB4RkZGRkZGRkYpOwo+IAo+IEl0J3MgcGFydCBvZiB0aGUg
Y29udGV4dD8KPiAtQ2hyaXMKClRoZSByZWdpc3RlciBkZWZpbml0aW9ucyBzYXkgIlRoaXMgUmVn
aXN0ZXIgaXMgc2F2ZWQgYW5kIHJlc3RvcmVkIGFzCnBhcnQgb2YgQ29udGV4dCIgc28gSSB0aGlu
ayBzbz8gIEJ1dCB0aGF0IGRvZXMgc2VlbSB0byBiZSBkaWZmZXJlbnQgdGhhbgpob3cgd2UgdXNl
ZCB0byBwcm9ncmFtIHRoaXMgcmVnaXN0ZXIgYmFjayBiZWZvcmUgY29tbWl0IGIzMzkwODhkOAoo
ImRybS9pOTE1OiBEb24ndCB3cml0ZSBJVkJfRkJDX1JUX0JBU0UiKSBzbyBtYXliZSBJJ20gbWlz
aW50ZXJwcmV0aW5nPwoKCk1hdHQKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVu
Z2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkx
NikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
