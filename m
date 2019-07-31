Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5837CCB4
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 21:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94006E2EF;
	Wed, 31 Jul 2019 19:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0716E2F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 19:23:33 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4032208E4;
 Wed, 31 Jul 2019 19:23:32 +0000 (UTC)
Date: Wed, 31 Jul 2019 15:23:31 -0400
From: Sasha Levin <sashal@kernel.org>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20190731192331.GA17697@sasha-vm>
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
 <20190719004526.B0CC521850@mail.kernel.org>
 <CABVU7+sbS8mw+4O1Ct8EY_5cj+fnmNFzyd6_=v2_RmCgBRA13g@mail.gmail.com>
 <20190730214851.GF29162@sasha-vm>
 <1689B7E0-5CA6-4B27-B2A8-F352618096EA@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1689B7E0-5CA6-4B27-B2A8-F352618096EA@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1564601013;
 bh=Y2Pz74QYqGGC1hOcZt1OKTgO0goLWg57a6iQRfF+1Kw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NMQDgh1hqFQzzLdCjRq/hLpLWq2U4IIa2H5rpTrVcjyfsysDSRcIYfFfM0OpHVqiS
 DqSajvRGX6Wwp+u2ME7ta1aPHoUABht0Vly1raA+Epsveadsdpx2pEc/XL0Jf/SjEa
 YXoUWobDFvjp8HTJj7maSrVoT/CItZnQYjSyGB0g=
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDU6MTQ6MzhQTSArMDAwMCwgVml2aSwgUm9kcmlnbyB3
cm90ZToKPj4gT24gSnVsIDMwLCAyMDE5LCBhdCAyOjQ4IFBNLCBTYXNoYSBMZXZpbiA8c2FzaGFs
QGtlcm5lbC5vcmc+IHdyb3RlOgo+PiByYXRoZXIKPj4gdGhhbiBhIGZldyB3ZWVrcyBsYXRlciB3
aGVuIEdyZWcgc2VuZHMgaGlzICJGQUlMRUQ6IiBtYWlscyBhbmQgZ2V0cwo+PiBpZ25vcmVkIGJl
Y2F1c2Ugc2FpZCBmb2xrcyBoYXZlIG1vdmVkIG9uLgo+Cj5ob3dldmVyIHRoaXMgY291bGQgcG90
ZW50aWFsbHkgY2F1c2UgZXh0cmEgd29yayBhbmQgY29uZnVzaW9uIGxpa2Ugd2UgY2FuIHNlZSBv
biB0aGlzCj50aHJlYWQgd2hlcmUgdGhlIGRldmVsb3BlciBpbW1lZGlhdGVseSByZXNwb25kZWQg
dG8geW91ciBlbWFpbCBhbmQgc2VudCB0aGUKPmJhY2twb3J0ZWQgcGF0Y2ggdG8gdGhlIHN0YWJs
ZSBtYWlsaW5nIGxpc3QuCj4KPk1heWJlIGl0IGlzIGp1c3QgYmVjYXVzZSB3ZSBhcmUgdXNlZCB0
byBHcmVnJ3MgZmFpbGVkIHRvIGFwcGx5IGVtYWlsIG9yIG1heWJlCj5pdCB3YXMganVzdCBhIG1h
dHRlciBvZiBlZHVjYXRpb24uLi4KCkkgdGhpbmsgdGhhdCB0aGVyZSB3ZXJlIGEgZmV3IHRoaW5n
cyBoZXJlIHRoYXQgZW5kZWQgdXAgY2F1c2luZwpjb25mdXNpb24sIGJ1dCBJJ20gbm90IHF1aXRl
IHN1cmUgaG93IHRvIGFkZHJlc3MgdGhlbS4KCkkgdGhpbmsgdGhhdCBzdGFibGUgc2hvdWxkIGhh
dmUgYSBjbGVhcmVyIHJ1bGVzIGFzIHRvIGhvdyBiYWNrcG9ydHMKc2hvdWxkIGJlIHNlbnQuIFJp
Z2h0IG5vdyB3ZSB3ZWVkIHRocm91Z2ggbWFpbHMgdG8gc3RhYmxlQCB0byBmaWd1cmUgb3V0Cndo
YXQgYXJlIGJhY2twb3J0IHJlcXVlc3RzLCB3aGF0IGFyZSB1cHN0cmVhbSBwYXRjaGVzLCBhbmQg
d2hhdCBhcmUganVzdApjb25mdXNlZCBmb2xrcy4KCldlIGhhdmUgZ290dGVuIHByZXR0eSBnb29k
IGF0IHRoaXMsIGJ1dCBzdGlsbCBub3QgcGVyZmVjdC4uLgoKPkJ1dCBJIHdvbmRlciBpZiB0aGVy
ZSBpc24ndCBzb21ldGhpbmcgdGhhdCBjb3VsZCBiZSBpbXByb3ZlZCBvbiB0aGUgYXV0b21hdGVk
Cj5tZXNzYWdlIGhlcmUuIFNvbWUgbWVzc2FnZSBjbGVhcmx5IHN0YXRpbmc6Cj4KPi0gTm8gYWN0
aW9uIHJlcXVpcmVkIGF0IHRoaXMgcG9pbnQKCk9uZSAqY291bGQqIHNlbmQgYSBiYWNrcG9ydCBh
dCB0aGlzIHBvaW50LiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgd2hlbgpHcmVnIHNlZXMgYSBm
YWlsdXJlIHRvIGFwcGx5IGEgY29tbWl0IHRhZ2dlZCBmb3Igc3RhYmxlIGhlJ2xsIGdyZXAKdGhy
b3VnaCBoaXMgbWFpbGJveCwgaG9wZWZ1bGx5IGZpbmRpbmcgdGhlIGJhY2twb3J0IGFzIGEgcmVz
dWx0IG9mIHRoaXMKYm90IGJ1Z2dpbmcgcGVvcGxlLgoKPi0geW91IGNhbiB3b3JrIHRvIHByZXBh
cmUgdGhlIGJhY2twb3J0IGluIGFkdmFuY2UKPi0gIGRvbid0IHNlbmQgaXQgdG8gc3RhYmxlIGJl
Zm9yZSByZXF1ZXN0ZWQgYnkgR3JlZwoKV2h5IG5vdD8gSSB0aGluayBpdCdzIGZpbmUgdG8gcHV0
IGl0IG9uIHRoZSBtYWlsaW5nIGxpc3QsIHNwZWNpYWxseQp1bmRlciB0aGUgc2FtZSB0aHJlYWQs
IGFuZCBsZXQgdXMgZGVhbCB3aXRoIGl0IGFmdGVyIHRoZSBwYXRjaCBnb2VzCnVwc3RyZWFtLgoK
LS0KVGhhbmtzLApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
