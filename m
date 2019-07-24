Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DE273CC4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0046E64F;
	Wed, 24 Jul 2019 20:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829B66E64F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:11:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 13:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="160680221"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2019 13:11:38 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190724173446.35188-1-michal.wajdeczko@intel.com>
 <20190724173446.35188-3-michal.wajdeczko@intel.com>
 <d8a672fc-82bd-552c-338f-6a7b47dbe5c6@intel.com>
 <op.z5f7l3szxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bb6e105d-5bb9-01b8-bbd7-dd6d406fbca7@intel.com>
Date: Wed, 24 Jul 2019 13:11:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z5f7l3szxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzI0LzE5IDE6MDkgUE0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gT24gV2VkLCAy
NCBKdWwgMjAxOSAxOTo0NDo0NiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAKPiA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4+Cj4+Cj4+IE9uIDcvMjQv
MTkgMTA6MzQgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+PiBTcGhpbnggd2FzIHJlbmRl
cmluZyBmaXJtd2FyZSBsYXlvdXQgYXMgaHRtbCB0YWJsZSwgYnV0IHNpbmNlCj4+PiB3ZSB3YW50
IHRvIGFkZCBzaXplcyByZWxhdGlvbnMgc3dpdGNoIHRvIHBsYWluIHRleHQgZ3JhcGhpY3MuCj4+
PiDCoFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgo+Pj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3X2FiaS5oIHwgMjUgKysrKysrKysrLS0tLS0tLS0tLS0KPj4+IMKgIDEgZmls
ZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4+IMKgZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oIAo+Pj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+Pj4gaW5kZXgg
M2NhNTM1NTM0MTUxLi5lMjUyNzFhYWM3NjUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKPj4+IEBAIC0xMSwyMSArMTEsMTggQEAKPj4+
IMKgIC8qKgo+Pj4gwqDCoCAqIERPQzogR3VDIEZpcm13YXJlIExheW91dAo+Pj4gwqDCoCAqCj4+
PiAtICogVGhlIEd1QyBmaXJtd2FyZSBsYXlvdXQgbG9va3MgbGlrZSB0aGlzOgo+Pj4gKyAqIFRo
ZSBHdUMgZmlybXdhcmUgbGF5b3V0IGxvb2tzIGxpa2UgdGhpczo6Cj4+PiDCoMKgICoKPj4+IC0g
KsKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+Pj4gLSAqwqDCoMKg
wqAgfMKgwqDCoMKgwqDCoMKgwqAgdWNfY3NzX2hlYWRlcsKgwqDCoMKgwqDCoMKgwqAgfAo+Pj4g
LSAqwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8Cj4+PiAtICrCoMKgwqDCoCB8IGNvbnRhaW5zIG1ham9yL21pbm9y
IHZlcnNpb27CoCB8Cj4+PiAtICrCoMKgwqDCoCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLSsKPj4+IC0gKsKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdUNvZGXCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfAo+Pj4gLSAqwqDCoMKgwqAgKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rCj4+PiAtICrCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoCBSU0Egc2ln
bmF0dXJlwqDCoMKgwqDCoMKgwqDCoCB8Cj4+PiAtICrCoMKgwqDCoCArLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsKPj4+IC0gKsKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqAgbW9k
dWx1cyBrZXnCoMKgwqDCoMKgwqDCoMKgwqAgfAo+Pj4gLSAqwqDCoMKgwqAgKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+PiAtICrCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKg
IGV4cG9uZW50IHZhbMKgwqDCoMKgwqDCoMKgwqAgfAo+Pj4gLSAqwqDCoMKgwqAgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4+PiArICogICAgICAKPj4+ICs9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
Kwo+Pj4gKyAqwqDCoMKgwqDCoCB8wqAgRmlybXdhcmUgCj4+PiBibG9iwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPj4+ICsgKiAgICAgIAo+Pj4g
Kz09PT09PT09PT09PT09PSs9PT09PT09PT09PT09PT0rPT09PT09PT09PT09Kz09PT09PT09PT09
PSs9PT09PT09PT09PT0rCj4+PiArICrCoMKgwqDCoMKgIHzCoCBDU1MgaGVhZGVywqDCoCB8wqDC
oMKgwqAgdUNvZGXCoMKgwqDCoCB8wqDCoMKgIGtlecKgwqDCoMKgIHzCoCBtb2R1bHVzwqDCoCB8
ICAKPj4+IGV4cG9uZW50wqAgfAo+Pj4gKyAqICAgICAgCj4+PiArPT09PT09PT09PT09PT09Kz09
PT09PT09PT09PT09PSs9PT09PT09PT09PT0rPT09PT09PT09PT09Kz09PT09PT09PT09PSsKPj4K
Pj4gV2hhdCBhYm91dCB0aGUgUlNBPwo+IAo+IGtleSA9PSBSU0Ega2V5ID09IFJTQSBzaWduYXR1
cmUKPiAKPiBJIGZvbGxvd2VkIG5vdGF0aW9uIGZyb20gb3VyIGhlYWRlciBkZWZpbml0aW9uIHdo
aWNoIHVzZXMgImtleV9zaXplIgo+IGJ1dCBtYXliZSBpdCB3YXMgdG9vIGJyYXZlLiBXaGF0IGFi
b3V0ICJSU0Ega2V5IiB0byBoYXZlIGEgbWF0Y2ggPwo+IAoKV29ya3MgZm9yIG1lLgoKRGFuaWVs
ZQoKPj4KPj4gRGFuaWVsZQo+Pgo+Pj4gKyAqwqDCoMKgwqDCoMKgIDwtaGVhZGVyIHNpemUtPsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwtLS1oZWFkZXIgc2l6ZSBjb250aW51ZWQg
Cj4+PiAtLS0tLS0tLS0tLT4KPj4+ICsgKsKgwqDCoMKgwqDCoCA8LS0tIHNpemUgCj4+PiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLT4K
Pj4+ICsgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPC1rZXkgc2l6ZS0+Cj4+PiArICrCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPC1tb2Qgc2l6ZS0+Cj4+PiArICog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIAo+Pj4gPC1leHAgc2l6ZS0+Cj4+PiDCoMKgICoKPj4+IMKgwqAgKiBUaGUgZmlybXdh
cmUgbWF5IG9yIG1heSBub3QgaGF2ZSBtb2R1bHVzIGtleSBhbmQgZXhwb25lbnQgZGF0YS4gCj4+
PiBUaGUgaGVhZGVyLAo+Pj4gwqDCoCAqIHVDb2RlIGFuZCBSU0Egc2lnbmF0dXJlIGFyZSBtdXN0
LWhhdmUgY29tcG9uZW50cyB0aGF0IHdpbGwgYmUgCj4+PiB1c2VkIGJ5IGRyaXZlci4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
