Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBABBA2AF
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE25E6E822;
	Sun, 22 Sep 2019 12:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98C4F6E822;
 Sun, 22 Sep 2019 12:39:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91866A0114;
 Sun, 22 Sep 2019 12:39:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Sun, 22 Sep 2019 12:39:57 -0000
Message-ID: <20190922123957.7534.61477@emeril.freedesktop.org>
References: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_adding_gamma_state_checker_for_icl+_platforms_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogYWRkaW5nIGdhbW1hIHN0YXRlIGNoZWNrZXIg
Zm9yIGljbCsgcGxhdGZvcm1zIChyZXY0KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjY4MTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAphMjk0MWRjM2Y0YzMgZHJtL2k5MTUvY29s
b3I6IEZpeCBmb3JtYXR0aW5nIGlzc3VlcwowNzQxM2RiMzA2ZjEgZHJtL2k5MTUvY29sb3I6IEV4
dHJhY3QgaWNsX3JlYWRfbHV0cygpCi06MzM6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6
IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0g
NzUgY2hhcnMgcGVyIGxpbmUpCiMzMzogCiAgICAtcmVtb3ZlZCByZWFkb3V0cyBvZiBmaW5lIGFu
ZCBjb2Fyc2Ugc2VnbWVudHMsIGZhaWx1cmUgdG8gcmVhZCBQQUxfUFJFQ19EQVRBCgotOjEwMzog
Q0hFQ0s6QlJBQ0VTOiBCbGFuayBsaW5lcyBhcmVuJ3QgbmVjZXNzYXJ5IGJlZm9yZSBhIGNsb3Nl
IGJyYWNlICd9JwojMTAzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmM6MTQ4MjoKKworfQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAxIGNoZWNr
cywgMjE1IGxpbmVzIGNoZWNrZWQKMzVhODhjMGFiNDA0IEZPUl9URVNUSU5HX09OTFk6IFByaW50
IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2JzCi06MTg6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmM6MTUwOToKKwlEUk1fREVCVUdfS01TKCJod19sdXQtPnJlZD0w
eCV4IHN3X2x1dC0+cmVkPTB4JXggaHdfbHV0LT5ibHVlPTB4JXggc3dfbHV0LT5ibHVlPTB4JXgg
aHdfbHV0LT5ncmVlbj0weCV4IHN3X2x1dC0+Z3JlZW49MHgleCIsIGx1dDItPnJlZCwgbHV0MS0+
cmVkLCBsdXQyLT5ibHVlLCBsdXQxLT5ibHVlLCBsdXQyLT5ncmVlbiwgbHV0MS0+Z3JlZW4pOwoK
dG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgOCBsaW5lcyBjaGVja2VkCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
