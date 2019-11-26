Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FB4109CC7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 12:10:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4AD6E2F0;
	Tue, 26 Nov 2019 11:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B286E2F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 11:09:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19342279-1500050 for multiple; Tue, 26 Nov 2019 11:09:46 +0000
MIME-Version: 1.0
To: Ankit Navik <ankit.p.navik@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
Message-ID: <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 11:09:39 +0000
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxMDo1MToyMikKPiBZb3UgbWVudGlv
bmVkIHlvdSBkaWQgc29tZSBleHBlcmltZW50IHdoZXJlIHlvdSBkaWQgc29tZXRoaW5nIG9uIGNv
bnRleHQgCj4gcGlubmluZyBhbmQgdGhhdCBpdCBkaWQgbm90IHdvcmsgc28gd2VsbC4gSSBkb24n
dCBrbm93IHdoYXQgdGhhdCB3YXMgCj4gdGhvdWdoLiBJIGRvbid0IHRoaW5rIHRoYXQgd2FzIGV2
ZXIgcG9zdGVkPwo+IAo+IFdoYXQgSSBhbSB0aGlua2luZyBpcyB0aGlzOiBZb3UgZHJvcCB0aGUg
dGltZXIgYWx0b2dldGhlci4gSW5zdGVhZCBpbiAKPiBfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0
YXRlIHlvdSBsb29rIGF0IHlvdXIgZ2VtX2NvbnRleHQtPnJlcV9jbnQgYW5kIAo+IGltcGxlbWVu
dCB5b3VyIGxvZ2ljIHRoZXJlLgoKSSBub3RpY2VkIHRoZSBzYW1lIG5vbi1zZXF1aXR1ci4gRXhj
ZXB0IEkgd291bGQgcHVzaCB0aGF0IGVpdGhlciB0aGUKZW50aXJlIG1lYXN1cmVtZW50IGFuZCBo
ZW5jZSBwYXRjaCBzZXJpZXMgaXMgYm9ndXMgKGJleW9uZCB0aGUgcGF0Y2hlcwp0aGVtc2VsdmVz
IGJlaW5nIHRyaXZpYWxseSBicm9rZW4sIHRlc3RlZCBtdWNoPyksIG9yIHRoYXQgaXQgcmVhbGx5
CnNob3VsZCBiZSBkb25lIGZyb20gYSB0aW1lciBhbmQgYWxzbyBhZGp1c3QgcGlubmVkIGNvbnRl
eHRzIGFsYQpyZWNvbmZpZ3VyZV9zc2V1LgoKQSBidW5jaCBvZiBzZWxmdGVzdHMgYW5kIGlndCBw
cm92aW5nIHRoYXQgZGlmZmVyZW50IHNzZXUgc2V0dXBzIGRvCmNvbnN1bWUgZGlmZmVyZW50IHBv
d2VyIChpLmUuIHRoYXQgd2UgY2FuIGFkanVzdCBzc2V1IGNvcnJlY3RseSksCmFsb25nIHdpdGgg
ZGVtb25zdHJhdGluZyBnb29kIHdvcmtsb2FkcyB3aGVyZSBhdXRvdHVuaW5nIHByb2R1Y2VzCmJl
bmVmaWNpYWwgcmVzdWx0cyBpcyBhIG11c3QuCgpBbHNvIGdpdmVuIFR2cnRrbydzIHN0YXRzLCB0
aGlzIGNvdWxkIGFsbCBiZSBkb25lIGZyb20gdXNlcnNwYWNlIHdpdGggYW4KZXh0ZW5kZWQgQ09O
VEVYVF9QQVJBTV9TU0VVLCBzbyB3aHkgd291bGQgd2Ugbm90IGRvIGl0IHRoYXQgd2F5PwotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
