Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8076AC28
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 17:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112E76E143;
	Tue, 16 Jul 2019 15:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2906C6E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 15:45:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17346195-1500050 for multiple; Tue, 16 Jul 2019 16:45:12 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8289218a-dfe9-1c88-be56-33092ac0a2e6@linux.intel.com>
References: <20190712112725.2892-1-chris@chris-wilson.co.uk>
 <20190712112725.2892-5-chris@chris-wilson.co.uk>
 <8289218a-dfe9-1c88-be56-33092ac0a2e6@linux.intel.com>
Message-ID: <156329190945.9436.13691187977762723339@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 16 Jul 2019 16:45:09 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gtt: Tidy up ppgtt insertion
 for gen8
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMDctMTYgMTY6MzA6MDkpCj4gCj4gCj4gT24g
MTIvMDcvMjAxOSAxNC4yNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gQXBwbHkgdGhlIG5ldyBy
YWRpeCBzaGlmdCBoZWxwZXJzIHRvIGV4dHJhY3QgdGhlIG11bHRpLWxldmVsIGluZGljZXMKPiA+
IGNsZWFubHkgd2hlbiBpbnNlcnRpbmcgcHRlIGludG8gdGhlIGd0dCB0cmVlLgo+ID4gCj4gUmV2
aWV3ZWQtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNv
bT4KClRoYW5rcyBmb3IgdGhlIHJldmlld3MsCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
