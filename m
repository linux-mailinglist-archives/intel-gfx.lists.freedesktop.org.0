Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FBA21C3F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 19:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2836D89895;
	Fri, 17 May 2019 17:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3493589895
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 17:11:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 10:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,480,1549958400"; d="scan'208";a="172873961"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 10:11:08 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HHB7nO028632; Fri, 17 May 2019 18:11:08 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-6-michal.wajdeczko@intel.com>
 <155811069162.826.12709617970282077850@skylake-alporthouse-com>
Date: Fri, 17 May 2019 19:11:07 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155811069162.826.12709617970282077850@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/uc: Skip reset preparation if
 GuC is already dead
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNyBNYXkgMjAxOSAxODozMTozMSArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAxNzoyMjoyNSkKPj4gV2UgbWF5IHNraXAgcmVzZXQgcHJlcGFyYXRpb24gc3Rl
cHMgaWYgR3VDIGlzIGFscmVhZHkgc2FuaXRpemVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIHwgMyArKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3VjLmMgIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPj4gaW5kZXggODZl
ZGZhNWFkNzJlLi4zNmM1M2E0MjkyN2MgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3VjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+
PiBAQCAtNDk5LDYgKzQ5OSw5IEBAIHZvaWQgaW50ZWxfdWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAgCj4+ICppOTE1KQo+PiAgICAgICAgIGlmICghVVNFU19HVUMoaTkx
NSkpCj4+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4+Cj4+ICsgICAgICAgaWYgKCFpbnRlbF9n
dWNfaXNfYWxpdmUoZ3VjKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPgo+IERvZXMgaXQg
bm90IHJlcGxhY2UgImlmICghVVNFU19HVUMoaTkxNSkpIj8KClllcyBpdCBjYW4sIGFzIHdlIHdp
bGwgbmV2ZXIgZmV0Y2gvdXBsb2FkIGZ3IGlmIHdlIGRvbid0IHBsYW4gdG8gdXNlIGl0IDspCgpC
dHcsIEknbSB0aGlua2luZyBvZiByZW5hbWluZyBpbnRlbF9ndWNfaXNfYWxpdmUgdG8gaW50ZWxf
Z3VjX2lzX2xvYWRlZApvciBpbnRlbF9ndWNfaXNfc3RhcnRlZCB0byBiZXR0ZXIgZGVzY3JpYmUg
d2hhdCB0aGlzIGZ1bmN0aW9uIGlzIHJlcG9ydGluZywKYXMgb25lIGNhbiB0aGluayB0aGF0IGlu
dGVsX2d1Y19pc19hbGl2ZSBpcyBhY3R1YWxseSBjaGVja2luZyB0aGF0IEd1QyBmdwppcyByZXNw
b25zaXZlLCB3aGljaCBpbiBnZW5lcmFsIG1pZ2h0IG5vdCBiZSB0aGUgc2FtZSBhcyAibG9hZGVk
IgoKTWljaGFsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
