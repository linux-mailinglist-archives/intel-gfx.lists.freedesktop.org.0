Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A0373C7F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2B56E64F;
	Wed, 24 Jul 2019 20:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59DB6E64F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:09:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 13:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="177753496"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2019 13:09:30 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.15])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6OK9TTc016671; Wed, 24 Jul 2019 21:09:29 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190724173446.35188-1-michal.wajdeczko@intel.com>
 <20190724173446.35188-3-michal.wajdeczko@intel.com>
 <d8a672fc-82bd-552c-338f-6a7b47dbe5c6@intel.com>
Date: Wed, 24 Jul 2019 22:09:29 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5f7l3szxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <d8a672fc-82bd-552c-338f-6a7b47dbe5c6@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Update drawing for
 firmware layout
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

T24gV2VkLCAyNCBKdWwgMjAxOSAxOTo0NDo0NiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4KPgo+IE9uIDcv
MjQvMTkgMTA6MzQgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+IFNwaGlueCB3YXMgcmVu
ZGVyaW5nIGZpcm13YXJlIGxheW91dCBhcyBodG1sIHRhYmxlLCBidXQgc2luY2UKPj4gd2Ugd2Fu
dCB0byBhZGQgc2l6ZXMgcmVsYXRpb25zIHN3aXRjaCB0byBwbGFpbiB0ZXh0IGdyYXBoaWNzLgo+
PiAgU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19md19hYmkuaCB8IDI1ICsrKysrKysrKy0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+PiAgZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oICAKPj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+PiBpbmRleCAzY2E1MzU1MzQx
NTEuLmUyNTI3MWFhYzc2NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZndfYWJpLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZndfYWJpLmgKPj4gQEAgLTExLDIxICsxMSwxOCBAQAo+PiAgIC8qKgo+PiAgICAq
IERPQzogR3VDIEZpcm13YXJlIExheW91dAo+PiAgICAqCj4+IC0gKiBUaGUgR3VDIGZpcm13YXJl
IGxheW91dCBsb29rcyBsaWtlIHRoaXM6Cj4+ICsgKiBUaGUgR3VDIGZpcm13YXJlIGxheW91dCBs
b29rcyBsaWtlIHRoaXM6Ogo+PiAgICAqCj4+IC0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rCj4+IC0gKiAgICAgfCAgICAgICAgIHVjX2Nzc19oZWFkZXIgICAgICAgICB8
Cj4+IC0gKiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+IC0gKiAgICAg
fCBjb250YWlucyBtYWpvci9taW5vciB2ZXJzaW9uICB8Cj4+IC0gKiAgICAgKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+IC0gKiAgICAgfCAgICAgICAgICAgICB1Q29kZSAgICAg
ICAgICAgICB8Cj4+IC0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+
IC0gKiAgICAgfCAgICAgICAgIFJTQSBzaWduYXR1cmUgICAgICAgICB8Cj4+IC0gKiAgICAgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+IC0gKiAgICAgfCAgICAgICAgICBtb2R1
bHVzIGtleSAgICAgICAgICB8Cj4+IC0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0rCj4+IC0gKiAgICAgfCAgICAgICAgICBleHBvbmVudCB2YWwgICAgICAgICB8Cj4+IC0g
KiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+ICsgKiAgICAgICAKPj4g
Kz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0rCj4+ICsgKiAgICAgIHwgIEZpcm13YXJlICAKPj4gYmxvYiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+ICsgKiAg
ICAgICAKPj4gKz09PT09PT09PT09PT09PSs9PT09PT09PT09PT09PT0rPT09PT09PT09PT09Kz09
PT09PT09PT09PSs9PT09PT09PT09PT0rCj4+ICsgKiAgICAgIHwgIENTUyBoZWFkZXIgICB8ICAg
ICB1Q29kZSAgICAgfCAgICBrZXkgICAgIHwgIG1vZHVsdXMgICB8ICAgCj4+IGV4cG9uZW50ICB8
Cj4+ICsgKiAgICAgICAKPj4gKz09PT09PT09PT09PT09PSs9PT09PT09PT09PT09PT0rPT09PT09
PT09PT09Kz09PT09PT09PT09PSs9PT09PT09PT09PT0rCj4KPiBXaGF0IGFib3V0IHRoZSBSU0E/
CgprZXkgPT0gUlNBIGtleSA9PSBSU0Egc2lnbmF0dXJlCgpJIGZvbGxvd2VkIG5vdGF0aW9uIGZy
b20gb3VyIGhlYWRlciBkZWZpbml0aW9uIHdoaWNoIHVzZXMgImtleV9zaXplIgpidXQgbWF5YmUg
aXQgd2FzIHRvbyBicmF2ZS4gV2hhdCBhYm91dCAiUlNBIGtleSIgdG8gaGF2ZSBhIG1hdGNoID8K
Cj4KPiBEYW5pZWxlCj4KPj4gKyAqICAgICAgIDwtaGVhZGVyIHNpemUtPiAgICAgICAgICAgICAg
ICAgPC0tLWhlYWRlciBzaXplIGNvbnRpbnVlZCAgCj4+IC0tLS0tLS0tLS0tPgo+PiArICogICAg
ICAgPC0tLSBzaXplICAKPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0+Cj4+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwta2V5IHNpemUtPgo+PiArICogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPC1tb2Qgc2l6ZS0+Cj4+ICsgKiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+PiA8
LWV4cCBzaXplLT4KPj4gICAgKgo+PiAgICAqIFRoZSBmaXJtd2FyZSBtYXkgb3IgbWF5IG5vdCBo
YXZlIG1vZHVsdXMga2V5IGFuZCBleHBvbmVudCBkYXRhLiAgCj4+IFRoZSBoZWFkZXIsCj4+ICAg
ICogdUNvZGUgYW5kIFJTQSBzaWduYXR1cmUgYXJlIG11c3QtaGF2ZSBjb21wb25lbnRzIHRoYXQg
d2lsbCBiZSB1c2VkICAKPj4gYnkgZHJpdmVyLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
