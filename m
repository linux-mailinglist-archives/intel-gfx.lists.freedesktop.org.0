Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DEDF943F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 16:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03056E478;
	Tue, 12 Nov 2019 15:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9976E478
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 15:28:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19175327-1500050 for multiple; Tue, 12 Nov 2019 15:28:28 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191112152052.GQ1208@intel.com>
References: <20191112143643.21821-1-chris@chris-wilson.co.uk>
 <20191112152052.GQ1208@intel.com>
Message-ID: <157357250638.28106.8783132175708738862@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 12 Nov 2019 15:28:26 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Explicitly cleanup
 initial_plane_config
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMTEtMTIgMTU6MjA6NTIpCj4gT24gVHVlLCBO
b3YgMTIsIDIwMTkgYXQgMDI6MzY6NDJQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
QEAgLTMzMTcsNyArMzMxMyw2IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMsCj4gPiAgICAgICBpZiAocGxhbmVfY29uZmlnLT50aWxp
bmcpCj4gPiAgICAgICAgICAgICAgIGRldl9wcml2LT5wcmVzZXJ2ZV9iaW9zX3N3aXp6bGUgPSB0
cnVlOwo+ID4gIAo+ID4gLSAgICAgcGxhbmVfc3RhdGUtPmZiID0gZmI7Cj4gCj4gVGhpcyBzdHVm
ZiBsb29rcyB3cm9uZy4gV2Ugc3RpbGwgd2FudCB0aGUgcGxhbmUgc3RhdGUgdG8gcG9pbnQgYXQg
dGhlCj4gZmIuCgpPaCwgaXQgdXNlZCB0byBiZQoKQEAgLTMyNjYsOCArMzI2Miw5IEBAIGludGVs
X2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMsCiAg
ICAgICAgaWYgKHBsYW5lX2NvbmZpZy0+dGlsaW5nKQogICAgICAgICAgICAgICAgZGV2X3ByaXYt
PnByZXNlcnZlX2Jpb3Nfc3dpenpsZSA9IHRydWU7CgotICAgICAgIHBsYW5lX3N0YXRlLT5mYiA9
IGZiOwogICAgICAgIHBsYW5lX3N0YXRlLT5jcnRjID0gJmludGVsX2NydGMtPmJhc2U7CisgICAg
ICAgcGxhbmVfc3RhdGUtPmZiID0gZmI7CisgICAgICAgZHJtX2ZyYW1lYnVmZmVyX2dldChmYik7
CgogICAgICAgIGF0b21pY19vcih0b19pbnRlbF9wbGFuZShwcmltYXJ5KS0+ZnJvbnRidWZmZXJf
Yml0LAogICAgICAgICAgICAgICAgICAmdG9faW50ZWxfZnJvbnRidWZmZXIoZmIpLT5iaXRzKTsK
CkknbGwgYmxhbWUgaXQgb24gbm90IHBheWluZyBlbm91Z2ggYXR0ZW50aW9uIGR1cmluZyB0aGUg
cmViYXNlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
