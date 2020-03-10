Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4218072C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3456E8C8;
	Tue, 10 Mar 2020 18:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8416E8C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583865827;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YpOF2yrKQKjDjatW5dGaT/ckyfMIb9r2mvdzhAGR3r0=;
 b=gyw0qWJsM9ZFtDs4e/GzjCyvlMmSRmrvFXwbdS8UFB2X+VhjZlUaKvjkXRd1R8Q1pn9gs4
 3IAtbJoleytrhN7giyy/l0EvwF2NAuD60C66XWhDVZ3UK1l+yMB8XF3cUg6oDZYynCAVKP
 O2+q1TCXuqvCRnwZoxVyNx4/Dym0FAg=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-iSF6AG-jP9WiRipB-azVlQ-1; Tue, 10 Mar 2020 14:43:43 -0400
X-MC-Unique: iSF6AG-jP9WiRipB-azVlQ-1
Received: by mail-qt1-f197.google.com with SMTP id d6so6946671qtn.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=/DpR2+rDRm/5siffJtWBBI9nbBmh//iyJt6PJfdkXrk=;
 b=q3Yztat7qpWeDfy6a43huVWpNKHdX8pdSw5y3OoJsooOq2zc2xmh1wfoWU3Sy6WpTf
 UzdEpP6rmeYynuuJBqr5T4oqse/9+e/2ABfeEkjCqu+T0ev/f5LFt00aJepPQ+g76rmv
 ocihEQZZUsbwfd/agrJdHPhnVSq7lB1PNTrPzRGtTwqNOJVm89HiEyT8oO4pzGlTy9JE
 OcDTuecfOp9cvEIcKcwFdI4A1nCd5xiO/riLWseDF4xcJJ4+mXFZi64dXrqL1f0MAN9g
 kxJpXdh7ZirOnjkIIJ21FYmU9vfheVwUdlVfkePs40igswTEBCEWv0I4Tm9q0p8lOqjC
 EHJw==
X-Gm-Message-State: ANhLgQ2uYmSaEVLPFQZJO3w/lBukyn1ThY4BsL75jR9VJiiA1w91XQ8F
 28nZnjEDoGkavA1NBTErTYEKCz1XSnG9WBvsrA2s6m2mraj0OZGY05fHOlKQDyXWE1/v4aNRFtp
 0MZPN9OYj+F3kLNOo+NIyZQKZglNa
X-Received: by 2002:a37:5c9:: with SMTP id 192mr21570885qkf.103.1583865822657; 
 Tue, 10 Mar 2020 11:43:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSZqFX3FEhejcb1/uccPf30JOj4XcmJWeGyzmJm+MgbADKlbO5BpXSG6UdLpMUnjzhVGxUtg==
X-Received: by 2002:a37:5c9:: with SMTP id 192mr21570854qkf.103.1583865822404; 
 Tue, 10 Mar 2020 11:43:42 -0700 (PDT)
Received: from dhcp-10-20-1-196.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id d73sm6419455qkg.113.2020.03.10.11.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:43:41 -0700 (PDT)
Message-ID: <b336c114f09cfe79824c4fe0b33960f80edd00b1.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Tue, 10 Mar 2020 14:43:40 -0400
In-Reply-To: <20200310184220.GO13686@intel.com>
References: <20200310182856.1587752-1-lyude@redhat.com>
 <20200310184220.GO13686@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: Hookup DRM DP MST
 late_register/early_unregister callbacks
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAzLTEwIGF0IDIwOjQyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVHVlLCBNYXIgMTAsIDIwMjAgYXQgMDI6Mjg6NTRQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3
cm90ZToKPiA+IGk5MTUgY2FuIGVuYWJsZSBhdXggZGV2aWNlIG5vZGVzIGZvciBEUCBNU1QgYnkg
Y2FsbGluZwo+ID4gZHJtX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdpc3RlcigpL2RybV9kcF9t
c3RfY29ubmVjdG9yX2Vhcmx5X3VucmVnaXN0ZXIKPiA+ICgpLAo+ID4gc28gbGV0J3MgaG9vayB0
aGF0IHVwLgo+IAo+IE9oLCB3ZSBkaWRuJ3QgaGF2ZSB0aGF0IHlldD8gSSB0aG91Z2h0IGl0IGdv
dCBob29rZWQgdXAgZm9yIGV2ZXJ5b25lCj4gYnV0IEkgZ3Vlc3Mgbm90Lgo+IAo+ID4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogTWFu
YXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+IENjOiAiTGVlLCBTaGF3
biBDIiA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTHl1ZGUgUGF1
bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyMiArKysrKysrKysrKysrKysrKysrLS0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ID4gaW5kZXgg
ZDUzOTc4ZWQzYzEyLi5iY2ZmMmUwNmVhZDYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gPiBAQCAtNTQ4LDEyICs1NDgsMzAgQEAgc3Rh
dGljIGludCBpbnRlbF9kcF9tc3RfZ2V0X2RkY19tb2RlcyhzdHJ1Y3QKPiA+IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikKPiA+ICAJcmV0dXJuIHJldDsKPiA+ICB9Cj4gPiAgCj4gPiArc3RhdGlj
IGludAo+ID4gK2ludGVsX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdpc3RlcihzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gK3sKPiA+ICsJc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0KPiA+IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpOwo+
ID4gKwo+ID4gKwlyZXR1cm4gZHJtX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdpc3Rlcihjb25u
ZWN0b3IsCj4gPiArCQkJCQkJICBpbnRlbF9jb25uZWN0b3ItPnBvcnQpOwo+ID4gK30KPiA+ICsK
PiA+ICtzdGF0aWMgdm9pZAo+ID4gK2ludGVsX2RwX21zdF9jb25uZWN0b3JfZWFybHlfdW5yZWdp
c3RlcihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gK3sKPiA+ICsJc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0KPiA+IHRvX2ludGVsX2Nvbm5lY3Rv
cihjb25uZWN0b3IpOwo+ID4gKwo+ID4gKwlkcm1fZHBfbXN0X2Nvbm5lY3Rvcl9lYXJseV91bnJl
Z2lzdGVyKGNvbm5lY3RvciwKPiA+ICsJCQkJCSAgICAgIGludGVsX2Nvbm5lY3Rvci0+cG9ydCk7
Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5j
cyBpbnRlbF9kcF9tc3RfY29ubmVjdG9yX2Z1bmNzID0gewo+ID4gIAkuZmlsbF9tb2RlcyA9IGRy
bV9oZWxwZXJfcHJvYmVfc2luZ2xlX2Nvbm5lY3Rvcl9tb2RlcywKPiA+ICAJLmF0b21pY19nZXRf
cHJvcGVydHkgPSBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfZ2V0X3Byb3BlcnR5LAo+
ID4gIAkuYXRvbWljX3NldF9wcm9wZXJ0eSA9IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21p
Y19zZXRfcHJvcGVydHksCj4gPiAtCS5sYXRlX3JlZ2lzdGVyID0gaW50ZWxfY29ubmVjdG9yX3Jl
Z2lzdGVyLAo+IAo+IER1bm5vIGlmIHdlIHdhbnQgdG8gbG9zZSB0aGUgZXJyb3IgaW5qZWN0aW9u
Li4uCgpHb3RjaGEsIHdpbGwgc2VuZCBvdXQgYSBmaXhlZCByZXNwaW4gaW4ganVzdCBhIG1vbWVu
dAo+IAo+ID4gLQkuZWFybHlfdW5yZWdpc3RlciA9IGludGVsX2Nvbm5lY3Rvcl91bnJlZ2lzdGVy
LAo+ID4gKwkubGF0ZV9yZWdpc3RlciA9IGludGVsX2RwX21zdF9jb25uZWN0b3JfbGF0ZV9yZWdp
c3RlciwKPiA+ICsJLmVhcmx5X3VucmVnaXN0ZXIgPSBpbnRlbF9kcF9tc3RfY29ubmVjdG9yX2Vh
cmx5X3VucmVnaXN0ZXIsCj4gPiAgCS5kZXN0cm95ID0gaW50ZWxfY29ubmVjdG9yX2Rlc3Ryb3ks
Cj4gPiAgCS5hdG9taWNfZGVzdHJveV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rv
cl9kZXN0cm95X3N0YXRlLAo+ID4gIAkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGludGVsX2Rp
Z2l0YWxfY29ubmVjdG9yX2R1cGxpY2F0ZV9zdGF0ZSwKPiA+IC0tIAo+ID4gMi4yNC4xCi0tIApD
aGVlcnMsCglMeXVkZSBQYXVsIChzaGUvaGVyKQoJQXNzb2NpYXRlIFNvZnR3YXJlIEVuZ2luZWVy
IGF0IFJlZCBIYXQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
