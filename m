Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3362A49B9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 16:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0270A6ECD7;
	Tue,  3 Nov 2020 15:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C60F6ECD7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 15:30:30 +0000 (UTC)
IronPort-SDR: yzfH8N8A6RwVO2uA1LB8RConrQMZ3uRgQ+E69AWTq5pW4fTBj3Jy5IUWzKdvVdPbVUa4+68i6F
 S5pZeurszWXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156059441"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="156059441"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 07:30:29 -0800
IronPort-SDR: xTYrvNuqNkpwULXnEkWPQESRkdtPD2hnszsmWEjBKYfvBKB1+viAo9h+13uLjRJqCw0hbu7NVX
 Ii7N/c8eo4Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="325259546"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 03 Nov 2020 07:30:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Nov 2020 17:30:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 17:30:26 +0200
Message-Id: <20201103153026.16566-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include fb modidier in state dumps
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
Cc: Simon Ser <contact@emersion.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IGhlbHAgZGlhZ25vc2UgbW9kaWZpZXIgcmVsYXRlZCBpc3N1ZXMgbGV0J3MgaW5jbHVkZSB0aGF0
CmluZm9ybWF0aW9uIGluIHRoZSB2YXJpb3VzIHN0YXRlIGR1bXBzLgoKQ2M6IFNpbW9uIFNlciA8
Y29udGFjdEBlbWVyc2lvbi5mcj4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICAgIHwgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgNyArKysrLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGNkZGJkYTUzMDNmZi4uNmFmODli
ZjRjMjQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTMyMTgsMTEgKzEzMjE4LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGxhbmVf
c3RhdGUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAl9CiAK
IAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAotCQkgICAgIltQTEFORTolZDolc10gZmI6IFtGQjol
ZF0gJXV4JXUgZm9ybWF0ID0gJXMsIHZpc2libGU6ICVzXG4iLAorCQkgICAgIltQTEFORTolZDol
c10gZmI6IFtGQjolZF0gJXV4JXUgZm9ybWF0ID0gJXMgbW9kaWZpZXIgPSAweCVsbHgsIHZpc2li
bGU6ICVzXG4iLAogCQkgICAgcGxhbmUtPmJhc2UuYmFzZS5pZCwgcGxhbmUtPmJhc2UubmFtZSwK
IAkJICAgIGZiLT5iYXNlLmlkLCBmYi0+d2lkdGgsIGZiLT5oZWlnaHQsCiAJCSAgICBkcm1fZ2V0
X2Zvcm1hdF9uYW1lKGZiLT5mb3JtYXQtPmZvcm1hdCwgJmZvcm1hdF9uYW1lKSwKLQkJICAgIHll
c25vKHBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpKTsKKwkJICAgIGZiLT5tb2RpZmllciwgeWVz
bm8ocGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkpOwogCWRybV9kYmdfa21zKCZpOTE1LT5kcm0s
ICJcdHJvdGF0aW9uOiAweCV4LCBzY2FsZXI6ICVkXG4iLAogCQkgICAgcGxhbmVfc3RhdGUtPmh3
LnJvdGF0aW9uLCBwbGFuZV9zdGF0ZS0+c2NhbGVyX2lkKTsKIAlpZiAocGxhbmVfc3RhdGUtPnVh
cGkudmlzaWJsZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGVidWdmcy5jCmluZGV4IGNmYjRjMTQ3NDk4Mi4uMDBiNzk1OTNiY2VmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1
Z2ZzLmMKQEAgLTc3Myw4ICs3NzMsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wbGFuZV91YXBpX2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKQogCXBsYW5l
X3JvdGF0aW9uKHJvdF9zdHIsIHNpemVvZihyb3Rfc3RyKSwKIAkJICAgICAgIHBsYW5lX3N0YXRl
LT51YXBpLnJvdGF0aW9uKTsKIAotCXNlcV9wcmludGYobSwgIlx0XHR1YXBpOiBmYj0lZCwlcywl
ZHglZCwgc3JjPSIgRFJNX1JFQ1RfRlBfRk1UICIsIGRzdD0iIERSTV9SRUNUX0ZNVCAiLCByb3Rh
dGlvbj0lc1xuIiwKKwlzZXFfcHJpbnRmKG0sICJcdFx0dWFwaTogW0ZCOiVkXSAlcywweCVsbHgs
JWR4JWQsIHNyYz0iIERSTV9SRUNUX0ZQX0ZNVCAiLCBkc3Q9IiBEUk1fUkVDVF9GTVQgIiwgcm90
YXRpb249JXNcbiIsCiAJCSAgIGZiID8gZmItPmJhc2UuaWQgOiAwLCBmYiA/IGZvcm1hdF9uYW1l
LnN0ciA6ICJuL2EiLAorCQkgICBmYiA/IGZiLT5tb2RpZmllciA6IDAsCiAJCSAgIGZiID8gZmIt
PndpZHRoIDogMCwgZmIgPyBmYi0+aGVpZ2h0IDogMCwKIAkJICAgRFJNX1JFQ1RfRlBfQVJHKCZz
cmMpLAogCQkgICBEUk1fUkVDVF9BUkcoJmRzdCksCkBAIC03OTcsOSArNzk4LDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcGxhbmVfaHdfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUpCiAJcGxhbmVfcm90YXRpb24ocm90X3N0ciwgc2l6ZW9mKHJvdF9zdHIp
LAogCQkgICAgICAgcGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uKTsKIAotCXNlcV9wcmludGYobSwg
Ilx0XHRodzogZmI9JWQsJXMsJWR4JWQsIHZpc2libGU9JXMsIHNyYz0iIERSTV9SRUNUX0ZQX0ZN
VCAiLCBkc3Q9IiBEUk1fUkVDVF9GTVQgIiwgcm90YXRpb249JXNcbiIsCisJc2VxX3ByaW50Ziht
LCAiXHRcdGh3OiBbRkI6JWRdICVzLDB4JWxseCwlZHglZCwgdmlzaWJsZT0lcywgc3JjPSIgRFJN
X1JFQ1RfRlBfRk1UICIsIGRzdD0iIERSTV9SRUNUX0ZNVCAiLCByb3RhdGlvbj0lc1xuIiwKIAkJ
ICAgZmItPmJhc2UuaWQsIGZvcm1hdF9uYW1lLnN0ciwKLQkJICAgZmItPndpZHRoLCBmYi0+aGVp
Z2h0LAorCQkgICBmYi0+bW9kaWZpZXIsIGZiLT53aWR0aCwgZmItPmhlaWdodCwKIAkJICAgeWVz
bm8ocGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSksCiAJCSAgIERSTV9SRUNUX0ZQX0FSRygmcGxh
bmVfc3RhdGUtPnVhcGkuc3JjKSwKIAkJICAgRFJNX1JFQ1RfQVJHKCZwbGFuZV9zdGF0ZS0+dWFw
aS5kc3QpLAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
