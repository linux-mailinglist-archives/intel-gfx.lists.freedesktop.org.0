Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1F52DC71
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 14:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5196E0EF;
	Wed, 29 May 2019 12:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A106E0EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 12:09:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16719403-1500050 for multiple; Wed, 29 May 2019 13:09:02 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>, tvrtko.ursulin@intel.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190529115243.GA22431@mwanda>
References: <20190529115243.GA22431@mwanda>
Message-ID: <155913173961.13891.17214046858605031723@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 May 2019 13:08:59 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915: Engine discovery query
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTA1LTI5IDEyOjUyOjQzKQo+IEhlbGxvIFR2cnRr
byBVcnN1bGluLAo+IAo+IFRoZSBwYXRjaCBjNWQzZTM5Y2FhNDU6ICJkcm0vaTkxNTogRW5naW5l
IGRpc2NvdmVyeSBxdWVyeSIgZnJvbSBNYXkKPiAyMiwgMjAxOSwgbGVhZHMgdG8gdGhlIGZvbGxv
d2luZyBzdGF0aWMgY2hlY2tlciB3YXJuaW5nOgo+IAo+ICAgICAgICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9xdWVyeS5jOjEzNCBxdWVyeV9lbmdpbmVfaW5mbygpCj4gICAgICAgICB3YXJu
OiBjYWxsaW5nICdfX2NvcHlfdG9fdXNlcigpJyB3aXRob3V0IGFjY2Vzc19vaygpCj4gCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jCj4gICAgIDk3ICBxdWVyeV9lbmdpbmVfaW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgICAgOTggICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9xdWVyeV9pdGVtICpxdWVyeV9pdGVtKQo+ICAgICA5OSAgewo+
ICAgIDEwMCAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5lX2luZm8gX191c2Vy
ICpxdWVyeV9wdHIgPQo+ICAgIDEwMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
NjRfdG9fdXNlcl9wdHIocXVlcnlfaXRlbS0+ZGF0YV9wdHIpOwo+IAo+IHF1ZXJ5X2l0ZW0tPmRh
dGFfcHRyIGNvbWVzIGZyb20gdGhlIGlvY3RsIGFuZCBoYXNuJ3QgYmVlbiBjaGVja2VkLgoKY29w
eV9xdWVyeV9pdGVtcygpIGRvZXMgdGhlIGFjY2Vzc19vaygpIGNoZWNrIGZvciB0aGUgZGF0YSBw
b3J0aW9uIGFmdGVyCnRoZSBoZWFkZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
