Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBC4137631
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9FF6EA83;
	Fri, 10 Jan 2020 18:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504EE6EA83
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:39:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19838613-1500050 for multiple; Fri, 10 Jan 2020 18:39:44 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <20200110183228.8199-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200110183228.8199-6-ville.syrjala@linux.intel.com>
Message-ID: <157868158326.10140.11983931839636055604@skylake-alporthouse-com>
Date: Fri, 10 Jan 2020 18:39:43 +0000
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Cleanup properly if the
 implicit fence setup fails
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTEwIDE4OjMyOjI4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UndmUgYWxy
ZWFkeSBwaW5uZWQgdGhlIHZtYSBhbmQgZmVuY2UgYnkgdGhlIHRpbWUgd2UgdHJ5IHRvCj4gZGVh
bCB3aXRoIGltcGxpY2l0IGZlbmNpbmcuIFByb3Blcmx5IHVucGluIHRoZSB2bWEgYW5kIGZlbmNl
Cj4gaWYgdGhlIGZlbmNlIHNldHVwIGZhaWxzIGluc3RlYWQgb2YganVzdCBiYWlsaW5nIHN0cmFp
Z2h0IG91dAo+IGZyb20gLnByZXBhcmVfZmIoKS4gQXMgY2FuIGJlIGV4cGVjdGVkCj4gZHJtX2F0
b21pY19oZWxwZXJfcHJlcGFyZV9wbGFuZXMoKSB3aWxsIG5vdCBjYWxsIC5jbGVhbnVwX2ZiKCkK
PiBmb3IgdGhlIHBsYW5lIHdob3NlIC5wcmVwYXJlX2ZiKCkgZmFpbGVkIHNvIHdlIG11c3QgZG8g
dGhlCj4gY2xlYW51cCBvdXJzZWxmLgo+IAo+IHYyOiBSZWJhc2UKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
