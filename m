Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D043D2E9A2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 02:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7AA6E13A;
	Thu, 30 May 2019 00:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B96E6E13A;
 Thu, 30 May 2019 00:13:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01D49A011A;
 Thu, 30 May 2019 00:12:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha" <anusha.srivatsa@intel.com>
Date: Thu, 30 May 2019 00:12:59 -0000
Message-ID: <20190530001259.29223.83552@emeril.freedesktop.org>
References: <20190529234152.4485-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190529234152.4485-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/dsc=3A_Add_Per_connector_debugfs_node_for_DSC_BPP_e?=
 =?utf-8?q?nable?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZHNjOiBBZGQgUGVyIGNvbm5l
Y3RvciBkZWJ1Z2ZzIG5vZGUgZm9yIERTQyBCUFAgZW5hYmxlClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTM1Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjU2YmMyZWQyNGM0YyBk
cm0vaTkxNS9kc2M6IEFkZCBQZXIgY29ubmVjdG9yIGRlYnVnZnMgbm9kZSBmb3IgRFNDIEJQUCBl
bmFibGUKLToxMDU6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3Vs
ZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxMDU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jOjQ5ODA6CitzdGF0aWMgaW50IGk5MTVfZHNjX2JwcF9zbGljZV9zdXBw
b3J0X29wZW4oc3RydWN0IGlub2RlICppbm9kZSwKKwkJCQkgICAgIHN0cnVjdCBmaWxlICpmaWxl
KQoKLToxMzY6IFdBUk5JTkc6U1lNQk9MSUNfUEVSTVM6IFN5bWJvbGljIHBlcm1pc3Npb25zICdT
X0lSVUdPJyBhcmUgbm90IHByZWZlcnJlZC4gQ29uc2lkZXIgdXNpbmcgb2N0YWwgcGVybWlzc2lv
bnMgJzA0NDQnLgojMTM2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
Yzo1MDQyOgorCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2RzY19icHBfc2xpY2Vfc3VwcG9y
dCIsIFNfSVJVR08sIHJvb3QsCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDEgY2hlY2tz
LCAxMzMgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
