Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488FEEB880
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 21:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7407A6E140;
	Thu, 31 Oct 2019 20:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31B56E140
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 20:41:12 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-nEvkAGNLNcaw2jtF5oRpSA-1; Thu, 31 Oct 2019 16:41:05 -0400
Received: by mail-qk1-f198.google.com with SMTP id a13so6984771qkc.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 13:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=p6eKaLv3iKa7qgJud9TxZ9yLFlOCSuIIjBGdjokvwSg=;
 b=S4ukQqUC8DKXnHNJ3vI7sw+nK5jMcKXpr9o0QD4u6DOXPRVEfmOxPCGpRtcgqiL4LP
 7fm0i5kaSm1mhbcxuPuweilzDR5HL9qTT0Gsc0wlFEeovpbmPe28YuBDSkNXsN2qk0Gz
 CTAuTryiwHtaCTHqpQmHl/1R0n1U70+UhyrFviSbrGVQ2jAX05BLoHq0FYfQvTWKYbyr
 JPhIvuaVqJXfdjpyvJMVmhqyr9sVlSKwPG15JjkyXwAbwudh1gpswMUoZfKqBLRqBOrb
 n9vOycZiKVxwGrqheny4Km8tMJvyaIREBqAYrV9c2BgW8dK1JzmzDTZ6Xuwhr0y2TmB2
 g0zA==
X-Gm-Message-State: APjAAAXz6F8fmeuAk2glm5nZfpoPYMQ18xvZ2WmofFf3bexrMkC1bBLU
 negilHsFXwGimA/KH/NmG2/YyYYZa5k+5ANvoz/N4ATHAKnbUsFFCOkcwiSkoTo7YfX1xBs2Eba
 dHoS2iYh1J9xfgSL7vFZQL28j6Ma/
X-Received: by 2002:a0c:95a1:: with SMTP id s30mr6816932qvs.110.1572554464198; 
 Thu, 31 Oct 2019 13:41:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxY6MB5Msd78VZdUn8VRNxdtWrIozbb1ENKzp7VRtWwFnE7WAJPDPMz8sbahJvYTnr+1hh+8A==
X-Received: by 2002:a0c:95a1:: with SMTP id s30mr6816909qvs.110.1572554463926; 
 Thu, 31 Oct 2019 13:41:03 -0700 (PDT)
Received: from dhcp-10-20-1-46.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id p66sm2976514qkd.1.2019.10.31.13.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 13:41:02 -0700 (PDT)
Message-ID: <b780f798c8aa8080aedc733c43a5c706939ddcce.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org
Date: Thu, 31 Oct 2019 16:41:01 -0400
In-Reply-To: <20191029140312.516266-1-thierry.reding@gmail.com>
References: <20191029140312.516266-1-thierry.reding@gmail.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: nEvkAGNLNcaw2jtF5oRpSA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572554471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WpfVpgUzydSrNEJti+E1epOk+K1dgvFdkJw4FNDDCao=;
 b=XPrqRatBzAsuRX2RnwI2uQLA4lYY5SZhcVjOSAo+O/CnipduuHkKQNsd1S0XvbWqjx548O
 zdUMYVvy4OcqR/CjsCTjH/ZWR6WmpO62ZkI4tplDr8/9oCjGST1Eu0m+wA7RzzxuVN9gOQ
 ELLnvcXzA/Y7Dh384t6oCtMiV5daRvE=
Subject: Re: [Intel-gfx] [RESEND PATCH] drm/dp: Increase link status size
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
Cc: intel-gfx@lists.freedesktop.org,
 coverity-bot <keescook+coverity-bot@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hvb3BzLCByZXBsaWVkIHRvIHRoZSB3cm9uZyBvbmUKUmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwg
PGx5dWRlQHJlZGhhdC5jb20+CgpPbiBUdWUsIDIwMTktMTAtMjkgYXQgMTU6MDMgKzAxMDAsIFRo
aWVycnkgUmVkaW5nIHdyb3RlOgo+IEZyb206IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRp
YS5jb20+Cj4gCj4gVGhlIGN1cnJlbnQgbGluayBzdGF0dXMgY29udGFpbnMgYnl0ZXMgMHgyMDIg
dGhyb3VnaCAweDIwNywgYnV0IHdlIGFsc28KPiB3YW50IHRvIG1ha2Ugc3VyZSB0byBpbmNsdWRl
IHRoZSBEUF9BREpVU1RfUkVRVUVTVF9QT1NUX0NVUlNPUjIgKDB4MjBjKQo+IHNvIHRoYXQgdGhl
IHBvc3QtY3Vyc29yIGFkanVzdG1lbnQgY2FuIGJlIHF1ZXJpZWQgZHVyaW5nIGxpbmsgdHJhaW5p
bmcuCj4gCj4gUmVwb3J0ZWQtYnk6IGNvdmVyaXR5LWJvdCA8a2Vlc2Nvb2srY292ZXJpdHktYm90
QGNocm9taXVtLm9yZz4KPiBBZGRyZXNzZXMtQ292ZXJpdHktSUQ6IDE0ODczNjYgKCJNZW1vcnkg
LSBjb3JydXB0aW9ucyIpCj4gRml4ZXM6IDc5NDY1ZTBmZmViOSAoImRybS9kcDogQWRkIGhlbHBl
ciB0byBnZXQgcG9zdC1jdXJzb3IgYWRqdXN0bWVudHMiKQo+IFNpZ25lZC1vZmYtYnk6IFRoaWVy
cnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvZHJtL2RybV9k
cF9oZWxwZXIuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCBi
L2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+IGluZGV4IDUxZWNiNTExMmVmOC4uOTU4MWRl
YzkwMGJhIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ICsrKyBi
L2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+IEBAIC0xMTIxLDcgKzExMjEsNyBAQAo+ICAj
ZGVmaW5lIERQX01TVF9QSFlTSUNBTF9QT1JUXzAgMAo+ICAjZGVmaW5lIERQX01TVF9MT0dJQ0FM
X1BPUlRfMCA4Cj4gIAo+IC0jZGVmaW5lIERQX0xJTktfU1RBVFVTX1NJWkUJICAgNgo+ICsjZGVm
aW5lIERQX0xJTktfU1RBVFVTX1NJWkUJICAgMTEKPiAgYm9vbCBkcm1fZHBfY2hhbm5lbF9lcV9v
ayhjb25zdCB1OCBsaW5rX3N0YXR1c1tEUF9MSU5LX1NUQVRVU19TSVpFXSwKPiAgCQkJICBpbnQg
bGFuZV9jb3VudCk7Cj4gIGJvb2wgZHJtX2RwX2Nsb2NrX3JlY292ZXJ5X29rKGNvbnN0IHU4IGxp
bmtfc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdLAotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
