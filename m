Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4397EA95AF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281F889C9C;
	Wed,  4 Sep 2019 21:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 523AE89C9A;
 Wed,  4 Sep 2019 21:59:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B00DA0099;
 Wed,  4 Sep 2019 21:59:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 04 Sep 2019 21:59:12 -0000
Message-ID: <20190904215912.9971.32364@emeril.freedesktop.org>
References: <20190904213419.27547-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190904213419.27547-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Tiger_Lake_batch_3=2E5_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogVGlnZXIgTGFrZSBiYXRjaCAzLjUgKHJldjIp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTk4Mi8K
U3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9k
cm0tdGlwCmVmNTQzZWRmYWQzMCBkcm0vaTkxNS9wc3I6IE9ubHkgaGFuZGxlIGludGVycnVwdGlv
bnMgb2YgdGhlIHRyYW5zY29kZXIgaW4gdXNlCi06MjUwOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6
IE1hY3JvIGFyZ3VtZW50IHJldXNlICd0cmFucycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMy
NTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6NDIyODoKKyNkZWZpbmUg
ICBfRURQX1BTUl9UUkFOU19TSElGVCh0cmFucykJCSgodHJhbnMpID09IFRSQU5TQ09ERVJfRURQ
ID8gXAorCQkJCQkJIDAgOiAoKHRyYW5zKSAtIFRSQU5TQ09ERVJfQSArIDEpICogOCkKCnRvdGFs
OiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDIwMiBsaW5lcyBjaGVja2VkCmQyMmVi
MWJjYzUzYSBkcm0vaTkxNS90Z2w6IEFjY2VzcyB0aGUgcmlnaHQgcmVnaXN0ZXIgd2hlbiBoYW5k
bGluZyBQU1IgaW50ZXJydXB0aW9ucwo4YzhhZTUwMzEzMzggZHJtL2k5MTU6IHByb3RlY3QgYWNj
ZXNzIHRvIERQX1RQXyogb24gbm9uLWRwCmVhNzY0YTMwYzFhOSBkcm0vaTkxNS90Z2w6IG1vdmUg
RFBfVFBfKiB0byB0cmFuc2NvZGVyCjI5NzZkZGQ0NjVjMCBkcm0vaTkxNS90Z2w6IGRpc2FibGUg
U0FHViB0ZW1wb3JhcmlseQo0YTQwOGU1ZmRiOGUgZHJtL2k5MTUvdGdsOiBhZGQgZ2VuMTIgdG8g
c3RvbGVuIGluaXRpYWxpemF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
