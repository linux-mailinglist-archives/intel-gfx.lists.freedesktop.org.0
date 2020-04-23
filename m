Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 923531B58C3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 12:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6160A6E4EA;
	Thu, 23 Apr 2020 10:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B186E4EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 10:05:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20993790-1500050 for multiple; Thu, 23 Apr 2020 11:04:38 +0100
MIME-Version: 1.0
In-Reply-To: <d54d58e3-87ca-eb6d-ccb4-ae7b0f80c8da@intel.com>
References: <d54d58e3-87ca-eb6d-ccb4-ae7b0f80c8da@intel.com>
To: Li Zhijian <zhijianx.li@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158763627652.9772.10017893547835720519@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 11:04:36 +0100
Subject: Re: [Intel-gfx] [i-g-t] dumb_buffer@clear_create triggers OOM since
 0b0eaa353
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
Cc: Philip Li <philip.li@intel.com>, Li Zhijian <zhijianx.li@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaSBaaGlqaWFuICgyMDIwLTA0LTIzIDEwOjM4OjM4KQo+IEhpIGd1eXMKPiAKPiAw
RGF5IG5vdGljZWQgdGhhdCBkdW1iX2J1ZmZlckBjbGVhcl9jcmVhdGUgdHJpZ2dlcnMgT09NwqAg
c2luY2UgY29tbWl0OiAKPiAwYjBlYWEzNTMgKCJ0ZXN0cy9kdW1iX2J1ZmZlcjogVHJ5IHRvIGNv
bXB1dGUgdGhlIGxhcmdlc3QgcG9zc2libGUgZHVtYiAKPiBidWZmZXIiKQoKU28gVk1fRkFVTFRf
T09NIC0+IHBhZ2VmYXVsdF9vdXRfb2ZfbWVtb3J5KCkKCkJ1dCBhIGZhaWxlZCBhbGxvY2F0aW9u
IGZvciAyRyBvdXQgb2YgNDhHLCB3aGljaCB6b25lIGRpZCB3ZSB0cnkgYW5kCmZhaWw/IFdoaWNo
IGRyaXZlciBzaG91bGQgdGVsbCB1cyB3aGljaCBhbGxvY2F0aW9uIHBhdGggZmFpbGVkLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
