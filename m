Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272F179D6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 15:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629D689904;
	Wed,  8 May 2019 13:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D6189904
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 13:04:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16490434-1500050 for multiple; Wed, 08 May 2019 14:03:54 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87imuldts1.fsf@gaia.fi.intel.com>
References: <20190508115245.27790-1-chris@chris-wilson.co.uk>
 <87imuldts1.fsf@gaia.fi.intel.com>
Message-ID: <155732063256.28545.6105069498333549942@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 May 2019 14:03:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reboot CI if forcewake fails
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTA4IDEzOjE4OjA2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB0aGUgSFcgZmFp
bCB0byBhY2sgYSBjaGFuZ2UgaW4gZm9yY2V3YWtlIHN0YXR1cywgdGhlIG1hY2hpbmUgaXMgYXMK
PiA+IGdvb2QgYXMgZGVhZCAtLSBpdCBtYXkgcmVjb3ZlciwgYnV0IGluIHJlYWxpdHkgaXQgbWlz
c2VkIHRoZSBtbWlvCj4gPiB1cGRhdGVzIGFuZCBpcyBub3cgaW4gYSB2ZXJ5IGluY29uc2lzdGVu
dCBzdGF0ZS4gSWYgaXQgaGFwcGVucywgd2UgY2FuJ3QKPiA+IHRydXN0IHRoZSBDSSByZXN1bHRz
IChvciBhdCBsZWFzdCB0aGUgZmFpbHMgbWF5IGJlIGdlbnVpbmUgYnV0IGR1ZSB0bwo+ID4gdGhl
IEhXIGJlaW5nIGRlYWQgYW5kIG5vdCB0aGUgYWN0dWFsIHRlc3QhKSBzbyByZWJvb3QgdGhlIG1h
Y2hpbmUgKENJCj4gPiBjaGVja3MgZm9yIGEga2VybmVsIHRhaW50IGluIGJldHdlZW4gZWFjaCB0
ZXN0IGFuZCByZWJvb3RzIGlmIHRoZQo+ID4gbWFjaGluZSBpcyB0YWludGVkKS4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+
IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgpbc25pcF0K
PiBSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+CgpBbmQgcHVzaGVkLCB0aGFua3MgZm9yIHRoZSByZXZpZXcuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
