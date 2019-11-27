Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E3E10B570
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED576E46F;
	Wed, 27 Nov 2019 18:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A216E46D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:18:44 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id u18so8110994wmc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 10:18:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SBNQoh/xgW120nGDFrCv0dhzQRuYp91+EinwJay67WM=;
 b=b+n5Bo+u7wfXt4F/MK5935F4Kass8MkDDTgsE867yPW7aMLy5P1HKaz/0FQ1ugKAvo
 bqLoZFQsG5p8PlgSOQgDAX8rbscKqAJE2ayxj9SnEWH1qa4TLgGJGg6g3W1olV8kxVM2
 IVIsVIkCSKZQ3y8OMt8ucjVux7LWzbtvHeucG9hqxSeQ+ooBU8SDOq0lw5GMowkdxsXp
 OA4ItYPoCSCyrDZHu/RjLk0bKE21aStUUCdgrvp3EjV8JvnDjOWeRAzhvgG+qK15nd2u
 +qx0pzSN6M+gppwF+Myw6rfkQj+ALTW6w8udckvaOr+RSS99kNbGofnUILT7rLcEAlNF
 R6Vg==
X-Gm-Message-State: APjAAAXVQhCtRt/LA2vOt4OgytyEyXGRlDx/sdzFzStrvTWgWsrsdkA2
 Bp1tG4110SR3NqxqXwbmgYzRKg==
X-Google-Smtp-Source: APXvYqwSG5srzXOK+HpSRTs84mj7Hk8tRD94Qh8zDyJ2micrmjkRgyaiGXEBTlX5SES5lDBpvcxGkA==
X-Received: by 2002:a1c:8153:: with SMTP id c80mr5832881wmd.58.1574878723088; 
 Wed, 27 Nov 2019 10:18:43 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id a64sm8669003wmc.18.2019.11.27.10.18.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:18:42 -0800 (PST)
Date: Wed, 27 Nov 2019 19:18:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191127181840.GH406127@phenom.ffwll.local>
References: <cover.1574871797.git.jani.nikula@intel.com>
 <e2b1685703878612093a37189d37685303fa15e9.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2b1685703878612093a37189d37685303fa15e9.1574871797.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=SBNQoh/xgW120nGDFrCv0dhzQRuYp91+EinwJay67WM=;
 b=RAcBu0UH5YqDFU4oiOk9cPoUTS7+8GHZQTWSn0Ly/FBH0obKw7Vv5td/PFuGsh/clF
 kIoF/lkVCmst+ANoG0pim+ZgHZcKR8IEYKmIat8Wxb82Kj3nOhwqWAOeq/bm57VxTkuN
 0d4wDvZGwKpd/3B1hJ/mAtlJQG12Y8g5S38ag=
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/fb-helper: don't preserve fb_ops
 across deferred IO use
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
Cc: linux-fbdev@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDY6MzE6NThQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRGVmZXJyZWQgSU8gbm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgo+IAo+IENjOiBOb3Jh
bGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMgfCAxOCArKy0t
LS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4gaW5kZXggMGMwODhlYTcwYWQw
Li5hNWEyYTUzOGQwODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxw
ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMKPiBAQCAtMTk1NCw3
ICsxOTU0LDYgQEAgc3RhdGljIGludCBkcm1fZmJkZXZfZmJfcmVsZWFzZShzdHJ1Y3QgZmJfaW5m
byAqaW5mbywgaW50IHVzZXIpCj4gIHN0YXRpYyB2b2lkIGRybV9mYmRldl9jbGVhbnVwKHN0cnVj
dCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIpCj4gIHsKPiAgCXN0cnVjdCBmYl9pbmZvICpmYmkg
PSBmYl9oZWxwZXItPmZiZGV2Owo+IC0Jc3RydWN0IGZiX29wcyAqZmJvcHMgPSBOVUxMOwo+ICAJ
dm9pZCAqc2hhZG93ID0gTlVMTDsKPiAgCj4gIAlpZiAoIWZiX2hlbHBlci0+ZGV2KQo+IEBAIC0x
OTYzLDE1ICsxOTYyLDExIEBAIHN0YXRpYyB2b2lkIGRybV9mYmRldl9jbGVhbnVwKHN0cnVjdCBk
cm1fZmJfaGVscGVyICpmYl9oZWxwZXIpCj4gIAlpZiAoZmJpICYmIGZiaS0+ZmJkZWZpbykgewo+
ICAJCWZiX2RlZmVycmVkX2lvX2NsZWFudXAoZmJpKTsKPiAgCQlzaGFkb3cgPSBmYmktPnNjcmVl
bl9idWZmZXI7Cj4gLQkJZmJvcHMgPSBmYmktPmZib3BzOwo+ICAJfQo+ICAKPiAgCWRybV9mYl9o
ZWxwZXJfZmluaShmYl9oZWxwZXIpOwo+ICAKPiAtCWlmIChzaGFkb3cpIHsKPiAtCQl2ZnJlZShz
aGFkb3cpOwo+IC0JCWtmcmVlKGZib3BzKTsKPiAtCX0KPiArCXZmcmVlKHNoYWRvdyk7Cj4gIAo+
ICAJZHJtX2NsaWVudF9mcmFtZWJ1ZmZlcl9kZWxldGUoZmJfaGVscGVyLT5idWZmZXIpOwo+ICB9
Cj4gQEAgLTIwNjIsMjMgKzIwNTcsMTQgQEAgc3RhdGljIGludCBkcm1fZmJfaGVscGVyX2dlbmVy
aWNfcHJvYmUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciwKPiAgCWRybV9mYl9oZWxw
ZXJfZmlsbF9pbmZvKGZiaSwgZmJfaGVscGVyLCBzaXplcyk7Cj4gIAo+ICAJaWYgKGRybV9mYmRl
dl91c2Vfc2hhZG93X2ZiKGZiX2hlbHBlcikpIHsKPiAtCQlzdHJ1Y3QgZmJfb3BzICpmYm9wczsK
PiAgCQl2b2lkICpzaGFkb3c7Cj4gIAo+IC0JCS8qCj4gLQkJICogZmJfZGVmZXJyZWRfaW9fY2xl
YW51cCgpIGNsZWFycyAmZmJvcHMtPmZiX21tYXAgc28gYSBwZXIKPiAtCQkgKiBpbnN0YW5jZSB2
ZXJzaW9uIGlzIG5lY2Vzc2FyeS4KPiAtCQkgKi8KPiAtCQlmYm9wcyA9IGt6YWxsb2Moc2l6ZW9m
KCpmYm9wcyksIEdGUF9LRVJORUwpOwo+ICAJCXNoYWRvdyA9IHZ6YWxsb2MoZmJpLT5zY3JlZW5f
c2l6ZSk7Cj4gLQkJaWYgKCFmYm9wcyB8fCAhc2hhZG93KSB7Cj4gLQkJCWtmcmVlKGZib3BzKTsK
PiArCQlpZiAoIXNoYWRvdykgewo+ICAJCQl2ZnJlZShzaGFkb3cpOwo+ICAJCQlyZXR1cm4gLUVO
T01FTTsKPiAgCQl9Cj4gIAo+IC0JCSpmYm9wcyA9ICpmYmktPmZib3BzOwo+IC0JCWZiaS0+ZmJv
cHMgPSBmYm9wczsKPiAgCQlmYmktPnNjcmVlbl9idWZmZXIgPSBzaGFkb3c7Cj4gIAkJZmJpLT5m
YmRlZmlvID0gJmRybV9mYmRldl9kZWZpbzsKPiAgCj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVs
IFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cu
ZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
