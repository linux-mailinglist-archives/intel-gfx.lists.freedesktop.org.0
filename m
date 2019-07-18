Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0587C6CFAB
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49D66E3D8;
	Thu, 18 Jul 2019 14:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7717A6E3E3;
 Thu, 18 Jul 2019 14:29:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DE20A0114;
 Thu, 18 Jul 2019 14:29:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 18 Jul 2019 14:29:11 -0000
Message-ID: <20190718142911.17743.35489@emeril.freedesktop.org>
References: <20190718140444.23407-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190718140444.23407-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_HDCP_capability_info_to_i915=5Fdisplay=5Finf?=
 =?utf-8?b?by4gKHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBIRENQIGNhcGFiaWxp
dHkgaW5mbyB0byBpOTE1X2Rpc3BsYXlfaW5mby4gKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzgxOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ2NmM1OGU2NTQwMCBk
cm0vaTkxNTogQWRkIEhEQ1AgY2FwYWJpbGl0eSBpbmZvIHRvIGk5MTVfZGlzcGxheV9pbmZvLgot
OjU2OiBXQVJOSU5HOlBSRUZFUl9TRVFfUFVUUzogUHJlZmVyIHNlcV9wdXRzIHRvIHNlcV9wcmlu
dGYKIzU2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzoyNjA1Ogor
CQlzZXFfcHJpbnRmKG0sICJcdEhEQ1AgdmVyc2lvbjogIik7CgotOjY3OiBXQVJOSU5HOlBSRUZF
Ul9TRVFfUFVUUzogUHJlZmVyIHNlcV9wdXRzIHRvIHNlcV9wcmludGYKIzY3OiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzoyNjMyOgorCQlzZXFfcHJpbnRmKG0sICJc
dEhEQ1AgdmVyc2lvbjogIik7Cgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tz
LCA3MCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
