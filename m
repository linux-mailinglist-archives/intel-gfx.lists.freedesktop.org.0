Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAC5108B1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 16:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C26B89338;
	Wed,  1 May 2019 14:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394568938C;
 Wed,  1 May 2019 14:03:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 07:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,417,1549958400"; d="scan'208";a="145141398"
Received: from nperf12.hd.intel.com ([10.127.88.161])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2019 07:03:01 -0700
From: Brian Welty <brian.welty@intel.com>
To: cgroups@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Li Zefan <lizefan@huawei.com>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-mm@kvack.org, Michal Hocko <mhocko@kernel.org>,
 Vladimir Davydov <vdavydov.dev@gmail.com>, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 ChunMing Zhou <David1.Zhou@amd.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>
Date: Wed,  1 May 2019 10:04:35 -0400
Message-Id: <20190501140438.9506-3-brian.welty@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501140438.9506-1-brian.welty@intel.com>
References: <20190501140438.9506-1-brian.welty@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 2/5] cgroup: Change kernfs_node for
 directories to store cgroup_subsys_state
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

Q2hhbmdlIHRoZSBrZXJuZnNfbm9kZS5wcml2IHRvIHN0b3JlIHRoZSBjZ3JvdXBfc3Vic3lzX3N0
YXRlIChDU1MpIHBvaW50ZXIKZm9yIGRpcmVjdG9yaWVzLCBpbnN0ZWFkIG9mIHN0b3JpbmcgY2dy
b3VwIHBvaW50ZXIuICBUaGlzIGlzIGRvbmUgaW4gb3JkZXIKdG8gc3VwcG9ydCBmaWxlcyB3aXRo
aW4gdGhlIGNncm91cCBhc3NvY2lhdGVkIHdpdGggZGV2aWNlcy4gIFdlIHJlcXVpcmUKb2ZfY3Nz
KCkgdG8gcmV0dXJuIHRoZSBkZXZpY2Utc3BlY2lmaWMgQ1NTIHBvaW50ZXIgZm9yIHRoZXNlIGZp
bGVzLgoKQ2M6IGNncm91cHNAdmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEJyaWFuIFdl
bHR5IDxicmlhbi53ZWx0eUBpbnRlbC5jb20+Ci0tLQoga2VybmVsL2Nncm91cC9jZ3JvdXAtdjEu
YyB8IDEwICsrKystLS0tCiBrZXJuZWwvY2dyb3VwL2Nncm91cC5jICAgIHwgNDggKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI3IGluc2Vy
dGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2tlcm5lbC9jZ3JvdXAvY2dy
b3VwLXYxLmMgYi9rZXJuZWwvY2dyb3VwL2Nncm91cC12MS5jCmluZGV4IGMxMjZiMzRmZDRmZi4u
NGZhNTZjYzJiOTljIDEwMDY0NAotLS0gYS9rZXJuZWwvY2dyb3VwL2Nncm91cC12MS5jCisrKyBi
L2tlcm5lbC9jZ3JvdXAvY2dyb3VwLXYxLmMKQEAgLTcyMyw2ICs3MjMsNyBAQCBpbnQgcHJvY19j
Z3JvdXBzdGF0c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdikKIGludCBjZ3JvdXBz
dGF0c19idWlsZChzdHJ1Y3QgY2dyb3Vwc3RhdHMgKnN0YXRzLCBzdHJ1Y3QgZGVudHJ5ICpkZW50
cnkpCiB7CiAJc3RydWN0IGtlcm5mc19ub2RlICprbiA9IGtlcm5mc19ub2RlX2Zyb21fZGVudHJ5
KGRlbnRyeSk7CisJc3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKmNzczsKIAlzdHJ1Y3QgY2dy
b3VwICpjZ3JwOwogCXN0cnVjdCBjc3NfdGFza19pdGVyIGl0OwogCXN0cnVjdCB0YXNrX3N0cnVj
dCAqdHNrOwpAQCAtNzQwLDEyICs3NDEsMTMgQEAgaW50IGNncm91cHN0YXRzX2J1aWxkKHN0cnVj
dCBjZ3JvdXBzdGF0cyAqc3RhdHMsIHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKIAkgKiBAa24tPnBy
aXYgaXMgUkNVIHNhZmUuICBMZXQncyBkbyB0aGUgUkNVIGRhbmNpbmcuCiAJICovCiAJcmN1X3Jl
YWRfbG9jaygpOwotCWNncnAgPSByY3VfZGVyZWZlcmVuY2UoKih2b2lkIF9fcmN1IF9fZm9yY2Ug
KiopJmtuLT5wcml2KTsKLQlpZiAoIWNncnAgfHwgY2dyb3VwX2lzX2RlYWQoY2dycCkpIHsKKwlj
c3MgPSByY3VfZGVyZWZlcmVuY2UoKih2b2lkIF9fcmN1IF9fZm9yY2UgKiopJmtuLT5wcml2KTsK
KwlpZiAoIWNzcyB8fCBjZ3JvdXBfaXNfZGVhZChjc3MtPmNncm91cCkpIHsKIAkJcmN1X3JlYWRf
dW5sb2NrKCk7CiAJCW11dGV4X3VubG9jaygmY2dyb3VwX211dGV4KTsKIAkJcmV0dXJuIC1FTk9F
TlQ7CiAJfQorCWNncnAgPSBjc3MtPmNncm91cDsKIAlyY3VfcmVhZF91bmxvY2soKTsKIAogCWNz
c190YXNrX2l0ZXJfc3RhcnQoJmNncnAtPnNlbGYsIDAsICZpdCk7CkBAIC04NTEsNyArODUzLDcg
QEAgdm9pZCBjZ3JvdXAxX3JlbGVhc2VfYWdlbnQoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQog
c3RhdGljIGludCBjZ3JvdXAxX3JlbmFtZShzdHJ1Y3Qga2VybmZzX25vZGUgKmtuLCBzdHJ1Y3Qg
a2VybmZzX25vZGUgKm5ld19wYXJlbnQsCiAJCQkgIGNvbnN0IGNoYXIgKm5ld19uYW1lX3N0cikK
IHsKLQlzdHJ1Y3QgY2dyb3VwICpjZ3JwID0ga24tPnByaXY7CisJc3RydWN0IGNncm91cF9zdWJz
eXNfc3RhdGUgKmNzcyA9IGtuLT5wcml2OwogCWludCByZXQ7CiAKIAlpZiAoa2VybmZzX3R5cGUo
a24pICE9IEtFUk5GU19ESVIpCkBAIC04NzEsNyArODczLDcgQEAgc3RhdGljIGludCBjZ3JvdXAx
X3JlbmFtZShzdHJ1Y3Qga2VybmZzX25vZGUgKmtuLCBzdHJ1Y3Qga2VybmZzX25vZGUgKm5ld19w
YXJlbnQKIAogCXJldCA9IGtlcm5mc19yZW5hbWUoa24sIG5ld19wYXJlbnQsIG5ld19uYW1lX3N0
cik7CiAJaWYgKCFyZXQpCi0JCVRSQUNFX0NHUk9VUF9QQVRIKHJlbmFtZSwgY2dycCk7CisJCVRS
QUNFX0NHUk9VUF9QQVRIKHJlbmFtZSwgY3NzLT5jZ3JvdXApOwogCiAJbXV0ZXhfdW5sb2NrKCZj
Z3JvdXBfbXV0ZXgpOwogCmRpZmYgLS1naXQgYS9rZXJuZWwvY2dyb3VwL2Nncm91cC5jIGIva2Vy
bmVsL2Nncm91cC9jZ3JvdXAuYwppbmRleCA5YjAzNWU3Mjg5NDEuLjFmZTRmZWU1MDJlYSAxMDA2
NDQKLS0tIGEva2VybmVsL2Nncm91cC9jZ3JvdXAuYworKysgYi9rZXJuZWwvY2dyb3VwL2Nncm91
cC5jCkBAIC01OTUsMTIgKzU5NSwxMyBAQCBzdGF0aWMgdm9pZCBjZ3JvdXBfZ2V0X2xpdmUoc3Ry
dWN0IGNncm91cCAqY2dycCkKIAogc3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKm9mX2Nzcyhz
dHJ1Y3Qga2VybmZzX29wZW5fZmlsZSAqb2YpCiB7Ci0Jc3RydWN0IGNncm91cCAqY2dycCA9IG9m
LT5rbi0+cGFyZW50LT5wcml2OworCXN0cnVjdCBjZ3JvdXBfc3Vic3lzX3N0YXRlICpjc3MgPSBv
Zi0+a24tPnBhcmVudC0+cHJpdjsKIAlzdHJ1Y3QgY2Z0eXBlICpjZnQgPSBvZl9jZnQob2YpOwog
Ci0JLyogRklYTUUgdGhpcyBuZWVkcyB1cGRhdGluZyB0byBsb29rdXAgZGV2aWNlLXNwZWNpZmlj
IENTUyAqLwotCiAJLyoKKwkgKiBJZiB0aGUgY2Z0IHNwZWNpZmllcyBhIHN1YnN5cyBhbmQgdGhp
cyBpcyBub3QgYSBkZXZpY2UgZmlsZSwKKwkgKiB0aGVuIGxvb2t1cCB0aGUgY3NzLCBvdGhlcndp
c2UgaXQgaXMgYWxyZWFkeSBjb3JyZWN0LgorCSAqCiAJICogVGhpcyBpcyBvcGVuIGFuZCB1bnBy
b3RlY3RlZCBpbXBsZW1lbnRhdGlvbiBvZiBjZ3JvdXBfY3NzKCkuCiAJICogc2VxX2NzcygpIGlz
IG9ubHkgY2FsbGVkIGZyb20gYSBrZXJuZnMgZmlsZSBvcGVyYXRpb24gd2hpY2ggaGFzCiAJICog
YW4gYWN0aXZlIHJlZmVyZW5jZSBvbiB0aGUgZmlsZS4gIEJlY2F1c2UgYWxsIHRoZSBzdWJzeXN0
ZW0KQEAgLTYwOCwxMCArNjA5LDkgQEAgc3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKm9mX2Nz
cyhzdHJ1Y3Qga2VybmZzX29wZW5fZmlsZSAqb2YpCiAJICogdGhlIG1hdGNoaW5nIGNzcyBmcm9t
IHRoZSBjZ3JvdXAncyBzdWJzeXMgdGFibGUgaXMgZ3VhcmFudGVlZCB0bwogCSAqIGJlIGFuZCBz
dGF5IHZhbGlkIHVudGlsIHRoZSBlbmNsb3Npbmcgb3BlcmF0aW9uIGlzIGNvbXBsZXRlLgogCSAq
LwotCWlmIChjZnQtPnNzKQotCQlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX3JhdyhjZ3JwLT5zdWJz
eXNbY2Z0LT5zcy0+aWRdKTsKLQllbHNlCi0JCXJldHVybiAmY2dycC0+c2VsZjsKKwlpZiAoY2Z0
LT5zcyAmJiAhY3NzLT5kZXZpY2UpCisJCWNzcyA9IHJjdV9kZXJlZmVyZW5jZV9yYXcoY3NzLT5j
Z3JvdXAtPnN1YnN5c1tjZnQtPnNzLT5pZF0pOworCXJldHVybiBjc3M7CiB9CiBFWFBPUlRfU1lN
Qk9MX0dQTChvZl9jc3MpOwogCkBAIC0xNTI0LDEyICsxNTI0LDE0IEBAIHN0YXRpYyB1MTYgY2dy
b3VwX2NhbGNfc3VidHJlZV9zc19tYXNrKHUxNiBzdWJ0cmVlX2NvbnRyb2wsIHUxNiB0aGlzX3Nz
X21hc2spCiAgKi8KIHZvaWQgY2dyb3VwX2tuX3VubG9jayhzdHJ1Y3Qga2VybmZzX25vZGUgKmtu
KQogeworCXN0cnVjdCBjZ3JvdXBfc3Vic3lzX3N0YXRlICpjc3M7CiAJc3RydWN0IGNncm91cCAq
Y2dycDsKIAogCWlmIChrZXJuZnNfdHlwZShrbikgPT0gS0VSTkZTX0RJUikKLQkJY2dycCA9IGtu
LT5wcml2OworCQljc3MgPSBrbi0+cHJpdjsKIAllbHNlCi0JCWNncnAgPSBrbi0+cGFyZW50LT5w
cml2OworCQljc3MgPSBrbi0+cGFyZW50LT5wcml2OworCWNncnAgPSBjc3MtPmNncm91cDsKIAog
CW11dGV4X3VubG9jaygmY2dyb3VwX211dGV4KTsKIApAQCAtMTU1NiwxMiArMTU1OCwxNCBAQCB2
b2lkIGNncm91cF9rbl91bmxvY2soc3RydWN0IGtlcm5mc19ub2RlICprbikKICAqLwogc3RydWN0
IGNncm91cCAqY2dyb3VwX2tuX2xvY2tfbGl2ZShzdHJ1Y3Qga2VybmZzX25vZGUgKmtuLCBib29s
IGRyYWluX29mZmxpbmUpCiB7CisJc3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKmNzczsKIAlz
dHJ1Y3QgY2dyb3VwICpjZ3JwOwogCiAJaWYgKGtlcm5mc190eXBlKGtuKSA9PSBLRVJORlNfRElS
KQotCQljZ3JwID0ga24tPnByaXY7CisJCWNzcyA9IGtuLT5wcml2OwogCWVsc2UKLQkJY2dycCA9
IGtuLT5wYXJlbnQtPnByaXY7CisJCWNzcyA9IGtuLT5wYXJlbnQtPnByaXY7CisJY2dycCA9IGNz
cy0+Y2dyb3VwOwogCiAJLyoKIAkgKiBXZSdyZSBnb25uYSBncmFiIGNncm91cF9tdXRleCB3aGlj
aCBuZXN0cyBvdXRzaWRlIGtlcm5mcwpAQCAtMTY1Miw3ICsxNjU2LDcgQEAgc3RhdGljIGludCBj
Z3JvdXBfZGV2aWNlX21rZGlyKHN0cnVjdCBjZ3JvdXBfc3Vic3lzX3N0YXRlICpjc3MpCiAJaWYg
KFdBUk5fT05fT05DRShyZXQgPj0gQ0dST1VQX0ZJTEVfTkFNRV9NQVgpKQogCQlyZXR1cm4gMDsK
IAotCWtuID0ga2VybmZzX2NyZWF0ZV9kaXIoY2dycC0+a24sIG5hbWUsIGNncnAtPmtuLT5tb2Rl
LCBjZ3JwKTsKKwlrbiA9IGtlcm5mc19jcmVhdGVfZGlyKGNncnAtPmtuLCBuYW1lLCBjZ3JwLT5r
bi0+bW9kZSwgY3NzKTsKIAlpZiAoSVNfRVJSKGtuKSkKIAkJcmV0dXJuIFBUUl9FUlIoa24pOwog
CWNzcy0+ZGV2aWNlX2tuID0ga247CkBAIC0xNjYyLDcgKzE2NjYsNyBAQCBzdGF0aWMgaW50IGNn
cm91cF9kZXZpY2VfbWtkaXIoc3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKmNzcykKIAkJLyog
RklYTUU6IHByZWZpeCBkZXZfbmFtZSB3aXRoIGJ1c19uYW1lIGZvciB1bmlxdWVuZXNzPyAqLwog
CQlrbiA9IGtlcm5mc19jcmVhdGVfZGlyKGNzcy0+ZGV2aWNlX2tuLAogCQkJCSAgICAgICBkZXZf
bmFtZShkZXZpY2VfY3NzLT5kZXZpY2UpLAotCQkJCSAgICAgICBjZ3JwLT5rbi0+bW9kZSwgY2dy
cCk7CisJCQkJICAgICAgIGNncnAtPmtuLT5tb2RlLCBkZXZpY2VfY3NzKTsKIAkJaWYgKElTX0VS
UihrbikpCiAJCQlyZXR1cm4gUFRSX0VSUihrbik7CiAJCS8qIEZJWE1FOiBrZXJuZnNfZ2V0IG5l
ZWRlZCBoZXJlPyAqLwpAQCAtMjAyNSw3ICsyMDI5LDcgQEAgaW50IGNncm91cF9zZXR1cF9yb290
KHN0cnVjdCBjZ3JvdXBfcm9vdCAqcm9vdCwgdTE2IHNzX21hc2spCiAJcm9vdC0+a2Zfcm9vdCA9
IGtlcm5mc19jcmVhdGVfcm9vdChrZl9zb3BzLAogCQkJCQkgICBLRVJORlNfUk9PVF9DUkVBVEVf
REVBQ1RJVkFURUQgfAogCQkJCQkgICBLRVJORlNfUk9PVF9TVVBQT1JUX0VYUE9SVE9QLAotCQkJ
CQkgICByb290X2NncnApOworCQkJCQkgICAmcm9vdF9jZ3JwLT5zZWxmKTsKIAlpZiAoSVNfRVJS
KHJvb3QtPmtmX3Jvb3QpKSB7CiAJCXJldCA9IFBUUl9FUlIocm9vdC0+a2Zfcm9vdCk7CiAJCWdv
dG8gZXhpdF9yb290X2lkOwpAQCAtMzU3OSw5ICszNTgzLDkgQEAgc3RhdGljIHNzaXplX3QgY2dy
b3VwX2ZpbGVfd3JpdGUoc3RydWN0IGtlcm5mc19vcGVuX2ZpbGUgKm9mLCBjaGFyICpidWYsCiAJ
CQkJIHNpemVfdCBuYnl0ZXMsIGxvZmZfdCBvZmYpCiB7CiAJc3RydWN0IGNncm91cF9uYW1lc3Bh
Y2UgKm5zID0gY3VycmVudC0+bnNwcm94eS0+Y2dyb3VwX25zOwotCXN0cnVjdCBjZ3JvdXAgKmNn
cnAgPSBvZi0+a24tPnBhcmVudC0+cHJpdjsKKwlzdHJ1Y3QgY2dyb3VwX3N1YnN5c19zdGF0ZSAq
Y3NzID0gb2ZfY3NzKG9mKTsKIAlzdHJ1Y3QgY2Z0eXBlICpjZnQgPSBvZi0+a24tPnByaXY7Ci0J
c3RydWN0IGNncm91cF9zdWJzeXNfc3RhdGUgKmNzczsKKwlzdHJ1Y3QgY2dyb3VwICpjZ3JwID0g
Y3NzLT5jZ3JvdXA7CiAJaW50IHJldDsKIAogCS8qCkBAIC0zNTk4LDE2ICszNjAyLDYgQEAgc3Rh
dGljIHNzaXplX3QgY2dyb3VwX2ZpbGVfd3JpdGUoc3RydWN0IGtlcm5mc19vcGVuX2ZpbGUgKm9m
LCBjaGFyICpidWYsCiAJaWYgKGNmdC0+d3JpdGUpCiAJCXJldHVybiBjZnQtPndyaXRlKG9mLCBi
dWYsIG5ieXRlcywgb2ZmKTsKIAotCS8qCi0JICoga2VybmZzIGd1YXJhbnRlZXMgdGhhdCBhIGZp
bGUgaXNuJ3QgZGVsZXRlZCB3aXRoIG9wZXJhdGlvbnMgaW4KLQkgKiBmbGlnaHQsIHdoaWNoIG1l
YW5zIHRoYXQgdGhlIG1hdGNoaW5nIGNzcyBpcyBhbmQgc3RheXMgYWxpdmUgYW5kCi0JICogZG9l
c24ndCBuZWVkIHRvIGJlIHBpbm5lZC4gIFRoZSBSQ1UgbG9ja2luZyBpcyBub3QgbmVjZXNzYXJ5
Ci0JICogZWl0aGVyLiAgSXQncyBqdXN0IGZvciB0aGUgY29udmVuaWVuY2Ugb2YgdXNpbmcgY2dy
b3VwX2NzcygpLgotCSAqLwotCXJjdV9yZWFkX2xvY2soKTsKLQljc3MgPSBjZ3JvdXBfY3NzKGNn
cnAsIGNmdC0+c3MpOwotCXJjdV9yZWFkX3VubG9jaygpOwotCiAJaWYgKGNmdC0+d3JpdGVfdTY0
KSB7CiAJCXVuc2lnbmVkIGxvbmcgbG9uZyB2OwogCQlyZXQgPSBrc3RydG91bGwoYnVmLCAwLCAm
dik7CkBAIC01MjYyLDcgKzUyNTYsNyBAQCBpbnQgY2dyb3VwX21rZGlyKHN0cnVjdCBrZXJuZnNf
bm9kZSAqcGFyZW50X2tuLCBjb25zdCBjaGFyICpuYW1lLCB1bW9kZV90IG1vZGUpCiAJfQogCiAJ
LyogY3JlYXRlIHRoZSBkaXJlY3RvcnkgKi8KLQlrbiA9IGtlcm5mc19jcmVhdGVfZGlyKHBhcmVu
dC0+a24sIG5hbWUsIG1vZGUsIGNncnApOworCWtuID0ga2VybmZzX2NyZWF0ZV9kaXIocGFyZW50
LT5rbiwgbmFtZSwgbW9kZSwgJmNncnAtPnNlbGYpOwogCWlmIChJU19FUlIoa24pKSB7CiAJCXJl
dCA9IFBUUl9FUlIoa24pOwogCQlnb3RvIG91dF9kZXN0cm95OwotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
