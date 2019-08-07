Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6253584F7E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 17:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD0B892B4;
	Wed,  7 Aug 2019 15:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8DD892B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 15:10:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17920115-1500050 for multiple; Wed, 07 Aug 2019 16:08:03 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3AACF2@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AAC60@fmsmsx120.amr.corp.intel.com>
 <156518725889.6198.287254944385716344@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AACF2@fmsmsx120.amr.corp.intel.com>
Message-ID: <156519048120.6198.8160520723086584407@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 16:08:01 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMDcgMTU6MzM6NTEpCltza2lwIHRvIGVu
ZF0KPiBXZSBkaWRuJ3QgZXhwbG9yZSB0aGUgaWRlYSBvZiB0ZXJtaW5hdGluZyBvcnBoYW5lZCBj
b250ZXh0cyB0aG91Z2ggKHdoZXJlIG5vbmUgb2YgdGhlaXIgcmVzb3VyY2VzIGFyZSByZWZlcmVu
Y2VkIGJ5IGFueSBvdGhlciBjb250ZXh0cykuIElzIHRoZXJlIGEgcmVhc29uIHdoeSB0aGlzIGlz
IG5vdCBmZWFzaWJsZT8gSW4gdGhlIGNhc2Ugb2YgY29tcHV0ZSAoY2VydGFpbmx5IEhQQykgd29y
a2xvYWRzLCB0aGVyZSB3b3VsZCBiZSBubyBjb21wb3NpdG9yIHRha2luZyB0aGUgb3V0cHV0IHNv
IHRoaXMgbWlnaHQgYmUgYSBzb2x1dGlvbi4KClNvdW5kcyBlYXNpZXIgc2FpZCB0aGFuIGRvbmUu
IFdlIGhhdmUgdG8gZ28gdGhyb3VnaCBlYWNoIHJlcXVlc3QgYW5kCmRldGVybWluZSBpdCBpZiBo
YXMgYW4gZXh0ZXJuYWwgcmVmZXJlbmNlIChvciBpZiB0aGUgb2JqZWN0IGhvbGRpbmcgdGhlCnJl
ZmVyZW5jZSBoYXMgYW4gZXh0ZXJuYWwgcmVmZXJlbmNlKSB0byBzZWUgaWYgdGhlIG91dHB1dCB3
b3VsZCBiZQp2aXNpYmxlIHRvIGEgdGhpcmQgcGFydHkuIFNvdW5kcyBsaWtlIGEgY29uc2VydmF0
aXZlIEdDIDp8IAooQ29taW5nIHRvIHRoYXQgY29uY2x1c2lvbiBzdWdnZXN0cyB0aGF0IHdlIHNo
b3VsZCBzdHJ1Y3R1cmUgdGhlIHJlcXVlc3QKdHJhY2tpbmcgdG8gbWFrZSByZXBhcmVudGluZyBl
YXNpZXIuKQoKV2UgY291bGQgdGFrZSBhIHBpZC0xIGFwcHJvYWNoIGFuZCBtb3ZlIGFsbCB0aGUg
b3JwaGFuIHRpbWVsaW5lcyBvdmVyIHRvCmEgbmV3IHBhcmVudCBwdXJlbHkgcmVzcG9uc2libGUg
Zm9yIHRoZW0uIFRoYXQgaG9uZXN0bHkgZG9lc24ndCBzZWVtIHRvCmFjaGlldmUgYW55dGhpbmcu
IChXZSBhcmUgc3RpbGwgc3R1Y2sgd2l0aCB0YXNrcyBvbiB0aGUgR1BVIGFuZCBubyB3YXkKdG8g
a2lsbCB0aGVtLikKCkluIGNvbXBhcmlzb24sIHBlcnNpc3RlbmNlIGlzIGEgcmFyZWx5IHVzZWQg
ImZlYXR1cmUiIGFuZCBjbGVhbmluZyB1cCBvbgpjb250ZXh0IGNsb3NlIGZpdHMgaW4gbmljZWx5
IHdpdGggdGhlIHByb2Nlc3MgbW9kZWwuIEl0IGp1c3Qgd29ya3MgYXMKbW9zdCB1c2Vycy9jbGll
bnRzIHdvdWxkIGV4cGVjdC4gKEFsdGhvdWdoIHJ1bm5pbmcgaW4gbm9uLXBlcnNpc3RlbnQKYnkg
ZGVmYXVsdCBoYXNuJ3Qgc2hvdyBhbnl0aGluZyB0byBleHBsb2RlIG9uIHRoZSBkZXNrdG9wLCBp
dCdzIHRvbyBlYXN5CnRvIGNvbnN0cnVjdCBzY2VuYXJpb3Mgd2hlcmUgcGVyc2lzdGVuY2UgdHVy
bnMgb3V0IHRvIGJlIGFuIGFkdmFudGFnZSwKcGFydGljdWxhcmx5IHdpdGggY2hhaW5zIG9mIGNs
aWVudHMgKHRoZSBjb21wb3NpdG9yIG1vZGVsKS4pIEJldHdlZW4gdGhlCnR3byBtb2Rlcywgd2Ug
c2hvdWxkIGhhdmUgbW9zdCBiYXNlcyBjb3ZlcmVkLCBpdCdzIGhhcmQgdG8gYXJndWUgZm9yIGEK
dGhpcmQgd2F5ICh0aGF0IGlzIHVudGlsIHNvbWVvbmUgaGFzIGEgdXNlY2FzZSEpCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
