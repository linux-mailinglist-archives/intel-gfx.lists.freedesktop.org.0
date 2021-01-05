Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84F42EAE2F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43D66E115;
	Tue,  5 Jan 2021 15:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE216E115
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609860361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cohpEkztqC79pplZ0WGzrZ+vOUXxhT7/qJCOHwBdvw4=;
 b=bF5Q2JmqDvZK2a2iv7dy3glE8rvnaac88EF7haOmysdDXJdMRKY3faDBMmO+RIGWjqEZb5
 LOsGPbKJi6ZT1KhWCkkWy07N2kYoPLowoYBQjYZUG7qKsXhX1cCJwtlIiaJ5FK8BE2xHNq
 y4c04iWaGHQ5Bt7eYiEAlad39pKXVmo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-5HDYCJjmMpWjKZY9WIy8hQ-1; Tue, 05 Jan 2021 10:25:59 -0500
X-MC-Unique: 5HDYCJjmMpWjKZY9WIy8hQ-1
Received: by mail-ed1-f69.google.com with SMTP id a9so8546edy.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Jan 2021 07:25:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cohpEkztqC79pplZ0WGzrZ+vOUXxhT7/qJCOHwBdvw4=;
 b=szycFksX2R/zqDfyfUF+rWcQYg1nPQG+5aKEW8HjM4uGGcywl7FFIkdoJ+ZuKtmpXA
 vLSTgd3BuTCP8A4BeR7fzJX16nsMDrDxc1jiWK1e84YL+kAwl9hLigw/JdwfJi9wiwba
 AZrWs/lf3yDj8LQak0yhMPtZGMPcY/l6tOBFCsuN8z0HwJwszTErJ5m9efs5wKez16gb
 pg6zyo3xZQ3RLurj1HSUMYmKRsqTij0nq84Y1vb3cN5GB+fOuZJpcsVpuO5f0UFIJDBu
 wK79MkS9Cjqrzt5RllnYvhVC0Y/SfCxyHIFEfKzRcKJO6ClAcOUGtxshJIrokPUV/AwM
 PKYw==
X-Gm-Message-State: AOAM532IHk8Rqz6gA6+fQY2/rH+ECHHDVAc12tz3C7Abai+NDM3mkyYZ
 A6sdwimelJCTmmaJNoqRmFaLwX+UXyv8TfO0ZNaoj1M4HQBymDd4OYZpVLE1MR2EhRcQy/yHlCJ
 0AaFAVsHOs4ohZB4n9uvh3O/D4m6e
X-Received: by 2002:a05:6402:1c8a:: with SMTP id
 cy10mr243560edb.151.1609860358276; 
 Tue, 05 Jan 2021 07:25:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+PtK0Z5XGQS10tGl2xhgyc9kFlCn8xrU9P6aGk+rlXZbMpZa3Wzy7QYOndNV+RMO2hIG0JQ==
X-Received: by 2002:a05:6402:1c8a:: with SMTP id
 cy10mr243549edb.151.1609860358140; 
 Tue, 05 Jan 2021 07:25:58 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
 by smtp.gmail.com with ESMTPSA id f11sm46283520edy.59.2021.01.05.07.25.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Jan 2021 07:25:57 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210104203905.19248-1-chris@chris-wilson.co.uk>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3ab4fe46-8a4a-a665-687e-131257271d23@redhat.com>
Date: Tue, 5 Jan 2021 16:25:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210104203905.19248-1-chris@chris-wilson.co.uk>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable RPM wakeref assertions
 during driver shutdown
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxLzQvMjEgOTozOSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEFzIHdpdGggdGhl
IHJlZ3VsYXIgc3VzcGVuZCBwYXRocywgYWxzbyBkaXNhYmxlIHRoZSB3YWtlcmVmIGFzc2VydGlv
bnMKPiBhcyB3ZSBkaXNhYmxlIHRoZSBkcml2ZXIgZHVyaW5nIHNodXRkb3duLgo+IAo+IFJlcG9y
dGVkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+IENsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yODk5Cj4gRml4
ZXM6IGZlMGYxZTNiZmRmZSAoImRybS9pOTE1OiBTaHV0IGRvd24gZGlzcGxheXMgZ3JhY2VmdWxs
eSBvbiByZWJvb3QiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IENjOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgoKVGhh
bmtzLCBJIGNhbiBjb25maXJtIHRoYXQgdGhpcyBwYXRjaCBmaXhlcyB0aGUgd2Fybi9iYWNrdHJh
Y2Ugb24gc2h1dGRvd24vcmVib290OgoKVGVzdGVkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2Vk
ZUByZWRoYXQuY29tPgoKUmVnYXJkcywKCkhhbnMKCgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyB8IDQgKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggMjQ5Zjc2NTk5M2Y3Li42NDNh
ODk5YjNiNDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMTA0Niw2ICsxMDQ2
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2h1dGRvd25fZW5jb2RlcnMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgewo+ICsJZGlzYWJsZV9ycG1fd2FrZXJlZl9h
c3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKPiArCj4gIAlpOTE1X2dlbV9zdXNwZW5kKGk5MTUp
Owo+ICAKPiAgCWRybV9rbXNfaGVscGVyX3BvbGxfZGlzYWJsZSgmaTkxNS0+ZHJtKTsKPiBAQCAt
MTA1OSw2ICsxMDYxLDggQEAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gIAlpbnRlbF9zdXNwZW5kX2VuY29kZXJzKGk5MTUpOwo+
ICAJaW50ZWxfc2h1dGRvd25fZW5jb2RlcnMoaTkxNSk7Cj4gKwo+ICsJZW5hYmxlX3JwbV93YWtl
cmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBz
dXNwZW5kX3RvX2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
