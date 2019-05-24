Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF9929AF8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 17:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B99189E36;
	Fri, 24 May 2019 15:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D278489E36;
 Fri, 24 May 2019 15:26:48 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 207E380498;
 Fri, 24 May 2019 17:26:45 +0200 (CEST)
Date: Fri, 24 May 2019 17:26:43 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190524152643.GA9222@ravnborg.org>
References: <20190523134413.4210-1-noralf@tronnes.org>
 <20190523165320.GA7770@ravnborg.org>
 <CACRpkda+RJxkHbwsMdF+NQ159WKp3_w8TDEDnNRrcPxwkr=QbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkda+RJxkHbwsMdF+NQ159WKp3_w8TDEDnNRrcPxwkr=QbA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=B4B3l4d_l54apR1ZhpwA:9 a=CjuIK1q_8ugA:10
Subject: Re: [Intel-gfx] [PATCH v6 0/8] drm/fb-helper: Move modesetting code
 to drm_client
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTGludXMuCgpUaGFua3MgZm9yIHRoZSByZXNwb25zZS4KCj4gPiBDb3VsZCBvbmUgb2YgeW91
IHRha2UgYSBsb29rIGF0IHRoaXMgc2VyaWVzLgo+ID4gRGFuaWVsIGFscmVhZHkgYWNrJ2VkIHRo
ZSBzZXJpZXMgb24gaXJjLCBidXQgYW4gZXh0cmEgcGFpciBvZiBleWVzCj4gPiBpcyBuZXZlciBi
YWQuCj4gCj4gSSB3b3VsZCBpZiBJIGhhZCBhIGNoYW5jZSBvZiB1bmRlcnN0YW5kaW5nIHRoZW0u
IEkgYW0gc3RpbGwgcHJldHR5Cj4gbm92aWNlIHdpdGggRFJNIHNvIHdoYXQgSSBkbyBpcyB0cmFj
ZSBkb3duIHRvIHRoZSBjYWxscyBJCj4gbmVlZCBhbmQgdW5kZXJzdGFuZCB0aGUgc21hbGwgcGll
Y2VzIEkgdXNlLgoKV2UgYXJlIGFsbW9zdCBvbiB0aGUgc2FtZSBwYWdlIGhlcmUsIGV4cGVjdCB0
aGF0IEkgYW0gc29tZXRpbWVzCmF0IGxvc3MgdW5kZXJzdGFuZGluZyA6LSkKCglTYW0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
