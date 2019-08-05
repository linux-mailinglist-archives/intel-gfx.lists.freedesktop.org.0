Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12EB81EC9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 16:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB6A6E459;
	Mon,  5 Aug 2019 14:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E6086E459;
 Mon,  5 Aug 2019 14:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74801A0020;
 Mon,  5 Aug 2019 14:14:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gerd Hoffmann" <kraxel@redhat.com>
Date: Mon, 05 Aug 2019 14:14:35 -0000
Message-ID: <20190805141435.20000.96337@emeril.freedesktop.org>
References: <20190805140119.7337-1-kraxel@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/ttm=3A_make_ttm_bo_a_gem_bo_subclass_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL3R0bTogbWFrZSB0dG0gYm8gYSBnZW0g
Ym8gc3ViY2xhc3MgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82NDcwMS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBz
cGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS90
dG06IGFkZCBnZW0gYmFzZSBvYmplY3QKT2theSEKCkNvbW1pdDogZHJtL3ZyYW06IHVzZSBlbWJl
ZGRlZCBnZW0gb2JqZWN0Ck9rYXkhCgpDb21taXQ6IGRybS9xeGw6IHVzZSBlbWJlZGRlZCBnZW0g
b2JqZWN0Ck9rYXkhCgpDb21taXQ6IGRybS9yYWRlb246IHVzZSBlbWJlZGRlZCBnZW0gb2JqZWN0
Ck9rYXkhCgpDb21taXQ6IGRybS9hbWRncHU6IHVzZSBlbWJlZGRlZCBnZW0gb2JqZWN0Ck9rYXkh
CgpDb21taXQ6IGRybS9ub3V2ZWF1OiB1c2UgZW1iZWRkZWQgZ2VtIG9iamVjdApPa2F5IQoKQ29t
bWl0OiBkcm0vdHRtOiB1c2UgZ2VtIHJlc2VydmF0aW9uIG9iamVjdApPa2F5IQoKQ29tbWl0OiBk
cm0vdHRtOiB1c2UgZ2VtIHZtYV9ub2RlCk9rYXkhCgpDb21taXQ6IGRybS90dG06IHNldCBib3Ro
IHJlc3YgYW5kIGJhc2UucmVzdiBwb2ludGVycwpPa2F5IQoKQ29tbWl0OiBkcm0vdHRtOiBzd2l0
Y2ggdHRtIGNvcmUgZnJvbSBiby0+cmVzdiB0byBiby0+YmFzZS5yZXN2Citkcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jOjU2NzoyODogd2FybmluZzogY29udGV4dCBpbWJhbGFuY2UgaW4gJ3R0
bV9ib19jbGVhbnVwX3JlZnMnIC0gdW5leHBlY3RlZCB1bmxvY2sKLU86ZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm8uYzo1Njc6Mjg6IHdhcm5pbmc6IGNvbnRleHQgaW1iYWxhbmNlIGluICd0dG1f
Ym9fY2xlYW51cF9yZWZzJyAtIHVuZXhwZWN0ZWQgdW5sb2NrCgpDb21taXQ6IGRybS9yYWRlb246
IHN3aXRjaCBkcml2ZXIgZnJvbSBiby0+cmVzdiB0byBiby0+YmFzZS5yZXN2Ck9rYXkhCgpDb21t
aXQ6IGRybS92bXdnZng6IHN3aXRjaCBkcml2ZXIgZnJvbSBiby0+cmVzdiB0byBiby0+YmFzZS5y
ZXN2Ck9rYXkhCgpDb21taXQ6IGRybS9hbWRncHU6IHN3aXRjaCBkcml2ZXIgZnJvbSBiby0+cmVz
diB0byBiby0+YmFzZS5yZXN2Ck9rYXkhCgpDb21taXQ6IGRybS9ub3V2ZWF1OiBzd2l0Y2ggZHJp
dmVyIGZyb20gYm8tPnJlc3YgdG8gYm8tPmJhc2UucmVzdgpPa2F5IQoKQ29tbWl0OiBkcm0vcXhs
OiBzd2l0Y2ggZHJpdmVyIGZyb20gYm8tPnJlc3YgdG8gYm8tPmJhc2UucmVzdgpPa2F5IQoKQ29t
bWl0OiBkcm0vdmlydGlvOiBzd2l0Y2ggZHJpdmVyIGZyb20gYm8tPnJlc3YgdG8gYm8tPmJhc2Uu
cmVzdgpPa2F5IQoKQ29tbWl0OiBkcm0vdHRtOiBkcm9wIHR0bV9idWZmZXJfb2JqZWN0LT5yZXN2
Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
