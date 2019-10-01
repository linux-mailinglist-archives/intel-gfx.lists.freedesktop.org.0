Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A153C30BB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 11:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F496E5C3;
	Tue,  1 Oct 2019 09:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA716E5C3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 09:59:15 +0000 (UTC)
Received: from localhost (unknown [89.205.130.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BAED2190F;
 Tue,  1 Oct 2019 09:59:14 +0000 (UTC)
Date: Tue, 1 Oct 2019 11:59:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191001095911.GA2945944@kroah.com>
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com>
 <20191001093849.GA2945163@kroah.com> <87blv0dcol.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blv0dcol.fsf@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1569923954;
 bh=6BQj7mEtfMmysioXhhYw2T2ycMJfZtHk5KXS+5M9J/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gsqEsnnhnu/YvGG69TnK4g5a2xTa+FgrBXr/RiK7xIdHcSVquGY5kk5UCPw0iPfki
 6IRV7Bm90LEpF2HwXQ4tSoA/ymTVqyAIm66I8530Ysgg8KutObDwHg80mjPMs70gDR
 DwW9tjRLUXtLNXrmKQhvnYg1xEvyDLnKrCMVglag=
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTI6NDI6MzRQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAwMSBPY3QgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCAwMSwgMjAxOSBhdCAxMTow
NzozOUFNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+PiBUaGUga2VybmVsIGhhcyBwbGVu
dHkgb2YgdGVybmFyeSBvcGVyYXRvcnMgdG8gY2hvb3NlIGJldHdlZW4gY29uc3RhbnQKPiA+PiBz
dHJpbmdzLCBzdWNoIGFzIGNvbmRpdGlvbiA/ICJ5ZXMiIDogIm5vIiwgYXMgd2VsbCBhcyB2YWx1
ZSA9PSAxID8gIiIgOgo+ID4+ICJzIjoKPiA+PiAKPiA+PiAkIGdpdCBncmVwICc/ICJ5ZXMiIDog
Im5vIicgfCB3YyAtbAo+ID4+IDI1OAo+ID4+ICQgZ2l0IGdyZXAgJz8gIm9uIiA6ICJvZmYiJyB8
IHdjIC1sCj4gPj4gMjA0Cj4gPj4gJCBnaXQgZ3JlcCAnPyAiZW5hYmxlZCIgOiAiZGlzYWJsZWQi
JyB8IHdjIC1sCj4gPj4gMTk2Cj4gPj4gJCBnaXQgZ3JlcCAnPyAiIiA6ICJzIicgfCB3YyAtbAo+
ID4+IDI1Cj4gPj4gCj4gPj4gQWRkaXRpb25hbGx5LCB0aGVyZSBhcmUgc29tZSBvY2N1cmVuY2Vz
IG9mIHRoZSBzYW1lIGluIHJldmVyc2Ugb3JkZXIsCj4gPj4gc3BsaXQgdG8gbXVsdGlwbGUgbGlu
ZXMsIG9yIG90aGVyd2lzZSBub3QgY2F1Z2h0IGJ5IHRoZSBzaW1wbGUgZ3JlcC4KPiA+PiAKPiA+
PiBBZGQgaGVscGVycyB0byByZXR1cm4gdGhlIGNvbnN0YW50IHN0cmluZ3MuIFJlbW92ZSBleGlz
dGluZyBlcXVpdmFsZW50Cj4gPj4gYW5kIGNvbmZsaWN0aW5nIGZ1bmN0aW9ucyBpbiBpOTE1LCBj
eGdiNCwgYW5kIFVTQiBjb3JlLiBGdXJ0aGVyCj4gPj4gY29udmVyc2lvbiBjYW4gYmUgZG9uZSBp
bmNyZW1lbnRhbGx5Lgo+ID4+IAo+ID4+IFdoaWxlIHRoZSBtYWluIGdvYWwgaGVyZSBpcyB0byBh
YnN0cmFjdCByZWN1cnJpbmcgcGF0dGVybnMsIGFuZCBzbGlnaHRseQo+ID4+IGNsZWFuIHVwIHRo
ZSBjb2RlIGJhc2UgYnkgbm90IG9wZW4gY29kaW5nIHRoZSB0ZXJuYXJ5IG9wZXJhdG9ycywgdGhl
cmUKPiA+PiBhcmUgYWxzbyBzb21lIHNwYWNlIHNhdmluZ3MgdG8gYmUgaGFkIHZpYSBiZXR0ZXIg
c3RyaW5nIGNvbnN0YW50Cj4gPj4gcG9vbGluZy4KPiA+PiAKPiA+PiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiA+PiBDYzogVmlzaGFsIEt1bGthcm5pIDx2aXNoYWxAY2hlbHNpby5jb20+
Cj4gPj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPiA+PiBDYzogR3JlZyBLcm9haC1IYXJ0
bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiA+PiBDYzogbGludXgtdXNiQHZnZXIu
a2VybmVsLm9yZwo+ID4+IENjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24u
b3JnPgo+ID4+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPj4gQ2M6IEp1bGlh
IExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+Cj4gPj4gQ2M6IFJhc211cyBWaWxsZW1vZXMg
PGxpbnV4QHJhc211c3ZpbGxlbW9lcy5kaz4KPiA+PiBSZXZpZXdlZC1ieTogR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gIyB2MQo+ID4KPiA+IEFzIHRoaXMg
aXMgYSB0b3RhbGx5IGRpZmZlcmVudCB2ZXJzaW9uLCBwbGVhc2UgZHJvcCBteSByZXZpZXdlZC1i
eSBhcwo+ID4gdGhhdCdzIHJlYWxseSBub3QgdHJ1ZSBoZXJlIDooCj4gCj4gSSBkaWQgaW5kaWNh
dGUgaXQgd2FzIGZvciB2MS4gSW5kZWVkIHYyIHdhcyBkaWZmZXJlbnQsIGJ1dCBjYXJlIHRvCj4g
ZWxhYm9yYXRlIHdoYXQncyB3cm9uZyB3aXRoIHYzPwoKTm8gaWRlYSwgYnV0IEkgaGF2ZW4ndCBy
ZXZpZXdlZCBpdCB5ZXQsIHNvIHRvIHB1dCBteSB0YWcgb24gdGhlcmUgaXNuJ3QKdGhlIG5pY2Vz
dC4uLgoKZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
