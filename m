Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E936B500E47
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 15:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288CC10FBA5;
	Thu, 14 Apr 2022 13:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F5B10FBA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 13:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649941277; x=1681477277;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TNQjC0LVOmV4sbXNSFDKoQndK2r7qziOMdgppAylw+E=;
 b=bXM/r9afSjHQbiVgi+tTe3s00HdAjl1rXlKrLsm3erh757Z04Vk9zDxV
 sHa8X5esmkJ0SBzzfGLHZQvji/rhBm0te0an6I3+6pxSkuEZyX5w14XcS
 Oan9BldKAWNYO+sfHgRPcUSUvUsZdjinXf8PKtdl9Xq0B4oslZaSz7nNx
 X1b8I3ieJg0O4X9p4xDHanrP/xI0CpwqwirqpyOCdFxz1rVi1q7r+kyq4
 tEQH8TQ54NlxnmhOthIcI7Csj9GtUIU3QIETtNTkPIT9PVGal0lSpTogX
 iTNPxgJ8ro1S9yKHJOKbWm/6tYEQaNAjHbBi8SWKYC8/3BZl1Os9Pxl4k g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="325828536"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="325828536"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 06:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="725355345"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2022 06:01:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 06:01:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 06:01:12 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 14 Apr 2022 06:01:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display/psr: Clear more PSR state during
 disable
Thread-Index: AQHYTq9x82/W/EzGUUO+AqEdkY/AnKzt5/OAgACPRoCAAUCkAIAAH/4A
Date: Thu, 14 Apr 2022 13:01:11 +0000
Message-ID: <011223a0cd211cd409b3d4fc1d66508eba21a486.camel@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
 <20220412205527.174685-2-jose.souza@intel.com>
 <14f9bb02d627056ff000df3c9ce1105b3d74826f.camel@intel.com>
 <e022f050ee85f9f8792685420bba135e7d756733.camel@intel.com>
 <5f198649b489bbd5ad76041f5cedf3f9d9ea83c6.camel@intel.com>
In-Reply-To: <5f198649b489bbd5ad76041f5cedf3f9d9ea83c6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FA25EFACD799794282D8A32B981DFD05@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA0LTE0IGF0IDExOjA4ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyMi0wNC0xMyBhdCAxNTo1OSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gV2VkLCAyMDIyLTA0LTEzIGF0IDA3OjI3ICswMDAwLCBIb2dhbmRlciwgSm91bmkg
d3JvdGU6DQo+ID4gPiBIZWxsbyBKb3NlLA0KPiA+ID4gDQo+ID4gPiBTZWUgbXkgY29tbWVudCBi
ZWxvdy4NCj4gPiA+IA0KPiA+ID4gT24gVHVlLCAyMDIyLTA0LTEyIGF0IDEzOjU1IC0wNzAwLCBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiA+ID4gPiBBZnRlciBjb21taXQgODA1ZjA0
ZDQyYTZiICgiZHJtL2k5MTUvZGlzcGxheS9wc3I6IFVzZSBjb250aW51b3MNCj4gPiA+ID4gZnVs
bA0KPiA+ID4gPiBmcmFtZSB0byBoYW5kbGUgZnJvbnRidWZmZXIgaW52YWxpZGF0aW9ucyIpIHdh
cyBtZXJnZWQgd2Ugc3RhcnRlZA0KPiA+ID4gPiB0bw0KPiA+ID4gPiBnZXQgc29tZSBkcm1fV0FS
Tl9PTigmZGV2X3ByaXYtPmRybSwgISh0bXAgJg0KPiA+ID4gPiBQU1IyX01BTl9UUktfQ1RMX0VO
QUJMRSkpDQo+ID4gPiA+IGluIHRlc3RzIHRoYXQgYXJlIGV4ZWN1dGVkIGluIHBpcGUgQi4NCj4g
PiA+ID4gDQo+ID4gPiA+IFRoaXMgaXMgcHJvYmFibHkgZHVlIHBzcjJfc2VsX2ZldGNoX2NmZl9l
bmFibGVkIGJlaW5nIGxlZnQgc2V0DQo+ID4gPiA+IGR1cmluZw0KPiA+ID4gPiBQU1IgZGlzYWJs
ZSBpbiB0aGUgcGlwZSBBLCBzbyB0aGUgUFNSMl9NQU5fVFJLX0NUTCB3cml0ZSBpbg0KPiA+ID4g
PiBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoKSBpcyBza2lwcGVkIGluIHBp
cGUgQiBhbmQNCj4gPiA+ID4gdGhlbg0KPiA+ID4gPiB3ZSBnZXQgdGhlIHdhcm5pbmcgd2hlbiBh
Y3R1YWxseSBlbmFibGluZyBQU1IgYWZ0ZXIgcGxhbmVzDQo+ID4gPiA+IHByb2dyYW1pbmcuDQo+
ID4gPiA+IFdlIGRvbid0IGdldCBzdWNoIHdhcm5pbmdzIHdoZW4gcnVubmluZyB0ZXN0cyBpbiBw
aXBlIEEgYmVjYXVzZQ0KPiA+ID4gPiBQU1IyX01BTl9UUktfQ1RMIGlzIG9ubHkgY2xlYXJlZCB3
aGVuIGVuYWJsaW5nIFBTUjIgd2l0aCBoYXJkd2FyZQ0KPiA+ID4gPiB0cmFja2luZy4NCj4gPiA+
IA0KPiA+ID4gSXQgc291bmRzIGEgYml0IHNjYXJ5IHBpcGUgQSB3b3VsZCBoYXZlIHN1Y2ggaW1w
YWN0IG9uIHBpcGUgQi4uLg0KPiA+IA0KPiA+IEJlY2F1c2UgUFNSIHN0YXRlIGlzIHN0b3JlZCBp
biBpbnRlbF9kcC4NCj4gDQo+IElzIGludGVsX2RwIHNoYXJlZCBiZXR3ZWVuIHBpcGVzPw0KDQpV
c2Vyc3BhY2UgY2FuIG1ha2UgYW55IHBpcGUgZHJpdmUgYW55IHBvcnQsIHRoYXQgaXMgd2hhdCB0
aGlzIHRlc3RzIGFyZSBkb2luZy4NCg0KPiANCj4gPiANCj4gPiA+IGRybV9XQVJOX09OKCZkZXZf
cHJpdi0+ZHJtLCAhKHRtcCAmIFBTUjJfTUFOX1RSS19DVExfRU5BQkxFKSkNCj4gPiA+IA0KPiA+
ID4gaXMgd3JvbmcgZm9yIEFETFAuIFBsZWFzZSBrZWVwIGluIG1pbmQgc3VjaCBiaXQgZG9lc24n
dCBleGlzdCBpbg0KPiA+ID4gQURMUC4NCj4gPiA+IFRoaXMgV0FSTiBpcyBhY3R1YWxseSBjaGVj
a2luZyBTRkYgYml0IG9uIEFETFAgd2hpY2ggaXMgcmVzZXQgYnkgSFcNCj4gPiA+IGFmdGVyIHNl
bmRpbmcgdGhlIHVwZGF0ZSBmcmFtZS4gV2Ugd2VyZSBqdXN0IGx1Y2t5IChvciB1bmx1Y2t5DQo+
ID4gPiBkZXBlbmRpbmcgaG93IHlvdSBzZWUgaXQpIG5vdCBzZWVpbmcgdGhpcyBlYXJsaWVyLiBQ
cm9wZXIgZml4IHdvdWxkDQo+ID4gPiBiZQ0KPiA+ID4gdG8gcmVtb3ZlIHRoaXMgd2FybmluZyBm
b3IgQURMUD8NCj4gDQo+IENoZWNrZWQgdG9kYXkgdGhpcyBhbmQgZm91bmQgb3V0IHRoYXQgbXkg
Y29tbWVudCBpcyBub3QgdmFsaWQuIEkuZS4NCj4gdGhpcyBiaXQgaXMgbm90IGNsZWFyZWQgYnkg
SFcuIFRoaXMgd2FzIGFjdHVhbGx5IHBhcnRpYWwgZnJhbWUgYml0DQo+IHdoaWNoIGlzIF9ub3Rf
IHJlc2V0IGJ5IHRoZSBIVy4NCj4gDQo+IFN0aWxsIGZvciBjbGFyaXR5IHRoaXMgY2hlY2sgc2hv
dWxkIGJlIG1vZGlmaWVkIGFzDQo+IFBTUjJfTUFOX1RSS19DVExfRU5BQkxFIGRvZXNuJ3QgZXhp
c3QgZm9yIEFETFAuDQo+IA0KPiA+IA0KPiA+IE9rYXkgbGV0cyBzdGFydCB3aXRoIHRoYXQsIGlm
IHdlIHNlZSB0aGlzIGlzc3VlIHdpdGggYSB0Z2wgdGhlbiB3ZQ0KPiA+IGNhbiBicmluZyB0aGlz
IHBhdGNoIGFnYWluLg0KPiA+IEJ1dCBJIGd1ZXNzIGl0IHdpbGwgaGFwcGVuIGFzIHRoaXMgaXNz
dWUgc3RhcnRlZCByaWdodCBhZnRlciB0aGUgUFNSDQo+ID4gQ0ZGIHBhdGNoZXMgd2VyZSBtZXJn
ZWQuDQo+IA0KPiBZb3UgYXJlIHJpZ2h0LiBXZSBhcmUgcHJvYmFibHkgYml0dGVuIGJ5IHRoaXMg
bGF0ZXIuIEknbSBzb3JyeSBmb3INCj4gbWl4aW5nIHRoZSBzaW5nbGUgZnVsbCBmcmFtZSBhbmQg
dGhlIHBhcnRpYWwgZnJhbWUgYml0cy4NCj4gDQo+ID4gDQo+ID4gPiA+IFdhcyBub3QgYWJsZSB0
byByZXByb2R1Y2UgdGhpcyBpc3N1ZSBidXQgY2xlYW5pbmcgdGhlIFBTUiBzdGF0ZQ0KPiA+ID4g
PiBkaXNhYmxlIHdpbGwgbm90IGhhcm0gYW55dGhpbmcgYXQgYWxsLg0KPiA+ID4gPiANCj4gPiA+
ID4gRml4ZXM6IDgwNWYwNGQ0MmE2YiAoImRybS9pOTE1L2Rpc3BsYXkvcHNyOiBVc2UgY29udGlu
dW9zIGZ1bGwNCj4gPiA+ID4gZnJhbWUNCj4gPiA+ID4gdG8gaGFuZGxlIGZyb250YnVmZmVyIGlu
dmFsaWRhdGlvbnMiKQ0KPiA+ID4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNTYzNA0KPiA+ID4gPiBDYzogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4g
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0K
PiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
PiA+IGluZGV4IDhlYzdjMTYxMjg0YmUuLjA2ZGI0MDdlMjc0OWYgMTAwNjQ0DQo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBAQCAt
MTM1Myw2ICsxMzUzLDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0
cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiA+ICAgICAgICAgICAgICAg
ZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gPiBEUF9SRUNFSVZFUl9B
TFBNX0NPTkZJRywgMCk7DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAgICBpbnRlbF9kcC0+cHNyLmVu
YWJsZWQgPSBmYWxzZTsNCj4gPiA+ID4gKyAgICAgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQg
PSBmYWxzZTsNCj4gPiA+ID4gKyAgICAgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFi
bGVkID0gZmFsc2U7DQo+ID4gPiA+ICsgICAgIGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hf
Y2ZmX2VuYWJsZWQgPSBmYWxzZTsNCj4gPiA+ID4gIH0NCj4gPiA+ID4gDQo+ID4gPiA+ICAvKioN
Cj4gPiA+IA0KPiA+ID4gQlIsDQo+ID4gPiANCj4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiANCg0K
