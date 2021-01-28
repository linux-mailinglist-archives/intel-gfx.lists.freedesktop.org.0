Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085AB307B30
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607526E9AC;
	Thu, 28 Jan 2021 16:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3896E9AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:44:34 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id r12so8740239ejb.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 08:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5Ix2PDynIubi6YwxEV+vcRoWB9JwrSuPOVdp1116/tU=;
 b=hWw6jQ5dA4SYGssHCcNdcG33JGPEPtfO9QDOZA+i6WOrqvClyxPdSQZJhfxHp37yYf
 CxJkGzKTrIJCru1xzL7hNHgC466VQM6fwr2YYcuOAMJANZRPtSFC4VjSecDFNmv2C9pN
 q6aiSLjCE09HcYuAnQlRuXm7hfDs/ILVlu9s7XSzwR3qHIXPaOZXotPLueQIqjm65NMa
 P4Tvu4vhKfVMeZLUaR/1L7GazQABZQEJgB/CWoX9x2Vvl82/PZmrHXBFh91GFEfhawLP
 QCC4MQZBcibcLQhAtly3z6viCuot63j4KMzW7mkY7nYJIY4HS580TAq7UyoZCXyUs87F
 +2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5Ix2PDynIubi6YwxEV+vcRoWB9JwrSuPOVdp1116/tU=;
 b=TEPm6pOnuqWRRAr+x+TJ2+pl099vqTtWv8VD+4XeTxNXfJgWrKszW9r+eZGRpF39Mt
 5A4evTU3Fb5dyc+oCBRrXyF9ZzS+g0IPxTBn1QxcAHCnd0A/roTqLnEj6sccVQpZcSFy
 iKi5tbpwHMCftufXy0C4xv0myRB4TB7jdyQemAdIDUAgGI/LOQ3Xio1AGPcRGBJdOY0W
 F+iuMYD7gWASL3ODlFYJzjazhywskHr9b7R7h8yf9yTOMnfqueNsfFmZL6V4c6+9pp6l
 9Xa4EbR+51TF39u9stIdYYKKmXe7YLUq/vWqtnMD2jmXNcFDzkmFOE4fruaFpQNfHpj2
 hENQ==
X-Gm-Message-State: AOAM533hs2Vp3zxlSfxZCKSQOKan8uXQxA8+dL3unozFXIaebzgECNy2
 xZ5Hs+6Xjx5f8QqbDzn03mLeCGI4dSOaz0t5/wjCyz8MApI=
X-Google-Smtp-Source: ABdhPJyCxxZ4stPjTltymRKnyDxSs172+MDeTUJO5XoSKXAMP7Bdnk714tmYtcSzBuSaQ8n65c/WYxvwyx3JBe2PCYY=
X-Received: by 2002:a17:906:80c9:: with SMTP id a9mr281988ejx.78.1611852272792; 
 Thu, 28 Jan 2021 08:44:32 -0800 (PST)
MIME-Version: 1.0
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
 <20210128162612.927917-13-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210128162612.927917-13-maarten.lankhorst@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 28 Jan 2021 10:44:20 -0600
Message-ID: <CAOFGe961vmcvgOZ2e_G7SGB+6cqxwKGLHR5LZAAoyDtVY=f9sg@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 12/63] drm/i915: No longer allow
 exporting userptr through dma-buf
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBkb3VibGUtY2hlY2tlZCBhbmQgVnVsa2FuIGRvZXNuJ3QgZG8vYWxsb3cgdGhpcy4KCkFja2Vk
LWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CgpPbiBUaHUsIEphbiAy
OCwgMjAyMSBhdCAxMDoyNiBBTSBNYWFydGVuIExhbmtob3JzdAo8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IEl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBleHBv
cnQgYSBtZW1vcnkgYWRkcmVzcywgd2Ugd2lsbCBwcmV2ZW50Cj4gYWxsb3dpbmcgYWNjZXNzIHRo
aXMgd2F5IHRvIGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcyB3aGVuIHdlCj4gcmV3b3JrIHVzZXJw
dHIgaGFuZGxpbmcsIHNvIGJlc3QgdG8gZXhwbGljaXRseSBkaXNhYmxlIGl0Lgo+Cj4gU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPiBSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5u
ZXQ+Cj4KPiAtLSBTdGlsbCBuZWVkcyBhbiBhY2sgZnJvbSByZWxldmFudCB1c2Vyc3BhY2UgdGhh
dCBpdCB3b24ndCBicmVhaywgYnV0IHNob3VsZCBiZSBnb29kLgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIHwgNSArKy0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gaW5kZXggNWExOTY5OWMyZDdlLi4wYzMw
Y2E1MmRlZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2Vy
cHRyLmMKPiBAQCAtNjk0LDEwICs2OTQsOSBAQCBpOTE1X2dlbV91c2VycHRyX3JlbGVhc2Uoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiAgc3RhdGljIGludAo+ICBpOTE1X2dlbV91
c2VycHRyX2RtYWJ1Zl9leHBvcnQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiAg
ewo+IC0gICAgICAgaWYgKG9iai0+dXNlcnB0ci5tbXVfb2JqZWN0KQo+IC0gICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiArICAgICAgIGRybV9kYmcob2JqLT5iYXNlLmRldiwgIkV4cG9ydGluZyB1
c2VycHRyIG5vIGxvbmdlciBhbGxvd2VkXG4iKTsKPgo+IC0gICAgICAgcmV0dXJuIGk5MTVfZ2Vt
X3VzZXJwdHJfaW5pdF9fbW11X25vdGlmaWVyKG9iaiwgMCk7Cj4gKyAgICAgICByZXR1cm4gLUVJ
TlZBTDsKPiAgfQo+Cj4gIHN0YXRpYyBpbnQKPiAtLQo+IDIuMzAuMAo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
