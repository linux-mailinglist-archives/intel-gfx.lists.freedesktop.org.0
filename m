Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 513C4398448
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 10:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062EA6EB83;
	Wed,  2 Jun 2021 08:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C066EB7F;
 Wed,  2 Jun 2021 08:38:32 +0000 (UTC)
IronPort-SDR: vBn1RQyeif8X8BHUsqk91Q9LZWKbBY5Sami0t77kFnGvC7+vZ7rMv1Y6k/Kv6C9EjxSAUwU+qS
 RAKPauG1GhmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="225026217"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="225026217"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 01:38:31 -0700
IronPort-SDR: STuE+3y5YhzvcyQFJXeenKXE0mBV1gGtkdEhi0hRI7DLRjAJd+fe6wIoqljUDCDbQEltoJjNud
 eFrtVqb02saQ==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="467376282"
Received: from lmarkel-mobl1.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.49])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 01:38:29 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  2 Jun 2021 10:38:07 +0200
Message-Id: <20210602083818.241793-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 00/11] Move LMEM (VRAM) management over to
 TTM
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhbiBpbml0aWFsIHBhdGNoIHNlcmllcyB0byBtb3ZlIGRpc2NyZXRlIG1lbW9yeSBt
YW5hZ2VtZW50IG92ZXIgdG8KVFRNLiBJdCB3aWxsIGJlIGZvbGxvd2VkIHVwIHNob3J0bHkgd2l0
aCBhZGRpbmcgbW9yZSBmdW5jdGlvbmFsaXR5LgoKVGhlIGJ1ZGR5IGFsbG9jYXRvciBpcyB0ZW1w
b3JhcmlseSByZW1vdmVkIGFsb25nIHdpdGggaXRzIHNlbGZ0ZXN0cyBhbmQKSXQgaXMgcmVwbGFj
ZWQgd2l0aCB0aGUgVFRNIHJhbmdlIG1hbmFnZXIgYW5kIHNvbWUgc2VsZnRlc3RzIGFyZSBhZGp1
c3RlZAp0byBhY2NvdW50IGZvciBpbnRyb2R1Y2VkIGZyYWdtZW50YXRpb24uIFdvcmsgaXMgb25n
b2luZyB0byByZWludHJvZHVjZSB0aGUKYnVkZHkgYWxsb2NhdG9yIGFzIGEgVFRNIHJlc291cmNl
IG1hbmFnZXIuCgpBIG5ldyBtZW1jcHkgdHRtIG1vdmUgaXMgaW50cm9kdWNlZCB0aGF0IHVzZXMg
a21hcF9sb2NhbCgpIGZ1bmN0aW9uYWxpdHkKcmF0aGVyIHRoYW4gdm1hcCgpLiBBbW9uZyBvdGhl
ciB0aGluZ3Mgc3RhdGVkIGluIHRoZSBwYXRjaCBjb21taXQgbWVzc2FnZQppdCBoZWxwcyB1cyBk
ZWFsIHdpdGggcGFnZS1wYXNlZCBMTUVNIG1lbW9yeS4gSXQgaXMgZ2VuZXJpYyBlbm91Z2ggdG8g
cmVwbGFjZQp0aGUgdHRtIG1lbWNweSBtb3ZlIHdpdGggc29tZSBhZGRpdGlvbmFsIHdvcmsgaWYg
c28gZGVzaXJlZC4gT24geDg2IGl0IGFsc28KZW5hYmxlcyBwcmVmZXRjaGluZyByZWFkcyBmcm9t
IHdyaXRlLWNvbWJpbmVkIG1lbW9yeS4KCkZpbmFsbHkgdGhlIG9sZCBpOTE1IGdlbSBvYmplY3Qg
TE1FTSBiYWNrZW5kIGlzIHJlcGxhY2VkIHdpdGggYQppOTE1IGdlbSBvYmplY3QgVFRNIGJhY2tl
bmQgYW5kIHNvbWUgYWRkaXRpb25hbCBpOTE1IGdlbSBvYmplY3Qgb3BzIGFyZQppbnRyb2R1Y2Vk
IHRvIHN1cHBvcnQgdGhlIGFkZGVkIGZ1bmN0aW9uYWxpdHkuCkN1cnJlbnRseSBpdCBpcyB1c2Vk
IG9ubHkgdG8gc3VwcG9ydCBtYW5hZ2VtZW50IGFuZCBldmljdGlvbiBvZiB0aGUgTE1FTQpyZWdp
b24sIGJ1dCB3b3JrIGlzIHVuZGVyd2F5IHRvIGV4dGVuZCB0aGUgc3VwcG9ydCB0byBzeXN0ZW0g
bWVtb3J5LiBJbiB0aGlzCndheSB3ZSB1c2UgVFRNIHRoZSB3YXkgaXQgd2FzIG9yaWdpbmFsbHkg
aW50ZW5kZWQsIGhhdmluZyB0aGUgR1BVIGJpbmRpbmcKdGFrZW4gY2FyZSBvZiBieSBkcml2ZXIg
Y29kZS4KCkludGVudGlvbiBpcyB0byBmb2xsb3cgdXAgd2l0aAotIFN5c3RlbSBtZW1vcnkgc3Vw
cG9ydAotIFBpcGVsaW5lZCBhY2NlbGVyYXRlZCBtb3ZlcyAvIG1pZ3JhdGlvbgotIFJlLWFkZGVk
IGJ1ZGR5IGFsbG9jYXRvciBpbiB0aGUgVFRNIGZyYW1ld29yawoKdjI6Ci0gQWRkIHBhdGNoZXMg
dG8gbW92ZSBwYWdlZmF1bHRpbmcgb3ZlciB0byBUVE0KLSBCcmVhayBvdXQgVFRNIGNoYW5nZXMg
dG8gc2VwYXJhdGUgcGF0Y2hlcwotIEFkZHJlc3MgdmFyaW91cyByZXZpZXcgY29tbWVudHMgYXMg
ZGV0YWlsZWQgaW4gdGhlIGFmZmVjdGVkIHBhdGNoZXMKCnYzOgotIERyb3AgVFRNIHBhZ2VmYXVs
dGluZyBwYXRjaGVzIGZvciBub3cgZHVlIGNoYW5naW5nIGFwcHJvYWNoIGR1ZSB0byBhIE5BSy4K
LSBBZGRyZXNzIGZlZWRiYWNrIG9uIFRUTSBwYXRjaGVzCi0gTW92ZSB0aGUgbmV3IFRUTSBtZW1j
cHkgZnVuY3Rpb25hbGl0eSBpbnRvIFRUTS4KLSBNb3ZlIGZhc3QgV0MgbWVtY3B5IHRvIGRybQot
IFZhcmlvdXMgZml4ZXMgYWxsIG92ZXIgdGhlIHBsYWNlIGFzIHNob3duIGluIHBhdGNoIGNvbW1p
dCBtZXNzYWdlcy4KCnY0OgotIFJlLWFkZCBUVE0gcGFnZWZhdWx0aW5nIHBhdGNoZXMuCi0gQWRk
cmVzc2VkIHJldmlldyBmZWVkYmFjayBtYWlubHkgZnJvbSBNYXR0aGV3IEF1bGQKLSBGaXhlZCB0
aGUgbW9jayB0dG0gZGV2aWNlIGNvZGUgdGhhdCB3YXMgdXNpbmcgYW4gaW5jb3JyZWN0IGFwcHJv
YWNoLgoKdjU6Ci0gQ2xlYW51cHMgaW4gdGhlIFRUTSBwYWdlZmF1bHRpbmcgcGF0Y2hlcy4KLSBK
dXN0IGFkZCB0aGUgV0MgbWVtY3B5IHRvIERSTSB3aXRob3V0IHJlbW92aW5nIGZyb20gaTkxNQog
IChTdWdnZXN0ZWQgYnkgRGFuaWVsIFZldHRlcikuCi0gVmFyaW91cyBtaW5vciBmaXhlcyBhcyBy
ZXBvcnRlZCBpbiBwYXRjaCBsb2cgbWVzc2FnZXMuCnY2OgotIEZpeCBhIG1lcmdlIGNvbmZsaWN0
IGNhdXNpbmcgYnVpbGQgZXJyb3IuCnY3OgotIEZpeCB0aGUgV0MgbWVtY3B5IGNvbXBpbGF0aW9u
IGFuZCBwZXJmb3JtIGEgZmFsbGJhY2sgbWVtY3B5IGluIGFkZGl0aW9uIHRvCiAgd2FybmluZyBp
biBpbnRlcnJ1cHQgKFN1Z2dlc3RlZCBieSBDaHJpc3RpYW4gS8O2bmlnKQotIFJlbmlzdGF0ZSBj
aGVjayBmb3IgdHRtX3R0X2lzX3BvcHVsYXRlZCgpIG9uIHN3YXBvdXQuCnY4OgotIEFkZGVkIGEg
Y291cGxlIG9mIGFja3MgYW5kIHItYnMKLSBwZ29mZl90IC0+IHUzMiBpbiBpbnRlcmZhY2Ugb2Yg
dHRtX21vdmVfbWVtY3B5LgotIEZpeCBtaXNzaW5nIGV4cG9ydCBpbiAhWDg2IFdDIG1lbWNweS4K
djk6Ci0gRml4IGEgTlVMTCBwb2ludGVyIGRlcmVmIGlmIGJvLT50dG0gPT0gTlVMTAp2MTA6Ci0g
Rml4IGEga2VybmVsZG9jIHRpdGxlIHVuZGVybGluZQoKQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCk1hYXJ0ZW4gTGFua2hvcnN0ICgyKToKICBkcm0vdm1h
OiBBZGQgYSBkcml2ZXJfcHJpdmF0ZSBtZW1iZXIgdG8gdm1hX25vZGUuCiAgZHJtL2k5MTU6IFVz
ZSB0dG0gbW1hcCBoYW5kbGluZyBmb3IgdHRtIGJvJ3MuCgpUaG9tYXMgSGVsbHN0csO2bSAoOSk6
CiAgZHJtL2k5MTUvdHRtIEluaXRpYWxpemUgdGhlIHR0bSBkZXZpY2UgYW5kIG1lbW9yeSBtYW5h
Z2VycwogIGRybS9pOTE1L3R0bTogRW1iZWQgYSB0dG0gYnVmZmVyIG9iamVjdCBpbiB0aGUgaTkx
NSBnZW0gb2JqZWN0CiAgZHJtL3R0bTogQWRkIGEgZ2VuZXJpYyBUVE0gbWVtY3B5IG1vdmUgZm9y
IHBhZ2UtYmFzZWQgaW9tZW0KICBkcm06IEFkZCBhIHByZWZldGNoaW5nIG1lbWNweV9mcm9tX3dj
CiAgZHJtL3R0bTogVXNlIGRybV9tZW1jcHlfZnJvbV93YyBmb3IgVFRNIGJvIG1vdmVzCiAgZHJt
L3R0bTogRG9jdW1lbnQgYW5kIG9wdGltaXplIHR0bV9ib19waXBlbGluZV9ndXR0aW5nKCkKICBk
cm0vdHRtLCBkcm0vYW1kZ3B1OiBBbGxvdyB0aGUgZHJpdmVyIHNvbWUgY29udHJvbCBvdmVyIHN3
YXBwaW5nCiAgZHJtL2k5MTUvdHRtOiBJbnRyb2R1Y2UgYSBUVE0gaTkxNSBnZW0gb2JqZWN0IGJh
Y2tlbmQKICBkcm0vaTkxNS9sbWVtOiBWZXJpZnkgY2hlY2tzIGZvciBsbWVtIHJlc2lkZW5jeQoK
IERvY3VtZW50YXRpb24vZ3B1L2RybS1tbS5yc3QgICAgICAgICAgICAgICAgICB8ICAgNCArLQog
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgICAgIHwgICA0ICsKIGRy
aXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYyAgICAgICAgICAgICAgICAgICB8IDE0OCArKysrCiBk
cml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKwogZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgICAgICAgICAgICAgICAgIHwgICA5IC0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jICAgIHwgICA5ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jICAgICAgfCAgNzEgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmggICAgICB8ICAgNSAtCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgICAgfCAgODMgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8IDE1MCArKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgMTkgKy0KIC4uLi9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oICB8ICA0OCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMgICAgfCAxMjYgKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmggICAgfCAgIDQgLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zdG9sZW4uaCAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgNjQ3ICsrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmggICAgICAgfCAgNDggKysKIC4uLi9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICA5MCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgICAgIHwgICAyIC0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMgICB8ICAzMCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9idWRkeS5jICAgICAgICAgICAgIHwgNDM1IC0tLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuaCAgICAgICAgICAgICB8IDEzMSAtLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAgOCArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nbG9iYWxzLmMgICAgICAgICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2xvYmFscy5oICAgICAgICAgICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3NjYXR0ZXJsaXN0LmMgICAgICAgfCAgNzAgKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc2NhdHRlcmxpc3QuaCAgICAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgICAgfCAxODEgKystLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwgIDQ1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9yZWdpb25fdHRtLmMgICAgICAgfCAyMjAgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3JlZ2lvbl90dG0uaCAgICAgICB8ICAzNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jICAgfCA3ODkgLS0tLS0tLS0tLS0tLS0tLS0tCiAuLi4v
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaCAgfCAgIDEgLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFwLmMgICAgIHwgIDI1ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaCAgICAgfCAgMTIgKy0KIC4uLi9kcm0v
aTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICB8IDEzMyArLS0KIC4uLi9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jICB8ICAxMCArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uYyAgfCAgNzAgKy0KIGRyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmMgICAgICAgICAgICAgICAgICB8ICA2NiArLQogZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fYm9fdXRpbC5jICAgICAgICAgICAgIHwgMzIwICsrKy0tLS0KIGRyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX21vZHVsZS5jICAgICAgICAgICAgICB8ICAzNSArCiBkcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9yZXNvdXJjZS5jICAgICAgICAgICAgfCAxOTMgKysrKysKIGRyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX3R0LmMgICAgICAgICAgICAgICAgICB8ICA0NSArCiBpbmNsdWRlL2Ry
bS9kcm1fY2FjaGUuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKwogaW5jbHVkZS9kcm0v
ZHJtX3ZtYV9tYW5hZ2VyLmggICAgICAgICAgICAgICAgIHwgICAyICstCiBpbmNsdWRlL2RybS90
dG0vdHRtX2JvX2RyaXZlci5oICAgICAgICAgICAgICAgfCAgMjggKwogaW5jbHVkZS9kcm0vdHRt
L3R0bV9jYWNoaW5nLmggICAgICAgICAgICAgICAgIHwgICAyICsKIGluY2x1ZGUvZHJtL3R0bS90
dG1fa21hcF9pdGVyLmggICAgICAgICAgICAgICB8ICA2MSArKwogaW5jbHVkZS9kcm0vdHRtL3R0
bV9yZXNvdXJjZS5oICAgICAgICAgICAgICAgIHwgIDYxICsrCiBpbmNsdWRlL2RybS90dG0vdHRt
X3R0LmggICAgICAgICAgICAgICAgICAgICAgfCAgMjkgKwogNTggZmlsZXMgY2hhbmdlZCwgMjQx
NiBpbnNlcnRpb25zKCspLCAyMTU0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uaAogZGVsZXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYwogZGVsZXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uaAogZGVsZXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2J1ZGR5LmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2RybS90dG0vdHRtX2ttYXBfaXRlci5oCgotLSAKMi4zMS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
