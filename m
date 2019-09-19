Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DFB7973
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 14:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FB06F481;
	Thu, 19 Sep 2019 12:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14356F481
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 12:31:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 05:31:26 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="178033125"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 05:31:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma\, Swati2" <swati2.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <3ae3fa32-8050-574d-5942-5e38796cc21d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
 <1568724525-19275-3-git-send-email-swati2.sharma@intel.com>
 <87y2ylx6s1.fsf@intel.com> <3ae3fa32-8050-574d-5942-5e38796cc21d@intel.com>
Date: Thu, 19 Sep 2019 15:31:18 +0300
Message-ID: <878sqkwjqh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2][PATCH 2/3] drm/i915/display: Extract
 icl_read_luts()
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOCBTZXAgMjAxOSwgIlNoYXJtYSwgU3dhdGkyIiA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIDE4LVNlcC0xOSAzOjMxIFBNLCBKYW5pIE5pa3VsYSB3cm90ZToK
Pj4gT24gVHVlLCAxNyBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVs
LmNvbT4gd3JvdGU6Cj4+PiBGb3IgaWNsKywgaGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcg
YmxvYiBvZiBnYW1tYQo+Pj4gbHV0IHZhbHVlcy4gaWNsKyBwbGF0Zm9ybXMgc3VwcG9ydHMgbXVs
dGkgc2VnbWVudGVkIGdhbW1hCj4+PiBtb2RlLCBhZGQgaHcgbHV0IGNyZWF0aW9uIGZvciB0aGlz
IG1vZGUuCj4+Pgo+Pj4gVGhpcyB3aWxsIGJlIHVzZWQgdG8gdmFsaWRhdGUgZ2FtbWEgcHJvZ3Jh
bW1pbmcgdXNpbmcgZHNiCj4+PiAoZGlzcGxheSBzdGF0ZSBidWZmZXIpIHdoaWNoIGlzIGEgdGds
IGZlYXR1cmUuCj4+Pgo+Pj4gdjI6IC1yZWFkb3V0IGNvZGUgZm9yIG11bHRpc2VnbWVudGVkIGdh
bW1hIGhhcyB0byBjb21lCj4+PiAgICAgICB1cCB3aXRoIHNvbWUgaW50ZXJtZWRpYXRlIGVudHJp
ZXMgdGhhdCBhcmVuJ3QgcHJlc2VydmVkCj4+PiAgICAgICBpbiBoYXJkd2FyZSAoSmFuaSBOKQo+
Pj4gICAgICAtbGluZWFyIGludGVycG9sYXRpb24gKFZpbGxlKQo+Pj4gICAgICAtbW92ZWQgY29t
bW9uIGNvZGUgdG8gY2hlY2sgZ2FtbWFfZW5hYmxlIHRvIHNwZWNpZmljIGZ1bmNzLAo+Pj4gICAg
ICAgc2luY2UgaWNsIGRvZXNuJ3Qgc3VwcG9ydCB0aGF0Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyNDMgKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgIHwgICA3ICsKPj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMzAgaW5zZXJ0aW9ucygr
KSwgMjAgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYwo+Pj4gaW5kZXggYjFmMGY3ZS4uMDAwODAxMSAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4+PiBAQCAtMTM3MCw2ICsx
MzcwLDkgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCj4+PiAgIAo+Pj4gICBzdGF0aWMgaW50IGk5eHhfZ2FtbWFfcHJlY2lz
aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+Pj4gICB7Cj4+
PiArCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+Pj4gKwkJcmV0dXJuIDA7ICAgID4+
ICsKPj4gCj4+IFdoeSBhcmUgeW91IG1vdmluZyB0aGVzZSBjaGVja3MgYmFjayB0byB0aGUgaW5k
aXZpZHVhbCBmdW5jdGlvbnM/Cj4gQXMgc3RhdGVkIGluIGNvbW1pdCBtZXNzYWdlLCBtb3ZlZCBj
b21tb24gY29kZSB0byBjaGVjayBnYW1tYV9lbmFibGUgdG8gCj4gc3BlY2lmaWMgZnVuY3MsIHNp
bmNlIGljbCBkb2Vzbid0IHN1cHBvcnQgZ2FtbWFfZW5hYmxlIGFuZCBjb2RlIHdpbGwgCj4gcmV0
dXJuIDAuIElmIGkgbmVlZCB0byBtYWtlIGl0IGdlbmVyaWMsIGkgbmVlZCB0byBtYWtlIGdhbW1h
X2VuYWJsZSB0cnVlIAo+IGluIGljbF9jb2xvcl9jaGVjaygpIGZ1bmMuIElzIGl0IGZpbmU/IElD
TCBlbmFibGVzIGdhbW1hIHRocm91Z2ggCj4gZ2FtbWFfbW9kZSB1bmxpa2Ugb3RoZXIgcGxhdGZv
cm1zLgoKQXJnaC4gUmlnaHQuIE9rYXksIGxldCdzIGdvIHdpdGggd2hhdCB5b3UgaGF2ZSBpbiB0
aGlzIHBhdGNoLiBXZSBjYW4KY2xlYW4gdGhpcyBzdHVmZiB1cCBsYXRlci4KClBsZWFzZSB3cml0
ZSB0aGUgbWFpbiBwYXJ0IG9mIHRoZSBjb21taXQgbWVzc2FnZSBzdWNoIHRoYXQgaXQgaXMKaW5k
ZXBlbmRlbnQgb2YgdGhlIGNoYW5nZWxvZy4gVGhlIGNoYW5nZWxvZyBpcyBnb29kLCBidXQgdGhl
IGFjdHVhbApjaGFuZ2VzIG5lZWQgdG8gYmUgZXZpZGVudCBmcm9tIHRoZSBtZXNzYWdlIHBhcnQu
CgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
