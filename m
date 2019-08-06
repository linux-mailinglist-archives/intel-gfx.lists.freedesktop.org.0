Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED1783DD6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 01:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55EA6E57A;
	Tue,  6 Aug 2019 23:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B522C6E57A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 23:31:24 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id w3so5194253pgt.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 16:31:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZkRP3Pl3f9mlnsioFWlsCd7b2xzl3jvn0goo1JVxffw=;
 b=t+/isdM8q3nk0R5wgcQRKf6CwnVCh3VijzOdVtoJ54tEFECgAaecaifnpehBSwyyA5
 Rs/R01B9MCst8o9YHEeoJOXDVpAJViXAFlyLFuIZUWBfE2AHto5iv/jkcijUZoDbxu2m
 EnVH6JbFbWSKbr1xfvlhHX5x9GSoBjDEFtK0M9ZMPzWzIgx9A4nlifug0aw0EgZyE4oT
 q7xfJljOcIZCEmk1pgNNeWHXy1Nf3H1TkXbmYNh0nVmnIDkJ3EcdJ9NutBan1I5/jDQV
 K3mD7xkY7DnJjFtAB5NCnm0a5c4Yl0kt/Fom+3xczLp/BguABYkjh3QtlYlF8koHTiHh
 zPfA==
X-Gm-Message-State: APjAAAVyyM1nI9+UeWPLahJG0Tncklsji/LrIOLD7CZgRpSgE6WFwwr/
 /efQNNeBsfGCqRpEdy+oqZVQboYg
X-Google-Smtp-Source: APXvYqxw1hoNbaydj3T4Bagt0ciuRYEl1CvV5J6kQmupTF4AbhwaxmOs+hixXP1V0t08qB/VpVV27w==
X-Received: by 2002:a63:5648:: with SMTP id g8mr5051336pgm.81.1565134284100;
 Tue, 06 Aug 2019 16:31:24 -0700 (PDT)
Received: from ldmartin-desk1 ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id 16sm183946pfc.66.2019.08.06.16.31.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 16:31:22 -0700 (PDT)
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
X-Google-Original-From: Lucas De Marchi <lucas.demarchi@gmail.com>
Date: Tue, 6 Aug 2019 16:31:18 -0700
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190806233118.GB8519@ldmartin-desk1>
References: <20190730224753.14907-1-jose.souza@intel.com>
 <20190730224753.14907-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730224753.14907-2-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=ZkRP3Pl3f9mlnsioFWlsCd7b2xzl3jvn0goo1JVxffw=;
 b=OvdUyEBLZBJe8y2OGdm/LWZYmrj76sqUNkRpsaAJ3No91/r1hpaNBDzN5C8vyk1FqK
 S4coatYwglSf2DQBUZ/mvfBpEXq/ZNVxWYfL0EXESYsUub7q3Kabf6C/3fUYjjlxb42U
 t9B18+esbQX7QYxc6TzxA0Ivb9Kj3YU2258/SNGHNO46Ac5yBoUKHZrvnYZ1WIwMtpSX
 fvzegYzHFiD2QzxDR3QmtYnePvGLoiqhDqt8zJ5E+daIMSHt5bTF5nUxh7zwWHuWVYy8
 S2xxdl0TGyaeLgAl98guBPTR+ssYVJL0s3312WusFLIcX/RvOBa9oOq3dMjZbDhcHZNQ
 ol1A==
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/i915: Add _TRANS2()
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiya@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDM6NDc6NTFQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPkEgbmV3IG1hY3JvIHRoYXQgaXMgZ29pbmcgdG8gYmUgYWRkZWQgaW4gYSBmdXJ0aGVyIHBh
dGNoIHdpbGwgbmVlZCB0bwo+YWRqdXN0IHRoZSBvZmZzZXQgcmV0dXJuZWQgYnkgX01NSU9fVFJB
TlMyKCksIHNvIGhlcmUgYWRkaW5nCj5fVFJBTlMyKCkgYW5kIG1vdmluZyBtb3N0IG9mIHRoZSBp
bXBsZW1lbnRhdGlvbiBvZiBfTU1JT19UUkFOUzIoKSB0bwo+aXQgYW5kIHdoaWxlIGF0IGl0IHRh
a2luZyB0aGUgb3Bwb3J0dW5pdHkgdG8gcmVuYW1lIHBpcGUgdG8gdHJhbnMuCj4KPkNjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj5DYzogRGhpbmFrYXJhbiBQYW5kaXlh
biA8ZGhpbmFrYXJhbi5wYW5kaXlhQGludGVsLmNvbT4KPlJldmlld2VkLWJ5OiBEaGluYWthcmFu
IFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgNyArKysrLS0tCj4gMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj5pbmRleCAyMTMwNmRkMzc5MGEuLmY0ZTFhY2M5MzZiMyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPkBAIC0yNTEsOSArMjUxLDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9f
cmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQo+ICNkZWZpbmUgX01NSU9fUElQRTIocGlwZSwgcmVn
KQkJX01NSU8oSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfb2Zmc2V0c1twaXBlXSAtIFwKPiAJ
CQkJCSAgICAgIElOVEVMX0lORk8oZGV2X3ByaXYpLT5waXBlX29mZnNldHNbUElQRV9BXSArIChy
ZWcpICsgXAo+IAkJCQkJICAgICAgRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpKQo+LSNkZWZp
bmUgX01NSU9fVFJBTlMyKHBpcGUsIHJlZykJCV9NTUlPKElOVEVMX0lORk8oZGV2X3ByaXYpLT50
cmFuc19vZmZzZXRzWyhwaXBlKV0gLSBcCj4tCQkJCQkgICAgICBJTlRFTF9JTkZPKGRldl9wcml2
KS0+dHJhbnNfb2Zmc2V0c1tUUkFOU0NPREVSX0FdICsgKHJlZykgKyBcCj4tCQkJCQkgICAgICBE
SVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikpCj4rI2RlZmluZSBfVFJBTlMyKHRyYW4sIHJlZykJ
CShJTlRFTF9JTkZPKGRldl9wcml2KS0+dHJhbnNfb2Zmc2V0c1sodHJhbildIC0gXAo+KwkJCQkJ
IElOVEVMX0lORk8oZGV2X3ByaXYpLT50cmFuc19vZmZzZXRzW1RSQU5TQ09ERVJfQV0gKyAocmVn
KSArIFwKPisJCQkJCSBESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikpCgphIHB1cmUgbW92ZSB3
aXRoIG5vIGJlaGF2aW9yIGNoYW5nZQoKClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoKCj4rI2RlZmluZSBfTU1J
T19UUkFOUzIodHJhbiwgcmVnKQkJX01NSU8oX1RSQU5TMih0cmFuLCByZWcpKQo+ICNkZWZpbmUg
X0NVUlNPUjIocGlwZSwgcmVnKQkJX01NSU8oSU5URUxfSU5GTyhkZXZfcHJpdiktPmN1cnNvcl9v
ZmZzZXRzWyhwaXBlKV0gLSBcCj4gCQkJCQkgICAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0+Y3Vy
c29yX29mZnNldHNbUElQRV9BXSArIChyZWcpICsgXAo+IAkJCQkJICAgICAgRElTUExBWV9NTUlP
X0JBU0UoZGV2X3ByaXYpKQo+LS0gCj4yLjIyLjAKPgo+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
