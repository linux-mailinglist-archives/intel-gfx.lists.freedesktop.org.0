Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B0105A34
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 20:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CAE6E187;
	Thu, 21 Nov 2019 19:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BA76E17B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 19:10:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 11:10:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="357892160"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 21 Nov 2019 11:10:48 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xALJAltj027993; Thu, 21 Nov 2019 19:10:47 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20191121175850.19844-1-michal.wajdeczko@intel.com>
 <157435952570.2524.128073657420639188@skylake-alporthouse-com>
Date: Thu, 21 Nov 2019 20:10:46 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0bmcv8r0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <157435952570.2524.128073657420639188@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: Move ballooning support to
 i915_ggtt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMSBOb3YgMjAxOSAxOTowNToyNSArMDEwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0xMS0yMSAxNzo1ODo1MCkKPj4gVG9kYXkgVkdUIGltcGxlbWVudHMgR0dUVCBiYWxsb29u
aW5nIG9uIGl0cyBvd24sIHVzaW5nIHNvbWUgcHJpdmF0ZQo+PiBzdGF0aWMgc3RydWN0dXJlIHRv
IGhvbGQgaW5mbyBhYm91dCByZXNlcnZlZCBHR1RUIG5vZGVzIGFuZCB0aGVuCj4+IG1hbnVhbGx5
IHVwZGF0ZSB2bS5yZXNlcnZlZCBzaXplIG93bmVkIGJ5IGk5MTVfZ2d0dC4KPj4KPj4gQXMgaTkx
NV9nZ3R0IGFscmVhZHkgbWFuYWdlcyBzb21lIGN1c3RvbSByZXNlcnZlZCBub2RlcyAobGlrZSB1
Y19mdykKPj4gbW92ZSBWR1QgYmFsbG9vbmluZyBzdXBwb3J0IHRvIGk5MTVfZ2d0dCBhbmQgbWFr
ZSBpdCBtb3JlIGdlbmVyaWMKPj4gZm9yIHBvc3NpYmxlIGZ1dHVyZSByZXVzZSBpbiBvdGhlciBz
Y2VuYXJpb3MuCj4+Cj4+IEFzIGEgYm9udXMgd2UgY2FuIGRyb3AgYW5vdGhlciBwbGFjZSBpbiBk
cml2ZXIgdGhhdCB1c2VzIHN0YXRpYyBkYXRhLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gQ2M6IFhpb25nIFpoYW5n
IDx4aW9uZy55LnpoYW5nQGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQ3ICsr
KysrKysrKysrKysrKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5o
IHwgMTggKysrKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jICAgIHwg
NzIgKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gIDMgZmlsZXMgY2hhbmdlZCwgNzgg
aW5zZXJ0aW9ucygrKSwgNTkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPj4gaW5kZXggNjIzOWE5YWRiZjE0Li5kOGIyMDg0ZGFiN2UgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+IEBAIC0zODI3LDYgKzM4MjcsNTMg
QEAgaW50IGk5MTVfZ2VtX2d0dF9pbnNlcnQoc3RydWN0ICAKPj4gaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXJ0
LCBlbmQsICAKPj4gRFJNX01NX0lOU0VSVF9FVklDVCk7Cj4+ICB9Cj4+Cj4+ICtpbnQgaTkxNV9n
Z3R0X2JhbGxvb25fc3BhY2Uoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGVudW0gaTkxNV9nZ3R0X2JhbGxvb25faWQgaWQsCj4KPiBEbyB3ZSB3
YW50IHRvIHVzZSBhIGZpeGVkIG51bWJlciBvZiBzbG90cz8KClByb2JhYmx5IG5vdCwgZW51bSB3
YXMganVzdCB1c2VkIGFzIGEgc3RhcnRpbmcgcG9pbnQgdG8gcHJvdmlkZSBleHBsaWNpdApuYW1l
IGVhY2ggb2YgdGhlIGF2YWlsYWJsZSBub2RlIGFuZCB0byBhdm9pZCBhZGRpbmcgR0VNX0JVR19P
TiB3aGlsZQphY2Nlc3NpbmcgZml4ZWQgc2l6ZSBhcnJheS4KCj4KPiBTbyB3aGF0IGV4YWN0bHkg
aXMgd3Jvbmcgd2l0aCB0aGUgY2xpZW50cyByZXNlcnZpbmcgbm9kZXMgdGhlbXNlbHZlcz8KClRo
ZXkgc3RpbGwgcmVzZXJ2ZSBub2RlcyB0aGVtc2VsdmVzLiBCdXQgbm93IHRoZXkgd2lsbCBub3Qg
ZG8gdGhhdAppbiBhIHNoYWRvdyBhbmQgbm90IHVzZSBzdGF0aWMgZGF0YSB0byBob2xkIGFjdHVh
bCBub2Rlcy4KCj4KPiBJJ20gbm90IHNlZWluZyB3aHkgZXhhY3RseSB3ZSB3YW50IHRvIG1vdmUg
dG8gYSBtdWNoIG1vcmUgY2VudHJhbGlzZWQKPiBzeXN0ZW0KCkkgd2FudGVkIHRvIG1ha2UgaXQg
Y2xlYXIgdG8gYWxsIGNsaWVudHMgdGhhdCBpOTE1X2dndHQgaXMgYSBnb29kIHBsYWNlCnRvIGtl
ZXAgbGlzdCBvZiByZXNlcnZlZCBzb21lIChpbnN0ZWFkIG9mIGhpZGluZyB0aGVtIGluIHByaXZh
dGUgcGxhY2VzKQoKQW5kIHRvIHByb3ZpZGUgd3JhcHBlciBmdW5jdGlvbiB0aGF0IGNhbiBiZSBl
YXNpbHkgcmV1c2VkIGFuZCB0aGF0IGVhY2gKYmFsbG9vbmluZyBiZWhhdmVzIGluIHRoZSBzYW1l
IHdheS4KCkV4dHJhIGJvbnVzIGlzIHRoYXQgd2UgaGF2ZSBhbGwgc3VjaCBiYWxsb29uIHR3ZWFr
cyBpbiBvbmUgcGxhY2UgKGJvdGgKY29kZSBhbmQgZGF0YSBub2RlcykuCgo+IGFuZCBhcmd1ZSBv
dmVyIG93bmVyc2hpcCBvZiBpOTE1X2dndHRfYmFsbG9vbl9pZC4KCk5vdyBpdCdzIGZpcnN0IGNv
bWUsIGZpcnN0IHNlcnZlZCBvcmRlciwgYnV0IHdlIHNob3VsZCBhbHJlYWR5IGtub3cKYWxsIGN1
cnJlbnQgdXNhZ2VzIGFuZCBpbiBjYXNlIG9mIGNsYXNoIGVpdGhlciBwaWNrIGRpZmZlcmVudCBp
ZCBvcgphZGQgdGhlIG5ldyBvbmUuCgpOb3RlIHRoYXQgdG9kYXkgc29tZSBzY2VuYXJpb3MgYXJl
IGV4Y2x1c2l2ZSAoZ3Z0IHdvbid0IHdvcmsgd2l0aCBndWMpCnNvIHNvbWUgbm9kZSBwbGFjZWhv
bGRlcnMgY2FuIGJlIHNoYXJlZCAtIGJ1dCB0aGlzIGNhbiBiZSBlcXVhbGx5IGRvbmUKd2l0aG91
dCBlbnVtcyBidXQgd2l0aCB1bmlvbiBvZiBleHBsaWNpdCBub2RlIGRlZmluaXRpb25zLgoKCUk5
MTVfR0dUVF9CQUxMT09OX0dVQ19UT1AgPSBJOTE1X0dHVFRfQkFMTE9PTjMsCglJOTE1X0dHVFRf
QkFMTE9PTl9WR1RfVU5NQVBfVE9QID0gSTkxNV9HR1RUX0JBTExPT04zLAoKCXVuaW9uIHsKCQlz
dHJ1Y3QgewoJCQlzdHJ1Y3QgZHJtX21tX25vZGUgdWNfZnc7CgkJfSBndWM7CgkJc3RydWN0IHsK
CQkJc3RydWN0IGRybV9tbV9ub2RlIHNwYWNlWzRdOwoJCX0gdmd0OwoJfSBiYWxsb29uczsKCmJ1
dCBkaXJlY3QgYWNjZXNzIHRvIG5vZGVzIGNhbiBiZSBhbHNvIHdyYXBwZWQgaW50bzoKCnN0cnVj
dCBkcm1fbW1fbm9kZSAqaTkxNV9nZ3R0X2dldF91Y19md19ub2RlKGk5MTVfZ2d0dCAqZ2d0dCkK
ewoJcmV0dXJuIGdndHQtPmJhbGxvb25bSTkxNV9HR1RUX0JBTExPT05fR1VDX1RPUF07Cn0KCk1p
Y2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
