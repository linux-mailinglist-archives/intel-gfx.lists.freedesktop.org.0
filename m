Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EEB56B08
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7436E438;
	Wed, 26 Jun 2019 13:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A39DF6E438;
 Wed, 26 Jun 2019 13:47:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E78EA0020;
 Wed, 26 Jun 2019 13:47:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 26 Jun 2019 13:47:10 -0000
Message-ID: <20190626134710.9078.67577@emeril.freedesktop.org>
References: <20190626123826.39760-1-michal.wajdeczko@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190626123826.39760-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Move_OA_files_to_separate_folder?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1vdmUgT0EgZmlsZXMgdG8g
c2VwYXJhdGUgZm9sZGVyClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82Mjc3OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFy
c2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1
OiBNb3ZlIE9BIGZpbGVzIHRvIHNlcGFyYXRlIGZvbGRlcgorLi9pbmNsdWRlL3VhcGkvbGludXgv
cGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNv
bnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKKy4vaW5jbHVkZS91YXBp
L2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMg
ZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCisuL2luY2x1
ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRl
cyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQor
Li9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0
cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29t
ZXMgMCkKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6
IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAw
MCBiZWNvbWVzIDApCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3
YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAw
MDAwMDAwMDAgYmVjb21lcyAwKQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0
Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4
MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZl
bnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2
YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCisuL2luY2x1ZGUvdWFwaS9saW51eC9w
ZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29u
c3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQorLi9pbmNsdWRlL3VhcGkv
bGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBm
cm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKKy4vaW5jbHVk
ZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVz
IGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCisu
L2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRy
dW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21l
cyAwKQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzog
Y2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAw
IGJlY29tZXMgMCkKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdh
cm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAw
MDAwMDAwMCBiZWNvbWVzIDApCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
