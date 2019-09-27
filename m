Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46637C0240
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 11:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 287796EED5;
	Fri, 27 Sep 2019 09:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BCF6EED6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 09:26:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18636613-1500050 for multiple; Fri, 27 Sep 2019 10:26:21 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927091256.GA16255@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
 <20190926052135.29911-3-ramalingam.c@intel.com>
 <1d52529c-9ecf-6525-43f5-1d2bd5f506a2@linux.intel.com>
 <156948920849.4979.66777122380313478@skylake-alporthouse-com>
 <20190927091256.GA16255@intel.com>
Message-ID: <156957637765.32596.12482435949580328098@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 10:26:17 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: FB backing gem obj should
 reside in LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMDktMjcgMTA6MTI6NTcpCj4gT24gMjAxOS0wOS0y
NiBhdCAxMDoxMzoyOCArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gVGhpcyB3b3VsZCBi
ZSBhIHBhcnQgb2YgcGluX3RvX2Rpc3BsYXk/IFRoYXQncyB3aGVyZSB3ZSBkbyB0aGUgb3RoZXIK
PiA+IGNvbnZlcnNpb25zIHJlcXVpcmVkIGZvciBzY2Fub3V0IG9iamVjdHMuCj4gCj4gSSB3aWxs
IHJlbG9vayB0aHJvdWdoIGl0IGNocmlzLiBCdXQgSSBhbSBqdXN0IHdvbmRlcmluZyB3aGVuIHRo
ZSBGQiBpcwo+IGNyZWF0ZWQvZGVzdHJveWVkIGl0c2VsZiBjb3VsZCB3ZSBmaXgvcmVsZWFzZSB0
aGUgbWVtb3J5IHJlZ2lvbiByZXF1aXJlZD8KClRoYXQgd291bGQgYmUgYXR5cGljYWw7IHdlIGdl
bmVyYWxseSBvbmx5IHJlc3RyaWN0IHRoZSB1c2VyIG9wdGlvbnMgd2hpbGUKaXQgaXMgYXR0YWNo
ZWQgdG8gSFcsIGFuZCBlcnIgb24gdGhlIHNpZGUgb2YgbGF6aW5lc3MuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
