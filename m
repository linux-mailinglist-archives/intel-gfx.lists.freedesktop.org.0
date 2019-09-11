Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BA1AFF9E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 17:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43236EB2E;
	Wed, 11 Sep 2019 15:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB5C6EB2D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 15:08:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18453222-1500050 for multiple; Wed, 11 Sep 2019 16:08:46 +0100
MIME-Version: 1.0
To: Matt Roper <matthew.d.roper@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911150044.GB27222@mdroper-desk.amr.corp.intel.com>
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
 <20190911133129.27466-2-ville.syrjala@linux.intel.com>
 <20190911150044.GB27222@mdroper-desk.amr.corp.intel.com>
Message-ID: <156821452494.3439.2583229701500957132@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 16:08:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Fix CD2X pipe select masking
 during cdclk sanitation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0IFJvcGVyICgyMDE5LTA5LTExIDE2OjAwOjQ0KQo+IEknbSBjb25mdXNlZCB3
aHkgcHJlLW1lcmdlIENJIGZsYWdnZWQgdGhlIHJlc3VsdHMgYXMgYSBzdWNjZXNzIGlmIFRHTAo+
IHdhcyBoaXR0aW5nIHRoaXM/CgpXZSd2ZSBvbmx5IGp1c3QgKEZyaSkgZ290IENJJ3MgVGlnZXJs
YWtlIHN1cnZpdmluZyBib290LCBzbyBhIHNlY29uZApmYWlsdXJlIGR1cmluZyBib290IHdvdWxk
IGhhdmUgYmVlbiBtaXNzZWQuIEZvciB0aGUgc3VtbWFyeSByZXBvcnQsClRpZ2VybGFrZSBpcyBj
dXJyZW50bHkgc3VwcHJlc3NlZCBhcyBpdCBpcyBub3QgeWV0IHByb3ZlbiBpdHNlbGYgYXMKYmVp
bmcgYSBzdGFibGUgcmVzdWx0LiAoV2hpY2ggaXMgYSBiaXQgb2YgYSBudWlzYW5jZSBhcyB5b3Ug
aGF2ZSB0bwpyZW1pbmQgeW91cnNlbGYgdG8gYWN0dWFsbHkgY2hlY2sgdGhlIGRldGFpbHMuKQot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
