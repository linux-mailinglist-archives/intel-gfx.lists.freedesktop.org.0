Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 791102C4D2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 12:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2ACF89C05;
	Tue, 28 May 2019 10:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C5589C05
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:52:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16704420-1500050 for multiple; Tue, 28 May 2019 11:52:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
Message-ID: <155904075684.2403.5714344721936400318@skylake-alporthouse-com>
Date: Tue, 28 May 2019 11:52:36 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMSAxNTowODo1NCkKPiBAQCAtMjA0
OCw2ICsyMDgxLDQyIEBAIHN0YXRpYyBpbnQgZWJfc3VibWl0KHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gICAgICAgICB9
CgppZiAoZWItPm9hX2NvbmZpZykgewoJZXJyID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmVi
LT5pOTE1LT5wZXJmLm9hLm9hX2NvbmZpZ19hY3RpdmUsCgkJCQkgICAgICBlYi0+cmVxdWVzdCk7
CglpZiAoZXJyKQoJCXJldHVybiBlcnI7Cn0KCndpdGggdGhlIGFkZGl0aW9uIG9mCglzdHJ1Y3Qg
aTkxNV9hY3RpdmVfcmVxdWVzdCBvYV9jb25maWdfYWN0aXZlOwp0byBpOTE1LT5wZXJmLm9hLCBh
bmQgaTkxNV9hY3RpdmVfaW5pdDsgVGhhdCB3aWxsIGVuc3VyZSB0aGF0IHRoZQpvYV9jb25maWcg
Y2FuJ3QgYmUgY2hhbmdlZCBiZWZvcmUgZXhlY3V0aW9uIChhbmQgdGhlIG9yZGVyaW5nIHJlc3Ry
aWN0aW9uCmlzIGVzc2VudGlhbGx5IGEgbm8tb3AgaWYgb25seSBvbmUgY29udGV4dCBoYXMgYSBz
cGVjaWZpZWQgb2FfY29uZmlnKS4KCj4gKyAgICAgICBpZiAoZWItPm9hX2NvbmZpZyAmJgo+ICsg
ICAgICAgICAgIGViLT5vYV9jb25maWcgIT0gZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0
cmVhbS0+b2FfY29uZmlnKSB7CgpGd2l3LCBJIHdvdWxkIG1vdmUgdGhlc2UgdG8gZWJfb2FfY29u
ZmlnKCkuCgppZiAoZWItPm9hX2NvbmZpZykgewoJZXJyID0gZWJfb2FfY29uZmlnKGViKTsKCWlm
IChlcnIpCgkJcmV0dXJuIGVycjsKfQoKSG93IGRvZXMgZWJfb2FfY29uZmlnIG1peCB3aXRoIHRo
ZSBnbG9iYWwgZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzKCk/Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
