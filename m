Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED6DCF0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 09:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1195088FF7;
	Mon, 29 Apr 2019 07:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3762788FE5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 07:35:43 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w11so1507723edl.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 00:35:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=4GRBl9r3eWWMjmHDPI2MKNTN3HIKFsl5JlCT1ZSAH7s=;
 b=aqKSleqnr4pIqXKGhWSUZ1DSU5Tgw6tpAhyGoWQk9MNNzAsrqbeM+sZCSF6gHJqDJ9
 /XZax30vVu/2ixBdOlCsq+36QH9cRg61pnAZXxm55leQ314SuWCMw7eFyaGzHkXeCn+W
 sCmBTJZCDQnGphlr7NqvOGj5EX5bCEjV2D1OorvI2UZ/dPfk3nsOxMQ3p/EDKaaJY+RI
 /qPUSEuRBGdpKS3XXG3WHdNWJKf0OlBZ+8OnLHxI1p+/ZRvrI+8bp0D9s0gMQ31eKlf1
 eftKmMPeg2DuJ0gRnwN1AeNUUeMqpr6Vkz0PE2c7sgtiNZ75xszD4D8KFb7DpA+1Stam
 Iwqw==
X-Gm-Message-State: APjAAAXHD7VDNWarqXhb2b/sqUDooHttRbOGrhtwUqJNS3IN7ivhh3fS
 1YMCfYzWRVtDAxI/ufQuhc3qtg==
X-Google-Smtp-Source: APXvYqw+HVpQADojEBJoYzEl6zU4Fu0xYJloXoyFmXJNng+PynUs1KNFpxgn6+gWmyYmvAXa17UCsQ==
X-Received: by 2002:a17:906:e241:: with SMTP id
 gq1mr30422178ejb.5.1556523341916; 
 Mon, 29 Apr 2019 00:35:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j13sm2144716eda.91.2019.04.29.00.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 00:35:41 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:35:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190429073539.GH3271@phenom.ffwll.local>
References: <20190418085805.5648-1-ramalingam.c@intel.com>
 <20190418085805.5648-11-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418085805.5648-11-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4GRBl9r3eWWMjmHDPI2MKNTN3HIKFsl5JlCT1ZSAH7s=;
 b=INpsZBjhPpRCQL63NTgPBswCAqGTGhwJH6BucVSEWE/EEJuTrlUWDYlIxcyDcv/CZQ
 b25YQKGTSX5bIQm7uY7FAH6hGDbscNLg0X8NSAdPLr97dnDhuLSwMFz42D088/RBohj7
 ubeckVkd4SZpIRG+bvedS33AK2rfqiXR9LWxY=
Subject: Re: [Intel-gfx] [PATCH v5 10/12] drm/i915: update the hdcp state
 with uevent
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

T24gVGh1LCBBcHIgMTgsIDIwMTkgYXQgMDI6Mjg6MDNQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IGRybSBmdW5jdGlvbiB0byB1cGRhdGUgdGhlIGNvbnRlbnQgcHJvdGVjdGlvbiBwcm9w
ZXJ0eSBzdGF0ZSBhbmQgdG8KPiBnZW5lcmF0ZSBhIHVldmVudCBpcyBpbnZva2VkIGZyb20gdGhl
IGludGVsIGhkY3AgcHJvcGVydHkgd29yay4KPiAKPiBIZW5jZSB3aGVuZXZlciBrZXJuZWwgY2hh
bmdlcyB0aGUgcHJvcGVydHkgc3RhdGUsIHVzZXJzcGFjZSB3aWxsIGJlCj4gdXBkYXRlZCB3aXRo
IGEgdWV2ZW50Lgo+IAo+IHYyOgo+ICAgc3RhdGUgdXBkYXRlIGlzIG1vdmVkIGludG8gZHJtIGZ1
bmN0aW9uIFtkYW5pZWxdCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGlu
Z2FtLmNAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZGNwLmMg
fCA4ICsrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3Au
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYwo+IGluZGV4IGRlNjM0ZjNmYmQx
Yi4uODRhYzIzZWE3NWFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYwo+IEBAIC04
NjYsNyArODY2LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfaGRjcF9wcm9wX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQo+ICAJCQkJCSAgICAgICBwcm9wX3dvcmspOwo+ICAJc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfaGRjcF90b19jb25uZWN0b3IoaGRjcCk7
Cj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5iYXNlLmRldjsKPiAtCXN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpzdGF0ZTsKPiAgCj4gIAlkcm1fbW9kZXNldF9sb2Nr
KCZkZXYtPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgsIE5VTEwpOwo+ICAJbXV0ZXhfbG9j
aygmaGRjcC0+bXV0ZXgpOwo+IEBAIC04NzYsMTAgKzg3NSw5IEBAIHN0YXRpYyB2b2lkIGludGVs
X2hkY3BfcHJvcF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgCSAqIHRob3NlIHRv
IFVOREVTSVJFRCBpcyBoYW5kbGVkIGJ5IGNvcmUuIElmIHZhbHVlID09IFVOREVTSVJFRCwKPiAg
CSAqIHdlJ3JlIHJ1bm5pbmcganVzdCBhZnRlciBoZGNwIGhhcyBiZWVuIGRpc2FibGVkLCBzbyBq
dXN0IGV4aXQKPiAgCSAqLwo+IC0JaWYgKGhkY3AtPnZhbHVlICE9IERSTV9NT0RFX0NPTlRFTlRf
UFJPVEVDVElPTl9VTkRFU0lSRUQpIHsKPiAtCQlzdGF0ZSA9IGNvbm5lY3Rvci0+YmFzZS5zdGF0
ZTsKPiAtCQlzdGF0ZS0+Y29udGVudF9wcm90ZWN0aW9uID0gaGRjcC0+dmFsdWU7Cj4gLQl9Cj4g
KwlpZiAoaGRjcC0+dmFsdWUgIT0gRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX1VOREVTSVJF
RCkKPiArCQlkcm1faGRjcF91cGRhdGVfY29udGVudF9wcm90ZWN0aW9uKCZjb25uZWN0b3ItPmJh
c2UsCj4gKwkJCQkJCSAgIGhkY3AtPnZhbHVlKTsKPiAgCj4gIAltdXRleF91bmxvY2soJmhkY3At
Pm11dGV4KTsKPiAgCWRybV9tb2Rlc2V0X3VubG9jaygmZGV2LT5tb2RlX2NvbmZpZy5jb25uZWN0
aW9uX211dGV4KTsKPiAtLSAKPiAyLjE5LjEKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
