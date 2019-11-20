Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B590610471E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 00:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19636EA94;
	Wed, 20 Nov 2019 23:56:06 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0F16EA56
 for <Intel-GFX@lists.freedesktop.org>; Wed, 20 Nov 2019 23:56:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 15:56:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="237955281"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2019 15:56:04 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 20 Nov 2019 15:56:01 -0800
Message-Id: <20191120235604.29047-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/guc: CTB improvements
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClRoZXNlIHBh
dGNoZXMgaW1wcm92ZSB0aGUgQ1RCIGluZnJhc3RydWN0dXJlIC0gQ29tbWFuZCBUcmFuc3BvcnQK
QnVmZmVyLCB0aGUgY29tbXVuaWNhdGlvbiBtZWNoYW5pc20gYmV0d2VlbiBpOTE1IGFuZCBHdUMu
CgpUaGV5IGFyZSBwYXJ0IG9mIHRoZSAobGFyZ2UpIHNlcmllcyBmb3IgdXBkYXRpbmcgdGhlIGk5
MTUgR3VDCmltcGxlbWVudGF0aW9uIHRvIHN1cHBvcnQgdGhlIG5ldyBHdUMgQVBJLiBUaGF0IHNl
cmllcyBpcyBzdGlsbCBpbgpwcm9ncmVzcyAoYnV0IGdldHRpbmcgY2xvc2UpLiBIb3dldmVyLCBp
dCB3YXMgc3VnZ2VzdGVkIHRoYXQgdGhlc2UKcGF0Y2hlcyBjb3VsZCBiZSBwdXNoZWQgZWFybHkg
dG8gaGVscCByZWR1Y2UgdGhlIHBhdGNoIGJ1cmRlbi4gVGhleQphcmUgbm90IGRpcmVjdGx5IHJl
bGF0ZWQgdG8gdGhlIG5ldyBHdUMgQVBJIGFuZCBzbyBhcmUgY29tcGF0aWJsZSB3aXRoCnRoZSBv
bGQgR3VDIGltcGxlbWVudGF0aW9uLgoKVGhlIG5ldyBHdUMgQVBJIG1ha2VzIG11Y2ggaGVhdmll
ciB1c2Ugb2YgdGhlIENUQi4gSW5kZWVkLCBpdCBiZWNvbWVzCnBhcnQgb2YgdGhlIGNvbW1hbmQg
c3VibWlzc2lvbiBwYXRoLiBIZW5jZSwgdGhlIG5lZWQgZm9yIG9wdGltaXNhdGlvbiwKbGFyZ2Vy
IGJ1ZmZlcnMgYW5kIHN1cHBvcnQgZm9yIHNlbmRpbmcgd2l0aG91dCBhIG11dGV4IGxvY2suCgpN
YXR0aGV3IEJyb3N0ICgzKToKICBkcm0vaTkxNS9ndWM6IEFkZCBub24gYmxvY2tpbmcgQ1RCIHNl
bmQgZnVuY3Rpb24KICBkcm0vaTkxNS9ndWM6IE9wdGltaXplZCBDVEIgd3JpdGVzIGFuZCByZWFk
cwogIGRybS9pOTE1L2d1YzogSW5jcmVhc2Ugc2l6ZSBvZiBDVEIgYnVmZmVycwoKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jIHwgMjE0ICsrKysrKysrKysrKysrKy0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oIHwgIDE4ICstCiAzIGZp
bGVzIGNoYW5nZWQsIDE2MiBpbnNlcnRpb25zKCspLCA3MiBkZWxldGlvbnMoLSkKCi0tIAoyLjIx
LjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
