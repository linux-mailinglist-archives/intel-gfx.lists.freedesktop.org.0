Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94743392C6E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 13:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4CE96EE96;
	Thu, 27 May 2021 11:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C27C6EE7E;
 Thu, 27 May 2021 11:16:19 +0000 (UTC)
IronPort-SDR: 23YBh+YSdMY6ES8mP5FOyZAE2qowXS2Ftz+mF4xk1t3rlqUIJ8pVjuSn2LzpvhDoekBQG8my+A
 VD5gzDyjZDBg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="183043840"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="183043840"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 04:16:19 -0700
IronPort-SDR: JXKNcgLd2D7JcHiYEpSi4GmeQktlDsODPL9sQXU/Abvda2SID17EBc+NlLq3nNPsiNwH9A045k
 5hGpwAXvwkkA==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="477443491"
Received: from vsorokin-mobl.ccr.corp.intel.com (HELO [10.249.39.216])
 ([10.249.39.216])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 04:16:15 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <55fb9d6c-23aa-bdce-250f-7f0377441a53@linux.intel.com>
Date: Thu, 27 May 2021 13:16:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable gpu relocations
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjAyMS0wNS0yNiBvbSAxODozNyBzY2hyZWVmIERhbmllbCBWZXR0ZXI6Cj4gTWVkaWEgdXNl
cnNwYWNlIHdhcyB0aGUgbGFzdCB1c2Vyc3BhY2UgdG8gc3RpbGwgdXNlIHRoZW0sIGFuZCB0aGV5
Cj4gY29udmVydGVkIG5vdyB0b286Cj4KPiBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwvbWVkaWEt
ZHJpdmVyL2NvbW1pdC8xNDQwMjBjMzc3NzAwODM5NzRiZWRmNTk5MDJiNzBiOGY0NDRjNzk5Cj4K
PiBUaGlzIG1lYW5zIG5vIHJlYXNvbiBhbnltb3JlIHRvIG1ha2UgcmVsb2NhdGlvbnMgZmFzdGVy
IHRoYW4gdGhleSd2ZQo+IGJlZW4gZm9yIHRoZSBmaXJzdCA5IHllYXJzIG9mIGdlbS4gVGhpcyBj
b2RlIHdhcyBhZGRlZCBpbgo+Cj4gY29tbWl0IDdkZDRmNjcyOWY5MjQzYmQ3MDQ2YzZmMDRjMTA3
YTQ1NmJkYTM4ZWIKPiBBdXRob3I6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IERhdGU6ICAgRnJpIEp1biAxNiAxNTowNToyNCAyMDE3ICswMTAwCj4KPiAgICAgZHJt
L2k5MTU6IEFzeW5jIEdQVSByZWxvY2F0aW9uIHByb2Nlc3NpbmcKPgo+IEZ1cnRoZXJtb3JlIHRo
ZXJlJ3MgcHJldHR5IHN0cm9uZyBpbmRpY2F0aW9ucyBpdCdzIGJ1Z2d5LCBzaW5jZSB0aGUKPiBj
b2RlIHRvIHVzZSBpdCBieSBkZWZhdWx0IGFzIHRoZSBvbmx5IG9wdGlvbiBoYWQgdG8gYmUgcmV2
ZXJ0ZWQ6Cj4KPiBjb21taXQgYWQ1ZDk1ZTRkNTM4NzM3ZWQzZmEyNTQ5Mzc3N2RlY2YyNjRhMzAx
MQo+IEF1dGhvcjogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBEYXRlOiAgIFR1
ZSBTZXAgOCAxNTo0MToxNyAyMDIwICsxMDAwCj4KPiAgICAgUmV2ZXJ0ICJkcm0vaTkxNS9nZW06
IEFzeW5jIEdQVSByZWxvY2F0aW9ucyBvbmx5Igo+Cj4gVGhpcyBjb2RlIGp1c3QgZGlzYWJsZXMg
Z3B1IHJlbG9jYXRpb25zLCBsZWF2aW5nIHRoZSBnYXJiYWdlCj4gY29sbGVjdGlvbiBmb3IgbGF0
ZXIgcGF0Y2hlcyBhbmQgbW9yZSBpbXBvcnRhbnRseSwgbXVjaCBsZXNzIGNvbmZ1c2luZwo+IGRp
ZmYuIEFsc28gZ2l2ZW4gaG93IG11Y2ggaGVhZGFjaGVzIHRoaXMgY29kZSBoYXMgY2F1c2VkIGlu
IHRoZSBwYXN0LAo+IGxldHRpbmcgdGhpcyBzb2FrIGZvciBhIGJpdCBzZWVtcyBqdXN0aWZpZWQu
Cj4KPiBDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogIlRob21hcyBIZWxsc3Ryw7ZtIiA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29t
Pgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gLS0tCj4gIC4u
Li9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDQzICsrKysrKysr
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDI1IGRlbGV0
aW9ucygtKQoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+CgpOb3RlIHRoYXQgYSBsb3Qgb2YgY29tcGxleGl0eSBtYXkgYmUg
cmVtb3ZlZCB3aXRoIGdwdSByZWxvY2F0aW9ucyBnb25lLiBTb21lIGlndCB0ZXN0cyBtaWdodCBh
bHNvIHN0YXJ0IHRvIGZhaWwsIGFzIHRoZXkgZXhwZWN0IHJlbG9jYXRpb25zIHRvIGNvbXBsZXRl
IGFzeW5jaHJvbm91c2x5LgoKSXMgaXQga2VwdCBpbiBjYXNlIHdlIG5lZWQgdG8gcmV2aXZlIGl0
PwoKfk1hYXJ0ZW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
