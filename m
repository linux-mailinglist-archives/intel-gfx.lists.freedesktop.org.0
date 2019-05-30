Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D8F2F85E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 10:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0736E12D;
	Thu, 30 May 2019 08:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52C26E12D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 08:13:36 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4U89Ee2053557;
 Thu, 30 May 2019 08:13:33 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2spxbqee79-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 08:13:33 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4U8CwQD185739;
 Thu, 30 May 2019 08:13:33 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2sr31vqwjy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 08:13:33 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4U8DUft005825;
 Thu, 30 May 2019 08:13:32 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 May 2019 01:13:06 -0700
Date: Thu, 30 May 2019 11:13:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20190530081301.GA8766@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=848
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905300062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=889 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905300062
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=U/bWsSaQe58LS64AwIpfpkTTP/Pg7k+2ZsjWFkUDwtY=;
 b=lIMhKQQGT/v3/MNi48Y8aFDeCpJL7HsQR5s8/F3y7lBbWB+hNTUu/2s7Q+MvE/MdCDym
 nq1PoQRbEpG8Du6Ik4EF/XE0ecP7Zm9zaWOxjydh9hdIGgFlGoBCTUSFqFgtWagYX0GE
 Pu8c+V7p1CxdsjE5xxeSs/y2mEs+GI+Ft/Ip4Ys8QprCQyTwRIaeBqTSO36wOQmyIhj0
 udWL+fq0DRb/bi6BXFGOdtsMJxjU7SUYGSuWMHzQakcuF+BuM2ejbPzRou5bKAfBU2ia
 T6Z2fP4mNoT8R13BKqg5pAVQZ6yR/acqX7lj0ZslBK5haToFYq6lwKv6d4OWShnQTVyS 9Q== 
Subject: [Intel-gfx] [bug report] drm/i915: Trim struct_mutex hold duration
 for i915_gem_free_objects
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhlIHBhdGNoIGNjNzMxZjVhM2IxZjogImRybS9pOTE1OiBU
cmltIHN0cnVjdF9tdXRleCBob2xkIGR1cmF0aW9uCmZvciBpOTE1X2dlbV9mcmVlX29iamVjdHMi
IGZyb20gT2N0IDEzLCAyMDE3LCBsZWFkcyB0byB0aGUgZm9sbG93aW5nCnN0YXRpYyBjaGVja2Vy
IHdhcm5pbmc6CgoJZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jOjE5
NSBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cygpCgllcnJvcjogd2UgcHJldmlvdXNseSBhc3N1bWVk
ICdvYmonIGNvdWxkIGJlIG51bGwgKHNlZSBsaW5lIDE5NSkKCmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwogICAxODggIHN0YXRpYyB2b2lkIF9faTkxNV9nZW1fZnJl
ZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogICAxODkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBsbGlzdF9ub2RlICpmcmVlZCkKICAg
MTkwICB7CiAgIDE5MSAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCAq
b247CiAgIDE5MiAgICAgICAgICBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKICAgMTkzICAKICAg
MTk0ICAgICAgICAgIHdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldChpOTE1KTsKICAgMTk1
ICAgICAgICAgIGxsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUob2JqLCBvbiwgZnJlZWQsIGZyZWVk
KSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl4KJm9u
LT5mcmVlZCBpcyBhIHBvaW50ZXIgdG8gdGhlIG5leHQgaXRlbSBpbiB0aGUgbGlzdD8KCiAgIDE5
NiAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCAqdm47CiAgIDE5NyAgCiAg
IDE5OCAgICAgICAgICAgICAgICAgIHRyYWNlX2k5MTVfZ2VtX29iamVjdF9kZXN0cm95KG9iaik7
CiAgIDE5OSAgCiAgIDIwMCAgICAgICAgICAgICAgICAgIG11dGV4X2xvY2soJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwogICAyMDEgIAogICAyMDIgICAgICAgICAgICAgICAgICBHRU1fQlVHX09O
KGk5MTVfZ2VtX29iamVjdF9pc19hY3RpdmUob2JqKSk7CiAgIDIwMyAgICAgICAgICAgICAgICAg
IGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh2bWEsIHZuLCAmb2JqLT52bWEubGlzdCwgb2JqX2xp
bmspIHsKICAgMjA0ICAgICAgICAgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKGk5MTVfdm1h
X2lzX2FjdGl2ZSh2bWEpKTsKICAgMjA1ICAgICAgICAgICAgICAgICAgICAgICAgICB2bWEtPmZs
YWdzICY9IH5JOTE1X1ZNQV9QSU5fTUFTSzsKICAgMjA2ICAgICAgICAgICAgICAgICAgICAgICAg
ICBpOTE1X3ZtYV9kZXN0cm95KHZtYSk7CiAgIDIwNyAgICAgICAgICAgICAgICAgIH0KICAgMjA4
ICAgICAgICAgICAgICAgICAgR0VNX0JVR19PTighbGlzdF9lbXB0eSgmb2JqLT52bWEubGlzdCkp
OwogICAyMDkgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKCFSQl9FTVBUWV9ST09UKCZvYmot
PnZtYS50cmVlKSk7CiAgIDIxMCAgCiAgIDIxMSAgICAgICAgICAgICAgICAgIC8qIFRoaXMgc2Vy
aWFsaXplcyBmcmVlaW5nIHdpdGggdGhlIHNocmlua2VyLiBTaW5jZSB0aGUgZnJlZQogICAyMTIg
ICAgICAgICAgICAgICAgICAgKiBpcyBkZWxheWVkLCBmaXJzdCBieSBSQ1UgdGhlbiBieSB0aGUg
d29ya3F1ZXVlLCB3ZSB3YW50IHRoZQogICAyMTMgICAgICAgICAgICAgICAgICAgKiBzaHJpbmtl
ciB0byBiZSBhYmxlIHRvIGZyZWUgcGFnZXMgb2YgdW5yZWZlcmVuY2VkIG9iamVjdHMsCiAgIDIx
NCAgICAgICAgICAgICAgICAgICAqIG9yIGVsc2Ugd2UgbWF5IG9vbSB3aGlsc3QgdGhlcmUgYXJl
IHBsZW50eSBvZiBkZWZlcnJlZAogICAyMTUgICAgICAgICAgICAgICAgICAgKiBmcmVlZCBvYmpl
Y3RzLgogICAyMTYgICAgICAgICAgICAgICAgICAgKi8KICAgMjE3ICAgICAgICAgICAgICAgICAg
aWYgKGk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSkgewogICAyMTggICAgICAgICAgICAg
ICAgICAgICAgICAgIHNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwogICAyMTkgICAgICAg
ICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsX2luaXQoJm9iai0+bW0ubGluayk7CiAgIDIyMCAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsK
ICAgMjIxICAgICAgICAgICAgICAgICAgfQogICAyMjIgIAogICAyMjMgICAgICAgICAgICAgICAg
ICBtdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogICAyMjQgIAogICAyMjUg
ICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKG9iai0+YmluZF9jb3VudCk7CiAgIDIyNiAgICAg
ICAgICAgICAgICAgIEdFTV9CVUdfT04ob2JqLT51c2VyZmF1bHRfY291bnQpOwogICAyMjcgICAg
ICAgICAgICAgICAgICBHRU1fQlVHX09OKGF0b21pY19yZWFkKCZvYmotPmZyb250YnVmZmVyX2Jp
dHMpKTsKICAgMjI4ICAgICAgICAgICAgICAgICAgR0VNX0JVR19PTighbGlzdF9lbXB0eSgmb2Jq
LT5sdXRfbGlzdCkpOwogICAyMjkgIAogICAyMzAgICAgICAgICAgICAgICAgICBpZiAob2JqLT5v
cHMtPnJlbGVhc2UpCiAgIDIzMSAgICAgICAgICAgICAgICAgICAgICAgICAgb2JqLT5vcHMtPnJl
bGVhc2Uob2JqKTsKICAgMjMyICAKICAgMjMzICAgICAgICAgICAgICAgICAgaWYgKFdBUk5fT04o
aTkxNV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSkpCiAgIDIzNCAgICAgICAgICAg
ICAgICAgICAgICAgICAgYXRvbWljX3NldCgmb2JqLT5tbS5wYWdlc19waW5fY291bnQsIDApOwog
ICAyMzUgICAgICAgICAgICAgICAgICBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqLCBJ
OTE1X01NX05PUk1BTCk7CiAgIDIzNiAgICAgICAgICAgICAgICAgIEdFTV9CVUdfT04oaTkxNV9n
ZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKTsKICAgMjM3ICAKICAgMjM4ICAgICAgICAgICAgICAg
ICAgaWYgKG9iai0+YmFzZS5pbXBvcnRfYXR0YWNoKQogICAyMzkgICAgICAgICAgICAgICAgICAg
ICAgICAgIGRybV9wcmltZV9nZW1fZGVzdHJveSgmb2JqLT5iYXNlLCBOVUxMKTsKICAgMjQwICAK
ICAgMjQxICAgICAgICAgICAgICAgICAgcmVzZXJ2YXRpb25fb2JqZWN0X2ZpbmkoJm9iai0+X19i
dWlsdGluX3Jlc3YpOwogICAyNDIgICAgICAgICAgICAgICAgICBkcm1fZ2VtX29iamVjdF9yZWxl
YXNlKCZvYmotPmJhc2UpOwogICAyNDMgICAgICAgICAgICAgICAgICBpOTE1X2dlbV9pbmZvX3Jl
bW92ZV9vYmooaTkxNSwgb2JqLT5iYXNlLnNpemUpOwogICAyNDQgIAogICAyNDUgICAgICAgICAg
ICAgICAgICBiaXRtYXBfZnJlZShvYmotPmJpdF8xNyk7CiAgIDI0NiAgICAgICAgICAgICAgICAg
IGk5MTVfZ2VtX29iamVjdF9mcmVlKG9iaik7CiAgIDI0NyAgCiAgIDI0OCAgICAgICAgICAgICAg
ICAgIEdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZpOTE1LT5tbS5mcmVlX2NvdW50KSk7CiAgIDI0
OSAgICAgICAgICAgICAgICAgIGF0b21pY19kZWMoJmk5MTUtPm1tLmZyZWVfY291bnQpOwogICAy
NTAgIAogICAyNTEgICAgICAgICAgICAgICAgICBpZiAob24pCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeXgpTbyBob3BlZnVsbHkgIm9uIiBjYW4ndCBiZSBOVUxMIGhlcmUgb3Igd2UgYXJl
IHRvYXN0ZWQuCgogICAyNTIgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbmRfcmVzY2hlZCgp
OwogICAyNTMgICAgICAgICAgfQogICAyNTQgICAgICAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQo
aTkxNSwgd2FrZXJlZik7CiAgIDI1NSAgfQoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
