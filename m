Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5614E54F9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 22:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04E86EBA3;
	Fri, 25 Oct 2019 20:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A24BB6EBA0;
 Fri, 25 Oct 2019 20:16:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C1EBA0071;
 Fri, 25 Oct 2019 20:16:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 25 Oct 2019 20:16:43 -0000
Message-ID: <20191025201643.29364.80578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191025153728.23689-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191025153728.23689-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/7=5D_drm/i915=3A_support_creating?=
 =?utf-8?q?_LMEM_objects?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
N10gZHJtL2k5MTU6IHN1cHBvcnQgY3JlYXRpbmcgTE1FTSBvYmplY3RzClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODU3NS8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNp
b246IHYwLjYuMApDb21taXQ6IGRybS9pOTE1OiBzdXBwb3J0IGNyZWF0aW5nIExNRU0gb2JqZWN0
cwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogc2V0dXAgaW8tbWFwcGluZyBmb3IgTE1FTQpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS9sbWVtOiBzdXBwb3J0IGtlcm5lbCBtYXBwaW5nCitkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYzoyNTU6NTE6ICAgIGV4cGVjdGVkIHZv
aWQgKgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmM6MjU1OjUxOiAg
ICBnb3Qgdm9pZCBbbm9kZXJlZl0gPGFzbjoyPiAqCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYzoyNTU6NTE6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIHJldHVy
biBleHByZXNzaW9uIChkaWZmZXJlbnQgYWRkcmVzcyBzcGFjZXMpCgpDb21taXQ6IGRybS9pOTE1
L3NlbGZ0ZXN0czogYWRkIHdyaXRlLWR3b3JkIHRlc3QgZm9yIExNRU0KT2theSEKCkNvbW1pdDog
ZHJtL2k5MTUvc2VsZnRlc3RzOiBleHRlbmQgY292ZXJhZ2UgdG8gaW5jbHVkZSBMTUVNIGh1Z2Ut
cGFnZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBwcmVmZXIgcmFuZG9tIHNp
emVzIGZvciB0aGUgaHVnZS1HVFQtcGFnZSBzbW9rZSB0ZXN0cwpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNS9zZWxmdGVzdHM6IGFkZCBzYW5pdHkgc2VsZnRlc3QgZm9yIGh1Z2UtR1RULXBhZ2VzCk9r
YXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
