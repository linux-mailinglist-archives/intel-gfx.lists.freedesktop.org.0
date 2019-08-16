Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F7490A45
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 23:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F8E6E39E;
	Fri, 16 Aug 2019 21:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 385906E39E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 21:28:47 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id g67so5136425wme.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 14:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+p3JSO02rh508CAQhLuN0EENMKi8/80/F4iUcn4sizc=;
 b=XAPZZ7gT1GTgcIVJpZNLeDEk+ydDDOYdGCta8sC3MoM2/Y8t4CVS+vlcrHfbMdieTY
 te3xrTghJByNC7RTR8zhdLMrAFxxSoC/j6JnNocDj5IY0T2po5n8xWcwEJY1ul+jV6Qa
 zHPUllgi76k4I1Aef6E12nKohI2aRbFCH97VfLMJ/HOYGdmDQ6IOqncN3J4oP1zRke89
 +7Atrnaz6hQa3BuOcZ1k6AQBxNttOAfc8C5422etw5emBIhd2KfTIFh9EDruDPs8ZU+A
 JCn4kkjA7Y7nAtK0CJNbrCKNYsfvP04HR2omZEqYXKWouIsqA2VVOyNq3OkPnQVv1D0J
 iEHg==
X-Gm-Message-State: APjAAAWB+8DHp9/GWq02D8aNzoghdCHmI2uWxS+U5D6orkUDJq2I1ZnB
 75GxF+rsKzFYpC2PKFthjvkKY/F3oPH9DILle5E=
X-Google-Smtp-Source: APXvYqy188H1nYbKS84+yMC+jBIEUX3OxypTkFEKX+s03p29E1/DQbUfRWO22tJYKiys0bno76mmQxtrTaduRvREcwg=
X-Received: by 2002:a05:600c:23cd:: with SMTP id
 p13mr8296323wmb.86.1565990925612; 
 Fri, 16 Aug 2019 14:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-9-lucas.demarchi@intel.com>
In-Reply-To: <20190816080503.28594-9-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 16 Aug 2019 14:28:33 -0700
Message-ID: <CAKi4VALV1w3F4cyRqPPvo9OyFVbM82AmPztuZgij6Y=uGdwTBw@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+p3JSO02rh508CAQhLuN0EENMKi8/80/F4iUcn4sizc=;
 b=c83Ex4TZX2y2ACCaDFjvS0DV0m4QWi1mvcit3D1HgaX5GoGMzHsa4h7E3/jVAP656b
 P8WJnWFfRohbvj/ds6ZWcgA8fonN5rY9D6ZgmeO6eSeRzacJSl+59f7Ob+xH8MNYt3ST
 k627wQhiORQFHEZGEVmP2f7+G3X04+N3qj9GX6/XO26+/+yypQhirVzcOVK78npirqTJ
 vZpW3TxfDNzlnXCkSiuQlsugyOUCRnlcAtoVR4tHnB/5P1+8JWPXgEEde3xymyT8Z0Wq
 gSbbIio7vMt96DFgOomfl7/d7Lh8ABUUazcsJgoL0rYjW8CHt4GzCWrVBucXZWJRco5q
 F9/Q==
Subject: Re: [Intel-gfx] [PATCH 08/39] drm/i915/tgl: Change PSR2 transcoder
 restriction
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMTowNSBBTSBMdWNhcyBEZSBNYXJjaGkKPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPgo+IFRpZ2VyIExha2UgaGFzIGVEUC1jYXBhYmxlIHRy
YW5zY29kZXJzIHJhdGhlciB0aGFuIGEgdHJhbnNjb2Rlcgo+IGRlZGljYXRlZCB0byBlRFAuIFRy
YW5zY29kZXIgQSBpcyB0aGUgb25lIHdoZXJlIHdlIGhhdmUgUFNSMi4KPiBBY3R1YWxseSB0cmFu
c2NvZGVyIEIgYWxzbyBzdXBwb3J0cyBQU1IyIGJ1dCBvbmx5IHdpdGggc29mdHdhcmUKPiB0cmFj
a2luZyB0aGF0IGlzIG5vdCBpbXBsZW1lbnRlZC4KPgo+IENjOiBEaGluYWthcmFuIFBhbmRpeWFu
IDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDAxMDcwZWI2NzU3MS4uMWQzNmQ3YmUwMTVkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gQEAgLTUxMSwx
MiArNTExLDE5IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCj4gICAgICAgICBpbnQgY3J0Y19oZGlzcGxheSA9IGNydGNfc3Rh
dGUtPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNwbGF5Owo+ICAgICAgICAgaW50IGNydGNf
dmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsK
PiAgICAgICAgIGludCBwc3JfbWF4X2ggPSAwLCBwc3JfbWF4X3YgPSAwOwo+ICsgICAgICAgZW51
bSB0cmFuc2NvZGVyIHN1cHBvcnRlZDsKPgo+ICAgICAgICAgaWYgKCFkZXZfcHJpdi0+cHNyLnNp
bmtfcHNyMl9zdXBwb3J0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4KPiAtICAg
ICAgIGlmIChjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0VEUCkgewo+
IC0gICAgICAgICAgICAgICBEUk1fREVCVUdfS01TKCJQU1IyIGlzIG9ubHkgc3VwcG9ydGVkIGlu
IEVEUCB0cmFuc2NvZGVyXG4iKTsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBUT0RPOiBQU1Iy
IGlzIGFsc28gc3VwcG9ydGVkIGluIFRSQU5TQ09ERVJfQiBvbiBUR0wrIGJ1dCBpdCByZXF1aXJl
cwo+ICsgICAgICAgICogc29mdHdhcmUgdHJhY2tpbmcKPiArICAgICAgICAqLwoKd2hlcmUgaXMg
dGhpcyBjb21pbmcgZnJvbT8gc3BlYyA0OTE4MCBzYXlzOiAiT25seSB0cmFuc2NvZGVyIEEgc3Vw
cG9ydHMgUFNSMi4iCgpDb3VsZCB0aGlzIHBhdGNoIGJlIHNxdWFzaGVkIGluICJkcm0vaTkxNTog
QWRkIHRyYW5zY29kZXIgcmVzdHJpY3Rpb24KdG8gUFNSMiIgc28gd2UganVzdCBhZGQgdGhlIHJl
c3RyaWN0aW9uCmZvciBhbnkgcGxhdGZvcm0gYXQgdGhlIHNhbWUgdGltZT8KCkx1Y2FzIERlIE1h
cmNoaQoKPiArICAgICAgIHN1cHBvcnRlZCA9IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgPyBU
UkFOU0NPREVSX0EgOiBUUkFOU0NPREVSX0VEUDsKPiArICAgICAgIGlmIChjcnRjX3N0YXRlLT5j
cHVfdHJhbnNjb2RlciAhPSBzdXBwb3J0ZWQpIHsKPiArICAgICAgICAgICAgICAgRFJNX0RFQlVH
X0tNUygiUFNSMiBub3Qgc3VwcG9ydGVkIGluIHRyYW5zY29kZXIgJXNcbiIsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdHJhbnNjb2Rlcl9uYW1lKHN1cHBvcnRlZCkpOwo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gICAgICAgICB9Cj4KPiAtLQo+IDIuMjEuMAo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKCi0t
IApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
