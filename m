Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68124FDEA5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C626E5E1;
	Fri, 15 Nov 2019 13:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B416D6E5E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:13:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 05:13:35 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199197014"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 05:13:33 -0800
Date: Fri, 15 Nov 2019 15:11:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191115131143.GC22793@ideak-desk.fi.intel.com>
References: <20191115122343.821331-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115122343.821331-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mention which device failed
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMTI6MjM6NDNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFdoZW4gdGVsbGluZyB0aGUgdXNlciB0aGF0IGRldmljZSBwb3dlciBtYW5hZ2VtZW50
IGlzIGRpc2FibGVkLCBpdCBpcwo+IGhlbHBmdWwgdG8gc2F5IHdoaWNoIGRldmljZSB0aGF0IHdh
cy4gQXQgdGhlIHNhbWUgdGltZSwgd2hpbGUgaXQgaXMgYQo+IG1lcmUgaW5jb252ZW5pZW5jZSB0
byB0aGUgdXNlciwgaXQgaXMgZGV2YXN0YXRpbmcgdG8gQ0kgYXMgdGhpcyBhbmQKPiBmdXR1cmUg
dGVzdHMgbWF5IGZhaWwgb3V0IG9mIHRoZSBibHVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYyB8IDQgKysr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKPiBpbmRleCA2MDJhMDJkMDE4NTAuLmI1NmE5
MDM0MzFiOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4gQEAgLTU0MCw3
ICs1NDAsOSBAQCB2b2lkIGludGVsX3JjNl9jdHhfd2FfY2hlY2soc3RydWN0IGludGVsX3JjNiAq
cmM2KQo+ICAJaWYgKCFpbnRlbF9yYzZfY3R4X2NvcnJ1cHRlZChyYzYpKQo+ICAJCXJldHVybjsK
PiAgCj4gLQlEUk1fTk9URSgiUkM2IGNvbnRleHQgY29ycnVwdGlvbiwgZGlzYWJsaW5nIHJ1bnRp
bWUgcG93ZXIgbWFuYWdlbWVudFxuIik7Cj4gKwlkZXZfbm90aWNlKGk5MTUtPmRybS5kZXYsCj4g
KwkJICAgIlJDNiBjb250ZXh0IGNvcnJ1cHRpb24sIGRpc2FibGluZyBydW50aW1lIHBvd2VyIG1h
bmFnZW1lbnRcbiIpOwo+ICsJYWRkX3RhaW50X2Zvcl9DSShUQUlOVF9XQVJOKTsKPiAgCj4gIAlp
bnRlbF9yYzZfZGlzYWJsZShyYzYpOwo+ICAJcmM2LT5jdHhfY29ycnVwdGVkID0gdHJ1ZTsKPiAt
LSAKPiAyLjI0LjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
