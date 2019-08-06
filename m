Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E50F83152
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 14:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14EA6E366;
	Tue,  6 Aug 2019 12:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCB76E366
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 12:29:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17904996-1500050 for multiple; Tue, 06 Aug 2019 13:28:43 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190806122458.15237-3-janusz.krzysztofik@linux.intel.com>
References: <20190806122458.15237-1-janusz.krzysztofik@linux.intel.com>
 <20190806122458.15237-3-janusz.krzysztofik@linux.intel.com>
Message-ID: <156509452194.2892.9082220646495153646@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 13:28:41 +0100
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Fix panic if nothing to
 promote after preempt on reset
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDgtMDYgMTM6MjQ6NTgpCj4gRXhlY2xp
c3RzIHN0YXRlIG1hY2hpbmUgYWx3YXlzIGZhbGxzIHRocm91Z2ggZnJvbSBQUkVFTVBUIHRvIFBS
T01PVEUsCj4gZXhwZWN0aW5nIHBlbmRpbmcgdG8gYmUgdmFsaWQuICBBcHBhcmVudGx5IGl0IG5v
dCBhbHdheXMgaGFwcGVucyB0byBiZQo+IHRoZSBjYXNlLCBhdCBsZWFzdCBkdXJpbmcgcmVzZXQu
ICBBc3N1bWluZyB0aGlzIHVuZXhwZWN0ZWQgYmVoYXZpb3IKPiBkZXBlbmRzIG9uIGhhcmR3YXJl
LCBmaXggdGhlIGlzc3VlIGJ5IGludHJvZHVjaW5nIGEgY29uZGl0aW9uYWwgYnJlYWsuCgpOYWsu
IEZpbmQgdGhlIHJlYXNvbiB3aHkgdGhlIEhXIGlzIG5vdCBiZWhhdmluZyBhcyBpcyBzcGVjaWZp
ZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
