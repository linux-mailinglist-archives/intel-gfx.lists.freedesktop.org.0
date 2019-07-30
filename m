Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE5F7B475
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 22:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029186E610;
	Tue, 30 Jul 2019 20:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5467E6E60D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 20:42:58 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id k18so63357432ljc.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lv9xmyxG6IGQjvUZ86rphL4nIe1jnAFhb/zH3aGbb60=;
 b=qzTIYZHHodZSxKnf8uj27ukIZRSiJD2Eqpdtqc/FwoiXNvw4IUJ8jQpBIIRYyTTXg1
 tjKVwusJlIg522s0BvFiqw7W+peLgeWCkFCEswkob/esPuN015w6l418XmxgaLrqLJY1
 uI+SaB+EK+0lUxD/GykEorwXjOWr6FYR4YWVUKHItaY5aXyS+3GqnCySz4lzbN8v+CW+
 HA4ueXbsWpsTYD+hYUavV2VMsTsEZLhJM0335sx81SqJUv16UuP0oO63Y3aS6A7C+JPm
 aTCKvBv07h2zSyU6lpMFOEca4h1prUmgFPzEMkrVMD988S57skTXAGkyT+jtAyEs74UA
 niaA==
X-Gm-Message-State: APjAAAVDuHV16d9DlwJx7eTapexd2FISBIlbU2sks+fbl89RBbEU22Ap
 VDKDRaMiIaeL8fl9+4+3BkP/fytnZ6CaiipttGk=
X-Google-Smtp-Source: APXvYqypNwP6Gp5aYCmc2W/UgTB6fmRlqYFduRHmjhP6g3OHwPmnwzUDPtAMVuRNgoD2hDjI9fPcI/KvUHHZPuZQi9M=
X-Received: by 2002:a2e:87d0:: with SMTP id v16mr3521523ljj.24.1564519376593; 
 Tue, 30 Jul 2019 13:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
 <20190719004526.B0CC521850@mail.kernel.org>
In-Reply-To: <20190719004526.B0CC521850@mail.kernel.org>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Tue, 30 Jul 2019 13:42:45 -0700
Message-ID: <CABVU7+sbS8mw+4O1Ct8EY_5cj+fnmNFzyd6_=v2_RmCgBRA13g@mail.gmail.com>
To: Sasha Levin <sashal@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=lv9xmyxG6IGQjvUZ86rphL4nIe1jnAFhb/zH3aGbb60=;
 b=XqytTsE8uyrmeLssSTef+p0jCEwc53nd2nhSJTqkB9hNAVar3QvDbiEsGd7lo1w2Vd
 +28uE5nAIbIiP9QJ8f2a66B9NCZBQh3Vp+FoohG2CFuIKycie4266tT7mqpUSqzF/ZS2
 GW/6C0dS9rlnTb0s5o4dXZ9YS7tjds0M2BRB3KWJRAxmBbl2RRu96xETQNomt42IYXJy
 KLqBoJm7drhwnvtHMwXFZ3SKompaDRhGyvI9KnUpI8oBXiWyi0Fgo+jO83g0C2xWa1PC
 oSNwitZ0h4Ps3AFw6onhr4KvNjMSdX9nfdmO311dBkGFNMN3UoatGYiZlUiOxb/Frb3T
 b+MA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU2FzaGEsCgpPbiBUaHUsIEp1bCAxOCwgMjAxOSBhdCA1OjQ1IFBNIFNhc2hhIExldmluIDxz
YXNoYWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSwKPgo+IFtUaGlzIGlzIGFuIGF1dG9tYXRl
ZCBlbWFpbF0KCldoZXJlIGRpZCB5b3UgZ2V0IHRoaXMgcGF0Y2ggZnJvbT8gU2luY2Ugc3RhYmxl
IG5lZWRzIHBhdGNoZXMgbWVyZ2VkCm9uIExpbnVzIHRyZWUsCnNob3VsZG4ndCB5b3VyIHNjcmlw
dHMgcnVuIHRvIHRyeSBiYWNrcG9ydGluZyBvbmx5IHBhdGNoZXMgZnJvbSB0aGVyZT8KClRoYW5r
cywKUm9kcmlnby4KCj4KPiBUaGlzIGNvbW1pdCBoYXMgYmVlbiBwcm9jZXNzZWQgYmVjYXVzZSBp
dCBjb250YWlucyBhICJGaXhlczoiIHRhZywKPiBmaXhpbmcgY29tbWl0OiA4OGEwZDk2MDZhZmYg
ZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8z
IHdha2V1cCB0aW1lLgo+Cj4gVGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6
IHY1LjIuMS4KPiB2NS4yLjE6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVz
Ogo+ICAgICAyMzFkY2ZmYzIzNGYgKCJkcm0vaTkxNS9iaW9zOiBhZGQgQkRCIGJsb2NrIGNvbW1l
bnRzIGJlZm9yZSBkZWZpbml0aW9ucyIpCj4gICAgIDg0MzQ0NGVkMTMwMSAoImRybS9pOTE1L2Jp
b3M6IHNvcnQgQkRCIGJsb2NrIGRlZmluaXRpb25zIHVzaW5nIGJsb2NrIElEIikKPiAgICAgZjg3
ZjY1OTljODQzICgiZHJtL2k5MTUvYmlvczogcmVzZXJ2ZSBzdHJ1Y3QgYmRiXyBwcmVmaXggZm9y
IEJEQiBibG9ja3MiKQo+Cj4KPiBOT1RFOiBUaGUgcGF0Y2ggd2lsbCBub3QgYmUgcXVldWVkIHRv
IHN0YWJsZSB0cmVlcyB1bnRpbCBpdCBpcyB1cHN0cmVhbS4KPgo+IEhvdyBzaG91bGQgd2UgcHJv
Y2VlZCB3aXRoIHRoaXMgcGF0Y2g/Cj4KPiAtLQo+IFRoYW5rcywKPiBTYXNoYQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCgotLSAKUm9kcmln
byBWaXZpCkJsb2c6IGh0dHA6Ly9ibG9nLnZpdmkuZW5nLmJyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
