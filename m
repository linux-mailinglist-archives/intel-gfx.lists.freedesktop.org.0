Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A33AD6E3D0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 12:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642D76E7F1;
	Fri, 19 Jul 2019 10:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCD76E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 10:02:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 03:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; d="scan'208";a="191885214"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.3.98])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2019 03:01:59 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190718145407.21352-3-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk>
Message-ID: <156353051888.486.10337276034821661971@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 19 Jul 2019 13:01:59 +0300
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior
 to first use
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTggMTc6NTQ6MDYpCj4gU2luY2UgdXNlcnNw
YWNlIGhhcyB0aGUgYWJpbGl0eSB0byBieXBhc3MgdGhlIENQVSBjYWNoZSBmcm9tIHdpdGhpbiBp
dHMKPiB1bnByaXZpbGVnZWQgY29tbWFuZCBzdHJlYW0sIHdlIGhhdmUgdG8gZmx1c2ggdGhlIENQ
VSBjYWNoZSB0byBtZW1vcnkKPiBpbiBvcmRlciB0byBvdmVyd3JpdGUgdGhlIHByZXZpb3VzIGNv
bnRlbnRzIG9uIGNyZWF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZXZnZXIua2VybmVsLm9yZwoKTWFrZXMg
c2Vuc2UuIElmIHRoZXJlIGlzIHNvbWUgcGxhdGZvcm0gd2hlcmUgdGhpcyBhYnNvbHV0ZWx5IGNh
bid0CmhhcHBlbiBhbmQgdGhleSBuZWVkIG9wdGltaXphdGlvbiwgd2UgY2FuIHNwZWNpYWwgY2Fz
ZSBsYXRlci4KClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
