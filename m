Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C429433
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B65A6E038;
	Fri, 24 May 2019 09:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4789D6E038
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:07:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16665337-1500050 for multiple; Fri, 24 May 2019 10:07:48 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87r28o2saz.fsf@gaia.fi.intel.com>
References: <20190424210239.31902-1-dongwon.kim@intel.com>
 <20190425055005.21790-1-chris@chris-wilson.co.uk>
 <87r28o2saz.fsf@gaia.fi.intel.com>
Message-ID: <155868886648.28319.8523925941183491315@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 10:07:46 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: enable support for
 headerless msgs
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTI0IDA5OjAzOjAwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBGcm9tOiBEb25nd29u
IEtpbSA8ZG9uZ3dvbi5raW1AaW50ZWwuY29tPgo+ID4KPiA+IFNldHRpbmcgYml0NSAoaGVhZGVy
bGVzcyBtc2cgZm9yIHByZWVtcHRhYmxlIEdQR1BVIGNvbnRleHQpIG9mIFNBTVBMRVJfTU9ERQo+
ID4gcmVnaXN0ZXIgdG8gZW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBoZWFkbGVzcyBtc2dzIG9uIGdl
bjExLiBOb25lIG9mIGV4aXN0aW5nCj4gPiB1c2UgY2FzZXMgd2lsbCBiZSBhZmZlY3RlZCBieSB0
aGlzIGFzIHRoaXMgY2hhbmdlIG1ha2VzIGJvdGggdHlwZXMgb2YgbWVzc2FnZQo+ID4gLSBoZWFk
ZXJsZXNzIGFuZCB3LyBoZWFkZXIgc3VwcG9ydGVkIGF0IHRoZSBzYW1lIHRpbWUuIEl0IGFsc28g
Y29tcGxpZXMgd2l0aAo+ID4gdGhlIG5ldyByZWNvbW1lbmRhdGlvbiBmb3IgdGhlIGRlZmF1bHQg
Yml0IHZhbHVlIGZvciB0aGUgbmV4dCBnZW4uCj4gPgo+ID4gdjI6IHJld3JvdGUgY29tbWl0IG1l
c3NhZ2UgdG8gaW5jbHVkZSBtb3JlIGluZm9ybWF0aW9uCj4gPiB2Mzogc2V0dGluZyB0aGUgYml0
IGluIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdCgpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRG9u
Z3dvbiBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBbmQgcHVzaGVkLiBUaGFu
a3MgZm9yIHRoZSBwYXRjaCBhbmQgcmV2aWV3LAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
