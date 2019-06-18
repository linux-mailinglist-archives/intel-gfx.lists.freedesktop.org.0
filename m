Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC154A0C8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9590F6E16D;
	Tue, 18 Jun 2019 12:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BC386E157;
 Tue, 18 Jun 2019 12:28:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 951FBA0119;
 Tue, 18 Jun 2019 12:28:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Tue, 18 Jun 2019 12:28:31 -0000
Message-ID: <20190618122831.30455.14239@emeril.freedesktop.org>
References: <20190618115455.1253-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190618115455.1253-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/6=5D_dma-buf=3A_add_dynamic_DMA-bu?=
 =?utf-8?q?f_handling_v10?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2MTAKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMjk5LwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKODI0NDlkMmI1
ZGU2IGRtYS1idWY6IGFkZCBkeW5hbWljIERNQS1idWYgaGFuZGxpbmcgdjEwCi06MTE6IFdBUk5J
Tkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3Jp
cHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxMTogCm1hcC91bm1h
cCBjYWxsYmFja3MgYXJlIGFsd2F5cyBjYWxsZWQgd2l0aCB0aGUgbG9jayBvZiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0CgotOjUwODogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Npbmcg
U2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnQ2hyaXN0aWFuIEvD
tm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+JwoKdG90YWw6IDAgZXJyb3Jz
LCAyIHdhcm5pbmdzLCAwIGNoZWNrcywgNDQ1IGxpbmVzIGNoZWNrZWQKMzBiY2QyMDgwM2MyIGRy
bS90dG06IHJlbW92ZSB0aGUgYmFja2luZyBzdG9yZSBpZiBubyBwbGFjZW1lbnQgaXMgZ2l2ZW4K
LTozNjogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTog
bGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5s
ZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAw
IGNoZWNrcywgMTggbGluZXMgY2hlY2tlZAowNTRhYzVlMDNiZTEgZHJtL3R0bTogdXNlIHRoZSBw
YXJlbnQgcmVzdiBmb3IgZ2hvc3Qgb2JqZWN0cyB2MgotOjg4OiBXQVJOSU5HOk5PX0FVVEhPUl9T
SUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0
aG9yICdDaHJpc3RpYW4gS8O2bmlnIDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4n
Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2MiBsaW5lcyBjaGVja2Vk
CjY4MTIxZDFlOTRlZCBkcm0vYW1kZ3B1OiB1c2UgYWxsb3dlZF9kb21haW5zIGZvciBleHBvcnRl
ZCBETUEtYnVmcwotOjM2OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWdu
ZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdDaHJpc3RpYW4gS8O2bmln
IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4nCgp0b3RhbDogMCBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCAxNyBsaW5lcyBjaGVja2VkCjUxZWQzZTM0YWRmMSBkcm0vYW1k
Z3B1OiBhZGQgaW5kZXBlbmRlbnQgRE1BLWJ1ZiBleHBvcnQgdjYKLTozMzg6IFdBUk5JTkc6Tk9f
QVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBw
YXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21h
aWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDI5MyBsaW5l
cyBjaGVja2VkCjRjZWRkZDhlMmI5NyBkcm0vYW1kZ3B1OiBhZGQgaW5kZXBlbmRlbnQgRE1BLWJ1
ZiBpbXBvcnQgdjYKLToyNzY6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNp
Z25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7Zu
aWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywg
MSB3YXJuaW5ncywgMCBjaGVja3MsIDIxOSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
