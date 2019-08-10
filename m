Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A8988ADF
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 12:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981766E2E2;
	Sat, 10 Aug 2019 10:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66046E2DD;
 Sat, 10 Aug 2019 10:50:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17952283-1500050 for multiple; Sat, 10 Aug 2019 11:50:03 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-17-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-17-matthew.auld@intel.com>
Message-ID: <156543420134.2301.3156269658394308766@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 11:50:01 +0100
Subject: Re: [Intel-gfx] [PATCH v3 16/37] drm/i915/lmem: support CPU
 relocations
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6MjIpCj4gQEAgLTEwMTcsMTAg
KzEwMjAsMTQgQEAgc3RhdGljIHZvaWQgcmVsb2NfY2FjaGVfcmVzZXQoc3RydWN0IHJlbG9jX2Nh
Y2hlICpjYWNoZSkKPiAgICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBp
OTE1X2dndHQgKmdndHQgPSBjYWNoZV90b19nZ3R0KGNhY2hlKTsKPiAgCj4gLSAgICAgICAgICAg
ICAgIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKPiArICAgICAgICAg
ICAgICAgaWYgKCFjYWNoZS0+aXNfbG1lbSkKPiArICAgICAgICAgICAgICAgICAgICAgICBpbnRl
bF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhnZ3R0LT52bS5ndCk7CgpJIGxvdmUgYW4gb3B0aW1pc3Qu
IEF0IHRoZSBsZWFzdCB5b3UgbWlnaHQgbmVlZCB0aGUgd21iKCkuIEJ1dCB3ZSBoYXZlCnlldCB0
byBzZWUgaG93IG1hbnkgbWlzdGFrZXMgdGhleSd2ZSBjYXJyaWVkIG92ZXIgaW50byB0aGUgbmV3
CmltcGxlbWVudGF0aW9uIDspCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
