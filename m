Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4E71705
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 13:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B480F6E1B4;
	Tue, 23 Jul 2019 11:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 046F56E1B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 11:29:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17532238-1500050 for multiple; Tue, 23 Jul 2019 12:28:49 +0100
MIME-Version: 1.0
To: "Winkler, Tomas" <tomas.winkler@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <5B8DA87D05A7694D9FA63FD143655C1B9DC7C082@hasmsx108.ger.corp.intel.com>
References: <20190723111913.20475-1-chris@chris-wilson.co.uk>
 <5B8DA87D05A7694D9FA63FD143655C1B9DC7C082@hasmsx108.ger.corp.intel.com>
Message-ID: <156388132716.31349.11822559564861280475@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 12:28:47 +0100
Subject: Re: [Intel-gfx] [PATCH] mei: Abort writes if incomplete after 1s
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBXaW5rbGVyLCBUb21hcyAoMjAxOS0wNy0yMyAxMjoyNToxNCkKPiA+IAo+ID4gRHVy
aW5nIGk5MTUgdW5sb2FkLCBpdCBhcHBlYXJzIHRoYXQgaXQgbWF5IGdldCBzdHVjayB3YWl0aW5n
IG9uIGEgd29ya3F1ZXVlCj4gPiBiZWluZyBob2dnZWQgYnkgbWVpOgo+IAo+IFRoYW5rcyBmb3Ig
dGhlIGJ1ZyByZXBvcnQsIGJ1dCB0aGlzIGlzIG5vdCBhIHByb3BlciBmaXgsIHdlIHdpbGwgdHJ5
IHRvIHdvcmsgaXQgb3V0LgoKUGVyZmVjdCA6KQoKSXQncyBvbmx5IGhhcHBlbmVkIGEgY291cGxl
IG9mIHRpbWVzIGluIHRoZSBsYXN0IHdlZWsgb3Igc28sIGJ1dCBpZiB5b3UKd2FudCB0byB0aHJv
dyBwYXRjaGVzIGF0IGludGVsLWdmeC10cnlib3RAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIHRvIHRy
eQphbmQgZ3JhYiBtb3JlIGluZm9ybWF0aW9uLCBwbGVhc2UgZmVlbCBmcmVlIHRvLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
