Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 626EBA212B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 18:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885AB6E131;
	Thu, 29 Aug 2019 16:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A70846E130;
 Thu, 29 Aug 2019 16:42:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99A8BA0134;
 Thu, 29 Aug 2019 16:42:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Thu, 29 Aug 2019 16:42:26 -0000
Message-ID: <20190829164226.10004.16288@emeril.freedesktop.org>
References: <20190829142917.13058-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190829142917.13058-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_dma-buf=3A_change_DMA-buf_loc?=
 =?utf-8?q?king_convention?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZG1hLWJ1ZjogY2hhbmdlIERNQS1idWYgbG9ja2luZyBjb252ZW50aW9uClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjAwNi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjE5ODM0YjFl
ZTdkYiBkbWEtYnVmOiBjaGFuZ2UgRE1BLWJ1ZiBsb2NraW5nIGNvbnZlbnRpb24KLTozMDE6IFdB
Uk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkg
bm9taW5hbCBwYXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVt
ZXJrZW5AZ21haWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3Ms
IDI2MSBsaW5lcyBjaGVja2VkCjMyOTNmYjEwOTcyYyBkcm0vdHRtOiB1c2UgdGhlIHBhcmVudCBy
ZXN2IGZvciBnaG9zdCBvYmplY3RzIHYyCi06ODQ6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZG
OiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0No
cmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPicKCnRvdGFs
OiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDU4IGxpbmVzIGNoZWNrZWQKMzRkZmZk
ODU4OTVkIGRybS9hbWRncHU6IGFkZCBpbmRlcGVuZGVudCBETUEtYnVmIGV4cG9ydCB2NwotOjI5
MTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGlu
ZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWlj
aHR6dW1lcmtlbkBnbWFpbC5jb20+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMjQ1IGxpbmVzIGNoZWNrZWQKODg3ZGFjMjI1ODdjIGRybS9hbWRncHU6IGFkZCBpbmRl
cGVuZGVudCBETUEtYnVmIGltcG9ydCB2OAotOjIyMDogV0FSTklORzpOT19BVVRIT1JfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAn
Q2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+JwoKdG90
YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTY4IGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
