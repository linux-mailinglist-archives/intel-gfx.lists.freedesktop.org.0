Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40C3EA7EA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 00:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BF66EBB9;
	Wed, 30 Oct 2019 23:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB786EBB9
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 23:57:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 16:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="375052348"
Received: from mnedicx-wtg6.amr.corp.intel.com (HELO intel.intel)
 ([10.252.16.154])
 by orsmga005.jf.intel.com with ESMTP; 30 Oct 2019 16:57:24 -0700
Date: Thu, 31 Oct 2019 01:57:23 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191030235701.GA24682@intel.intel>
References: <20191030103827.2413-1-chris@chris-wilson.co.uk>
 <20191030103827.2413-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030103827.2413-5-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Defer rc6 shutdown to
 suspend_late
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

SGkgQ2hyaXMsCgpPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDozODoyN0FNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQ3VycmVudGx5IHdlIHNodXRkb3duIHJjNiBkdXJpbmcgaTkxNV9n
ZW1fcmVzdW1lKCkgYnV0IHRoaXMgaXMgY2FsbGVkCj4gZHVyaW5nIHRoZSBwcmVwYXJhdGlvbiBw
aGFzZSAoaTkxNV9kcm1fcHJlcGFyZSkgZm9yIGFsbCBzdXNwZW5kIHBhdGhzLAo+IGJ1dCB3ZSBv
bmx5IHdhbnQgdG8gc2h1dGRvd24gcmM2IGZvciBTMysuIE1vdmUgdGhlIGFjdHVhbCBzaHV0ZG93
biB0bwo+IGk5MTVfZ2VtX3N1c3BlbmRfbGF0ZSgpLgo+IAo+IFdlIHRoZW4gbmVlZCB0byBkaWZm
ZXJlbnRpYXRlIGJldHdlZW4gc3VzcGVuZCB0YXJnZXRzLCB0byBkaXN0aW5ndWlzaCBTMAo+IChz
MmlkbGUpIHdoZXJlIHRoZSBkZXZpY2UgaXMga2VwdCBhd2FrZSBidXQgbmVlZHMgdG8gYmUgaW4g
YSBsb3cgcG93ZXIKPiBtb2RlICh0aGUgc2FtZSBhcyBydW50aW1lIHN1c3BlbmQpIGZyb20gdGhl
IGRldmljZSBzdXNwZW5kIGxldmVscyB3aGVyZQo+IHdlIGxvc2UgY29udHJvbCBvZiBIVyBhbmQg
c28gbXVzdCBkaXNhYmxlIGFueSBIVyBhY2Nlc3MgdG8gZGFuZ2xpbmcKPiBtZW1vcnkuCj4gCj4g
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTkwOQo+IEZpeGVzOiBjMTEzMjM2NzE4ZTggKCJkcm0vaTkxNTogRXh0cmFjdCBHVCByZW5kZXIg
c2xlZXAgKHJjNikgbWFuYWdlbWVudCIpCj4gVGVzdGNhc2U6IGlndC9nZW1fZXhlY19zdXNwZW5k
L3Bvd2VyLVMwCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKTG9va3Mg
T0shIFRoYW5rcyEKCkFja2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
CkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
