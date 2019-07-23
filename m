Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AAB71384
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 10:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4886A89801;
	Tue, 23 Jul 2019 08:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C4E89801
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 08:00:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17526196-1500050 for multiple; Tue, 23 Jul 2019 09:00:11 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190722232048.9970-5-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
 <20190722232048.9970-5-daniele.ceraolospurio@intel.com>
Message-ID: <156386880898.31349.12699870445561503520@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 09:00:09 +0100
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/uc: Sanitize uC when GT is
 sanitized
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDAwOjIwOjQzKQo+IFRo
ZSBtaWNyb2NvbnRyb2xsZXJzIGFyZSBwYXJ0IG9mIEdUIHNvIGl0IG1ha2VzIGxvZ2ljYWwgc2Vu
c2UgdG8gaGF2ZQo+IHRoZW0gc2FuaXRpemVkIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMgYWxzbyBm
aXhlZCBhbiBpc3N1ZSB3aXRoIG91cgo+IHN0YXR1cyB0cmFja2luZyB3aGVyZSB0aGUgRlcgbG9h
ZCBzdGF0dXMgaXMgbm90IHJlc2V0IGFyb3VuZAo+IGhpYmVybmF0aW9uLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
Pgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkgbGlrZSB0
aGUgc2VudGltZW50LApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpJIGp1c3Qgd2FudCB0aGlzIGlzIENJJ2VkIGJ5IGl0c2VsZiB0byBiZSBzdXJl
IGFzIFM0LWRldmljZXMgYWx3YXlzCmNhdGNoZXMgbWUgb2ZmIGd1YXJkIDopCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
