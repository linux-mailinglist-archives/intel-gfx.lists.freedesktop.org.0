Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D41D7BAA8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 09:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC786E60C;
	Wed, 31 Jul 2019 07:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 158C56E60C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 07:24:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17750887-1500050 for multiple; Wed, 31 Jul 2019 08:23:57 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730230743.19542-3-daniele.ceraolospurio@intel.com>
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
 <20190730230743.19542-3-daniele.ceraolospurio@intel.com>
Message-ID: <156455783627.6373.18275746858120144943@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 08:23:56 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/gt: Move gt_cleanup_early
 out of gem_cleanup_early
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMxIDAwOjA3OjQxKQo+IFdl
IGRvbid0IGNhbGwgdGhlIGluaXRfZWFybHkgZnVuY3Rpb24gZnJvbSB3aXRoaW4gdGhlIGdlbSBj
b2RlLCBzbyB3ZQo+IHNob3VsZG4ndCBkbyBpdCBmb3IgdGhlIGNsZWFudXAgZWl0aGVyLgo+IAo+
IHYyOiB3aGlsZSBhdCBpdCwgcy9ndF9jbGVhbnVwX2Vhcmx5L2d0X2xhdGVfcmVsZWFzZSAoQ2hy
aXMpCgpUaGUgcGF0dGVybiBpcyBpbnRlbF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlLiBUaGUgZGlz
dGluY3Rpb24gbWF5IGJlY29tZQppbXBvcnRhbnQgbGF0ZXIgZm9yIHVuYmluZGluZy4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
