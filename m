Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C4A14BB63
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:47:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C4B6EE5F;
	Tue, 28 Jan 2020 14:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B666EE5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:47:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20036426-1500050 for multiple; Tue, 28 Jan 2020 14:47:25 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
Message-ID: <158022284356.2129.14373245964695518878@skylake-alporthouse-com>
Date: Tue, 28 Jan 2020 14:47:23 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Nuke pre-production GLK HDMI
 w/a 1139
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTI4IDE0OjQ1OjAwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gdy9hICMxMTM5
IGlzIG9ubHkgbmVlZGVkIGZvciBwcmUtcHJvZHVjdGlvbiBHTEsuIE51a2UgaXQuCj4gCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA1
IC0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gaW5kZXggYWIxM2NmODM0Y2M0Li45ZTQw
OWE4MTlmZjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
Ywo+IEBAIC0yMjc0LDExICsyMjc0LDYgQEAgc3RhdGljIGJvb2wgaGRtaV9kZWVwX2NvbG9yX3Bv
c3NpYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAgICAg
ICAgICAgICAgICB9Cj4gICAgICAgICB9Cj4gIAo+IC0gICAgICAgLyogRGlzcGxheSBXQSAjMTEz
OTogZ2xrICovCj4gLSAgICAgICBpZiAoYnBjID09IDEyICYmIElTX0dMS19SRVZJRChkZXZfcHJp
diwgMCwgR0xLX1JFVklEX0ExKSAmJgo+IC0gICAgICAgICAgIGFkanVzdGVkX21vZGUtPmh0b3Rh
bCA+IDU0NjApCj4gLSAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKCkNhcmUgdG8gYWRkIGVh
cmx5IEdMSyB0byB0aGUgbGlzdCBvZiBwcmVwcm9kdWN0aW9uIG1vZGVscyBpbgppbnRlbF9kZXRl
Y3RfcHJlcHJvZHVjdGlvbl9odygpPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
