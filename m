Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE572A3E0
	for <lists+intel-gfx@lfdr.de>; Sat, 25 May 2019 12:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B1A89D58;
	Sat, 25 May 2019 10:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4FE89D58
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 May 2019 10:07:24 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4PA55Vb003024;
 Sat, 25 May 2019 10:07:20 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2spxbprms2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 25 May 2019 10:07:20 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4PA5Jvr069958;
 Sat, 25 May 2019 10:05:19 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2spttskr2s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 25 May 2019 10:05:19 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4PA5Ise032333;
 Sat, 25 May 2019 10:05:18 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 25 May 2019 10:05:17 +0000
Date: Sat, 25 May 2019 13:05:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20190525100511.GA26176@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9267
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=707
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905250072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9267
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=739 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905250072
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=7t1ymFz6xU2s79Ln8eEMBJt9k0QlB9pAC1upsPmaIjk=;
 b=5BQ624hCC5H5weMMU5/il00yJqbkp4PYly8kRnpIdxHH/ufJ63zTIJYCilxK48SHz+fB
 ZDclZwlzpeMGvL9nYtPxx1Dzs5cgTWmxNDEBYbrY7/P9M3lgmZPakvm6d/7V81eib1K1
 rl/LpGpMrHdH3zewSThMsAIUf4nORNP2nAbhvksk2Z4mXL8gZHmKy5VyAZLq9iLCO9xJ
 RCkw4to8kJBlDvqYwF/qKVDHczckV6YqY7qriCPhGR4gZU0ULHaPm6fZLUUqonrFkqdr
 O3KNYyRZBObz1WQF58EAAu6A1lydTQ+6iosS6IncNxEqc7uGB7r/ImswOBDYT9tcqPqV 4A== 
Subject: [Intel-gfx] [bug report] drm/i915: Load balancing across a virtual
 engine
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhlIHBhdGNoIDZkMDY3NzllODY3MjogImRybS9pOTE1OiBM
b2FkIGJhbGFuY2luZyBhY3Jvc3MgYSB2aXJ0dWFsCmVuZ2luZSIgZnJvbSBNYXkgMjEsIDIwMTks
IGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljIGNoZWNrZXIKd2FybmluZzoKCglkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzozMzM4IGludGVsX2V4ZWNsaXN0c19jcmVhdGVf
dmlydHVhbCgpCgl3YXJuOiBhc3NpZ25pbmcgKC0yKSB0byB1bnNpZ25lZCB2YXJpYWJsZSAndmUt
PmJhc2UuaW5zdGFuY2UnCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwogIDMz
MTUgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICoKICAzMzE2ICBpbnRlbF9leGVjbGlzdHNfY3JlYXRl
X3ZpcnR1YWwoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKICAzMzE3ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqKnNpYmxpbmdzLAog
IDMzMTggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgY291bnQp
CiAgMzMxOSAgewogIDMzMjAgICAgICAgICAgc3RydWN0IHZpcnR1YWxfZW5naW5lICp2ZTsKICAz
MzIxICAgICAgICAgIHVuc2lnbmVkIGludCBuOwogIDMzMjIgICAgICAgICAgaW50IGVycjsKICAz
MzIzICAKICAzMzI0ICAgICAgICAgIGlmIChjb3VudCA9PSAwKQogIDMzMjUgICAgICAgICAgICAg
ICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKICAzMzI2ICAKICAzMzI3ICAgICAgICAgIGlm
IChjb3VudCA9PSAxKQogIDMzMjggICAgICAgICAgICAgICAgICByZXR1cm4gaW50ZWxfY29udGV4
dF9jcmVhdGUoY3R4LCBzaWJsaW5nc1swXSk7CiAgMzMyOSAgCiAgMzMzMCAgICAgICAgICB2ZSA9
IGt6YWxsb2Moc3RydWN0X3NpemUodmUsIHNpYmxpbmdzLCBjb3VudCksIEdGUF9LRVJORUwpOwog
IDMzMzEgICAgICAgICAgaWYgKCF2ZSkKICAzMzMyICAgICAgICAgICAgICAgICAgcmV0dXJuIEVS
Ul9QVFIoLUVOT01FTSk7CiAgMzMzMyAgCiAgMzMzNCAgICAgICAgICB2ZS0+YmFzZS5pOTE1ID0g
Y3R4LT5pOTE1OwogIDMzMzUgICAgICAgICAgdmUtPmJhc2UuaWQgPSAtMTsKICAzMzM2ICAgICAg
ICAgIHZlLT5iYXNlLmNsYXNzID0gT1RIRVJfQ0xBU1M7CiAgMzMzNyAgICAgICAgICB2ZS0+YmFz
ZS51YWJpX2NsYXNzID0gSTkxNV9FTkdJTkVfQ0xBU1NfSU5WQUxJRDsKICAzMzM4ICAgICAgICAg
IHZlLT5iYXNlLmluc3RhbmNlID0gSTkxNV9FTkdJTkVfQ0xBU1NfSU5WQUxJRF9WSVJUVUFMOwog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl4KdmUtPmJhc2UuaW5zdGFuY2UgaXMgdTggYW5kIEk5MTVfRU5HSU5FX0NMQVNT
X0lOVkFMSURfVklSVFVBTCBpcyAtMi4KCiAgMzMzOSAgICAgICAgICB2ZS0+YmFzZS5mbGFncyA9
IEk5MTVfRU5HSU5FX0lTX1ZJUlRVQUw7CiAgMzM0MCAgCiAgMzM0MSAgICAgICAgICBzbnByaW50
Zih2ZS0+YmFzZS5uYW1lLCBzaXplb2YodmUtPmJhc2UubmFtZSksICJ2aXJ0dWFsIik7CiAgMzM0
MiAgCiAgMzM0MyAgICAgICAgICBlcnIgPSBpOTE1X3RpbWVsaW5lX2luaXQoY3R4LT5pOTE1LCAm
dmUtPmJhc2UudGltZWxpbmUsIE5VTEwpOwogIDMzNDQgICAgICAgICAgaWYgKGVycikKICAzMzQ1
ICAgICAgICAgICAgICAgICAgZ290byBlcnJfcHV0OwoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
