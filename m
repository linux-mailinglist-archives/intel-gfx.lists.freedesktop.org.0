Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61A735C1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A1B6E611;
	Wed, 24 Jul 2019 17:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1770A6E613
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:45:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="160641897"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2019 10:45:01 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190724173446.35188-1-michal.wajdeczko@intel.com>
 <20190724173446.35188-3-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <d8a672fc-82bd-552c-338f-6a7b47dbe5c6@intel.com>
Date: Wed, 24 Jul 2019 10:44:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724173446.35188-3-michal.wajdeczko@intel.com>
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

CgpPbiA3LzI0LzE5IDEwOjM0IEFNLCBNaWNoYWwgV2FqZGVjemtvIHdyb3RlOgo+IFNwaGlueCB3
YXMgcmVuZGVyaW5nIGZpcm13YXJlIGxheW91dCBhcyBodG1sIHRhYmxlLCBidXQgc2luY2UKPiB3
ZSB3YW50IHRvIGFkZCBzaXplcyByZWxhdGlvbnMgc3dpdGNoIHRvIHBsYWluIHRleHQgZ3JhcGhp
Y3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19md19hYmkuaCB8IDI1ICsrKysrKysrKy0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKPiBpbmRleCAzY2E1MzU1MzQxNTEu
LmUyNTI3MWFhYzc2NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19md19hYmkuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3X2FiaS5oCj4gQEAgLTExLDIxICsxMSwxOCBAQAo+ICAgLyoqCj4gICAgKiBET0M6IEd1
QyBGaXJtd2FyZSBMYXlvdXQKPiAgICAqCj4gLSAqIFRoZSBHdUMgZmlybXdhcmUgbGF5b3V0IGxv
b2tzIGxpa2UgdGhpczoKPiArICogVGhlIEd1QyBmaXJtd2FyZSBsYXlvdXQgbG9va3MgbGlrZSB0
aGlzOjoKPiAgICAqCj4gLSAqICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsK
PiAtICogICAgIHwgICAgICAgICB1Y19jc3NfaGVhZGVyICAgICAgICAgfAo+IC0gKiAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gLSAqICAgICB8IGNvbnRhaW5zIG1ham9y
L21pbm9yIHZlcnNpb24gIHwKPiAtICogICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tKwo+IC0gKiAgICAgfCAgICAgICAgICAgICB1Q29kZSAgICAgICAgICAgICB8Cj4gLSAqICAg
ICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiAtICogICAgIHwgICAgICAgICBS
U0Egc2lnbmF0dXJlICAgICAgICAgfAo+IC0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCj4gLSAqICAgICB8ICAgICAgICAgIG1vZHVsdXMga2V5ICAgICAgICAgIHwKPiAt
ICogICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+IC0gKiAgICAgfCAgICAg
ICAgICBleHBvbmVudCB2YWwgICAgICAgICB8Cj4gLSAqICAgICArLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSsKPiArICogICAgICArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSsKPiArICogICAgICB8ICBG
aXJtd2FyZSBibG9iICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKPiArICogICAgICArPT09PT09PT09PT09PT09Kz09PT09PT09PT09PT09PSs9
PT09PT09PT09PT0rPT09PT09PT09PT09Kz09PT09PT09PT09PSsKPiArICogICAgICB8ICBDU1Mg
aGVhZGVyICAgfCAgICAgdUNvZGUgICAgIHwgICAga2V5ICAgICB8ICBtb2R1bHVzICAgfCAgZXhw
b25lbnQgIHwKPiArICogICAgICArPT09PT09PT09PT09PT09Kz09PT09PT09PT09PT09PSs9PT09
PT09PT09PT0rPT09PT09PT09PT09Kz09PT09PT09PT09PSsKCldoYXQgYWJvdXQgdGhlIFJTQT8K
CkRhbmllbGUKCj4gKyAqICAgICAgIDwtaGVhZGVyIHNpemUtPiAgICAgICAgICAgICAgICAgPC0t
LWhlYWRlciBzaXplIGNvbnRpbnVlZCAtLS0tLS0tLS0tLT4KPiArICogICAgICAgPC0tLSBzaXpl
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tPgo+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwta2V5IHNp
emUtPgo+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8LW1vZCBzaXplLT4KPiArICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwtZXhwIHNpemUtPgo+ICAgICoKPiAgICAq
IFRoZSBmaXJtd2FyZSBtYXkgb3IgbWF5IG5vdCBoYXZlIG1vZHVsdXMga2V5IGFuZCBleHBvbmVu
dCBkYXRhLiBUaGUgaGVhZGVyLAo+ICAgICogdUNvZGUgYW5kIFJTQSBzaWduYXR1cmUgYXJlIG11
c3QtaGF2ZSBjb21wb25lbnRzIHRoYXQgd2lsbCBiZSB1c2VkIGJ5IGRyaXZlci4KPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
