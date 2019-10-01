Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29345C379C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FA06E804;
	Tue,  1 Oct 2019 14:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CCF6E804
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:37:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:37:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="190609990"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:37:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Tue,  1 Oct 2019 16:37:37 +0200
Message-Id: <20191001143738.16573-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001143738.16573-1-janusz.krzysztofik@linux.intel.com>
References: <20191001143738.16573-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Fix i915_inject_load_error()
 name to read *_probe_*
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDUwZDg0NDE4ZjU4NiAoImRybS9pOTE1OiBBZGQgaTkxNSB0byBpOTE1X2luamVjdF9w
cm9iZV9mYWlsdXJlIikKaW50cm9kdWNlZCBuZXcgZnVuY3Rpb25zIHVuZm9ydHVuYXRlbHkgbmFt
ZWQgaW5jb21wYXRpYmx5IHdpdGggcnVsZXMKZXN0YWJsaXNoZWQgYnkgY29tbWl0IGYyZGI1M2Yx
NGQzZCAoImRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aAoiX3Byb2JlIiBjb25zZXF1ZW50
bHkiKS4gIEZpeCBpdCBmb3IgY29uc2lzdGVuY3kuCgpTdWdnZXN0ZWQtYnk6IE1pY2hhxYIgV2Fq
ZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFudXN6
IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpDYzogTWlj
aGHFgiBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogTWljaGHFgiBX
aW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgpDYzogUGlvdHIgUGnDs3Jrb3dz
a2kgPHBpb3RyLnBpb3Jrb3dza2lAaW50ZWwuY29tPgpDYzogVG9tYXN6IExpcyA8dG9tYXN6Lmxp
c0BpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMg
fCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgICAgICAgIHwg
IDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwg
IDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICAgICAg
fCAyMCArKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
ICAgICAgICAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmMgICAgICAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmggICAgICAgICAgICAgfCAxMiArKysrKy0tLS0tLQogNyBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNl
cnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwppbmRleCBmMzI1ZDNkZDU2NGYuLjY3ZTQ2YzJh
ZjZkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1
Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3Vi
bWlzc2lvbi5jCkBAIC0xMTE5LDcgKzExMTksNyBAQCBpbnQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25f
ZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsK
IAlpbnQgZXJyOwogCi0JZXJyID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihndC0+aTkxNSwgLUVO
WElPKTsKKwllcnIgPSBpOTE1X2luamVjdF9wcm9iZV9lcnJvcihndC0+aTkxNSwgLUVOWElPKTsK
IAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9odWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5jCmluZGV4IGQ0NjI1Yzk3YjRmOS4uODI5NWZmOTcxYmNjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9odWMuYwpAQCAtMzUsNyArMzUsNyBAQCBzdGF0aWMgaW50IGludGVs
X2h1Y19yc2FfZGF0YV9jcmVhdGUoc3RydWN0IGludGVsX2h1YyAqaHVjKQogCXZvaWQgKnZhZGRy
OwogCWludCBlcnI7CiAKLQllcnIgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGd0LT5pOTE1LCAt
RU5YSU8pOworCWVyciA9IGk5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGd0LT5pOTE1LCAtRU5YSU8p
OwogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKQEAgLTEzNCw3ICsxMzQsNyBAQCBpbnQgaW50
ZWxfaHVjX2F1dGgoc3RydWN0IGludGVsX2h1YyAqaHVjKQogCWlmICghaW50ZWxfdWNfZndfaXNf
bG9hZGVkKCZodWMtPmZ3KSkKIAkJcmV0dXJuIC1FTk9FWEVDOwogCi0JcmV0ID0gaTkxNV9pbmpl
Y3RfbG9hZF9lcnJvcihndC0+aTkxNSwgLUVOWElPKTsKKwlyZXQgPSBpOTE1X2luamVjdF9wcm9i
ZV9lcnJvcihndC0+aTkxNSwgLUVOWElPKTsKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDcxZWU3YWIwMzVjYy4uZmIwZDdi
YjcxMmFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTIwLDcgKzIw
LDcgQEAgc3RhdGljIGludCBfX2ludGVsX3VjX3Jlc2V0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMp
CiAJaW50IHJldDsKIAl1MzIgZ3VjX3N0YXR1czsKIAotCXJldCA9IGk5MTVfaW5qZWN0X2xvYWRf
ZXJyb3IoZ3QtPmk5MTUsIC1FTlhJTyk7CisJcmV0ID0gaTkxNV9pbmplY3RfcHJvYmVfZXJyb3Io
Z3QtPmk5MTUsIC1FTlhJTyk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApAQCAtMTk3LDcg
KzE5Nyw3IEBAIHN0YXRpYyBpbnQgZ3VjX2VuYWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCBpbnRl
bF9ndWMgKmd1YykKIAogCUdFTV9CVUdfT04oZ3VjX2NvbW11bmljYXRpb25fZW5hYmxlZChndWMp
KTsKIAotCXJldCA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoaTkxNSwgLUVOWElPKTsKKwlyZXQg
PSBpOTE1X2luamVjdF9wcm9iZV9lcnJvcihpOTE1LCAtRU5YSU8pOwogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CiAKQEAgLTM2OCw3ICszNjgsNyBAQCBzdGF0aWMgaW50IHVjX2luaXRfd29wY20o
c3RydWN0IGludGVsX3VjICp1YykKIAlHRU1fQlVHX09OKCEoc2l6ZSAmIEdVQ19XT1BDTV9TSVpF
X01BU0spKTsKIAlHRU1fQlVHX09OKHNpemUgJiB+R1VDX1dPUENNX1NJWkVfTUFTSyk7CiAKLQll
cnIgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGd0LT5pOTE1LCAtRU5YSU8pOworCWVyciA9IGk5
MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGd0LT5pOTE1LCAtRU5YSU8pOwogCWlmIChlcnIpCiAJCXJl
dHVybiBlcnI7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4
IGJkMjJiZjExYWRhZC4uZjY4MzBlYzc5YTY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMKQEAgLTIxOCwyOSArMjE4LDMxIEBAIHN0YXRpYyB2b2lkIF9fZm9yY2Vf
ZndfZmV0Y2hfZmFpbHVyZXMoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywKIHsKIAlib29sIHVz
ZXIgPSBlID09IC1FSU5WQUw7CiAKLQlpZiAoaTkxNV9pbmplY3RfbG9hZF9lcnJvcihpOTE1LCBl
KSkgeworCWlmIChpOTE1X2luamVjdF9wcm9iZV9lcnJvcihpOTE1LCBlKSkgewogCQkvKiBub24t
ZXhpc3RpbmcgYmxvYiAqLwogCQl1Y19mdy0+cGF0aCA9ICI8aW52YWxpZD4iOwogCQl1Y19mdy0+
dXNlcl9vdmVycmlkZGVuID0gdXNlcjsKLQl9IGVsc2UgaWYgKGk5MTVfaW5qZWN0X2xvYWRfZXJy
b3IoaTkxNSwgZSkpIHsKKwl9IGVsc2UgaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGk5MTUs
IGUpKSB7CiAJCS8qIHJlcXVpcmUgbmV4dCBtYWpvciB2ZXJzaW9uICovCiAJCXVjX2Z3LT5tYWpv
cl92ZXJfd2FudGVkICs9IDE7CiAJCXVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gMDsKIAkJdWNf
ZnctPnVzZXJfb3ZlcnJpZGRlbiA9IHVzZXI7Ci0JfSBlbHNlIGlmIChpOTE1X2luamVjdF9sb2Fk
X2Vycm9yKGk5MTUsIGUpKSB7CisJfSBlbHNlIGlmIChpOTE1X2luamVjdF9wcm9iZV9lcnJvcihp
OTE1LCBlKSkgewogCQkvKiByZXF1aXJlIG5leHQgbWlub3IgdmVyc2lvbiAqLwogCQl1Y19mdy0+
bWlub3JfdmVyX3dhbnRlZCArPSAxOwogCQl1Y19mdy0+dXNlcl9vdmVycmlkZGVuID0gdXNlcjsK
LQl9IGVsc2UgaWYgKHVjX2Z3LT5tYWpvcl92ZXJfd2FudGVkICYmIGk5MTVfaW5qZWN0X2xvYWRf
ZXJyb3IoaTkxNSwgZSkpIHsKKwl9IGVsc2UgaWYgKHVjX2Z3LT5tYWpvcl92ZXJfd2FudGVkICYm
CisJCSAgIGk5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGk5MTUsIGUpKSB7CiAJCS8qIHJlcXVpcmUg
cHJldiBtYWpvciB2ZXJzaW9uICovCiAJCXVjX2Z3LT5tYWpvcl92ZXJfd2FudGVkIC09IDE7CiAJ
CXVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gMDsKIAkJdWNfZnctPnVzZXJfb3ZlcnJpZGRlbiA9
IHVzZXI7Ci0JfSBlbHNlIGlmICh1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCAmJiBpOTE1X2luamVj
dF9sb2FkX2Vycm9yKGk5MTUsIGUpKSB7CisJfSBlbHNlIGlmICh1Y19mdy0+bWlub3JfdmVyX3dh
bnRlZCAmJgorCQkgICBpOTE1X2luamVjdF9wcm9iZV9lcnJvcihpOTE1LCBlKSkgewogCQkvKiBy
ZXF1aXJlIHByZXYgbWlub3IgdmVyc2lvbiAtIGhleSwgdGhpcyBzaG91bGQgd29yayEgKi8KIAkJ
dWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgLT0gMTsKIAkJdWNfZnctPnVzZXJfb3ZlcnJpZGRlbiA9
IHVzZXI7Ci0JfSBlbHNlIGlmICh1c2VyICYmIGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoaTkxNSwg
ZSkpIHsKKwl9IGVsc2UgaWYgKHVzZXIgJiYgaTkxNV9pbmplY3RfcHJvYmVfZXJyb3IoaTkxNSwg
ZSkpIHsKIAkJLyogb2ZmaWNpYWxseSB1bnN1cHBvcnRlZCBwbGF0Zm9ybSAqLwogCQl1Y19mdy0+
bWFqb3JfdmVyX3dhbnRlZCA9IDA7CiAJCXVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gMDsKQEAg
LTI2OSw3ICsyNzEsNyBAQCBpbnQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3
ICp1Y19mdywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJR0VNX0JVR19PTighaTkx
NS0+d29wY20uc2l6ZSk7CiAJR0VNX0JVR19PTighaW50ZWxfdWNfZndfaXNfZW5hYmxlZCh1Y19m
dykpOwogCi0JZXJyID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihpOTE1LCAtRU5YSU8pOworCWVy
ciA9IGk5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGk5MTUsIC1FTlhJTyk7CiAJaWYgKGVycikKIAkJ
cmV0dXJuIGVycjsKIApAQCAtNDQ1LDcgKzQ0Nyw3IEBAIHN0YXRpYyBpbnQgdWNfZndfeGZlcihz
dHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCXU2NCBvZmZz
ZXQ7CiAJaW50IHJldDsKIAotCXJldCA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoZ3QtPmk5MTUs
IC1FVElNRURPVVQpOworCXJldCA9IGk5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKGd0LT5pOTE1LCAt
RVRJTUVET1VUKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCkBAIC01MDYsNyArNTA4LDcg
QEAgaW50IGludGVsX3VjX2Z3X3VwbG9hZChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LAogCS8qIG1ha2Ugc3VyZSB0aGUgc3RhdHVzIHdhcyBjbGVhcmVkIHRo
ZSBsYXN0IHRpbWUgd2UgcmVzZXQgdGhlIHVjICovCiAJR0VNX0JVR19PTihpbnRlbF91Y19md19p
c19sb2FkZWQodWNfZncpKTsKIAotCWVyciA9IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoZ3QtPmk5
MTUsIC1FTk9FWEVDKTsKKwllcnIgPSBpOTE1X2luamVjdF9wcm9iZV9lcnJvcihndC0+aTkxNSwg
LUVOT0VYRUMpOwogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCmluZGV4IGViMzFiNjlhMzE2YS4uYTA0MWZiNjk5Mjc2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKQEAgLTE0ODQsMTEgKzE0ODQsMTEgQEAgaW50IGk5MTVfZ2VtX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2d0OwogCi0J
cmV0ID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihkZXZfcHJpdiwgLUVOT0RFVik7CisJcmV0ID0g
aTkxNV9pbmplY3RfcHJvYmVfZXJyb3IoZGV2X3ByaXYsIC1FTk9ERVYpOwogCWlmIChyZXQpCiAJ
CWdvdG8gZXJyX2d0OwogCi0JcmV0ID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihkZXZfcHJpdiwg
LUVJTyk7CisJcmV0ID0gaTkxNV9pbmplY3RfcHJvYmVfZXJyb3IoZGV2X3ByaXYsIC1FSU8pOwog
CWlmIChyZXQpCiAJCWdvdG8gZXJyX2d0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3V0aWxzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKaW5k
ZXggMTZhY2RmN2JkYmU2Li5lNTFiZGIwNWRhMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmMKQEAgLTU0LDggKzU0LDggQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RS
TV9JOTE1X0RFQlVHKQogc3RhdGljIHVuc2lnbmVkIGludCBpOTE1X3Byb2JlX2ZhaWxfY291bnQ7
CiAKLWludCBfX2k5MTVfaW5qZWN0X2xvYWRfZXJyb3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsIGludCBlcnIsCi0JCQkgICAgIGNvbnN0IGNoYXIgKmZ1bmMsIGludCBsaW5lKQoraW50
IF9faTkxNV9pbmplY3RfcHJvYmVfZXJyb3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGludCBlcnIsCisJCQkgICAgICBjb25zdCBjaGFyICpmdW5jLCBpbnQgbGluZSkKIHsKIAlpZiAo
aTkxNV9wcm9iZV9mYWlsX2NvdW50ID49IGk5MTVfbW9kcGFyYW1zLmluamVjdF9sb2FkX2ZhaWx1
cmUpCiAJCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCmluZGV4IDU2MmY3NTZk
YTQyMS4uZWRiNjUxYTVhNjYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3V0aWxzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCkBAIC02MCwy
MCArNjAsMjAgQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGNvbnN0IGNoYXIgKmxldmVsLAogCiAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
REVCVUcpCiAKLWludCBfX2k5MTVfaW5qZWN0X2xvYWRfZXJyb3Ioc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIGludCBlcnIsCi0JCQkgICAgIGNvbnN0IGNoYXIgKmZ1bmMsIGludCBsaW5l
KTsKLSNkZWZpbmUgaTkxNV9pbmplY3RfbG9hZF9lcnJvcihfaTkxNSwgX2VycikgXAotCV9faTkx
NV9pbmplY3RfbG9hZF9lcnJvcigoX2k5MTUpLCAoX2VyciksIF9fZnVuY19fLCBfX0xJTkVfXykK
K2ludCBfX2k5MTVfaW5qZWN0X3Byb2JlX2Vycm9yKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBpbnQgZXJyLAorCQkJICAgICAgY29uc3QgY2hhciAqZnVuYywgaW50IGxpbmUpOworI2Rl
ZmluZSBpOTE1X2luamVjdF9wcm9iZV9lcnJvcihfaTkxNSwgX2VycikgXAorCV9faTkxNV9pbmpl
Y3RfcHJvYmVfZXJyb3IoKF9pOTE1KSwgKF9lcnIpLCBfX2Z1bmNfXywgX19MSU5FX18pCiBib29s
IGk5MTVfZXJyb3JfaW5qZWN0ZWQodm9pZCk7CiAKICNlbHNlCiAKLSNkZWZpbmUgaTkxNV9pbmpl
Y3RfbG9hZF9lcnJvcihfaTkxNSwgX2VycikgMAorI2RlZmluZSBpOTE1X2luamVjdF9wcm9iZV9l
cnJvcihfaTkxNSwgX2VycikgMAogI2RlZmluZSBpOTE1X2Vycm9yX2luamVjdGVkKCkgZmFsc2UK
IAogI2VuZGlmCiAKLSNkZWZpbmUgaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZShpOTE1KSBpOTE1
X2luamVjdF9sb2FkX2Vycm9yKChpOTE1KSwgLUVOT0RFVikKKyNkZWZpbmUgaTkxNV9pbmplY3Rf
cHJvYmVfZmFpbHVyZShpOTE1KSBpOTE1X2luamVjdF9wcm9iZV9lcnJvcigoaTkxNSksIC1FTk9E
RVYpCiAKICNkZWZpbmUgaTkxNV9wcm9iZV9lcnJvcihpOTE1LCBmbXQsIC4uLikJCQkJICAgXAog
CV9faTkxNV9wcmludGsoaTkxNSwgaTkxNV9lcnJvcl9pbmplY3RlZCgpID8gS0VSTl9ERUJVRyA6
IEtFUk5fRVJSLCBcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
