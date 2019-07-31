Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6EC7CF18
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 22:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC106E2F8;
	Wed, 31 Jul 2019 20:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71F06E2F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 20:50:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17768920-1500050 for multiple; Wed, 31 Jul 2019 21:49:58 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190731143856.35460-2-michal.wajdeczko@intel.com>
References: <20190731143856.35460-1-michal.wajdeczko@intel.com>
 <20190731143856.35460-2-michal.wajdeczko@intel.com>
Message-ID: <156460619736.2512.17033733101561223390@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 21:49:57 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/uc: Rename
 intel_uc_is_using* into intel_uc_supports*
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDE1OjM4OjUzKQo+IEBAIC0zNjUs
MTIgKzM2NSwxMiBAQCB2b2lkIGludGVsX3VjX2Zpbmkoc3RydWN0IGludGVsX3VjICp1YykKPiAg
ewo+ICAgICAgICAgc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJnVjLT5ndWM7Cj4gIAo+IC0gICAg
ICAgaWYgKCFpbnRlbF91Y19pc191c2luZ19ndWModWMpKQo+ICsgICAgICAgaWYgKCFpbnRlbF91
Y19zdXBwb3J0c19ndWModWMpKQo+ICAgICAgICAgICAgICAgICByZXR1cm47CgpOb3RlIGJ5IHRo
aXMgcG9pbnQgd2Ugc2hvdWxkIGtub3cgd2hldGhlciBvciBub3Qgd2UgbG9hZGVkIHRoZSBndWMg
YW5kCm5lZWQgdG8gY2xlYW51cC4gU28gaGVyZSBpc191c2luZ19ndWMoKSBkb2VzIHJlYWQgYmV0
dGVyLiBJZiB3ZSBldmVuCm5lZWQgdG8gYm90aGVyIGFuZCBqdXN0IGxlYXZlIGl0IHRvIHRoZSBo
dWNfZmluaSAvIGd1Y19maW5pIHRvIGJlIG5vLW9wcwp3aGVuIHRoZXJlIGlzIG5vdGhpbmcgdG8g
ZG8uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
