Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9963C1841
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDCD6E920;
	Thu,  8 Jul 2021 17:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802B46E947
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:07 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id l7so7587879wrv.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yWlDoXlQmHtBxs4oHwjRSIvVGsFtUrJ9E/m8KTpgPLs=;
 b=Vj2yac8Ah/quRr9kx/L6x4AmrqFKCm+rtbhd3uAQHgNIdQWI2crzlkTZ4j1tQAYK6O
 DDlK3BE2g9AECYy1IR50x0iF0ohWRgk+E4wwTxARgtNvCGMzDTrg6guAzFO97kKQp8gO
 UZ2/GmAk+nvVO68DF9U2heKd0MSUWpgHblago=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yWlDoXlQmHtBxs4oHwjRSIvVGsFtUrJ9E/m8KTpgPLs=;
 b=emBhjj9fRdTmPWbwXlE6yAGN7kHaoSJiMD9nTgtLfMPGZ5Z2f9TheNM1ts6G2d5O/Y
 R7XvUlkIP0dksMiAFgTZCOjCLnrx/6lHTLIu8zj8XFqUaaemgaWAiUBZtlh68M69JHzR
 EfQBPqAjd2K4CdSilQ/l3uZ9t5WWtUdjeEwzWySEYei/65jXKsElyvPTAhJGLzpSbc/r
 SZyudkU344IHeCaEawIo3kVBWws/WrtmmN/OU226KRzxo0ij1QiSmhTs1VOnik0FXkxl
 sOi+7pTO/Wp7Ar7cI1Emw0mDmmcvY9zHxf2JW0yEoEV6nGL6oAWAzi5Gz60heJONpid1
 qwBQ==
X-Gm-Message-State: AOAM531dE5pGMJd2l78mwLoOmvLCL/L5ZBjkDJ6qyzpjKCzecoqqaIa6
 fk7WzFof8OIghXAYGS0MIcgZk3e22swJ0A==
X-Google-Smtp-Source: ABdhPJzuVAVg0Ft2T67fRkxQ/GnwCVAtiJflqfwwxlwcG8Ij8TU6prPpUaQTa8yvuswIXt+W3ke60A==
X-Received: by 2002:a5d:6409:: with SMTP id z9mr35813132wru.350.1625765886009; 
 Thu, 08 Jul 2021 10:38:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:34 +0200
Message-Id: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/20] drm/sched dependency tracking and
 dma-resv fixes
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGlsIGFsbCwKCkkgZmlndXJlZCBJJ2xsIGNvbWJpbmUgdGhlIHR3byBzZXJpZXMsIHRoZXkgYnVp
bGQgb24gdG9wIG9mIGVhY2ggYW5vdGhlcgphbnl3YXkuIENoYW5nZXM6CgotIGRyb3AgYnJva2Vu
IGk5MTUgcGF0Y2ggKE1hdHQpCi0gdHlwb3MgYW5kIGltcHJvdmVtZW50cyBpbiB0aGUgZG1hLXJl
c3YgcGF0Y2gKLSBidW5jaCBvZiBmaXhlcyB0byB0aGUgZHJtX3NjaGVkX2pvYl9pbml0L2FybSBz
cGxpdCAoTWVsaXNzYSwgQ2hyaXN0aWFuKQotIHRocmV3IGEgZHJtX3NjaGVkX2VudGl0eSBkb2Mg
cGF0Y2ggb24gdG9wCgpUZXN0aW5nICYgcmV2aWV3IHZlcnkgbXVjaCB3ZWxjb21lLgoKQ2hlZXJz
LCBEYW5pZWwKCkNocmlzdGlhbiBLw7ZuaWcgKDEpOgogIGRybS9tc206IGFsd2F5cyB3YWl0IGZv
ciB0aGUgZXhjbHVzaXZlIGZlbmNlCgpEYW5pZWwgVmV0dGVyICgxOSk6CiAgZHJtL3NjaGVkOiBl
bnRpdHktPnJxIHNlbGVjdGlvbiBjYW5ub3QgZmFpbAogIGRybS9zY2hlZDogU3BsaXQgZHJtX3Nj
aGVkX2pvYl9pbml0CiAgZHJtL3NjaGVkOiBCYXJyaWVycyBhcmUgbmVlZGVkIGZvciBlbnRpdHkt
Pmxhc3Rfc2NoZWR1bGVkCiAgZHJtL3NjaGVkOiBBZGQgZGVwZW5kZW5jeSB0cmFja2luZwogIGRy
bS9zY2hlZDogZHJvcCBlbnRpdHkgcGFyYW1ldGVyIGZyb20gZHJtX3NjaGVkX3B1c2hfam9iCiAg
ZHJtL3NjaGVkOiBpbXByb3ZlIGRvY3MgYXJvdW5kIGRybV9zY2hlZF9lbnRpdHkKICBkcm0vcGFu
ZnJvc3Q6IHVzZSBzY2hlZHVsZXIgZGVwZW5kZW5jeSB0cmFja2luZwogIGRybS9saW1hOiB1c2Ug
c2NoZWR1bGVyIGRlcGVuZGVuY3kgdHJhY2tpbmcKICBkcm0vdjNkOiBNb3ZlIGRybV9zY2hlZF9q
b2JfaW5pdCB0byB2M2Rfam9iX2luaXQKICBkcm0vdjNkOiBVc2Ugc2NoZWR1bGVyIGRlcGVuZGVu
Y3kgaGFuZGxpbmcKICBkcm0vZXRuYXZpdjogVXNlIHNjaGVkdWxlciBkZXBlbmRlbmN5IGhhbmRs
aW5nCiAgZHJtL2dlbTogRGVsZXRlIGdlbSBhcnJheSBmZW5jaW5nIGhlbHBlcnMKICBkcm0vc2No
ZWQ6IERvbid0IHN0b3JlIHNlbGYtZGVwZW5kZW5jaWVzCiAgZHJtL3NjaGVkOiBDaGVjayBsb2Nr
aW5nIGluIGRybV9zY2hlZF9qb2JfYXdhaXRfaW1wbGljaXQKICBkcm0vbXNtOiBEb24ndCBicmVh
ayBleGNsdXNpdmUgZmVuY2Ugb3JkZXJpbmcKICBkcm0vZXRuYXZpdjogRG9uJ3QgYnJlYWsgZXhj
bHVzaXZlIGZlbmNlIG9yZGVyaW5nCiAgZHJtL2k5MTU6IGRlbGV0ZSBleGNsdWRlIGFyZ3VtZW50
IGZyb20gaTkxNV9zd19mZW5jZV9hd2FpdF9yZXNlcnZhdGlvbgogIGRybS9pOTE1OiBEb24ndCBi
cmVhayBleGNsdXNpdmUgZmVuY2Ugb3JkZXJpbmcKICBkbWEtcmVzdjogR2l2ZSB0aGUgZG9jcyBh
IGRvLW92ZXIKCiBEb2N1bWVudGF0aW9uL2dwdS9kcm0tbW0ucnN0ICAgICAgICAgICAgICAgICAg
fCAgIDMgKwogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgICAgICAgIHwg
IDI0ICsrLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgICAgICAgIHwg
ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfam9iLmMgICAgICAgfCAg
IDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAgICAgICAgICAgICAgICAgICB8ICA5
NiAtLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmggICAgICAg
ICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fc3VibWl0LmMg
IHwgIDY0ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9zY2hlZC5jICAg
ICAgIHwgIDY1ICstLS0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9zY2hlZC5o
ICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNo
LmMgICB8ICAgMiArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
ICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMgICAgICAg
ICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuaCAgICAgICAg
ICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jICAgICAgICAgICAgICAg
fCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYyAgICAgICAgICAgICB8
ICAyOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuaCAgICAgICAgICAgICB8
ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgICAgICAgICAgICAgICAgIHwg
IDE2ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgICAgICAgICAgfCAg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuYyAgICAgICB8ICAx
NiArLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jICAgICAgIHwgIDM5
ICstLS0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9qb2IuaCAgICAgICB8ICAg
NSArLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyAgICAgIHwgMTQw
ICsrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyAg
ICAgICB8ICAxOSArLQogZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgICAg
ICAgIHwgMTc3ICsrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9kcnYu
aCAgICAgICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS92M2QvdjNkX2dlbS5j
ICAgICAgICAgICAgICAgICB8IDExNSArKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL3YzZC92
M2Rfc2NoZWQuYyAgICAgICAgICAgICAgIHwgIDQ0ICstLS0tCiBpbmNsdWRlL2RybS9kcm1fZ2Vt
LmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUgLQogaW5jbHVkZS9kcm0vZ3B1X3NjaGVk
dWxlci5oICAgICAgICAgICAgICAgICAgIHwgMTg2ICsrKysrKysrKysrKysrLS0tLQogaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKIGluY2x1ZGUv
bGludXgvZG1hLXJlc3YuaCAgICAgICAgICAgICAgICAgICAgICB8IDEwNCArKysrKysrKystCiAz
MiBmaWxlcyBjaGFuZ2VkLCA2NzQgaW5zZXJ0aW9ucygrKSwgNTM4IGRlbGV0aW9ucygtKQoKLS0g
CjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
