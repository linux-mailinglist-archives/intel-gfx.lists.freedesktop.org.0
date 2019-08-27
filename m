Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 567EB9EB1C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 16:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C16892CC;
	Tue, 27 Aug 2019 14:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E620892CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 14:35:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18279123-1500050 for multiple; Tue, 27 Aug 2019 15:35:16 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190827141751.GE28351@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
 <156681107573.2672.9638164714564673895@skylake-alporthouse-com>
 <20190827141751.GE28351@intel.com>
Message-ID: <156691651482.15406.9011761933083101122@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 27 Aug 2019 15:35:14 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMDgtMjcgMTU6MTc6NTEpCj4gV2Ug
d2FudCB0byBzdXBwb3J0IHRoaXMgb24gR2VuMTEgYXMgd2VsbCwgd2hlcmUgdGhlc2UgcmVnaXN0
ZXJzCj4gYXJlIGNvbnRleHQgc2F2ZWQgYW5kIHJlc3RvcmVkIGFuZCB3ZSBwcmltZSB0aGUgcmVn
aXN0ZXIgdmFsdWVzIG9mIG5ldyBjb250ZXh0cwo+IGZyb20gcmVjb3JkZWQgZGVmYXVsdHMuIFdo
YXQgY291bGQgYmUgdGhlIGNvcnJlY3Qgd2F5IHRvIGhhbmRsZSB0aGlzLCB3cml0ZSB0byB0aGUK
PiBkZWZhdWx0IG9iamVjdCBvciBzaG91bGQgYXNrIEdQVSB0byByZS1yZWNvcmQgYWZ0ZXIgbW9k
aWZ5aW5nIHRoZQo+IHJlZ2lzdGVycy4KClRoYXQgZGVwZW5kcyBvbiB3aGV0aGVyIHlvdSB3YW50
IHRvIGFwcGx5IHRvIGV4aXN0aW5nIG9yIG9ubHkgdG8gbmV3LgpGb3IgT0EgLyBzc2V1LCB3ZSBt
b2RpZnkgdGhlIGNvbnRleHQgaW1hZ2VzIHNvIHRoYXQgZXhpc3RpbmcgY29udGV4dHMKYXJlIHVw
ZGF0ZWQgdG8gcmVmbGVjdCB0aGUgbmV3IGRlZmF1bHRzLCBhbmQgd2UgdXBkYXRlIHRoZSBkZWZh
dWx0cy4KRS5nLiBnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoKQotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
