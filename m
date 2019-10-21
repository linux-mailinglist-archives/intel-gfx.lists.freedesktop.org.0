Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 885C8DF7BA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 23:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DB86E284;
	Mon, 21 Oct 2019 21:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D14546E284;
 Mon, 21 Oct 2019 21:48:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8E69A363E;
 Mon, 21 Oct 2019 21:48:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 21 Oct 2019 21:48:57 -0000
Message-ID: <20191021214857.5725.40617@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191021111524.14793-1-christian.koenig@amd.com>
In-Reply-To: <20191021111524.14793-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_dma-buf=3A_change_DMA-buf_loc?=
 =?utf-8?q?king_convention_v2?=
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
ZG1hLWJ1ZjogY2hhbmdlIERNQS1idWYgbG9ja2luZyBjb252ZW50aW9uIHYyClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODMzMC8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ4ZTFh
ZTkxYmNlZCBkbWEtYnVmOiBjaGFuZ2UgRE1BLWJ1ZiBsb2NraW5nIGNvbnZlbnRpb24gdjIKLToz
NzQ6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxp
bmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVp
Y2h0enVtZXJrZW5AZ21haWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBj
aGVja3MsIDMxNiBsaW5lcyBjaGVja2VkCjhlNjZkMjk0NWMyOCBkbWEtYnVmOiBzdG9wIHVzaW5n
IHRoZSBkbWFidWYtPmxvY2sgc28gbXVjaAotOjgyOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09G
RjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdD
aHJpc3RpYW4gS8O2bmlnIDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4nCgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA1OCBsaW5lcyBjaGVja2VkCjEyNjgx
OTQ1NGVmZCBkcm0vYW1kZ3B1OiBhZGQgaW5kZXBlbmRlbnQgRE1BLWJ1ZiBleHBvcnQgdjcKLToy
OTE6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxp
bmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVp
Y2h0enVtZXJrZW5AZ21haWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBj
aGVja3MsIDI0NSBsaW5lcyBjaGVja2VkCjI0ODkyNjI4YmU0OCBkcm0vYW1kZ3B1OiBhZGQgaW5k
ZXBlbmRlbnQgRE1BLWJ1ZiBpbXBvcnQgdjgKLToyMjA6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05f
T0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3Ig
J0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPicKCnRv
dGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDE2OCBsaW5lcyBjaGVja2VkCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
