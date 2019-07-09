Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6BE63D21
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4255D6E0AE;
	Tue,  9 Jul 2019 21:12:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47236E0AC
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:12:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17190815-1500050 for multiple; Tue, 09 Jul 2019 22:12:07 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190709210620.15805-4-tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
 <20190709210620.15805-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156270672514.11940.15443978009426699816@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 22:12:05 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Move
 intel_calculate_mcr_s_ss_select to intel_sseu.c
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wOSAyMjowNjoxOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEl0IGlzIGEgbW9yZSBh
cHByb3ByaWF0ZSBob21lIGZvciBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
