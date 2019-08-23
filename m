Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C35379B431
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C94A6ECE0;
	Fri, 23 Aug 2019 16:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B246ECE0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:03:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242642-1500050 for multiple; Fri, 23 Aug 2019 17:03:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190823132700.25286-1-chris@chris-wilson.co.uk>
 <20190823132700.25286-7-chris@chris-wilson.co.uk>
 <87o90fub1z.fsf@gaia.fi.intel.com>
In-Reply-To: <87o90fub1z.fsf@gaia.fi.intel.com>
Message-ID: <156657622663.4019.7120019667773615280@skylake-alporthouse-com>
Date: Fri, 23 Aug 2019 17:03:46 +0100
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Mark up obj->pin_global as
 being atomic
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTIzIDE3OjAwOjA4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBDb21pbmcgdXAgbmV4
dCwgd2Ugd2lsbCB3YW50IHRvIG1hbmlwdWxhdGUgdGhlIHBpbl9nbG9iYWwgY291bnRlcgo+ID4g
b3V0c2lkZSBvZiB0aGUgcHJpbmNpcGxlIGxvY2tzLCBzbyBjb252ZXJ0IGl0IHRvIGFuIGF0b21p
Yy4KPiA+Cj4gCj4gSSBhbSBub3QgeWV0IHVwIHRvIHNwZWVkIG9uIHBpbl9nbG9iYWwgYnV0Cj4g
YmVpbmcgcGFydCBvZiBhIHNlcmllcyB3aGVyZSB3aGVyZSB0aGlzIG5lZWRzCj4gdG8gYmUgYXRv
bWljLCB0aGUgcGF0Y2ggZG9lcyB3aGF0IGl0IHNheXMgb24gdGhlIHRpbi4KCnBpbl9nbG9iYWwg
cmVhbGx5IHN0YXJ0ZWQgb2ZmIGxpZmUgYXMgYSBtZWFucyB0byBrZWVwIHRoZSBzaHJpbmtlciBh
dApiYXkuIEl0IHRoZW4gZ3JldyBhcyBhIG1hcmtlciBmb3IgZGlzcGxheSBvYmplY3RzIGluIEdF
TSwgYnV0IHJlYWxseSB3ZQpjYW4gdXNlIG9iai0+ZnJvbnRidWZmZXIgbm93IGZvciB0aGF0IHJv
bGUuIEFuZCB3ZSBhbHJlYWR5IHVzZQpvYmotPmZyb250YnVmZmVyIHRvIGRlbGF5IHNocmlua2lu
ZyBvZiB0aG9zZSBvYmplY3RzLgoKSG1tLiBUaGF0IG1pZ2h0IHdvcmsuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
