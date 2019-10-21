Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CA5DF621
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 21:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0D66E23D;
	Mon, 21 Oct 2019 19:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78796E23D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 19:38:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18917239-1500050 for multiple; Mon, 21 Oct 2019 20:37:49 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191021192747.24804-3-matthew.auld@intel.com>
References: <20191021192747.24804-1-matthew.auld@intel.com>
 <20191021192747.24804-3-matthew.auld@intel.com>
Message-ID: <157168666694.2348.17480170362889730483@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 20:37:46 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915/lmem: support kernel mapping
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjEgMjA6Mjc6NDMpCj4gQEAgLTI0NCw2ICsy
NDcsMTMgQEAgc3RhdGljIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9tYXAoY29uc3Qgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgICAgICAgIHBncHJvdF90IHBncHJvdDsKPiAgICAg
ICAgIHZvaWQgKmFkZHI7Cj4gIAo+ICsgICAgICAgaWYgKGk5MTVfZ2VtX29iamVjdF9pc19sbWVt
KG9iaikpIHsKPiArICAgICAgICAgICAgICAgaWYgKHR5cGUgIT0gSTkxNV9NQVBfV0MpCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7CgpyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KSBvciBFUlJfUFRSKC1FTk9ERVYpOwoKPiArCj4gKyAgICAgICAgICAgICAgIHJldHVybiBpOTE1
X2dlbV9vYmplY3RfbG1lbV9pb19tYXAob2JqLCAwLCBvYmotPmJhc2Uuc2l6ZSk7Cj4gKyAgICAg
ICB9Cj4gKwo+ICAgICAgICAgLyogQSBzaW5nbGUgcGFnZSBjYW4gYWx3YXlzIGJlIGttYXBwZWQg
Ki8KPiAgICAgICAgIGlmIChuX3BhZ2VzID09IDEgJiYgdHlwZSA9PSBJOTE1X01BUF9XQikKPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIGttYXAoc2dfcGFnZShzZ3QtPnNnbCkpOwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
