Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0E772C30
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD8989ECD;
	Wed, 24 Jul 2019 10:15:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DE289ECD
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:15:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17560944-1500050 for multiple; Wed, 24 Jul 2019 11:14:46 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
 <20190724100716.10731-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190724100716.10731-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <156396328470.31349.6273691818655517005@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 11:14:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Avoid one round-tip through
 global i915 when getting to gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNCAxMTowNzoxMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEdvIHRvIGd0LT5hY3Rp
dmVfcmluZ3MgdmlhIHRpbWVsaW5lIGluc3RlYWQgb2YgZ2xvYmFsIGk5MTUgZm9yIG1vcmUKPiBs
b2dpY2FsIG9yZ2FuaXphdGlvbi4KCkdyciwgSSd2ZSBiZWVuIHNlbmRpbmcgcGF0Y2hlcyB0byBr
aWxsIHRoaXMgZm9yIG92ZXIgNiBtb250aHMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
