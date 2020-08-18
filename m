Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F09D248A14
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844F389C55;
	Tue, 18 Aug 2020 15:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACD389DFC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:39:58 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id r19so9712964qvw.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X+bUY0Am9Vumox/l69PiRkSRX3TG1cDnT23QZUpushc=;
 b=Av5RjVi3dkLY40cuptKryw4qG/WYSvKefWZtW7/xw266+s0x6YH4VAys9ETeDK6u93
 W+vUVt+RhJPl/CVV9uAckWJqpTOE7YYw9EznpZOs1jCNDRyB0k1MKCwUU3GwUS17iruy
 JcSYpuJ4budNh92V4aj7gHeblZq5fMq00E7KAnqC1a2xs8qOlfmD3HkmUqNxul2WDiPc
 7ct+RvFszr41FIXE7KM5GsTXSuJL/JdgXFvtCxhRNuMQfTHTuczE+/Ez/P3W5Xul4ug/
 eRgHBO6j7mmrGkuNgROkr+wsEQoCMx/2kMUypmCFH+FnHVSit5MjYIwnmJxa36mE7Xdl
 Z5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X+bUY0Am9Vumox/l69PiRkSRX3TG1cDnT23QZUpushc=;
 b=dDPszn1RykyY7yioMp03PLKAKIspzjlFZE9HPxVU8N6ilV9Zb3SAlOMTKmJzyECqED
 4DbleRbdHWzEDXJFZHHVhfJCxxgPCDYzLavqAMxtXP7Yohqw0OfsYhCZQ+bYxkypfGog
 /y5GNnZWGIkNBplo0TG7qIhaCrhh1sBupL+8tbGkPceVz6/RTEfr+wo73jnMJJ3keRuw
 XwGUs7Z0Cyu/LK3Qq8r2RjAFqtcLlN9+ulNzrllYwQtw5IFVqjiT4hnr99ccGQVK/SJp
 EBzxh0Cl/3amDzWgkVy+P53VcCDrnL31doc01AEU9W2fm/1OGl58papTC5bZTJOeAREm
 XiGQ==
X-Gm-Message-State: AOAM531wRNktl3d+68vcL34JF4vP02y1rP/h494Y5/b5z67aP8Un9xZ5
 X+0VRmznFx9UsUrpuV2wgWVW+g==
X-Google-Smtp-Source: ABdhPJzOfe8LkmV6N7WVtBKHDS6Cx6VG+U6QE+4E6P+8PfWQCwA+uahreCzh+XejPlMhXcar5fL5kA==
X-Received: by 2002:a05:6214:3a2:: with SMTP id
 m2mr19600349qvy.221.1597765197220; 
 Tue, 18 Aug 2020 08:39:57 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id 128sm21105219qkk.101.2020.08.18.08.39.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:39:56 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:53 -0400
Message-Id: <20200818153910.27894-6-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 05/17] drm/i915: Use the cpu_transcoder in
 intel_hdcp to toggle HDCP signalling
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpJbnN0ZWFkIG9mIHVzaW5n
IGludGVsX2RpZ19wb3J0J3MgZW5jb2RlciBwaXBlIHRvIGRldGVybWluZSB3aGljaAp0cmFuc2Nv
ZGVyIHRvIHRvZ2dsZSBzaWduYWxsaW5nIG9uLCB1c2UgdGhlIGNwdV90cmFuc2NvZGVyIGZpZWxk
IGFscmVhZHkKc3RvcmVkIGluIGludGVsX2hkbWkuCgpUaGlzIGlzIHBhcnRpY3VsYXJseSBpbXBv
cnRhbnQgZm9yIE1TVC4KClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdh
bS5jQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1
bS5vcmc+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dp
ZC8yMDE5MTIxMjE5MDIzMC4xODg1MDUtNi1zZWFuQHBvb3JseS5ydW4gI3YyCkxpbms6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDExNzE5MzEwMy4x
NTY4MjEtNi1zZWFuQHBvb3JseS5ydW4gI3YzCkxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDIxODIyMDI0Mi4xMDcyNjUtNi1zZWFuQHBvb3Js
eS5ydW4gI3Y0Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDIwMDMwNTIwMTIzNi4xNTIzMDctNi1zZWFuQHBvb3JseS5ydW4gI3Y1Ckxpbms6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDQyOTE5NTUw
Mi4zOTkxOS02LXNlYW5AcG9vcmx5LnJ1biAjdjYKTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwNjIzMTU1OTA3LjIyOTYxLTYtc2VhbkBwb29y
bHkucnVuICN2NwoKQ2hhbmdlcyBpbiB2MjoKLUFkZGVkIHRvIHRoZSBzZXQKQ2hhbmdlcyBpbiB2
MzoKLXMvaGRjcC9oZG1pLyBpbiBjb21taXQgbXNnIChSYW0pCkNoYW5nZXMgaW4gdjQ6Ci1SZWJh
c2VkIG9uIGludGVsX2RlXyhyZWFkfHdyaXRlKSBjaGFuZ2UKQ2hhbmdlcyBpbiB2NToKLVVwZGF0
ZSBoZGNwLT5jcHVfdHJhbnNjb2RlciBpbiBpbnRlbF9oZGNwX2VuYWJsZSBzbyBpdCB3b3JrcyB3
aXRoIHBpcGUgIT0gMApDaGFuZ2VzIGluIHY2OgotTm9uZQpDaGFuZ2VzIGluIHY3OgotTm9uZQpD
aGFuZ2VzIGluIHY4OgotTm9uZQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgICAgICAgICB8IDEzICsrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmggICAgICAgICB8ICAyICsrCiAuLi4vZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkY3AuYyAgICAgICAgfCAxNSArKysrKysrKy0tLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICAgICB8IDE2ICsrKysrKysr
KysrLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYjAyY2Qz
NjY0N2Q2Li4yZmVlYzQ3YTQ4ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMTgyMCwxMiArMTgyMCwxMiBAQCB2b2lkIGludGVsX2RkaV9kaXNhYmxlX3Ry
YW5zY29kZXJfZnVuYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQog
fQogCiBpbnQgaW50ZWxfZGRpX3RvZ2dsZV9oZGNwX3NpZ25hbGxpbmcoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmludGVsX2VuY29kZXIsCisJCQkJICAgICBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5z
Y29kZXIsCiAJCQkJICAgICBib29sIGVuYWJsZSkKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
ID0gaW50ZWxfZW5jb2Rlci0+YmFzZS5kZXY7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShkZXYpOwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwotCWVudW0g
cGlwZSBwaXBlID0gMDsKIAlpbnQgcmV0ID0gMDsKIAl1MzIgdG1wOwogCkBAIC0xODM0LDE5ICsx
ODM0LDEyIEBAIGludCBpbnRlbF9kZGlfdG9nZ2xlX2hkY3Bfc2lnbmFsbGluZyhzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciwKIAlpZiAoZHJtX1dBUk5fT04oZGV2LCAhd2FrZXJl
ZikpCiAJCXJldHVybiAtRU5YSU87CiAKLQlpZiAoZHJtX1dBUk5fT04oZGV2LAotCQkJIWludGVs
X2VuY29kZXItPmdldF9od19zdGF0ZShpbnRlbF9lbmNvZGVyLCAmcGlwZSkpKSB7Ci0JCXJldCA9
IC1FSU87Ci0JCWdvdG8gb3V0OwotCX0KLQotCXRtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IFRSQU5TX0RESV9GVU5DX0NUTChwaXBlKSk7CisJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CiAJaWYgKGVuYWJsZSkKIAkJ
dG1wIHw9IFRSQU5TX0RESV9IRENQX1NJR05BTExJTkc7CiAJZWxzZQogCQl0bXAgJj0gflRSQU5T
X0RESV9IRENQX1NJR05BTExJTkc7Ci0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX0RE
SV9GVU5DX0NUTChwaXBlKSwgdG1wKTsKLW91dDoKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
VFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSwgdG1wKTsKIAlpbnRlbF9kaXNwbGF5
X3Bvd2VyX3B1dChkZXZfcHJpdiwgaW50ZWxfZW5jb2Rlci0+cG93ZXJfZG9tYWluLCB3YWtlcmVm
KTsKIAlyZXR1cm4gcmV0OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmgKaW5kZXggMDc3ZTlkYmJlMzY3Li5mNWZiNjJmYzk0MDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuaApAQCAtMTYsNiArMTYsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZTsKIHN0cnVjdCBpbnRlbF9kcDsKIHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlOwog
c3RydWN0IGludGVsX2VuY29kZXI7CitlbnVtIHRyYW5zY29kZXI7CiAKIHZvaWQgaW50ZWxfZGRp
X2ZkaV9wb3N0X2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJ
c3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIsCkBAIC00Myw2ICs0NCw3IEBAIHZv
aWQgaW50ZWxfZGRpX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogdTMyIGJ4dF9zaWduYWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApOwogdTMyIGRkaV9zaWduYWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApOwogaW50IGludGVsX2RkaV90b2dnbGVfaGRjcF9zaWduYWxsaW5nKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICppbnRlbF9lbmNvZGVyLAorCQkJCSAgICAgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFu
c2NvZGVyLAogCQkJCSAgICAgYm9vbCBlbmFibGUpOwogdm9pZCBpY2xfc2FuaXRpemVfZW5jb2Rl
cl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXgg
OTM0OWIxNWFmZmY2Li5kMzBlYzc3MjhhOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC0zMTQsNiArMzE0LDcgQEAgc3Ry
dWN0IGludGVsX2hkY3Bfc2hpbSB7CiAKIAkvKiBFbmFibGVzIEhEQ1Agc2lnbmFsbGluZyBvbiB0
aGUgcG9ydCAqLwogCWludCAoKnRvZ2dsZV9zaWduYWxsaW5nKShzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCwKKwkJCQkgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyLAog
CQkJCSBib29sIGVuYWJsZSk7CiAKIAkvKiBFbnN1cmVzIHRoZSBsaW5rIGlzIHN0aWxsIHByb3Rl
Y3RlZCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDdkMTc3
NGJmYmU0MS4uYWRlZjdiNTA4ZmY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCkBAIC02NjAzLDYgKzY2MDMsNyBAQCBpbnQgaW50ZWxfZHBfaGRjcF9yZWFkX3ZfcHJp
bWVfcGFydChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAogc3RhdGljCiBp
bnQgaW50ZWxfZHBfaGRjcF90b2dnbGVfc2lnbmFsbGluZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCwKKwkJCQkgICAgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyLAog
CQkJCSAgICBib29sIGVuYWJsZSkKIHsKIAkvKiBOb3QgdXNlZCBmb3Igc2luZ2xlIHN0cmVhbSBE
aXNwbGF5UG9ydCBzZXR1cHMgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmMKaW5kZXggMWEwZDQ5YWYyYTA4Li5iMjhhMzUxZjNhOTggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCkBAIC03MTMsNyArNzEzLDcgQEAgc3RhdGljIGlu
dCBpbnRlbF9oZGNwX2F1dGgoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSERDUF9SRVBfQ1RMLAogCQkJICAgICAgIGludGVsX2hk
Y3BfZ2V0X3JlcGVhdGVyX2N0bChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHBvcnQpKTsKIAot
CXJldCA9IHNoaW0tPnRvZ2dsZV9zaWduYWxsaW5nKGRpZ19wb3J0LCB0cnVlKTsKKwlyZXQgPSBz
aGltLT50b2dnbGVfc2lnbmFsbGluZyhkaWdfcG9ydCwgY3B1X3RyYW5zY29kZXIsIHRydWUpOwog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTgxNiw3ICs4MTYsNyBAQCBzdGF0aWMgaW50
IF9pbnRlbF9oZGNwX2Rpc2FibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQog
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBIRENQX1JFUF9DVEwsCiAJCSAgICAgICBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LCBIRENQX1JFUF9DVEwpICYgfnJlcGVhdGVyX2N0bCk7CiAKLQlyZXQg
PSBoZGNwLT5zaGltLT50b2dnbGVfc2lnbmFsbGluZyhkaWdfcG9ydCwgZmFsc2UpOworCXJldCA9
IGhkY3AtPnNoaW0tPnRvZ2dsZV9zaWduYWxsaW5nKGRpZ19wb3J0LCBjcHVfdHJhbnNjb2Rlciwg
ZmFsc2UpOwogCWlmIChyZXQpIHsKIAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIkZhaWxlZCB0
byBkaXNhYmxlIEhEQ1Agc2lnbmFsbGluZ1xuIik7CiAJCXJldHVybiByZXQ7CkBAIC0xNjAwLDcg
KzE2MDAsOCBAQCBzdGF0aWMgaW50IGhkY3AyX2VuYWJsZV9lbmNyeXB0aW9uKHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJICAgIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEhE
Q1AyX1NUQVRVUyhkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHBvcnQpKSAmCiAJCSAgICBMSU5L
X0VOQ1JZUFRJT05fU1RBVFVTKTsKIAlpZiAoaGRjcC0+c2hpbS0+dG9nZ2xlX3NpZ25hbGxpbmcp
IHsKLQkJcmV0ID0gaGRjcC0+c2hpbS0+dG9nZ2xlX3NpZ25hbGxpbmcoZGlnX3BvcnQsIHRydWUp
OworCQlyZXQgPSBoZGNwLT5zaGltLT50b2dnbGVfc2lnbmFsbGluZyhkaWdfcG9ydCwgY3B1X3Ry
YW5zY29kZXIsCisJCQkJCQkgICAgdHJ1ZSk7CiAJCWlmIChyZXQpIHsKIAkJCWRybV9lcnIoJmRl
dl9wcml2LT5kcm0sCiAJCQkJIkZhaWxlZCB0byBlbmFibGUgSERDUCBzaWduYWxsaW5nLiAlZFxu
IiwKQEAgLTE2NTAsNyArMTY1MSw4IEBAIHN0YXRpYyBpbnQgaGRjcDJfZGlzYWJsZV9lbmNyeXB0
aW9uKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sICJEaXNhYmxlIEVuY3J5cHRpb24gVGltZWRvdXQiKTsKIAogCWlmIChoZGNw
LT5zaGltLT50b2dnbGVfc2lnbmFsbGluZykgewotCQlyZXQgPSBoZGNwLT5zaGltLT50b2dnbGVf
c2lnbmFsbGluZyhkaWdfcG9ydCwgZmFsc2UpOworCQlyZXQgPSBoZGNwLT5zaGltLT50b2dnbGVf
c2lnbmFsbGluZyhkaWdfcG9ydCwgY3B1X3RyYW5zY29kZXIsCisJCQkJCQkgICAgZmFsc2UpOwog
CQlpZiAocmV0KSB7CiAJCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLAogCQkJCSJGYWlsZWQgdG8g
ZGlzYWJsZSBIRENQIHNpZ25hbGxpbmcuICVkXG4iLApAQCAtMjAzNiwxMSArMjAzOCwxMCBAQCBp
bnQgaW50ZWxfaGRjcF9lbmFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLAog
CWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLAogCQkgICAgaGRjcC0+dmFsdWUgPT0gRFJNX01P
REVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQpOwogCWhkY3AtPmNvbnRlbnRfdHlwZSA9IGNv
bnRlbnRfdHlwZTsKKwloZGNwLT5jcHVfdHJhbnNjb2RlciA9IGNwdV90cmFuc2NvZGVyOwogCi0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKLQkJaGRjcC0+Y3B1X3RyYW5zY29kZXIg
PSBjcHVfdHJhbnNjb2RlcjsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKIAkJaGRj
cC0+cG9ydF9kYXRhLmZ3X3RjID0gaW50ZWxfZ2V0X21laV9md190YyhjcHVfdHJhbnNjb2Rlcik7
Ci0JfQogCiAJLyoKIAkgKiBDb25zaWRlcmluZyB0aGF0IEhEQ1AyLjIgaXMgbW9yZSBzZWN1cmUg
dGhhbiBIRENQMS40LCBJZiB0aGUgc2V0dXAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKaW5kZXggZGUyY2U1NjMyYjk0Li4zOTY2ZmNmYjdkM2EgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0xNDc3LDcgKzE0NzcsOCBAQCBp
bnQgaW50ZWxfaGRtaV9oZGNwX3JlYWRfdl9wcmltZV9wYXJ0KHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0LAogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQga2JsX3JlcG9z
aXRpb25pbmdfZW5jX2VuX3NpZ25hbChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Ip
CitzdGF0aWMgaW50IGtibF9yZXBvc2l0aW9uaW5nX2VuY19lbl9zaWduYWwoc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAorCQkJCQkgICBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5z
Y29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
b25uZWN0b3ItPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCA9IGludGVsX2F0dGFjaGVkX2RpZ19wb3J0KGNvbm5lY3Rvcik7CkBAIC0xNDk0LDEzICsxNDk1
LDE1IEBAIHN0YXRpYyBpbnQga2JsX3JlcG9zaXRpb25pbmdfZW5jX2VuX3NpZ25hbChzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJCXVzbGVlcF9yYW5nZSgyNSwgNTApOwogCX0K
IAotCXJldCA9IGludGVsX2RkaV90b2dnbGVfaGRjcF9zaWduYWxsaW5nKCZkaWdfcG9ydC0+YmFz
ZSwgZmFsc2UpOworCXJldCA9IGludGVsX2RkaV90b2dnbGVfaGRjcF9zaWduYWxsaW5nKCZkaWdf
cG9ydC0+YmFzZSwgY3B1X3RyYW5zY29kZXIsCisJCQkJCSAgICAgICBmYWxzZSk7CiAJaWYgKHJl
dCkgewogCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLAogCQkJIkRpc2FibGUgSERDUCBzaWduYWxs
aW5nIGZhaWxlZCAoJWQpXG4iLCByZXQpOwogCQlyZXR1cm4gcmV0OwogCX0KLQlyZXQgPSBpbnRl
bF9kZGlfdG9nZ2xlX2hkY3Bfc2lnbmFsbGluZygmZGlnX3BvcnQtPmJhc2UsIHRydWUpOworCXJl
dCA9IGludGVsX2RkaV90b2dnbGVfaGRjcF9zaWduYWxsaW5nKCZkaWdfcG9ydC0+YmFzZSwgY3B1
X3RyYW5zY29kZXIsCisJCQkJCSAgICAgICB0cnVlKTsKIAlpZiAocmV0KSB7CiAJCWRybV9lcnIo
JmRldl9wcml2LT5kcm0sCiAJCQkiRW5hYmxlIEhEQ1Agc2lnbmFsbGluZyBmYWlsZWQgKCVkKVxu
IiwgcmV0KTsKQEAgLTE1MTIsNiArMTUxNSw3IEBAIHN0YXRpYyBpbnQga2JsX3JlcG9zaXRpb25p
bmdfZW5jX2VuX3NpZ25hbChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAKIHN0
YXRpYwogaW50IGludGVsX2hkbWlfaGRjcF90b2dnbGVfc2lnbmFsbGluZyhzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKKwkJCQkgICAgICBlbnVtIHRyYW5zY29kZXIgY3B1X3Ry
YW5zY29kZXIsCiAJCQkJICAgICAgYm9vbCBlbmFibGUpCiB7CiAJc3RydWN0IGludGVsX2hkbWkg
KmhkbWkgPSAmZGlnX3BvcnQtPmhkbWk7CkBAIC0xNTIyLDcgKzE1MjYsOCBAQCBpbnQgaW50ZWxf
aGRtaV9oZGNwX3RvZ2dsZV9zaWduYWxsaW5nKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0LAogCWlmICghZW5hYmxlKQogCQl1c2xlZXBfcmFuZ2UoNiwgNjApOyAvKiBCc3BlYyBz
YXlzID49IDZ1cyAqLwogCi0JcmV0ID0gaW50ZWxfZGRpX3RvZ2dsZV9oZGNwX3NpZ25hbGxpbmco
JmRpZ19wb3J0LT5iYXNlLCBlbmFibGUpOworCXJldCA9IGludGVsX2RkaV90b2dnbGVfaGRjcF9z
aWduYWxsaW5nKCZkaWdfcG9ydC0+YmFzZSwgY3B1X3RyYW5zY29kZXIsCisJCQkJCSAgICAgICBl
bmFibGUpOwogCWlmIChyZXQpIHsKIAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIiVzIEhEQ1Ag
c2lnbmFsbGluZyBmYWlsZWQgKCVkKVxuIiwKIAkJCWVuYWJsZSA/ICJFbmFibGUiIDogIkRpc2Fi
bGUiLCByZXQpOwpAQCAtMTUzNCw3ICsxNTM5LDggQEAgaW50IGludGVsX2hkbWlfaGRjcF90b2dn
bGVfc2lnbmFsbGluZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkgKiBv
cHBvcnR1bml0eSBhbmQgZW5jX2VuIHNpZ25hbGxpbmcgaW4gS0FCWUxBS0UuCiAJICovCiAJaWYg
KElTX0tBQllMQUtFKGRldl9wcml2KSAmJiBlbmFibGUpCi0JCXJldHVybiBrYmxfcmVwb3NpdGlv
bmluZ19lbmNfZW5fc2lnbmFsKGNvbm5lY3Rvcik7CisJCXJldHVybiBrYmxfcmVwb3NpdGlvbmlu
Z19lbmNfZW5fc2lnbmFsKGNvbm5lY3RvciwKKwkJCQkJCSAgICAgICBjcHVfdHJhbnNjb2Rlcik7
CiAKIAlyZXR1cm4gMDsKIH0KLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2ds
ZSAvIENocm9taXVtIE9TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
