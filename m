Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35CD8B22F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 10:20:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D1C6E090;
	Tue, 13 Aug 2019 08:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4113B6E08C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 08:20:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17979258-1500050 for multiple; Tue, 13 Aug 2019 09:19:58 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190813081559.23936-1-michal.wajdeczko@intel.com>
References: <20190813081559.23936-1-michal.wajdeczko@intel.com>
Message-ID: <156568439578.2301.10701628400456861984@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 13 Aug 2019 09:19:55 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/uc: Log fw status changes only
 under debug config
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTEzIDA5OjE1OjU5KQo+IFdlIGRvbid0
IGNhcmUgYWJvdXQgaW50ZXJuYWwgZmlybXdhcmUgc3RhdHVzIGNoYW5nZXMgdW5sZXNzCj4gd2Ug
YXJlIGRvaW5nIHNvbWUgcmVhbCBkZWJ1Z2dpbmcuIE5vdGUgdGhhdCBvdXIgQ0kgaXMgbm90Cj4g
dXNpbmcgRFJNX0k5MTVfREVCVUdfR1VDIGNvbmZpZyBieSBkZWZhdWx0IHNvIHVzZSBpdC4KPiAK
PiB2MjogcHJvdGVjdCBhZ2FpbnN0IGFjY2lkZW50YWwgb3ZlcndyaXRlcyAoQ2hyaXMpCj4gCj4g
U2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
