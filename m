Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2F59005A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A746E316;
	Fri, 16 Aug 2019 10:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83CA6E316
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:57:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18161605-1500050 for multiple; Fri, 16 Aug 2019 11:57:12 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816105357.14340-1-matthew.auld@intel.com>
 <20190816105357.14340-2-matthew.auld@intel.com>
In-Reply-To: <20190816105357.14340-2-matthew.auld@intel.com>
Message-ID: <156595303026.11610.4820645716041133@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 11:57:10 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/buddy: use
 kmemleak_update_trace
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTYgMTE6NTM6NTcpCj4gU2luY2Ugbm9kZXMg
YXJlIGNhY2hlZCBpbiBhIGZyZWUtbGlzdCwgYW5kIHBvdGVudGlhbGx5IG1hcmtlZCBhcyBmcmVl
Cj4gd2l0aG91dCBhY3R1YWxseSBiZWluZyBkZXN0cm95ZWQsIHRodXMgYWxsb3dpbmcgdGhlbSB0
byBiZQo+IG9wcG9ydHVuaXN0aWNhbGx5IHJlLWFsbG9jYXRlZCwgd2Ugc2hvdWxkIGFwcGx5IGtt
ZW1sZWFrX3VwZGF0ZV90cmFjZQo+IGV2ZXJ5IHRpbWUgYSBub2RlIGlzIGdpdmVuIGEgbmV3IG93
bmVyIGFuZCBtYXJrZWQgYXMgYWxsb2NhdGVkLCB0byBhaWQKPiBpbiBkZWJ1Z2dpbmcuCj4gCj4g
U3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
