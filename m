Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645C327F98
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E4E89EEB;
	Thu, 23 May 2019 14:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B839389EFF;
 Thu, 23 May 2019 14:28:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3AB2A010C;
 Thu, 23 May 2019 14:28:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 May 2019 14:28:26 -0000
Message-ID: <20190523142826.12609.25979@emeril.freedesktop.org>
References: <20190523064933.23604-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523064933.23604-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Always_acquire_struct=5Fmutex_for_gen6=5Fppg?=
 =?utf-8?q?tt=5Fcleanup?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWly
ZSBzdHJ1Y3RfbXV0ZXggZm9yIGdlbjZfcHBndHRfY2xlYW51cApVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEwMTIvClN0YXRlIDogd2FybmluZwoKPT0g
U3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo2YzYyYzg1ZDQ1NTgg
ZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWlyZSBzdHJ1Y3RfbXV0ZXggZm9yIGdlbjZfcHBndHRf
Y2xlYW51cAotOjEzOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndy
YXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBs
aW5lKQojMTM6IAo8ND4gWzI1Ny43NDAxNjBdIFdBUk5fT04oZGVidWdfbG9ja3MgJiYgIWxvY2tf
aXNfaGVsZCgmKCZ2bWEtPnZtLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KS0+ZGVwX21hcCkpCgot
OjQ2OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRp
b24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0g
aWU6ICdjb21taXQgZTA2OTVkYjcyOThlICgiZHJtL2k5MTU6IENyZWF0ZS9kZXN0cm95IFZNIChw
cEdUVCkgZm9yIHVzZSB3aXRoIGNvbnRleHRzIiknCiM0NjogClJlZmVyZW5jZXM6IGUwNjk1ZGI3
Mjk4ZSAoImRybS9pOTE1OiBDcmVhdGUvZGVzdHJveSBWTSAocHBHVFQpIGZvciB1c2Ugd2l0aCBj
b250ZXh0cyIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2NCBsaW5l
cyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
