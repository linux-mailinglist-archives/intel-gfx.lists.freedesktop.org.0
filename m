Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FD3C0ACC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD566E1B6;
	Fri, 27 Sep 2019 18:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847476E1B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:09:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643483-1500050 for multiple; Fri, 27 Sep 2019 19:09:02 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-4-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-4-matthew.auld@intel.com>
Message-ID: <156960773840.1880.7512556080198805368@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 19:08:58 +0100
Subject: Re: [Intel-gfx] [PATCH 03/22] drm/i915: introduce
 intel_memory_region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTApCj4gK3N0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICoKPiAraTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24oc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZXNvdXJjZV9zaXplX3Qgc2l6ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
bnNpZ25lZCBpbnQgZmxhZ3MpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7Cj4gKwo+ICsgICAgICAgaWYgKCFtZW0pCj4gKyAgICAgICAgICAgICAgIHJldHVy
biBFUlJfUFRSKC1FTk9ERVYpOwo+ICsKPiArICAgICAgIHNpemUgPSByb3VuZF91cChzaXplLCBt
ZW0tPm1pbl9wYWdlX3NpemUpOwo+ICsKPiArICAgICAgIEdFTV9CVUdfT04oIXNpemUpOwo+ICsg
ICAgICAgR0VNX0JVR19PTighSVNfQUxJR05FRChzaXplLCBJOTE1X0dUVF9NSU5fQUxJR05NRU5U
KSk7Cj4gKwo+ICsgICAgICAgaWYgKHNpemUgPj4gUEFHRV9TSElGVCA+IElOVF9NQVgpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FMkJJRyk7CgpJdCdzIHByb2JhYmx5IHBhc3Qg
dGltZSB3ZSBmaXhlZCB1cCB0aGUgcmVtYWluaW5nIGludCBudW1fcGFnZXMuCgpIbW0sIEkga25v
dyBnY2MgaGFzIHdhcm5lZCBmb3IgY29uc3RhbnRzID4gdHlwZS4gQ2FuIHdlIGdldCBpdCB0byB3
YXJuCmZvciB1bmd1YXJkZWQgdHlwZSByZXN0cmljdGlvbnMsIGkuZS4KCglpbnQgbnVtX3BhZ2Vz
ID0gcmVzb3VyY2Vfc2l6ZV90ID4+IFBBR0VfU0laRTsKCk9yIG1heWJlIHdlIGdvIG9uIGEgcmFt
cGFnZSBhbmQganVzdCBiYW4gb2JqLT5iYXNlLnNpemUgYW5kIGZvcmNlCm91cnNlbHZlcyB0byB1
c2UgYSB3cmFwcGVyIGluIG9yZGVyIHRvIGNhdGNoIGFueSBvZmZlbmRlcnMuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
