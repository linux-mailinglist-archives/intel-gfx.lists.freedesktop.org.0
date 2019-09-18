Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDE4B6008
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 11:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0046EE68;
	Wed, 18 Sep 2019 09:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 276156EE68;
 Wed, 18 Sep 2019 09:21:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 200B9A47D9;
 Wed, 18 Sep 2019 09:21:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 18 Sep 2019 09:21:40 -0000
Message-ID: <20190918092140.21835.20592@emeril.freedesktop.org>
References: <20190918075745.17076-1-animesh.manna@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190918075745.17076-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DSB_enablement=2E_=28rev7=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRFNCIGVuYWJsZW1lbnQuIChyZXY3KQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMwMTMvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAo1ODBjODc5MGZmMGEgZHJtL2k5MTUvZHNiOiBmZWF0dXJlIGZsYWcgYWRkZWQgZm9yIGRpc3Bs
YXkgc3RhdGUgYnVmZmVyLgplY2MyMTZlZWMwNmYgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBj
cmVhdGlvbi4KLTo2MzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9y
IGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojNjM6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMTM0IGxpbmVzIGNoZWNrZWQKYzYxNmUxYTQ1MzAwIGRybS9pOTE1L2RzYjogc2luZ2xlIHJl
Z2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCmVkMDJlZjg0YzA5OSBkcm0vaTkxNS9kc2I6
IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KZDI2YmZlZjM3Njk0IGRy
bS9pOTE1L2RzYjogQ2hlY2sgRFNCIGVuZ2luZSBzdGF0dXMuCjJlMzVmNWVjYWMzMSBkcm0vaTkx
NS9kc2I6IGZ1bmN0aW9ucyB0byBlbmFibGUvZGlzYWJsZSBEU0IgZW5naW5lLgowNmZiNmRkZDI4
YmMgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byB0cmlnZ2VyIHdvcmtsb2FkIGV4ZWN1dGlvbiBv
ZiBEU0IuCjdlNDdhNzliOTkxMiBkcm0vaTkxNS9kc2I6IEVuYWJsZSBnYW1tYSBsdXQgcHJvZ3Jh
bW1pbmcgdXNpbmcgRFNCLgo0MzUxNTNkZjkyNTYgZHJtL2k5MTUvZHNiOiBFbmFibGUgRFNCIGZv
ciBnZW4xMi4KYThiNDUwZTUwM2ZkIGRybS9pOTE1L2RzYjogRG9jdW1lbnRhdGlvbiBmb3IgRFNC
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
