Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B3FF42D7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 10:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005A96F8BC;
	Fri,  8 Nov 2019 09:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871A46F8BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 09:05:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19124853-1500050 for multiple; Fri, 08 Nov 2019 09:05:22 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191108085626.32429-3-chris@chris-wilson.co.uk>
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
 <20191108085626.32429-3-chris@chris-wilson.co.uk>
Message-ID: <157320392150.9461.8998659996243196102@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 09:05:21 +0000
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/pmu: Cheat when reading the
 actual frequency to avoid fw
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDggMDg6NTY6MjQpCj4gV2Ugd2FudCB0byBh
dm9pZCB0YWtpbmcgZm9yY2V3YWtlIHdoZW4gcXVlcnlpbmcgdGhlIHBlcmZvcm1hbmNlIHN0YXRz
LAo+IGFzIHdlIHdpc2ggdG8gYXZvaWQgcGVydHVyYmluZyB0aGUgc3lzdGVtIHVuZGVyIG9ic2Vy
dmF0aW9uLiAoQW5kIHdpdGgKPiB0aGUgZm9yY2V3YWtlIGJlaW5nIGtlcHQgYWxpdmUgZm9yIDFt
cyBhZnRlciB1c2UsIHNhbXBsaW5nIHRoZSBmcmVxdWVuY3kKPiBmcm9tIGEgdGltZXIga2VlcHMg
Zm9yY2V3YWtlIDYwJSBhY3RpdmUuKQoKT29wcywgcmM2IHdhcyByZXBvcnRlZCBhcyA2MCUgYWN0
aXZlID0+IGZ3IDQwJSBhY3RpdmUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
