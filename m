Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D3CF3BF0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 00:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953CB6F7F9;
	Thu,  7 Nov 2019 23:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188756F7F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 23:07:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 15:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="205822989"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.255.90.11])
 ([10.255.90.11])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 15:07:19 -0800
To: Daniel Vetter <daniel@ffwll.ch>, "Souza, Jose" <jose.souza@intel.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
 <20190829065004.GG2112@phenom.ffwll.local>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <f8cefd62-1322-fc16-39b5-e43994387f3e@intel.com>
Date: Thu, 7 Nov 2019 15:07:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190829065004.GG2112@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzI4LzIwMTkgMTE6NTAgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gV2VkLCBB
dWcgMjgsIDIwMTkgYXQgMDg6MzE6MjdQTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4+IE9u
IFdlZCwgMjAxOS0wOC0yOCBhdCAyMToxMyArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4g
UXVvdGluZyBTb3V6YSwgSm9zZSAoMjAxOS0wOC0yOCAyMToxMTo1MykKPj4+PiBSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+Pgo+Pj4g
SXQncyB1c2luZyBhIG5vbi1zdGFuZGFyZCBmb3IgaTkxNSBlcnJvciBjb2RlLCBhbmQgZ2V0X3Rp
bGluZyBpcyBub3QKPj4KPj4gSHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRoZW4/IQo+IAo+
IGh0dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2NzL2RybS9ncHUvZHJtLXVhcGkuaHRtbCNy
ZWNvbW1lbmRlZC1pb2N0bC1yZXR1cm4tdmFsdWVzCj4gCj4gUGVyIGFib3ZlICJmZWF0dXJlIG5v
dCBzdXBwb3J0ZWQiIC0+IEVPUE5PVFNVUFAuCj4gCj4+PiBhZmZlY3RlZCwgaXQgd2lsbCBhbHdh
eXMgcmV0dXJuIExJTkVBUi4gWW91IGNhbm5vdCBzZXQgdGlsaW5nIGFzIAo+Pgo+PiBGb2xsb3dp
bmcgdGhpcyBzZXRfdGlsaW5nKCkgTElORUFSIHNob3VsZCBiZSBhbGxvd2VkIHRvby4KPj4gSSBw
cmVmZXIgdGhlIGN1cnJlbnQgYXBwcm9hY2ggb2YgcmV0dXJuaW5nIGVycm9yLgo+IAo+IEknbSBu
b3Qgc2VlaW5nIHRoZSB2YWx1ZSBpbiBrZWVwaW5nIGdldF90aWxpbmcgc3VwcG9ydGVkLiBFaXRo
ZXIgdXNlcnNwYWNlCj4gc3RpbGwgdXNlcyB0aGUgbGVnYWN5IGJhY2toYW5uZWwgYW5kIGRyaTIs
IGluIHdoaWNoIGNhc2UgaXQgbmVlZHMgdG8gYmUKPiBmaXhlZCBubyBtYXR0ZXIgd2hhdC4gT3Ig
aXQncyB1c2luZyBtb2RpZmllcnMsIGluIHdoaWNoIGNhc2UgdGhpcyBpcyBkZWFkCj4gY29kZS4g
T25seSBvdGhlciB1c2VyIEkgY2FuIHRoaW5rIG9mIGlzIHRha2VvdmVyIGZvciBmYXN0Ym9vdCwg
YnV0IGlmIHlvdQo+IGdldCBhbnl0aGluZyBlbHNlIHRoYW4gdW50aWxlZCBpdCdzIGFsc28gYnJv
a2VuICh3ZSBkb24ndCBoYXZlIGFuIGlvY3RsIHRvCj4gcmVhZCBvdXQgdGhlIG1vZGlmaWVycywg
aGVjayBldmVuIGFsbCB0aGUgcGxhbmVzLCB0aGVyZSdzIG5vIGdldGZiMikuCj4gCj4gU28gcmVh
bGx5IG5vdCBzZWVpbmcgdGhlIHBvaW50IGluIGtlZXBpbmcgdGhhdCB3b3JraW5nLgoKRGFuaWVs
LCAgSSBjYW1lIGFjcm9zcyB1c2FnZSBvZiBHRVRfVElMSU5HIGluIGxpYmRybS4KSXMgdXNlZCBp
biBkcm1faW50ZWxfYm9fZ2VtX2NyZWF0ZV9mcm9tX25hbWUoKSBhbmQgZHJtX2ludGVsX2JvX2dl
bV9jcmVhdGVfZnJvbV9wcmltZSgpLgpTaG91bGQgdGhlc2UgYmUgdXBkYXRlZCBzbyB0aGV5IGRv
bid0IGZhaWwgd2hlbiBFT1BOT1RTVVBQIGlzIHJldHVybmVkIG9uIGdlbjEyKz8KTWF5YmUgbGli
ZHJtIHNob3VsZCBqdXN0IHNldCB0aWxpbmdfbW9kZSB0byAwIG9uIEVPUE5PVFNVUFAgZXJyb3Ig
aW5zdGVhZCBvZiB0aG9zZSBjYWxscyBmYWlsaW5nPwoKLUJyaWFuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
