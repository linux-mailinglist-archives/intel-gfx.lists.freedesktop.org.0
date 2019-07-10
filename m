Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D2264AC3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396746E0FC;
	Wed, 10 Jul 2019 16:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3491F6E0FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 17B8A8EE24C;
 Wed, 10 Jul 2019 09:32:21 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id xlKxOxUkpX0N; Wed, 10 Jul 2019 09:32:20 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 84AF38EE147;
 Wed, 10 Jul 2019 09:32:20 -0700 (PDT)
Message-ID: <1562776339.3213.50.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Paul Bolle <pebolle@tiscali.nl>, intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 09:32:19 -0700
In-Reply-To: <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
 <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562776341;
 bh=AsLsb/ooY0lodDgUzHqyget5Lisb7UzWPjict/3/jQA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=BMhYT0+3IHb/iITVaNiu4JvvXaO01SJwAb1HVCFbXx0jsbk63nMbOSGGdPwLBh6p2
 zAdLzXyCXC2S3w6F9R63ACiec8IfXue820XLOvbKSbWVkpz0HUnp5H/YaOM1lLAMr0
 abP69dHVdaLJpzeO/Chv1tfxy8qR0QaH71/W6rOE=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562776340;
 bh=AsLsb/ooY0lodDgUzHqyget5Lisb7UzWPjict/3/jQA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=OevQzLcO5Fez4jn2lpVqMN71Ys5QjyEdYMweuU9FUcw0ULkoWnEi122Ez52w2+dTU
 uABVyg0VNmIikwjOJb/vayL1ejoz5wFfTQVq7udoDA0byZX/xWCu05QkCKxT71hWP2
 8MeSleAIYpvO2UNIZTtGkne0CHCl0vmJgl35LNHI=
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

T24gV2VkLCAyMDE5LTA3LTEwIGF0IDE4OjE2ICswMjAwLCBQYXVsIEJvbGxlIHdyb3RlOgo+IEhp
IEphbWVzLAo+IAo+IEphbWVzIEJvdHRvbWxleSBzY2hyZWVmIG9wIHdvIDEwLTA3LTIwMTkgb20g
MDg6MDEgWy0wNzAwXToKPiA+IEkndmUgY29uZmlybWVkIHRoYXQgNS4xIGRvZXNuJ3QgaGF2ZSB0
aGUgcmVncmVzc2lvbiBhbmQgSSdtIG5vdwo+ID4gdHJ5aW5nIHRvIGJpc2VjdCB0aGUgNS4yIG1l
cmdlIHdpbmRvdywgYnV0IHNpbmNlIHRoZSBwcm9ibGVtIHRha2VzCj4gPiBxdWl0ZSBhIHdoaWxl
IHRvIG1hbmlmZXN0IHRoaXMgd2lsbCB0YWtlIHNvbWUgdGltZS4gIEFueSBoaW50cwo+ID4gYWJv
dXQgc3BlY2lmaWMgcGF0Y2hlcyB0aGF0IG1pZ2h0IGJlIHRoZSBwcm9ibGVtIHdvdWxkIGJlIHdl
bGNvbWUuCj4gCj4gKFBlcmhhcHMgbXkgbWVzc2FnZSBvZiB5ZXN0ZXJkYXkgbmV2ZXIgcmVhY2hl
ZCB5b3UuKQoKTm8sIHNvcnJ5LCBpZiB0aGUgbGlzdCBpcyBmb2xsb3d1cCB0byBsaXN0LCBJJ20g
bm90IHN1YnNjcmliZWQuICBJIHNlZQppdCBub3cgSSBsb29rIGluIHRoZSBhcmNoaXZlcywgdGhv
dWdoLgoKLS0tCj4gVXBncmFkaW5nIHRvIDUuMiAoZnJvbSA1LjEueSkgb24gYSAiRGVsbCBYUFMg
MTMgOTM1MCIgKGlzIHRoYXQgYQo+IHNreWxha2UgdG9vPykKCkkgYmVsaWV2ZSBzby4gIE15IGxh
cHRvcCBpcyBhIDkzNTAuICBJIGJlbGlldmUgdGhleSdyZSB0aGUgZWFybGllc3QKc2t5bGFrZSBw
cm9kdWNlZC4gCgo+ICBzaG93ZWQgc2ltaWxhciBzeW1wdG9tcy4gVGhlcmUncyBubyBwYXR0ZXJu
IHRvIHRoZSBmcmVlemVzIHRoYXQgSQo+IGNhbiBzZWUuIFRoZXkncmUgcmF0aGVyIGZyZXF1ZW50
IHRvbyAodGhpbmsgZXZlcnkgZmV3IG1pbnV0ZXMpLiBFZywKPiB0d28gZnJlZXplcyB3aGlsZSBj
b21wb3NpbmcgdGhpcyBtZXNzYWdlIQoKWW91IHNlZW0gdG8gYmUgZ2V0dGluZyBpdCB0byBoYXBw
ZW4gbXVjaCBtb3JlIG9mdGVuIHRoYW4gSSBjYW4uIExhc3QKbmlnaHQsIG9uIHRoZSBiZWxvdyBw
dWxsIHJlcXVlc3QgaXQgdG9vayBtZSBhIGdvb2QgaG91ciB0byBzZWUgdGhlCmZyZWV6ZS4KCi0t
LQo+IEl0IHNlZW1zIEkgaGl0IHRoaXMgcHJvYmxlbSBxdWl0ZSBlYXNpbHkuIEJpc2VjdGluZyB2
NS4xLi52NS4yIGNvdWxkCj4gYmUgYSByZWFsIGNob3JlLCBzbyBwZXJoYXBzIHdlIGNvdWxkIGNv
b3JkaW5hdGUgZWZmb3J0cyAob2ZmLWxpc3QpPwoKU3VyZSwgbXkgY3VycmVudCB0ZXN0aW5nIGlu
ZGljYXRlcyBpdCdzIHNvbWV3aGVyZSBpbnNpZGUgdGhpcyBwdWxsCnJlcXVlc3Q6CgpNZXJnZTog
ODljM2IzN2FmODdlIGViODVkMDNlMDFjMwpBdXRob3I6IExpbnVzIFRvcnZhbGRzIDx0b3J2YWxk
c0BsaW51eC1mb3VuZGF0aW9uLm9yZz4KRGF0ZTogICBXZWQgTWF5IDggMjE6MzU6MTkgMjAxOSAt
MDcwMAoKICAgIE1lcmdlIHRhZyAnZHJtLW5leHQtMjAxOS0wNS0wOScgb2YgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybQogICAgCiAgICBQdWxsIGRybSB1cGRhdGVzIGZyb20g
RGF2ZSBBaXJsaWU6CgpTbyBJIHdhcyBhYm91dCB0byB0ZXN0IG91dCB0aGUgaTkxNSBjaGFuZ2Vz
IGluIHRoYXQgYnV0IHNpbmNlIG15IGxhcHRvcAppcyB3aGF0IEkgdXNlIGZvciBkYWlseSB3b3Jr
LCBpdCdzIGEgYml0IGhhcmQgKGNhbid0IGZyZWV6ZSB1cCBvbiB2aWRlbwpjYWxscyBmb3IgaW5z
dGFuY2UpLgoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
