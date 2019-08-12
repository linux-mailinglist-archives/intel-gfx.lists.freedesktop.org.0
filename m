Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC818A7FD
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 22:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30576E5D3;
	Mon, 12 Aug 2019 20:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2CC6E5D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 20:09:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17974287-1500050 for multiple; Mon, 12 Aug 2019 21:09:05 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812195125.18924-1-michal.wajdeczko@intel.com>
References: <20190812195125.18924-1-michal.wajdeczko@intel.com>
Message-ID: <156564053979.2301.17022033172404108974@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 21:08:59 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/uc: Log fw status changes only under
 debug config
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTEyIDIwOjUxOjI1KQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAo+IGluZGV4IDIwYTVkZGI3NTNjMy4uODg1
YTRkN2U0ZDM3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5o
Cj4gQEAgLTQyLDcgKzQyLDcgQEAgZW51bSBpbnRlbF91Y19md190eXBlIHsKPiAgICovCj4gIHN0
cnVjdCBpbnRlbF91Y19mdyB7Cj4gICAgICAgICBlbnVtIGludGVsX3VjX2Z3X3R5cGUgdHlwZTsK
PiAtICAgICAgIGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1czsKPiArICAgICAgIGVudW0g
aW50ZWxfdWNfZndfc3RhdHVzIF9zdGF0dXM7CgpXaGF0IHlvdSBjYW4gZG8gdG8gcHJldmVudCBh
Y2NpZGVudGFsbHkgd3JpdGluZyBpbnRvIHRoZSB2YXJpYWJsZSwgd2hpbGUKa2VlcGluZyBmdy0+
c3RhdHVzIGZvciBjb252ZW5pZW5jZSwgaXMKCi0gICAgICAgZW51bSBpbnRlbF91Y19md19zdGF0
dXMgX3N0YXR1czsKKyAgICAgICB1bmlvbiB7CisgICAgICAgICAgICAgICBjb25zdCBlbnVtIGlu
dGVsX3VjX2Z3X3N0YXR1cyBzdGF0dXM7CisgICAgICAgICAgICAgICBlbnVtIGludGVsX3VjX2Z3
X3N0YXR1cyBfX3N0YXR1czsgLyogbm8gYWNjaWRlbnRhbCBvdmVyd3JpdGVzICovCisgICAgICAg
fTsKClRoZSBvbmx5IGNhdGNoIGlzIHRoYXQgaXMgZGlzYWxsb3dzIHN0cnVjdCBhc3NpZ25tZW50
IChidXQgbWVtY3B5IGlzCnN0aWxsIGZpbmUpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
