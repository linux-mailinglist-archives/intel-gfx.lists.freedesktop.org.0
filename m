Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E06E258EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 02:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1196E855;
	Fri, 28 Jun 2019 00:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C61C6E855
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 00:05:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050883-1500050 for multiple; Fri, 28 Jun 2019 01:05:40 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-29-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-29-matthew.auld@intel.com>
Message-ID: <156168033795.21955.7305617580570395588@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 01:05:37 +0100
Subject: Re: [Intel-gfx] [PATCH v2 28/37] drm/i915: Allow i915 to manage the
 vma offset nodes instead of drm core
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MjQpCj4gK3N0YXRpYyB2b2lk
IGk5MTVfZ2VtX3ZtX29wZW4oc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gK3sKPiArICAg
ICAgIHN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICpwcml2ID0gdm1hLT52bV9wcml2YXRlX2RhdGE7
Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gcHJpdi0+b2JqOwo+
ICsKPiArICAgICAgIGRybV9nZW1fb2JqZWN0X2dldCgmb2JqLT5iYXNlKTsKClBsZWFlIHVzZSB0
aGUgcmlnaHQgZ2V0dGVycywgaTkxNV9nZW1fb2JqZWN0X2dldCBhbmQKaTkxNV9nZW1fb2JqZWN0
X3B1dC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
