Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC7F8FAE0
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 08:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1476EADB;
	Fri, 16 Aug 2019 06:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F246EAD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 06:24:06 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id g17so7879641otl.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 23:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UbemS0Z3+J8HDXKXNZjWi7HzzaHw4A8dNiqBV6V1Rck=;
 b=e6Zp6BFZRw7tOTwqZ9xOLfJt/lVAVERY5EcBTcHyDcDpHexusX5+XL/hxhw8UrBdGp
 WqCD0XjvxIHk1KodSALyXwZZjCm4J1o/Ow4PCzbr5AaimoN7Znclfss35siGyk0j46Zo
 2ZYiwzNr/W3TKB+n11za+8SvXVc2ga0JFILPfw+F+W5yUfpk7AeNuZ6u+vnEa0QGhe5c
 6Arcn6h44Oh0mb8xXhqtT7N/OQhefrQztzBK1wB/3UbOk7zIiZoRqfu4D0gXxU041gfg
 M0YS/W1SUshEMw4JRUvxn1tVa3NRIu2RJsVDzWrdpllUHeHJsRHDtfOX6mQ8mFfolifY
 IVWA==
X-Gm-Message-State: APjAAAUax0fJHsZwbasDVBgnp7GiSFkOBCRd16WXWqZrdDT1CL2wCgRr
 QybUReoB9446KTPDn5qkpwI7Y85AS+0YEg3F6QJzcg==
X-Google-Smtp-Source: APXvYqym4oO06UAaqAKOdwMX9+ZXUpuUmFqkjQr53j2qEVTw6wqvTfv6JC/8+4MTWKM7ZLy4wXnYnyZPWJJHKs0fIjE=
X-Received: by 2002:a9d:590d:: with SMTP id t13mr6769456oth.281.1565936646046; 
 Thu, 15 Aug 2019 23:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190816133132.6b37d7fa@canb.auug.org.au>
 <20190816044846.GA27781@ravnborg.org>
In-Reply-To: <20190816044846.GA27781@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 16 Aug 2019 08:23:54 +0200
Message-ID: <CAKMK7uFy2vtOpSNrJyPDp0mvPTEvTD3zw7_gTuWe6gRqj18FFg@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=UbemS0Z3+J8HDXKXNZjWi7HzzaHw4A8dNiqBV6V1Rck=;
 b=aP6TnlrWiVWmS2YmWqIbc6ujqbBXxF1RRQmqDdEDynDuT8y8e2+stArtXrzJF+NFCx
 ZpokzqOSnc2/SQ6T8ZJAvrwtp6xgbO/JPQQzVva9vWLalVQ2fjTke74PJiLH4nLAqGj9
 W+pc8NTOqySX8gyUKXzeeb3sQsIRngfvJIhzo=
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgNjo0OCBBTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgU3RlcGhlbi4KPgo+IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0
IDAxOjMxOjMyUE0gKzEwMDAsIFN0ZXBoZW4gUm90aHdlbGwgd3JvdGU6Cj4gPiBIaSBhbGwsCj4g
Pgo+ID4gQWZ0ZXIgbWVyZ2luZyB0aGUgZHJtLW1pc2MgdHJlZSwgdG9kYXkncyBsaW51eC1uZXh0
IGJ1aWxkICh4ODZfNjQKPiA+IGFsbG1vZGNvbmZpZykgcHJvZHVjZWQgdGhpcyB3YXJuaW5nOgo+
ID4KPiA+IHdhcm5pbmc6IHNhbWUgbW9kdWxlIG5hbWVzIGZvdW5kOgo+ID4gICBkcml2ZXJzL3Zp
ZGVvL2ZiZGV2L29tYXAyL29tYXBmYi9kaXNwbGF5cy9wYW5lbC1uZWMtbmw4MDQ4aGwxMS5rbwo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtbmVjLW5sODA0OGhsMTEua28KPiA+IHdh
cm5pbmc6IHNhbWUgbW9kdWxlIG5hbWVzIGZvdW5kOgo+ID4gICBkcml2ZXJzL3ZpZGVvL2ZiZGV2
L29tYXAyL29tYXBmYi9kaXNwbGF5cy9wYW5lbC1zaGFycC1sczAzN3Y3ZHcwMS5rbwo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtc2hhcnAtbHMwMzd2N2R3MDEua28KPiA+IHdhcm5p
bmc6IHNhbWUgbW9kdWxlIG5hbWVzIGZvdW5kOgo+ID4gICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L29t
YXAyL29tYXBmYi9kaXNwbGF5cy9wYW5lbC1zb255LWFjeDU2NWFrbS5rbwo+ID4gICBkcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtc29ueS1hY3g1NjVha20ua28KPiA+IHdhcm5pbmc6IHNhbWUg
bW9kdWxlIG5hbWVzIGZvdW5kOgo+ID4gICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L29tYXAyL29tYXBm
Yi9kaXNwbGF5cy9wYW5lbC10cG8tdGQwMjh0dGVjMS5rbwo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
cGFuZWwvcGFuZWwtdHBvLXRkMDI4dHRlYzEua28KPiA+IHdhcm5pbmc6IHNhbWUgbW9kdWxlIG5h
bWVzIGZvdW5kOgo+ID4gICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L29tYXAyL29tYXBmYi9kaXNwbGF5
cy9wYW5lbC10cG8tdGQwNDNtdGVhMS5rbwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFu
ZWwtdHBvLXRkMDQzbXRlYTEua28KPiA+Cj4gPiBJbnRyb2R1Y2VkIGJ5IGNvbW1pdHMKPiA+Cj4g
PiAgIGRmNDM5YWJlNjUwMSAoImRybS9wYW5lbDogQWRkIGRyaXZlciBmb3IgdGhlIE5FQyBOTDgw
NDhITDExIHBhbmVsIikKPiA+ICAgYzljZjRjMmEzYmQzICgiZHJtL3BhbmVsOiBBZGQgZHJpdmVy
IGZvciB0aGUgU2hhcnAgTFMwMzdWN0RXMDEgcGFuZWwiKQo+ID4gICAxYzhmYzNmMGM1ZDIgKCJk
cm0vcGFuZWw6IEFkZCBkcml2ZXIgZm9yIHRoZSBTb255IEFDWDU2NUFLTSBwYW5lbCIpCj4gPiAg
IDQxNWI4ZGQwODcxMSAoImRybS9wYW5lbDogQWRkIGRyaXZlciBmb3IgdGhlIFRvcHBvbHkgVEQw
MjhUVEVDMSBwYW5lbCIpCj4gPiAgIGRjMmUxZTViMjc5OSAoImRybS9wYW5lbDogQWRkIGRyaXZl
ciBmb3IgdGhlIFRvcHBvbHkgVEQwNDNNVEVBMSBwYW5lbCIpCj4KPiBVcHMsIGhhZCBub3Qgc2Vl
biB0aGlzIG9uZSBjb21pbmcuCj4gV2UgYXJlIGluIHRoZSBwcm9jZXNzIG9mIHJlbW92aW5nIHRo
ZSBkcml2ZXJzIGluIGRyaXZlcnMvdmlkZW8vZmJkZXYvb21hcDIvb21hcGZiLwo+IGFuZCBkZWNp
ZGVkIHRvIGludHJvZHVjZSB0aGUgbmV3IGRyaXZlcnMgZWFybHkgdG8gZ2V0IHRoZW0gb3V0IG9m
IGEKPiBsb25nZXIgcGF0Y2ggc2VyaWVzLgoKU2hvdWxkIHdlIGhhdmUgYSBjb25maWcgZGVwZW5k
ZW5jeSB0byBub3QgYWxsb3cgdGhlIG9sZCBmYmRldiBvbWFwCndoZW4gdGhlIGRybSBvbWFwIGRy
aXZlciBpcyBlbmFibGVkPyBJIHRoaW5rIHRoYXQgd291bGQgdGFrZSBjYXJlIG9mCmFsbCB0aGlz
LgoKT3IgdG9vIGFubm95aW5nIGZvciBkZXZlbG9wbWVudD8KCkFsc28gbm90ZSB0aGF0IGZiZGV2
IGlzIGluIGRybS1taXNjIG5vdywgc28gd2Ugc2hvdWxkIGJlIGFibGUgdG8gZml4CnRoaXMgYWxs
IHdpdGhvdXQgY3Jvc3MtdHJlZSBjb25mbGljdHMuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIK
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4
IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
