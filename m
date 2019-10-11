Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F7D3EAA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 13:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A26B6EC1D;
	Fri, 11 Oct 2019 11:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038786EC1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 11:42:21 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BBdLwp057896;
 Fri, 11 Oct 2019 11:42:18 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4r131u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 11:42:18 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BBcdu0075235;
 Fri, 11 Oct 2019 11:42:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vjryc09y6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 11:42:17 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BBgFH9026782;
 Fri, 11 Oct 2019 11:42:16 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 04:42:15 -0700
Date: Fri, 11 Oct 2019 14:42:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20191011114209.GA29460@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=790
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=866 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=btu04xEpYnFTQkRCGoL+xQT1/pym7lNCSTQ98oaAlRM=;
 b=UUAN+QXhOaOVDKJ7sCCX78/mXnOZZFxpAwS1i169ZvIFDgGws8jQ4M3/dVN36I+BY3oR
 ApeAaXAVSza7zF1apAcjDetVLgcA8o9zrYgaaGDWFjCgQBffbmqod6Qm8Jfuzh8/kVW3
 usPIsdYwK8nDDNEL98rrMg8S+nS5ompIOzVJcjNi5EnTvqpE5rrMFaUlwzZy7W2zjeKY
 szeqEVD0jcktrYZJnxLegzZKIUPs4lwq4HaFpk01DGHBsLsW6BYbvp15VTzcn31LL1Lu
 Xq+owpgKtdocT+YqekIsNj8CBztjc0K2gCwRJYOw4jKka2uAW/o3Mm5AFtSzAS0b42au 8A== 
Subject: [Intel-gfx] [bug report] drm/i915/selftests: Exercise context
 switching in parallel
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhpcyBpcyBhIHNlbWktYXV0b21hdGljIGVtYWlsIGFib3V0
IG5ldyBzdGF0aWMgY2hlY2tlciB3YXJuaW5ncy4KClRoZSBwYXRjaCA1MGQxNmQ0NGNjZTQ6ICJk
cm0vaTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIGNvbnRleHQgCnN3aXRjaGluZyBpbiBwYXJhbGxl
bCIgZnJvbSBTZXAgMzAsIDIwMTksIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgClNtYXRjaCBjb21w
bGFpbnQ6CgogICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmM6MzQ5IGxpdmVfcGFyYWxsZWxfc3dpdGNoKCkKICAgIGVycm9yOiB3ZSBwcmV2aW91
c2x5IGFzc3VtZWQgJ2RhdGEnIGNvdWxkIGJlIG51bGwgKHNlZSBsaW5lIDI2MykKCmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCiAgIDI1NyAgICAg
ICAgICB9CiAgIDI1OCAgCiAgIDI1OSAgICAgICAgICBlbmdpbmVzID0gaTkxNV9nZW1fY29udGV4
dF9sb2NrX2VuZ2luZXMoY3R4KTsKICAgMjYwICAgICAgICAgIGNvdW50ID0gZW5naW5lcy0+bnVt
X2VuZ2luZXM7CiAgIDI2MSAgCiAgIDI2MgkJZGF0YSA9IGtjYWxsb2MoY291bnQsIHNpemVvZigq
ZGF0YSksIEdGUF9LRVJORUwpOwogICAyNjMJCWlmICghZGF0YSkgewogICAyNjQJCQlpOTE1X2dl
bV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CiAgIDI2NQkJCWVyciA9IC1FTk9NRU07CiAg
IDI2NgkJCWdvdG8gb3V0OwogICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eXgpnb3RvIG91
dCBpcyBhbHdheXMgYSBzaWduIG9mIHRyb3VibGVkIHRpbWVzIGFoZWFkLi4uCgogICAyNjcJCX0K
ICAgMjY4CQogICAyNjkJCW0gPSAwOyAvKiBVc2UgdGhlIGZpcnN0IGNvbnRleHQgYXMgb3VyIHRl
bXBsYXRlIGZvciB0aGUgZW5naW5lcyAqLwogICAyNzAJCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2Us
IGVuZ2luZXMsIGl0KSB7CiAgIDI3MQkJCWVyciA9IGludGVsX2NvbnRleHRfcGluKGNlKTsKICAg
MjcyCQkJaWYgKGVycikgewogICAyNzMJCQkJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5l
cyhjdHgpOwogICAyNzQJCQkJZ290byBvdXQ7CiAgIDI3NQkJCX0KICAgMjc2CQkJZGF0YVttKytd
LmNlWzBdID0gaW50ZWxfY29udGV4dF9nZXQoY2UpOwogICAyNzcJCX0KICAgMjc4CQlpOTE1X2dl
bV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CiAgIDI3OQkKICAgMjgwCQkvKiBDbG9uZSB0
aGUgc2FtZSBzZXQgb2YgZW5naW5lcyBpbnRvIHRoZSBvdGhlciBjb250ZXh0cyAqLwogICAyODEJ
CWZvciAobiA9IDE7IG4gPCBBUlJBWV9TSVpFKGRhdGEtPmNlKTsgbisrKSB7CiAgIDI4MgkJCWN0
eCA9IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsKICAgMjgzCQkJaWYgKElTX0VSUihjdHgpKSB7
CiAgIDI4NAkJCQllcnIgPSBQVFJfRVJSKGN0eCk7CiAgIDI4NQkJCQlnb3RvIG91dDsKICAgMjg2
CQkJfQogICAyODcJCiAgIDI4OAkJCWZvciAobSA9IDA7IG0gPCBjb3VudDsgbSsrKSB7CiAgIDI4
OQkJCQlpZiAoIWRhdGFbbV0uY2VbMF0pCiAgIDI5MAkJCQkJY29udGludWU7CiAgIDI5MQkKICAg
MjkyCQkJCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoY3R4LCBkYXRhW21dLmNlWzBdLT5lbmdp
bmUpOwogICAyOTMJCQkJaWYgKElTX0VSUihjZSkpCiAgIDI5NAkJCQkJZ290byBvdXQ7CiAgIDI5
NQkKICAgMjk2CQkJCWVyciA9IGludGVsX2NvbnRleHRfcGluKGNlKTsKICAgMjk3CQkJCWlmIChl
cnIpIHsKICAgMjk4CQkJCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7CiAgIDI5OQkJCQkJZ290byBv
dXQ7CiAgIDMwMAkJCQl9CiAgIDMwMQkKICAgMzAyCQkJCWRhdGFbbV0uY2Vbbl0gPSBjZTsKICAg
MzAzCQkJfQogICAzMDQJCX0KICAgMzA1CQogICAzMDYJCWZvciAoZm4gPSBmdW5jOyAhZXJyICYm
ICpmbjsgZm4rKykgewogICAzMDcJCQlzdHJ1Y3QgaWd0X2xpdmVfdGVzdCB0OwogICAzMDgJCQlp
bnQgbjsKICAgMzA5CQogICAzMTAJCQllcnIgPSBpZ3RfbGl2ZV90ZXN0X2JlZ2luKCZ0LCBpOTE1
LCBfX2Z1bmNfXywgIiIpOwogICAzMTEJCQlpZiAoZXJyKQogICAzMTIJCQkJYnJlYWs7CiAgIDMx
MwkKICAgMzE0CQkJZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKyspIHsKICAgMzE1CQkJCWlmICgh
ZGF0YVtuXS5jZVswXSkKICAgMzE2CQkJCQljb250aW51ZTsKICAgMzE3CQogICAzMTgJCQkJZGF0
YVtuXS50c2sgPSBrdGhyZWFkX3J1bigqZm4sICZkYXRhW25dLAogICAzMTkJCQkJCQkJICAiaWd0
L3BhcmFsbGVsOiVzIiwKICAgMzIwCQkJCQkJCSAgZGF0YVtuXS5jZVswXS0+ZW5naW5lLT5uYW1l
KTsKICAgMzIxCQkJCWlmIChJU19FUlIoZGF0YVtuXS50c2spKSB7CiAgIDMyMgkJCQkJZXJyID0g
UFRSX0VSUihkYXRhW25dLnRzayk7CiAgIDMyMwkJCQkJYnJlYWs7CiAgIDMyNAkJCQl9CiAgIDMy
NQkJCQlnZXRfdGFza19zdHJ1Y3QoZGF0YVtuXS50c2spOwogICAzMjYJCQl9CiAgIDMyNwkKICAg
MzI4CQkJZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKyspIHsKICAgMzI5CQkJCWludCBzdGF0dXM7
CiAgIDMzMAkKICAgMzMxCQkJCWlmIChJU19FUlJfT1JfTlVMTChkYXRhW25dLnRzaykpCiAgIDMz
MgkJCQkJY29udGludWU7CiAgIDMzMwkKICAgMzM0CQkJCXN0YXR1cyA9IGt0aHJlYWRfc3RvcChk
YXRhW25dLnRzayk7CiAgIDMzNQkJCQlpZiAoc3RhdHVzICYmICFlcnIpCiAgIDMzNgkJCQkJZXJy
ID0gc3RhdHVzOwogICAzMzcJCiAgIDMzOAkJCQlwdXRfdGFza19zdHJ1Y3QoZGF0YVtuXS50c2sp
OwogICAzMzkJCQkJZGF0YVtuXS50c2sgPSBOVUxMOwogICAzNDAJCQl9CiAgIDM0MQkKICAgMzQy
CQkJaWYgKGlndF9saXZlX3Rlc3RfZW5kKCZ0KSkKICAgMzQzCQkJCWVyciA9IC1FSU87CiAgIDM0
NAkJfQogICAzNDUJCiAgIDM0NglvdXQ6CiAgIDM0NwkJZm9yIChuID0gMDsgbiA8IGNvdW50OyBu
KyspIHsKICAgMzQ4CQkJZm9yIChtID0gMDsgbSA8IEFSUkFZX1NJWkUoZGF0YS0+Y2UpOyBtKysp
IHsKICAgMzQ5CQkJCWlmICghZGF0YVtuXS5jZVttXSkKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXl5eXl5eXl4KVG9hc3RlZC4KCiAgIDM1MAkJCQkJY29udGludWU7CiAgIDM1
MQkKCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
