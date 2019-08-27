Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E789F367
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96E689718;
	Tue, 27 Aug 2019 19:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3126F89708;
 Tue, 27 Aug 2019 19:44:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29EF2A00EF;
 Tue, 27 Aug 2019 19:44:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 27 Aug 2019 19:44:15 -0000
Message-ID: <20190827194415.24242.74525@emeril.freedesktop.org>
References: <20190827191026.26175-1-animesh.manna@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DSB_enablement=2E_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRFNCIGVuYWJsZW1lbnQuIChyZXYzKQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMwMTMvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cApkYTMyZDUxZjViMTcgZHJtL2k5MTUvZHNiOiBmZWF0dXJlIGZsYWcgYWRkZWQgZm9yIGRpc3Bs
YXkgc3RhdGUgYnVmZmVyLgozYjgyMzNmYTM1NzQgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBj
cmVhdGlvbi4KLTo0OTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9y
IGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojNDk6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMTM3IGxpbmVzIGNoZWNrZWQKYzBlODNhYzA3ZjFiIGRybS9pOTE1L2RzYjogc2luZ2xlIHJl
Z2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCjNlYjE1NDdmYjNhNCBkcm0vaTkxNS9kc2I6
IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KYzIyZDUzODFjZDM5IGRy
bS9pOTE1L2RzYjogUmVnaXN0ZXIgZGVmaW5pdGlvbiBvZiBEU0IgcmVnaXN0ZXJzLgo1OTMzNzYw
MTc5NzAgZHJtL2k5MTUvZHNiOiBDaGVjayBEU0IgZW5naW5lIHN0YXR1cy4KNDA3MmI5ZGFjZjk0
IGRybS9pOTE1L2RzYjogZnVuY3Rpb25zIHRvIGVuYWJsZS9kaXNhYmxlIERTQiBlbmdpbmUuCmNl
MTQ5MzA1NTNlZSBkcm0vaTkxNS9kc2I6IGZ1bmN0aW9uIHRvIHRyaWdnZXIgd29ya2xvYWQgZXhl
Y3V0aW9uIG9mIERTQi4KOTNiN2IwMGFmYThkIGRybS9pOTE1L2RzYjogRG9jdW1lbnRhdGlvbiBm
b3IgRFNCLgplNzJmNDI5ZmMyYjAgZHJtL2k5MTUvZHNiOiBFbmFibGUgZ2FtbWEgbHV0IHByb2dy
YW1taW5nIHVzaW5nIERTQi4KM2YwMmNmNDgyM2NkIGRybS9pOTE1L2RzYjogRW5hYmxlIERTQiBm
b3IgZ2VuMTIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
