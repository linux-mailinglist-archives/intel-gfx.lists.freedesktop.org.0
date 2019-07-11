Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A116606E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4FC8981D;
	Thu, 11 Jul 2019 20:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FBC8981D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id F412F8EE2F6;
 Thu, 11 Jul 2019 13:11:26 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id E4R7mDdzXBLo; Thu, 11 Jul 2019 13:11:26 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 4140B8EE0C7;
 Thu, 11 Jul 2019 13:11:26 -0700 (PDT)
Message-ID: <1562875878.2840.0.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 13:11:18 -0700
In-Reply-To: <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562875887;
 bh=eJpN0hT0dPASpoxiTeZeS1Zqd+8dvu3pAn+RAEai40M=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Wab+479UlzvH9iwSvlN/IS2yjRiE7OP9+DO69A/Ac8uIy9bkzkCgfkuM7n4iV/j9c
 98lE5jCz4EnZje3RzMAge2jVt6vngXbQuAvKk13eSJFyb1YGp2VqU9wiBQLBCrmfAI
 t2BK+nIY/Q94Q4s12onIvMX7cIboHyeFkPVZPh9c=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562875886;
 bh=eJpN0hT0dPASpoxiTeZeS1Zqd+8dvu3pAn+RAEai40M=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=xctQD5llf5gK0Kt5CvU3qA2xkq/+WlSWMLSJ39J5pQ0RtP7Ow5sCXLIHSYb6meUxJ
 nyYX2lhHtH0Hg8KQyIPJVTuIldHUx99dhPLhGo5E+fyfmR2eLZAg3fCIYCoo5FxTCA
 Ma/ZxwsMepru1EEM5snfVgZy50R7ridZ66kQQ2/A=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA3LTExIGF0IDEwOjI5ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBKYW1lcyBCb3R0b21sZXkgKDIwMTktMDYtMjkgMTk6NTY6NTIpCj4gPiBUaGUgc3lt
cHRvbXMgYXJlIHJlYWxseSB3ZWlyZDogdGhlIHNjcmVlbiBpbWFnZSBpcyBsb2NrZWQgaW4KPiA+
IHBsYWNlLiAgVGhlIG1hY2hpbmUgaXMgc3RpbGwgZnVuY3Rpb25hbCBhbmQgaWYgSSBsb2cgaW4g
b3ZlciB0aGUKPiA+IG5ldHdvcmsgY2FuIGRvIGFueXRoaW5nIEkgbGlrZSwgaW5jbHVkaW5nIGtp
bGxpbmcgdGhlIFggc2VydmVyIGFuZAo+ID4gdGhlIGRpc3BsYXkgd2lsbCBuZXZlciBhbHRlci4g
IEl0IGFsc28gc2VlbXMgdGhhdCB0aGUgc3lzdGVtIGlzCj4gPiBhY2NlcHRpbmcga2V5Ym9hcmQg
aW5wdXQgYmVjYXVzZSB3aGVuIGl0IGZyZWV6ZXMgSSBjYW4gY2F0Cj4gPiBpbmZvcm1hdGlvbiB0
byBhIGZpbGUgKGlmIHRoZSBtb3VzZSB3YXMgb3ZlciBhbiB4dGVybSkgYW5kIHZlcmlmeQo+ID4g
b3ZlciB0aGUgbmV0d29yayB0aGUgZmlsZSBjb250ZW50cy4gTm90aGluZyB1bnVzdWFsIGFwcGVh
cnMgaW4KPiA+IGRtZXNnIHdoZW4gdGhlIGxvY2t1cCBoYXBwZW5zLgo+ID4gCj4gPiBUaGUgbGFz
dCBrZXJuZWwgSSBib290ZWQgc3VjY2Vzc2Z1bGx5IG9uIHRoZSBzeXN0ZW0gd2FzIDUuMCwgc28K
PiA+IEknbGwgdHJ5IGNvbXBpbGluZyA1LjEgdG8gbmFycm93IGRvd24gdGhlIGNoYW5nZXMuCj4g
Cj4gSXQncyBsaWtlbHkgdGhpcyBpcyBwYW5lbCBzZWxmLXJlZnJlc2ggZ29pbmcgaGF5d2lyZS4K
PiAKPiBjb21taXQgOGY2ZTg3ZDZkNTYxZjEwY2ZhNDhhNjg3MzQ1NTEyNDE5ODM5YjZkOAo+IEF1
dGhvcjogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gRGF0
ZTogICBUaHUgTWFyIDcgMTY6MDA6NTAgMjAxOSAtMDgwMAo+IAo+ICAgICBkcm0vaTkxNTogRW5h
YmxlIFBTUjIgYnkgZGVmYXVsdAo+IAo+ICAgICBUaGUgc3VwcG9ydCBmb3IgUFNSMiB3YXMgcG9s
aXNoZWQsIElHVCB0ZXN0cyBmb3IgUFNSMiB3YXMgYWRkZWQKPiBhbmQKPiAgICAgaXQgd2FzIHRl
c3RlZCBwZXJmb3JtaW5nIHJlZ3VsYXIgdXNlciB3b3JrbG9hZHMgbGlrZSBicm93c2luZywKPiAg
ICAgZWRpdGluZyBkb2N1bWVudHMgYW5kIGNvbXBpbGluZyBMaW51eCwgc28gaXQgaXMgdGltZSB0
byBlbmFibGUgaXQKPiBieQo+ICAgICBkZWZhdWx0IGFuZCBlbmpveSBldmVuIG1vcmUgcG93ZXIt
c2F2aW5ncy4KPiAKPiBUZW1wb3Jhcnkgd29ya2Fyb3VuZCB3b3VsZCBiZSB0byBzZXQgaTkxNS5l
bmFibGVfcHNyPTAKCkl0IGxvb2tzIHBsYXVzaWJsZS4gIEkgaGF2ZSB0byBzYXkgSSB3YXMganVz
dCBhYm91dCB0byBtYXJrIGEgYmlzZWN0CmNvbnRhaW5pbmcgdGhpcyBhcyBnb29kLCBidXQgdGhh
dCBwcm9iYWJseSByZWZsZWN0cyBteSBkaWZmaWN1bHR5CnJlcHJvZHVjaW5nIHRoZSBpc3N1ZS4K
CkphbWVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
