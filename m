Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926C2D1C20
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 00:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EA86EA68;
	Wed,  9 Oct 2019 22:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A9F6E348
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 22:46:45 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-2b8wj0RlNfWFCST45S2zxA-1; Wed, 09 Oct 2019 18:46:40 -0400
Received: by mail-qk1-f197.google.com with SMTP id x77so3507139qka.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2019 15:46:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=kwhJbGsrDBKARYQsTY//S8acSS4Q7o1J2WuFd2+tiG0=;
 b=RMyuwEjI4eDsKJ0Djcx4tkWnScPHGoTboiFDh0I4qJwvdG/CJIRbeBFOsqlN6F2fl5
 RdD6wHW8JQ+4nWpk6ZN+MB0q0wMLOeIXTbCYct36uR8cvSKYSz3yJowsbmGyHXFWEMfV
 2cDYwKI5qEv8DC7GpYNEFfX6ZN7mB0ts9qs3NbcGhuhpYnXvC2LZdkbiLhbvmmieE6jT
 K1rak3I7Q3viE8jvtoYGZtBWm2N+kmM/o7oH9CGRP2kJLppGnyCjisvbkyo1Tnbuewno
 WdEzN4ryaKgtOohAdpzI/Ep2Ou1yIuKvGgCvgsgGwPPs80SOz+/ca7YPS9SXZJ721k1N
 kGfg==
X-Gm-Message-State: APjAAAWW2vCos+NeoK74FE0QCnRO+0v5kOdbWN+RRsaIDSBPsHqbQx7E
 eW8oW7i7ZaNu7UoM7ocSZry2rezA4JSzoemSPb5yWzmDgtkRzy4OoU+BuAG0t8vODncgIeEbVmH
 T8dX6wuDudZLigGhdgoYCU7+/LtUD
X-Received: by 2002:ac8:705c:: with SMTP id y28mr6789843qtm.52.1570661200341; 
 Wed, 09 Oct 2019 15:46:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6lr5ZCjf9+Qo2HJVC9LNKfVUEtmcyteL+7BZ4Ay9LGYdZKzRp32HyzGtFydHz9neZHA39uQ==
X-Received: by 2002:ac8:705c:: with SMTP id y28mr6789823qtm.52.1570661200084; 
 Wed, 09 Oct 2019 15:46:40 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id 199sm1628704qkk.112.2019.10.09.15.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 15:46:39 -0700 (PDT)
Message-ID: <f33c9f6f6db1dc08c4bba8c220728d7a4408e1fb.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
Date: Wed, 09 Oct 2019 18:46:38 -0400
In-Reply-To: <20191009224113.5432-1-daniel.vetter@ffwll.ch>
References: <20191009224113.5432-1-daniel.vetter@ffwll.ch>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: 2b8wj0RlNfWFCST45S2zxA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1570661204;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q27seZ5YDRNp/W1AOJyC1ndycrmpJWnaIFDQVftGKME=;
 b=T+FL5Mf2kFqc1fXuDBDSGs5793DXNwAGuF1WKlnl0TWS3fGjcYextUf8wCMi5F03V0nKvt
 UFU7i9cgOR7BN7fNIp2IGV4z3FlEL6e9PnRUdG06JL/pu7KVjvlbTwfBdGocfw9UfZUHc3
 +hhoCw6/YGy8zYErOnxqlHQLWaLI8ac=
Subject: Re: [Intel-gfx] [PATCH] drm/dp-mst: Drop connection_mutex check
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

b2gsIGNvbXBsZXRlbHkgZm9yZ290IGFib3V0IHRoaXMgb25lCgpSZXZpZXdlZC1ieTogTHl1ZGUg
UGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KCk9uIFRodSwgMjAxOS0xMC0xMCBhdCAwMDo0MSArMDIw
MCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBQcml2YXRlIGF0b21pYyBvYmplY3RzIGhhdmUgZ3Jv
d24gdGhlaXIgb3duIGxvY2tpbmcgd2l0aAo+IAo+IGNvbW1pdCBiOTYyYTEyMDUwYTM4N2U0YmJm
M2E0ODc0NWFmZTFkMjlkMzk2YjBkCj4gQXV0aG9yOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFp
bC5jb20+Cj4gRGF0ZTogICBNb24gT2N0IDIyIDE0OjMxOjIyIDIwMTggKzAyMDAKPiAKPiAgICAg
ZHJtL2F0b21pYzogaW50ZWdyYXRlIG1vZGVzZXQgbG9jayB3aXRoIHByaXZhdGUgb2JqZWN0cwo+
IAo+IHdoaWNoIG1lYW5zIHdlJ3JlIG5vIGxvbmdlciByZWx5aW5nIG9uIGNvbm5lY3Rpb25fbXV0
ZXggZm9yIG1zdCBzdGF0ZQo+IGxvY2tpbmcgbmVlZHMuCj4gCj4gQ2M6IEx5dWRlIFBhdWwgPGx5
dWRlQHJlZGhhdC5jb20+Cj4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgo+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIHwgMSAtCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9s
b2d5LmMKPiBpbmRleCA2YjE0YjYzYjhkNjIuLjkzNjRlNGY0Mjk3NSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IEBAIC00MTg2LDcgKzQxODYsNiBAQCBzdHJ1Y3Qg
ZHJtX2RwX21zdF90b3BvbG9neV9zdGF0ZQo+ICpkcm1fYXRvbWljX2dldF9tc3RfdG9wb2xvZ3lf
c3RhdGUoc3RydWN0IGRybV9hCj4gIHsKPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBtZ3It
PmRldjsKPiAgCj4gLQlXQVJOX09OKCFkcm1fbW9kZXNldF9pc19sb2NrZWQoJmRldi0+bW9kZV9j
b25maWcuY29ubmVjdGlvbl9tdXRleCkpOwo+ICAJcmV0dXJuCj4gdG9fZHBfbXN0X3RvcG9sb2d5
X3N0YXRlKGRybV9hdG9taWNfZ2V0X3ByaXZhdGVfb2JqX3N0YXRlKHN0YXRlLCAmbWdyLQo+ID5i
YXNlKSk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2dldF9tc3RfdG9wb2xvZ3lf
c3RhdGUpOwotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
