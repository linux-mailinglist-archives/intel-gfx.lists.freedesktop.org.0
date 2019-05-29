Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1132DC38
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 13:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3176E0E0;
	Wed, 29 May 2019 11:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568E36E0E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 11:52:53 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TBT2Sq069303;
 Wed, 29 May 2019 11:52:51 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2spu7dhbdb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 11:52:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TBqpFa131804;
 Wed, 29 May 2019 11:52:51 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2sqh73nmss-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 11:52:51 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4TBqoPr024903;
 Wed, 29 May 2019 11:52:50 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 May 2019 04:52:50 -0700
Date: Wed, 29 May 2019 14:52:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: tvrtko.ursulin@intel.com
Message-ID: <20190529115243.GA22431@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290078
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=BavA5RaPJOjzwZ8diGrBVAHBgqvEjAh1OlPrsluar18=;
 b=KAG7lLmmxolDsut5iPJdIaDZhb2jVh17UGpzwJIKAqJunWV1EzyAZcBO4XL5WO1Neuyo
 IehMtXLnocKoHmHT+UpoFB4loSATDbsgJIfKeUolxk6BQq6upTyZvaLFpecup/CaZZpO
 qiCIPTXaDR5piRslM0Pf5y6ph/XHss/an1kOPFFAUF+YgWwoAas/C96+M9JFXA1ypFQ7
 eSVZbeg9tn/xV88iDlt56VqT0s7n8Nq0G19253I9vvWGbjCqDDqFw+rrFCTHek+8w/hV
 nsYRnjR/lhJGw7179DO+b79sE9piV9c7z1x21U9i+KZDSNEdJ6XvYUpqrfqcPG/yFfoH FA== 
Subject: [Intel-gfx] [bug report] drm/i915: Engine discovery query
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

SGVsbG8gVHZydGtvIFVyc3VsaW4sCgpUaGUgcGF0Y2ggYzVkM2UzOWNhYTQ1OiAiZHJtL2k5MTU6
IEVuZ2luZSBkaXNjb3ZlcnkgcXVlcnkiIGZyb20gTWF5CjIyLCAyMDE5LCBsZWFkcyB0byB0aGUg
Zm9sbG93aW5nIHN0YXRpYyBjaGVja2VyIHdhcm5pbmc6CgoJZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9xdWVyeS5jOjEzNCBxdWVyeV9lbmdpbmVfaW5mbygpCgl3YXJuOiBjYWxsaW5nICdfX2Nv
cHlfdG9fdXNlcigpJyB3aXRob3V0IGFjY2Vzc19vaygpCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3F1ZXJ5LmMKICAgIDk3ICBxdWVyeV9lbmdpbmVfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKICAgIDk4ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVl
cnlfaXRlbSAqcXVlcnlfaXRlbSkKICAgIDk5ICB7CiAgIDEwMCAgICAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcXVlcnlfZW5naW5lX2luZm8gX191c2VyICpxdWVyeV9wdHIgPQogICAxMDEgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdTY0X3RvX3VzZXJfcHRyKHF1ZXJ5X2l0ZW0tPmRh
dGFfcHRyKTsKCnF1ZXJ5X2l0ZW0tPmRhdGFfcHRyIGNvbWVzIGZyb20gdGhlIGlvY3RsIGFuZCBo
YXNuJ3QgYmVlbiBjaGVja2VkLgoKICAgMTAyICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9lbmdp
bmVfaW5mbyBfX3VzZXIgKmluZm9fcHRyOwogICAxMDMgICAgICAgICAgc3RydWN0IGRybV9pOTE1
X3F1ZXJ5X2VuZ2luZV9pbmZvIHF1ZXJ5OwogICAxMDQgICAgICAgICAgc3RydWN0IGRybV9pOTE1
X2VuZ2luZV9pbmZvIGluZm8gPSB7IH07CiAgIDEwNSAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmU7CiAgIDEwNiAgICAgICAgICBlbnVtIGludGVsX2VuZ2luZV9pZCBpZDsK
ICAgMTA3ICAgICAgICAgIGludCBsZW4sIHJldDsKICAgMTA4ICAKICAgMTA5ICAgICAgICAgIGlm
IChxdWVyeV9pdGVtLT5mbGFncykKICAgMTEwICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7CiAgIDExMSAgCiAgIDExMiAgICAgICAgICBsZW4gPSBzaXplb2Yoc3RydWN0IGRybV9pOTE1
X3F1ZXJ5X2VuZ2luZV9pbmZvKSArCiAgIDExMyAgICAgICAgICAgICAgICBSVU5USU1FX0lORk8o
aTkxNSktPm51bV9lbmdpbmVzICoKICAgMTE0ICAgICAgICAgICAgICAgIHNpemVvZihzdHJ1Y3Qg
ZHJtX2k5MTVfZW5naW5lX2luZm8pOwogICAxMTUgIAogICAxMTYgICAgICAgICAgcmV0ID0gY29w
eV9xdWVyeV9pdGVtKCZxdWVyeSwgc2l6ZW9mKHF1ZXJ5KSwgbGVuLCBxdWVyeV9pdGVtKTsKICAg
MTE3ICAgICAgICAgIGlmIChyZXQgIT0gMCkKICAgMTE4ICAgICAgICAgICAgICAgICAgcmV0dXJu
IHJldDsKICAgMTE5ICAKICAgMTIwICAgICAgICAgIGlmIChxdWVyeS5udW1fZW5naW5lcyB8fCBx
dWVyeS5yc3ZkWzBdIHx8IHF1ZXJ5LnJzdmRbMV0gfHwKICAgMTIxICAgICAgICAgICAgICBxdWVy
eS5yc3ZkWzJdKQogICAxMjIgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKICAgMTIz
ICAKICAgMTI0ICAgICAgICAgIGluZm9fcHRyID0gJnF1ZXJ5X3B0ci0+ZW5naW5lc1swXTsKICAg
MTI1ICAKICAgMTI2ICAgICAgICAgIGZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7
CiAgIDEyNyAgICAgICAgICAgICAgICAgIGluZm8uZW5naW5lLmVuZ2luZV9jbGFzcyA9IGVuZ2lu
ZS0+dWFiaV9jbGFzczsKICAgMTI4ICAgICAgICAgICAgICAgICAgaW5mby5lbmdpbmUuZW5naW5l
X2luc3RhbmNlID0gZW5naW5lLT5pbnN0YW5jZTsKICAgMTI5ICAgICAgICAgICAgICAgICAgaW5m
by5jYXBhYmlsaXRpZXMgPSBlbmdpbmUtPnVhYmlfY2FwYWJpbGl0aWVzOwogICAxMzAgIAogICAx
MzEgICAgICAgICAgICAgICAgICBpZiAoX19jb3B5X3RvX3VzZXIoaW5mb19wdHIsICZpbmZvLCBz
aXplb2YoaW5mbykpKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCiAgIDEzMiAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FRkFVTFQ7CiAgIDEzMyAgCiAgIDEzNCAgICAgICAgICAgICAgICAgIHF1
ZXJ5Lm51bV9lbmdpbmVzKys7CiAgIDEzNSAgICAgICAgICAgICAgICAgIGluZm9fcHRyKys7CiAg
IDEzNiAgICAgICAgICB9CiAgIDEzNyAgCiAgIDEzOCAgICAgICAgICBpZiAoX19jb3B5X3RvX3Vz
ZXIocXVlcnlfcHRyLCAmcXVlcnksIHNpemVvZihxdWVyeSkpKQogICAgICAgICAgICAgICAgICAg
IF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXgpJIGRvIHRo
aW5rIHRoYXQgdGhlc2Ugc2hvdWxkIGJlIHJlZ3VsYXIgY29weV90b191c2VyKCkuCgoKICAgMTM5
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7CiAgIDE0MCAgCiAgIDE0MSAgICAgICAg
ICByZXR1cm4gbGVuOwoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
