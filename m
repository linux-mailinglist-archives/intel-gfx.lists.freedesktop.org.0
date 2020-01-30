Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ABF14E516
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 22:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E506289F71;
	Thu, 30 Jan 2020 21:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA8A89F61
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 21:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580421005;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tDNWgCst0GDwyM8nTpF4hXu76x1sJCVKLSJtmSAtsWY=;
 b=BBFq4fOs2j8XN5YTNJGbLQLa+HXxMzenJOjDZ6df2KcjIzAGlAnIn8/r+mv08Yx5kBZ/Ah
 B9Xu09SKVbSTEcRZ2eWnY0K9N8hFUr9BgxkuK+Zb8/916fD4iZIHh6w11oJEjG14Ir4oSM
 anER85XN5hGgSHnTAdfvkeYPsn+XCa4=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-WwGiiGJLPNyvEDU_5ghZ9w-1; Thu, 30 Jan 2020 16:50:01 -0500
Received: by mail-qv1-f71.google.com with SMTP id k2so3046598qvu.22
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 13:50:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=wMFzh29HDDMklefP8G6zmTI9HttNs9lrEUG8LsvM26Q=;
 b=YenQcPfCArh5VpLTFRgVXVRbi8OePx7eDF0hY9ZDqK094JGjmcNK14uZCs65ZgthIn
 JxUvUwwuek5Lsc3CPQP7wcnUlOKS4CU7TMPz5u32PWMyge1ENhTPuCWrxgjBASpqjOui
 DcpU1D56FIOhe8BfpEEqPof41q9GhMeNWsHP0FirGHOPehZMQN6b5BmpzwIbfJJ0OSfq
 g+CP0jKdHUV2kteP8gxDJFCREkNMlJdLTG0yOgUmQv3Fu3TTJY8hVa8y/MmwQBcUTzQ6
 tkjhUE6QiumoR2oI/tzTCo9/8ixLieyQv1tPxPC/aRSor967x30Mlutr0eoW6VZBcxu6
 hNzA==
X-Gm-Message-State: APjAAAVar8C3tQxHzuEwHz1wod3H9Cz5l17HaSeKmQL+NAl3NnXmP2kD
 Pe/omdmpik/zkt1KjOFUeZk3wHxjrvPChk1W4Wsw/Xh4vxEKX33zSr5E6CxlZ6dnrvr24wV7TIl
 xH5JgpPaUmEnZgu/srQiJxohnfOx6
X-Received: by 2002:a37:488f:: with SMTP id v137mr7550585qka.16.1580421001121; 
 Thu, 30 Jan 2020 13:50:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqxvpyuTWgiHuk6OW/l51Jh/jS5tBwsmniUIcPwilBcn9BjCJhQTU+sOOWjQ8+KqtoBcHhe+og==
X-Received: by 2002:a37:488f:: with SMTP id v137mr7550514qka.16.1580421000264; 
 Thu, 30 Jan 2020 13:50:00 -0800 (PST)
Received: from dhcp-10-20-1-90.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id p92sm3750984qtd.14.2020.01.30.13.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 13:49:59 -0800 (PST)
Message-ID: <8d87e97fcfd970a08ce178c27a0dda0f7b085e11.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: =?ISO-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Thu, 30 Jan 2020 16:49:58 -0500
In-Reply-To: <20200129232448.84704-1-jose.souza@intel.com>
References: <20200129232448.84704-1-jose.souza@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31)
MIME-Version: 1.0
X-MC-Unique: WwGiiGJLPNyvEDU_5ghZ9w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/mst: Fix possible NULL pointer
 dereference in drm_dp_mst_process_up_req()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpJJ2xsIGdvIGFoZWFk
IGFuZCBwdXNoIHRoaXMgbm93LCB0aGFua3MhCgpPbiBXZWQsIDIwMjAtMDEtMjkgYXQgMTU6MjQg
LTA4MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6Cj4gQWNjb3JkaW5nIHRvIERQIHNw
ZWNpZmljYXRpb24sIERQX1NJTktfRVZFTlRfTk9USUZZIGlzIGFsc28gYQo+IGJyb2FkY2FzdCBt
ZXNzYWdlIGJ1dCBhcyB0aGlzIGZ1bmN0aW9uIG9ubHkgaGFuZGxlcwo+IERQX0NPTk5FQ1RJT05f
U1RBVFVTX05PVElGWSBJIHdpbGwgb25seSBtYWtlIHRoZSBzdGF0aWMKPiBhbmFseXplciB0aGF0
IGNhdWdodCB0aGlzIGlzc3VlIGhhcHB5IGJ5IG5vdCBjYWxsaW5nCj4gZHJtX2RwX2dldF9tc3Rf
YnJhbmNoX2RldmljZV9ieV9ndWlkKCkgd2l0aCBhIE5VTEwgZ3VpZCwgY2F1c2luZwo+IGRybV9k
cF9tc3RfcHJvY2Vzc191cF9yZXEoKSB0byByZXR1cm4gaW4gdGhlICJpZiAoIW1zdGIpIiByaWdo
dAo+IGJlbGxvdy4KPiAKPiBGaXhlczogOTQwOGNjOTRlYjA0ICgiZHJtL2RwX21zdDogSGFuZGxl
IFVQIHJlcXVlc3RzIGFzeW5jaHJvbm91c2x5IikKPiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVk
aGF0LmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAzICsrLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBpbmRleCAyM2NmNDZiZmVmNzQuLmE4MTEyNDdjZWNm
ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IEBAIC0zODI5LDcg
KzM4MjksOCBAQCBkcm1fZHBfbXN0X3Byb2Nlc3NfdXBfcmVxKHN0cnVjdAo+IGRybV9kcF9tc3Rf
dG9wb2xvZ3lfbWdyICptZ3IsCj4gIAkJZWxzZSBpZiAobXNnLT5yZXFfdHlwZSA9PSBEUF9SRVNP
VVJDRV9TVEFUVVNfTk9USUZZKQo+ICAJCQlndWlkID0gbXNnLT51LnJlc291cmNlX3N0YXQuZ3Vp
ZDsKPiAgCj4gLQkJbXN0YiA9IGRybV9kcF9nZXRfbXN0X2JyYW5jaF9kZXZpY2VfYnlfZ3VpZCht
Z3IsIGd1aWQpOwo+ICsJCWlmIChndWlkKQo+ICsJCQltc3RiID0gZHJtX2RwX2dldF9tc3RfYnJh
bmNoX2RldmljZV9ieV9ndWlkKG1nciwKPiBndWlkKTsKPiAgCX0gZWxzZSB7Cj4gIAkJbXN0YiA9
IGRybV9kcF9nZXRfbXN0X2JyYW5jaF9kZXZpY2UobWdyLCBoZHItPmxjdCwgaGRyLT5yYWQpOwo+
ICAJfQotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
