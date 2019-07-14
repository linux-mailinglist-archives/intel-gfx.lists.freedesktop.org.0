Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4598067F3D
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2019 16:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DD9898FD;
	Sun, 14 Jul 2019 14:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38B6898FD
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 14:15:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17286427-1500050 for multiple; Sun, 14 Jul 2019 15:14:53 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190714141220.1919-1-chris@chris-wilson.co.uk>
References: <20190714141220.1919-1-chris@chris-wilson.co.uk>
Message-ID: <156311369122.9436.331341640194449380@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 14 Jul 2019 15:14:51 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move the [class][inst] lookup
 for engines onto the GT
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTQgMTU6MTI6MjApCj4gK3ZvaWQgaW50ZWxf
ZW5naW5lX2FkZF91c2VyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsg
ICAgICAgc3RydWN0IHJiX3Jvb3QgKnJvb3QgPSAmZW5naW5lLT5pOTE1LT51YWJpX2VuZ2luZXM7
Cj4gKyAgICAgICBzdHJ1Y3QgcmJfbm9kZSAqKnAsICpwYXJlbnQ7Cj4gKwo+ICsgICAgICAgcGFy
ZW50ID0gTlVMTDsKPiArICAgICAgIHAgPSAmcm9vdC0+cmJfbm9kZTsKPiArICAgICAgIHdoaWxl
ICgqcCkgewo+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICppdDsKPiAr
Cj4gKyAgICAgICAgICAgICAgIHBhcmVudCA9ICpwOwo+ICsgICAgICAgICAgICAgICBpdCA9IHJi
X2VudHJ5KHBhcmVudCwgdHlwZW9mKCppdCksIHVhYmlfbm9kZSk7Cj4gKwo+ICsgICAgICAgICAg
ICAgICAvKiBBbGwgdXNlciBjbGFzczppbnN0YW5jZSBpZGVudGlmaWVycyBtdXN0IGJlIHVuaXF1
ZSAqLwo+ICsgICAgICAgICAgICAgICBHRU1fQlVHX09OKGl0LT51YWJpX2NsYXNzID09IGVuZ2lu
ZS0+dWFiaV9jbGFzcyAmJgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIGl0LT5pbnN0YW5j
ZSA9PSBlbmdpbmUtPmluc3RhbmNlKTsKCkknbSB0aGlua2luZyBtYXliZSB3ZSBzaG91bGQgY2Fs
bCB0aGlzIHVhYmlfaW5zdGFuY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
