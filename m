Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C712C30BCCE
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 12:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295426E0EE;
	Tue,  2 Feb 2021 11:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B95766E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 11:19:21 +0000 (UTC)
IronPort-SDR: BJoxbKxyoCJ4s9DUKObBpLqtKzD8IRoaWglQYBZxLX982kRpOc08GvijnS96iOm1im1oBaxGjp
 xOJ/GeikGwug==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180980469"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180980469"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 03:19:20 -0800
IronPort-SDR: 9qgbnzYlMDvqJcsKnFJBfGA6LQRudq4pSnr1Bjkgc5jFLazzG9xeYCuqbIwL3phELMYhqQ+761
 Vpwa75VTgLGg==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391417192"
Received: from amishuti-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.46.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 03:19:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210202025620.2212559-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210202025620.2212559-1-lucas.demarchi@intel.com>
Date: Tue, 02 Feb 2021 13:19:13 +0200
Message-ID: <87a6smhg3y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] topic/adl-s-enabling into drm-intel-next
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMSBGZWIgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IEhpIFJvZHJpZ28vSmFuaSwKPgo+IEhlcmUgYXJlIHRoZSBjaGFuZ2Vz
IHRvIGFkZCBiYXNpYyBBbGRlciBMYWtlIFMgc3VwcG9ydCBpbiB0aGUgZHJpdmVyLCB3aXRoCj4g
cGF0Y2hlcyB0b3VjaGluZyBib3RoIGdlbmVyaWMgcGFydHMsIGd0IGFuZCBkaXNwbGF5LiBSZW1h
aW5pbmcgY2hhbmdlcyBkb24ndAo+IG5lZWQgYSB0b3BpYyBicmFuY2ggYW55bW9yZSBhbmQgY2Fu
IGJlIGFwcGxpZWQgaW5kaXZpZHVhbGx5IHRvIGVhY2ggYnJhbmNoLgoKVGhhbmtzLCBwdWxsZWQg
dG8gZHJtLWludGVsLW5leHQsIGFuZCBKb29uYXMgcHVsbGVkIHRvIGRybS1pbnRlbC1ndC1uZXh0
CnRvby4KCkJSLApKYW5pLgoKCj4KPiB0aGFua3MKPiBMdWNhcyBEZSBNYXJjaGkKPgo+ICoqKgo+
Cj4gdG9waWMvYWRsLXMtZW5hYmxpbmctMjAyMS0wMi0wMS0xOgo+Cj4gRHJpdmVyIENoYW5nZXM6
Cj4gICAtIEFkZCBiYXNpYyBzdXBwb3J0IGZvciBBbGRlciBMYWtlIFMsIHRvIGJlIHNoYXJlZCBi
ZXR3ZWVuCj4gICAgIGRybS1pbnRlbC1uZXh0IGFuZCBkcm0taW50ZWwtZ3QtbmV4dAo+Cj4gVGhl
IGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBmYjVjZmNhYTJlZmJiNGM3MWFiYjFkZmJj
OGY0ZGE3MjdlMGJmZDg5Ogo+Cj4gICBNZXJnZSB0YWcgJ2RybS1pbnRlbC1ndC1uZXh0LTIwMjEt
MDEtMTQnIG9mIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0taW50ZWwgaW50
byBkcm0tbmV4dCAoMjAyMS0wMS0xNSAxNTowMzozNiArMTAwMCkKPgo+IGFyZSBhdmFpbGFibGUg
aW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+Cj4gICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9kcm0vZHJtLWludGVsIHRhZ3MvdG9waWMvYWRsLXMtZW5hYmxpbmctMjAyMS0wMi0wMS0x
Cj4KPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gNDA0MzI3N2FkMThmYzdjYjlhNzlk
MGQwNDMwNjNmYjVmNDJhNmYwNjoKPgo+ICAgZHJtL2k5MTUvYWRsX3M6IEFkZCBHVCBhbmQgQ1RY
IFdBcyBmb3IgQURMLVMgKDIwMjEtMDItMDEgMDc6NTk6MTEgLTA4MDApCj4KPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
RHJpdmVyIENoYW5nZXM6Cj4gICAtIEFkZCBiYXNpYyBzdXBwb3J0IGZvciBBbGRlciBMYWtlIFMs
IHRvIGJlIHNoYXJlZCBiZXR3ZWVuCj4gICAgIGRybS1pbnRlbC1uZXh0IGFuZCBkcm0taW50ZWwt
Z3QtbmV4dAo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+IEFkaXR5YSBTd2FydXAgKDgpOgo+ICAgICAgIGRybS9pOTE1
L3RnbDogVXNlIFRHTCBzdGVwcGluZyBpbmZvIGZvciBhcHBseWluZyBXQXMKPiAgICAgICBkcm0v
aTkxNS9hZGxfczogQ29uZmlndXJlIERQTEwgZm9yIEFETC1TCj4gICAgICAgZHJtL2k5MTUvYWRs
X3M6IENvbmZpZ3VyZSBQb3J0IGNsb2NrIHJlZ2lzdGVycyBmb3IgQURMLVMKPiAgICAgICBkcm0v
aTkxNS9hZGxfczogSW5pdGlhbGl6ZSBkaXNwbGF5IGZvciBBREwtUwo+ICAgICAgIGRybS9pOTE1
L2FkbF9zOiBBZGQgYWRsLXMgZGRjIHBpbiBtYXBwaW5nCj4gICAgICAgZHJtL2k5MTUvYWRsX3M6
IEFkZCB2YnQgcG9ydCBhbmQgYXV4IGNoYW5uZWwgc2V0dGluZ3MgZm9yIGFkbHMKPiAgICAgICBk
cm0vaTkxNS9hZGxfczogQWRkIGRpc3BsYXkgV0FzIGZvciBBREwtUwo+ICAgICAgIGRybS9pOTE1
L2FkbF9zOiBBZGQgR1QgYW5kIENUWCBXQXMgZm9yIEFETC1TCj4KPiBBbnVzaGEgU3JpdmF0c2Eg
KDQpOgo+ICAgICAgIGRybS9pOTE1L2FkbF9zOiBBZGQgUENIIHN1cHBvcnQKPiAgICAgICBkcm0v
aTkxNS9hZGxfczogQWRkIEludGVycnVwdCBTdXBwb3J0Cj4gICAgICAgZHJtL2k5MTUvYWRsX3M6
IEFkZCBQSFlzIGZvciBBbGRlcmxha2UgUwo+ICAgICAgIGRybS9pOTE1L2FkbF9zOiBMb2FkIERN
Qwo+Cj4gQ2F6IFlva295YW1hICgyKToKPiAgICAgICBkcm0vaTkxNS9hZGxfczogQWRkIEFETC1T
IHBsYXRmb3JtIGluZm8gYW5kIFBDSSBpZHMKPiAgICAgICB4ODYvZ3B1OiBBZGQgQWxkZXJsYWtl
LVMgc3RvbGVuIG1lbW9yeSBzdXBwb3J0Cj4KPiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgxKToK
PiAgICAgICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04K
Pgo+IEx1Y2FzIERlIE1hcmNoaSAoMSk6Cj4gICAgICAgZHJtL2k5MTUvYWRsX3M6IEFkZCBwb3dl
ciB3ZWxscwo+Cj4gTWF0dCBSb3BlciAoMyk6Cj4gICAgICAgZHJtL2k5MTUvYWRsX3M6IFVwZGF0
ZSBjb21ibyBQSFkgbWFzdGVyL3NsYXZlIHJlbGF0aW9uc2hpcHMKPiAgICAgICBkcm0vaTkxNS9h
ZGxfczogVXBkYXRlIFBIWV9NSVNDIHByb2dyYW1taW5nCj4gICAgICAgZHJtL2k5MTUvYWRsX3M6
IFJlLXVzZSBUR0wgR3VDL0h1QyBmaXJtd2FyZQo+Cj4gVGVqYXMgVXBhZGh5YXkgKDEpOgo+ICAg
ICAgIGRybS9pOTE1L2FkbF9zOiBVcGRhdGUgbWVtb3J5IGJhbmR3aWR0aCBwYXJhbWV0ZXJzCj4K
PiAgYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jICAgICAgICAgICAgICAgICAgICAgfCAg
MSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICAgICAg
IHwgNzAgKysrKysrKysrKysrKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMgICAgICAgICAgICB8IDEwICsrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jICAgICB8IDIzICsrKysrLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyAgICAgICAgICAgfCAxMCArKy0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgICAgICAgfCA2MiArKysrKysr
KysrKy0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgICAgICB8IDMxICsrKysrKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDExICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMgICAgICB8IDM4ICsrKysrKysrLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgICAgICAgfCAyMCArKysrKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCAgNCArLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgICAgICB8ICA4
ICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggICAg
ICB8ICA0ICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
ICAgICAgIHwgNjggKysrKysrKysrKystLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjX2Z3LmMgICAgICAgICAgIHwgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgICAgICAgfCA4MCArKysrKysrKysrKysrKy0tLS0t
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICAgICAg
IHwgIDUgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAg
ICAgICAgfCAxMyArKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgICAgICAgIHwgNTAgKysrKysrKysrKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyAgICAgICAgICAgfCAgOSArKy0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgICAgICAgfCAgMSArCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jICAgICAgICAgICAgICAgICAgIHwgIDggKystCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oICAgICAgICAgICAgICAgICAgIHwgIDMgKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgICAgICB8ICAyICst
Cj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwg
MTEgKysrCj4gIDI1IGZpbGVzIGNoYW5nZWQsIDQxNyBpbnNlcnRpb25zKCspLCAxMjkgZGVsZXRp
b25zKC0pCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
