Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF10DE64FE
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 20:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6616E2E6;
	Sun, 27 Oct 2019 19:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE566E095;
 Sun, 27 Oct 2019 19:06:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18986293-1500050 for multiple; Sun, 27 Oct 2019 19:06:06 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191027190124.GB12997@intel.intel>
References: <20191026193456.19445-1-chris@chris-wilson.co.uk>
 <20191026193456.19445-2-chris@chris-wilson.co.uk>
 <20191027190124.GB12997@intel.intel>
Message-ID: <157220316435.26808.7932885345329664018@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 27 Oct 2019 19:06:04 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_exec: Enable resets
 for basic-nohangcheck
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTI3IDE5OjAxOjI0KQo+IEhpIENocmlzLAo+IAo+
ID4gQEAgLTIxNiw2ICsyMTcsOCBAQCBzdGF0aWMgdm9pZCBub2hhbmdjaGVja19ob3N0aWxlKGlu
dCBpOTE1KQo+ID4gICAgICAgICogd2UgZm9yY2libHkgdGVybWluYXRlIHRoYXQgY29udGV4dC4K
PiA+ICAgICAgICAqLwo+ID4gIAo+ID4gKyAgICAgaGFuZyA9IGlndF9hbGxvd19oYW5nKGk5MTUs
IDAsIDApOwo+ID4gKwo+IAo+IHdoeSBjdHggPSAwPwoKSW1hZ2luZSwKCiAgICAgICAgICogd2Ug
Zm9yY2libHkgdGVybWluYXRlIHRoYXQgY29udGV4dC4KICAgICAgICAgKi8KCi0gICAgICAgaGFu
ZyA9IGlndF9hbGxvd19oYW5nKGk5MTUsIDAsIDApOwotCiAgICAgICAgZGlyID0gaWd0X3N5c2Zz
X29wZW5fcGFyYW1ldGVycyhpOTE1KTsKICAgICAgICBpZ3RfcmVxdWlyZShkaXIgIT0gLTEpOwoK
ICAgICAgICBjdHggPSBnZW1fY29udGV4dF9jcmVhdGUoaTkxNSk7CisgICAgICAgaGFuZyA9IGln
dF9hbGxvd19oYW5nKGk5MTUsIGN0eCwgMCk7CgogICAgICAgIGlndF9yZXF1aXJlKF9fZW5hYmxl
X2hhbmdjaGVjayhkaXIsIGZhbHNlKSk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
