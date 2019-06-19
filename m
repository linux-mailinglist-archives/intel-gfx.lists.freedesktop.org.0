Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1B94C08F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758CA6E444;
	Wed, 19 Jun 2019 18:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177B06E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:11:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16957050-1500050 for multiple; Wed, 19 Jun 2019 19:11:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
 <20190619180312.31817-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20190619180312.31817-3-ville.syrjala@linux.intel.com>
Message-ID: <156096789264.664.13104462286896995241@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 19:11:32 +0100
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/sdvo: Remove duplicate
 SET_INPUT_TIMINGS_PART1 cmd name string
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE5IDE5OjAzOjA5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gc2R2b19jbWRf
bmFtZXNbXSBjb250YWlucyB0d28gZW50cmllcyBmb3IgU0VUX0lOUFVUX1RJTUlOR1NfUEFSVDEu
Cj4gUmVtb3ZlIG9uZSBvZiB0aGVtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMK
PiBpbmRleCBmYjc3MTc2YjlhOGMuLjJkZTc5NDhiNzI3OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCj4gQEAgLTI5OSw3ICsyOTksNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IF9zZHZvX2NtZF9uYW1lIHsKPiAgICAgICAgIFNEVk9fQ01EX05BTUVfRU5U
UlkoU0RWT19DTURfR0VUX0lOUFVUX1RJTUlOR1NfUEFSVDIpLAo+ICAgICAgICAgU0RWT19DTURf
TkFNRV9FTlRSWShTRFZPX0NNRF9TRVRfSU5QVVRfVElNSU5HU19QQVJUMSksCj4gICAgICAgICBT
RFZPX0NNRF9OQU1FX0VOVFJZKFNEVk9fQ01EX1NFVF9JTlBVVF9USU1JTkdTX1BBUlQyKSwKPiAt
ICAgICAgIFNEVk9fQ01EX05BTUVfRU5UUlkoU0RWT19DTURfU0VUX0lOUFVUX1RJTUlOR1NfUEFS
VDEpLAoKTWVhbnQgdG8gYmUgZ2V0PyBOb3BlLCBpdCdzIGEgZHVwbGljYXRlLgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
