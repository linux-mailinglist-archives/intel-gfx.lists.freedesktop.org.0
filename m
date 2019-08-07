Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C985525
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 23:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB766891A3;
	Wed,  7 Aug 2019 21:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B53891A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 21:29:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17923623-1500050 for multiple; Wed, 07 Aug 2019 22:29:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190807205556.40435-1-stuart.summers@intel.com>
In-Reply-To: <20190807205556.40435-1-stuart.summers@intel.com>
Message-ID: <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 22:29:30 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAyMTo1NTo1NSkKPiBVc2VyIGFwcGxp
Y2F0aW9ucyBtaWdodCBuZWVkIHRvIHZlcmlmeSBoYXJkd2FyZSBjb25maWd1cmF0aW9uCj4gb2Yg
dGhlIE1PQ1MgZW50cmllcy4gVG8gZmFjaWxpdGF0ZSB0aGlzIGRlYnVnLCBhZGQgYSBuZXcgZGVi
dWdmcwo+IGVudHJ5IHRvIGFsbG93IGEgZHVtcCBvZiB0aGUgTU9DUyBzdGF0ZSB0byB2ZXJpZnkg
ZXhwZWN0ZWQgdmFsdWVzCj4gYXJlIHNldCBieSBpOTE1LgoKVXNlciBhcHBsaWNhdGlvbnMgKyBk
ZWJ1Z2ZzPyBJdCdzIG5vdCBhbiBhdmVudWUgZm9yIEFCSS4KCklmIHlvdSByZWFsbHkgd2FudCB0
byBwcm92aWRlIHRoZSBzZXR0aW5ncyBiYWNrIHRvIHVzZXJzcGFjZSwgbG9vayBhdApzb21ldGhp
bmcgbGlrZSBhbiBpOTE1X3F1ZXJ5IG9yIHN5c2ZzLgoKT3IgaWYgeW91IGp1c3QgbWVhbiBpZ3Qs
IHRoZW4gYWRkIGEgVGVzdGNhc2U6CgpJZiB5b3UganVzdCBuZWVkIHRvIHZhbGlkYXRlIHRoYXQg
d2UgYXJlIHNldHRpbmcgYW5kIHJlc3RvcmluZyB0aGVtLApzZWxmdGVzdHMuCgpJZiB5b3UgbmVl
ZCB0aGVtIGZvciBkZWJ1Z2dpbmcgZXJyb3JzLCBhZGQgdGhlbSB0byB0aGUgZXJyb3Igc3RhdGUu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
