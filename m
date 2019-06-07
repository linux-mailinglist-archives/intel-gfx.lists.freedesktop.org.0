Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2D43944C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 20:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 741A889E3E;
	Fri,  7 Jun 2019 18:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9853D89E36
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 18:27:07 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k8so4277695edr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 11:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=8kCDCieMLmldmK2W4BYM5BahSHh9W1C7qTFz6DelB3I=;
 b=Bmq74WFdefIk5hRR1tVgUqTvx5Vqusg9QSqobgV4zfwXeQcxXf0bn0LdvM4XGT5ZJ3
 RIT7wX+ajJui9kJg4uXQA+EBjScga5lkvAEYTLv23TMUeKzis1P1OkJknvz7NK176Sba
 WteTcvjwPb7KvNKOZ5wkCn7h4pXhKtK5f5LWAm5xWpjwpr4TmU7fejsrlZ1g+4Woqln1
 HCZcEpJC4nrwkP80TlkxUffRLXVQ18wABhgGcNe3QHCjDAi1DuOiQ8o0Yw8mDwhBZ9DB
 GFQn1GkjiFfwBeWdMbOIRoYYebUeT3aFkzaNcFxIsq2XNjgmkg/4lR9eU1wlqaU3sJho
 hQmw==
X-Gm-Message-State: APjAAAXVLYsNvvZ/QsXJxRvJU4rPl2Jg7MYrlU/8hbvOxAzgPXJi3c3A
 bBuL4eYV+3MX1meybMs5PLIBbw==
X-Google-Smtp-Source: APXvYqwOUoHyH5L5O70eBQw2y5PufyBCm24YvCewEq8IGStBbAWVVjJOyPWVO4woCZ7G9p9d48cPSQ==
X-Received: by 2002:a50:cac1:: with SMTP id f1mr57466167edi.97.1559932026171; 
 Fri, 07 Jun 2019 11:27:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id g18sm700350edh.13.2019.06.07.11.27.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 11:27:05 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:27:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190607182703.GM21222@phenom.ffwll.local>
References: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
 <20190607162611.23514-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607162611.23514-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=8kCDCieMLmldmK2W4BYM5BahSHh9W1C7qTFz6DelB3I=;
 b=Ai36x2/bUpo3TBYhmry1v5ukLMwvWUrZMFZzDlmfXOpgTb1hkyHe21EA99NiVxCHb5
 iZIIhcBpIAIe5bvzkT6Bu9YIqONICjvZYgb4JX2V76DaXUlkvCMNOYp8OnTIpzJcvdgH
 AZdNzFPyLj/orbPIqxAsktjiWF8npL7w9dGes=
Subject: Re: [Intel-gfx] [PATCH 2/4] drm: Refuse to create zero width/height
 cmdline modes
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

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMDc6MjY6MDlQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IElmIHRoZSB1c2VyIHNwZWNpZmllcyB6ZXJvIHdpZHRoL2hlaWdodCBjbWRsaW5l
IG1vZGUgaTkxNSB3aWxsCj4gYmxvdyB1cCBhcyB0aGUgZmJkZXYgcGF0aCB3aWxsIGJ5cGFzcyB0
aGUgcmVndWxhciBmYiBzYW5pdHkKPiBjaGVjayB0aGF0IHdvdWxkIG90aGVyd2lzZSBoYXZlIHJl
ZnVzZWQgdG8gY3JlYXRlIGEgZnJhbWVidWZmZXIKPiB3aXRoIHplcm8gd2lkdGgvaGVpZ2h0Lgo+
IAo+IFRoZSByZWFzb24gSSB0aG91Z2h0IHRvIHRyeSB0aGlzIGlzIHNvIHRoYXQgSSBjYW4gZm9y
Y2UgYSBzcGVjaWZpYwo+IGRlcHRoIGZvciBmYmRldiB3aXRob3V0IGFjdHVhbGx5IGhhdmluZyB0
byBoYXJkY29kZSB0aGUgbW9kZQo+IG9uIHRoZSBrZXJuZWwgY21kbGluZS4gRWcuIGlmIEkgcGFz
cyB2aWRlbz0weDAtOCBJIHdpbGwgZ2V0IGFuCj4gOGJwcCBmcmFtZWJ1ZmZlciBhdCBteSBtb25p
dG9yJ3MgbmF0aXZlIHJlc29sdXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1ha2VzIHNlbnNlLiBNYXliZSB3
ZSBzaG91bGQgZml4IHRoZSBmYmRldiBoZWxwZXIgY29kZSBhbmQgc3RvcCBpdCBmcm9tCmJ5cGFz
c2luZyBub3JtYWwgZHJtX2ZiIHNhbml0eSBjaGVja3MgdG9vLCBidXQgdGhhdCdzIGFub3RoZXIg
c3RvcnkuClByb2JhYmx5IHdvdWxkIG1lYW4gcmViYXNpbmcgc29tZWhvdyBpbnRvIE5vcmFsZidz
IGdlbmVyaWMgZmJkZXYgc3R1ZmYsCndoaWNoIGRvZXNuJ3QgdXNlIG1hZ2ljIGRpcmVjdCBhY2Nl
c3MgdG8gdGhlIGRyaXZlciBhbnltb3JlLgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVz
LmMgfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
bW9kZXMuYwo+IGluZGV4IDVhMDdhMjhmZWM2ZC4uYjM2MjQ4YTVkODI2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
bW9kZXMuYwo+IEBAIC0xNTkzLDYgKzE1OTMsOSBAQCBkcm1fbW9kZV9jcmVhdGVfZnJvbV9jbWRs
aW5lX21vZGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgewo+ICAJc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGU7Cj4gIAo+ICsJaWYgKGNtZC0+eHJlcyA9PSAwIHx8IGNtZC0+eXJlcyA9
PSAwKQo+ICsJCXJldHVybiBOVUxMOwo+ICsKPiAgCWlmIChjbWQtPmN2dCkKPiAgCQltb2RlID0g
ZHJtX2N2dF9tb2RlKGRldiwKPiAgCQkJCSAgICBjbWQtPnhyZXMsIGNtZC0+eXJlcywKPiAtLSAK
PiAyLjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
