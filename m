Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C4E1AE643
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD6E6E8AC;
	Fri, 17 Apr 2020 19:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F179B6E8AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:51:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938180-1500050 for multiple; Fri, 17 Apr 2020 20:51:36 +0100
MIME-Version: 1.0
In-Reply-To: <20200417134720.16654-3-ville.syrjala@linux.intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-3-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158715309508.2062.2790073223349657193@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:51:35 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Push TRANS_DDI_FUNC_CTL into
 the encoder->enable() hook
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA0LTE3IDE0OjQ3OjE5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUHVzaCB0aGUg
VFJBTlNfRERJX0ZVTkNfQ1RMIGludG8gdGhlIGVuY29kZXIgZW5hYmxlIGhvb2suIFRoZSBkaXNh
YmxlCj4gaXMgYWxyZWFkeSB0aGVyZSwgYW5kIGFzIGEgZm9sbG93dXAgd2lsbCBlbmFibGUgdXMg
dG8gcGFzcyB0aGUgZW5jb2Rlcgo+IGFsbCB0aGUgd2F5IGRvd24uCj4gCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkluIGlu
dGVsX2RkaV90cmFuc2NvZGVyX2Z1bmNfcmVnX3ZhbF9nZXQoKSBJIGZvdW5kIGEgbGlzdCBvZiBk
ZGkKY3J0YyB0eXBlcyAoSERNSSwgQU5BTE9HLCBEUF9NU1QsIERQX1NTVCkuIE5vdyBoZG1pL2Rw
ID09IGRkaSwgYW5kIHNvIHdlCmFyZSBsZWZ0IHdpdGggZHBfbXN0IGFuZCBjcnQgY2FsbGJhY2tz
LgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoK
SXMgaXQgcG9zc2libGUgdG8gaGF2ZSBtb3JlIEJVR19PTighdHJhbnNjb2Rlcl9pc19kZGkoKSkg
c2NhdHRlciBhcm91bmQKdGhlIGVudHJ5IHBvaW50cz8KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
