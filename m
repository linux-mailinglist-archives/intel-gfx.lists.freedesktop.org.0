Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A62FDEE7C2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 19:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC01A6E81A;
	Mon,  4 Nov 2019 18:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555BA6E81A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 18:56:50 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id p4so18345301wrm.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 10:56:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=vD5Kx2XJpCwKcyMMTm9r2Rsgbco1v0P3tRvarTdGwYo=;
 b=U0ixEyutMvwKVazKUGxcEUmY5km9FkbxzGpRXvqpv5f3H0IcYq4GsDf1dJRDejYEWz
 uauOj+Cql9et9aWYOdWJft+xTSSvTUNSAnzI2r+qPbdrT6wsP+Wer42TjdK3/VB9L8/R
 m6fys+NsLozwnLZBcPCz4aF4g718FxDcGtp8qYGebw0Cmex95nnTU8rvZHmAfieQrKmi
 zogl92qRLpCqcAAC+Nf8MHImguy45b73Ikz/eDZldZ9RS7Iy8O+RfpfoMhentm08KKry
 G2rd//CNPIJ/yZcqdD+1IVyCPqnd+qaElZdtntIcZmjRWWKMPhkNrolI9y4+Bf5WXVl+
 qfHw==
X-Gm-Message-State: APjAAAVy47YPY7Bw8+1h74X5DCT38zodqW0UZ1NfmDRm5henIuiMy9Sv
 cpqp4RF7j5PltCcIqM9iRGPWFw2XIWQ=
X-Google-Smtp-Source: APXvYqyc2ZldhIPGfkC2qivZnwQzQ+5soTzI5pfQ9eQCNP9qKgzX9h2jps4+Pqy0xC4m2m5yKY4JAA==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr24655247wrr.207.1572893808446; 
 Mon, 04 Nov 2019 10:56:48 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.83])
 by smtp.googlemail.com with ESMTPSA id
 o189sm25079410wmo.23.2019.11.04.10.56.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 10:56:47 -0800 (PST)
To: Matt Roper <matthew.d.roper@intel.com>
References: <20191104115009.15961-1-juhapekka.heikkila@gmail.com>
 <20191104163246.GU18842@mdroper-desk1.amr.corp.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <dded49f7-6afd-40f8-ddf1-c54fa96f79bd@gmail.com>
Date: Mon, 4 Nov 2019 23:56:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104163246.GU18842@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vD5Kx2XJpCwKcyMMTm9r2Rsgbco1v0P3tRvarTdGwYo=;
 b=rJ/r7JfquxWFzJ3yaiF+vHsMg27dOrdaKGU1S0asUUQgFBXmBV9Gkky47PUz1r+g/D
 Mwobel6cpqq1jf+QBnBlyOmUAY9dnT3HDm+AXtxk+370qRE7IClNf7IF0xqq/4+Rmxs8
 kmG7xT4+p09qOyYWDUh3FRtb7u4B0kUzSwma4L8BMmGols+SOu+ehwEYrMwk1dAkGZ2B
 lUxZvcljlxppYMOtdE2i44UKdsXovVd9SpZ0vRorfyPflfLpgjSD49VbAQnL7BKHbw0N
 kH2hJjhFX/pwswyyd1aaxa0RdcS1fmWxC4IH08QvkH9U04oklEMLm0JTl2MY3UzvT1Y+
 gCIg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Display WA2006604312 is needed
 from ICL onwards
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNC4xMS4yMDE5IDE4LjMyLCBNYXR0IFJvcGVyIHdyb3RlOgo+IE9uIE1vbiwgTm92IDA0LCAy
MDE5IGF0IDAxOjUwOjA5UE0gKzAyMDAsIEp1aGEtUGVra2EgSGVpa2tpbGEgd3JvdGU6Cj4+IFdB
MjAwNjYwNDMxMiBpcyBsaXN0ZWQgZm9yIGRldmljZXMgZnJvbSBJY2VsYWtlIG9ud2FyZC4KPiAK
PiBUaGUgIlByb2plY3QiIGNvbHVtbiBvbiBic3BlYyAjMzM0NTAgZG9lcyBsaXN0IEVITCwgaG93
ZXZlciBJIGRvbid0IHNlZQo+IGl0IGFjdHVhbGx5IGxpc3RlZCBvbiB0aGUgZGVkaWNhdGVkIEVI
TCBXQSBwYWdlIChic3BlYyAjMzM0NTEpIG9yIHRoZQo+IFRHTCBXQSBwYWdlIChic3BlYyAjNTI4
OTApLgo+IAo+IEknbSBub3Qgc3VyZSB3aGljaCBwYWdlIHdlJ3JlIHN1cHBvc2VkIHRvIHRydXN0
IGZvciBFSEwgKHBlcnNvbmFsbHkgSSdkCj4gdHJ1c3QgdGhlIEVITCBwYWdlIG1vcmUgdGhhbiB0
aGUgSUNMIHBhZ2Ugd2hlbiBpdCBjb21lcyB0byBFSEwpLCBidXQgaXQKPiBkb2Vzbid0IGxvb2sg
bGlrZSB0aGlzIHNob3VsZCBhcHBseSB0byBUR0wvZ2VuMTIgYXMgZmFyIGFzIEkgY2FuIHNlZT8K
CkhpIE1hdHQsCgpJIGFncmVlIGl0IGlzIGJpdCBvZiBhIG1lc3Mgd2hhdCdzIGRvY3VtZW50ZWQg
d2hlcmUuIEZvciBHZW4xMiBJIHdhcyAKbG9va2luZyBvbiAjNTI4ODcuLiAiSSdtIGFsbW9zdCBx
dWl0ZSBjb25maWRlbnQgdGhlcmUgd2FzIG1lbnRpb24gYWxzbyAKc29tZXdoZXJlIGVsc2UuLiIg
IE5vdyBsb29raW5nIGlmICM1Mjg5MCBpcyB0aGUgY3VycmVudCB2ZXJzaW9uIG9uIAp3aGF0J3Mg
dmFsaWQgZm9yIGdlbjEyIHlvdSdyZSBjb3JyZWN0IGFuZCB3ZSBjYW4gZm9yZ2V0IHRoaXMgV0Eu
CgpUcnlib3QgcmVzdWx0cyBmb3IgdGhpcyBwYXRjaCBsb29rIG1vcmUgdXNlZnVsIHRoYW4gd2hh
dCdzIGNvbWluZyBmb3IgCnRoaXMgaW50ZWwtZ2Z4IHBhdGNoCmh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg4NzEvCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvVHJ5Ym90XzUyNTYvaW5kZXguaHRtbD9ob3N0cz1pY2wlN0N0Z2wKSW4gYW55
IGNhc2UgaXQgZG9lc24ndCBzZWVtIHRvIG1ha2UgYW55IGRpZmZlcmVuY2Ugb24gdGVzdCByZXN1
bHRzLgoKL0p1aGEtUGVra2EKCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEp1aGEtUGVra2EgSGVpa2tp
bGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRleCBlMjllODBhZTU2OTguLjcx
YWM0ZmU1ZmI0NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPj4gQEAgLTU5ODEsNyArNTk4MSw3IEBAIHN0YXRpYyBib29sIG5lZWRzX3Nj
YWxlcmNsa193YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAgCQkJICAg
ICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiAgIHsKPj4g
ICAJLyogV2FfMjAwNjYwNDMxMjppY2wgKi8KPj4gLQlpZiAoY3J0Y19zdGF0ZS0+c2NhbGVyX3N0
YXRlLnNjYWxlcl91c2VycyA+IDAgJiYgSVNfSUNFTEFLRShkZXZfcHJpdikpCj4+ICsJaWYgKGNy
dGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfdXNlcnMgPiAwICYmIElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTEpCj4+ICAgCQlyZXR1cm4gdHJ1ZTsKPj4gICAKPj4gICAJcmV0dXJuIGZhbHNl
Owo+PiAtLSAKPj4gMi4xNy4xCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
