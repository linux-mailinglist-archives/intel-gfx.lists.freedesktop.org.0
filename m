Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFE14A319
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DC96E1CE;
	Tue, 18 Jun 2019 13:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4397B6E1C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:59:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16941355-1500050 for multiple; Tue, 18 Jun 2019 14:59:02 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87wohj6m7q.fsf@gaia.fi.intel.com>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <87wohj6m7q.fsf@gaia.fi.intel.com>
Message-ID: <156086634275.31375.18343283345365740768@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 14:59:02 +0100
Subject: Re: [Intel-gfx] [PATCH 01/26] drm/i915: Keep engine alive as we
 retire the context
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE4IDE0OjQ1OjQ1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBAQCAtMzI4LDYgKzM0NSw3
IEBAIHZvaWQgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAq
cmVmKQo+ID4gIAo+ID4gICAgICAgICAgICAgICBsbGlzdF9hZGQoKHN0cnVjdCBsbGlzdF9ub2Rl
ICopJm5vZGUtPmJhc2UubGluaywKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICZlbmdpbmUt
PmJhcnJpZXJfdGFza3MpOwo+ID4gKyAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fcHV0KGVu
Z2luZSk7Cj4gCj4gQnV0IHlvdSBzYWlkIHRoYXQgeW91IGtlZXAgdGhlIHdha2VyZWYgdW50aWwg
dW5waW4/CgppbnRlbF9jb250ZXh0X3VucGluIC0+CiAgaW50ZWxfY29udGV4dF9hY3RpdmVfcmVs
ZWFzZSAtPgogICAgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
