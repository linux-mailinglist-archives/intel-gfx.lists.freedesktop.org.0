Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5723658E57
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C229C6E81D;
	Thu, 27 Jun 2019 23:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288CF6E81D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:11:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050625-1500050 for multiple; Fri, 28 Jun 2019 00:11:37 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-8-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-8-matthew.auld@intel.com>
Message-ID: <156167709548.21955.12736333494895557331@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:11:35 +0100
Subject: Re: [Intel-gfx] [PATCH v2 07/37] drm/i915: support creating LMEM
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MDMpCj4gV2UgY3VycmVudGx5
IGRlZmluZSBMTUVNLCBvciBsb2NhbCBtZW1vcnksIGFzIGp1c3QgYW5vdGhlciBtZW1vcnkKPiBy
ZWdpb24sIGxpa2Ugc3lzdGVtIG1lbW9yeSBvciBzdG9sZW4sIHdoaWNoIHdlIGNhbiBleHBvc2Ug
dG8gdXNlcnNwYWNlCj4gYW5kIGNhbiBiZSBtYXBwZWQgdG8gdGhlIENQVSB2aWEgc29tZSBCQVIu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
Pgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwg
IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAg
NSArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jICAgICAgfCA2
NiArKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl9sbWVtLmggICAgICB8IDE2ICsrKysrCgpZb3UgbWlzc2VkIHRoZSBtbS8gdmliZXMgSSB3YXMg
dHJ5aW5nIHRvIHNlbmQ/IDspCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
