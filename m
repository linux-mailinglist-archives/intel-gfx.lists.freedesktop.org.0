Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB101099BA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 08:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE6989BB3;
	Tue, 26 Nov 2019 07:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6CC89BB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 07:53:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19339077-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 07:53:51 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
Message-ID: <157475482550.8701.904606443253632315@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 07:53:45 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce nested
 prepare_remote_context() to a trylock
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjYgMDY6NTU6MjEpCj4gT24gY29udGV4dCBy
ZXRpcmluZywgd2UgbWF5IGludm9rZSB0aGUga2VybmVsX2NvbnRleHQgdG8gdW5waW4gdGhpcwo+
IGNvbnRleHQuIEVsc2V3aGVyZSwgd2UgbWF5IHVzZSB0aGUga2VybmVsX2NvbnRleHQgdG8gbW9k
aWZ5IHRoaXMKPiBjb250ZXh0LiBUaGlzIGN1cnJlbnRseSBsZWFkcyB0byBhbiBBQi1CQSBsb2Nr
IGludmVyc2lvbiwgc28gd2UgbmVlZCB0bwo+IGJhY2stb2ZmIGZyb20gdGhlIGNvbnRlbmRlZCBs
b2NrLCBhbmQgcmVwZWF0Lgo+IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3MzIKRml4ZXM6IGE5ODc3ZGEyZDYyOSAoImRybS9pOTE1
L29hOiBSZWNvbmZpZ3VyZSBjb250ZXh0cyBvbiB0aGUgZmx5IikKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
