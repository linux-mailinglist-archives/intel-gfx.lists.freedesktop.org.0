Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 752C7FC062
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 07:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D59A6E0E9;
	Thu, 14 Nov 2019 06:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E94A6E0BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 06:56:55 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAE6rmen096921;
 Thu, 14 Nov 2019 06:56:49 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2w5mvu191u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Nov 2019 06:56:49 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAE6rgEj089353;
 Thu, 14 Nov 2019 06:54:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2w8v356d61-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 Nov 2019 06:54:48 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAE6slax003351;
 Thu, 14 Nov 2019 06:54:48 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 Nov 2019 22:54:43 -0800
Date: Thu, 14 Nov 2019 09:54:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20191114065437.l5twwdf7cqmitlw6@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=550
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911140064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=615 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911140064
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=zxmB9AaSjcXyc/dbyeLv0QY7x5e48HPhwx2wru/jreY=;
 b=h9mpwW8Ug1sy1cjnEbCAk6WVmAq/fCJfeV525jgNprKWnG3U21vR+SsrQ9ODh5VlQn2c
 LoDHQm0hxJuKZ/3Gdz2hbSE+cA6h3OTzNj9UJmCQ6ieZnqZXnA5j/D93gsYi5E3IiXrp
 oFg5v/9emOR0+v+xgIfqcGJbynCLza6gXux7iGZxOrd0CUNODNaPsroH4y78N1aOxpJ0
 UU/QZJPgDUT1XZtQVr9wyJWTb4VVcg/pvsA+L4fCJhgnyUZhqxxu39IfwxKFHeJWa5i+
 xjxNy2umOLSk4glsqBg7hJK8SpZLfmBTUqcCNpa2TmTPd51fWjfnKfy3c4kQrXFgMUS+ ww== 
Subject: [Intel-gfx] [bug report] drm/i915: Initial selftests for exercising
 eviction
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhlIHBhdGNoIGY0MGE3Yjc1NThlZjogImRybS9pOTE1OiBJ
bml0aWFsIHNlbGZ0ZXN0cyBmb3IgZXhlcmNpc2luZwpldmljdGlvbiIgZnJvbSBGZWIgMTMsIDIw
MTcsIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljIGNoZWNrZXIKd2FybmluZzoKCglkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYzoyMDIgaWd0X292ZXJj
b21taXQoKQoJd2FybjogcGFzc2luZyB6ZXJvIHRvICdQVFJfRVJSJwoKZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKICAgMTkwICAgICAgICAgICAgICAgICAg
Z290byBjbGVhbnVwOwogICAxOTEgIAogICAxOTIgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9pbnRlcm5hbChndC0+aTkxNSwgSTkxNV9HVFRfUEFHRV9TSVpFKTsKICAgMTkz
ICAgICAgICAgIGlmIChJU19FUlIob2JqKSkgewogICAxOTQgICAgICAgICAgICAgICAgICBlcnIg
PSBQVFJfRVJSKG9iaik7CiAgIDE5NSAgICAgICAgICAgICAgICAgIGdvdG8gY2xlYW51cDsKICAg
MTk2ICAgICAgICAgIH0KICAgMTk3ICAKICAgMTk4ICAgICAgICAgIHF1aXJrX2FkZChvYmosICZv
YmplY3RzKTsKICAgMTk5ICAKICAgMjAwICAgICAgICAgIHZtYSA9IGk5MTVfZ2VtX29iamVjdF9n
Z3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOwogICAyMDEgICAgICAgICAgaWYgKCFJU19FUlIo
dm1hKSB8fCBQVFJfRVJSKHZtYSkgIT0gLUVOT1NQQykgewogICAgICAgICAgICAgICAgICAgIF5e
Xl5eXl5eXl5eXgpJcyB0aGlzIHJldmVyc2VkPwoKICAgMjAyICAgICAgICAgICAgICAgICAgcHJf
ZXJyKCJGYWlsZWQgdG8gZXZpY3QraW5zZXJ0LCBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4gcmV0
dXJuZWQgZXJyPSVkXG4iLCAoaW50KVBUUl9FUlIodm1hKSk7CiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXl4KCiAgIDIwMyAgICAgICAg
ICAgICAgICAgIGVyciA9IC1FSU5WQUw7CiAgIDIwNCAgICAgICAgICAgICAgICAgIGdvdG8gY2xl
YW51cDsKICAgMjA1ICAgICAgICAgIH0KICAgMjA2ICAKICAgMjA3ICBjbGVhbnVwOgogICAyMDgg
ICAgICAgICAgY2xlYW51cF9vYmplY3RzKGdndHQsICZvYmplY3RzKTsKICAgMjA5ICAgICAgICAg
IHJldHVybiBlcnI7CiAgIDIxMCAgfQoKCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
