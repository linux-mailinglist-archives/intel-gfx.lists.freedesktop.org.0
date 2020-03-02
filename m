Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA1A1760A6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D131E89C25;
	Mon,  2 Mar 2020 17:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B98689C25
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 17:02:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:02:25 -0800
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="233231937"
Received: from unknown (HELO localhost) ([10.252.41.44])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:02:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 19:02:18 +0200
Message-Id: <20200302170218.16496-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: fix documentation build after rename
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfY3NyLmMgd2FzIG1vdmVkIHVuZGVyIGRpc3BsYXkuCgpGaXhlczogMDZkM2ZmNmU3NDUx
ICgiZHJtL2k5MTU6IG1vdmUgaW50ZWxfY3NyLltjaF0gdW5kZXIgZGlzcGxheS8iKQpSZXBvcnRl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBEb2N1
bWVudGF0aW9uL2dwdS9pOTE1LnJzdCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9p
OTE1LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CmluZGV4IGU1MzljNDJhM2U3OC4u
Y2M3NGUyNGNhM2I1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAorKysg
Yi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdApAQCAtMjA3LDEwICsyMDcsMTAgQEAgRFBJTwog
Q1NSIGZpcm13YXJlIHN1cHBvcnQgZm9yIERNQwogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKKy4u
IGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCiAg
ICA6ZG9jOiBjc3Igc3VwcG9ydCBmb3IgZG1jCiAKLS4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jc3IuYworLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKICAgIDppbnRlcm5hbDoKIAogVmlkZW8gQklPUyBUYWJs
ZSAoVkJUKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
