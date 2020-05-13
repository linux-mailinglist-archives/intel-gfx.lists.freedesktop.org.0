Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 739781D18BB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 17:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D033D6EA69;
	Wed, 13 May 2020 15:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EFD06EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 15:09:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21188630-1500050 for multiple; Wed, 13 May 2020 16:09:09 +0100
MIME-Version: 1.0
In-Reply-To: <20200302143943.32676-5-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
 <20200302143943.32676-5-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158938254826.29850.6763866757293931710@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 13 May 2020 16:09:08 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Extract
 i915_cs_timestamp_{ns_to_ticks, tick_to_ns}()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAzLTAyIDE0OjM5OjQyKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUHVsbCB0aGUg
Y29kZSB0byBkbyB0aGUgQ1MgdGltZXN0YW1wIG5zPC0+dGlja3MgY29udmVyc2lvbiBpbnRvCj4g
aGVscGVycyBhbmQgdXNlIHRoZW0gYWxsIG92ZXIuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CiAKPiBUaGUgY2hlY2sgaW4gaTkxNV9wZXJmX25v
YV9kZWxheV9zZXQoKSBzZWVtcyBhIGJpdCBkdWJpb3VzLAo+IHNvIHdlIHN3aXRjaCBpdCB0byBk
byB3aGF0IEkgYXNzdW1lIGl0IHdhbnRlZCB0byBkbyBhbGwgYWxvbmcKPiAoaWUuIG1ha2Ugc3Vy
ZSB0aGUgcmVzdWx0aW5nIGRlbGF5IGluIENTIHRpbWVzdGFtcCB0aWNrcwo+IGRvZXNuJ3QgZXhj
ZWVkIDMyYml0cyk/CgpZZXMuIFRoZSBNSV9NQVRIIG9wZXJhdGVzIG9uIGp1c3QgMzJiIG9mIHRo
ZSB0aW1lc3RhbXAsIGFuZCBzbyB3YW50cyBhCmRlbGF5IGluIHRoYXQgcmFuZ2UuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
