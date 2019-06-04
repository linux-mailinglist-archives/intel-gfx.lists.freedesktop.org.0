Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8DA34589
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 13:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36F4896B0;
	Tue,  4 Jun 2019 11:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE833896B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 11:37:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 04:37:06 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.2.154])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2019 04:37:04 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190603171130.3186-1-chris@chris-wilson.co.uk>
References: <20190603171130.3186-1-chris@chris-wilson.co.uk>
Message-ID: <155964822363.11771.5026851103106534085@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 04 Jun 2019 14:37:03 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Replace struct_mutex
 serialisation for allocation
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMDMgMjA6MTE6MzApCj4gSW5zdGVhZCBvZiBy
ZWx5aW5nIG9uIHRoZSBjYWxsZXIgaG9sZGluZyBzdHJ1Y3RfbXV0ZXggYWNyb3NzIHRoZQo+IGFs
bG9jYXRpb24sIHB1c2ggdGhlIGFsbG9jYXRpb24gdW5kZXIgYSB0cmVlIG9mIHNwaW5sb2NrcyBz
dG9yZWQgaW5zaWRlCj4gdGhlIHBhZ2UgdGFibGVzLiBOb3Qgb25seSBzaG91bGQgdGhpcyBhbGxv
dyB1cyB0byBhdm9pZCBzdHJ1Y3RfbXV0ZXgKPiBoZXJlLCBidXQgaXQgd2lsbCBhbGxvdyBtdWx0
aXBsZSB1c2VycyB0byBsb2NrIGluZGVwZW5kZW50IHJhbmdlcyBmb3IKPiBjb25jdXJyZW50IGFs
bG9jYXRpb25zLCBhbmQgb3BlcmF0ZSBpbmRlcGVuZGVudGx5LiBUaGlzIGlzIHZpdGFsIGZvcgo+
IHB1c2hpbmcgdGhlIEdUVCBtYW5pcHVsYXRpb24gaW50byBhIGJhY2tncm91bmQgdGhyZWFkIHdo
ZXJlIGRlcGVuZGVuY3kKPiBvbiBzdHJ1Y3RfbXV0ZXggaXMgdmVyYm90ZW4sIGFuZCBmb3IgYWxs
b3dpbmcgb3RoZXIgY2FsbGVycyB0byBhdm9pZAo+IHN0cnVjdF9tdXRleCBhbHRvZ2V0aGVyLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgoKPFNOSVA+Cgo+IEBAIC0xNjg0LDkg
KzE3NTIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFyX3JhbmdlKHN0cnVjdCBpOTE1
X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAKPiAgICAgICAgICAgICAgICAgbnVtX2VudHJpZXMgLT0g
Y291bnQ7Cj4gIAo+IC0gICAgICAgICAgICAgICBHRU1fQlVHX09OKGNvdW50ID4gcHQtPnVzZWRf
cHRlcyk7CgpUaGlzIHNlZW1zIHRvIGJlIGxvc3QsIGFuZCBpdCdzIGRlZmluaXRlbHkgYSB2YWxp
ZCBjaGVjaywgc3RpbGwuCgpXaXRoIHRoYXQgcmV0YWluZWQsIHRoaXMgaXM6CgpSZXZpZXdlZC1i
eTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKT3Bl
cmF0aW9ucyAqX3BwZ3R0X3NldF8qICsgYXRvbWljX2luYyh1c2VkXyopIGFuZCAqX3BwZ3R0X3Nl
dF8qKHNjcmF0Y2gpICsKYXRvbWljX2RlYygpIGFwcGVhciByZXBldGl0aXZlLCBidXQgYXMgdGhl
eSdyZSBmb3IgZWFjaCBkaWZmZXJlbnQgbGV2ZWwsCmEgaGVscGVyIG1pZ2h0IG9yIG1pZ2h0IG5v
dCBtYWtlIGl0IGNsZWFuZXIuCgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
