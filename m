Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7064A346
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 165CE6E1CD;
	Tue, 18 Jun 2019 14:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD476E1CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:03:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16941451-1500050 for multiple; Tue, 18 Jun 2019 15:03:51 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156086634275.31375.18343283345365740768@skylake-alporthouse-com>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <87wohj6m7q.fsf@gaia.fi.intel.com>
 <156086634275.31375.18343283345365740768@skylake-alporthouse-com>
Message-ID: <156086663207.31375.5323428438223953302@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 15:03:52 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTggMTQ6NTk6MDIpCj4gUXVvdGluZyBNaWth
IEt1b3BwYWxhICgyMDE5LTA2LTE4IDE0OjQ1OjQ1KQo+ID4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+ID4gQEAgLTMyOCw2ICszNDUsNyBAQCB2b2lk
IGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKPiA+
ID4gIAo+ID4gPiAgICAgICAgICAgICAgIGxsaXN0X2FkZCgoc3RydWN0IGxsaXN0X25vZGUgKikm
bm9kZS0+YmFzZS5saW5rLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAmZW5naW5lLT5i
YXJyaWVyX3Rhc2tzKTsKPiA+ID4gKyAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fcHV0KGVu
Z2luZSk7Cj4gPiAKPiA+IEJ1dCB5b3Ugc2FpZCB0aGF0IHlvdSBrZWVwIHRoZSB3YWtlcmVmIHVu
dGlsIHVucGluPwo+IAo+IGludGVsX2NvbnRleHRfdW5waW4gLT4KPiAgIGludGVsX2NvbnRleHRf
YWN0aXZlX3JlbGVhc2UgLT4KPiAgICAgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyCgpUaGF0
IHNob3VsZCBwcm9iYWJseSBiZSByZW5hbWVkIHRvIGk5MTVfYWN0aXZlX3JlbGVhc2VfYmFycmll
ci4KUG9zc2libHksIHNvbWV0aGluZyBldmVuIG1vcmUgaW1hZ2luYXRpdmUuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
