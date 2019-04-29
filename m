Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D87DCEE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 09:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CAB88C0A;
	Mon, 29 Apr 2019 07:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B4388C90
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 07:35:29 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id g57so1658182edc.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 00:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=W3xRdcjbNxHAPFY03oJ1Kj2jlonikPch7hSbWaR8+8s=;
 b=TN6HYg8QtWWgEmgty0GduCaJzH/dIsSUp5T8qXmxN+/Ke5VYtIrFi+QI8ExvGKei6W
 xZekVdBZHPR3zFenhCa45Kg2Xvs1hvwNBDVsqoPw7x/IF0/6X23HCLBvyOcruhny3rj6
 mN3qZCO72vW4dSWXVOmNYnj8atqG789x7L8yYk8R1w0I7fScEm8OJVVjyhad+CiylAWg
 CbxOMeJCnm5RUbRWOXorZY8K4sCA+wmzM0h8EGk7Ctnz8Ik0e3iU5zPnws9AMTSbK+49
 fBGAdMPI6VJIlzHcxUx3XMTXtxULaRH7qORMhGsNXufnJvJgrkrkTvQZyqp0ru0GDMWE
 8cvg==
X-Gm-Message-State: APjAAAXEzWUKT/MVg5N4Sn7K0yglh8fJub+whu3dzChTKVG9bhwO1Lrz
 Z4CTlDVMakDHlPDPYPqjq5tuXg==
X-Google-Smtp-Source: APXvYqwMNrKOO1+bHJkSzApMB6Z52QWuf41gVa94mlSWODZr3SWUBEqLxUC4/Vw26PWQ/RjqdtN7MA==
X-Received: by 2002:a17:906:1ed7:: with SMTP id
 m23mr14469310ejj.198.1556523328434; 
 Mon, 29 Apr 2019 00:35:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f8sm614093edd.15.2019.04.29.00.35.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 00:35:27 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:35:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190429073525.GG3271@phenom.ffwll.local>
References: <20190418085805.5648-1-ramalingam.c@intel.com>
 <20190418085805.5648-10-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418085805.5648-10-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W3xRdcjbNxHAPFY03oJ1Kj2jlonikPch7hSbWaR8+8s=;
 b=lgFJCYPxDYmToQdXPMfDjeqmWvs3RE6NQGGZ7esDjZkozD75qaHLQ0B7FPfstwohFx
 fLkBT3VsZrRwqX3w/rHY3n58v9Yuo3jxElTvrTyJ1Bu3nZe9bB5Bs9Rl0nb/z6ckCf45
 aLPWqIgsN0yC72AaBsrya6iOnGiajgtEeAC/w=
Subject: Re: [Intel-gfx] [PATCH v5 09/12] drm/hdcp: update content
 protection property with uevent
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

T24gVGh1LCBBcHIgMTgsIDIwMTkgYXQgMDI6Mjg6MDJQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IGRybSBmdW5jdGlvbiBpcyBkZWZpbmVkIGFuZCBleHBvcnRlZCB0byB1cGRhdGUgYSBj
b25uZWN0b3Incwo+IGNvbnRlbnQgcHJvdGVjdGlvbiBwcm9wZXJ0eSBzdGF0ZSBhbmQgdG8gZ2Vu
ZXJhdGUgYSB1ZXZlbnQgYWxvbmcKPiB3aXRoIGl0Lgo+IAo+IHYyOgo+ICAgVXBkYXRlIG9ubHkg
d2hlbiBzdGF0ZSBpcyBkaWZmZXJlbnQgZnJvbSBvbGQgb25lLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9oZGNwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvZHJtL2Ry
bV9oZGNwLmggICAgIHwgIDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9oZGNwLmMKPiBpbmRleCBhMDk2MDUwN2U0ZmYuLjU2NDBjNGU3NDRmZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1faGRjcC5jCj4gQEAgLTQxNSwzICs0MTUsMTkgQEAgaW50IGRybV9jb25uZWN0b3Jf
YXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSgKPiAgCXJldHVybiAwOwo+ICB9Cj4g
IEVYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF9wcm90ZWN0aW9uX3By
b3BlcnR5KTsKPiArCgpOZWVkcyBrZXJuZWxkb2MuIFBsdXMgSSB0aGluayBhIG5vdGUgaW4gdGhl
IGF0dGFjaCBmdW5jdGlvbiB0aGF0IHNldHMgdXAKaGRjcCBmb3IgYSBjb25uZWN0b3IgdGhhdCBp
dCBzaG91bGQgYmUgdXNlZC4KClBsdXMgd2UgbmVlZCBhbiBhY2sgZnJvbSB1c2Vyc3BhY2UgcGVv
cGxlICh3ZXN0b24/KSB0aGF0IHRoZXkncmUgdXNpbmcKdGhpcyBuZXcgdWFwaSBhbmQgYXJlIGhh
cHB5IHdpdGggaXQuCgo+ICt2b2lkIGRybV9oZGNwX3VwZGF0ZV9jb250ZW50X3Byb3RlY3Rpb24o
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiArCQkJCQl1NjQgdmFsKQo+ICt7Cj4g
KwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5kZXY7Cj4gKwlzdHJ1Y3QgZHJt
X2Nvbm5lY3Rvcl9zdGF0ZSAqc3RhdGUgPSBjb25uZWN0b3ItPnN0YXRlOwo+ICsKPiArCVdBUk5f
T04oIWRybV9tb2Rlc2V0X2lzX2xvY2tlZCgmZGV2LT5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211
dGV4KSk7Cj4gKwlpZiAoc3RhdGUtPmNvbnRlbnRfcHJvdGVjdGlvbiA9PSB2YWwpCj4gKwkJcmV0
dXJuOwo+ICsKPiArCXN0YXRlLT5jb250ZW50X3Byb3RlY3Rpb24gPSB2YWw7Cj4gKwlkcm1fc3lz
ZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudChjb25uZWN0b3IsCj4gKwkJCQkgZGV2LT5tb2RlX2Nv
bmZpZy5jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0wo
ZHJtX2hkY3BfdXBkYXRlX2NvbnRlbnRfcHJvdGVjdGlvbik7CgpXaXRoIGFsbCB0aGF0IGFkZHJl
c3NlZCBoYXMgbXkgUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1faGRjcC5oIGIvaW5jbHVkZS9k
cm0vZHJtX2hkY3AuaAo+IGluZGV4IDE0NWM4MWJhMWUwOS4uOTQ1N2M3ZWMwZDM3IDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1faGRj
cC5oCj4gQEAgLTMwNCw0ICszMDQsNiBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvcjsKPiAgYm9vbCBk
cm1faGRjcF9rc3ZzX3Jldm9jYXRlZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1OCAqa3N2cywg
dTMyIGtzdl9jb3VudCk7Cj4gIGludCBkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3Rl
Y3Rpb25fcHJvcGVydHkoCj4gIAkJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9v
bCBoZGNwX2NvbnRlbnRfdHlwZSk7Cj4gK3ZvaWQgZHJtX2hkY3BfdXBkYXRlX2NvbnRlbnRfcHJv
dGVjdGlvbihzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICsJCQkJCXU2NCB2YWwp
Owo+ICAjZW5kaWYKPiAtLSAKPiAyLjE5LjEKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
