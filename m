Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04C18F7A8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7E86E282;
	Mon, 23 Mar 2020 14:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129A86E25A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:51:07 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id p10so5022583wrt.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eDZmp+7Dy+sbMoNnA4PJaA3tPCitvhgh8JI8W3A0ofs=;
 b=LE56kgEEtmGmuiV4NT2eHa3AMytGMGrKkZYv7kg2ATo+457gk4hRQimIwmJeEmy8Cl
 fwkusGoKHwxFVah+VVKnkPTarLSXU9JsvyNKIt1htDrWo9WTaSobdzhHBy90OcZ7SxsE
 fU2v4hnPneOIPCLzypA2fhG6ELZnqPlduHVm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eDZmp+7Dy+sbMoNnA4PJaA3tPCitvhgh8JI8W3A0ofs=;
 b=Vv2RAskOAUxOIAmIHM0hUvNr1MqSbzNMbmrxQCvWdc1vpN3X4iLuqywgy9ZdVzL4CZ
 QmFBXkpHduOjkpUZWPTEOh5JzjAoTuR56sctvb4vHLQfxOaFmmFVU1AzPPaHlgvQIGu/
 LhJ2KtlqH3xTYSNOdoQQtgiczeu3wURT7g4z2HKN2tXWFV0J5i1R29uD8yR4ONgjquXn
 pI9SKyq8xNWup3PjA74BOfrSuDHq8hc+LhxfrlqlJ8TOmTpNUL5XwyELyPpGuIEIoHTU
 rwkvr8Ys9flMy+VQNoA7nJ3E2zPHeeoZDScTwNrl9ga+Hc3abQQV+zWswd+wF4ZMDV7c
 HByA==
X-Gm-Message-State: ANhLgQ30S34roBnejEK+rlWbIU1a9Wc7O1x/0blj8SLxjmOgYKmuZHGL
 JsS4aGY3w5DtsXVWc4Ba3RQ4bg==
X-Google-Smtp-Source: ADFU+vvxzxsQ8HFzsMcQY1iCX0SzsERiNiTnf7ZcKoBdec8QketJ+KEU2dzlcMS9ieckAwJS/cDgbQ==
X-Received: by 2002:adf:fe4b:: with SMTP id m11mr2432283wrs.20.1584975065698; 
 Mon, 23 Mar 2020 07:51:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.51.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:51:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:48 +0100
Message-Id: <20200323144950.3018436-50-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 49/51] drm/udl: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyByaWdodCBhYm92ZSB0aGUgZHJtX2Rldl9wdXQoKS4KClRoaXMgYWxsb3dzIHVzIHRvIGRl
bGV0ZSBhIGJpdCBvZiBvbmlvbiB1bndpbmRpbmcgaW4KdWRsX21vZGVzZXRfaW5pdCgpLgoKVGhp
cyBpcyBtYWRlIHBvc3NpYmxlIGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRy
bW1fCmNsZWFudXAgYWN0aW9uIHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3
ZSBuZWVkIHRvIGRvIHRvCmVuc3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMg
cnVuIG9uIGZpbmFsIGRybV9kZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNv
ZGUgZm9yIF9pbml0KCkuCgp2MjogRXhwbGFpbiB3aHkgdGhpcyBjbGVhbnVwIGlzIHBvc3NpYmxl
IChMYXVyZW50KS4KCnYzOiBVc2UgZHJtbV9tb2RlX2NvbmZpZ19pbml0KCkgZm9yIG1vcmUgY2xh
cml0eSAoU2FtLCBUaG9tYXMpCgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpD
YzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkFja2VkLWJ5OiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50
LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0
LmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPgpDYzogRW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+CkNj
OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KQ2M6ICJOb3JhbGYgVHLDuG5uZXMi
IDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25p
eC5kZT4KQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdWRsL3VkbF9kcnYuYyAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9k
cnYuaCAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tb2Rlc2V0LmMgfCAyMSAr
KysrKystLS0tLS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAx
NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jCmluZGV4IDhiNzhjMzU2YmViNS4uYjQ0
N2ZiMDUzZTc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYwpAQCAtMzcsNyArMzcsNiBAQCBERUZJTkVf
RFJNX0dFTV9GT1BTKHVkbF9kcml2ZXJfZm9wcyk7CiBzdGF0aWMgdm9pZCB1ZGxfZHJpdmVyX3Jl
bGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKIAl1ZGxfZmluaShkZXYpOwotCXVkbF9t
b2Rlc2V0X2NsZWFudXAoZGV2KTsKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZl
ciA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmgKaW5kZXggZTY3MjI3YzQ0Y2M0Li4xZGU3ZWIxYjZhYWMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX2Rydi5oCkBAIC02OCw3ICs2OCw2IEBAIHN0cnVjdCB1ZGxfZGV2aWNl
IHsKIAogLyogbW9kZXNldCAqLwogaW50IHVkbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZp
Y2UgKmRldik7Ci12b2lkIHVkbF9tb2Rlc2V0X2NsZWFudXAoc3RydWN0IGRybV9kZXZpY2UgKmRl
dik7CiBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqdWRsX2Nvbm5lY3Rvcl9pbml0KHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYpOwogCiBzdHJ1Y3QgdXJiICp1ZGxfZ2V0X3VyYihzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21vZGVzZXQuYyBi
L2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21vZGVzZXQuYwppbmRleCBkNTllYmFjNzBiMTUuLjhj
YWQwMWYzZDE2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfbW9kZXNldC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21vZGVzZXQuYwpAQCAtNDY4LDcgKzQ2OCw5
IEBAIGludCB1ZGxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKIAlpbnQgcmV0OwogCi0JZHJtX21vZGVfY29uZmln
X2luaXQoZGV2KTsKKwlyZXQgPSBkcm1tX21vZGVfY29uZmlnX2luaXQoZGV2KTsKKwlpZiAocmV0
KQorCQlyZXR1cm4gcmV0OwogCiAJZGV2LT5tb2RlX2NvbmZpZy5taW5fd2lkdGggPSA2NDA7CiAJ
ZGV2LT5tb2RlX2NvbmZpZy5taW5faGVpZ2h0ID0gNDgwOwpAQCAtNDgyLDEwICs0ODQsOCBAQCBp
bnQgdWRsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWRldi0+bW9kZV9j
b25maWcuZnVuY3MgPSAmdWRsX21vZGVfZnVuY3M7CiAKIAljb25uZWN0b3IgPSB1ZGxfY29ubmVj
dG9yX2luaXQoZGV2KTsKLQlpZiAoSVNfRVJSKGNvbm5lY3RvcikpIHsKLQkJcmV0ID0gUFRSX0VS
Uihjb25uZWN0b3IpOwotCQlnb3RvIGVycl9kcm1fbW9kZV9jb25maWdfY2xlYW51cDsKLQl9CisJ
aWYgKElTX0VSUihjb25uZWN0b3IpKQorCQlyZXR1cm4gUFRSX0VSUihjb25uZWN0b3IpOwogCiAJ
Zm9ybWF0X2NvdW50ID0gQVJSQVlfU0laRSh1ZGxfc2ltcGxlX2Rpc3BsYXlfcGlwZV9mb3JtYXRz
KTsKIApAQCAtNDk0LDE4ICs0OTQsOSBAQCBpbnQgdWRsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQogCQkJCQkgICB1ZGxfc2ltcGxlX2Rpc3BsYXlfcGlwZV9mb3JtYXRzLAog
CQkJCQkgICBmb3JtYXRfY291bnQsIE5VTEwsIGNvbm5lY3Rvcik7CiAJaWYgKHJldCkKLQkJZ290
byBlcnJfZHJtX21vZGVfY29uZmlnX2NsZWFudXA7CisJCXJldHVybiByZXQ7CiAKIAlkcm1fbW9k
ZV9jb25maWdfcmVzZXQoZGV2KTsKIAogCXJldHVybiAwOwotCi1lcnJfZHJtX21vZGVfY29uZmln
X2NsZWFudXA6Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZGV2KTsKLQlyZXR1cm4gcmV0Owot
fQotCi12b2lkIHVkbF9tb2Rlc2V0X2NsZWFudXAoc3RydWN0IGRybV9kZXZpY2UgKmRldikKLXsK
LQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkZXYpOwogfQotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
