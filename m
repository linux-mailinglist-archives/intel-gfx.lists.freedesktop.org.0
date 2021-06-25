Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8563B432E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 14:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729E66ED93;
	Fri, 25 Jun 2021 12:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E386EDA1;
 Fri, 25 Jun 2021 12:29:25 +0000 (UTC)
IronPort-SDR: tinL7PQZOLyqh354YZ8i3BNWfVTGG/RzkSVEx5TMf/c6bwsyCLq/b8yLq0Gw1U5bdFk9jyi3Wr
 dz2I1ewywATA==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="204651944"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="204651944"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 05:29:25 -0700
IronPort-SDR: o9zTTdibYqXD3kj8Pr8r0KqBlid3YrPFhZSa9f05VNMEIGw3Q31wl3UZ6va6iWEgMjISgK9vA9
 g8tijQH8Honw==
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="488165498"
Received: from adalyx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.48])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 05:29:23 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Jun 2021 13:27:51 +0100
Message-Id: <20210625122751.590289-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210625122751.590289-1-matthew.auld@intel.com>
References: <20210625122751.590289-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/gem: only allow WB for smem
 only placements
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugb25seSBzdXBwb3J0IHNpbmdsZSBtb2RlIGFuZCB0aGlzIHNob3VsZCBiZSBpbW11dGFibGUu
IEZvciBzbWVtIG9ubHkKcGxhY2VtZW50cyBvbiBER0ZYIHRoaXMgc2hvdWxkIGJlIFdCLiBPbiBE
RzEgZXZlcnl0aGluZyBpcyBzbm9vcGVkLAphbHdheXMsIGFuZCBzbyBzaG91bGQgYmUgY29oZXJl
bnQuCgpJOTE1X0dFTV9ET01BSU5fR1RUIGxvb2tzIGxpa2UgaXQncyBmb3IgdGhlIGFwZXJ0dXJl
IHdoaWNoIGlzIG5vdyBnb25lCmZvciBER0ZYLCBzbyBob3BlZnVsbHkgY2FuIGFsc28gYmUgc2Fm
ZWx5IHJlamVjdGVkLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIHwgIDcgKysrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAgIHwgMTAgKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IGQwYzkxNjk3YmIyMi4uZTM0NTlhNTI0
ZTY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWlu
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC01
NzcsNiArNTc3LDEzIEBAIGk5MTVfZ2VtX3NldF9kb21haW5faW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJZ290byBvdXRfdW5waW47CiAJfQogCisJaWYgKElTX0RH
RlgodG9faTkxNShvYmotPmJhc2UuZGV2KSkgJiYgb2JqLT5tbS5uX3BsYWNlbWVudHMgPT0gMSAm
JgorCSAgICBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWluX3R5cGUob2JqLCBJTlRF
TF9NRU1PUllfU1lTVEVNKSAmJgorCSAgICByZWFkX2RvbWFpbnMgIT0gSTkxNV9HRU1fRE9NQUlO
X0NQVSkgeworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIG91dF91bnBpbjsKKwl9CisKIAlpZiAo
cmVhZF9kb21haW5zICYgSTkxNV9HRU1fRE9NQUlOX1dDKQogCQllcnIgPSBpOTE1X2dlbV9vYmpl
Y3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIHdyaXRlX2RvbWFpbik7CiAJZWxzZSBpZiAocmVhZF9k
b21haW5zICYgSTkxNV9HRU1fRE9NQUlOX0dUVCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbW1hbi5jCmluZGV4IGYzNTg2YjM2ZGQ1My4uYWZjOWYzZGMzOGI5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTY3Myw2ICs2NzMsNyBAQCBfX2Fz
c2lnbl9tbWFwX29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkgICAg
IGVudW0gaTkxNV9tbWFwX3R5cGUgbW1hcF90eXBlLAogCQkgICAgIHU2NCAqb2Zmc2V0LCBzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KG9iai0+YmFzZS5kZXYpOwogCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW87CiAK
IAlpZiAoaTkxNV9nZW1fb2JqZWN0X25ldmVyX21tYXAob2JqKSkKQEAgLTY5Nyw2ICs2OTgsMTUg
QEAgX19hc3NpZ25fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAkgICAgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudHNfY29udGFpbl90eXBlKG9iaiwgSU5URUxf
TUVNT1JZX0xPQ0FMKSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKKwkvKgorCSAqIEZvciBzbWVtIG9u
bHkgcGxhY2VtZW50cyBvbiBER0ZYIHdlIG5lZWQgdG8gZGVmYXVsdCB0byBXQi4gT24gREcxCisJ
ICogZXZlcnl0aGluZyBpcyBzbm9vcGVkIGFsd2F5cywgc28gc2hvdWxkIGFsd2F5cyBiZSBjb2hl
cmVudC4KKwkgKi8KKwkgaWYgKElTX0RHRlgoaTkxNSkgJiYKKwkgICAgIG1tYXBfdHlwZSAhPSBJ
OTE1X01NQVBfVFlQRV9XQiAmJiBvYmotPm1tLm5fcGxhY2VtZW50cyA9PSAxICYmCisJICAgICBp
OTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWluX3R5cGUob2JqLCBJTlRFTF9NRU1PUllf
U1lTVEVNKSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAltbW8gPSBtbWFwX29mZnNldF9hdHRhY2go
b2JqLCBtbWFwX3R5cGUsIGZpbGUpOwogCWlmIChJU19FUlIobW1vKSkKIAkJcmV0dXJuIFBUUl9F
UlIobW1vKTsKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
