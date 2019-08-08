Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6027865DC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 17:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C47D6E87E;
	Thu,  8 Aug 2019 15:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6E56E87F;
 Thu,  8 Aug 2019 15:34:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17932964-1500050 for multiple; Thu, 08 Aug 2019 16:34:12 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87imr78yqc.fsf@gaia.fi.intel.com>
References: <20190806081052.11564-1-chris@chris-wilson.co.uk>
 <20190806084939.20203-1-chris@chris-wilson.co.uk>
 <87imr78yqc.fsf@gaia.fi.intel.com>
Message-ID: <156527844980.22627.14726758959554624075@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 08 Aug 2019 16:34:09 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_persistent_relocs:
 Don't call DROP_IDLE in the middle of submitting
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDE2OjI2OjM1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUbyBhY3R1YWxseSBE
Uk9QX0lETEUgbWVhbnMgdGhhdCB3ZSBoYXZlIHRvIHdhaXQgZm9yIG9uZ29pbmcgc3VibWlzc2lv
biwKPiA+IGFuZCBhbnkgbmV3IGNvbmN1cnJlbnRseSBzdWJtaXR0ZWQsIGkuZS4gaXQgc2hvdWxk
IG9ubHkgYmUgY2FsbGVkIGR1cmluZwo+ID4gc2luZ2xlLXRocmVhZGVkIHN1Ym1pc3Npb24gdG8g
ZW5zdXJlIHRoZSBHUFUgaXMgaWRsZSBiZWZvcmUgdGhlIG5ldwo+ID4gYWN0aW9uLgo+ID4KPiA+
IHYyOiBBbHNvIGluY2x1ZGUgU0hSSU5LIGZvciB0aHJhc2gtYWxsLXRoZS10aGluZ3MsIGFuZCBm
aW5kIGEgZHVwZSBpbgo+ID4gZ2VtX3JlbG9jX3ZzX2dwdS4KPiAKPiBBZ3JlZWQgdGhhdCBpcyBy
YXRoZXIgcG9pbnRsZXNzIHRyeWluZyB0byBndWFyYW50ZWUgYW4gaWRsZSBncHUKPiBkdXJpbmcg
YSB0ZXN0Lgo+IAo+IFJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KPiAKPiBCdXQgYmV0d2VlbiBhIHRlc3RzLCBpdCB3aWxsIHNlcnZlIGFz
IGEgZmx1c2g/CgpBdCB0aGUgZW5kIG9mIGEgX3Rlc3RfIChiaW5hcnkpLCB3ZSBkbyByZXNldCBh
bmQgaWRsZSB0aGUgR1BVLiBUaGUKdGhlb3J5IGlzIHRoYXQgd2Ugd2FudCBlYWNoIHRlc3QgdG8g
aGF2ZSBhIGNsZWFuIHNsYXRlLCBhbmQgdG8gY2F0Y2ggYW55CnJlc2lkdWFsIHByb2JsZW1zIGlu
IHRoZSB0ZXN0IHRoYXQgY3JlYXRlZCB0aGVtLgoKQnV0IHdlIGRvbid0IGRvIGFueXRoaW5nIGJl
dHdlZW4gc3VidGVzdHMgYnkgZGVmYXVsdCwgYW5kIHdlIGZyZXF1ZW50bHkKcnVuIGludG8gcHJv
YmxlbXMgdGhlcmUgaWYgb25lIHN1YnRlc3QgZmFpbHMgYW5kIGNhdXNlcyB0aGUgbmV4dCB0bwpm
YWlsIGFuZCBzbyBvbiBhbmQgc28gb24uIEFuIHVuc29sdmVkIGRpbGVtbWEuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
