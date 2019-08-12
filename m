Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B42408A0F3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEC08981B;
	Mon, 12 Aug 2019 14:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CD28981B;
 Mon, 12 Aug 2019 14:25:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 07:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="193978597"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2019 07:25:53 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3164F5C1E75; Mon, 12 Aug 2019 17:25:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156561617536.2301.12360130942873835783@skylake-alporthouse-com>
References: <20190812103224.30163-1-chris@chris-wilson.co.uk>
 <87pnla7g87.fsf@gaia.fi.intel.com>
 <156561617536.2301.12360130942873835783@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 17:25:14 +0300
Message-ID: <87k1bi796d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Trim ring measurement by one
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEyOjUyOjU2KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBCZSBhIGxpdHRsZSBtb3Jl
IGNvbnNlcnZhdGl2ZSBpbiBvdXIgcmluZyBtZWFzdXJlbWVudCBhbmQgZXhjbHVkZSBvbmUKPj4g
PiBiYXRjaCB0byBsZWF2ZSByb29tIGluIGNhc2Ugb3VyIHVzZXIgbmVlZHMgdG8gd3JhcCAod2hl
cmUgYSByZXF1ZXN0IHdpbGwKPj4gPiBiZSBleHBhbmRlZCB0byBjb3ZlciB0aGUgdW51c2VkIHNw
YWNlIGF0IHRoZSBlbmQgb2YgdGhlIHJpbmcpLgo+PiA+Cj4+IAo+PiBkaWQgcmVhZCB0aGUgd3Jh
cHBpbmcgcGFydCBhbmQgdGhhdCBzZWVtcyB0byBiZSB0aGUgY2FzZSB0aGF0Cj4+IHdlIGVubGFy
Z2UgdGhlIHdyYXBwaW5nIHJlcXVlc3QuCj4+IAo+PiBIb3dldmVyIGRvIHdlIGxvc2Ugc29tZSBj
b3ZlcmFnZSBvbiB0aGUgYWN0dWFsIHdyYXAgdGVzdHM/Cj4KPiBUaGUgdGVzdHMgd2hlcmUgd2Ug
Y2FsbCBtZWFzdXJlX3Jpbmdfc2l6ZSwgYXJlIHRob3NlIHRoYXQgd2UgZG8gbm90IHdhbnQKPiB0
byBibG9jayBkdWUgdG8gcnVubmluZyBvdXQgb2Ygc3BhY2UgKGFuZCB3cmFwcGluZykgOikKCk9r
LiBUaGUgYnVncyBvbiB0aGUgd3JhcCBpdHNlbGYgc2hvdWxkIGJ1YmJsZSB0byBzdXJmYWNlCmlu
ZGlyZWN0bHkuIEFncmVlZCB0aGF0IGVzdGltYXRpbmcgdGhlIGluZmxpZ2h0IHdyb25nCmlzIGJh
ZC4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
