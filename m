Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D143B2A94
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690F56EB21;
	Thu, 24 Jun 2021 08:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0806EB21;
 Thu, 24 Jun 2021 08:43:06 +0000 (UTC)
IronPort-SDR: +/J23F4pa5xuYmk/zusfUtfjLnWIwGw4V3ZfTVPckQ9LIeg8K8rj6xR+Tq4+g7omrjLD8LnRkI
 POoM04eSjT2w==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="205601335"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="205601335"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:43:05 -0700
IronPort-SDR: d+KoUZGvqw5hdmH6uHCLSy1jwkIqSGdyD3wAOPXRGS0WPycGD8r/ZuwXW0xjgronGT5+rYlHle
 dj2IDXhd1etg==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="453344907"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:43:03 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 10:42:37 +0200
Message-Id: <20210624084240.270219-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 0/3] drm/i915: Move system memory to TTM for
 discrete
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
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFybHkgaW1wbGVtZW50YXRpb24gb2YgbW92aW5nIHN5c3RlbSBtZW1vcnkgZm9yIGRpc2NyZXRl
IGNhcmRzIG92ZXIgdG8KVFRNLiBXZSBmaXJzdCBhZGQgdGhlIG5vdGlvbiBvZiBvYmplY3RzIGJl
aW5nIG1pZ3JhdGFibGUgdW5kZXIgdGhlIG9iamVjdApsb2NrIHRvIGk5MTUgZ2VtLCBhbmQgYWRk
IHNvbWUgYXNzZXJ0cyB0byB2ZXJpZnkgdGhhdCBvYmplY3RzIGFyZSBlaXRoZXIKbG9ja2VkIG9y
IHBpbm5lZCB3aGVuIHRoZSBwbGFjZW1lbnQgaXMgY2hlY2tlZCBieSB0aGUgZ2VtIGNvZGUuCgpQ
YXRjaCAyIGRlYWxzIHdpdGggdXBkYXRpbmcgdGhlIGk5MTUgZ2VtIGJvb2trZWVwaW5nIGFmdGVy
IGEgVFRNIG1vdmUsClBhdGNoIDMgbW92ZXMgc3lzdGVtIG92ZXIgZnJvbSBzaG1lbSB0byBUVE0g
Zm9yIGRpc2NyZXRlCgpOb3RlIHRoYXQgdGhlIG1vY2sgZGV2aWNlIGRvZXNuJ3QgY29uc2lkZXIg
aXRzZWxmIGRpc2NyZXRlIHNvIHRoZSBUVE0Kc3lzdGVtIHBhdGggaXMgbm90IGNoZWNrZWQgYnkg
dGhlIG1vY2sgc2VsZnRlc3RzLgoKdjI6Ci0gU3R5bGUgZml4ZXMgKHJlcG9ydGVkIGJ5IE1hdHRo
ZXcgQXVsZCkKLSBEcm9wIHRoZSBsYXN0IHBhdGNoIChtaWdyYXRpb24pIEl0IG5lZWRzIHNlbGZ0
ZXN0cyBhbmQgc29tZSBhZGRpdGlvbmFsIHdvcmsuCi0gVW5jb25kaXRpb25hbGx5IGFkZCBWTV9J
TyBhdCBtbWFwIHRpbWUuCgp2MzoKLSBNb3JlIHN0eWxlIGZpeGVzIChyZXBvcnRlZCBieSBNYXR0
aGV3IEF1bGQpCi0gRG9uJ3Qgb3ZlcmZpbGwgdGhlIGJ1c3kgcGxhY2VtZW50IHZlY3RvciAocmVw
b3J0ZWQgYnkgTWF0dGhldyBBdWxkKQoKdjQ6Ci0gUmVtb3ZlIGNvbmZ1c2lvbiBhcm91bmQgc2hy
aW5rYWJsZSBvYmplY3RzIChyZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCgp2NToKLSBSZW1vdmUg
Y29uZnVzaW9uIGFyb3VuZCBzaHJpbmthYmxlIG9iamVjdHMgYWdhaW4sIGJ1dCB0aGlzIHRpbWUg
aW4gdGhlCiAgY29ycmVjdCBwYXRjaC4gKHJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKCnY2Ogot
IE9uZSBwYXRjaCBhbHJlYWR5IGNvbW1pdHRlZC4KLSBJbnRyb2R1Y2UgYSBfX2k5MTVfZ2VtX29i
amVjdF9pc19sbWVtKCkgdG8gYmUgdXNlZCBpbiBzaXR1YXRpb25zIHdoZXJlIHdlCiAga25vdyB0
aGF0IGEgZmVuY2UgdGhhdCBjYW4ndCBjdXJyZW50bHkgc2lnbmFsIGtlZXBzIHRoZSBvYmplY3Qg
ZnJvbSBiZWluZwogIG1pZ3JhdGVkIG9yIGV2aWN0ZWQuCi0gUmViYXNlIG9uIGFjY2VsZXJhdGVk
IFRUTSBtb3ZlcwotIEZpeCBUT0RPOnMgZm9yIHN1cHBvcnRpbmcgc3lzdGVtIG1lbW9yeSB3aXRo
IFRUTS4KLSBVcGRhdGUgdGhlIG9iamVjdCBHRU0gcmVnaW9uIGFmdGVyIGEgVFRNIG1vdmUgaWYg
Y29tcGF0aWJsZS4KLSBNb3ZlIGEgY291cGxlIG9mIHdhcm5pbmdzIGZvciBzaG1lbSBvbiBER0ZY
LgoKdjc6Ci0gSnVzdCB1cGRhdGVkIGEgY29tbWl0IG1lc3NhZ2Ugd2l0aCB2ZXJzaW9uIGhpc3Rv
cnkgdW5kZXIgZGFzaGVzLgoKdjg6Ci0gUmVpbnN0YXRlIGFsaWdubWVudCBhdCB0dG1fYm9faW5p
dF9yZXNlcnZlZCgpIHRpbWUuIChSZXBvcnRlZCBieQogIE1hdHRoZXcgQXVsZCkuCi0gV2hlbiBj
aGFuZ2luZyByZWdpb25zLCBhbHNvIG1vdmUgdGhlIG9iamVjdCB0byB0aGUgbmV3IHJlZ2lvbiBs
aXN0CiAgYW5kIGJyZWFrIGVhcmx5LiAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKS4KLSBEb24n
dCBmbGFnIHRoZSBvYmplY3QgYXMgY29udGlndW91cyBiYXNlZCBvbiB0aGUgY3VycmVudCByZWdp
b24gbWluCiAgcGFnZXMgc2l6ZS4Kdjk6Ci0gUmVtb3ZlIGEgREdGWCB3YXJuaW5nIGluIF9faTkx
NV9nZW1fb2JqZWN0X3JlbGVhc2Vfc2htZW0gc2luY2UgaXQKICBpcyBjYWxsZWQgZnJvbSB0aGUg
dXNlcnB0ciBjb2RlLgp2MTA6Ci0gQWRkIHNvbWUgY29tbWVudHMgYXJvdW5kIHRoZSBnZW0gb2Jq
ZWN0ICJtZW1fZmxhZ3MiIGZpZWxkLCBhbmQKICB1c2UgYSBmdWxsIHVuc2lnbmVkIGludCBmb3Ig
aXQuIChTdWdnZXN0ZWQgYnkgRGFuaWVsIFZldHRlcikuCi0gQWRkIGFuIG9iamVjdCBsb2NrZWQg
c2VjdGlvbiB3aGlsZSBjaGVja2luZyBtZW1fZmxhZ3MgaW4gdGhlIGxpdmUKICBtbWFuIHNlbGZ0
ZXN0LgoKVGhvbWFzIEhlbGxzdHLDtm0gKDMpOgogIGRybS9pOTE1OiBVcGRhdGUgb2JqZWN0IHBs
YWNlbWVudCBmbGFncyB0byBiZSBtdXRhYmxlCiAgZHJtL2k5MTUvdHRtOiBBZGp1c3QgZ2VtIGZs
YWdzIGFuZCBjYWNoaW5nIHNldHRpbmdzIGFmdGVyIGEgbW92ZQogIGRybS9pOTE1L3R0bTogVXNl
IFRUTSBmb3Igc3lzdGVtIG1lbW9yeQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9pbnRlcm5hbC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2xtZW0uYyAgICAgIHwgIDIyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bG1lbS5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYyAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgICAgfCAgMzggKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
dHlwZXMuaCAgfCAgMjcgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFn
ZXMuYyAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlz
LmMgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lv
bi5jICAgIHwgICA0IC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5j
ICAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAg
ICAgIHwgMTk2ICsrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3VzZXJwdHIuYyAgIHwgICA0ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9o
dWdlX2dlbV9vYmplY3QuYyAgfCAgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9odWdlX3BhZ2VzLmMgICB8ICAgNSArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fbW1hbi5jICAgIHwgIDI1ICsrLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fcGh5cy5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgIDMgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYyAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmMgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9y
ZWdpb24uaCAgICB8ICAgOCArCiAyMSBmaWxlcyBjaGFuZ2VkLCAyODggaW5zZXJ0aW9ucygrKSwg
MTA1IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
