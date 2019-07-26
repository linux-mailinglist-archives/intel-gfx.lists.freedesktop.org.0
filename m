Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E6375D35
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 04:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDCA6E860;
	Fri, 26 Jul 2019 02:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EB736E860;
 Fri, 26 Jul 2019 02:50:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6782EA010C;
 Fri, 26 Jul 2019 02:50:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 26 Jul 2019 02:50:33 -0000
Message-ID: <20190726025033.29715.96839@emeril.freedesktop.org>
References: <20190726001208.6971-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190726001208.6971-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Tiger_Lake=3A_MOCS_table_handling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogVGlnZXIgTGFrZTogTU9DUyB0YWJsZSBoYW5k
bGluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQy
NzUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmln
aW4vZHJtLXRpcAo4MGE5YjcyODUwNjMgZHJtL2k5MTUvdGdsOiBNb3ZlIGZhdWx0IHJlZ2lzdGVy
cyB0byB0aGVpciBuZXcgb2Zmc2V0CjllZmJiMTYwNjYzOCBkcm0vaTkxNS90Z2w6IERlZmluZSBN
T0NTIGVudHJpZXMgZm9yIFRpZ2VybGFrZQotOjE2OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19M
SU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhp
bXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTY6IAogICAgdGVybWlub2xvZ3kgdG8gd2hhdCBpdCBh
Y3R1YWxseSBpczogTDEgaXMgaW1wbGljaXRseSBlbmFibGVkIChmcm9tIERhbmllbGUpCgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2NSBsaW5lcyBjaGVja2VkCjE2OWIz
ZmQyNDcwMCBkcm0vaTkxNS90Z2w6IFRpZ2VybGFrZSBvbmx5IGhhcyBnbG9iYWwgTU9DUyByZWdp
c3RlcnMKLToxNzogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFw
cGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGlu
ZSkKIzE3OiAKdjI6IE1vdmUgdGhlIGNoYW5nZXMgdG8gdGhlIGZhdWx0IHJlZ2lzdGVycyB0byBh
IHNlcGFyYXRlIGNvbW1pdCAtIHRoZSBvbGQgb25lcwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgMTIzIGxpbmVzIGNoZWNrZWQKZjE3Nzk1YTQ0ZGZjIGRybS9pOTE1OiBN
b3ZlIE1PQ1Mgc2V0dXAgdG8gaW50ZWxfbW9jcy5jCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
