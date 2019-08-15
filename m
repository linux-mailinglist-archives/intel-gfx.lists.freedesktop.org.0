Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECAE8E7BA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 11:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18206E245;
	Thu, 15 Aug 2019 09:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BE16E245
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 09:04:19 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7F93Wse030464;
 Thu, 15 Aug 2019 09:04:17 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2u9pjqsq0s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 09:04:17 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7F93GW0114703;
 Thu, 15 Aug 2019 09:04:16 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2ucmwjg0f7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 15 Aug 2019 09:04:16 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7F94GAV028794;
 Thu, 15 Aug 2019 09:04:16 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 15 Aug 2019 02:04:15 -0700
Date: Thu, 15 Aug 2019 12:04:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: matthew.auld@intel.com
Message-ID: <20190815090410.GA1319@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9349
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=624
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908150097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9349
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=671 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908150097
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=VnywRt3p/pvPnyRomvmS+wd/g+BCoexiyZGrzKJr+wk=;
 b=UOMsCk8100UMMNy9Y0cqiJhKgrzl6mmK3ntBPR9K0IuZTcYYQx7J0opoeyjq91gvRUqf
 AsTgFyV7Ib9MHF9ImWwzhyEdnx/xSG8K9Lxo6by8mfQeCc3x6Qz/BYCUpChav2FH3oOD
 ZyVdCVK2/tzqdsMBXCS1pKtNWrBpSXZy7UQ0u9IjdivVdXQRJ6zBBkGvZB3nZbRgzynI
 6XLMUTvDc+Op4EAFFOmzRa/mU+kxfXMrYrVSidJfH/wenZlZcq8ThIGuVst9kxdeEKBN
 O/SmbvwMMPgakGyurWLI8BVG97pVEm3CsXqUxu5IPIFgTfpyKIwpwaXSIpJtxEBUiDI0 rA== 
Subject: [Intel-gfx] [bug report] drm/i915: buddy allocator
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

SGVsbG8gTWF0dGhldyBBdWxkLAoKVGhlIHBhdGNoIDE0ZDFiOWE2MjQ3YzogImRybS9pOTE1OiBi
dWRkeSBhbGxvY2F0b3IiIGZyb20gQXVnIDksIDIwMTksCmxlYWRzIHRvIHRoZSBmb2xsb3dpbmcg
c3RhdGljIGNoZWNrZXIgd2FybmluZzoKCglkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aTkxNV9idWRkeS5jOjY3MCBpZ3RfYnVkZHlfYWxsb2NfcmFuZ2UoKQoJZXJyb3I6IHdlIHByZXZp
b3VzbHkgYXNzdW1lZCAnYmxvY2snIGNvdWxkIGJlIG51bGwgKHNlZSBsaW5lIDY2NSkKCmRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2J1ZGR5LmMKICAgNjYwICAgICAgICAgICAg
ICAgICAgfQogICA2NjEgIAogICA2NjIgICAgICAgICAgICAgICAgICBibG9jayA9IGxpc3RfZmly
c3RfZW50cnlfb3JfbnVsbCgmdG1wLAogICA2NjMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9idWRkeV9ibG9jaywKICAgNjY0ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGluayk7CiAg
IDY2NSAgICAgICAgICAgICAgICAgIGlmICghYmxvY2spIHsKICAgNjY2ICAgICAgICAgICAgICAg
ICAgICAgICAgICBwcl9lcnIoImFsbG9jX3JhbmdlIGhhcyBubyBibG9ja3NcbiIpOwogICA2Njcg
ICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1FSU5WQUw7CgpObyBicmVhayBzdGF0ZW1l
bnQ/CgogICA2NjggICAgICAgICAgICAgICAgICB9CiAgIDY2OSAgCiAgIDY3MCAgICAgICAgICAg
ICAgICAgIGlmIChpOTE1X2J1ZGR5X2Jsb2NrX29mZnNldChibG9jaykgIT0gb2Zmc2V0KSB7CiAg
IDY3MSAgICAgICAgICAgICAgICAgICAgICAgICAgcHJfZXJyKCJhbGxvY19yYW5nZSBzdGFydCBv
ZmZzZXQgbWlzbWF0Y2gsIGZvdW5kPSVsbHgsIGV4cGVjdGVkPSVsbHhcbiIsCiAgIDY3MiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfYnVkZHlfYmxvY2tfb2Zmc2V0KGJsb2Nr
KSwgb2Zmc2V0KTsKICAgNjczICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUlOVkFM
OwoKSSBndWVzcyB3ZSBzdGlsbCB3YW50IHRvIHNwbGljZSB0aGlzIGludG8gdGhlIGxpc3QgZXZl
biB0aG91Z2ggaXQncwppbnZhbGlkPwoKICAgNjc0ICAgICAgICAgICAgICAgICAgfQogICA2NzUg
IAogICA2NzYgICAgICAgICAgICAgICAgICBpZiAoIWVycikKICAgNjc3ICAgICAgICAgICAgICAg
ICAgICAgICAgICBlcnIgPSBpZ3RfY2hlY2tfYmxvY2tzKCZtbSwgJnRtcCwgc2l6ZSwgdHJ1ZSk7
CgpTYW1lCgogICA2NzggIAogICA2NzkgICAgICAgICAgICAgICAgICBsaXN0X3NwbGljZV90YWls
KCZ0bXAsICZibG9ja3MpOwogICA2ODAgIAogICA2ODEgICAgICAgICAgICAgICAgICBpZiAoZXJy
KQogICA2ODIgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwogICA2ODMgIAogICA2ODQg
ICAgICAgICAgICAgICAgICBvZmZzZXQgKz0gc2l6ZTsKICAgNjg1ICAKICAgNjg2ICAgICAgICAg
ICAgICAgICAgcmVtIC09IHNpemU7CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
