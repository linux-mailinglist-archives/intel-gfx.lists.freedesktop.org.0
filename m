Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D958F63F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 23:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9746EA8B;
	Thu, 15 Aug 2019 21:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F726EA8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 21:06:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18156000-1500050 for multiple; Thu, 15 Aug 2019 22:06:36 +0100
MIME-Version: 1.0
To: Takashi Iwai <tiwai@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <s5hv9uy8bc9.wl-tiwai@suse.de>
References: <20190815181551.28571-1-chris@chris-wilson.co.uk>
 <s5hv9uy8bc9.wl-tiwai@suse.de>
Message-ID: <156590319423.11610.3451398995680528702@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 22:06:34 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "ALSA: hda - Drop unsol event
 handler for Intel HDMI codecs"
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

UXVvdGluZyBUYWthc2hpIEl3YWkgKDIwMTktMDgtMTUgMjA6NDI6MTQpCltzbmlwXQo+IAo+IEdh
aCwgdGhhdCdzIGEgYnJlYWthZ2UgYnkgdGhlIGNvbW1pdCBlZTVmODVkOTI5MGYgKCJBTFNBOiBo
ZGE6IEFkZAo+IGNvZGVjIG9uIGJ1cyBhZGRyZXNzIHRhYmxlIGxhdGVseSIpLiAgUGxlYXNlIHJl
dmVydCBpdCBpbiB5b3VyIHRyZWUsCj4gSSdsbCBkbyBpdCBzYW1lIG9uIHNvdW5kIGdpdCB0cmVl
IG5vdy4KClRoYW5rcyBmb3IgdGFraW5nIGNhcmUgb2YgaXQhCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
