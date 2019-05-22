Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E546627096
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 22:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD5489B48;
	Wed, 22 May 2019 20:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A5D89B48
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 20:07:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646298-1500050 for multiple; Wed, 22 May 2019 21:06:55 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522193203.23932-9-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-9-michal.wajdeczko@intel.com>
Message-ID: <155855561367.28319.14191658465315815163@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 21:06:53 +0100
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/uc: Stop talking with GuC
 when resetting
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjMyOjAyKQo+IEtub3dpbmcg
dGhhdCBHdUMgd2lsbCBiZSByZXNldCBzb29uLCB3ZSBtYXkgc3RvcCBhbGwgY29tbXVuaWNhdGlv
bgo+IGltbWVkaWF0ZWx5IHdpdGhvdXQgZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBpdCBpcyBu
b3QgbmVlZGVkLgoKVGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBzdG9wIGFuZCBkaXNhYmxlIGlzIHRo
YXQgaXQgYXZvaWRzIHRoZQpzZXJpYWxpc2F0aW9uLCByaWdodD8gSXMgdGhpcyBwYXRjaCBzdGls
bCByZXF1aXJlZCAtLSBkbyB3ZSBzdGlsbApuZWVkIHRoZSBjb21wbGljYXRpb24gaW4gdHdvIHNp
bWlsYXIgYnV0IHN1YnRseSBkaWZmZXJlbnQgcGF0aHM/Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
