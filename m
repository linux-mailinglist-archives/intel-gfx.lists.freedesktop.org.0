Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25C293C8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7ED6E0F1;
	Fri, 24 May 2019 08:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1776D6E0C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:46 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m4so13314291edd.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mUAcB3sU0dD3E/MUylEVVwC2GTKxo8rk41HcMoWy7Z0=;
 b=WfUeYALsUvD7Jhc1SX5KEfOcJNtuE59VZEq0Zsueiyy0fwOHZ3qblEzaTwudnPnn/M
 ozUb2y3jtd5KdMTAycC+EuENE/uUaU90Yo9ZV1DTawKa8yFmEFDoui1o3KrMX1BUq2Cu
 LKjib4D1iKXWPrAVZ8nCyA9EHkEKQ80fCFoba1MYSAwMelnf4un94fjmahQCa/VewQrn
 ft+1BxXzv3IyYlJwP6IVHxL5WLVhD4EF2gpzxjdrQZzBMG7nc8SXxPvNvvSgVzhT5h2g
 /YWooZVDMaGiUhV6K6b0j7BR2koRosJZCFhL2X8ps8FghqI8agSgnX0f/0E5ZLkJKfQa
 aQTw==
X-Gm-Message-State: APjAAAX/zd1kZrxr4piG1T6vKK7K4uiWw7FBtqzGVtpMzpKIsMk4A5Wo
 FzQWIMDpURH85LJyq7SPABo5Kw==
X-Google-Smtp-Source: APXvYqz2qHhN5A2pWKpVJsBUdeEY8H62cdHPVnuNt4a6bkkHftmLnMSppn0lpuPcH/owQLYONbNwfA==
X-Received: by 2002:a17:906:d557:: with SMTP id
 gk23mr78999185ejb.285.1558688083594; 
 Fri, 24 May 2019 01:54:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:53 +0200
Message-Id: <20190524085354.27411-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mUAcB3sU0dD3E/MUylEVVwC2GTKxo8rk41HcMoWy7Z0=;
 b=G8gQaHLZUx+WzPRhTW9uW/COq5N31wy0ORbu7OIDAR64WlKCvpFjKEJSkBXQceNUqU
 Pf2ZP8mFN3py9TSDiJCyhwRzpd2XkYyNoHJZxCR/dIW1IXyui6OCcrPWPzlGghN5ZXxa
 ENIvnIJhRgK6TnD1XZkchnjTIKtsaX7Tf2OIM=
Subject: [Intel-gfx] [PATCH 32/33] staging/olpc_dcon: Add drm conversion to
 TODO
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
Cc: Daniel Drake <dsd@laptop.org>, Jens Frederich <jfrederich@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Nettleton <jon.nettleton@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dGhpcyBkcml2ZXIgaXMgcHJldHR5IGhvcnJpYmxlIGZyb20gYSBkZXNpZ24gcG92LCBhbmQgbmVl
ZHMgYSBjb21wbGV0ZQpvdmVyaGF1bC4gQ29uY3JldGUgdGhpbmcgdGhhdCBhbm5veXMgbWUgaXMg
dGhhdCBpdCBsb29rcyBhdApyZWdpc3RlcmVkX2ZiLCB3aGljaCBpcyBhbiBpbnRlcm5hbCB0aGlu
ZyB0byBmYm1lbS5jIGFuZCBmYmNvbi5jLiBBbmQKb2ZjIGl0IGdldHMgdGhlIGxpZmV0aW1lIHJ1
bGVzIGFsbCB3cm9uZyAoaXQgc2hvdWxkIGF0IGxlYXN0IHVzZQpnZXQvcHV0X2ZiX2luZm8pLgoK
TG9va2luZyBhdCB0aGUgaGlzdG9yeSwgdGhlcmUncyBiZWVuIGFuIGF0dGVtcHQgYXQgZHJvcHBp
bmcgdGhpcyBmcm9tCnN0YWdpbmcgaW4gMjAxNiwgYnV0IHRoYXQgaGFkIHRvIGJlIHJldmVydGVk
LiBTaW5jZSB0aGVuIG5vdCByZWFsCmVmZm9ydCBleGNlcHQgdGhlIHVzdWFsIHN0cmVhbSBvZiB0
cml2aWFsIHBhdGNoZXMsIGFuZCBmYmRldiBoYXMgYmVlbgpmb3JtYWxseSBjbG9zZWQgZm9yIGFu
eSBuZXcgaHcgc3VwcG9ydC4gVGltZSB0byB0cnkgYWdhaW4gYW5kIGRyb3AKdGhpcz8KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSmVu
cyBGcmVkZXJpY2ggPGpmcmVkZXJpY2hAZ21haWwuY29tPgpDYzogRGFuaWVsIERyYWtlIDxkc2RA
bGFwdG9wLm9yZz4KQ2M6IEpvbiBOZXR0bGV0b24gPGpvbi5uZXR0bGV0b25AZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvc3RhZ2luZy9vbHBjX2Rjb24vVE9ETyB8IDcgKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9vbHBj
X2Rjb24vVE9ETyBiL2RyaXZlcnMvc3RhZ2luZy9vbHBjX2Rjb24vVE9ETwppbmRleCA2NjVhMGIw
NjE3MTkuLmZlMDllZmJjN2Y3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL29scGNfZGNv
bi9UT0RPCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9vbHBjX2Rjb24vVE9ETwpAQCAtMSw0ICsxLDEx
IEBACiBUT0RPOgorCS0gY29tcGxldGUgcmV3cml0ZToKKwkgIDEuIFRoZSB1bmRlcmx5aW5nIGZi
ZGV2IGRyaXZlcnMgbmVlZCB0byBiZSBjb252ZXJ0ZWQgaW50byBkcm0ga2VybmVsCisJICAgICBt
b2Rlc2V0dGluZyBkcml2ZXJzLgorCSAgMi4gVGhlIGRjb24gbG93LXBvd2VyIGRpc3BsYXkgbW9k
ZSBjYW4gdGhlbiBiZSBpbnRlZ3JhdGVkIHVzaW5nIHRoZQorCSAgICAgZHJtIGRhbWFnZSB0cmFj
a2luZyBhbmQgc2VsZi1yZWZyZXNoIGhlbHBlcnMuCisJICBUaGlzIGJvbHRlZC1vbiBzZWxmLXJl
ZnJlc2ggc3VwcG9ydCB0aGF0IGRpZ3MgYXJvdW5kIGluIGZiZGV2CisJICBpbnRlcm5hbHMsIGJ1
dCBpc24ndCBwcm9wZXJseSBpbnRlZ3JhdGVkLCBpcyBub3QgdGhlIGNvcnJlY3Qgc29sdXRpb24u
CiAJLSBzZWUgaWYgdng4NTUgZ3BpbyBBUEkgY2FuIGJlIG1hZGUgc2ltaWxhciBlbm91Z2ggdG8g
Y3M1NTM1IHNvIHdlIGNhbgogCSAgc2hhcmUgbW9yZSBjb2RlCiAJLSBjb252ZXJ0IGFsbCB1c2Vz
IG9mIHRoZSBvbGQgR1BJTyBBUEkgZnJvbSA8bGludXgvZ3Bpby5oPiB0byB0aGUKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
