Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A0610A117
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 16:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44EC6E41D;
	Tue, 26 Nov 2019 15:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F8A6E41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 15:18:06 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g7so2223664wrw.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 07:18:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=o8cYWa43Q75FOZq8l28P7cUy7QS8yqk2ojYuut3Jjo8=;
 b=CFKJ+hRlLAfrluB8lyIjh1xU7MEPdsxrfOxZVDG1up472/tfuywYYrpmvEEjO+kUwq
 4xHgOR5eE8fWZq3BqIn31yTVlXwfaa48YxmKWdraARfPaniRtyXCEPLKRo/Cod1i46HH
 vFZTqNVrLfP6X4nlpvT5mu0m9losAcTz8yt6Kk7Qn9lRcMvIT0KAQahRCiq5bTGgty3v
 6Bs34U9AEOLNEV8hSS3OHBq1lxw7fAUL5hE+qLvMztalO0aOqx16gT5dawk5iAilaT6u
 pGHFACLZxUdwlSeytqmBU1e9sEutKGHC+H8HjW7Bh91//2ZxL4Vwlw/HOQruJ5LC4DCm
 mADg==
X-Gm-Message-State: APjAAAUEDAG+zya70/OJsK4Wxz3n8lsZ9bUQezfvRJoSRpqEKJubUbXS
 IpsmBNtlTv/sBvdqQzcIwk/nvmJOYOE=
X-Google-Smtp-Source: APXvYqztNHtGD5O94/O9RgB+2sxoGhcJqqDgXpQGORWoRxPnqc2nKwbbCh4iE6Nzueb+WrlwrDZXaQ==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr30324124wrv.77.1574781485315; 
 Tue, 26 Nov 2019 07:18:05 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id b1sm15306790wrs.74.2019.11.26.07.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 07:18:04 -0800 (PST)
Date: Tue, 26 Nov 2019 16:18:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191126151802.GB29965@phenom.ffwll.local>
References: <20191122175623.13565-1-ville.syrjala@linux.intel.com>
 <20191122175623.13565-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122175623.13565-5-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=o8cYWa43Q75FOZq8l28P7cUy7QS8yqk2ojYuut3Jjo8=;
 b=awW8pKineugW1TMdJ71NrBn/j9pFU2DsVIjR/T8S5jBUV4aEEkW1i6KC+IvV8FBbhb
 ZEIvH1VhgrZgPOFcyQH6RQVBuah+4ryDS1zKUWsStlM4yXR4EOVQ52zxRR0sW/lTH6AM
 OxRmeMrqDvMHqkkPCRDtdPA86dSrf5YWpjdqw=
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/selftests: Add drm_rect selftests
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

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDc6NTY6MjNQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IEFkZCBzZWxmdGVzdHMgZm9yIGRybV9yZWN0LiBBIGZldyBiYXNpYyBvbmVzIGZv
ciBjbGlwcGVkIGFuZCB1bmNsaXBwZWQKPiBjYXNlcywgYW5kIGEgZmV3IHNwZWNpYWwgb25lcyBm
b3Igc3BlY2lmaWMgYnVncyB3ZSBoYWQgaW4gdGhlIGNvZGUuCj4gCj4gSSdtIHRvbyBsYXp5IHRv
IHRoaW5rIG9mIG1vcmUgY29ybmVyIGNhc2VzIHRvIGNoZWNrIGF0IHRoaXMgdGltZS4KPiBNYXli
ZSBsYXRlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL01h
a2VmaWxlICAgICAgICAgICAgfCAgIDMgKy0KPiAgLi4uL2dwdS9kcm0vc2VsZnRlc3RzL2RybV9t
b2Rlc2V0X3NlbGZ0ZXN0cy5oIHwgICA0ICsKPiAgLi4uL2RybS9zZWxmdGVzdHMvdGVzdC1kcm1f
bW9kZXNldF9jb21tb24uaCAgIHwgICA3ICsKPiAgZHJpdmVycy9ncHUvZHJtL3NlbGZ0ZXN0cy90
ZXN0LWRybV9yZWN0LmMgICAgIHwgMjIzICsrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2Ry
bS9kcm1fcmVjdC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKwo+ICA1IGZpbGVzIGNo
YW5nZWQsIDIzOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX3JlY3QuYwo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL01ha2VmaWxlIGIvZHJpdmVycy9ncHUv
ZHJtL3NlbGZ0ZXN0cy9NYWtlZmlsZQo+IGluZGV4IGQyMTM3MzQyYjM3MS4uMDg1NmU0YjEyZjcw
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvTWFrZWZpbGUKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL01ha2VmaWxlCj4gQEAgLTEsNiArMSw3IEBACj4g
ICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICB0ZXN0LWRybV9tb2Rl
c2V0LXkgOj0gdGVzdC1kcm1fbW9kZXNldF9jb21tb24ubyB0ZXN0LWRybV9wbGFuZV9oZWxwZXIu
byBcCj4gICAgICAgICAgICAgICAgICAgICAgICB0ZXN0LWRybV9mb3JtYXQubyB0ZXN0LWRybV9m
cmFtZWJ1ZmZlci5vIFwKPiAtCQkgICAgICB0ZXN0LWRybV9kYW1hZ2VfaGVscGVyLm8gdGVzdC1k
cm1fZHBfbXN0X2hlbHBlci5vCj4gKwkJICAgICAgdGVzdC1kcm1fZGFtYWdlX2hlbHBlci5vIHRl
c3QtZHJtX2RwX21zdF9oZWxwZXIubyBcCj4gKwkJICAgICAgdGVzdC1kcm1fcmVjdC5vCj4gIAo+
ICBvYmotJChDT05GSUdfRFJNX0RFQlVHX1NFTEZURVNUKSArPSB0ZXN0LWRybV9tbS5vIHRlc3Qt
ZHJtX21vZGVzZXQubyB0ZXN0LWRybV9jbWRsaW5lX3BhcnNlci5vCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9zZWxmdGVzdHMvZHJtX21vZGVzZXRfc2VsZnRlc3RzLmggYi9kcml2ZXJz
L2dwdS9kcm0vc2VsZnRlc3RzL2RybV9tb2Rlc2V0X3NlbGZ0ZXN0cy5oCj4gaW5kZXggMTg5OGRl
MGI0YTRkLi43ODJlMjg1Y2EzODMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NlbGZ0
ZXN0cy9kcm1fbW9kZXNldF9zZWxmdGVzdHMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zZWxm
dGVzdHMvZHJtX21vZGVzZXRfc2VsZnRlc3RzLmgKPiBAQCAtNiw2ICs2LDEwIEBACj4gICAqCj4g
ICAqIFRlc3RzIGFyZSBleGVjdXRlZCBpbiBvcmRlciBieSBpZ3QvZHJtX3NlbGZ0ZXN0c19oZWxw
ZXIKPiAgICovCj4gK3NlbGZ0ZXN0KGRybV9yZWN0X2NsaXBfc2NhbGVkX2Rpdl9ieV96ZXJvLCBp
Z3RfZHJtX3JlY3RfY2xpcF9zY2FsZWRfZGl2X2J5X3plcm8pCj4gK3NlbGZ0ZXN0KGRybV9yZWN0
X2NsaXBfc2NhbGVkX25vdF9jbGlwcGVkLCBpZ3RfZHJtX3JlY3RfY2xpcF9zY2FsZWRfbm90X2Ns
aXBwZWQpCj4gK3NlbGZ0ZXN0KGRybV9yZWN0X2NsaXBfc2NhbGVkX2NsaXBwZWQsIGlndF9kcm1f
cmVjdF9jbGlwX3NjYWxlZF9jbGlwcGVkKQo+ICtzZWxmdGVzdChkcm1fcmVjdF9jbGlwX3NjYWxl
ZF9zaWduZWRfdnNfdW5zaWduZWQsIGlndF9kcm1fcmVjdF9jbGlwX3NjYWxlZF9zaWduZWRfdnNf
dW5zaWduZWQpCj4gIHNlbGZ0ZXN0KGNoZWNrX3BsYW5lX3N0YXRlLCBpZ3RfY2hlY2tfcGxhbmVf
c3RhdGUpCj4gIHNlbGZ0ZXN0KGNoZWNrX2RybV9mb3JtYXRfYmxvY2tfd2lkdGgsIGlndF9jaGVj
a19kcm1fZm9ybWF0X2Jsb2NrX3dpZHRoKQo+ICBzZWxmdGVzdChjaGVja19kcm1fZm9ybWF0X2Js
b2NrX2hlaWdodCwgaWd0X2NoZWNrX2RybV9mb3JtYXRfYmxvY2tfaGVpZ2h0KQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX21vZGVzZXRfY29tbW9uLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX21vZGVzZXRfY29tbW9uLmgKPiBp
bmRleCAwZmNiOGJiYzZhMWIuLmNmYjUxZDhkYTJiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX21vZGVzZXRfY29tbW9uLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc2VsZnRlc3RzL3Rlc3QtZHJtX21vZGVzZXRfY29tbW9uLmgKPiBAQCAtMyw2ICsz
LDkgQEAKPiAgI2lmbmRlZiBfX1RFU1RfRFJNX01PREVTRVRfQ09NTU9OX0hfXwo+ICAjZGVmaW5l
IF9fVEVTVF9EUk1fTU9ERVNFVF9DT01NT05fSF9fCj4gIAo+ICsjaW5jbHVkZSA8bGludXgvZXJy
bm8uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3ByaW50ay5oPgo+ICsKPiAgI2RlZmluZSBGQUlMKHRl
c3QsIG1zZywgLi4uKSBcCj4gIAlkbyB7IFwKPiAgCQlpZiAodGVzdCkgeyBcCj4gQEAgLTEzLDYg
KzE2LDEwIEBACj4gIAo+ICAjZGVmaW5lIEZBSUxfT04oeCkgRkFJTCgoeCksICIlcyIsICJGQUlM
X09OKCIgX19zdHJpbmdpZnkoeCkgIilcbiIpCj4gIAo+ICtpbnQgaWd0X2RybV9yZWN0X2NsaXBf
c2NhbGVkX2Rpdl9ieV96ZXJvKHZvaWQgKmlnbm9yZWQpOwo+ICtpbnQgaWd0X2RybV9yZWN0X2Ns
aXBfc2NhbGVkX25vdF9jbGlwcGVkKHZvaWQgKmlnbm9yZWQpOwo+ICtpbnQgaWd0X2RybV9yZWN0
X2NsaXBfc2NhbGVkX2NsaXBwZWQodm9pZCAqaWdub3JlZCk7Cj4gK2ludCBpZ3RfZHJtX3JlY3Rf
Y2xpcF9zY2FsZWRfc2lnbmVkX3ZzX3Vuc2lnbmVkKHZvaWQgKmlnbm9yZWQpOwo+ICBpbnQgaWd0
X2NoZWNrX3BsYW5lX3N0YXRlKHZvaWQgKmlnbm9yZWQpOwo+ICBpbnQgaWd0X2NoZWNrX2RybV9m
b3JtYXRfYmxvY2tfd2lkdGgodm9pZCAqaWdub3JlZCk7Cj4gIGludCBpZ3RfY2hlY2tfZHJtX2Zv
cm1hdF9ibG9ja19oZWlnaHQodm9pZCAqaWdub3JlZCk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9zZWxmdGVzdHMvdGVzdC1kcm1fcmVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL3NlbGZ0
ZXN0cy90ZXN0LWRybV9yZWN0LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMC4uM2E1ZmYzODMyMWY0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9zZWxmdGVzdHMvdGVzdC1kcm1fcmVjdC5jCj4gQEAgLTAsMCArMSwyMjMgQEAKPiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArLyoKPiArICogVGVzdCBjYXNlcyBm
b3IgdGhlIGRybV9yZWN0IGZ1bmN0aW9ucwo+ICsgKi8KPiArCj4gKyNkZWZpbmUgcHJfZm10KGZt
dCkgImRybV9yZWN0OiAiIGZtdAo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2xpbWl0cy5oPgo+ICsK
PiArI2luY2x1ZGUgPGRybS9kcm1fcmVjdC5oPgo+ICsKPiArI2luY2x1ZGUgInRlc3QtZHJtX21v
ZGVzZXRfY29tbW9uLmgiCj4gKwo+ICtpbnQgaWd0X2RybV9yZWN0X2NsaXBfc2NhbGVkX2Rpdl9i
eV96ZXJvKHZvaWQgKmlnbm9yZWQpCj4gK3sKPiArCXN0cnVjdCBkcm1fcmVjdCBzcmMsIGRzdCwg
Y2xpcDsKPiArCWJvb2wgdmlzaWJsZTsKPiArCj4gKwkvKgo+ICsJICogTWFrZSBzdXJlIHdlIGRv
bid0IGRpdmlkZSBieSB6ZXJvIHdoZW4gZHN0Cj4gKwkgKiB3aWR0aC9oZWlnaHQgaXMgemVybyBh
bmQgZHN0IGFuZCBjbGlwIGRvIG5vdCBpbnRlcnNlY3QuCj4gKwkgKi8KPiArCWRybV9yZWN0X2lu
aXQoJnNyYywgMCwgMCwgMCwgMCk7Cj4gKwlkcm1fcmVjdF9pbml0KCZkc3QsIDAsIDAsIDAsIDAp
Owo+ICsJZHJtX3JlY3RfaW5pdCgmY2xpcCwgMSwgMSwgMSwgMSk7Cj4gKwl2aXNpYmxlID0gZHJt
X3JlY3RfY2xpcF9zY2FsZWQoJnNyYywgJmRzdCwgJmNsaXApOwo+ICsJRkFJTCh2aXNpYmxlLCAi
RGVzdGluYXRpb24gbm90IGJlIHZpc2libGVcbiIpOwoJCQkgICAgICAgICAgXiAic2hvdWxkIiBt
aXNzaW5nCgo+ICsJRkFJTChkcm1fcmVjdF92aXNpYmxlKCZzcmMpLCAiU291cmNlIHNob3VsZCBu
b3QgYmUgdmlzaWJsZVxuIik7Cj4gKwo+ICsJZHJtX3JlY3RfaW5pdCgmc3JjLCAwLCAwLCAwLCAw
KTsKPiArCWRybV9yZWN0X2luaXQoJmRzdCwgMywgMywgMCwgMCk7Cj4gKwlkcm1fcmVjdF9pbml0
KCZjbGlwLCAxLCAxLCAxLCAxKTsKPiArCXZpc2libGUgPSBkcm1fcmVjdF9jbGlwX3NjYWxlZCgm
c3JjLCAmZHN0LCAmY2xpcCk7Cj4gKwlGQUlMKHZpc2libGUsICJEZXN0aW5hdGlvbiBub3QgYmUg
dmlzaWJsZVxuIik7CgkJCSAgICAgICAgICBeICJzaG91bGQiIG1pc3NpbmcKCj4gKwlyZXR1cm4g
MDsKPiArfQo+ICsKPiAraW50IGlndF9kcm1fcmVjdF9jbGlwX3NjYWxlZF9ub3RfY2xpcHBlZCh2
b2lkICppZ25vcmVkKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX3JlY3Qgc3JjLCBkc3QsIGNsaXA7Cj4g
Kwlib29sIHZpc2libGU7Cj4gKwo+ICsJLyogMToxIHNjYWxpbmcgKi8KPiArCWRybV9yZWN0X2lu
aXQoJnNyYywgMCwgMCwgMSA8PCAxNiwgMSA8PCAxNik7Cj4gKwlkcm1fcmVjdF9pbml0KCZkc3Qs
IDAsIDAsIDEsIDEpOwo+ICsJZHJtX3JlY3RfaW5pdCgmY2xpcCwgMCwgMCwgMSwgMSk7Cj4gKwo+
ICsJdmlzaWJsZSA9IGRybV9yZWN0X2NsaXBfc2NhbGVkKCZzcmMsICZkc3QsICZjbGlwKTsKPiAr
Cj4gKwlGQUlMKHNyYy54MSAhPSAwIHx8IHNyYy54MiAhPSAxIDw8IDE2IHx8Cj4gKwkgICAgIHNy
Yy55MSAhPSAwIHx8IHNyYy55MiAhPSAxIDw8IDE2LAo+ICsJICAgICAiU291cmNlIGJhZGx5IGNs
aXBwZWRcbiIpOwo+ICsJRkFJTChkc3QueDEgIT0gMCB8fCBkc3QueDIgIT0gMSB8fAo+ICsJICAg
ICBkc3QueTEgIT0gMCB8fCBkc3QueTIgIT0gMSwKPiArCSAgICAgIkRlc3RpbmF0aW9uIGJhZGx5
IGNsaXBwZWRcbiIpOwo+ICsJRkFJTCghdmlzaWJsZSwgIkRlc3RpbmF0aW9uIHNob3VsZCBiZSB2
aXNpYmxlXG4iKTsKPiArCUZBSUwoIWRybV9yZWN0X3Zpc2libGUoJnNyYyksICJTb3VyY2Ugc2hv
dWxkIGJlIHZpc2libGVcbiIpOwo+ICsKPiArCS8qIDI6MSBzY2FsaW5nICovCj4gKwlkcm1fcmVj
dF9pbml0KCZzcmMsIDAsIDAsIDIgPDwgMTYsIDIgPDwgMTYpOwo+ICsJZHJtX3JlY3RfaW5pdCgm
ZHN0LCAwLCAwLCAxLCAxKTsKPiArCWRybV9yZWN0X2luaXQoJmNsaXAsIDAsIDAsIDEsIDEpOwo+
ICsKPiArCXZpc2libGUgPSBkcm1fcmVjdF9jbGlwX3NjYWxlZCgmc3JjLCAmZHN0LCAmY2xpcCk7
Cj4gKwo+ICsJRkFJTChzcmMueDEgIT0gMCB8fCBzcmMueDIgIT0gMiA8PCAxNiB8fAo+ICsJICAg
ICBzcmMueTEgIT0gMCB8fCBzcmMueTIgIT0gMiA8PCAxNiwKPiArCSAgICAgIlNvdXJjZSBiYWRs
eSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoZHN0LngxICE9IDAgfHwgZHN0LngyICE9IDEgfHwKPiAr
CSAgICAgZHN0LnkxICE9IDAgfHwgZHN0LnkyICE9IDEsCj4gKwkgICAgICJEZXN0aW5hdGlvbiBi
YWRseSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoIXZpc2libGUsICJEZXN0aW5hdGlvbiBzaG91bGQg
YmUgdmlzaWJsZVxuIik7Cj4gKwlGQUlMKCFkcm1fcmVjdF92aXNpYmxlKCZzcmMpLCAiU291cmNl
IHNob3VsZCBiZSB2aXNpYmxlXG4iKTsKPiArCj4gKwkvKiAxOjIgc2NhbGluZyAqLwo+ICsJZHJt
X3JlY3RfaW5pdCgmc3JjLCAwLCAwLCAxIDw8IDE2LCAxIDw8IDE2KTsKPiArCWRybV9yZWN0X2lu
aXQoJmRzdCwgMCwgMCwgMiwgMik7Cj4gKwlkcm1fcmVjdF9pbml0KCZjbGlwLCAwLCAwLCAyLCAy
KTsKPiArCj4gKwl2aXNpYmxlID0gZHJtX3JlY3RfY2xpcF9zY2FsZWQoJnNyYywgJmRzdCwgJmNs
aXApOwo+ICsKPiArCUZBSUwoc3JjLngxICE9IDAgfHwgc3JjLngyICE9IDEgPDwgMTYgfHwKPiAr
CSAgICAgc3JjLnkxICE9IDAgfHwgc3JjLnkyICE9IDEgPDwgMTYsCj4gKwkgICAgICJTb3VyY2Ug
YmFkbHkgY2xpcHBlZFxuIik7Cj4gKwlGQUlMKGRzdC54MSAhPSAwIHx8IGRzdC54MiAhPSAyIHx8
Cj4gKwkgICAgIGRzdC55MSAhPSAwIHx8IGRzdC55MiAhPSAyLAo+ICsJICAgICAiRGVzdGluYXRp
b24gYmFkbHkgY2xpcHBlZFxuIik7Cj4gKwlGQUlMKCF2aXNpYmxlLCAiRGVzdGluYXRpb24gc2hv
dWxkIGJlIHZpc2libGVcbiIpOwo+ICsJRkFJTCghZHJtX3JlY3RfdmlzaWJsZSgmc3JjKSwgIlNv
dXJjZSBzaG91bGQgYmUgdmlzaWJsZVxuIik7CgpJIHdvbmRlciB3aGV0aGVyIGFuIElOVF9NQVgg
ZHN0LCB3aXRoIHNyYyA9IDAsMCwxLDEgY291bGQgYmUgaW50ZXJlc3RpbmcKaGVyZSB0b28uIExl
c3MgcHJhY3RpY2FsbHkgcmVsZXZhbnQsIGl0J3MgbW9yZSBhYm91dCBtYWtpbmcgc3VyZSB3ZSBk
b24ndApvdmVyZmxvdyBhbnl3aGVyZSBpbiBzaWxseSB3YXlzLgoKPiArCj4gKwlyZXR1cm4gMDsK
PiArfQo+ICsKPiAraW50IGlndF9kcm1fcmVjdF9jbGlwX3NjYWxlZF9jbGlwcGVkKHZvaWQgKmln
bm9yZWQpCj4gK3sKPiArCXN0cnVjdCBkcm1fcmVjdCBzcmMsIGRzdCwgY2xpcDsKPiArCWJvb2wg
dmlzaWJsZTsKPiArCj4gKwkvKiAxOjEgc2NhbGluZyB0b3AvbGVmdCBjbGlwICovCj4gKwlkcm1f
cmVjdF9pbml0KCZzcmMsIDAsIDAsIDIgPDwgMTYsIDIgPDwgMTYpOwo+ICsJZHJtX3JlY3RfaW5p
dCgmZHN0LCAwLCAwLCAyLCAyKTsKPiArCWRybV9yZWN0X2luaXQoJmNsaXAsIDAsIDAsIDEsIDEp
Owo+ICsKPiArCXZpc2libGUgPSBkcm1fcmVjdF9jbGlwX3NjYWxlZCgmc3JjLCAmZHN0LCAmY2xp
cCk7Cj4gKwo+ICsJRkFJTChzcmMueDEgIT0gMCB8fCBzcmMueDIgIT0gMSA8PCAxNiB8fAo+ICsJ
ICAgICBzcmMueTEgIT0gMCB8fCBzcmMueTIgIT0gMSA8PCAxNiwKPiArCSAgICAgIlNvdXJjZSBi
YWRseSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoZHN0LngxICE9IDAgfHwgZHN0LngyICE9IDEgfHwK
PiArCSAgICAgZHN0LnkxICE9IDAgfHwgZHN0LnkyICE9IDEsCj4gKwkgICAgICJEZXN0aW5hdGlv
biBiYWRseSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoIXZpc2libGUsICJEZXN0aW5hdGlvbiBzaG91
bGQgYmUgdmlzaWJsZVxuIik7Cj4gKwlGQUlMKCFkcm1fcmVjdF92aXNpYmxlKCZzcmMpLCAiU291
cmNlIHNob3VsZCBiZSB2aXNpYmxlXG4iKTsKPiArCj4gKwkvKiAxOjEgc2NhbGluZyBib3R0b20v
cmlnaHQgY2xpcCAqLwo+ICsJZHJtX3JlY3RfaW5pdCgmc3JjLCAwLCAwLCAyIDw8IDE2LCAyIDw8
IDE2KTsKPiArCWRybV9yZWN0X2luaXQoJmRzdCwgMCwgMCwgMiwgMik7Cj4gKwlkcm1fcmVjdF9p
bml0KCZjbGlwLCAxLCAxLCAxLCAxKTsKPiArCj4gKwl2aXNpYmxlID0gZHJtX3JlY3RfY2xpcF9z
Y2FsZWQoJnNyYywgJmRzdCwgJmNsaXApOwo+ICsKPiArCUZBSUwoc3JjLngxICE9IDEgPDwgMTYg
fHwgc3JjLngyICE9IDIgPDwgMTYgfHwKPiArCSAgICAgc3JjLnkxICE9IDEgPDwgMTYgfHwgc3Jj
LnkyICE9IDIgPDwgMTYsCj4gKwkgICAgICJTb3VyY2UgYmFkbHkgY2xpcHBlZFxuIik7Cj4gKwlG
QUlMKGRzdC54MSAhPSAxIHx8IGRzdC54MiAhPSAyIHx8Cj4gKwkgICAgIGRzdC55MSAhPSAxIHx8
IGRzdC55MiAhPSAyLAo+ICsJICAgICAiRGVzdGluYXRpb24gYmFkbHkgY2xpcHBlZFxuIik7Cj4g
KwlGQUlMKCF2aXNpYmxlLCAiRGVzdGluYXRpb24gc2hvdWxkIGJlIHZpc2libGVcbiIpOwo+ICsJ
RkFJTCghZHJtX3JlY3RfdmlzaWJsZSgmc3JjKSwgIlNvdXJjZSBzaG91bGQgYmUgdmlzaWJsZVxu
Iik7Cj4gKwo+ICsJLyogMjoxIHNjYWxpbmcgdG9wL2xlZnQgY2xpcCAqLwo+ICsJZHJtX3JlY3Rf
aW5pdCgmc3JjLCAwLCAwLCA0IDw8IDE2LCA0IDw8IDE2KTsKPiArCWRybV9yZWN0X2luaXQoJmRz
dCwgMCwgMCwgMiwgMik7Cj4gKwlkcm1fcmVjdF9pbml0KCZjbGlwLCAwLCAwLCAxLCAxKTsKPiAr
Cj4gKwl2aXNpYmxlID0gZHJtX3JlY3RfY2xpcF9zY2FsZWQoJnNyYywgJmRzdCwgJmNsaXApOwo+
ICsKPiArCUZBSUwoc3JjLngxICE9IDAgfHwgc3JjLngyICE9IDIgPDwgMTYgfHwKPiArCSAgICAg
c3JjLnkxICE9IDAgfHwgc3JjLnkyICE9IDIgPDwgMTYsCj4gKwkgICAgICJTb3VyY2UgYmFkbHkg
Y2xpcHBlZFxuIik7Cj4gKwlGQUlMKGRzdC54MSAhPSAwIHx8IGRzdC54MiAhPSAxIHx8Cj4gKwkg
ICAgIGRzdC55MSAhPSAwIHx8IGRzdC55MiAhPSAxLAo+ICsJICAgICAiRGVzdGluYXRpb24gYmFk
bHkgY2xpcHBlZFxuIik7Cj4gKwlGQUlMKCF2aXNpYmxlLCAiRGVzdGluYXRpb24gc2hvdWxkIGJl
IHZpc2libGVcbiIpOwo+ICsJRkFJTCghZHJtX3JlY3RfdmlzaWJsZSgmc3JjKSwgIlNvdXJjZSBz
aG91bGQgYmUgdmlzaWJsZVxuIik7Cj4gKwo+ICsJLyogMjoxIHNjYWxpbmcgYm90dG9tL3JpZ2h0
IGNsaXAgKi8KPiArCWRybV9yZWN0X2luaXQoJnNyYywgMCwgMCwgNCA8PCAxNiwgNCA8PCAxNik7
Cj4gKwlkcm1fcmVjdF9pbml0KCZkc3QsIDAsIDAsIDIsIDIpOwo+ICsJZHJtX3JlY3RfaW5pdCgm
Y2xpcCwgMSwgMSwgMSwgMSk7Cj4gKwo+ICsJdmlzaWJsZSA9IGRybV9yZWN0X2NsaXBfc2NhbGVk
KCZzcmMsICZkc3QsICZjbGlwKTsKPiArCj4gKwlGQUlMKHNyYy54MSAhPSAyIDw8IDE2IHx8IHNy
Yy54MiAhPSA0IDw8IDE2IHx8Cj4gKwkgICAgIHNyYy55MSAhPSAyIDw8IDE2IHx8IHNyYy55MiAh
PSA0IDw8IDE2LAo+ICsJICAgICAiU291cmNlIGJhZGx5IGNsaXBwZWRcbiIpOwo+ICsJRkFJTChk
c3QueDEgIT0gMSB8fCBkc3QueDIgIT0gMiB8fAo+ICsJICAgICBkc3QueTEgIT0gMSB8fCBkc3Qu
eTIgIT0gMiwKPiArCSAgICAgIkRlc3RpbmF0aW9uIGJhZGx5IGNsaXBwZWRcbiIpOwo+ICsJRkFJ
TCghdmlzaWJsZSwgIkRlc3RpbmF0aW9uIHNob3VsZCBiZSB2aXNpYmxlXG4iKTsKPiArCUZBSUwo
IWRybV9yZWN0X3Zpc2libGUoJnNyYyksICJTb3VyY2Ugc2hvdWxkIGJlIHZpc2libGVcbiIpOwo+
ICsKPiArCS8qIDE6MiBzY2FsaW5nIHRvcC9sZWZ0IGNsaXAgKi8KPiArCWRybV9yZWN0X2luaXQo
JnNyYywgMCwgMCwgMiA8PCAxNiwgMiA8PCAxNik7Cj4gKwlkcm1fcmVjdF9pbml0KCZkc3QsIDAs
IDAsIDQsIDQpOwo+ICsJZHJtX3JlY3RfaW5pdCgmY2xpcCwgMCwgMCwgMiwgMik7Cj4gKwo+ICsJ
dmlzaWJsZSA9IGRybV9yZWN0X2NsaXBfc2NhbGVkKCZzcmMsICZkc3QsICZjbGlwKTsKPiArCj4g
KwlGQUlMKHNyYy54MSAhPSAwIHx8IHNyYy54MiAhPSAxIDw8IDE2IHx8Cj4gKwkgICAgIHNyYy55
MSAhPSAwIHx8IHNyYy55MiAhPSAxIDw8IDE2LAo+ICsJICAgICAiU291cmNlIGJhZGx5IGNsaXBw
ZWRcbiIpOwo+ICsJRkFJTChkc3QueDEgIT0gMCB8fCBkc3QueDIgIT0gMiB8fAo+ICsJICAgICBk
c3QueTEgIT0gMCB8fCBkc3QueTIgIT0gMiwKPiArCSAgICAgIkRlc3RpbmF0aW9uIGJhZGx5IGNs
aXBwZWRcbiIpOwo+ICsJRkFJTCghdmlzaWJsZSwgIkRlc3RpbmF0aW9uIHNob3VsZCBiZSB2aXNp
YmxlXG4iKTsKPiArCUZBSUwoIWRybV9yZWN0X3Zpc2libGUoJnNyYyksICJTb3VyY2Ugc2hvdWxk
IGJlIHZpc2libGVcbiIpOwo+ICsKPiArCS8qIDE6MiBzY2FsaW5nIGJvdHRvbS9yaWdodCBjbGlw
ICovCj4gKwlkcm1fcmVjdF9pbml0KCZzcmMsIDAsIDAsIDIgPDwgMTYsIDIgPDwgMTYpOwo+ICsJ
ZHJtX3JlY3RfaW5pdCgmZHN0LCAwLCAwLCA0LCA0KTsKPiArCWRybV9yZWN0X2luaXQoJmNsaXAs
IDIsIDIsIDIsIDIpOwo+ICsKPiArCXZpc2libGUgPSBkcm1fcmVjdF9jbGlwX3NjYWxlZCgmc3Jj
LCAmZHN0LCAmY2xpcCk7Cj4gKwo+ICsJRkFJTChzcmMueDEgIT0gMSA8PCAxNiB8fCBzcmMueDIg
IT0gMiA8PCAxNiB8fAo+ICsJICAgICBzcmMueTEgIT0gMSA8PCAxNiB8fCBzcmMueTIgIT0gMiA8
PCAxNiwKPiArCSAgICAgIlNvdXJjZSBiYWRseSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoZHN0Lngx
ICE9IDIgfHwgZHN0LngyICE9IDQgfHwKPiArCSAgICAgZHN0LnkxICE9IDIgfHwgZHN0LnkyICE9
IDQsCj4gKwkgICAgICJEZXN0aW5hdGlvbiBiYWRseSBjbGlwcGVkXG4iKTsKPiArCUZBSUwoIXZp
c2libGUsICJEZXN0aW5hdGlvbiBzaG91bGQgYmUgdmlzaWJsZVxuIik7Cj4gKwlGQUlMKCFkcm1f
cmVjdF92aXNpYmxlKCZzcmMpLCAiU291cmNlIHNob3VsZCBiZSB2aXNpYmxlXG4iKTsKCk5vdCBz
dXJlIHdoZXRoZXIgZHN0L3NyYyBvcmlnaW4gIT0gMCwwIHdvdWxkIGJlIGludGVyZXN0aW5nLCBi
dXQgSSB0aGluawp0aGlzIGlzIGEgc29saWQgc3RhcnQuCgpUaGFua3MgYSBsb3QgZm9yIHR5cGlu
ZyB0aGVzZS4KClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgoKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAraW50IGlndF9kcm1fcmVjdF9jbGlw
X3NjYWxlZF9zaWduZWRfdnNfdW5zaWduZWQodm9pZCAqaWdub3JlZCkKPiArewo+ICsJc3RydWN0
IGRybV9yZWN0IHNyYywgZHN0LCBjbGlwOwo+ICsJYm9vbCB2aXNpYmxlOwo+ICsKPiArCS8qCj4g
KwkgKiAnY2xpcC54MiAtIGRzdC54MSA+PSBkc3Qgd2lkdGgnIGNvdWxkIHJlc3VsdCBhIG5lZ2F0
aXZlCj4gKwkgKiBzcmMgcmVjdGFuZ2xlIHdpZHRoIHdoaWNoIGlzIG5vIGxvbmdlciBleHBlY3Rl
ZCBieSB0aGUKPiArCSAqIGNvZGUgYXMgaXQncyB1c2luZyB1bnNpZ25lZCB0eXBlcy4gVGhpcyBj
b3VsZCBsZWFkIHRvCj4gKwkgKiB0aGUgY2xpcHBlZCBzb3VyY2UgcmVjdGFuZ2xlIGFwcGVyaW5n
IHZpc2libGUgd2hlbiBpdAo+ICsJICogc2hvdWxkIGhhdmUgYmVlbiBmdWxseSBjbGlwcGVkLiBN
YWtlIHN1cmUgYm90aCByZWN0YW5nbGVzCj4gKwkgKiBlbmQgdXAgaW52aXNpYmxlLgo+ICsJICov
Cj4gKwlkcm1fcmVjdF9pbml0KCZzcmMsIDAsIDAsIElOVF9NQVgsIElOVF9NQVgpOwo+ICsJZHJt
X3JlY3RfaW5pdCgmZHN0LCAwLCAwLCAyLCAyKTsKPiArCWRybV9yZWN0X2luaXQoJmNsaXAsIDMs
IDMsIDEsIDEpOwo+ICsKPiArCXZpc2libGUgPSBkcm1fcmVjdF9jbGlwX3NjYWxlZCgmc3JjLCAm
ZHN0LCAmY2xpcCk7Cj4gKwo+ICsJRkFJTCh2aXNpYmxlLCAiRGVzdGluYXRpb24gc2hvdWxkIG5v
dCBiZSB2aXNpYmxlXG4iKTsKPiArCUZBSUwoZHJtX3JlY3RfdmlzaWJsZSgmc3JjKSwgIlNvdXJj
ZSBzaG91bGQgbm90IGJlIHZpc2libGVcbiIpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9yZWN0LmggYi9pbmNsdWRlL2RybS9kcm1fcmVjdC5o
Cj4gaW5kZXggY2QwMTA2MTM1YjZhLi41N2EzYmU5ZTUzZTQgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX3JlY3QuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9yZWN0LmgKPiBAQCAtMjQs
NiArMjQsOCBAQAo+ICAjaWZuZGVmIERSTV9SRUNUX0gKPiAgI2RlZmluZSBEUk1fUkVDVF9ICj4g
IAo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiArCj4gIC8qKgo+ICAgKiBET0M6IHJlY3Qg
dXRpbHMKPiAgICoKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
