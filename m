Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAC41089DA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 09:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094ED89F85;
	Mon, 25 Nov 2019 08:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634CA89F85
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 08:16:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19325621-1500050 for multiple; Mon, 25 Nov 2019 08:16:15 +0000
MIME-Version: 1.0
To: Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
References: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
Message-ID: <157466977032.2314.3292181708267450194@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 25 Nov 2019 08:16:10 +0000
Subject: Re: [Intel-gfx] [PATCH v5 0/3] drm/i915: Context aware user
 agnostic EU/Slice/Sub-slice control within kernel
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
Cc: ankit.p.navik@intel.com, vipin.anand@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmtpdCBOYXZpayAoMjAxOS0xMS0yNSAwNjozOTowMikKPiBUaGlzIHBhdGNoIHNl
dHMgaW1wcm92ZXMgR1BVIHBvd2VyIGNvbnN1bXB0aW9uIG9uIExpbnV4IGtlcm5lbCBiYXNlZCBP
UyBzdWNoIGFzCj4gQ2hyb21pdW0gT1MsIFVidW50dSwgZXRjLiBGb2xsb3dpbmcgYXJlIHRoZSBw
b3dlciBzYXZpbmdzLgoKVGhlIGNvZGUgaXMgc3RpbGwgYXMgYnJva2VuIGFzIGl0IHdhcyB3aGVu
IGl0IHdhcyBsYXN0IHBvc3RlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
