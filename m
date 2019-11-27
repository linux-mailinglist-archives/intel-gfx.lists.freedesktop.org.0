Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F4610B728
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12956E5B6;
	Wed, 27 Nov 2019 20:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66FF16E11E;
 Wed, 27 Nov 2019 20:04:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DD2EA00FD;
 Wed, 27 Nov 2019 20:04:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 27 Nov 2019 20:04:20 -0000
Message-ID: <157488506035.9109.2863070763121404815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1574871797.git.jani.nikula@intel.com>
In-Reply-To: <cover.1574871797.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_video=2C_drm=3A_constify_fbops_in_struct_fb=5Finfo?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdmlkZW8sIGRybTogY29uc3RpZnkgZmJvcHMg
aW4gc3RydWN0IGZiX2luZm8KVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzcwMTE5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYTkzMTI3NTViZDgyIHZpZGVvOiBmYl9kZWZpbzogcHJl
c2VydmUgdXNlciBmYl9vcHMKLTo5MzogQ0hFQ0s6QVZPSURfRVhURVJOUzogZXh0ZXJuIHByb3Rv
dHlwZXMgc2hvdWxkIGJlIGF2b2lkZWQgaW4gLmggZmlsZXMKIzkzOiBGSUxFOiBpbmNsdWRlL2xp
bnV4L2ZiLmg6NjYyOgorZXh0ZXJuIGludCBmYl9kZWZlcnJlZF9pb19pbml0KHN0cnVjdCBmYl9p
bmZvICppbmZvKTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDYzIGxp
bmVzIGNoZWNrZWQKY2Y5Mjg1NDNiZmNiIGRybS9mYi1oZWxwZXI6IGRvbid0IHByZXNlcnZlIGZi
X29wcyBhY3Jvc3MgZGVmZXJyZWQgSU8gdXNlCmU1MTVjOWQzZjE1ZCB2aWRlbzogc21zY3VmeDog
ZG9uJ3QgcmVzdG9yZSBmYl9tbWFwIGFmdGVyIGRlZmVycmVkIElPIGNsZWFudXAKYWQ0NmNhYzNj
MGUzIHZpZGVvOiB1ZGxmYjogZG9uJ3QgcmVzdG9yZSBmYl9tbWFwIGFmdGVyIGRlZmVycmVkIElP
IGNsZWFudXAKNDYwZmY1M2ZlNTY2IHZpZGVvOiBmYmRldjogdmVzYWZiOiBtb2RpZnkgdGhlIHN0
YXRpYyBmYl9vcHMgZGlyZWN0bHkKMDVmYzJiMzM1NjVjIHZpZGVvOiBmYm1lbTogdXNlIGNvbnN0
IHBvaW50ZXIgZm9yIGZiX29wcwpmMGY2NjlhMDNkNDkgdmlkZW86IG9tYXBmYjogdXNlIGNvbnN0
IHBvaW50ZXIgZm9yIGZiX29wcwo1ZmFlNTYxZGM3NWUgdmlkZW86IGZiZGV2OiBtYWtlIGZib3Bz
IG1lbWJlciBvZiBzdHJ1Y3QgZmJfaW5mbyBhIGNvbnN0IHBvaW50ZXIKNzQ3NzljYmEyZGZjIGRy
bTogY29uc3RpZnkgZmIgb3BzIGFjcm9zcyBhbGwgZHJpdmVycwo4NDFhMzgzYjJmZjggdmlkZW86
IGNvbnN0aWZ5IGZiIG9wcyBhY3Jvc3MgYWxsIGRyaXZlcnMKYzhjZTcxMWM5OTk4IEhJRDogcGlj
b0xDRDogY29uc3RpZnkgZmIgb3BzCmE3MzE0MzEwZmI2NiBtZWRpYTogY29uc3RpZnkgZmIgb3Bz
IGFjcm9zcyBhbGwgZHJpdmVycwplYTUxYmVlYWYxODIgc2FtcGxlczogdmZpby1tZGV2OiBjb25z
dGlmeSBmYiBvcHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
