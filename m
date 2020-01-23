Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6202146B6C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCD46FD2A;
	Thu, 23 Jan 2020 14:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B80E6FD33
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:34:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19983624-1500050 for multiple; Thu, 23 Jan 2020 14:34:45 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200123141646.GU13686@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
 <20200123140004.14136-6-jani.nikula@intel.com>
 <20200123141646.GU13686@intel.com>
Message-ID: <157979008288.19995.17418209460090937508@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 14:34:42 +0000
Subject: Re: [Intel-gfx] [PATCH RESEND 6/6] drm/i915/pm: use intel de
 functions for forcewake register access
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDEtMjMgMTQ6MTY6NDYpCj4gT24gVGh1LCBK
YW4gMjMsIDIwMjAgYXQgMDQ6MDA6MDRQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBN
b3ZlIGF3YXkgZnJvbSBJOTE1X1JFQURfRlcoKSBhbmQgSTkxNV9XUklURV9GVygpIGluIGRpc3Bs
YXkgY29kZSwgYW5kCj4gPiBzd2l0Y2ggdG8gdXNpbmcgaW50ZWxfZGVfcmVhZF9mdygpIGFuZCBp
bnRlbF9kZV93cml0ZV9mdygpLAo+ID4gcmVzcGVjdGl2ZWx5Lgo+ID4gCj4gPiBObyBmdW5jdGlv
bmFsIGNoYW5nZXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gCj4gT25seSBhIGZldyBvZGRpdGllcyBzcG90dGVkLiBPdmVyYWxs
IHNlcmllcyBsZ3RtCgpDb25jdXJyZWQsIGNoZWNrcGF0Y2ggaXMgZ29pbmcgdG8gaGF2ZSBzb21l
IHZlcnkgc3Rlcm4gd29yZHMgcmVnYXJkaW5nCnNvbWUgb2YgdGhvc2UgbGluZXMhCgo+IEZvciBh
bGwKPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KCisxClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
