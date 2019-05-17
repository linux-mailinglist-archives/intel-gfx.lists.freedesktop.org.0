Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB7221A84
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 17:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03628996F;
	Fri, 17 May 2019 15:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4EA89932
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 15:27:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 08:27:05 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 08:27:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
 <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
 <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
 <155804656786.21432.5178995588934161825@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <44810d46-e275-47dd-3879-4242568c0b14@intel.com>
Date: Fri, 17 May 2019 08:27:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <155804656786.21432.5178995588934161825@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: move and rename i915_runtime_pm
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

CgpPbiA1LzE2LzE5IDM6NDIgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNS0xNiAyMzoxMDoxMCkKPj4gUXVvdGluZyBDaHJpcyBXaWxzb24gKDIw
MTktMDUtMTYgMjM6MDc6NDMpCj4+PiBRdW90aW5nIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIw
MTktMDUtMTYgMjI6NTY6MzEpCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVf
cG0uaAo+Pj4+IGluZGV4IGI5NjRjYTdhZjljOC4uMGUzODE3Zjk3ODVlIDEwMDY0NAo+Pj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+Pj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+Pj4+IEBAIC02LDYgKzYsNyBA
QAo+Pj4+ICAgI2lmbmRlZiBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4+Pj4gICAjZGVmaW5lIF9f
SU5URUxfUlVOVElNRV9QTV9IX18KPj4+PiAgIAo+Pj4+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNl
Lmg+Cj4+Pgo+Pj4gVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGFueSBwZWVraW5nIGludG8gc3Ry
dWN0IGRldmljZSwgc28gZG8gd2Ugbm90Cj4+PiBqdXN0IG5lZWQgdGhlIHN0cnVjdCBkZXZpY2Ug
Zm9yd2FyZCBkZWNsIGhlcmU/CgpUcnVlLCB3aWxsIGZpeC4KCj4+Cj4+IEFuZCBhZGQgaXQgdG8g
TWFrZWZpbGUuaGVhZGVyc190ZXN0Cj4gCj4gSGludDogd2UgbWF5IG5lZWQgdG8gc3BsaXQgb3V0
IGludGVsX2Rpc3BsYXlfcG93ZXIuW2NoXQo+IC1DaHJpcwo+IAoKU2hvdWxkIEkgYWRkIGludGVs
X2Rpc3BsYXlfcG93ZXIuaCB0byBNYWtlZmlsZS5oZWFkZXJzX3Rlc3QgYXMgd2VsbD8gSXQgCmRv
ZXMgY29tcGlsZSBvbiBpdHMgb3duLCBidXQgaXQnbGwgaGF2ZSB0byBpbmNsdWRlIGludGVsX2Rp
c3BsYXkuaCwgCndoaWNoIGlzbid0IG9uIHRoZSBsaXN0LgoKRGFuaWVsZQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
