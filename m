Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8D946C38
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 00:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83448897D7;
	Fri, 14 Jun 2019 22:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E6B897D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 22:10:24 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id n11so4282598qtl.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=shVnPlPeCTcmlWwFA6ZYR0wKoPt2Nj6+3KOOVZWPU6Q=;
 b=hMmCa/emSC5YrwmaeRyyCgtnxEUNNINu+mAhUYfn/yyya2V/xJNb2IeAYdaNGNX2qw
 n7TIfUIqupXDXXCKz2H3ZIQr17W/tmQMVJUPm63M2O4Nd+afjKPFzrJjcgAtBjOncOlk
 Uzd4ztobE4owFSFFdaV3ptmQJw1ROoTD9KSY4E5FRo+46kjRsHCXggx3PL0jVEMwfqUn
 g5WyMyVSxJcF00orBD/0ch/JBTX2ODEw2SUMLPh8V9w8JpK8UyiQKyaIg88+KlZfxzf9
 spISQpMBzmdeyYoQU4wnxU2GjLar1kuh41segQPPZbsCZ4FsxrlSWMmUYUnKhfmSiR8W
 yMIA==
X-Gm-Message-State: APjAAAV/i8kl+y80DBvWhw/hRT6UqPwH4AYCi+bf2iO8XThc06DYYfct
 ZKDTbLenB+ggGCb0qQDOLhAcww==
X-Google-Smtp-Source: APXvYqwMGOA/q06WBinCIWlUW7M/1VZCEHjqAglHG+shefsYrXf4mL7mBVYyp+1OQAdgd64bYneBqw==
X-Received: by 2002:a0c:b39e:: with SMTP id t30mr10413103qve.212.1560550223146; 
 Fri, 14 Jun 2019 15:10:23 -0700 (PDT)
Received: from wlan-196-102.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k33sm2156581qte.69.2019.06.14.15.10.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 15:10:22 -0700 (PDT)
Message-ID: <90274aca8c1b785caf9e3732e8b56e501e573a1f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Sasha Levin <sashal@kernel.org>, Juston Li <juston.li@intel.com>, Lyude
 <cpaul@redhat.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Fri, 14 Jun 2019 18:10:20 -0400
In-Reply-To: <20190614215644.8F9D821874@mail.kernel.org>
References: <20181024021925.27026-2-juston.li@intel.com>
 <20190614215644.8F9D821874@mail.kernel.org>
Organization: Red Hat
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RESEND PATCH v2 1/2] drm/dp/mst: Reprobe EDID for
 MST ports on resume
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dWgsIFNhc2hhIG5vdCBzdXJlIGlmIHlvdSdyZSBhIGJvdCBvciBub3QgYnV0IHRoaXMgcGF0Y2gg
aXNuJ3QgZXZlbiB1cHN0cmVhbQoKT24gRnJpLCAyMDE5LTA2LTE0IGF0IDIxOjU2ICswMDAwLCBT
YXNoYSBMZXZpbiB3cm90ZToKPiBIaSwKPiAKPiBbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxd
Cj4gCj4gVGhpcyBjb21taXQgaGFzIGJlZW4gcHJvY2Vzc2VkIGJlY2F1c2UgaXQgY29udGFpbnMg
YSAtc3RhYmxlIHRhZy4KPiBUaGUgc3RhYmxlIHRhZyBpbmRpY2F0ZXMgdGhhdCBpdCdzIHJlbGV2
YW50IGZvciB0aGUgZm9sbG93aW5nIHRyZWVzOiBhbGwKPiAKPiBUaGUgYm90IGhhcyB0ZXN0ZWQg
dGhlIGZvbGxvd2luZyB0cmVlczogdjUuMS45LCB2NC4xOS41MCwgdjQuMTQuMTI1LAo+IHY0Ljku
MTgxLCB2NC40LjE4MS4KPiAKPiB2NS4xLjk6IEJ1aWxkIGZhaWxlZCEgRXJyb3JzOgo+ICAgICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jOjI2NzI6OTogZXJyb3I6IGltcGxp
Y2l0Cj4gZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYZHJtX2RwX2dldF92YWxpZGF0ZWRfcG9y
dF9yZWbigJk7IGRpZCB5b3UgbWVhbgo+IOKAmGRybV9tb2RlX3ZhbGlkYXRlX2RyaXZlcuKAmT8g
Wy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICAgIGRyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmM6MjY3Njo5OiBlcnJvcjogaW1wbGljaXQKPiBkZWNs
YXJhdGlvbiBvZiBmdW5jdGlvbiDigJhkcm1fZHBfZ2V0X3ZhbGlkYXRlZF9tc3RiX3JlZuKAmTsg
ZGlkIHlvdSBtZWFuCj4g4oCYZHJtX21vZGVfdmFsaWRhdGVfc2l6ZeKAmT8gWy1XZXJyb3I9aW1w
bGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
bXN0X3RvcG9sb2d5LmM6MjY4NDozOiBlcnJvcjogaW1wbGljaXQKPiBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhkcm1fZHBfcHV0X21zdF9icmFuY2hfZGV2aWNl4oCZOyBkaWQgeW91IG1lYW4K
PiDigJhkcm1fZHBfZ2V0X21zdF9icmFuY2hfZGV2aWNl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1m
dW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgICAgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9w
b2xvZ3kuYzoyNzE1OjI6IGVycm9yOiBpbXBsaWNpdAo+IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9u
IOKAmGRybV9kcF9wdXRfcG9ydOKAmTsgZGlkIHlvdSBtZWFuIOKAmGRybV9kcF9nZXRfcG9ydOKA
mT8KPiBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAKPiB2NC4xOS41
MDogQnVpbGQgT0shCj4gdjQuMTQuMTI1OiBCdWlsZCBPSyEKPiB2NC45LjE4MTogQnVpbGQgT0sh
Cj4gdjQuNC4xODE6IEJ1aWxkIE9LIQo+IAo+IEhvdyBzaG91bGQgd2UgcHJvY2VlZCB3aXRoIHRo
aXMgcGF0Y2g/Cj4gCj4gLS0KPiBUaGFua3MsCj4gU2FzaGEKLS0gCkNoZWVycywKCUx5dWRlIFBh
dWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
