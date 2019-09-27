Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78173C0CC2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2736E233;
	Fri, 27 Sep 2019 20:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5581B6E233
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:42:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644567-1500050 for multiple; Fri, 27 Sep 2019 21:42:32 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-11-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-11-matthew.auld@intel.com>
Message-ID: <156961694798.1880.4203652934664083568@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 21:42:28 +0100
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/selftests: add write-dword
 test for LMEM
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTcpCj4gKyAgICAgICBpID0g
MDsKPiArICAgICAgIGVuZ2luZXMgPSBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgp
Owo+ICsgICAgICAgZG8gewo+ICsgICAgICAgICAgICAgICB1MzIgcm5nID0gcHJhbmRvbV91MzJf
c3RhdGUoJnBybmcpOwo+ICsgICAgICAgICAgICAgICB1MzIgZHdvcmQgPSBvZmZzZXRfaW5fcGFn
ZShybmcpIC8gNDsKPiArCj4gKyAgICAgICAgICAgICAgIGNlID0gZW5naW5lcy0+ZW5naW5lc1tv
cmRlcltpXSAlIGVuZ2luZXMtPm51bV9lbmdpbmVzXTsKPiArICAgICAgICAgICAgICAgaSA9IChp
ICsgMSkgJSAoY291bnQgKiBjb3VudCk7Cj4gKyAgICAgICAgICAgICAgIGlmICghY2UgfHwgIWlu
dGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29udGludWU7Cj4gKwo+ICsgICAgICAgICAgICAgICBlcnIgPSBpZ3RfZ3B1X3dy
aXRlX2R3KGNlLCB2bWEsIGR3b3JkLCBybmcpOwo+ICsgICAgICAgICAgICAgICBpZiAoZXJyKQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwoKRG8geW91IGhhdmUgYSB0ZXN0IHRoYXQg
ZG9lcwoJZHdvcmQsCgk2NEIgb3IgY2FjaGVsaW5lLAoJcGFnZQoJcmFuZG9tIHdpZHRoJnN0cmlk
ZXMgb2YgdGhlIGFib3ZlCmJlZm9yZSBkb2luZyB0aGUgcmVhZCBiYWNrIG9mIGEgcmFuZG9tIGR3
b3JkIGZyb20gdGhvc2U/CgpUaGluayBuYXN0eSBjYWNoZSBhcnRpZmFjdHMsIFBDSSB0cmFuc2Zl
cnMsIGFuZCB0aW1pbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
