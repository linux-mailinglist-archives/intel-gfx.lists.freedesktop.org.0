Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E54AC0AAC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668976E1A8;
	Fri, 27 Sep 2019 17:57:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626B76E1A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:57:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643325-1500050 for multiple; Fri, 27 Sep 2019 18:57:23 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-22-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-22-matthew.auld@intel.com>
Message-ID: <156960703864.1880.356759549503909541@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 18:57:18 +0100
Subject: Re: [Intel-gfx] [PATCH 21/22] drm/i915: check for missing aperture
 in GTT pread/pwrite paths
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzQ6MDgpCj4gRnJvbTogQ1EgVGFu
ZyA8Y3EudGFuZ0BpbnRlbC5jb20+Cj4gCj4gZHJtX21tX2luc2VydF9ub2RlX2luX3JhbmdlKCkg
dHJlYXRzIHJhbmdlX3N0YXJ0ID4gcmFuZ2VfZW5kIGFzIGEKPiBwcm9ncmFtbWVyIGVycm9yLCBz
dWNoIHRoYXQgd2UgZXhwbG9kZSBpbiBpbnNlcnRfbWFwcGFibGVfbm9kZS4gRm9yIG5vdwo+IHNp
bXBseSBjaGVjayBmb3IgbWlzc2luZyBhcGVydHVyZSBvbiBzdWNoIHBhdGhzLgoKcmFuZ2Vfc3Rh
cnQgaXMgMC4KcmFuZ2VfZW5kIGlzIDAuCgpkcm1fbW1faW5zZXJ0X25vZGVfaW5fcmFuZ2UoKToK
CURSTV9NTV9CVUdfT04ocmFuZ2Vfc3RhcnQgPiByYW5nZV9lbmQpOwoKCWlmIChzaXplID09IDAg
fHwgcmFuZ2VfZW5kIC0gcmFuZ2Vfc3RhcnQgPCBzaXplKQoJCXJldHVybiAtRU5PU1BDOwoKVGhp
cyBwYXRjaCBpcyBzdXBlcmZsdW91cy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
