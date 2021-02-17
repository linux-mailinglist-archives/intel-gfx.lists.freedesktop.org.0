Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B844231DDDB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269EF6E598;
	Wed, 17 Feb 2021 17:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B5D6E593
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:04:17 +0000 (UTC)
IronPort-SDR: Ei6X822cXnmdK0Q//YOjktOEsXudJBP0O0tmm1GjvNstjkbf5hsaJcCGAB5vItxytrKn2cKiT+
 JBKpSXnghrRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183325819"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183325819"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:03:51 -0800
IronPort-SDR: LAoSPdmNDeGiKhDUPXdDPlLPgEQErpYHxNHg45LcrPmEUN+tpvoB35vQ7uZVPFGCBMfpbLCjDt
 +RS+6HPEpNnw==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="400030797"
Received: from mvalka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:03:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 19:03:30 +0200
Message-Id: <cover.1613580193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] drm/i915/bios: vbt child device rework
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBzZWUgdGhlIHBhcnNpbmcgYW5kIGNhY2hpbmcgb2YgY2hpbGQgZGV2aWNlIGRhdGEgaW50bwpp
OTE1LT52YnQuZGRpX3BvcnRfaW5mb1tdIHNsaWdodGx5IHByb2JsZW1hdGljLiBXZSBrZWVwIGFk
ZGluZyBkYXRhIHRvCml0LCBhbmQgaXQganVzdCBkdXBsaWNhdGVzIGluZm9ybWF0aW9uLiBTdGFy
dCBtb3ZpbmcgdG93YXJkcyBhIHNpbmdsZQpwb2ludCBvZiB0cnV0aCwgYW5kIGdldHRpbmcgdGhl
IGluZm9ybWF0aW9uIGRpcmVjdGx5IGZyb20gdGhlIGNoaWxkCmRldmljZSBkYXRhLgoKT25lIG9i
c3RhY2xlIGhhcyBiZWVuIHRoYXQgaW5pdF92YnRfbWlzc2luZ19kZWZhdWx0cygpIG9ubHkgaW5p
dGlhbGl6ZXMKZGRpX3BvcnRfaW5mbywgd2l0aG91dCBjaGlsZCBkZXZpY2VzLiBBcyB0aGUgc2Ft
ZSBwcm9ibGVtIGFyb3NlIGluIGEKcGF0Y2ggZnJvbSBMdWNhcywgSSB0aG91Z2h0IGl0IHdhcyB0
aW1lIHRvIHN0YXJ0IGNyZWF0aW5nIGZha2UgY2hpbGQKZGV2aWNlcyB0byB1bmlmeSB0aGUgY29k
ZS4KClRoZXJlIGFyZSBhIGJ1bmNoIG9mIGNsZWFudXBzIGFuZCByZWZhY3RvcmluZyBoZXJlLiBQ
YXRjaGVzIDEtNSBhcmUKZW5vdWdoIHRvIGZpeCBMdWNhcycgcGF0Y2ggSSB0aGluay4gUGF0Y2gg
MTAgZG9lcyB3aGF0IEx1Y2FzIHdhcyBhZnRlciwKanVzdCBpbiBhIGRpZmZlcmVudCB3YXkgYW5k
IGFzIGEgYnlwcm9kdWN0IG9mIHNvbWV0aGluZyBlbHNlLiBUaGUgbGF0ZXIKcGF0Y2hlcyBpbiB0
aGUgc2VyaWVzIGFyZSBtb3JlIHRvIHNob3cgdGhlIGRpcmVjdGlvbiwgYW5kIHNlZWsKdmFsaWRh
dGlvbiBmb3IgdGhhdCBkaXJlY3Rpb24uCgpOYW1pbmcgaXMgYWxzbyBhIHF1ZXN0aW9uIG1hcmsu
IEFsbCBvZiB0aGVzZSBhcmUgYSBiaXQgcXVlc3Rpb25hYmxlOgppbnRlbF9iaW9zX2VuY29kZXJf
ZGF0YSwgZGV2ZGF0YSwgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzXyosIGV0Yy4KCkJSLApK
YW5pLgoKClsxXSBodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDIxMDIxMzE5MDUxMS4xMDE3MDg4LTItbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCgoKCkNjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgoKSmFuaSBOaWt1bGEgKDEyKToK
ICBkcm0vaTkxNS9iaW9zOiBtYXNzIGNvbnZlcnQgZGV2X3ByaXYgdG8gaTkxNQogIGRybS9pOTE1
L2Jpb3M6IHN0b3JlIGJkYiB2ZXJzaW9uIGluIGk5MTUKICBkcm0vaTkxNS9iaW9zOiBsaW1pdCBk
ZWZhdWx0IG91dHB1dHMgYnkgcGxhdGZvcm0gb24gbWlzc2luZyBWQlQKICBkcm0vaTkxNS9iaW9z
OiBsaW1pdCBkZWZhdWx0IG91dHB1dHMgdG8gcG9ydHMgQSB0aHJvdWdoIEYKICBkcm0vaTkxNS9i
aW9zOiBjcmVhdGUgZmFrZSBjaGlsZCBkZXZpY2VzIG9uIG1pc3NpbmcgVkJUCiAgZHJtL2k5MTUv
YmlvczogcmVuYW1lIGRpc3BsYXlfZGV2aWNlX2RhdGEgdG8gaW50ZWxfYmlvc19lbmNvZGVyX2Rh
dGEKICBkcm0vaTkxNS9iaW9zOiBhZGQgaTkxNSBiYWNrcG9pbnRlciB0byBpbnRlbF9iaW9zX2Vu
Y29kZXJfZGF0YQogIGRybS9pOTE1L3ZidDogYWRkIGhlbHBlciBmdW5jdGlvbnMgdG8gY2hlY2sg
b3V0cHV0IHN1cHBvcnQKICBkcm0vaTkxNS9iaW9zOiBzYXZlIGEgaGlnaGVyIGxldmVsIHBvaW50
ZXIgaW4gZGRpX3ZidF9wb3J0X2luZm9bXQogIGRybS9pOTE1L2Jpb3M6IHN0YXJ0IHVzaW5nIHRo
ZSBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSBkaXJlY3RseQogIGRybS9pOTE1L2Jpb3M6IHN0YXJ0
IHVzaW5nIGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIGZvciBUeXBlLUMgVVNCIGFuZAogICAgVEJU
CiAgZHJtL2k5MTUvYmlvczogYWRkIGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIHRvIGVuY29kZXIs
IHVzZSBmb3IgaWJvb3N0CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMgICAgIHwgMTAyMSArKysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmggICAgIHwgICAxNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyAgICAgIHwgICAyOCArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgICA5ICstCiA1IGZpbGVzIGNoYW5nZWQsIDU4NCBpbnNl
cnRpb25zKCspLCA0OTQgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
