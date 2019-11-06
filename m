Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A4F179B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997996ED58;
	Wed,  6 Nov 2019 13:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331366ED58
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:48:49 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA6Dfunj156059;
 Wed, 6 Nov 2019 13:48:44 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2w117u6dcm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 Nov 2019 13:48:44 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA6Dmewd161490;
 Wed, 6 Nov 2019 13:48:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2w3vr2h0ju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 Nov 2019 13:48:41 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA6DmKWT025253;
 Wed, 6 Nov 2019 13:48:21 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 Nov 2019 05:48:20 -0800
Date: Wed, 6 Nov 2019 16:48:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20191106134814.GA23187@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9432
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=832
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911060136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9432
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=911 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911060135
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=Z9qZEQ3SEVaM8qlQqaY8YPqZX13pBYq9hNVk45pzX0E=;
 b=NlesTYeyoSnFanhEgUk4zT9jXhvl0BR2m6fm7+AXw40vFAoCgAkdzFhZ1o3XQmio5iy2
 skQMDZbOjIfMs4H/8e+sXikL54P3KlHuBILWlzrvRCR78nyBSs8CF6XJlpTwBtAcxHE3
 gDCCKBlgS7YkoUaBwQczZh+hF5dx5xsdEit5643B1sEANJ/gz8Gyyz3Z3j0aKN6lCHTm
 j5CG/ZREjWgX5xunWECbtpQD/zNXuWFSyMYMRLm8/Yc1rkt/x/rOtCdDx+hW0ZEiUVg/
 QjmV4cUdWHg/cQuc7fnbHkDBX9VdefCnhbvjMs7cXoS5CdCCnLRLd8adsqUIghdOQdcp 7w== 
Subject: [Intel-gfx] [bug report] drm/i915: Move context management under GEM
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhlIHBhdGNoIGE0ZTdjY2RhYzM4ZTogImRybS9pOTE1OiBN
b3ZlIGNvbnRleHQgbWFuYWdlbWVudCB1bmRlciBHRU0iCmZyb20gT2N0IDQsIDIwMTksIGxlYWRz
IHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljIGNoZWNrZXIgd2FybmluZzoKCglkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjk4MCBzZXRfcHBndHQoKQoJd2FybjogJ2N0
eC0+bXV0ZXgnIGJvdGggbG9ja2VkIGFuZCB1bmxvY2tlZC4KCmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKICAgOTQwICAgICAgICAgIHJjdV9yZWFkX3VubG9jaygp
OwogICA5NDEgICAgICAgICAgaWYgKCF2bSkKICAgOTQyICAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FTk9FTlQ7CiAgIDk0MyAgCiAgIDk0NCAgICAgICAgICBlcnIgPSBtdXRleF9sb2NrX2ludGVy
cnVwdGlibGUoJmN0eC0+bXV0ZXgpOwogICA5NDUgICAgICAgICAgaWYgKGVycikKICAgOTQ2ICAg
ICAgICAgICAgICAgICAgZ290byBvdXQ7CiAgIDk0NyAgCiAgIDk0OCAgICAgICAgICBpZiAoaTkx
NV9nZW1fY29udGV4dF9pc19jbG9zZWQoY3R4KSkgewogICA5NDkgICAgICAgICAgICAgICAgICBl
cnIgPSAtRU5PRU5UOwogICA5NTAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKICAgICAgICAg
ICAgICAgICAgICAgICAgXl5eXl5eXl4KVGhpcyBzaG91bGQgYmUgZ290byB1bmxvY2s/CgogICA5
NTEgICAgICAgICAgfQogICA5NTIgIAogICA5NTMgICAgICAgICAgaWYgKHZtID09IHJjdV9hY2Nl
c3NfcG9pbnRlcihjdHgtPnZtKSkKICAgOTU0ICAgICAgICAgICAgICAgICAgZ290byB1bmxvY2s7
CiAgIDk1NSAgCiAgIDk1NiAgICAgICAgICAvKiBUZWFyZG93biB0aGUgZXhpc3Rpbmcgb2JqOnZt
YSBjYWNoZSwgaXQgd2lsbCBoYXZlIHRvIGJlIHJlYnVpbHQuICovCiAgIDk1NyAgICAgICAgICBs
dXRfY2xvc2UoY3R4KTsKICAgOTU4ICAKICAgOTU5ICAgICAgICAgIG9sZCA9IF9fc2V0X3BwZ3R0
KGN0eCwgdm0pOwogICA5NjAgIAogICA5NjEgICAgICAgICAgLyoKICAgOTYyICAgICAgICAgICAq
IFdlIG5lZWQgdG8gZmx1c2ggYW55IHJlcXVlc3RzIHVzaW5nIHRoZSBjdXJyZW50IHBwZ3R0IGJl
Zm9yZQogICA5NjMgICAgICAgICAgICogd2UgcmVsZWFzZSBpdCBhcyB0aGUgcmVxdWVzdHMgZG8g
bm90IGhvbGQgYSByZWZlcmVuY2UgdGhlbXNlbHZlcywKICAgOTY0ICAgICAgICAgICAqIG9ubHkg
aW5kaXJlY3RseSB0aHJvdWdoIHRoZSBjb250ZXh0LgogICA5NjUgICAgICAgICAgICovCiAgIDk2
NiAgICAgICAgICBlcnIgPSBjb250ZXh0X2JhcnJpZXJfdGFzayhjdHgsIEFMTF9FTkdJTkVTLAog
ICA5NjcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2tpcF9wcGd0dF91cGRh
dGUsCiAgIDk2OCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbWl0X3BwZ3R0
X3VwZGF0ZSwKICAgOTY5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNldF9w
cGd0dF9iYXJyaWVyLAogICA5NzAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
b2xkKTsKICAgOTcxICAgICAgICAgIGlmIChlcnIpIHsKICAgOTcyICAgICAgICAgICAgICAgICAg
aTkxNV92bV9jbG9zZShfX3NldF9wcGd0dChjdHgsIG9sZCkpOwogICA5NzMgICAgICAgICAgICAg
ICAgICBpOTE1X3ZtX2Nsb3NlKG9sZCk7CiAgIDk3NCAgICAgICAgICB9CiAgIDk3NSAgCiAgIDk3
NiAgdW5sb2NrOgogICA5NzcgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZjdHgtPm11dGV4KTsKICAg
OTc4ICBvdXQ6CiAgIDk3OSAgICAgICAgICBpOTE1X3ZtX3B1dCh2bSk7CiAgIDk4MCAgICAgICAg
ICByZXR1cm4gZXJyOwogICA5ODEgIH0KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
