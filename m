Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C611863C4B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7B9893AB;
	Tue,  9 Jul 2019 19:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F921893AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:58:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:58:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="192801136"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2019 12:58:19 -0700
Date: Tue, 9 Jul 2019 12:58:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190709195818.juriu6rhdl2uk54c@ldmartin-desk1>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-15-lucas.demarchi@intel.com>
 <ad62c6fb887e72e3cdb8869eb6c5fc0be957053b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad62c6fb887e72e3cdb8869eb6c5fc0be957053b.camel@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 14/25] drm/i915/tgl: update ddi/tc
 clock_off bits
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMTI6NDk6MjFQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPkZZSQo+Cj5odHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzE2ODA1
Lz9zZXJpZXM9NjI0OTImcmV2PTcKPgo+SXMganVzdCB3YWl0aW5nIENJIGZlZWRiYWNrIHRvIGdl
dCBtZXJnZWQgYW5kIGl0IGlzIGRvaW5nIHRoZSBzYW1lIGpvYgo+YXMgdGhpcyBwYXRjaC4KCkJ1
dCB0aGF0IGRlcGVuZHMgb24gdGhlIGVudW0gcGh5IGluZnJhLiBJcyB0aGF0IGVudGVyaW5nIG5v
dz8/IFRoaXMKd291bGQgbWVhbnMgcmV3b3JraW5nIHRoZSBwYXRjaGVzIG9uIHRoaXMgc2VyaWVz
IGFzIHRoZXkgYXJlIGdvaW5nIHRvCmNvbmZsaWN0IGJhZGx5LgoKTHVjYXMgRGUgTWFyY2hpCgo+
Cj5PbiBNb24sIDIwMTktMDctMDggYXQgMTY6MTYgLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90
ZToKPj4gRnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KPj4KPj4g
SW4gR0VOIDEyIFBPUlRfQyBEREkgY2xrX29mZiBiaXQgaXMgbm90IGVxdWFsbHkgZGlzdGFuY2Vk
IHRvIEEvQiwKPj4gaXQncyBhdCBvZmZzZXQgMjQuIFNpbWlsYXJseSBUQyBwb3J0ICg1LzYpIGNs
ayBvZmYgYml0cyBhcmUgYXQKPj4gb2Zmc2V0IDIyLzIzLiBFeHRlbmQgdGhlIG1hY3JvcyB0byBj
b3ZlciB0aGUgYWRkaXRpb25hbCBwb3J0cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFoZXNoIEt1
bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDggKysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+PiBpbmRleCA1Y2E3NGVjYTA1YTQuLjQ1ODhkZjllMTFkZSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4+IEBAIC05NzIzLDkgKzk3MjMsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0
ZSB7Cj4+ICAjZGVmaW5lIERQQ0xLQV9DRkdDUjBfSUNMCQkJX01NSU8oMHgxNjQyODApCj4+ICAj
ZGVmaW5lICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpCSgxIDw8ICgocG9ydCkKPj4g
PT0gIFBPUlRfRiA/IDIzIDogXAo+PiAgCQkJCQkJICAgICAgKHBvcnQpICsgMTApKQo+PiAtI2Rl
ZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCkgICAoMSA8PCAoKHBvcnQp
ICsgMTApKQo+PiAtI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0
KSAoMSA8PCAoKHRjX3BvcnQpID09Cj4+IFBPUlRfVEM0ID8gXAo+PiAtCQkJCQkJICAgICAgMjEg
OiAodGNfcG9ydCkgKwo+PiAxMikpCj4+ICsjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElf
Q0xLX09GRihwb3J0KQkoMSA8PCAoKHBvcnQpID09IFBPUlRfQwo+PiA/IDI0IDogXAo+PiArCQkJ
CQkJICAgICAgIChwb3J0KSArIDEwKSkKPj4gKyNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX1RD
X0NMS19PRkYodGNfcG9ydCkJKDEgPDwKPj4gKCh0Y19wb3J0KSA8IFBPUlRfVEM0ID8gXAo+PiAr
CQkJCQkJICAgICAgICh0Y19wb3J0KSArIDEyIDoKPj4gXAo+PiArCQkJCQkJICAgICAgICh0Y19w
b3J0KSAtCj4+IFBPUlRfVEM0ICsgMjEpKQo+PiAgI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9ERElf
Q0xLX1NFTF9TSElGVChwb3J0KQkoKHBvcnQpID09Cj4+IFBPUlRfRiA/IDIxIDogXAo+PiAgCQkJ
CQkJKHBvcnQpICogMikKPj4gICNkZWZpbmUgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFT
Syhwb3J0KQkoMyA8PAo+PiBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpKQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
