Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A20115DB8
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2AE6E1F6;
	Sat,  7 Dec 2019 17:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEAE6E1F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:17:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19497055-1500050 for multiple; Sat, 07 Dec 2019 17:17:33 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191207170110.2200142-7-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-7-chris@chris-wilson.co.uk>
Message-ID: <157573905171.2300.12887657932583738116@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 07 Dec 2019 17:17:31 +0000
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Asynchronous cmdparser
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDcgMTc6MDE6MDkpCj4gRXhlY3V0ZSB0aGUg
Y21kcGFyc2VyIGFzeW5jaHJvbm91c2x5IGFzIHBhcnQgb2YgdGhlIHN1Ym1pc3Npb24gcGlwZWxp
bmUuCj4gVXNpbmcgb3VyIGRtYS1mZW5jZXMsIHdlIGNhbiBzY2hlZHVsZSBleGVjdXRpb24gYWZ0
ZXIgYW4gYXN5bmNocm9ub3VzCj4gcGllY2Ugb2Ygd29yaywgc28gd2UgbW92ZSB0aGUgY21kcGFy
c2VyIG91dCBmcm9tIHVuZGVyIHRoZSBzdHJ1Y3RfbXV0ZXgKPiBpbnNpZGUgZXhlY2J1ZiBhcyBy
dW4gaXQgYXMgcGFydCBvZiB0aGUgc3VibWlzc2lvbiBwaXBlbGluZS4gVGhlIHNhbWUKPiBzZWN1
cml0eSBydWxlcyBhcHBseSwgd2UgY29weSB0aGUgdXNlciBiYXRjaCBiZWZvcmUgdmFsaWRhdGlv
biBhbmQKPiB1c2Vyc3BhY2UgY2Fubm90IHRvdWNoIHRoZSB2YWxpZGF0aW9uIHNoYWRvdy4gVGhl
IG9ubHkgY2F2ZWF0IGlzIHRoYXQgd2UKPiB3aWxsIGRvIHJlcXVlc3QgY29uc3RydWN0aW9uIGJl
Zm9yZSB3ZSBjb21wbGV0ZSBjbWRwYXJzaW5nIGFuZCBzbyB3ZQo+IGNhbm5vdCBrbm93IHRoZSBv
dXRjb21lIG9mIHRoZSB2YWxpZGF0aW9uIHN0ZXAgdW50aWwgbGF0ZXIgLS0gc28gdGhlCj4gZXhl
Y2J1ZiBpb2N0bCBkb2VzIG5vdCByZXBvcnQgLUVJTlZBTCBkaXJlY3RseSwgYnV0IHdlIG11c3Qg
Y2FuY2VsCj4gZXhlY3V0aW9uIG9mIHRoZSByZXF1ZXN0IGFuZCBmbGFnIHRoZSBlcnJvciBvbiB0
aGUgb3V0LWZlbmNlLgogCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvNjExCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
