Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC99597B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC816E82C;
	Tue, 20 Aug 2019 08:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092DD6E827
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:20:01 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id t50so2379542edd.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:20:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P0MHbp8icd2EnfbEt8W/+7c9GESmHjcRIzzc5mREfHc=;
 b=inAfBuoFYXFVq68aLYbo7fP7xEXHxH8Dd4RtI9yE8YizrQ4W8PjVi6a2y7TSXmbxAN
 p4VbC7v0/MmPFBZog7wvDYa3OXqyMp+aN3uhPP2/nWu+iV+drE3BI+c3bm9V2C8sndTY
 n9bddFbGwdvno4OxrADIQKNggHdpnHHkBJ0L5CK9scIJDZjewYs4Zi5XDBcVpvK4qt48
 Z4qpfheemfcX8OgTEvuk1AkJE5YYUPnNtZK6JEXCJCiah+3jH2QAV+/IOg3iFJ3I35UI
 02fiunbMh6BosrgFTSfSv03dmnoOdFveGoqYyW1ybm45r1QuxVMZndDoHRnumlTkmeFD
 FCmA==
X-Gm-Message-State: APjAAAUVBFkMxCUMO0GU2dFKsyTHI8qYnab9dTf0s5OziSzNw1laYECP
 vJ8hcd7AL/nOIy9q+gCaiUUKRMSAmXgubA==
X-Google-Smtp-Source: APXvYqwws+tGdhwNI/AHb6Ki0sR410Q/kQWDEPFTsVjfkvGHAhHMdqj8R+dup9TBx0dLBbst5g9vkw==
X-Received: by 2002:a17:906:9b1:: with SMTP id
 q17mr10487760eje.224.1566289199282; 
 Tue, 20 Aug 2019 01:19:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id i4sm2467705ejs.39.2019.08.20.01.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 01:19:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 10:19:51 +0200
Message-Id: <20190820081951.25053-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
References: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P0MHbp8icd2EnfbEt8W/+7c9GESmHjcRIzzc5mREfHc=;
 b=ZWhyXfvekp7mtomOPeNw+gKv8PoctORQT4qK6vDORYQfVlFc1kfl2BJJV3TJHQGZCb
 CB0pHjKkl5vhMQORtswylUJcIGVL8oEiKsxpArAFePsSZ3hLP59vaTJNnC9fuUB3KIBn
 d39pjVY9A1d2vscbkTfyqP3a+l5l1lbvao8nc=
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: use might_lock_nested in
 get_pages annotation
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U28gc3RyaWN0bHkgc3BlYWtpbmcgdGhlIGV4aXN0aW5nIGFubm90YXRpb24gaXMgYWxzbyBvaywg
YmVjYXVzZSB3ZQpoYXZlIGEgY2hhaW4gb2YKCm9iai0+bW0ubG9jayNJOTE1X01NX0dFVF9QQUdF
UyAtPiBmc19yZWNsYWltIC0+IG9iai0+bW0ubG9jawoKKHRoZSBzaHJpbmtlciBjYW5ub3QgZ2V0
IGF0IGFuIG9iamVjdCB3aGlsZSB3ZSdyZSBpbiBnZXRfcGFnZXMsIGhlbmNlCnRoaXMgaXMgc2Fm
ZSkuIEJ1dCBpdCdzIGNvbmZ1c2luZywgc28gdHJ5IHRvIHRha2UgdGhlIHJpZ2h0IHN1YmNsYXNz
Cm9mIHRoZSBsb2NrLgoKVGhpcyBkb2VzIGEgYml0IHJlZHVjZSBvdXIgbG9ja2RlcCBiYXNlZCBj
aGVja2luZywgYnV0IHRoZW4gaXQncyBhbHNvCmxlc3MgZnJhZ2lsZSwgaW4gY2FzZSB3ZSBldmVy
IGNoYW5nZSB0aGUgbmVzdGluZyBhcm91bmQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5m
cmFkZWFkLm9yZz4KQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPgpDYzogV2lsbCBE
ZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCAzNCArKysr
KysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5o
CmluZGV4IGEwYjFmYThhMzIyNC4uYjNmZDZhYWM5M2JjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCkBAIC0yMzMsMTAgKzIzMywyNiBAQCB2b2lkIF9faTkx
NV9nZW1fb2JqZWN0X3NldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
aW50IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwogaW50IF9faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKTsKIAorZW51bSBpOTE1X21tX3N1YmNsYXNzIHsgLyogbG9ja2Rl
cCBzdWJjbGFzcyBmb3Igb2JqLT5tbS5sb2NrL3N0cnVjdF9tdXRleCAqLworCUk5MTVfTU1fTk9S
TUFMID0gMCwKKwkvKgorCSAqIE9ubHkgdXNlZCBieSBzdHJ1Y3RfbXV0ZXgsIHdoZW4gY2FsbGVk
ICJyZWN1cnNpdmVseSIgZnJvbQorCSAqIGRpcmVjdC1yZWNsYWltLWVzcXVlLiBTYWZlIGJlY2F1
c2UgdGhlcmUgaXMgb25seSBldmVyeSBvbmUKKwkgKiBzdHJ1Y3RfbXV0ZXggaW4gdGhlIGVudGly
ZSBzeXN0ZW0uICovCisJSTkxNV9NTV9TSFJJTktFUiA9IDEsCisJLyoKKwkgKiBVc2VkIGZvciBv
YmotPm1tLmxvY2sgd2hlbiBhbGxvY2F0aW5nIHBhZ2VzLiBTYWZlIGJlY2F1c2UgdGhlIG9iamVj
dAorCSAqIGlzbid0IHlldCBvbiBhbnkgTFJVLCBhbmQgdGhlcmVmb3JlIHRoZSBzaHJpbmtlciBj
YW4ndCBkZWFkbG9jayBvbgorCSAqIGl0LiBBcyBzb29uIGFzIHRoZSBvYmplY3QgaGFzIHBhZ2Vz
LCBvYmotPm1tLmxvY2sgbmVzdHMgd2l0aGluCisJICogZnNfcmVjbGFpbS4KKwkgKi8KKwlJOTE1
X01NX0dFVF9QQUdFUyA9IDEsCit9OworCiBzdGF0aWMgaW5saW5lIGludCBfX211c3RfY2hlY2sK
IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aikKIHsKLQltaWdodF9sb2NrKCZvYmotPm1tLmxvY2spOworCW1pZ2h0X2xvY2tfbmVzdGVkKCZv
YmotPm1tLmxvY2ssIEk5MTVfTU1fR0VUX1BBR0VTKTsKIAogCWlmIChhdG9taWNfaW5jX25vdF96
ZXJvKCZvYmotPm1tLnBhZ2VzX3Bpbl9jb3VudCkpCiAJCXJldHVybiAwOwpAQCAtMjc5LDIyICsy
OTUsNiBAQCBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaikKIAlfX2k5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwogfQogCi1l
bnVtIGk5MTVfbW1fc3ViY2xhc3MgeyAvKiBsb2NrZGVwIHN1YmNsYXNzIGZvciBvYmotPm1tLmxv
Y2svc3RydWN0X211dGV4ICovCi0JSTkxNV9NTV9OT1JNQUwgPSAwLAotCS8qCi0JICogT25seSB1
c2VkIGJ5IHN0cnVjdF9tdXRleCwgd2hlbiBjYWxsZWQgInJlY3Vyc2l2ZWx5IiBmcm9tCi0JICog
ZGlyZWN0LXJlY2xhaW0tZXNxdWUuIFNhZmUgYmVjYXVzZSB0aGVyZSBpcyBvbmx5IGV2ZXJ5IG9u
ZQotCSAqIHN0cnVjdF9tdXRleCBpbiB0aGUgZW50aXJlIHN5c3RlbS4gKi8KLQlJOTE1X01NX1NI
UklOS0VSID0gMSwKLQkvKgotCSAqIFVzZWQgZm9yIG9iai0+bW0ubG9jayB3aGVuIGFsbG9jYXRp
bmcgcGFnZXMuIFNhZmUgYmVjYXVzZSB0aGUgb2JqZWN0Ci0JICogaXNuJ3QgeWV0IG9uIGFueSBM
UlUsIGFuZCB0aGVyZWZvcmUgdGhlIHNocmlua2VyIGNhbid0IGRlYWRsb2NrIG9uCi0JICogaXQu
IEFzIHNvb24gYXMgdGhlIG9iamVjdCBoYXMgcGFnZXMsIG9iai0+bW0ubG9jayBuZXN0cyB3aXRo
aW4KLQkgKiBmc19yZWNsYWltLgotCSAqLwotCUk5MTVfTU1fR0VUX1BBR0VTID0gMSwKLX07Ci0K
IGludCBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF90cnVuY2F0ZShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKTsKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3dyaXRlYmFjayhzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
