Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 965B2202F0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 11:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2B0891A8;
	Thu, 16 May 2019 09:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E650891A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 09:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 02:55:52 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 02:55:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Summers\,
 Stuart" <stuart.summers@intel.com>
In-Reply-To: <20190515000604.GC18687@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com>
Date: Thu, 16 May 2019 12:59:15 +0300
Message-ID: <87ftpeaff0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNCBNYXkgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBPbmUgcG9zc2liaWxpdHkgdGhhdCBqdXN0IGNhbWUgdG8gbXkgbWluZCBub3cg
aXMsIHdoYXQgaWYgd2UgbWFrZQo+IHRoaXMgb25seSBmb3IgcGxhdGZvcm1zIHRoYXQgYXJlIHN0
aWxsIHByb3RlY3RlZCBieSBpc19hbHBoYV9zdXBwb3J0PTEKPiAoc29vbiBiZWNvbWluZyByZXF1
aXJlX2ZvcmNlX3Byb2JlPTEpCgpQbGVhc2UgZG9uJ3QgY29uZmxhdGUgYWxwaGFfc3VwcG9ydCBv
ciBmb3JjZV9wcm9iZSB3aXRoICphbnl0aGluZyogZWxzZS4KCj4gQnV0IHRoaXMgaXMganVzdCBv
bmUgc2lkZSBvZiB0aGUgY29pbi4uLiB3aGVuIHByb2R1Y3QgaXMgb3V0IHRoZXJlCj4gYW5kIHdl
IHdhbnQgdGhlIHVzZXIgdG8gZGVidWcgdGhlIGlzc3VlIHRvIHNlZSBpZiBpdCBpcyBhIFJDNiBi
dWcKPiB3ZSBoYXZlIG5vIHdheSB0byB2ZXJpZnkgdGhhdC4gOi8KClRoZSBwcm9ibGVtIGlzLCBp
ZiBpdCB3b3JrcyB3aXRoIHJjNiBkaXNhYmxlZCwgaXQgZG9lc24ndCBwcm92ZSBpdCdzIGFuCnJj
NiBidWcgZWl0aGVyLgoKCkJSLApKYW5pLgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
