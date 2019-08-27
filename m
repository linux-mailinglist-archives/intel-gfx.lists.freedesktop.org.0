Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC189E499
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 11:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FDD899BB;
	Tue, 27 Aug 2019 09:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F78899BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:40:34 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R9dO0q181337;
 Tue, 27 Aug 2019 09:40:30 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2un1xa828s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 09:40:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R9d8Q0119750;
 Tue, 27 Aug 2019 09:40:30 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2umj283ny3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 09:40:29 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7R9eTMQ004699;
 Tue, 27 Aug 2019 09:40:29 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Aug 2019 02:40:28 -0700
Date: Tue, 27 Aug 2019 12:40:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chris@chris-wilson.co.uk
Message-ID: <20190827094016.GC8443@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=967
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908270109
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=7uktud1frUbLZl6kegnp5XGEFG6sugNLYS131ilHwI8=;
 b=RqAlAvaUVSta2ebfcb3K4uR173UbQIKpvJk6hQKigugC0Fk3Jw9NrB0AGlbZlSmqjsij
 klKtwHUBsjVhMopTaEY491NkEtoKMbZ/8DS8FTI7geC8wUNwvzH05GgA3Gy2cLx9a0cO
 Jjdu6uO/vMEwmJndNwqaH0hO2rfahQ94GB1P7ljaysPtdKEsoSxp6is8UjOmyVXkg6X9
 qPVcZkJh8hAVH7leiT05MWb+APOQ0rIvPv2hWXNO8an1mj0MPsfKltRCz6yoQNvn03o6
 nC7qKyaWa+u6aTmAShMOBMV0CkPOdVUWIuK/Zh6qGZ/vCDJpTF8PQgEOaY49pQK/42A8 Kg== 
Subject: [Intel-gfx] [bug report] drm/i915/selftests: Teach
 igt_gpu_fill_dw() to take intel_context
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

SGVsbG8gQ2hyaXMgV2lsc29uLAoKVGhlIHBhdGNoIDc1Yjk3NGE4NTllNTogImRybS9pOTE1L3Nl
bGZ0ZXN0czogVGVhY2ggaWd0X2dwdV9maWxsX2R3KCkKdG8gdGFrZSBpbnRlbF9jb250ZXh0IiBm
cm9tIEF1ZyAyNCwgMjAxOSwgbGVhZHMgdG8gdGhlIGZvbGxvd2luZwpzdGF0aWMgY2hlY2tlciB3
YXJuaW5nOgoKCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29u
dGV4dC5jOjQwMiBpZ3RfY3R4X2V4ZWMoKQoJZXJyb3I6ICdjZScgZGVyZWZlcmVuY2luZyBwb3Nz
aWJsZSBFUlJfUFRSKCkKCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jCiAgIDM4OCAgICAgICAgICAgICAgICAgIGR3ID0gMDsKICAgMzg5ICAgICAg
ICAgICAgICAgICAgd2hpbGUgKCF0aW1lX2FmdGVyKGppZmZpZXMsIGVuZF90aW1lKSkgewogICAz
OTAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7
CiAgIDM5MSAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OwogICAzOTIgIAogICAzOTMgICAgICAgICAgICAgICAgICAgICAgICAgIGN0eCA9IGxpdmVfY29u
dGV4dChpOTE1LCBmaWxlKTsKICAgMzk0ICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoSVNf
RVJSKGN0eCkpIHsKICAgMzk1ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IFBUUl9FUlIoY3R4KTsKICAgMzk2ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdv
dG8gb3V0X3VubG9jazsKICAgMzk3ICAgICAgICAgICAgICAgICAgICAgICAgICB9CiAgIDM5OCAg
CiAgIDM5OSAgICAgICAgICAgICAgICAgICAgICAgICAgY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dl
dF9lbmdpbmUoY3R4LCBlbmdpbmUtPmxlZ2FjeV9pZHgpOwogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eCk5ldyBhc3NpZ25tZW50LiAgU21hdGNoIHRoaW5rcyBpdCBjYW4gYmUgRVJSX1BU
UigtRUlOVkFMKQoKICAgNDAwICAKICAgNDAxICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAo
IW9iaikgewogICA0MDIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2JqID0gY3Jl
YXRlX3Rlc3Rfb2JqZWN0KGNlLT52bSwgZmlsZSwgJm9iamVjdHMpOwogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXgpE
ZXJlZmVyZW5jZS4KCiAgIDQwMyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAo
SVNfRVJSKG9iaikpIHsKICAgNDA0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZXJyID0gUFRSX0VSUihvYmopOwogICA0MDUgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnRlbF9jb250ZXh0X3B1dChjZSk7CiAgIDQwNiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKICAgNDA3ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgNDA4ICAgICAgICAgICAgICAgICAg
ICAgICAgICB9CiAgIDQwOSAgCiAgIDQxMCAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0g
Z3B1X2ZpbGwoY2UsIG9iaiwgZHcpOwogICA0MTEgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
dGVsX2NvbnRleHRfcHV0KGNlKTsKICAgNDEyICAKICAgNDEzICAgICAgICAgICAgICAgICAgICAg
ICAgICBpZiAoZXJyKSB7CiAgIDQxNCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
cl9lcnIoIkZhaWxlZCB0byBmaWxsIGR3b3JkICVsdSBbJWx1LyVsdV0gd2l0aCBncHUgKCVzKSBp
biBjdHggJXUgW2Z1bGwtcHBndHQ/ICVzXSwgZXJyPSVkXG4iLAogICA0MTUgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5kd29yZHMsIGR3LCBtYXhfZHdvcmRzKG9iaiks
CiAgIDQxNiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5u
YW1lLCBjdHgtPmh3X2lkLAogICA0MTcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHllc25vKCEhY3R4LT52bSksIGVycik7CiAgIDQxOCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7CiAgIDQxOSAgICAgICAgICAgICAgICAgICAg
ICAgICAgfQoKU2VlIGFsc286Cgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYzo0MTAgaWd0X2N0eF9leGVjKCkgZXJyb3I6ICdjZScgZGVyZWZlcmVu
Y2luZyBwb3NzaWJsZSBFUlJfUFRSKCkKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9jb250ZXh0LmM6NTI4IGlndF9zaGFyZWRfY3R4X2V4ZWMoKSBlcnJvcjogJ2Nl
JyBkZXJlZmVyZW5jaW5nIHBvc3NpYmxlIEVSUl9QVFIoKQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYzo1MzQgaWd0X3NoYXJlZF9jdHhfZXhlYygp
IGVycm9yOiAnY2UnIGRlcmVmZXJlbmNpbmcgcG9zc2libGUgRVJSX1BUUigpCgpyZWdhcmRzLApk
YW4gY2FycGVudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
