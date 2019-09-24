Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F0BBCD8A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 18:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB936EA85;
	Tue, 24 Sep 2019 16:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399E56EA98
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 16:46:53 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id l3so2727987wru.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 09:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FVYiXOiw3PFjx/1k4agvprfkTQId/ECsG0aDAQZx/yo=;
 b=udgAhhQXG/qRfleF3LD2srkd6QZUHwJ2eX3ostANWA0mQs/jrkL/WTIUzSD/AwkMcg
 3n9rYkKkLAoGotXuwoqlxfKOLrDpMcbw9DpObBd1CwnVtWg52jrkWM+g8zlYbOI+wo8w
 f0lVjjVyBbN3atoOcvq+pQlSdcteBBV3AJ6axK7Jq1jJqq4MiXikVquAKQtNPtmnRBVB
 alw0hTQrZ4Y1h2f04X/56b7zODGOWdP2kEIIsyXoqETNZOgJz+X5ZPTptxoANpWQI5dO
 2BEdrmDFO0auXF9vE2IUymUP7sBhM+1D83st9s4GQgdom7+XibA7L7uUfpmoYCoJZjV9
 3F9g==
X-Gm-Message-State: APjAAAXOa3gIRf6AYHZoWfbTjRC65gEdHsunBNHo5u8yaOddrqZKofbE
 JFFj65ROjIR0h6OfzNC3kbhmyr1Cs2pCJ1h9SGCU4Q==
X-Google-Smtp-Source: APXvYqxedKCNxApzHXx9xQmoxtrPruvrNZIJne/7wDe4fXCGG6CyLlPB4wnXNl0UdN2xWp2XzDStXUUjgLR4d/H49GM=
X-Received: by 2002:a5d:4102:: with SMTP id l2mr3465803wrp.348.1569343611664; 
 Tue, 24 Sep 2019 09:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <1569310312-12313-1-git-send-email-ankit.k.nautiyal@intel.com>
In-Reply-To: <1569310312-12313-1-git-send-email-ankit.k.nautiyal@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 24 Sep 2019 09:46:37 -0700
Message-ID: <CAKi4VAKy-pAYioDubRrkQ1hzaWCnwM+Pyc1nTaJ3Ah3rMX4+=A@mail.gmail.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=FVYiXOiw3PFjx/1k4agvprfkTQId/ECsG0aDAQZx/yo=;
 b=PZ+ZS8QMUozA1Pi4MKmCkBzaOQzFPCLbKLUhtxXdAtBvxTn24KTxHIwZhB2Eyqb3M1
 H0cJYGupbeqjBTOSVve1+RB2lHBnSnbCs5dGqHK5LusmpOjls79yzKlm98N5sPYVdwXt
 U0O4OA6Ji5zlme7t31RaewzV9pI2TNSwTnTKH44+s9JlWCwpOWih6JVY/kIqFkFxJVKE
 cjgQU4hufvYOlNlDDcQUud/eBnXlDWNtkVCp8olqbd+6l3pJLz4n5itOL3tmPog7G7cm
 8kxv2cjLahaaVSyBYms7ei+MVwTgjA5/2zK4dt2Nl84g/EpUu/OOl9L6CU0BMUS9aBr0
 jtDw==
Subject: Re: [Intel-gfx] [v2][PATCH] drm/i915: Add Pipe D cursor ctrl
 register for Gen12
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMTI6MzAgQU0gTmF1dGl5YWwsIEFua2l0IEsKPGFua2l0
LmsubmF1dGl5YWxAaW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IEFua2l0IE5hdXRpeWFsIDxh
bmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KPgo+IEN1cnJlbnRseSB0aGUgb2Zmc2V0IGZvciBQ
SVBFIEQgY3Vyc29yIGNvbnRyb2wgcmVnaXN0ZXIgaXMgbWlzc2luZyBpbgo+IGk5MTVfcmVnLmgg
ZHVlIHRvIHdoaWNoIHRoZSBjdXJzb3IgcGxhbmUgY2Fubm90IGJlIGVuYWJsZWQgZm9yIFBpcGUg
RC4KPiBUaGlzIGFsc28gY2F1c2VzIGtlcm5lbCBXYXJuaW5nLCB3aGVuIGEgdXNlciByZXF1ZXN0
cyB0byBlbmFibGUgY3Vyc29yCj4gcGxhbmUgZm9yIFBJUEUgRCBmb3IgR2VuIDEyIHBsYXRmb3Jt
cy4KPgo+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgQ1VSU09SX0NUTF9EIHJlZ2lzdGVyIGluIHRoZSBp
OTE1X3JlZy5oLgo+Cj4gdjI6IFJlYmFzZQo+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTY0MAo+IFNpZ25lZC1vZmYtYnk6IEFua2l0
IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDEwICsrKysrKysrKysK
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAxICsKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBpbmRleCBj
MmZhYTY3Li5kYzA0OGQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gQEAgLTExOCw2
ICsxMTgsMTUgQEAKPiAgICAgICAgICAgICAgICAgW1BJUEVfQ10gPSBJVkJfQ1VSU09SX0NfT0ZG
U0VULCBcCj4gICAgICAgICB9Cj4KPiArI2RlZmluZSBUR0xfQ1VSU09SX09GRlNFVFMgXAo+ICsg
ICAgICAgLmN1cnNvcl9vZmZzZXRzID0geyBcCj4gKyAgICAgICAgICAgICAgIFtQSVBFX0FdID0g
Q1VSU09SX0FfT0ZGU0VULCBcCj4gKyAgICAgICAgICAgICAgIFtQSVBFX0JdID0gSVZCX0NVUlNP
Ul9CX09GRlNFVCwgXAo+ICsgICAgICAgICAgICAgICBbUElQRV9DXSA9IElWQl9DVVJTT1JfQ19P
RkZTRVQsIFwKPiArICAgICAgICAgICAgICAgW1BJUEVfRF0gPSBUR0xfQ1VSU09SX0RfT0ZGU0VU
LCBcCj4gKyAgICAgICB9Cj4gKwo+ICsKPiAgI2RlZmluZSBJOVhYX0NPTE9SUyBcCj4gICAgICAg
ICAuY29sb3IgPSB7IC5nYW1tYV9sdXRfc2l6ZSA9IDI1NiB9Cj4gICNkZWZpbmUgSTk2NV9DT0xP
UlMgXAo+IEBAIC03ODcsNiArNzk2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZp
Y2VfaW5mbyBpbnRlbF9lbGtoYXJ0bGFrZV9pbmZvID0gewo+ICAgICAgICAgICAgICAgICBbVFJB
TlNDT0RFUl9EU0lfMF0gPSBUUkFOU0NPREVSX0RTSTBfT0ZGU0VULCBcCj4gICAgICAgICAgICAg
ICAgIFtUUkFOU0NPREVSX0RTSV8xXSA9IFRSQU5TQ09ERVJfRFNJMV9PRkZTRVQsIFwKPiAgICAg
ICAgIH0sIFwKPiArICAgICAgIFRHTF9DVVJTT1JfT0ZGU0VUUywgXAo+ICAgICAgICAgLmhhc19n
bG9iYWxfbW9jcyA9IDEsIFwKPiAgICAgICAgIC5kaXNwbGF5Lmhhc19kc2IgPSAxCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBhNjljMTlhLi4yOGM0ODNhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gQEAgLTYyNDAsNiArNjI0MCw3IEBAIGVudW0gewo+ICAjZGVmaW5l
IENIVl9DVVJTT1JfQ19PRkZTRVQgMHg3MDBlMAo+ICAjZGVmaW5lIElWQl9DVVJTT1JfQl9PRkZT
RVQgMHg3MTA4MAo+ICAjZGVmaW5lIElWQl9DVVJTT1JfQ19PRkZTRVQgMHg3MjA4MAo+ICsjZGVm
aW5lIFRHTF9DVVJTT1JfRF9PRkZTRVQgMHg3MzA4MAo+Cj4gIC8qIERpc3BsYXkgQSBjb250cm9s
ICovCj4gICNkZWZpbmUgX0RTUEFDTlRSICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMHg3
MDE4MAo+IC0tCj4gMi43LjQKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAoKCgotLSAKTHVjYXMgRGUgTWFyY2hpCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
