Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD17EAEA5D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 14:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213EA6E09A;
	Tue, 10 Sep 2019 12:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341B16E09A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:30:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18438303-1500050 for multiple; Tue, 10 Sep 2019 13:30:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190910121347.22958-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190910121347.22958-1-ville.syrjala@linux.intel.com>
Message-ID: <156811863044.30942.14048935688430399220@skylake-alporthouse-com>
Date: Tue, 10 Sep 2019 13:30:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use a high priority wq for
 nonblocking plane updates
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA5LTEwIDEzOjEzOjQ3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gc3lzdGVtX3Vu
Ym91bmRfd3EgY2FuJ3Qga2VlcCB1cCBzb21ldGltZXMgYW5kIHdlIGdldCBkcm9wcGVkIGZyYW1l
cy4KPiBTd2l0Y2ggdG8gYSBoaWdoIHByaW9yaXR5IHZhcmlhbnQuCj4gCj4gUmVwb3J0ZWQtYnk6
IEhlaW5yaWNoIEZpbmsgPGhlaW5yaWNoLmZpbmtAZGFxcmkuY29tPgo+IFRlc3RlZC1ieTogSGVp
bnJpY2ggRmluayA8aGVpbnJpY2guZmlua0BkYXFyaS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkgZ3Vlc3Mgd2UgbWln
aHQgYmUgdGFsa2luZyBhYm91dCBhZGRpbmcgYSBXUV9SVFBSSSBuZXh0LiBEb2Vzbid0CmFjdHVh
bGx5IGxvb2sgdGhhdCBkaWZmaWN1bHQgdG8gZG8sIGlmIHRoZXJlJ3MgYSB1c2Vyc3BhY2UgZGVt
YW5kIChhcwp3ZSB3b3VsZCBuZWVkIHRvIGp1c3RpZnkgd2h5IG91ciBpbnRlcmFjdGl2ZSB0YXNr
IGRlc2VydmVkIHRvIGJlIHN1Y2gKaGlnaCBwcmlvcml0eSkuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
