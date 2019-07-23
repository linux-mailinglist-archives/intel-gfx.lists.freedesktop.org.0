Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC4571AF9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B92891AA;
	Tue, 23 Jul 2019 15:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBEC3891AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 15:00:43 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6NExE8n094809;
 Tue, 23 Jul 2019 15:00:42 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2tuukqrmxf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 15:00:41 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6NEvs82113381;
 Tue, 23 Jul 2019 15:00:41 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2tuts3xx81-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 15:00:41 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6NF0dOO002204;
 Tue, 23 Jul 2019 15:00:39 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 23 Jul 2019 08:00:39 -0700
Date: Tue, 23 Jul 2019 18:00:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: daniele.ceraolospurio@intel.com
Message-ID: <20190723150031.GA16689@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9326
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=758
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907230150
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9326
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=804 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907230150
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=Q8m4EYpI4bhqunlwUVsqXCn5TxJQiCh2a/GoTVaHNkI=;
 b=naxamkm3VTMgVNT7bAZ5JIJTRicWnMNGrTsCXo07pkBeTTGxEmj8kZmIR84NLNZzDLMn
 j8lGDHkIzB+ri+zZPstvNjesN2YazBQ/BLUE+qFQG9IJU559ZgG1KunE4k5608HL4ind
 AQY8FeNTH70Xknrm9VCTTiFZJrU5Qmw+/b8XePrvajIqYvSrzjPi1H13hKbf5eOL4A9g
 AYQKrLoE8rDVs3XlCgxmuhJZXX7SXO0ss8VxZtHXWjixCzmlE0UtouKTEJ5oCILgRWNw
 NhjnmuNIYEa8xCL0dK12V4Vf3/YSUVJmmR5ThlC6ZZOuw1qUyeKi+8aj+6YztFfHPG6/ NA== 
Subject: [Intel-gfx] [bug report] drm/i915/uc: prefer intel_gt over i915 in
 GuC/HuC paths
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

SGVsbG8gRGFuaWVsZSBDZXJhb2xvIFNwdXJpbywKClRoZSBwYXRjaCA4NGIxY2EyZjBlNjg6ICJk
cm0vaTkxNS91YzogcHJlZmVyIGludGVsX2d0IG92ZXIgaTkxNSBpbgpHdUMvSHVDIHBhdGhzIiBm
cm9tIEp1bCAxMywgMjAxOSwgbGVhZHMgdG8gdGhlIGZvbGxvd2luZyBzdGF0aWMKY2hlY2tlciB3
YXJuaW5nOgoKCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jOjE3MyBpbnRl
bF9odWNfY2hlY2tfc3RhdHVzKCkKCXdhcm46IG1hc2tpbmcgYSBib29sCgpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwogICAxNjEgIGludCBpbnRlbF9odWNfY2hlY2tfc3Rh
dHVzKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKICAgMTYyICB7CiAgIDE2MyAgICAgICAgICBzdHJ1
Y3QgaW50ZWxfZ3QgKmd0ID0gaHVjX3RvX2d0KGh1Yyk7CiAgIDE2NCAgICAgICAgICBpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKICAgMTY1ICAgICAgICAgIGJvb2wgc3RhdHVzID0gZmFsc2U7CiAg
ICAgICAgICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXl5eCiAgIDE2NiAgCiAgIDE2NyAgICAgICAg
ICBpZiAoIWludGVsX3VjX2lzX3VzaW5nX2h1YygmZ3QtPnVjKSkKICAgMTY4ICAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9ERVY7CiAgIDE2OSAgCiAgIDE3MCAgICAgICAgICB3aXRoX2ludGVs
X3J1bnRpbWVfcG0oJmd0LT5pOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKQogICAxNzEgICAgICAg
ICAgICAgICAgICBzdGF0dXMgPSBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBodWMtPnN0
YXR1cy5yZWcpOwogICAxNzIgIAogICAxNzMgICAgICAgICAgcmV0dXJuIChzdGF0dXMgJiBodWMt
PnN0YXR1cy5tYXNrKSA9PSBodWMtPnN0YXR1cy52YWx1ZTsKICAgICAgICAgICAgICAgICAgICAg
ICAgXl5eXl5eCgpJdCBkZWZpbml0ZWx5IGxvb2tzIGxpa2Ugc3RhdHVzIHNob3VsZCBiZSBhIHUz
MiBvciBzb21ldGhpbmcuCgogICAxNzQgIH0KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
