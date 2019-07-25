Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3675209
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 17:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078136E773;
	Thu, 25 Jul 2019 15:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715B06E775
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 15:01:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 08:01:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160930698"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 08:01:34 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190725142746.25688-1-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bc1a6281-6af3-2f7d-0a7e-ec07528f8a3d@intel.com>
Date: Thu, 25 Jul 2019 08:01:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725142746.25688-1-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version
 for Comet Lake
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

CgpPbiA3LzI1LzE5IDc6MjcgQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gIEZyb20gR1Qg
cGVyc3BlY3RpdmUsIENvbWV0IExha2UgaXMganVzdCBDb2ZmZSBMYWtlIHJldiA1LAo+IGJ1dCB0
aGVyZSBpcyBkZWRpY2F0ZWQgR3VDIGZpcm13YXJlIGZvciBpdC4KCkFjY29yZGluZyB0byBBbnVz
aGEgdGhlcmUgaXMgYWxzbyBhIGRlZGljYXRlZCBIdUMgRlcgZm9yIGl0LCB3aGljaCAKc2hvdWxk
IGJlIGNvbWluZyBvdXQgc29vbiwgc28gd2Ugc2hvdWxkIHByb2JhYmx5IHdhaXQgYW5kIGFkZCB0
aGVtIGJvdGggCmF0IHRoZSBzYW1lIHRpbWUgc2luY2Ugd2Ugc3RpbGwgZG9uJ3QgaGF2ZSBhIHVz
ZSBmb3IgR3VDIGJ5IGl0c2VsZiAKKGJlY2F1c2Ugc3VibWlzc2lvbiBpcyBzdGlsbCBvZmYpLgoK
RGFuaWVsZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gaW5kZXggNzg5YjNkNzIy
OGE0Li4zNTE5NDE4YjE3Y2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMKPiBAQCAtMzUsNiArMzUsNyBAQAo+ICAgICovCj4gICAjZGVmaW5lIElOVEVMX1VD
X0ZJUk1XQVJFX0RFRlMoZndfZGVmLCBndWNfZGVmLCBodWNfZGVmKSBcCj4gICAJZndfZGVmKElD
RUxBS0UsICAgIDAsIGd1Y19kZWYoaWNsLCAzMywgMCwgMCksIGh1Y19kZWYoaWNsLCAgOCwgIDQs
IDMyMzgpKSBcCj4gKwlmd19kZWYoQ09GRkVFTEFLRSwgNSwgZ3VjX2RlZihjbWwsIDMzLCAwLCAw
KSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKPiAgIAlmd19kZWYoQ09GRkVFTEFLRSwg
MCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwK
PiAgIAlmd19kZWYoR0VNSU5JTEFLRSwgMCwgZ3VjX2RlZihnbGssIDMzLCAwLCAwKSwgaHVjX2Rl
ZihnbGssIDAzLCAwMSwgMjg5MykpIFwKPiAgIAlmd19kZWYoS0FCWUxBS0UsICAgMCwgZ3VjX2Rl
ZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
