Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD7997C2C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D660C6E945;
	Wed, 21 Aug 2019 14:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07D56E945
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:10:35 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id f17so2179364otq.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 07:10:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=foa9/UGdQKCCyJg/vzVb8FRdyBU6bkeruca3HdlOCS4=;
 b=Rt3/2BmP/TUMwwDcoLQc0L2L7MCLHh47+Vxx6PN/DgBQ3A56jJ4gRbbjKqkeWLB0ks
 pZiLcEKpcFsNoq5liV2XLQ6r6CAFld2oLtej8d/CaDihOwPCDg5Zm6YDIl5ibEvo1c24
 a7AkwjH/3Y6/sjVHdbaoF8t0Wt1edllsm/ZfYyyDQwGXdu3o3nSiYfeBAZWpWMeUVcgU
 PHfM9givJX5xfxrfYwYzawPFNu3fNip9Ir7VoMEwfh2R0latDyYRAG8ZYMwdMWSJieht
 EFdjfFGGPhmPkg+z5XNJ3H/P8GzEnCFeXMixiO2SD3MKyLwIt4emn8oKFyLDgKwJDS0K
 MmKQ==
X-Gm-Message-State: APjAAAXkdWHH07Uw78FWFJmQATu+2+u+Nr4HTmd3Ft0x+bkTNLcMqUWN
 s1+G1tOPtx1tZkYZkVbMysSZhkgSF5L3qVByhEHM+A==
X-Google-Smtp-Source: APXvYqw4IvOhLEFBhZRZDa8q94WwD9BTWEABxb0tXTi6VRootc5xX40k16EoKtGX9nGtD0ipfNwNRqVBo+LzWRoxR3o=
X-Received: by 2002:a9d:6955:: with SMTP id p21mr28477873oto.204.1566396635066; 
 Wed, 21 Aug 2019 07:10:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
 <20190820145336.15649-4-daniel.vetter@ffwll.ch>
 <dbe0e8a6-573f-6628-0b9e-1c978611efce@shipmail.org>
In-Reply-To: <dbe0e8a6-573f-6628-0b9e-1c978611efce@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 21 Aug 2019 16:10:23 +0200
Message-ID: <CAKMK7uH93XWbz7X6VJsvRB+pbgFEjH=iYAAgQc42gcAON8YXVw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28VMware=29?= <thomas_os@shipmail.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=foa9/UGdQKCCyJg/vzVb8FRdyBU6bkeruca3HdlOCS4=;
 b=LAQQRCxI+dzXABbcvGauBmt1piQxjhFT1dAEx8nNE3rEaFTYvXed051i49USJHiErM
 4tfbO+tVYVO/vsgLut3gn9EwzcaoGedt7YGK1YwwG6PA6ihxhjt3VMRjK/F5Ky4dk3g8
 a2txa0ag9508UC0eh9ZrSQl1P6Y1ErNvOxTRg=
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/ttm: remove ttm_bo_wait_unreserved
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMzoxNiBQTSBUaG9tYXMgSGVsbHN0csO2bSAoVk13YXJl
KQo8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPiBPbiA4LzIwLzE5IDQ6NTMgUE0s
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBXaXRoIG5vdXZlYXUgZml4ZWQgYWxsIHR0bS11c2lu
ZyBkcml2ZXMgaGF2ZSB0aGUgY29ycmVjdCBuZXN0aW5nIG9mCj4gPiBtbWFwX3NlbSB2cyBkbWFf
cmVzdiwgYW5kIHdlIGNhbiBqdXN0IGxvY2sgdGhlIGJ1ZmZlci4KPiA+Cj4gPiBBc3N1bWluZyBJ
IGRpZG4ndCBzY3JldyB1cCBhbnl0aGluZyB3aXRoIG15IGF1ZGl0IG9mIGNvdXJzZS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiA+IENjOiBDaHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBD
YzogSHVhbmcgUnVpIDxyYXkuaHVhbmdAYW1kLmNvbT4KPiA+IENjOiBHZXJkIEhvZmZtYW5uIDxr
cmF4ZWxAcmVkaGF0LmNvbT4KPiA+IENjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhp
Y3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPgo+ID4gQ2M6IFRob21hcyBIZWxsc3Ryb20gPHRoZWxs
c3Ryb21Adm13YXJlLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
by5jICAgIHwgMzQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMgfCAyNiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggICAgfCAgMSAtCj4gPiAgIDMgZmls
ZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYwIGRlbGV0aW9ucygtKQo+ID4KPiA+Cj4gPiAr
ICAgICBkbWFfcmVzdl9sb2NrKGJvLT5iYXNlLnJlc3YsIE5VTEwpOwo+Cj4gaW50ZXJydXB0aWJs
ZSwgb3IgYXQgbGVhc3Qga2lsbGFibGUuIChJSVJDIHRoaW5rIGtpbGxhYmxlIGlzIHRoZSByaWdo
dAo+IGNob2ljZSBpbiBmYXVsdCBjb2RlLCBldmVuIGlmIFRUTSBpbml0aWFsbHkgaW1wbGVtZW50
ZWQgaW50ZXJydXB0aWJsZSB0bwo+IGdldCByZWFzb25hYmxlIFhvcmcgInNpbGtlbiBtb3VzZSIg
bGF0ZW5jeSkuCgpJIHRoaW5rIGludGVycnVwdGlibGUgaXMgZmluZS4gSSBjaGlja2VuZCBvdXQg
b2YgdGhhdCBmb3IgdjEgYmVjYXVzZSBJCmFsd2F5cyBtaXggdXAgdGhlIHJldHVybiBjb2RlIGZv
ciBfbG9ja19pbnRlcnJ1cHRpYmwoKSA6LSkKCkknbGwgYWRkIHRoYXQgZm9yIHRoZSBuZXh0IHZl
cnNpb24gdG9vLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJ
bnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xs
LmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
