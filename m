Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42163F13BF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 11:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA436ECAD;
	Wed,  6 Nov 2019 10:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5336ECAD
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 10:19:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id l10so25040701wrb.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Nov 2019 02:19:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=6Hu4ty2OqQ4N5MOxUG4ZInpxXutsVnccihQHZ/RqmK8=;
 b=ek25RZzaQdsUouysEn/+dK9XYbNsM9s+RWkbAos2aBq35OuzIc7XTgccKUJ66+QBxW
 jFHAYSOrj+IfBD+c54s3gQDmPYRUy0RBViDZhAl9CZK67dgQWNO/fPoxHXOEn4BRMDrx
 PVZ9yVnH+IPe8zX2TycyOyINrmI7hCRs5YJfNi7Jm/pYChDOetRT755Te7rY94bpgMkE
 ZQ1wBYFr3tLG37VV7MYeCPH4mfZMzKBCAPU604+hOIE8HedvlSwvs+i53duay3V15Ckd
 D2bBgV5EV5gI0WS6D78P489svY61XNq1flCnycPl43CP9GyWXZ+VTUWwsjMtAlchoeDv
 0n6w==
X-Gm-Message-State: APjAAAU2TVP6oBhVsS3MhqWy62OnKgJ0D0hz+Mxv5ZAMaOB3uJARhwSl
 lCqP0mqtQc3PuvXlpfIvKSgzKoT/SP4=
X-Google-Smtp-Source: APXvYqxdb4YKUPhT/0QrUfjv0BDRWFH+Mc3Az2MVchzpQ9gfxXLRL9124v3JZhvAjCnnc+tt+fPVeg==
X-Received: by 2002:adf:ea50:: with SMTP id j16mr1787666wrn.295.1573035593002; 
 Wed, 06 Nov 2019 02:19:53 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id v184sm2621952wme.31.2019.11.06.02.19.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 02:19:52 -0800 (PST)
Date: Wed, 6 Nov 2019 11:19:50 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191106101950.GE23790@phenom.ffwll.local>
References: <20191106100716.18181-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106100716.18181-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6Hu4ty2OqQ4N5MOxUG4ZInpxXutsVnccihQHZ/RqmK8=;
 b=MRpL6NNtPxMNY5ENPiYgGYOenpFmVc3eKUY119CbuxTEKUXAofQk4ww/eko6e4n4RU
 wBqEGx8uhrRcOZ1QAIICayFaETg+T3SzisA0UjwYhLsXjezJQ6JFkFlGLRoYGLGGNMoq
 BGc4Vp0mIQXoC3wjEdDRMueI4Yms/3ENuZjUY=
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Expose a method for creating
 anonymous struct file around drm_minor
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTA6MDc6MTRBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFNvbWV0aW1lcyB3ZSBuZWVkIHRvIGNyZWF0ZSBhIHN0cnVjdCBmaWxlIHRvIHdyYXAg
YSBkcm1fZGV2aWNlLCBhcyBpdAo+IHRoZSB1c2VyIHdlcmUgdG8gaGF2ZSBvcGVuZWQgL2Rldi9k
cmkvY2FyZDAgYnV0IHRvIGRvIHNvIGFub255bW91c2x5Cj4gKGkuZS4gZm9yIGludGVybmFsIHVz
ZSkuIFByb3ZpZGUgYSB1dGlsaXR5IG1ldGhvZCB0byBjcmVhdGUgYSBzdHJ1Y3QKPiBmaWxlIHdp
dGggdGhlIGRybV9kZXZpY2UtPmRyaXZlci5mb3BzLCB0aGF0IHdyYXAgdGhlIGRybV9kZXZpY2Uu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CgpGb3IgcHJvcGVyIGludGVybmFsIGFjY2VzcyB3ZSBhbHJlYWR5IGhhdmUgZHJtX2NsaWVu
dF9vcGVuLCBzbyBJIHRoaW5rCnRoaXMgaGFzIGxpbWl0ZWQgKGJ1dCBnb29kIHVzZSkgaW4gc2Vs
ZnRlc3RzIG9ubHkuIFNvCkVYUE9SVF9TWU1CT0xfRk9SX1RFU1RTX09OTFkgcGx1cyBtYXliZSBh
IGNsZWFyZXIgbmFtZSBmb3IgdGhlIGludGVuZGVkCnVzZSBsaWtlIGRybV9maWxlX21vY2tfb3Bl
bj8KCkFzaWRlIGZyb20gdGhpcyBJIGxpa2UuCi1EYW5pZWwKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2RybV9maWxlLmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2RybS9kcm1fZmlsZS5oICAgICB8ICAzICsrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDQyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9maWxlLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZpbGUuYwo+IGluZGV4IGVhMzRiYzk5MTg1
OC4uY2M1NWMwY2Q1ODI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmlsZS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9maWxlLmMKPiBAQCAtMzEsNyArMzEsOSBAQAo+
ICAgKiBPVEhFUiBERUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCj4gICAqLwo+ICAKPiArI2luY2x1
ZGUgPGxpbnV4L2Fub25faW5vZGVzLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2ZpbGUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+
ICAjaW5jbHVkZSA8bGludXgvcGNpLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wb2xsLmg+Cj4gQEAg
LTc1NCwzICs3NTYsNDAgQEAgdm9pZCBkcm1fc2VuZF9ldmVudChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCBzdHJ1Y3QgZHJtX3BlbmRpbmdfZXZlbnQgKmUpCj4gIAlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZkZXYtPmV2ZW50X2xvY2ssIGlycWZsYWdzKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRy
bV9zZW5kX2V2ZW50KTsKPiArCj4gKy8qKgo+ICsgKiBhbm9uX2RybV9nZXRmaWxlIC0gQ3JlYXRl
IGEgbmV3IHN0cnVjdCBmaWxlIGZvciB0aGUgZHJtIGRldmljZQo+ICsgKiBAbWlub3I6IGRybSBt
aW5vciB0byB3cmFwIChlLmcuIGRybV9kZXZpY2UtPnByaW1hcnkpCj4gKyAqIEBmbGFnczogZmls
ZSBjcmVhdGlvbiBtb2RlIChPX1JEV1IgZXRjKQo+ICsgKgo+ICsgKiBUaGlzIGNyZWF0ZSBhIG5l
dyBzdHJ1Y3QgZmlsZSB0aGF0IHdyYXBzIGEgRFJNIGZpbGUgY29udGV4dCBhcm91bmQgYQo+ICsg
KiBEUk0gbWlub3IuIFRoaXMgbWltaWNrcyB1c2Vyc3BhY2Ugb3BlbmluZyBlLmcuIC9kZXYvZHJp
L2NhcmQwLCBidXQgd2l0aG91dAo+ICsgKiBpbnZva2luZyB1c2Vyc3BhY2UuIFRoZSBzdHJ1Y3Qg
ZmlsZSBtYXkgYmUgb3BlcmF0ZWQgb24gdXNpbmcgaXRzIGZfb3AKPiArICogKHRoZSBkcm1fZGV2
aWNlLmRyaXZlci5mb3BzKSB0byBtaW1pY2sgdXNlcnNwYWNlIG9wZXJhdGlvbnMsIG9yIGJlIHN1
cHBsaWVkCj4gKyAqIHRvIHVzZXJzcGFjZSBmYWNpbmcgZnVuY3Rpb25zIGFzIGFuIGludGVybmFs
L2Fub255bW91cyBjbGllbnQuCj4gKyAqCj4gKyAqIFJFVFVSTlM6Cj4gKyAqIFBvaW50ZXIgdG8g
bmV3bHkgY3JlYXRlZCBzdHJ1Y3QgZmlsZSwgRVJSX1BUUiBvbiBmYWlsdXJlLgo+ICsgKi8KPiAr
c3RydWN0IGZpbGUgKmFub25fZHJtX2dldGZpbGUoc3RydWN0IGRybV9taW5vciAqbWlub3IsIHVu
c2lnbmVkIGludCBmbGFncykKPiArewo+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IG1pbm9y
LT5kZXY7Cj4gKwlzdHJ1Y3QgZHJtX2ZpbGUgKnByaXY7Cj4gKwlzdHJ1Y3QgZmlsZSAqZmlsZTsK
PiArCj4gKwlwcml2ID0gZHJtX2ZpbGVfYWxsb2MobWlub3IpOwo+ICsJaWYgKElTX0VSUihwcml2
KSkKPiArCQlyZXR1cm4gRVJSX0NBU1QocHJpdik7Cj4gKwo+ICsJZmlsZSA9IGFub25faW5vZGVf
Z2V0ZmlsZSgiZHJtIiwgZGV2LT5kcml2ZXItPmZvcHMsIHByaXYsIGZsYWdzKTsKPiArCWlmIChJ
U19FUlIoZmlsZSkpIHsKPiArCQlkcm1fZmlsZV9mcmVlKHByaXYpOwo+ICsJCXJldHVybiBmaWxl
Owo+ICsJfQo+ICsKPiArCWRybV9kZXZfZ2V0KGRldik7Cj4gKwlwcml2LT5maWxwID0gZmlsZTsK
PiArCj4gKwlyZXR1cm4gZmlsZTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MKGFub25fZHJtX2dldGZp
bGUpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZmlsZS5oIGIvaW5jbHVkZS9kcm0v
ZHJtX2ZpbGUuaAo+IGluZGV4IDY3YWY2MGJiNTI3YS4uYjk2MzUzNTk2NGY3IDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvZHJtL2RybV9maWxlLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZmlsZS5o
Cj4gQEAgLTQyLDYgKzQyLDcgQEAgc3RydWN0IGRtYV9mZW5jZTsKPiAgc3RydWN0IGRybV9maWxl
Owo+ICBzdHJ1Y3QgZHJtX2RldmljZTsKPiAgc3RydWN0IGRldmljZTsKPiArc3RydWN0IGZpbGU7
Cj4gIAo+ICAvKgo+ICAgKiBGSVhNRTogTm90IHN1cmUgd2Ugd2FudCB0byBoYXZlIGRybV9taW5v
ciBoZXJlIGluIHRoZSBlbmQsIGJ1dCB0byBhdm9pZAo+IEBAIC0zODcsNCArMzg4LDYgQEAgdm9p
ZCBkcm1fZXZlbnRfY2FuY2VsX2ZyZWUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgdm9pZCBk
cm1fc2VuZF9ldmVudF9sb2NrZWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9w
ZW5kaW5nX2V2ZW50ICplKTsKPiAgdm9pZCBkcm1fc2VuZF9ldmVudChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCBzdHJ1Y3QgZHJtX3BlbmRpbmdfZXZlbnQgKmUpOwo+ICAKPiArc3RydWN0IGZpbGUg
KmFub25fZHJtX2dldGZpbGUoc3RydWN0IGRybV9taW5vciAqbWlub3IsIHVuc2lnbmVkIGludCBm
bGFncyk7Cj4gKwo+ICAjZW5kaWYgLyogX0RSTV9GSUxFX0hfICovCj4gLS0gCj4gMi4yNC4wCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
