Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FCC177FFC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D136E817;
	Tue,  3 Mar 2020 18:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7306E817
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 18:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583261943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nsBRPfKRdhfL0gYsAuTjW7/qWctNAh1dswFo87gr+Ac=;
 b=Xg04wwiYNLBPtsbHtcfDaoLj5w/HQXiB1yfMsmXiYlRwLbqIqn/c7i38P5wlcrRyQ4umbp
 6CVApYfJ5guopwWjBIi7lQuu8adEb8kcUItpIozMAyL0SH1EkFRO9s+gaf5HWKx+Nk9SQN
 qPgNuIU2LLo8PPqhU6jieN2HbR1o0s8=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-2LaDFRY9MY-9VkLbOUfcUg-1; Tue, 03 Mar 2020 13:58:57 -0500
X-MC-Unique: 2LaDFRY9MY-9VkLbOUfcUg-1
Received: by mail-qk1-f197.google.com with SMTP id w6so2841869qki.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 10:58:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=K8L4ZUtOescIORESmUrm8ykMe+HPDV0/YLCBuICtYzw=;
 b=I3omRwapF7T89c2dhLmmAS4sWKAdWmrVU6K0TFAXO2oRXXSJWZmAM5Ryz2N/kZMYkg
 dDSv11nzvPoIgSll5pCuUjTkfNo8MQSIPOwOoe3pEEY2kfyAQYY0xszzAFzHTPhWL+eY
 KhPDSwYG+aG+I0Mop9ABIw9SKuLZOBTJew66YM89QgS5iSD6jZH2tTv0pgvsB6C4FipT
 nStqudatdbn3/f8UW8vD3bBqyInf0yJxxktxHgDdYjwj8UtQApDyHd+3aWwvM3zCz+oj
 36sL8e0a/rTRwXkqeCN5VseY5mjWv16PVYGLJvX4CMkhq9gQWrWCA61+TMChgDhGgKwt
 XKLg==
X-Gm-Message-State: ANhLgQ0Kksq78FYPPdusJuGgnrmU6tb+RX0JJSYRz8WQP27aYfxXQ/uZ
 1xA4ckFyR3VWlLL8WO+/y2KHV7ukIan9chFhrPmwJ+0sczgM/dmNsv5Z+uLSynw2FS+muUfLNUr
 QeRuvWLgZTI9Fyc1xm6gwUufcpOba
X-Received: by 2002:a37:dd7:: with SMTP id 206mr5759427qkn.12.1583261937302;
 Tue, 03 Mar 2020 10:58:57 -0800 (PST)
X-Google-Smtp-Source: ADFU+vud7vFoVqdO7g6nYk2lTCS7/rh9+TRlLcbu3sD7JomRLY4Lz3YvPzRBtClyfO7QKvgEoN7Dwg==
X-Received: by 2002:a37:dd7:: with SMTP id 206mr5759410qkn.12.1583261937032;
 Tue, 03 Mar 2020 10:58:57 -0800 (PST)
Received: from dhcp-10-20-1-196.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id j4sm5299048qtv.45.2020.03.03.10.58.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 10:58:56 -0800 (PST)
Message-ID: <865432f15c7e13f212ecd4ddff0a9cc78d34e89d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 03 Mar 2020 13:58:55 -0500
In-Reply-To: <20200302133023.GQ11960@pendragon.ideasonboard.com>
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200302125649.61443-7-pankaj.laxminarayan.bharadiya@intel.com>
 <20200302133023.GQ11960@pendragon.ideasonboard.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/nouveau: Fix unused variable warning
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.de>,
 Sean Paul <seanpaul@chromium.org>, Dave Airlie <airlied@redhat.com>,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTAzLTAyIGF0IDE1OjMwICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3Rl
Ogo+IEhpIFBhbmthaiwKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiAKPiBPbiBNb24s
IE1hciAwMiwgMjAyMCBhdCAwNjoyNjo0NlBNICswNTMwLCBQYW5rYWogQmhhcmFkaXlhIHdyb3Rl
Ogo+ID4gbm91dmVhdV9kcm0gcG9pbnRlciBpcyBub3QgZ2V0dGluZyB1c2VkIGFueW1vcmUgaW4K
PiA+IG52NTBfbXN0bV97cmVnaXN0ZXIsZGVzdHJveX1fY29ubmVjdG9yIGZ1bmN0aW9ucywgaGVu
Y2UgcmVtb3ZlIGl0Lgo+ID4gCj4gPiBUaGlzIGZpeGVzIGJlbG93IHdhcm5pbmcuCj4gPiAKPiA+
IGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYzogSW4gZnVuY3Rpb24KPiA+
IOKAmG52NTBfbXN0bV9kZXN0cm95X2Nvbm5lY3RvcuKAmToKPiA+IGRyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYzoxMjYzOjIyOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUK
PiA+IOKAmGRybeKAmSBbLVd1bnVzZWQtdmFyaWFibGVdCj4gPiAgIHN0cnVjdCBub3V2ZWF1X2Ry
bSAqZHJtID0gbm91dmVhdV9kcm0oY29ubmVjdG9yLT5kZXYpOwo+ID4gICAgICAgICAgICAgICAg
ICAgICAgIF5+fgo+ID4gZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jOiBJ
biBmdW5jdGlvbgo+ID4g4oCYbnY1MF9tc3RtX3JlZ2lzdGVyX2Nvbm5lY3RvcuKAmToKPiA+IGRy
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYzoxMjc0OjIyOiB3YXJuaW5nOiB1
bnVzZWQgdmFyaWFibGUKPiA+IOKAmGRybeKAmSBbLVd1bnVzZWQtdmFyaWFibGVdCj4gPiAgIHN0
cnVjdCBub3V2ZWF1X2RybSAqZHJtID0gbm91dmVhdV9kcm0oY29ubmVjdG9yLT5kZXYpOwo+ID4g
ICAgICAgICAgICAgICAgICAgICAgIF5+fgo+IAo+IEFzIGNvbW1lbnRlZCBvbiA3LzksIHlvdSBz
aG91bGQgc3F1YXNoIHRoaXMgd2l0aCB0aGUgcGF0Y2ggdGhhdAo+IGludHJvZHVjZXMgdGhlIHdh
cm5pbmdzLgoKQWdyZWVkLCB3aXRoIHRoZSBwYXRjaGVzIHNxdWFzaGVkIHlvdSBjYW4gY291bnQg
dGhpcyBhczoKClJldmlld2VkLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgoKZndp
dyAtIGNvbXBsZXRlbHkgb3B0aW9uYWwgYnV0IGlmIHlvdSdkIGxpa2UsIHlvdSBjYW4gcHJvYmFi
bHkgYWxzbyBnbyBhaGVhZAphbmQgcmVtb3ZlIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Nicy5y
ZWdpc3Rlcl9jb25uZWN0b3IgYW5kCmRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Nicy5kZXN0cm95
X2Nvbm5lY3RvciBhbmQgcmVwbGFjZSB0aGVtIHdpdGggb3Blbi0KY29kaW5nLCBzaW5jZSB0aG9z
ZSBjYWxsYmFja3MgYXJlIGxpdGVyYWxseSBpZGVudGljYWwgYW1vbmdzdCBldmVyeSBkcml2ZXIg
YW5kCmRvbid0IGRvIGFueXRoaW5nIG90aGVyIHRoZW4gY2FsbApkcm1fY29ubmVjdG9yX3JlZ2lz
dGVyKCkvZHJtX2Nvbm5lY3Rvcl91bnJlZ2lzdGVyKCkvZHJtX2Nvbm5lY3Rvcl9wdXQoKS4KCj4g
PiBTaWduZWQtb2ZmLWJ5OiBQYW5rYWogQmhhcmFkaXlhIDxwYW5rYWoubGF4bWluYXJheWFuLmJo
YXJhZGl5YUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9k
aXNwbnY1MC9kaXNwLmMgfCAzIC0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAv
ZGlzcC5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwo+ID4g
aW5kZXggOTdkZDUwZTI5MTdkLi40ZTE2NGFkODAwM2YgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwo+ID4gQEAgLTEyNjAsNyArMTI2MCw2IEBAIHN0YXRp
YyB2b2lkCj4gPiAgbnY1MF9tc3RtX2Rlc3Ryb3lfY29ubmVjdG9yKHN0cnVjdCBkcm1fZHBfbXN0
X3RvcG9sb2d5X21nciAqbWdyLAo+ID4gIAkJCSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQo+ID4gIHsKPiA+IC0Jc3RydWN0IG5vdXZlYXVfZHJtICpkcm0gPSBub3V2ZWF1X2Ry
bShjb25uZWN0b3ItPmRldik7Cj4gPiAgCXN0cnVjdCBudjUwX21zdGMgKm1zdGMgPSBudjUwX21z
dGMoY29ubmVjdG9yKTsKPiA+ICAKPiA+ICAJZHJtX2Nvbm5lY3Rvcl91bnJlZ2lzdGVyKCZtc3Rj
LT5jb25uZWN0b3IpOwo+ID4gQEAgLTEyNzEsOCArMTI3MCw2IEBAIG52NTBfbXN0bV9kZXN0cm95
X2Nvbm5lY3RvcihzdHJ1Y3QKPiA+IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCj4gPiAg
c3RhdGljIHZvaWQKPiA+ICBudjUwX21zdG1fcmVnaXN0ZXJfY29ubmVjdG9yKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IpCj4gPiAgewo+ID4gLQlzdHJ1Y3Qgbm91dmVhdV9kcm0gKmRy
bSA9IG5vdXZlYXVfZHJtKGNvbm5lY3Rvci0+ZGV2KTsKPiA+IC0KPiA+ICAJZHJtX2Nvbm5lY3Rv
cl9yZWdpc3Rlcihjb25uZWN0b3IpOwo+ID4gIH0KPiA+ICAKLS0gCkNoZWVycywKCUx5dWRlIFBh
dWwgKHNoZS9oZXIpCglBc3NvY2lhdGUgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
