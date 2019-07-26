Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D318E77407
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jul 2019 00:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702DF6EE6D;
	Fri, 26 Jul 2019 22:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 272BD6EE6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 22:27:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17641785-1500050 for multiple; Fri, 26 Jul 2019 23:27:04 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3A2150@fmsmsx120.amr.corp.intel.com>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC27@fmsmsx120.amr.corp.intel.com>
 <156409725005.30723.12612262044238740018@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC9A@fmsmsx120.amr.corp.intel.com>
 <156409873786.30723.15122214451413059669@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A0322@fmsmsx120.amr.corp.intel.com>
 <156417185244.21451.7761589449877959086@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A1F78@fmsmsx120.amr.corp.intel.com>
 <156417657960.21451.14402392043492527858@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A2150@fmsmsx120.amr.corp.intel.com>
Message-ID: <156418002274.21451.1623407086944063041@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 23:27:02 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace hangcheck by heartbeats
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDctMjYgMjM6MTk6MzgpCj4gSG1tbi4gV2Un
cmUgc3RpbGwgb24gb3J0aG9nb25hbCBwZXJzcGVjdGl2ZXMgYXMgZmFyIGFzIG91ciBwcmV2aW91
cyBhcmd1bWVudHMgc3RhbmQuIEJ1dCBpdCBkb2Vzbid0IG1hdHRlciBiZWNhdXNlIHdoaWxlIHRo
aW5raW5nIHRocm91Z2ggeW91ciByZXBsaWVzLCBJIHJlYWxpemVkIHRoZXJlIGlzIG9uZSBhcmd1
bWVudCBpbiBmYXZvdXIsIHdoaWNoIHRydW1wcyBhbGwgbXkgcHJldmlvdXMgYXJndW1lbnRzIGFn
YWluc3QgdGhpcyBwYXRjaCAtIGl0IG1ha2VzIHRoaW5ncyBkZXRlcm1pbmlzdGljLiBXaXRob3V0
IHRoaXMgcGF0Y2ggKG9yIGhhbmdjaGVjayksIHdoZXRoZXIgYSBjb250ZXh0IGdldHMgbnVrZWQg
ZGVwZW5kcyBvbiB3aGF0IGVsc2UgaXMgcnVubmluZy4gQW5kIHRoYXQncyBhIHJlY2lwZSBmb3Ig
Y29uZnVzZWQgc3VwcG9ydCBlbWFpbHMuCj4gCj4gU28gSSByZXRyYWN0IG15IG90aGVyIGFyZ3Vt
ZW50cywgdGhhbmtzIGZvciBzdGF5aW5nIHdpdGggbWUgOi0pCgpObyB3b3JyaWVzLCBpdCdzIGJl
ZW4gcmVhbGx5IHVzZWZ1bCwgZXNwZWNpYWxseSByZWFsaXNpbmcgYSBmZXcgbW9yZQphcmVhcyB3
ZSBjYW4gaW1wcm92ZSBvdXIgcmVzaWxpZW5jZS4gWW91IHdpbGwgZ2V0IHlvdXIgd2F5IGV2ZW50
dWFsbHkuCihCdXQgd2hhdCBkaWQgaXQgY29zdD8gRXZlcnl0aGluZy4pCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
