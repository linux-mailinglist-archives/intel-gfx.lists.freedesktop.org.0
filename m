Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C55E1572
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0E46EA05;
	Wed, 23 Oct 2019 09:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5398B6EA04;
 Wed, 23 Oct 2019 09:11:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18934404-1500050 for multiple; Wed, 23 Oct 2019 10:11:38 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
References: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157182189532.11484.5502218239626360200@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 23 Oct 2019 10:11:35 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] tests/gem_exec_reloc: Don't
 filter out addresses when on PPGTT
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMjMgMTA6MDc6NTEpCj4gQ29tbWl0
IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVyIG91dCB1bmF2YWlsYWJs
ZQo+IGFkZHJlc3NlcyBmb3IgIXBwZ3R0IikgaW50cm9kdWNlZCBmaWx0ZXJpbmcgb2YgYWRkcmVz
c2VzIHBvc3NpYmx5Cj4gb2NjdXBpZWQgYnkgb3RoZXIgdXNlcnMgb2Ygc2hhcmVkIEdUVC4gIFVu
Zm9ydHVuYXRlbHksIHRoYXQgZmlsdGVyaW5nCj4gaXMgdW5jb25kaXRpb25hbCwgbm8gbWF0dGVy
IGlmIHJ1bm5pbmcgb24gb2xkIHNoYXJlZCBHVFQgb3Igbm90LiAgV2hlbgo+IHJ1bm5pbmcgb24g
UFBHVFQsIHRoYXQgbWF5IHJlc3VsdCBpbiBlcnJvcnMgb3RoZXIgdGhhbiB0aG9zZSBpbnRlbmRl
ZAo+IHRvIGJlIHNraXBwZWQgb3ZlciBiZWluZyBzaWxlbnRseSBpZ25vcmVkLgoKWW91IGZvcmdv
dCB0aGUgYWxpYXNpbmctcHBndHQgd2hpY2ggaGFzIGV4YWN0bHkgdGhlIHNhbWUgaXNzdWVzIHdp
dGgKcmVzZXJ2ZWQgbG9jYXRpb25zIChzaW5jZSBpdCBpcyBhIG1pcnJvciBvZiB0aGUgR0dUVCku
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
