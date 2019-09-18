Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 398DBB6718
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 17:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1072E6F3D4;
	Wed, 18 Sep 2019 15:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55826F3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 15:27:50 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id x82so65117ywd.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 08:27:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=M3hf8cCNvIfB2JMS7vqoAeJ62Ea50r/Zbtv1qLI+AaE=;
 b=YCnUZJzRhNgxcwbRCOoPi0CJxb3i36am64P52qD56dyPI1we7QDhhOWosaGXlDAV1f
 Napxuw84Fwq6UVIxyKAp/dX5Uusj43544lu1iHq2kfAELkh7OXj8j/dJF1LLE04b3xVl
 XEA8gCoJKbceoOu/iwWJHJnhYn6OUz0VqBS9mzPYCFtIHjRut/Nhhxnz49uTPnxbSjJA
 mIaRd95CheT/lZWEfU8L02p37fPiJnvkfMYsKAk96qYv900saguLSz3j8r7IoTNSfr0M
 ISJGQj0C31n02L8PrM0RVMp379IKBugfze33fwSpdE4QsFeWzgYu76BitDAx3n64arr1
 Vt2Q==
X-Gm-Message-State: APjAAAVuG3vJECpQ0O/l0ueRNLxtWHYhKAzlPC0Pg4N1A8C5aTXX9v6F
 15RauKLneHUspkKqKZndn3DwaVhVVyCxpQ==
X-Google-Smtp-Source: APXvYqyTgMLTU43Cg/GdQczJTSgXTG0DfCf75VYJX8O1+hY/ffjBgON2k8V5Kv5nFupZB/Dy+1CCiA==
X-Received: by 2002:a81:9e49:: with SMTP id n9mr3569040ywj.450.1568820470061; 
 Wed, 18 Sep 2019 08:27:50 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d17sm1201790ywb.95.2019.09.18.08.27.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 08:27:49 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:27:48 -0400
From: Sean Paul <sean@poorly.run>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190918152748.GR218215@art_vandelay>
References: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=M3hf8cCNvIfB2JMS7vqoAeJ62Ea50r/Zbtv1qLI+AaE=;
 b=RbraNO4SewcZbhKVbH84gOK0Cvswt+bUe1DMtLtuzc1/wATQYymr4JgJ7xhbMdb8EV
 gv/8QqJiII9XK6VXQi1WhLROC3S59F7RNAoCMyvFQ59zNUP5tGA6AnmmhXfe/DHpRUQy
 6+5a1aXkZPNuPnX1+dCZJPvhZkY19VW39i28DlYgXzCiUl0VWMLzng/t3aotQQHG95G/
 asvbKqESy1N0Uga2uPpgguQOL5+Io7eUsIuWX7ewNRkc8MQE4x/mjoBPCrDqc2hiJrm9
 sKW0XtBjQH+am9LYxXgjBR8oZQA5cvzLMjjvxD30VXy3UrvFdf/lAOMOqGwqhj8gXs6V
 LlBA==
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Bump skl+ max plane width to
 5k for linear/x-tiled
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
Cc: Leho Kraav <leho@kraav.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDQ6NTA6NDNQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZSBvZmZpY2lhbGx5IHZhbGlkYXRlZCBwbGFuZSB3aWR0aCBsaW1pdCBpcyA0
ayBvbiBza2wrLCBob3dldmVyCj4gd2UgYWxyZWFkeSBoYWQgcGVvcGxlIHVzaW5nIDVrIGRpc3Bs
YXlzIGJlZm9yZSB3ZSBzdGFydGVkIHRvIGVuZm9yY2UKPiB0aGUgbGltaXQuIEFsc28gaXQgc2Vl
bXMgV2luZG93cyBhbGxvd3MgNWsgcmVzb2x1dGlvbnMgYXMgd2VsbAo+ICh0aG91Z2ggbm90IHN1
cmUgaWYgdGhleSBkbyBpdCB3aXRoIG9uZSBwbGFuZSBvciB0d28pLgo+IAo+IEFjY29yZGluZyB0
byBodyBmb2xrcyA1ayBzaG91bGQgd29yayB3aXRoIHRoZSBwb3NzaWJsZQo+IGV4Y2VwdGlvbiBv
ZiB0aGUgZm9sbG93aW5nIGZlYXR1cmVzOgo+IC0gWXRpbGUgKGFscmVhZHkgbGltaXRlZCB0byA0
aykKPiAtIEZQMTYgKGFscmVhZHkgbGltaXRlZCB0byA0aykKPiAtIHJlbmRlciBjb21wcmVzc2lv
biAoYWxyZWFkeSBsaW1pdGVkIHRvIDRrKQo+IC0gS1ZNUiBzcHJpdGUgYW5kIGN1cnNvciAoZG9u
J3QgY2FyZSkKPiAtIGhvcml6b250YWwgcGFubmluZyAobmVlZCB0byB2ZXJpZnkgdGhpcykKPiAt
IHBpcGUgYW5kIHBsYW5lIHNjYWxpbmcgKG5lZWQgdG8gdmVyaWZ5IHRoaXMpCj4gCj4gU28gYXBh
cnQgZnJvbSBsYXN0IHR3byBpdGVtcyBvbiB0aGF0IGxpc3Qgd2UgYXJlIGFscmVhZHkKPiBmaW5l
LiBXZSBzaG91bGQgcmVhbGx5IHZlcmlmeSB3aGF0IGhhcHBlbnMgd2l0aCB0aG9zZSBsYXN0Cj4g
dHdvIGl0ZW1zIGJ1dCBJIGRvbid0IGhhdmUgYSA1ayBkaXNwbGF5IG9uIGhhbmQgYXRtIHNvIGl0
J2xsCj4gaGF2ZSB0byB3YWl0Lgo+IAo+IEluIHRoZSBtZWFudGltZSBsZXQncyBqdXN0IGJ1bXAg
dGhlIGxpbWl0IGJhY2sgdXAgdG8gNWsgc2luY2UKPiBzZXZlcmFsIHVzZXJzIGhhdmUgYWxyZWFk
eSBiZWVuIHVzaW5nIGl0IHdpdGhvdXQgYXBwYXJlbnQgaXNzdWVzLgo+IEF0IGxlYXN0IHdlJ2xs
IGJlIG5vIHdvcnNlIG9mZiB0aGFuIHdlIHdlcmUgcHJpb3IgdG8gbG93ZXJpbmcKPiB0aGUgbGlt
aXRzLgo+IAo+IENjOiBMZWhvIEtyYWF2IDxsZWhvQGtyYWF2LmNvbT4KPiBDYzogU2VhbiBQYXVs
IDxzZWFuQHBvb3JseS5ydW4+CgpHcmVhdCwgdGhhbmsgeW91IQoKUmV2aWV3ZWQtYnk6IFNlYW4g
UGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gRml4ZXM6IDM3MmI5ZmZiNTc5OSAoImRybS9pOTE1OiBGaXgg
c2tsKyBtYXggcGxhbmUgd2lkdGgiKQo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1MDEKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKysrKysrLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMDZj
ZjIxNzE0NzRkLi40ZTYzMzQyZWE1OTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0zMjgyLDcgKzMyODIsMjAgQEAgc3RhdGljIGlu
dCBza2xfbWF4X3BsYW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+
ICAJc3dpdGNoIChmYi0+bW9kaWZpZXIpIHsKPiAgCWNhc2UgRFJNX0ZPUk1BVF9NT0RfTElORUFS
Ogo+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKPiAtCQlyZXR1cm4gNDA5NjsKPiAr
CQkvKgo+ICsJCSAqIFZhbGlkYXRlZCBsaW1pdCBpcyA0aywgYnV0IGhhcyA1ayBzaG91bGQKPiAr
CQkgKiB3b3JrIGFwYXJ0IGZyb20gdGhlIGZvbGxvd2luZyBmZWF0dXJlczoKPiArCQkgKiAtIFl0
aWxlIChhbHJlYWR5IGxpbWl0ZWQgdG8gNGspCj4gKwkJICogLSBGUDE2IChhbHJlYWR5IGxpbWl0
ZWQgdG8gNGspCj4gKwkJICogLSByZW5kZXIgY29tcHJlc3Npb24gKGFscmVhZHkgbGltaXRlZCB0
byA0aykKPiArCQkgKiAtIEtWTVIgc3ByaXRlIGFuZCBjdXJzb3IgKGRvbid0IGNhcmUpCj4gKwkJ
ICogLSBob3Jpem9udGFsIHBhbm5pbmcgKFRPRE8gdmVyaWZ5IHRoaXMpCj4gKwkJICogLSBwaXBl
IGFuZCBwbGFuZSBzY2FsaW5nIChUT0RPIHZlcmlmeSB0aGlzKQo+ICsJCSAqLwo+ICsJCWlmIChj
cHAgPT0gOCkKPiArCQkJcmV0dXJuIDQwOTY7Cj4gKwkJZWxzZQo+ICsJCQlyZXR1cm4gNTEyMDsK
PiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOgo+ICAJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWWZfVElMRURfQ0NTOgo+ICAJCS8qIEZJWE1FIEFVWCBwbGFuZT8gKi8KPiAtLSAKPiAy
LjIxLjAKPiAKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJv
bWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
