Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFE664B83
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 19:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD88989317;
	Wed, 10 Jul 2019 17:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C121189317
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 17:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id CE1698EE24C;
 Wed, 10 Jul 2019 10:35:36 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id HoVGSRes2uiH; Wed, 10 Jul 2019 10:35:36 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 566D48EE147;
 Wed, 10 Jul 2019 10:35:36 -0700 (PDT)
Message-ID: <1562780135.3213.58.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Paul Bolle <pebolle@tiscali.nl>, intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 10:35:35 -0700
In-Reply-To: <5245d2b3d82f11d2f988a3154814eb42dcb835c5.camel@tiscali.nl>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
 <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
 <1562776339.3213.50.camel@HansenPartnership.com>
 <5245d2b3d82f11d2f988a3154814eb42dcb835c5.camel@tiscali.nl>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562780136;
 bh=B70gAXooxvZK/Lf3HwD7p1V8t+7FlnkHdVRJexmSkFw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=okWIQmP9GmOEZoBgruAKHEKyShJaVoqPbC0/vxxvqvwNL6cXmo1bjWaVEsOZc2GtZ
 dDnwoHAnt2DPX5g+Eoa/v9aScrOrFOppGatpMky2n2yplzfXszVU9wy9swQsUxGQe2
 yi5qacgvwVo31QseTxnEA5fsIinkjskyi8KvVqxM=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562780136;
 bh=B70gAXooxvZK/Lf3HwD7p1V8t+7FlnkHdVRJexmSkFw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=okWIQmP9GmOEZoBgruAKHEKyShJaVoqPbC0/vxxvqvwNL6cXmo1bjWaVEsOZc2GtZ
 dDnwoHAnt2DPX5g+Eoa/v9aScrOrFOppGatpMky2n2yplzfXszVU9wy9swQsUxGQe2
 yi5qacgvwVo31QseTxnEA5fsIinkjskyi8KvVqxM=
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

T24gV2VkLCAyMDE5LTA3LTEwIGF0IDE4OjQ1ICswMjAwLCBQYXVsIEJvbGxlIHdyb3RlOgo+IEph
bWVzIEJvdHRvbWxleSBzY2hyZWVmIG9wIHdvIDEwLTA3LTIwMTkgb20gMDk6MzIgWy0wNzAwXToK
PiA+IFlvdSBzZWVtIHRvIGJlIGdldHRpbmcgaXQgdG8gaGFwcGVuIG11Y2ggbW9yZSBvZnRlbiB0
aGFuIEkgY2FuLgo+ID4gTGFzdAo+ID4gbmlnaHQsIG9uIHRoZSBiZWxvdyBwdWxsIHJlcXVlc3Qg
aXQgdG9vayBtZSBhIGdvb2QgaG91ciB0byBzZWUgdGhlCj4gPiBmcmVlemUuCj4gCj4gWWVzLiBT
b21ldGltZXMgd2l0aGluIGEgbWludXRlIG9mIHJlc3VtaW5nLiBUeXBpbmcgc3R1ZmYgaW50bwo+
IGV2b2x1dGlvbiBzZWVtcyB0byBoZWxwIHdpdGggdHJpZ2dlcmluZyB0aGlzLiBJdCdzIGFsbCBh
IGJpdAo+IG15c3RlcmlvdXMsIGJ1dCB0aGlzIG1lc3NhZ2UgYWxvbmUgZnJvb3plIG15IGxhcHRv
cCBhIGZldyB0aW1lcy4KPiBTZXJpb3VzbHkhCj4gCj4gPiBTdXJlLCBteSBjdXJyZW50IHRlc3Rp
bmcgaW5kaWNhdGVzIGl0J3Mgc29tZXdoZXJlIGluc2lkZSB0aGlzIHB1bGwKPiA+IHJlcXVlc3Q6
Cj4gPiAKPiA+IE1lcmdlOiA4OWMzYjM3YWY4N2UgZWI4NWQwM2UwMWMzCj4gPiBBdXRob3I6IExp
bnVzIFRvcnZhbGRzIDx0b3J2YWxkc0BsaW51eC1mb3VuZGF0aW9uLm9yZz4KPiA+IERhdGU6ICAg
V2VkIE1heSA4IDIxOjM1OjE5IDIwMTkgLTA3MDAKPiA+IAo+ID4gICAgIE1lcmdlIHRhZyAnZHJt
LW5leHQtMjAxOS0wNS0wOScgb2YKPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9kcm0KPiA+ICAgICAKPiA+ICAgICBQdWxsIGRybSB1cGRhdGVzIGZyb20gRGF2ZSBBaXJsaWU6
Cj4gCj4gTGF6eSBxdWVzdGlvbjogaG93IGRvZXMgb25lIGRldGVybWluZSB0aGUgZmlyc3QgYW5k
IGxhc3QgY29tbWl0Cj4gaW5zaWRlIGEgbWVyZ2UgcmVxdWVzdD8gQ2FuIEkgc2ltcGx5IGRvCj4g
ICAgIGdvb2QgICBhMmQ2MzVkZWNiZmE5YzFlNGFlMTVjYjA1YjY4YjI1NTlmN2Y4MjdjXgo+ICAg
ICBiYWQgICAgYTJkNjM1ZGVjYmZhOWMxZTRhZTE1Y2IwNWI2OGIyNTU5ZjdmODI3Ywo+IAo+IGZv
ciBnaXQgYmlzZWN0PwoKSSB0aGluayBzby4gIEkgYWN0dWFsbHkgZGlkCgoJYmFkCWEyZDYzNWRl
Y2JmYTljMWU0YWUxNWNiMDViNjhiMjU1OWY3ZjgyN2MKCWdvb2QJODljM2IzN2FmODdlYzE4M2I2
NjZkODM0MjhjYjI4Y2M0MjE2NzFhNgoKQnV0IEkgdGhpbmsgXiBzdGVwcyBkb3duIGluIHRoZSBt
YWluIGJyYW5jaC4gIE5vdGUsIEkndmUgb25seSBkb25lIGEKY291cGxlIG9mIGhvdXJzIHJ1biBv
biB3aGF0IEkgdGhpbmsgaXMgdGhlIGdvb2QgY29tbWl0IC4uLiBhbmQgYWN0dWFsbHkKSSdkIGFs
cmVhZHkgbWFya2VkIGEyZDYzNWRlY2JmYTljMWU0YWUxNWNiMDViNjhiMjU1OWY3ZjgyN2MgYXMg
Z29vZAp1bnRpbCB0aGUgc2NyZWVuIGZyb3plIGp1c3QgYWZ0ZXIgSSdkIGJ1aWx0IHRoZSBuZXcg
YmlzZWN0IGtlcm5lbCwgc28KdGhlcmUncyBzdGlsbCBzb21lIGNoYW5jZSA4OWMzYjM3YWY4N2Vj
MTgzYjY2NmQ4MzQyOGNiMjhjYzQyMTY3MWE2IGlzCmJhZC4KCj4gPiBTbyBJIHdhcyBhYm91dCB0
byB0ZXN0IG91dCB0aGUgaTkxNSBjaGFuZ2VzIGluIHRoYXQgYnV0IHNpbmNlIG15Cj4gPiBsYXB0
b3AgaXMgd2hhdCBJIHVzZSBmb3IgZGFpbHkgd29yaywgaXQncyBhIGJpdCBoYXJkIChjYW4ndCBm
cmVlemUKPiA+IHVwIG9uIHZpZGVvIGNhbGxzIGZvciBpbnN0YW5jZSkuCj4gCj4gSSB1c3VhbGx5
IHVzZSBvbmUgb2YgdGhlIFRoaW5rUGFkcyBmcm9tIG15IGVtYmFycmFzc2luZyBwaWxlIG9mCj4g
b3V0ZGF0ZWQgaGFyZHdhcmUgdG8gZG8gbmFzdHkgYmlzZWN0cywgYnV0IEknbSBub3QgYWJvdXQg
dG8gbG9vc2UgYW55Cj4gaW5jb21lIGlmIG15IG11Y2ggYXBwcmVjaWF0ZWQgWFBTIDEzIGlzIG91
dCBvZiBvcmRlciBmb3IgYSB3aGlsZS4KCkkgY2FuIGdldCBiYWNrIHRvIGl0IHRoaXMgYWZ0ZXJu
b29uLCB3aGVuIEknbSBkb25lIHdpdGggdGhlIG1lZXRpbmcKcmVxdWlyZW1lbnRzIGFuZCBkb2lu
ZyBvdGhlciBkZXYgc3R1ZmYuCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
