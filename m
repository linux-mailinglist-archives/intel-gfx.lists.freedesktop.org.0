Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336C823E4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 19:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4CD8955D;
	Mon,  5 Aug 2019 17:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03EF78955D
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 17:20:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17895710-1500050 for multiple; Mon, 05 Aug 2019 18:20:21 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190804195052.31140-4-michal.wajdeczko@intel.com>
References: <20190804195052.31140-1-michal.wajdeczko@intel.com>
 <20190804195052.31140-4-michal.wajdeczko@intel.com>
Message-ID: <156502561938.28464.6544319006552784678@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 05 Aug 2019 18:20:19 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/uc: Remove redundant GuC
 support checks
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTA0IDIwOjUwOjUxKQo+IFNpbmNlIGNv
bW1pdCBkYjgxYmM2ZWI5YzAgKCJkcm0vaTkxNS91YzogQ29uc2lkZXIgZW5hYmxlX2d1Ywo+IG1v
ZHBhcmFtIGR1cmluZyBmdyBzZWxlY3Rpb24iKSB3ZSBoYXZlIHN0YXJ0ZWQgdXNpbmcgZmlybXdh
cmUKPiBzdGF0dXMgYXMgbWFpbiBpbmRpY2F0b3Igb2YgdGhlIEd1QyBzdXBwb3J0LiBObyBuZWVk
IHRvIHVzZQo+IHNhbWUgY2hlY2tzIHR3aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
