Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10994713F9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 10:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865416E288;
	Tue, 23 Jul 2019 08:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5D36E288
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 08:28:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17526862-1500050 for multiple; Tue, 23 Jul 2019 09:28:44 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190722232048.9970-6-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-6-daniele.ceraolospurio@intel.com>
Message-ID: <156387052206.31349.7182505132509563188@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 09:28:42 +0100
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/uc: Unify uc_fw status tracking
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDAwOjIwOjQ0KQo+IEBA
IC0yMTksMTkgKzIwNywxNyBAQCB2b2lkIGludGVsX3VjX2Z3X2ZldGNoKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCj4gICAgICAgICB1Y19mdy0+b2JqID0gb2JqOwo+ICAg
ICAgICAgdWNfZnctPnNpemUgPSBmdy0+c2l6ZTsKPiAtICAgICAgIHVjX2Z3LT5mZXRjaF9zdGF0
dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9TVUNDRVNTOwo+IC0gICAgICAgRFJNX0RFQlVHX0RSSVZF
UigiJXMgZncgZmV0Y2ggJXNcbiIsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX3Vj
X2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksCj4gLSAgICAgICAgICAgICAgICAgICAgICAgIGlu
dGVsX3VjX2Z3X3N0YXR1c19yZXByKHVjX2Z3LT5mZXRjaF9zdGF0dXMpKTsKPiArICAgICAgIHVj
X2Z3LT5zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9GRVRDSEVEOwo+ICsgICAgICAgRFJNX0RF
QlVHX0RSSVZFUigiJXMgZncgZmV0Y2ggZG9uZVxuIiwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3LT50eXBlKSk7CgpJIGRvbid0IHNlZSBtdWNo
IHZhbHVlIGluIHRoZSBzdWNjZXNzIG1lc3NhZ2UsIHRoZXkganVzdCBnZXQgZm9sbG93ZWQgYnkK
bW9yZSBzdWNjZXNzIG1lc3NhZ2VzLiBQb2ludGxlc3Mgc3BhbSBpbW8uCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
