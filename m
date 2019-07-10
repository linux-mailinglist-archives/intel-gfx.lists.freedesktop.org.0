Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC38A64EA8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 00:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B08B8981D;
	Wed, 10 Jul 2019 22:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BBD8981D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 22:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id EC0808EE24C;
 Wed, 10 Jul 2019 15:18:50 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id o6FAVD-9GHuB; Wed, 10 Jul 2019 15:18:50 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6835A8EE147;
 Wed, 10 Jul 2019 15:18:50 -0700 (PDT)
Message-ID: <1562797129.3213.111.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Paul Bolle <pebolle@tiscali.nl>, intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 15:18:49 -0700
In-Reply-To: <a23e93d918f8be5aea4af0b87efbf9c3d143d2fb.camel@tiscali.nl>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
 <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
 <1562776339.3213.50.camel@HansenPartnership.com>
 <5245d2b3d82f11d2f988a3154814eb42dcb835c5.camel@tiscali.nl>
 <1562780135.3213.58.camel@HansenPartnership.com>
 <a23e93d918f8be5aea4af0b87efbf9c3d143d2fb.camel@tiscali.nl>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562797130;
 bh=7ArvZgcTx/R/r9b1pLkOInASVYMrLtlPUzHDaDO1z30=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Y0u3FVWtv6UU0TpgTjKp5FnhPW/dfUEvAsn4hAVq0wtN+CwzzncN0Wkff3yEHCelA
 LWjI/nx6ncCA8tdv7Zx6fUNdGnBtEruHdAgDfzF82gKmKCzL0rmo46eiZeb2b1QsqW
 p2l5TXW7F7SbFxMwOt0CiYR0H5W9o8OKG6PtqqtU=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562797130;
 bh=7ArvZgcTx/R/r9b1pLkOInASVYMrLtlPUzHDaDO1z30=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Y0u3FVWtv6UU0TpgTjKp5FnhPW/dfUEvAsn4hAVq0wtN+CwzzncN0Wkff3yEHCelA
 LWjI/nx6ncCA8tdv7Zx6fUNdGnBtEruHdAgDfzF82gKmKCzL0rmo46eiZeb2b1QsqW
 p2l5TXW7F7SbFxMwOt0CiYR0H5W9o8OKG6PtqqtU=
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

T24gV2VkLCAyMDE5LTA3LTEwIGF0IDIzOjU5ICswMjAwLCBQYXVsIEJvbGxlIHdyb3RlOgo+IEph
bWVzIEJvdHRvbWxleSBzY2hyZWVmIG9wIHdvIDEwLTA3LTIwMTkgb20gMTA6MzUgWy0wNzAwXToK
PiA+IEkgY2FuIGdldCBiYWNrIHRvIGl0IHRoaXMgYWZ0ZXJub29uLCB3aGVuIEknbSBkb25lIHdp
dGggdGhlIG1lZXRpbmcKPiA+IHJlcXVpcmVtZW50cyBhbmQgZG9pbmcgb3RoZXIgZGV2IHN0dWZm
Lgo+IAo+IEkndmUgc3RhcnRlZCBiaXNlY3RpbmcgdXNpbmcgeW91ciBzdWdnZXN0aW9uIG9mIHRo
YXQgZHJtIG1lcmdlOgo+ICAgICAkIGdpdCBiaXNlY3QgbG9nCj4gICAgIGdpdCBiaXNlY3Qgc3Rh
cnQKPiAgICAgIyBnb29kOiBbODljM2IzN2FmODdlYzE4M2I2NjZkODM0MjhjYjI4Y2M0MjE2NzFh
Nl0gTWVyZ2UKPiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
ZGF2ZW0vaWRlCj4gICAgIGdpdCBiaXNlY3QgZ29vZCA4OWMzYjM3YWY4N2VjMTgzYjY2NmQ4MzQy
OGNiMjhjYzQyMTY3MWE2Cj4gICAgICMgYmFkOiBbYTJkNjM1ZGVjYmZhOWMxZTRhZTE1Y2IwNWI2
OGIyNTU5ZjdmODI3Y10gTWVyZ2UgdGFnICdkcm0tCj4gbmV4dC0yMDE5LTA1LTA5JyBvZiBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtCj4gICAgIGdpdCBiaXNlY3QgYmFkIGEy
ZDYzNWRlY2JmYTljMWU0YWUxNWNiMDViNjhiMjU1OWY3ZjgyN2MKPiAgICAgIyBiYWQ6IFthZDJj
NDY3YWE5MmUyODNlOWU4MDA5YmI5ZWIyOWE1YzZhMmQxMjE3XSBkcm0vaTkxNToKPiBVcGRhdGUg
RFJJVkVSX0RBVEUgdG8gMjAxOTA0MTcKPiAgICAgZ2l0IGJpc2VjdCBiYWQgYWQyYzQ2N2FhOTJl
MjgzZTllODAwOWJiOWViMjlhNWM2YTJkMTIxNwo+IAo+IEdpdCB0b2xkIG1lIEkgaGF2ZSBuaW5l
IHN0ZXBzIGFmdGVyIHRoaXMuIFNvIGF0IHR3byBob3VycyBwZXIgc3RlcCBJCj4gbWlnaHQKPiBw
aW5wb2ludCB0aGUgb2ZmZW5kaW5nIGNvbW1pdCBieSBGcmlkYXkgdGhlIDEydGguIElmIEknbSBs
dWNreS4KPiAoVGhlcmUgYXJlCj4gb3RoZXIgdGhpbmdzIHRvIGRvIHRoYW4gYmlzZWN0aW5nIHRo
aXMgaXNzdWUuKQo+IAo+IElmIHlvdSBmaW5kIHRoYXQgY29tbWl0IGJlZm9yZSBJIGRvLCBJJ2xs
IGJlIGFsbCBlYXJzLgoKU3VyZSAuLi4gSSdtIGRvaW5nIHRoZSBob2xpc3RpYyB0aGluZyBhbmQg
bG9va2luZyBhdCB0aGUgdHJlZSBpbiB0aGF0CmJyYW5jaC4gIEl0IHNlZW1zIHRvIGNvbnNpc3Qg
b2YgNyBpOTE1IHVwZGF0ZXMKCmMwOWQzOTE2NmQ4YTNmMzc4ODY4MGIzMmRiYjBhNDBhNzBkZTMy
ZTIgRFJJVkVSX0RBVEUgdG8gMjAxOTAyMDcKNDdlZDU1YTliYjllMjg0ZDQ2ZDZmMjQ4OWUzMmE1
M2I1OTE1MjgwOSBEUklWRVJfREFURSB0byAyMDE5MDIyMApmNGVjYjhhZTcwZGU4NjcxMGU4NTEz
OGNlNDlhZjVjNjg5OTUxOTUzIERSSVZFUl9EQVRFIHRvIDIwMTkwMzExCjEyODRlYzk4NTU3MjIz
MmFjZTQ4MTc0NzZiYWViMmQ4MmI2MGJlN2EgRFJJVkVSX0RBVEUgdG8gMjAxOTAzMjAKYTAxYjJj
NmY0N2Q4NmM3ZDFhOWZhODIyYjNiOTFlYzIzM2I2MTc4NCBEUklWRVJfREFURSB0byAyMDE5MDMy
OAoyOGQ2MThlOWFiODZmMjZhMzFhZjBiMjM1Y2VkNTViZWIzZTM0M2M4IERSSVZFUl9EQVRFIHRv
IDIwMTkwNDA0CmFkMmM0NjdhYTkyZTI4M2U5ZTgwMDliYjllYjI5YTVjNmEyZDEyMTcgRFJJVkVS
X0RBVEUgdG8gMjAxOTA0MTcKClNvIEkgZmlndXJlZCBJJ2Qgc2VlIGlmIEkgY2FuIGxvY2F0ZSB0
aGUgcHJvYmxlbSBieSBiaXNlY3Rpb24gb2YgdGhvc2UKcGx1cyBpbnNwZWN0aW9uLgoKSmFtZXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
