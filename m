Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 797391AB1E0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 21:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B2E6E27C;
	Wed, 15 Apr 2020 19:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486A56EA8A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 19:37:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20910272-1500050 for multiple; Wed, 15 Apr 2020 20:36:55 +0100
MIME-Version: 1.0
In-Reply-To: <20200415191408.82574-1-jose.souza@intel.com>
References: <20200415191408.82574-1-jose.souza@intel.com>
To: José Roberto de Souza <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158697941400.24667.4512728438444809786@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 15 Apr 2020 20:36:54 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing deinitialization
 cases of load failure
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDIwLTA0LTE1IDIwOjE0OjA4KQo+ICsg
ICAgICAgaTkxNV9yZXNldF9lcnJvcl9zdGF0ZShpOTE1KTsKCklmIHlvdSBhcmUgYm9yZWQsIHdl
IHNob3VsZCBtb3ZlIHRoaXMgdG8gdW5yZWdpc3RlciBhcyB0aGF0IGlzIHRoZSBsYXN0CnBvaW50
IGF0IHdoaWNoIGl0IGNhbiBiZSBhY2Nlc3NlZCBmcm9tIHVzZXJzcGFjZS4gSG9wZWZ1bGx5IEkg
cmVtZW1iZXIKbmV4dCB0aW1lIHdlIGFyZSByZWFycmFuZ2luZyB0aGlzIHNlcXVlbmNlLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
