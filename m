Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5172D7A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 16:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4FD6E42C;
	Fri, 11 Dec 2020 15:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597096E455
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 15:58:54 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id w206so4934745wma.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=243Gvg3EOSmTTvBu4o4RKVn/UX2SWUWrVcKX752oh38=;
 b=Id21eySxih7XsO5kncW+YAXadbd1FJRP3AnY8TzDzyRyz5vVVokfWt6LARnKv+mD6i
 xuXPXb4DkBzcRfsCwW9KZQ9udP/p+NrzbHAjO1Qv2ykiye5kdGDuJOGNzC/uPI1NH/0R
 gPKG1sdfMW2SydMRmu4eAZjGA3/gSSRFu/ySs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=243Gvg3EOSmTTvBu4o4RKVn/UX2SWUWrVcKX752oh38=;
 b=c2GCEUWK4M2lfRSTgW1gC9OA9uvP4ucq8+k7A+4llub++lkIW1VLn3Yy/CEDQXVxOf
 20PfkqK//15Eiz2z8J6PwC8dE4p1kcbMbHSaxNE+kwO11CvCU/RKQ3tutrvamL8T944L
 AVwQzVM6TERKYLeaLZm3apSrfF5xaG8lXLlRNZpMmbOkZQi+Iv35bdpPl+4ndVAZYaCC
 PeVsHBmOAIApXTjqtk7O+lzcsRRSV/e0Vmg9L0NUK+04GnGXxjTMFXKbk8f3Ca40E7kb
 b/ioXm/SPvaaQzxUIZTa+qCCuahTwiSFCOfpH+E1NGRwOVDtrLr3w64No3iSbZ2m7YFR
 gnVg==
X-Gm-Message-State: AOAM533nMAqJRO7NKzskRmhAceSH4X6n5/lnvuLWUEqJ+KbgEeHxQp/3
 dvQO3B3Mw4RGmImYyXt/h6ouZw==
X-Google-Smtp-Source: ABdhPJyuJvI2Mjy8AtPGb0Iyw00NTdMFlmVvHC+yg+8Gjr8dEU+KJmhpBUiwqBVmfmlnpv1AVmn/+w==
X-Received: by 2002:a1c:4904:: with SMTP id w4mr13987630wma.140.1607702333034; 
 Fri, 11 Dec 2020 07:58:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z21sm14828241wmk.20.2020.12.11.07.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 07:58:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 11 Dec 2020 16:58:43 +0100
Message-Id: <20201211155843.3348718-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
References: <20201211155843.3348718-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] dma-buf: doc polish for pin/unpin
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
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW90aXZhdGVkIGJ5IGEgZGlzY3Vzc2lvbiB3aXRoIENocmlzdGlhbiBhbmQgVGhvbWFzOiBUcnkg
dG8gdW50YW5nbGUgYQpiaXQgd2hhdCdzIHJlbGV2YW50IGZvciBpbXBvcnRlcnMgYW5kIHdoYXQn
cyByZWxldmFudCBmb3IgZXhwb3J0ZXJzLgoKQWxzbyBhZGQgYW4gYXNzZXJ0IHRoYXQgcmVhbGx5
IG9ubHkgZHluYW1pYyBpbXBvcnRlcnMgdXNlIHRoZSBhcGkKZnVuY3Rpb24sIGFueXRoaW5nIGVs
c2UgZG9lc24ndCBtYWtlIHNlbnNlLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAi
Q2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0t
LQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE5ICsrKysrKysrKysrKysrKystLS0KIGlu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgOCArKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCmluZGV4IDAwZDVhZmU5
MDRjYy4uMTA2NTU0NWU5Y2ExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
CisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKQEAgLTgwOSw5ICs4MDksMTUgQEAgRVhQ
T1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9kZXRhY2gpOwogCiAvKioKICAqIGRtYV9idWZfcGluIC0g
TG9jayBkb3duIHRoZSBETUEtYnVmCi0gKgogICogQGF0dGFjaDoJW2luXQlhdHRhY2htZW50IHdo
aWNoIHNob3VsZCBiZSBwaW5uZWQKICAqCisgKiBPbmx5IGR5bmFtaWMgaW1wb3J0ZXJzICh3aG8g
c2V0IHVwIEBhdHRhY2ggd2l0aCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKCkpIG1heQorICogY2Fs
bCB0aGlzLCBhbmQgb25seSBmb3IgbGltaXRlZCB1c2UgY2FzZXMgbGlrZSBzY2Fub3V0IGFuZCBu
b3QgZm9yIHRlbXBvcmFyeQorICogcGluIG9wZXJhdGlvbnMuIEl0IGlzIG5vdCBwZXJtaXR0ZWQg
dG8gYWxsb3cgdXNlcnNwYWNlIHRvIHBpbiBhcmJpdHJhcnkKKyAqIGFtb3VudHMgb2YgYnVmZmVy
cyB0aHJvdWdoIHRoaXMgaW50ZXJmYWNlLgorICoKKyAqIEJ1ZmZlcnMgbXVzdCBiZSB1bnBpbm5l
ZCBieSBjYWxsaW5nIGRtYV9idWZfdW5waW4oKS4KKyAqCiAgKiBSZXR1cm5zOgogICogMCBvbiBz
dWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCiAgKi8KQEAgLTgyMCw2ICs4
MjYsOCBAQCBpbnQgZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQogCXN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsKIAlpbnQgcmV0ID0g
MDsKIAorCVdBUk5fT04oIWRtYV9idWZfYXR0YWNobWVudF9pc19keW5hbWljKGF0dGFjaCkpOwor
CiAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsKIAogCWlmIChkbWFidWYtPm9w
cy0+cGluKQpAQCAtODMwLDE0ICs4MzgsMTkgQEAgaW50IGRtYV9idWZfcGluKHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcGluKTsK
IAogLyoqCi0gKiBkbWFfYnVmX3VucGluIC0gUmVtb3ZlIGxvY2sgZnJvbSBETUEtYnVmCi0gKgor
ICogZG1hX2J1Zl91bnBpbiAtIFVucGluIGEgRE1BLWJ1ZgogICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHdoaWNoIHNob3VsZCBiZSB1bnBpbm5lZAorICoKKyAqIFRoaXMgdW5waW5zIGEgYnVm
ZmVyIHBpbm5lZCBieSBkbWFfYnVmX3BpbigpIGFuZCBhbGxvd3MgdGhlIGV4cG9ydGVyIHRvIG1v
dmUKKyAqIGFueSBtYXBwaW5nIG9mIEBhdHRhY2ggYWdhaW4gYW5kIGluZm9ybSB0aGUgaW1wb3J0
ZXIgdGhyb3VnaAorICogJmRtYV9idWZfYXR0YWNoX29wcy5tb3ZlX25vdGlmeS4KICAqLwogdm9p
ZCBkbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKIHsKIAlz
dHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gYXR0YWNoLT5kbWFidWY7CiAKKwlXQVJOX09OKCFkbWFf
YnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKTsKKwogCWRtYV9yZXN2X2Fzc2VydF9o
ZWxkKGRtYWJ1Zi0+cmVzdik7CiAKIAlpZiAoZG1hYnVmLT5vcHMtPnVucGluKQpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAppbmRl
eCA0MzgwMmEzMWIyNWQuLjYyODY4MWJmNmM5OSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKQEAgLTg2LDEzICs4NiwxNSBA
QCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewogCSAqIEBwaW46CiAJICoKIAkgKiBUaGlzIGlzIGNhbGxl
ZCBieSBkbWFfYnVmX3BpbigpIGFuZCBsZXRzIHRoZSBleHBvcnRlciBrbm93IHRoYXQgdGhlCi0J
ICogRE1BLWJ1ZiBjYW4ndCBiZSBtb3ZlZCBhbnkgbW9yZS4KKwkgKiBETUEtYnVmIGNhbid0IGJl
IG1vdmVkIGFueSBtb3JlLiBUaGUgZXhwb3J0ZXIgc2hvdWxkIHBpbiB0aGUgYnVmZmVyCisJICog
aW50byBzeXN0ZW0gbWVtb3J5IHRvIG1ha2Ugc3VyZSBpdCBpcyBnZW5lcmFsbHkgYWNjZXNzaWJs
ZSBieSBvdGhlcgorCSAqIGRldmljZXMuCiAJICoKIAkgKiBUaGlzIGlzIGNhbGxlZCB3aXRoIHRo
ZSAmZG1hYnVmLnJlc3Ygb2JqZWN0IGxvY2tlZCBhbmQgaXMgbXV0dWFsCiAJICogZXhjbHVzaXZl
IHdpdGggQGNhY2hlX3NndF9tYXBwaW5nLgogCSAqCi0JICogVGhpcyBjYWxsYmFjayBpcyBvcHRp
b25hbCBhbmQgc2hvdWxkIG9ubHkgYmUgdXNlZCBpbiBsaW1pdGVkIHVzZQotCSAqIGNhc2VzIGxp
a2Ugc2Nhbm91dCBhbmQgbm90IGZvciB0ZW1wb3JhcnkgcGluIG9wZXJhdGlvbnMuCisJICogVGhp
cyBpcyBjYWxsZWQgYXV0b21hdGljYWxseSBmb3Igbm9uLWR5bmFtaWMgaW1wb3J0ZXJzIGZyb20K
KwkgKiBkbWFfYnVmX2F0dGFjaCgpLgogCSAqCiAJICogUmV0dXJuczoKIAkgKgotLSAKMi4yOS4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
