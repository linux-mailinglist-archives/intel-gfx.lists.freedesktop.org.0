Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CEBB9388
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 16:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2155B6FD1E;
	Fri, 20 Sep 2019 14:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F846FD1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 14:57:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18561079-1500050 for multiple; Fri, 20 Sep 2019 15:57:34 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190920083624.4601-1-chris@chris-wilson.co.uk>
References: <20190920083624.4601-1-chris@chris-wilson.co.uk>
Message-ID: <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Sep 2019 15:57:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjAgMDk6MzY6MjQpCj4gRm9yY2UgYm9uZGVk
IHJlcXVlc3RzIHRvIHJ1biBvbiBkaXN0aW5jdCBlbmdpbmVzIHNvIHRoYXQgdGhleSBjYW5ub3Qg
YmUKPiBzaHVmZmxlZCBvbnRvIHRoZSBzYW1lIGVuZ2luZSB3aGVyZSB0aW1lc2xpY2luZyB3aWxs
IHJldmVyc2UgdGhlIG9yZGVyLgo+IEEgYm9uZGVkIHJlcXVlc3Qgd2lsbCBvZnRlbiB3YWl0IG9u
IGEgc2VtYXBob3JlIHNpZ25hbGVkIGJ5IGl0cyBtYXN0ZXIsCj4gY3JlYXRpbmcgYW4gaW1wbGlj
aXQgZGVwZW5kZW5jeSAtLSBpZiB3ZSBpZ25vcmUgdGhhdCBpbXBsaWNpdCBkZXBlbmRlbmN5Cj4g
YW5kIGFsbG93IHRoZSBib25kZWQgcmVxdWVzdCB0byBydW4gb24gdGhlIHNhbWUgZW5naW5lIGFu
ZCBiZWZvcmUgaXRzCj4gbWFzdGVyLCB3ZSB3aWxsIGNhdXNlIGEgR1BVIGhhbmcuCgpUaGlua2lu
ZyBtb3JlLCBpdCBzaG91bGQgbm90IGRpcmVjdGx5IGNhdXNlIGEgR1BVIGhhbmcsIGFzIHRoZSBz
dHVjayByZXF1ZXN0CnNob3VsZCBiZSB0aW1lc2xpY2VkIGF3YXksIGFuZCBlYWNoIHByZWVtcHRp
b24gc2hvdWxkIGJlIGVub3VnaCB0byBrZWVwCmhhbmdjaGVjayBhdCBiYXkgKHRob3VnaCB3ZSBo
YXZlIGV2aWRlbmNlIGl0IG1heSBub3QpLiBTbyBhdCBiZXN0IGl0IHJ1bnMKYXQgaGFsZi1zcGVl
ZCwgYXQgd29yc3QgYSB0aGlyZCAoaWYgbXkgbW9kZWwgaXMgY29ycmVjdCkuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
