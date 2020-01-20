Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBE8142258
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 05:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53206E08E;
	Mon, 20 Jan 2020 04:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CE36E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 04:21:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 20:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,340,1574150400"; d="scan'208";a="306814639"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga001.jf.intel.com with ESMTP; 19 Jan 2020 20:21:35 -0800
Date: Mon, 20 Jan 2020 09:42:59 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200120041258.GA20564@intel.com>
References: <20200116185421.66585-1-jose.souza@intel.com>
 <20200116185421.66585-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116185421.66585-2-jose.souza@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH rebased 2/3] drm/i915/dc3co: Check for DC3C0
 exit state instead of sleep
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wMS0xNiBhdCAxMDo1NDoyMCAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBEQzNDMCBjb3VsZCBoYXZlIGFscmVhZHkgZXhpdCBzbyBubyBuZWVkIHRvIGFsd2F5
cyBzbGVlcCwgc28gbGV0cwo+IHJlYWQgdGhlIHJlZ2lzdGVyIHdpdGggdGhlIHN0YXRlLgo+IAo+
IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IEFuc2h1bWFuIEd1cHRh
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IGluZGV4IDIxNTYx
YWNmYTNhYy4uMTA3NWU0ZWRkMmIzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBAQCAtODA3LDcgKzgwNyw3IEBAIHN0
YXRpYyB2b2lkIHRnbF9kaXNhYmxlX2RjM2NvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgCS8qCj4gIAkgKiBEZWxheSBvZiAyMDB1cyBEQzNDTyBFeGl0IHRpbWUgQi5TcGVj
IDQ5MTk2Cj4gIAkgKi8KPiAtCXVzbGVlcF9yYW5nZSgyMDAsIDIxMCk7Cj4gKwlpbnRlbF9kZV93
YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIERDX1NUQVRFX0VOLCBEQ19TVEFURV9EQzNDT19TVEFUVVMs
IDEpOwpJdCBpcyBub3QgZG9jdW1lbnRlZCBpbiBCLlNwZWNzIHRvIHdhaXQgZm9yIERDM0NPIHN0
YXR1cywgYW5kIHRoaXMgREMzQ08gc3RhdHVzIGJpdCBpcwpqdXN0IGZvciBERUJVRyBwdXJwb3Nl
Lgp3aGF0IGlmLCBpdCBoYXZlIG5ldmVyIHJlYWNoZWQgREMzQ08gZHVlIHRvIFBTUjIgZWRwIGxp
bmsgaXMgbmV2ZXIgZ2V0cyB0byBzbGVlcAppLmUgOXRoIGJpdCBvZiBQU1IyX1NUQVRVUywgaXQg
aXMgZ29pbmcgdG8gd2FpdCBmb3IgZW50aXJlIDFtcyB3aXRoIHRoaXMgcGF0Y2guCkxldHMgc2F5
IGlmIERDM0NPIGlzIGFscmVhZHkgZXhpdGVkIGFuZCB3ZSBsYW5kIGhlcmUgaW4gZGlzYWxsb3cg
c2VxdWVuY2UsIEIuU3BlY3MKc2VxdWVuY2UgZmlyc3QgY2xlYXIgdGhlIERDM0NPIHN0YXR1cyBi
aXQgYmVmb3JlIGRpc2FibGluZyBpdCwgc28gdGhlbiBhbHNvCml0IGlzIGdvaW5nIHRvIHdhaXQg
Zm9yIGVudGlyZSAxbXMgd2l0aCB0aGlzIHBhdGNoLgpJIHRoaW5rIHdhaXRfZm9yX3VzKCkgd2ls
bCBiZSBiZXR0ZXIgY2hvaWNlIGlmLCB3ZSB3YW50IHRvIHdhaXQgZm9yIERDM0NPIGV4aXQgc3Rh
dHVzCnJhaHRlciB0aGVuIHBsYWluIHNsZWVwLgpBbmQgd2hpbGUgcmV2aWV3aW5nIEIuU3BlY3Mg
dGhlcmUgaXMgcmVjZW50IGNoYW5nZSB0aGF0IHdlIGFsc28gbmVlZCB0byBkaXNhYmxlIApQU1Iy
IGluIERDM0NPIGRzaWFsbG93IHNlcXVlbmNlIChOb3QgcmVsYXRlZCB0byB0aGlzIHBhdGNoKS4K
VGhhbmtzLApBbnNodW1hbiBHdXB0YS4KCj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGJ4dF9lbmFi
bGVfZGM5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAtLSAKPiAyLjI1LjAK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
