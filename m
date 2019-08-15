Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104AE8EA75
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 13:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08E66E2DC;
	Thu, 15 Aug 2019 11:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C206E2DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 11:38:47 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id r20so5167286ota.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 04:38:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eA85OT+/g+cLDFha1h9u7JxU8JHAbsUKAA9kQQUjhyI=;
 b=dUAl+Q+IZV+6XHzdKyQ9/Yg0q1ZIiQXg20FPHxxQhQGYS923C85oo07IG09ppCSxay
 5aYSOlOhGgiqqIiJ3pTQoW1oGSDAlBwqIxe21w7/w0QKRyI56zCdG1ayDj7y6+uOrVrB
 1GFXqMRA75wwrzmwUmtZfJb7k21yXgtG0Rb2l21AVYlS75Ou47Mx68D/KreEwXNBOKXW
 kKyCjMCotMv2za0wajU7d4CKA/J1nbJI8hU2q0N6/VJwXOe/AGctPCEEop4aquGFf4Jm
 k7HO7//5Fx7LTl+bNVZbdFMEckA3KJfSRhnr75gbTKDnih0t3B7Velm/K8WmcbeHWYua
 LFgw==
X-Gm-Message-State: APjAAAWOUdDAMEXo8AVir526k26NkOfyNedDjbB1olKTWsyAveDVE6Pr
 pROaADlNniYk5t5F6SZfcoByA4WXLk+YJtu4i9m5Kw==
X-Google-Smtp-Source: APXvYqxCRr3r3xGl8gxpvEZ+x3OUpt/fbOvUNo8/MTZHqwuoruQ5r4GHgISr+j3zeGbJPda9W2VO66cOmErHLK9KHBg=
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr2901629ota.106.1565869126588; 
 Thu, 15 Aug 2019 04:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <87zhkag9ic.fsf@intel.com>
In-Reply-To: <87zhkag9ic.fsf@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 15 Aug 2019 13:38:35 +0200
Message-ID: <CAKMK7uEiESuGSmLSDFOt0YBDtUAtQNK6oa9v7-1zOVZRt2=DJg@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=eA85OT+/g+cLDFha1h9u7JxU8JHAbsUKAA9kQQUjhyI=;
 b=it66RIOLcDBGqmAHb0Pv8y7qOow9dMpIGctHLcfH1/HwJW+JdwbUH6CvJ5temGMymW
 7PsetYrLETf491cFW02nnuvOJGINs8pRIaZ0nq3z4YQgf3bwBKUzADV/x4rMWfWSdwje
 6mPnAwicB5l5ahXa/rzBaDkgtkKHcadG7MfCk=
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgOTo0MiBBTSBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPiB3cm90ZToKPgo+Cj4gSGkgRGF2ZSAmIERhbmllbCAtCj4KPiBPbmUgdXNlIGFm
dGVyIGZyZWUgZml4IGZvciBHVlQuCj4KPiBJdCBkb2Vzbid0IGhhdmUgYSBMaW5rOiB0YWcgYmVj
YXVzZSBkaW0gZG9lc24ndCBjaGVjayB0aGF0IHdoaWxlCj4gYXBwbHlpbmcgdGhlIHB1bGwsIGFu
ZCwgZm9yIHNvbWUgcmVhc29uLCBpdCB3YXMgYWxzbyBub3QgY2hlY2tlZCB3aGVuIEkKPiBwdXNo
ZWQgb3V0IHRoZSBicmFuY2guIFBvc3NpYmx5IGJlY2F1c2UgaXQncyBpbiBhIG1lcmdlPyBBbnl3
YXksIEkgb25seQo+IGdvdCB0aGUgY29tcGxhaW50IHdoZW4gbWFraW5nIHRoZSBwdWxsIHJlcXVl
c3QsIHdoaWNoIGlzIHRvbyBsYXRlLgoKSG0sIHNvdW5kcyBsaWtlIHRoZSBmbGFnIHNldHRpbmdz
IGZvciB0aGUgY2hlY2tlciBhcmUgd3JvbmcsIGZvcgoiZm9yZWlnbiIgdHJlZXMgZGltIGRvZXNu
J3QgaW5zaXN0IG9uIHRoZSBMaW5rOiB0YWcuIFNvIG1heWJlIG5lZWQgdG8KZmxpcCB0aGF0IGFy
b3VuZCB0byBtYXRjaCB3aGF0IHdlIGRvIG9uIHRoZSByZWNlaXZpbmcgZW5kIG9mIGEgcHVsbD8K
LURhbmllbAoKPgo+IGRybS1pbnRlbC1maXhlcy0yMDE5LTA4LTE1Ogo+IGRybS9pOTE1IGZpeGVz
IGZvciB2NS40LXJjNToKPiAtIEdWVCB1c2UtYWZ0ZXItZnJlZSBmaXgKPgo+IEJSLAo+IEphbmku
Cj4KPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGQ0NTMzMWIwMGRkYjE3OWUy
OTE3NjY2MTcyNTkyNjFjMTEyZGI4NzI6Cj4KPiAgIExpbnV4IDUuMy1yYzQgKDIwMTktMDgtMTEg
MTM6MjY6NDEgLTA3MDApCj4KPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBh
dDoKPgo+ICAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1pbnRlbCB0YWdz
L2RybS1pbnRlbC1maXhlcy0yMDE5LTA4LTE1Cj4KPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMg
dXAgdG8gZGFhMzcyMDBkNDg5MDZkNzFjNjNjZTE3OGJmN2Q0MTBiN2UwNzA4MjoKPgo+ICAgTWVy
Z2UgdGFnICdndnQtZml4ZXMtMjAxOS0wOC0xMycgb2YgaHR0cHM6Ly9naXRodWIuY29tL2ludGVs
L2d2dC1saW51eCBpbnRvIGRybS1pbnRlbC1maXhlcyAoMjAxOS0wOC0xMyAxNjoyNjozNCArMDMw
MCkKPgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiBkcm0vaTkxNSBmaXhlcyBmb3IgdjUuNC1yYzU6Cj4gLSBHVlQgdXNl
LWFmdGVyLWZyZWUgZml4Cj4KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gRGFuIENhcnBlbnRlciAoMSk6Cj4gICAgICAg
ZHJtL2k5MTU6IFVzZSBhZnRlciBmcmVlIGluIGVycm9yIHBhdGggaW4gaW50ZWxfdmdwdV9jcmVh
dGVfd29ya2xvYWQoKQo+Cj4gSmFuaSBOaWt1bGEgKDEpOgo+ICAgICAgIE1lcmdlIHRhZyAnZ3Z0
LWZpeGVzLTIwMTktMDgtMTMnIG9mIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9ndnQtbGludXgg
aW50byBkcm0taW50ZWwtZml4ZXMKPgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1
bGVyLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPgo+IC0tCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
