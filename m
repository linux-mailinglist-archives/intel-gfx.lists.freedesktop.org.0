Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580418F7B3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:52:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284D66E27A;
	Mon, 23 Mar 2020 14:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DFD6E25A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:51:08 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id m17so8463248wrw.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uX47RNt6DxpEJu/J6CpjLqYSIBnEH5q5OXBblEIZoOc=;
 b=K2ee4G5dc7a0JfsNgm4BvfiZFWptfJKXQvCYiqe7HmIV+uo8YcsUugh+L83KbQG3Nk
 92qX0y9U5u7Y9lofTegKWt/Zs/MDoGrpCJ6wn9g+ZdFsdC2veCGf2sdmZ5NDBSkvFRbt
 VvXVhyZcJCHGzPOUTcNb407QaGA9s+6fFUsLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uX47RNt6DxpEJu/J6CpjLqYSIBnEH5q5OXBblEIZoOc=;
 b=pSm8NyCUr2+M3leNZbAmvSNnh3n794qzTuHWGsR90YUVyQ890qkUf34WRQ43Mc4WMP
 doykewlcPZob1SINCR44VO8o6m2lcGzUEH+3u5Y0XcE459O3dg7MTg1RG1i6BiKAojMP
 lteaR49na0tSQ7CCmVPBDgyC6BeGzmMT0Zv2ANI/QfMkMXuxgfbLJPXHS3EKUgmag2LU
 QZQjgoFcTBAzkH7aqbEhmE2YYdI1euysvI+BlmVr3zG56+Z5BL/3OjhImbc0mgvXHHED
 3FeeLpGy8TMXn59gq4X8EBTbf6o84GuAhiPI4JbjuLUBVjMwWyeTxTRzRHYfVQouLLxA
 17JQ==
X-Gm-Message-State: ANhLgQ2otET3SX5ak1talosqPEAKGbqfSlkCG/heEWSeUPHmRsYYQKgM
 hh687hNWCPHcBhZhd9gan+rPSg==
X-Google-Smtp-Source: ADFU+vupsBSRGkTK/Hx7rciYQM0s+iuZh8q2mwDjgKrJTzAp/VT9xCzWd5rUO80H3phM5gPXtoN9tg==
X-Received: by 2002:a5d:6187:: with SMTP id j7mr6561359wru.419.1584975067286; 
 Mon, 23 Mar 2020 07:51:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.51.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:51:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:49 +0100
Message-Id: <20200323144950.3018436-51-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 50/51] drm/udl: drop drm_driver.release hook
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBvbmx5IHR3byBmdW5jdGlvbnMgY2FsbGVkIGZyb20gdGhhdDoKZHJtX2ttc19oZWxw
ZXJfcG9sbF9maW5pKCkgYW5kIHVkbF9mcmVlX3VyYl9saXN0KCkuIEJvdGggb2YgdGhlc2UgYXJl
CmFsc28gY2FsbGVkIGZyb20gdGhlIHVic19kcml2ZXItPmRpc2Nvbm5lY3QgaG9vaywgc28gZW50
aXJlbHkKcG9pbnRsZXNzIHRvIGRvIHRoZSBzYW1lIGFnYWluIGluIHRoZSAtPnJlbGVhc2UgaG9v
ay4KCkZ1cnRoZXJtb3JlIGJ5IHRoZSB0aW1lIHdlIGNsZWFuIHVwIHRoZSBkcm1fZHJpdmVyIHdl
IHJlYWxseSBzaG91bGRuJ3QKYmUgdG91Y2hpbmcgaGFyZHdhcmUgYW55bW9yZSwgc28gc3RvcHBp
bmcgdGhlIHBvbGwgd29ya2VyIGFuZCBmcmVlaW5nCnRoZSB1cmIgYWxsb2NhdGlvbnMgaW4gLT5k
aXNjb25uZWN0IGlzIHRoZSByaWdodCB0aGluZyB0byBkby4KCk5vdyBkaXNjb25uZWN0IHN0aWxs
IGNsZWFucyB0aGluZ3MgdXAgYmVmb3JlIHVucmVnaXN0ZXJpbmcgdGhlIGRyaXZlciwKYnV0IHRo
YXQncyBhIGRpZmZlcmVudCBpc3N1ZS4KCnYyOiBVc2UgX2ZpbmksIG5vdCBfZGlzYWJsZSBpbiB1
bnBsdWcsIG1vdGl2YXRlZCBieSBkaXNjdXNzaW9ucyB3aXRoClRob21hcy4gX2Rpc2FibGUvX2Vu
YWJsZSBhcmUgZm9yIHN1c3BlbmQvcmVzdW1lLgoKQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+
CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4KQ2M6IEVtaWwgVmVsaWtvdiA8ZW1pbC5sLnZlbGlrb3ZAZ21haWwuY29tPgpDYzogR2Vy
ZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkNjOiAiTm9yYWxmIFRyw7hubmVzIiA8bm9y
YWxmQHRyb25uZXMub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzog
VGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+CkNjOiBBbGV4IERldWNoZXIgPGFs
ZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2
LmMgIHwgIDggKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oICB8ICAxIC0K
IGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21haW4uYyB8IDEwIC0tLS0tLS0tLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2
LmMKaW5kZXggYjQ0N2ZiMDUzZTc4Li4xY2UyZDg2NWMzNmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5j
CkBAIC0zNCwxNCArMzQsOCBAQCBzdGF0aWMgaW50IHVkbF91c2JfcmVzdW1lKHN0cnVjdCB1c2Jf
aW50ZXJmYWNlICppbnRlcmZhY2UpCiAKIERFRklORV9EUk1fR0VNX0ZPUFModWRsX2RyaXZlcl9m
b3BzKTsKIAotc3RhdGljIHZvaWQgdWRsX2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYpCi17Ci0JdWRsX2ZpbmkoZGV2KTsKLX0KLQogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVy
IGRyaXZlciA9IHsKIAkuZHJpdmVyX2ZlYXR1cmVzID0gRFJJVkVSX0FUT01JQyB8IERSSVZFUl9H
RU0gfCBEUklWRVJfTU9ERVNFVCwKLQkucmVsZWFzZSA9IHVkbF9kcml2ZXJfcmVsZWFzZSwKIAog
CS8qIGdlbSBob29rcyAqLwogCS5nZW1fY3JlYXRlX29iamVjdCA9IHVkbF9kcml2ZXJfZ2VtX2Ny
ZWF0ZV9vYmplY3QsCkBAIC0xMjAsNyArMTE0LDcgQEAgc3RhdGljIHZvaWQgdWRsX3VzYl9kaXNj
b25uZWN0KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCiB7CiAJc3RydWN0IGRybV9k
ZXZpY2UgKmRldiA9IHVzYl9nZXRfaW50ZmRhdGEoaW50ZXJmYWNlKTsKIAotCWRybV9rbXNfaGVs
cGVyX3BvbGxfZGlzYWJsZShkZXYpOworCWRybV9rbXNfaGVscGVyX3BvbGxfZmluaShkZXYpOwog
CXVkbF9kcm9wX3VzYihkZXYpOwogCWRybV9kZXZfdW5wbHVnKGRldik7CiAJZHJtX2Rldl9wdXQo
ZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmgKaW5kZXggMWRlN2ViMWI2YWFjLi4yNjQyZjk0YTYzZmMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX2Rydi5oCkBAIC03Niw3ICs3Niw2IEBAIGludCB1ZGxfc3VibWl0X3Vy
YihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgdXJiICp1cmIsIHNpemVfdCBsZW4pOwog
dm9pZCB1ZGxfdXJiX2NvbXBsZXRpb24oc3RydWN0IHVyYiAqdXJiKTsKIAogaW50IHVkbF9pbml0
KHN0cnVjdCB1ZGxfZGV2aWNlICp1ZGwpOwotdm9pZCB1ZGxfZmluaShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KTsKIAogaW50IHVkbF9yZW5kZXJfaGxpbmUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
aW50IGxvZ19icHAsIHN0cnVjdCB1cmIgKip1cmJfcHRyLAogCQkgICAgIGNvbnN0IGNoYXIgKmZy
b250LCBjaGFyICoqdXJiX2J1Zl9wdHIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRs
L3VkbF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tYWluLmMKaW5kZXggNTM4NzE4
OTE5OTE2Li5mNWQyN2YyYTU2NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRs
X21haW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tYWluLmMKQEAgLTM1MSwxMyAr
MzUxLDMgQEAgaW50IHVkbF9kcm9wX3VzYihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCXVkbF9m
cmVlX3VyYl9saXN0KGRldik7CiAJcmV0dXJuIDA7CiB9Ci0KLXZvaWQgdWRsX2Zpbmkoc3RydWN0
IGRybV9kZXZpY2UgKmRldikKLXsKLQlzdHJ1Y3QgdWRsX2RldmljZSAqdWRsID0gdG9fdWRsKGRl
dik7Ci0KLQlkcm1fa21zX2hlbHBlcl9wb2xsX2ZpbmkoZGV2KTsKLQotCWlmICh1ZGwtPnVyYnMu
Y291bnQpCi0JCXVkbF9mcmVlX3VyYl9saXN0KGRldik7Ci19Ci0tIAoyLjI1LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
