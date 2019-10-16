Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A92D9280
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD27F6E2FF;
	Wed, 16 Oct 2019 13:31:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB276E2FF
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:31:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:31:50 -0700
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="186150263"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 06:31:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191016122843.9429-1-tvrtko.ursulin@linux.intel.com>
 <20191016122843.9429-2-tvrtko.ursulin@linux.intel.com>
 <157123101407.22469.10360475997002619905@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fd9f9b65-e3ad-50e1-c440-af3be4407c53@linux.intel.com>
Date: Wed, 16 Oct 2019 14:31:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157123101407.22469.10360475997002619905@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Store engine mask in intel_gt
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzEwLzIwMTkgMTQ6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE2IDEzOjI4OjQyKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBNZWRpdW0gdGVybSBnb2FsIGlzIHRvIGVs
aW1pbmF0ZSB0aGUgaTkxNS0+ZW5naW5lW10gYXJyYXkgYW5kIHRvIGdldCB0aGVyZQo+PiB3ZSBo
YXZlIHJlY2VudGx5IGludHJvZHVjZWQgZXF1aXZhbGVudCBhcnJheSBpbiBpbnRlbF9ndC4gTm93
IHdlIG5lZWQgdG8KPj4gbWlncmF0ZSB0aGUgY29kZSBmdXJ0aGVyIHRvd2FyZHMgdGhpcyBzdGF0
ZS4KPj4KPj4gVG8gYWxsb3cgZm9yX2VhY2hfZW5naW5lX21hc2tlZCBjYWxsIHNpdGVzIHRvIHBh
c3MgaW4gZ3QgaW5zdGVhZCBvZiBpOTE1Cj4+IHdlIG5lZWQgdG8gaGF2ZSBhIGNvcHkgb2YgSU5U
RUxfSU5GTygpLT5lbmdpbmVfbWFzayBpbiBpbnRlbF9ndC4KPj4KPj4gRm9yIHRoaXMgdG8gd29y
ayB3ZSBhbHNvIG5lZWQgdG8gdXNlIGVuZ2luZS0+aWQgYXMgaW5kZXggd2hlbiBwb3B1bGF0aW5n
Cj4+IHRoZSBndC0+ZW5naW5lW10gYXJyYXkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3VzZXIuYyB8IDQgKystLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMgICAgICAgICAgfCA1ICsrKysrCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgICB8IDEgKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3R5cGVzLmggICAgfCA0ICsrKysKPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgICAgICAgIHwgMiArKwo+PiAgIDUgZmlsZXMgY2hhbmdlZCwgMTQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCj4+IGluZGV4IDc3Y2Q1ZGU4MzkzMC4uMDk5YWJhZTg2
MGVjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
dXNlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2Vy
LmMKPj4gQEAgLTE4Myw4ICsxODMsOCBAQCBzdGF0aWMgdm9pZCBhZGRfbGVnYWN5X3Jpbmcoc3Ry
dWN0IGxlZ2FjeV9yaW5nICpyaW5nLAo+PiAgICAgICAgICBpZiAodW5saWtlbHkoaWR4ID09IC0x
KSkKPj4gICAgICAgICAgICAgICAgICByZXR1cm47Cj4+ICAgCj4+IC0gICAgICAgR0VNX0JVR19P
TihpZHggPj0gQVJSQVlfU0laRShyaW5nLT5ndC0+ZW5naW5lKSk7Cj4+IC0gICAgICAgcmluZy0+
Z3QtPmVuZ2luZVtpZHhdID0gZW5naW5lOwo+IAo+IFRoaXMgaXMgdXNlZCBmb3IgdGhlIGxlZ2Fj
eSB1YXBpIG1hcHBpbmcuIFNvIHdlIG5lZWQgdG8gYWRqdXN0IHRoZSBsb29wCj4gaW4gaTkxNV9n
ZW1fY29udGV4dC5jOjpkZWZhdWx0X2VuZ2luZXMoKSB0byB1c2UgZW5naW5lLT5sZWdhY3lfaWR4
Cj4gaW5zdGVhZCBvZiBpZC4gQW5kIGFsbCBvdGhlciB1c2VycyBvZiBlbmdpbmUtPmxlZ2FjeV9p
ZHggYXJlIG5vdwo+IGJhY2t3YXJkcy4KCkhtbW0gdGhhdCdzIGV2aWwuLiBJIG1lYW4gc28gd2Vs
bCBoaWRkZW4gZGVwZW5kZW5jeSBhbmQgY29udHJhcnkgdG8gCnllYXJzIG9mIGRlY291cGxpbmcg
ZWZmb3J0cy4gQnV0IEkgZ2F0aGVyIHNvbWUgbWVzcyBpcyBleHBlY3RlZCBpbiB0aGVzZSAKY2ly
Y3Vtc3RhbmNlcy4gSSdsbCB1cGRhdGUuCgpSZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
