Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F0D251DD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 16:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292D6893D1;
	Tue, 21 May 2019 14:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B733893A4;
 Tue, 21 May 2019 14:24:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 940D4A0094;
 Tue, 21 May 2019 14:24:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Tue, 21 May 2019 14:24:02 -0000
Message-ID: <20190521142402.13173.14005@emeril.freedesktop.org>
References: <20190520232541.16085-1-khaled.almahallawy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190520232541.16085-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Fix_the_interpretation_of_MAX=5FPRE-EMPHASIS=5FR?=
 =?utf-8?q?EACHED_bit_inorder_to_pass_Link_Layer_compliance_test_number_40?=
 =?utf-8?b?MC4zLjEuMTUgKHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCB0aGUgaW50ZXJwcmV0
YXRpb24gb2YgTUFYX1BSRS1FTVBIQVNJU19SRUFDSEVEIGJpdCBpbm9yZGVyIHRvIHBhc3MgTGlu
ayBMYXllciBjb21wbGlhbmNlIHRlc3QgbnVtYmVyIDQwMC4zLjEuMTUgKHJldjIpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDg4MC8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmVl
OTBkYjBjYjA2YSBkcm0vaTkxNTogRml4IHRoZSBpbnRlcnByZXRhdGlvbiBvZiBNQVhfUFJFLUVN
UEhBU0lTX1JFQUNIRUQgYml0IGlub3JkZXIgdG8gcGFzcyBMaW5rIExheWVyIGNvbXBsaWFuY2Ug
dGVzdCBudW1iZXIgNDAwLjMuMS4xNQotOjc6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6
IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0g
NzUgY2hhcnMgcGVyIGxpbmUpCiM3OiAKQWNjb3JkaW5nIHRvIERQIDEuNCBzdGFuZGFyZCwgaWYg
dGhlIHNvdXJjZSBzdXBwb3J0cyBmb3VyIHByZS1lbXBoYXNpcyBsZXZlbHMsIHRoZW4gdGhlIHNv
dXJjZSBzaGFsbCBzZXQgdGhlIGJpdCBNQVhfUFJFLUVNUEhBU0lTX1JFQUNIRUQgPSAxIG9ubHkg
d2hlbiB0cmFzbWl0dGVyIHByb2dyYW1tZWQgUFJFLUVNUEhBU0lTX1NFVCBmaWVsZCAoYml0cyA0
OjMpIHRvIDExYiAoTGV2ZWwgMykuIFByZS1lbXBoYXNpcyBsZXZlbCAzIGlzIHRoZSBtYXhpbXVt
IHByZS1lbXBoYXNpcyBsZXZlbCB0aGF0IHRoZSBzb3VyY2Ugc3VwcG9ydHMuCgp0b3RhbDogMCBl
cnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAzNCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
