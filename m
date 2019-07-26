Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D83D773B2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 23:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4416EE67;
	Fri, 26 Jul 2019 21:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F7E6EE67
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 21:47:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="370235349"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.40])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jul 2019 14:47:04 -0700
Date: Fri, 26 Jul 2019 14:47:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190726214701.snfjdsxafw6nl4xc@ldmartin-desk1>
References: <20190726212344.7514-1-lucas.demarchi@intel.com>
 <156417689077.21451.11321510323190207405@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156417689077.21451.11321510323190207405@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: ignore generated files for header
 test
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMTA6MzQ6NTBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDctMjYgMjI6MjM6NDQpCj4+IFRo
ZXNlIGFyZSBnZW5lcmF0ZWQgc291cmNlIHRoYXQgY2FuIGJlIGlnbm9yZWQgYnkgZ2l0Lgo+Cj5U
aGV5J3JlIHRoZSBzdGFsZSBnZW5lcmF0ZWQgaGVhZGVycyBmcm9tIG91ciBvbGQgbWVjaGFuaXNt
LCByaWdodD8KCk5vLiBUaGV5IGFyZSBzdGlsbCBpbiB0aGUgTWFrZWZpbGVzOgoKJCBnaXQgZ3Jl
cCAtbCBoZWFkZXJfdGVzdApkcml2ZXJzL2dwdS9kcm0vaTkxNS8uZ2l0aWdub3JlCmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUuaGVhZGVyLXRlc3QKZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL01ha2VmaWxlLmhlYWRlci10ZXN0CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L01h
a2VmaWxlLmhlYWRlci10ZXN0CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL01ha2VmaWxlLmhl
YWRlci10ZXN0CgpGcm9tIHRoYXQgY29tbWl0IGl0IHNlZW1zIHdlIHNob3VsZCByYXRoZXIgcmVt
b3ZlIHRob3NlIHNlY3Rpb25zIGZyb20KdGhlc2UgbWFrZWZpbGVzLgoKTHVjYXMgRGUgTWFyY2hp
Cgo+Cj5TZWUgY29tbWl0IGU4NDZmMGRjNTdmNDQxZTVlOTMxOTRkMzliYzliOGFjMmFiNWUwYTQK
PkF1dGhvcjogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPkRhdGU6ICAgVHVl
IEp1biA0IDE1OjQyOjQ4IDIwMTkgKzAzMDAKPgo+ICAgIGtidWlsZDogYWRkIHN1cHBvcnQgZm9y
IGVuc3VyaW5nIGhlYWRlcnMgYXJlIHNlbGYtY29udGFpbmVkCj4KPmZvciB3aGVuIHRoaXMgaWdu
b3JlIHdhcyBkcm9wcGVkLgo+LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
