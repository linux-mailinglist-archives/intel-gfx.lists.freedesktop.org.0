Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C32D1A18
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 22:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2A86E323;
	Wed,  9 Oct 2019 20:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7FA6E31D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 20:52:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18783047-1500050 for multiple; Wed, 09 Oct 2019 21:52:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009203641.15477-1-chris@chris-wilson.co.uk>
 <c105543d-f396-cac7-2627-f5ca0ba664c3@intel.com>
In-Reply-To: <c105543d-f396-cac7-2627-f5ca0ba664c3@intel.com>
Message-ID: <157065432327.18808.4785516359627975462@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 21:52:03 +0100
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/perf: Disable rc6 only while
 OA is enabled
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wOSAyMTo0Njo1NikKPiBIbW0uLi4g
bm9wZSwgc29ycnkuCj4gCj4gV2UnbGwgbG9vc2UgTk9BIGNvbmZpZ3VyYXRpb24gaWYgeW91IGRv
IHRoYXQuCj4gQW5kIHlvdSdsbCBoYXZlIHRvIHJlcnVuIHRoZSBvYSBjb25maWcgQk8gcHJpb3Ig
dG8gZW5hYmxpbmcuCgpJcyB0aGF0IG5vdCB3b3J0aCBpdD8gTW92ZSB0aGUgZW5hYmxlX21ldHJp
Y19zZXQvZGlzYWJsZV9tZXRyaWNfc2V0IHRvCmk5MTVfcGVyZl9lbmFibGVfbG9ja2VkIGFzIHdl
bGw/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
