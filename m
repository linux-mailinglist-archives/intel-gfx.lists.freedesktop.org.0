Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27721109B44
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 10:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E8F89C5E;
	Tue, 26 Nov 2019 09:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0288389C5E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 09:32:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 01:32:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202662118"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 01:32:44 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191125162737.2161069-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4740e8fe-7747-1eb5-803b-bcefb5d72959@linux.intel.com>
Date: Tue, 26 Nov 2019 09:32:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125162737.2161069-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Default to more lenient force
 preempt timeout
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI1LzExLzIwMTkgMTY6MjcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCYXNlZCBvbiBhIHNh
bXBsaW5nIG9mIGEgbnVtYmVyIG9mIGJlbmNobWFya3MgYWNyb3NzIHBsYXRmb3JtcywgYnkKPiBk
ZWZhdWx0IG9wdCBmb3IgYSBtb3JlIG11Y2ggbGVuaWVudCB0aW1lb3V0IHNvIHRoYXQgd2Ugc2hv
dWxkIG5vdAo+IGFkdmVyc2VseSBhZmZlY3QgZXhpc3RpbmcgY2xpZW50cy4KPiAKPiA2NDBtcyBv
dWdodCB0byBiZSBlbm91Z2ggZm9yIGFueW9uZS4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTY5Cj4gRml4ZXM6IDNhN2E5MmFi
YThmYiAoImRybS9pOTE1L2V4ZWNsaXN0czogRm9yY2UgcHJlZW1wdGlvbiIpCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogRWVybyBU
YW1taW5lbiA8ZWVyby50LnRhbW1pbmVuQGludGVsLmNvbT4KPiBDYzogRG1pdHJ5IFJvZ296aGtp
biA8ZG1pdHJ5LnYucm9nb3poa2luQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L0tjb25maWcucHJvZmlsZSB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9LY29uZmlnLnByb2ZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2Zp
bGUKPiBpbmRleCAxNzk5NTM3YTMyMjguLmMyODBiNmFlMzhlYiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9LY29uZmlnLnByb2ZpbGUKPiBAQCAtMjUsNyArMjUsNyBAQCBjb25maWcgRFJNX0k5MTVf
SEVBUlRCRUFUX0lOVEVSVkFMCj4gICAKPiAgIGNvbmZpZyBEUk1fSTkxNV9QUkVFTVBUX1RJTUVP
VVQKPiAgIAlpbnQgIlByZWVtcHQgdGltZW91dCAobXMsIGppZmZ5IGdyYW51bGFyaXR5KSIKPiAt
CWRlZmF1bHQgMTAwICMgbWlsbGlzZWNvbmRzCj4gKwlkZWZhdWx0IDY0MCAjIG1pbGxpc2Vjb25k
cwo+ICAgCWhlbHAKPiAgIAkgIEhvdyBsb25nIHRvIHdhaXQgKGluIG1pbGxpc2Vjb25kcykgZm9y
IGEgcHJlZW1wdGlvbiBldmVudCB0byBvY2N1cgo+ICAgCSAgd2hlbiBzdWJtaXR0aW5nIGEgbmV3
IGNvbnRleHQgdmlhIGV4ZWNsaXN0cy4gSWYgdGhlIGN1cnJlbnQgY29udGV4dAo+IAoKSWYgaXQn
cyBuZWVkZWQgaXQncyBuZWVkZWQuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
