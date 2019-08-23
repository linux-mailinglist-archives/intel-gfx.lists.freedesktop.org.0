Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8E09AA58
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7760F6EC14;
	Fri, 23 Aug 2019 08:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84FA16EC14
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:30:26 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id b16so7816322wrq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 01:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fV2ebOnPmxFAwE/HMjYhmln61eBOvCuqE8xBmoJetFc=;
 b=aCFrGTwA1mxoNTPcAlU1rwOCtwe6BJf+XeE5m3GpP6t7jfB3yuH6H/KMveEpU3Zfj/
 BRR/C7E5BskUszVGbfDS4Duy8pO3hK1ddAblwvVupcwfsnpG0nFbb0gBDpdOAKThKgso
 5YHXKBo/VW7lIefpzz5geH3rnzpmcUuK4it9lM5yVlwMVZDo5wEEtw5FhPE1xRhesrq+
 xkVJCVOcvMclAMMSAQTWbM9RDhBOtFQTt8NHBCFL+tKiPSTZxLPAv7TTJyhLGqHWTUUa
 PDx2ycMgOJxSDkQcTyTfgOe+T1NGx2BlaIi2OVHj/76pSeJNA8sl9WHrcnlsIqpnwP65
 BmfQ==
X-Gm-Message-State: APjAAAWsEsstX8qqQla2ZkPXuYZqZyVumJVKuPgO1T/U1v1yEqMnMy98
 BrpWIrTrfmxnOZGMcqUHhc2Pere2Ak/uzBKiCv8=
X-Google-Smtp-Source: APXvYqwwx4wYucZo0WahtZJtPioiBPpadD/Jnip5UqALpGXYaqmKwqrPDXePRJvVZVoEHlGWV1d+U1ZePjVfXXuIJbE=
X-Received: by 2002:a5d:698f:: with SMTP id g15mr3818241wru.310.1566549024983; 
 Fri, 23 Aug 2019 01:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-34-lucas.demarchi@intel.com>
 <156647063874.10396.5015522475144891007@jlahtine-desk.ger.corp.intel.com>
 <6fde926a-1b65-64e6-08b3-48fda7cbaa7c@intel.com>
In-Reply-To: <6fde926a-1b65-64e6-08b3-48fda7cbaa7c@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 23 Aug 2019 01:30:12 -0700
Message-ID: <CAKi4VAJp4VGaz7TPXzD5y5PGX-Z1yCFh0bgEjGLVjB_tOco7Hg@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=fV2ebOnPmxFAwE/HMjYhmln61eBOvCuqE8xBmoJetFc=;
 b=TN+tx3eFVKnWzCx1yUfcli0/VdfCgcRn+9yO00F7wYMwyPrJT6eLKlv4MzPLbTNsR2
 OvUv80fXEU8/UmwGVRe7sgi4lXIsfJ/YXt+ulMz00kMo3JWZHVds7FkcSu5pvI6WzQ0b
 qEBUkKZXYyNeUOIfz+S/M+hLwMWUnI9DA2QVSOy8CLBitCGbm6ExA2vf+Oe+NkB3t3SI
 gO1UnX2ibo2AzpSkQkxT0MmGR9FDaPi8Frw+SyDO2KsnbKfp/l7mV0wJUv/LGGHFvUB+
 ZGmTDvTZ+wy3TP85TQCtbXy/O1luGUOqSeqmf1vJohWPbASf8EkfrwfEOs4uIqvlLFJL
 f6QA==
Subject: Re: [Intel-gfx] [PATCH 33/39] drm/i915/perf: add a parameter to
 control the size of OA buffer
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMToxMyBBTSBMaW9uZWwgTGFuZHdlcmxpbgo8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gMjIvMDgvMjAxOSAxMjo0Mywg
Sm9vbmFzIExhaHRpbmVuIHdyb3RlOgo+ID4gUXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTkt
MDgtMTYgMTE6MDQ6NTcpCj4gPj4gRnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+ID4+Cj4gPj4gVGhlIHdheSBvdXIgaGFyZHdhcmUgaXMgZGVz
aWduZWQgZG9lc24ndCBzZWVtIHRvIGxldCB1cyB1c2UgdGhlCj4gPj4gTUlfUkVDT1JEX1BFUkZf
Q09VTlQgY29tbWFuZCB3aXRob3V0IHNldHRpbmcgdXAgYSBjaXJjdWxhciBidWZmZXIuCj4gPj4K
PiA+PiBJbiB0aGUgY2FzZSB3aGVyZSB0aGUgdXNlciBkaWRuJ3QgcmVxdWVzdCBPQSByZXBvcnRz
IHRvIGJlIGF2YWlsYWJsZQo+ID4+IHRocm91Z2ggdGhlIGk5MTUgcGVyZiBzdHJlYW0sIHdlIGNh
biBzZXQgdGhlIE9BIGJ1ZmZlciB0byB0aGUgbWluaW11bQo+ID4+IHNpemUgdG8gYXZvaWQgY29u
c3VtaW5nIG1lbW9yeSB3aGljaCB3b24ndCBiZSB1c2VkIGJ5IHRoZSBkcml2ZXIuCj4gPj4KPiA+
PiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+
ID4+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPj4gU2lnbmVk
LW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29t
Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
fCA5OCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgfCAgMiArCj4gPj4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggICAgICB8ICA3ICsrKwo+ID4gQW55IHBhdGNoIHRvdWNoaW5nIGk5MTVfZHJtLmggc2hv
dWxkIGhhdmUgYSBsaW5rIHRvIHRoZSBjb3JyZXNwb25kaW5nCj4gPiB1c2Vyc3BhY2Ugc2VyaWVz
Lgo+ID4KPiA+IFJlZ2FyZHMsIEpvb25hcwo+ID4KPiBNaWdodCBiZSB3b3J0aCBkcm9wcGluZyB0
aGlzIHBhdGNoIGZyb20gdGhlIHNlcmllcyB0aGVuLgo+Cj4gSSBkb24ndCB0aGluayB3ZSBoYXZl
IGFueXRoaW5nIHB1YmxpYyBvciBhbnkgY29taW5nIHVzZXJzcGFjZSByZWxlYXNlCj4gbWFraW5n
IHVzZSBvZiB0aGlzLgoKVGhpcyBpcyBkcm9wcGVkIGZyb20gdjMuCgpMdWNhcyBEZSBNYXJjaGkK
Cj4KPgo+IENoZWVycywKPgo+Cj4gLUxpb25lbAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
