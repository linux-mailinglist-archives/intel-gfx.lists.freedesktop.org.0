Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B9199CA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 10:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644A7898EE;
	Fri, 10 May 2019 08:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB775898EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 08:40:59 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id g57so4371238edc.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 01:40:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=RN9hnf16dLZkgeZ8fTZ0EGAfKAPVs0munHw2RhI7lMM=;
 b=Q2LH7EUgRVx9QpNyei5MXSJWQzP3yY/ZYSb/6Y5fuunPz6txZk0Qsn6nS7cewpYFCX
 PjjPYqXH3LFJvWOMf6zODnJnDYg33FdyxfVJbUcY7JL2ravklvRAu5BeUjZeXRBxWJyl
 Jh3A/lN6do9KsHbdoWbMcTMbdWApPSS4+D0GT2ex0FBYtvw95WO0Ix5sb/c520a+4u+u
 XmkLkFqOQEpcBoF1pjQuWPmghM8/DHbO/RCJyhSwlJcJvaVOVOm5ALTImgvbi+ZH/YKo
 ArinuMaZv1rLvjn7a7anVPrXBaKjMlN78SV8FgQFXjPZTpLhgKkEwQtJ6pVMND/6D16P
 S+Bw==
X-Gm-Message-State: APjAAAUuNACurq0rvswU6v54deWeoKsdtWojHtKxD+mrnLWxC7DSncSa
 8UEjkKSWhWrw7KYG4HGTTDIuN7S7UGc=
X-Google-Smtp-Source: APXvYqwSJyRzc3cXUUH0RfqMdV3Blaak8QQQ8bCVnZOoaxlwO4OmBT8XtWSis1TS33L0kf7ImhfySA==
X-Received: by 2002:a50:b56a:: with SMTP id z39mr9437477edd.91.1557477658423; 
 Fri, 10 May 2019 01:40:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f40sm1298305edb.55.2019.05.10.01.40.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 01:40:57 -0700 (PDT)
Date: Fri, 10 May 2019 10:40:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190510084055.GI17751@phenom.ffwll.local>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
 <20190509122159.24376-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509122159.24376-7-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=RN9hnf16dLZkgeZ8fTZ0EGAfKAPVs0munHw2RhI7lMM=;
 b=VnmuDph2o8oz7OtkYgjMR9s/54YDGIBy0GXj2xRgjU2/S+L/PFxMNA62Q5FA3bpX65
 KmddpqvJLW0ELoBOcko71BeV8ZlgC7lLPxvzLTiwaN5VpM/0I9yISsY5v+wh9ZzGsXoD
 vU8i+J2qE+GO4BgEj48VbdBhceZ3kWj65niLQ=
Subject: Re: [Intel-gfx] [PATCH v4 6/8] drm/i915: Align dumb buffer stride
 to 4k to allow for gtt remapping
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDM6MjE6NTdQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IEFsaWduIGR1bWIgYnVmZmVyIHN0cmlkZSB0byA0ayBpZiB0aGUgZmIgd2lsbCBi
ZSBiaWcgZW5vdWdoIHRvCj4gcmVxdWlyZSBndHQgcmVtYXBwaW5nLgo+IAo+IHYyOiBMZWF2ZSB0
aGUgc3RyaWRlIGFsb25lIGZvciBidWZmZXJzIHRoYXQgbG9vayB0byBiZSBmb3IgdGhlIGN1cnNv
cgo+IHYzOiBNYWtlIGl0IG5vdCBhIGhhY2sgKERhbmllbCkKPiAKPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKWWVhaCBJIHRoaW5rIHRoaXMgaXMg
YSByZWFzb25hYmxlIGhldXJpc3RpY3MuCgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8ICAxIC0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5oIHwgIDIgKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IDRl
NDc0YmNmNGMyMi4uN2NhZmQ1NjEyZjcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4g
QEAgLTUyLDYgKzUyLDcgQEAKPiAgI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKPiAgI2luY2x1ZGUg
Imk5MTVfdmdwdS5oIgo+ICAKPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiAgI2luY2x1
ZGUgImludGVsX2Rydi5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZnJvbnRidWZmZXIuaCIKPiAgI2lu
Y2x1ZGUgImludGVsX3BtLmgiCj4gQEAgLTU2MCw4ICs1NjEsMzEgQEAgaTkxNV9nZW1fZHVtYl9j
cmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAo+ICAJCSAgICAgc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKPiAgCQkgICAgIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncykKPiAgewo+
ICsJaW50IGNwcCA9IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwo+ICsJdTMyIGZvcm1hdDsK
PiArCj4gKwlzd2l0Y2ggKGNwcCkgewo+ICsJY2FzZSAxOgo+ICsJCWZvcm1hdCA9IERSTV9GT1JN
QVRfQzg7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIDI6Cj4gKwkJZm9ybWF0ID0gRFJNX0ZPUk1BVF9S
R0I1NjU7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIDQ6Cj4gKwkJZm9ybWF0ID0gRFJNX0ZPUk1BVF9Y
UkdCODg4ODsKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4g
Kwl9Cj4gKwo+ICAJLyogaGF2ZSB0byB3b3JrIG91dCBzaXplL3BpdGNoIGFuZCByZXR1cm4gdGhl
bSAqLwo+IC0JYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT53aWR0aCAqIERJVl9ST1VORF9VUChh
cmdzLT5icHAsIDgpLCA2NCk7Cj4gKwlhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3MtPndpZHRoICog
Y3BwLCA2NCk7Cj4gKwo+ICsJLyogYWxpZ24gc3RyaWRlIHRvIHBhZ2Ugc2l6ZSBzbyB0aGF0IHdl
IGNhbiByZW1hcCAqLwo+ICsJaWYgKGFyZ3MtPnBpdGNoID4gaW50ZWxfcGxhbmVfZmJfbWF4X3N0
cmlkZSh0b19pOTE1KGRldiksIGZvcm1hdCwKPiArCQkJCQkJICAgIERSTV9GT1JNQVRfTU9EX0xJ
TkVBUikpCj4gKwkJYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5waXRjaCwgNDA5Nik7Cj4gKwo+
ICAJYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0Owo+ICAJcmV0dXJuIGk5
MTVfZ2VtX2NyZWF0ZShmaWxlLCB0b19pOTE1KGRldiksCj4gIAkJCSAgICAgICAmYXJncy0+c2l6
ZSwgJmFyZ3MtPmhhbmRsZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+IGlu
ZGV4IDk0ZmFhYzllMzY2Ni4uZmEzMTdjNDBkNTQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYwo+IEBAIC0yNDk4LDcgKzI0OTgsNiBAQCBib29sIGlzX2Njc19tb2RpZmll
cih1NjQgbW9kaWZpZXIpCj4gIAkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lm
X1RJTEVEX0NDUzsKPiAgfQo+ICAKPiAtc3RhdGljCj4gIHUzMiBpbnRlbF9wbGFuZV9mYl9tYXhf
c3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJICAgICAgdTMy
IHBpeGVsX2Zvcm1hdCwgdTY0IG1vZGlmaWVyKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuaAo+IGluZGV4IDUwMGVlYzkwOTI4ZC4uMWU2NTMzZmJkMDYxIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC00MzYsNiArNDM2LDggQEAgdm9pZCBp
bnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCj4gIAkJCSAgICBib29s
IGNvbnN0YW50X24pOwo+ICBib29sIGlzX2Njc19tb2RpZmllcih1NjQgbW9kaWZpZXIpOwo+ICB2
b2lkIGxwdF9kaXNhYmxlX2Nsa291dF9kcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpOwo+ICt1MzIgaW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCj4gKwkJCSAgICAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2RpZmll
cik7Cj4gIGJvb2wgaW50ZWxfcGxhbmVfY2FuX3JlbWFwKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwo+ICAKPiAgI2VuZGlmCj4gLS0gCj4gMi4yMS4wCj4gCgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
