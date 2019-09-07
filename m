Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B46FAC656
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C25C89F2A;
	Sat,  7 Sep 2019 11:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EA3A89F2A;
 Sat,  7 Sep 2019 11:30:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3981EA363D;
 Sat,  7 Sep 2019 11:30:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Sat, 07 Sep 2019 11:30:16 -0000
Message-ID: <20190907113016.17039.24688@emeril.freedesktop.org>
References: <20190907110735.10302-1-animesh.manna@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190907110735.10302-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DSB_enablement=2E_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRFNCIGVuYWJsZW1lbnQuIChyZXY1KQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMwMTMvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAowZjliY2U2N2RhZjQgZHJtL2k5MTUvZHNiOiBmZWF0dXJlIGZsYWcgYWRkZWQgZm9yIGRpc3Bs
YXkgc3RhdGUgYnVmZmVyLgo0MWE0NDI3YzI0NzQgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBj
cmVhdGlvbi4KLTo1NjogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9y
IGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojNTY6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMTIzIGxpbmVzIGNoZWNrZWQKOTMwYjI1ZTliMWM2IGRybS9pOTE1L2RzYjogc2luZ2xlIHJl
Z2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCmQ5ZmI4ZmIzZjdlZiBkcm0vaTkxNS9kc2I6
IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KZjYwZDdkYTQ0MTJmIGRy
bS9pOTE1L2RzYjogQ2hlY2sgRFNCIGVuZ2luZSBzdGF0dXMuCmM3NWU3MmMzMjFjZCBkcm0vaTkx
NS9kc2I6IGZ1bmN0aW9ucyB0byBlbmFibGUvZGlzYWJsZSBEU0IgZW5naW5lLgplYTE5MDVkNmYz
MmEgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byB0cmlnZ2VyIHdvcmtsb2FkIGV4ZWN1dGlvbiBv
ZiBEU0IuCmEwOGI2ZGNmZTZiMCBkcm0vaTkxNS9kc2I6IGFkZGVkIGRzYiByZWZjb3VudCB0byBz
eW5jaHJvbml6ZSBiZXR3ZWVuIGdldC9wdXQuCjJkNjhjOGEzZThiZCBkcm0vaTkxNS9kc2I6IEVu
YWJsZSBnYW1tYSBsdXQgcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgpjYTA5NmIxZWNiYzUgZHJtL2k5
MTUvZHNiOiBFbmFibGUgRFNCIGZvciBnZW4xMi4KMWI2NjllNWE1MDM1IGRybS9pOTE1L2RzYjog
RG9jdW1lbnRhdGlvbiBmb3IgRFNCLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
