Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF162D9F6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 12:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE3D89D39;
	Wed, 29 May 2019 10:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ACEB89CE1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 10:05:45 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4T9wpxQ184297;
 Wed, 29 May 2019 10:05:43 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2spxbq8j26-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 10:05:43 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TA3Mmr178930;
 Wed, 29 May 2019 10:03:43 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2ss1fnc605-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 10:03:43 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4TA3gV3027774;
 Wed, 29 May 2019 10:03:42 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 May 2019 03:03:40 -0700
Date: Wed, 29 May 2019 13:03:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ville.syrjala@linux.intel.com
Message-ID: <20190529100335.GA10365@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290067
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2018-07-02;
 bh=Kr1d7pcyum+KBawV462LTGiDY8sCFV6SO2iHSp9RlLY=;
 b=nM8ETvEdO2bYo1M9/qB7IbVLmMl8Vr4DWY4FJa+7kuIYbc0DodSmnnbHfE8GPyy/upQO
 /D6NDE3dq9u8vzTSK3CbCrNZ5sgAekgDM23l/65g5VHVB8tVIqKXRjIHn6SlRpMar16D
 q0+cBN7k3/0tdvLnTYMNZfeR/lvfpqg41kcUYAjLODMTCjR3aNTdJKaOtTjW322Ve3WH
 NrFWAnyebXKyJ338PatxQTuMKnObFx2bfKTngStKAFtJGho89K2Jb+K5oCGoa2A/8AQm
 YQM9cQJS2O5krZvuDKerH2XQXiQCIsFw7ybkY7ZCpFWYhIqQT55lpMgRIVBlkoV+B89a 8g== 
Subject: [Intel-gfx] [bug report] drm/i915: Make sure we have enough memory
 bandwidth on ICL
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3lyasOkbMOkLAoKSSBoYWQgYSBxdWVzdGlvbiBhYm91dCBjb21taXQgYzQ1N2Q5Y2YyNTZl
OiAoImRybS9pOTE1OiBNYWtlIHN1cmUgd2UgaGF2ZQplbm91Z2ggbWVtb3J5IGJhbmR3aWR0aCBv
biBJQ0wiKS4KCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2J3LmMKICAgIDY0ICBzdGF0aWMg
aW50IGljbF9wY29kZV9yZWFkX3Fndl9wb2ludF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKICAgIDY1ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgKnNwLAogICAgNjYgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaW50IHBvaW50KQogICAgNjcgIHsKICAgIDY4ICAgICAg
ICAgIHUzMiB2YWwgPSAwLCB2YWwyOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl4K
InZhbDIiIGlzIHVuaW5pdGlhbGl6ZWQuCgogICAgNjkgICAgICAgICAgaW50IHJldDsKICAgIDcw
ICAKICAgIDcxICAgICAgICAgIHJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoZGV2X3ByaXYs
CiAgICA3MiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElDTF9QQ09ERV9N
RU1fU1VCU1lTWVNURU1fSU5GTyB8CiAgICA3MyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9RR1ZfUE9JTlRfSU5GTyhwb2ludCksCiAg
ICA3NCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZ2YWwsICZ2YWwyKTsK
ICAgIDc1ICAgICAgICAgIGlmIChyZXQpCiAgICA3NiAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7CiAgICA3NyAgCiAgICA3OCAgICAgICAgICBzcC0+ZGNsayA9IHZhbCAmIDB4ZmZmZjsKICAg
IDc5ICAgICAgICAgIHNwLT50X3JwID0gKHZhbCAmIDB4ZmYwMDAwKSA+PiAxNjsKICAgIDgwICAg
ICAgICAgIHNwLT50X3JjZCA9ICh2YWwgJiAweGZmMDAwMDAwKSA+PiAyNDsKICAgIDgxICAKICAg
IDgyICAgICAgICAgIHNwLT50X3JkcHJlID0gdmFsMiAmIDB4ZmY7CiAgICA4MyAgICAgICAgICBz
cC0+dF9yYXMgPSAodmFsMiAmIDB4ZmYwMCkgPj4gODsKICAgIDg0ICAKICAgIDg1ICAgICAgICAg
IHNwLT50X3JjID0gc3AtPnRfcnAgKyBzcC0+dF9yYXM7CiAgICA4NiAgCiAgICA4NyAgICAgICAg
ICByZXR1cm4gMDsKICAgIDg4ICB9Cgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFu
ZC5jCiAgIDM3NiAgc3RhdGljIGludCBfX3NhbmR5YnJpZGdlX3Bjb2RlX3J3KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogICAzNzcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1MzIgbWJveCwgdTMyICp2YWwsIHUzMiAqdmFsMSwKICAgMzc4ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaW50IGZhc3RfdGltZW91dF91cywKICAgMzc5ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHNsb3dfdGltZW91dF9tcywKICAgMzgwICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBpc19yZWFkKQogICAzODEgIHsK
ICAgMzgyICAgICAgICAgIHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNv
cmU7CiAgIDM4MyAgCiAgIDM4NCAgICAgICAgICBsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5z
Yl9sb2NrKTsKICAgMzg1ICAKICAgMzg2ICAgICAgICAgIC8qCiAgIDM4NyAgICAgICAgICAgKiBH
RU42X1BDT0RFXyogYXJlIG91dHNpZGUgb2YgdGhlIGZvcmNld2FrZSBkb21haW4sIHdlIGNhbgog
ICAzODggICAgICAgICAgICogdXNlIHRlIGZ3IEk5MTVfUkVBRCB2YXJpYW50cyB0byByZWR1Y2Ug
dGhlIGFtb3VudCBvZiB3b3JrCiAgIDM4OSAgICAgICAgICAgKiByZXF1aXJlZCB3aGVuIHJlYWRp
bmcvd3JpdGluZy4KICAgMzkwICAgICAgICAgICAqLwogICAzOTEgIAogICAzOTIgICAgICAgICAg
aWYgKGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgR0VONl9QQ09ERV9NQUlMQk9YKSAmIEdF
TjZfUENPREVfUkVBRFkpCiAgIDM5MyAgICAgICAgICAgICAgICAgIHJldHVybiAtRUFHQUlOOwog
ICAzOTQgIAogICAzOTUgICAgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VO
Nl9QQ09ERV9EQVRBLCAqdmFsKTsKICAgMzk2ICAgICAgICAgIGludGVsX3VuY29yZV93cml0ZV9m
dyh1bmNvcmUsIEdFTjZfUENPREVfREFUQTEsIHZhbDEgPyAqdmFsMSA6IDApOwogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIF5eXl5eCldlIHdyaXRlIHVuaW5pdGlhbGl6ZWQgdmFsdWUgb3V0IGhlcmUuICBJJ20gc29y
dCBvZiBzdXJwcmlzZWQgdGhhdApVQlNhbiBkb2Vzbid0IGNvbXBsYWluLiAgSSBkb24ndCBrbm93
IHRoZSBjb2RlIHdlbGwgZW5vdWdoIHRvIHNheSBpZgp0aGlzIGlzIGEgcHJvYmxlbS4KCiAgIDM5
NyAgICAgICAgICBpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLAogICAzOTggICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEdFTjZfUENPREVfTUFJTEJPWCwgR0VONl9QQ09ERV9SRUFE
WSB8IG1ib3gpOwogICAzOTkgIAogICA0MDAgICAgICAgICAgaWYgKF9faW50ZWxfd2FpdF9mb3Jf
cmVnaXN0ZXJfZncodW5jb3JlLAogICA0MDEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgR0VONl9QQ09ERV9NQUlMQk9YLAogICA0MDIgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgR0VONl9QQ09ERV9SRUFEWSwgMCwKICAgNDAzICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZhc3RfdGltZW91dF91cywKICAg
NDA0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNsb3dfdGltZW91
dF9tcywKICAgNDA1ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZt
Ym94KSkKICAgNDA2ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7CgpyZWdhcmRz
LApkYW4gY2FycGVudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
