Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 188D55503C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE706E10D;
	Tue, 25 Jun 2019 13:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E7089819
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 03:19:34 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5P38xYO040432
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 23:19:33 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tb7x0q9h4-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 23:19:33 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <intel-gfx@lists.freedesktop.org> from <alastair@au1.ibm.com>;
 Tue, 25 Jun 2019 04:19:31 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 25 Jun 2019 04:19:22 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5P3JLoF36634626
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 03:19:21 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 67478AE056;
 Tue, 25 Jun 2019 03:19:21 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7663EAE055;
 Tue, 25 Jun 2019 03:19:20 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 25 Jun 2019 03:19:20 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 3038AA0283;
 Tue, 25 Jun 2019 13:19:19 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Date: Tue, 25 Jun 2019 13:17:21 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625031726.12173-1-alastair@au1.ibm.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19062503-0008-0000-0000-000002F6B5BE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062503-0009-0000-0000-00002263E425
Message-Id: <20190625031726.12173-3-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-25_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906250024
X-Mailman-Approved-At: Tue, 25 Jun 2019 13:24:41 +0000
Subject: [Intel-gfx] [PATCH v4 2/7] lib/hexdump.c: Relax rowsize checks in
 hex_dump_to_buffer
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, netdev@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQWxhc3RhaXIgRCdTaWx2YSA8YWxhc3RhaXJAZC1zaWx2YS5vcmc+CgpUaGlzIHBhdGNo
IHJlbW92ZXMgdGhlIGhhcmRjb2RlZCByb3cgbGltaXRzIGFuZCBhbGxvd3MgZm9yCm90aGVyIGxl
bmd0aHMuIFRoZXNlIGxlbmd0aHMgbXVzdCBzdGlsbCBiZSBhIG11bHRpcGxlIG9mCmdyb3Vwc2l6
ZS4KClRoaXMgYWxsb3dzIHN0cnVjdHMgdGhhdCBhcmUgbm90IDE2LzMyIGJ5dGVzIHRvIGRpc3Bs
YXkgb24KYSBzaW5nbGUgbGluZS4KClRoaXMgcGF0Y2ggYWxzbyBleHBhbmRzIHRoZSBzZWxmLXRl
c3RzIHRvIHRlc3Qgcm93IHNpemVzCnVwIHRvIDY0IGJ5dGVzICh0aG91Z2ggdGhleSBjYW4gbm93
IGJlIGFyYml0cmFyaWx5IGxvbmcpLgoKU2lnbmVkLW9mZi1ieTogQWxhc3RhaXIgRCdTaWx2YSA8
YWxhc3RhaXJAZC1zaWx2YS5vcmc+Ci0tLQogbGliL2hleGR1bXAuYyAgICAgIHwgNDkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogbGliL3Rlc3RfaGV4ZHVtcC5j
IHwgNTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQogMiBm
aWxlcyBjaGFuZ2VkLCA3NiBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9saWIvaGV4ZHVtcC5jIGIvbGliL2hleGR1bXAuYwppbmRleCA4MWI3MGVkMzcyMDkuLjg3
MGM4Y2JmZjFlMSAxMDA2NDQKLS0tIGEvbGliL2hleGR1bXAuYworKysgYi9saWIvaGV4ZHVtcC5j
CkBAIC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KICNpbmNsdWRlIDxs
aW51eC9rZXJuZWwuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KKyNpbmNsdWRlIDxsaW51
eC9zbGFiLmg+CiAjaW5jbHVkZSA8YXNtL3VuYWxpZ25lZC5oPgogCiBjb25zdCBjaGFyIGhleF9h
c2NbXSA9ICIwMTIzNDU2Nzg5YWJjZGVmIjsKQEAgLTgwLDE0ICs4MSwxNSBAQCBFWFBPUlRfU1lN
Qk9MKGJpbjJoZXgpOwogICogaGV4X2R1bXBfdG9fYnVmZmVyIC0gY29udmVydCBhIGJsb2Igb2Yg
ZGF0YSB0byAiaGV4IEFTQ0lJIiBpbiBtZW1vcnkKICAqIEBidWY6IGRhdGEgYmxvYiB0byBkdW1w
CiAgKiBAbGVuOiBudW1iZXIgb2YgYnl0ZXMgaW4gdGhlIEBidWYKLSAqIEByb3dzaXplOiBudW1i
ZXIgb2YgYnl0ZXMgdG8gcHJpbnQgcGVyIGxpbmU7IG11c3QgYmUgMTYgb3IgMzIKKyAqIEByb3dz
aXplOiBudW1iZXIgb2YgYnl0ZXMgdG8gcHJpbnQgcGVyIGxpbmU7IG11c3QgYmUgYSBtdWx0aXBs
ZSBvZiBncm91cHNpemUKICAqIEBncm91cHNpemU6IG51bWJlciBvZiBieXRlcyB0byBwcmludCBh
dCBhIHRpbWUgKDEsIDIsIDQsIDg7IGRlZmF1bHQgPSAxKQogICogQGxpbmVidWY6IHdoZXJlIHRv
IHB1dCB0aGUgY29udmVydGVkIGRhdGEKICAqIEBsaW5lYnVmbGVuOiB0b3RhbCBzaXplIG9mIEBs
aW5lYnVmLCBpbmNsdWRpbmcgc3BhY2UgZm9yIHRlcm1pbmF0aW5nIE5VTAogICogQGFzY2lpOiBp
bmNsdWRlIEFTQ0lJIGFmdGVyIHRoZSBoZXggb3V0cHV0CiAgKgotICogaGV4X2R1bXBfdG9fYnVm
ZmVyKCkgd29ya3Mgb24gb25lICJsaW5lIiBvZiBvdXRwdXQgYXQgYSB0aW1lLCBpLmUuLAotICog
MTYgb3IgMzIgYnl0ZXMgb2YgaW5wdXQgZGF0YSBjb252ZXJ0ZWQgdG8gaGV4ICsgQVNDSUkgb3V0
cHV0LgorICogaGV4X2R1bXBfdG9fYnVmZmVyKCkgd29ya3Mgb24gb25lICJsaW5lIiBvZiBvdXRw
dXQgYXQgYSB0aW1lLCBjb252ZXJ0aW5nCisgKiA8Z3JvdXBzaXplPiBieXRlcyBvZiBpbnB1dCB0
byBoZXhhZGVjaW1hbCAoYW5kIG9wdGlvbmFsbHkgcHJpbnRhYmxlIEFTQ0lJKQorICogdW50aWwg
PHJvd3NpemU+IGJ5dGVzIGhhdmUgYmVlbiBlbWl0dGVkLgogICoKICAqIEdpdmVuIGEgYnVmZmVy
IG9mIHU4IGRhdGEsIGhleF9kdW1wX3RvX2J1ZmZlcigpIGNvbnZlcnRzIHRoZSBpbnB1dCBkYXRh
CiAgKiB0byBhIGhleCArIEFTQ0lJIGR1bXAgYXQgdGhlIHN1cHBsaWVkIG1lbW9yeSBsb2NhdGlv
bi4KQEAgLTExNiwxNiArMTE4LDE3IEBAIGludCBoZXhfZHVtcF90b19idWZmZXIoY29uc3Qgdm9p
ZCAqYnVmLCBzaXplX3QgbGVuLCBpbnQgcm93c2l6ZSwgaW50IGdyb3Vwc2l6ZSwKIAlpbnQgYXNj
aWlfY29sdW1uOwogCWludCByZXQ7CiAKLQlpZiAocm93c2l6ZSAhPSAxNiAmJiByb3dzaXplICE9
IDMyKQotCQlyb3dzaXplID0gMTY7Ci0KLQlpZiAobGVuID4gcm93c2l6ZSkJCS8qIGxpbWl0IHRv
IG9uZSBsaW5lIGF0IGEgdGltZSAqLwotCQlsZW4gPSByb3dzaXplOwogCWlmICghaXNfcG93ZXJf
b2ZfMihncm91cHNpemUpIHx8IGdyb3Vwc2l6ZSA+IDgpCiAJCWdyb3Vwc2l6ZSA9IDE7CiAJaWYg
KChsZW4gJSBncm91cHNpemUpICE9IDApCS8qIG5vIG1peGVkIHNpemUgb3V0cHV0ICovCiAJCWdy
b3Vwc2l6ZSA9IDE7CiAKKwlpZiAocm93c2l6ZSAlIGdyb3Vwc2l6ZSkKKwkJcm93c2l6ZSAtPSBy
b3dzaXplICUgZ3JvdXBzaXplOworCisJaWYgKGxlbiA+IHJvd3NpemUpCQkvKiBsaW1pdCB0byBv
bmUgbGluZSBhdCBhIHRpbWUgKi8KKwkJbGVuID0gcm93c2l6ZTsKKwogCW5ncm91cHMgPSBsZW4g
LyBncm91cHNpemU7CiAJYXNjaWlfY29sdW1uID0gcm93c2l6ZSAqIDIgKyByb3dzaXplIC8gZ3Jv
dXBzaXplICsgMTsKIApAQCAtMjE2LDcgKzIxOSw3IEBAIEVYUE9SVF9TWU1CT0woaGV4X2R1bXBf
dG9fYnVmZmVyKTsKICAqICBjYWxsZXIgc3VwcGxpZXMgdHJhaWxpbmcgc3BhY2VzIGZvciBhbGln
bm1lbnQgaWYgZGVzaXJlZAogICogQHByZWZpeF90eXBlOiBjb250cm9scyB3aGV0aGVyIHByZWZp
eCBvZiBhbiBvZmZzZXQsIGFkZHJlc3MsIG9yIG5vbmUKICAqICBpcyBwcmludGVkICglRFVNUF9Q
UkVGSVhfT0ZGU0VULCAlRFVNUF9QUkVGSVhfQUREUkVTUywgJURVTVBfUFJFRklYX05PTkUpCi0g
KiBAcm93c2l6ZTogbnVtYmVyIG9mIGJ5dGVzIHRvIHByaW50IHBlciBsaW5lOyBtdXN0IGJlIDE2
IG9yIDMyCisgKiBAcm93c2l6ZTogbnVtYmVyIG9mIGJ5dGVzIHRvIHByaW50IHBlciBsaW5lOyBt
dXN0IGJlIGEgbXVsdGlwbGUgb2YgZ3JvdXBzaXplCiAgKiBAZ3JvdXBzaXplOiBudW1iZXIgb2Yg
Ynl0ZXMgdG8gcHJpbnQgYXQgYSB0aW1lICgxLCAyLCA0LCA4OyBkZWZhdWx0ID0gMSkKICAqIEBi
dWY6IGRhdGEgYmxvYiB0byBkdW1wCiAgKiBAbGVuOiBudW1iZXIgb2YgYnl0ZXMgaW4gdGhlIEBi
dWYKQEAgLTIyNiwxMCArMjI5LDkgQEAgRVhQT1JUX1NZTUJPTChoZXhfZHVtcF90b19idWZmZXIp
OwogICogdG8gdGhlIGtlcm5lbCBsb2cgYXQgdGhlIHNwZWNpZmllZCBrZXJuZWwgbG9nIGxldmVs
LCB3aXRoIGFuIG9wdGlvbmFsCiAgKiBsZWFkaW5nIHByZWZpeC4KICAqCi0gKiBwcmludF9oZXhf
ZHVtcCgpIHdvcmtzIG9uIG9uZSAibGluZSIgb2Ygb3V0cHV0IGF0IGEgdGltZSwgaS5lLiwKLSAq
IDE2IG9yIDMyIGJ5dGVzIG9mIGlucHV0IGRhdGEgY29udmVydGVkIHRvIGhleCArIEFTQ0lJIG91
dHB1dC4KICAqIHByaW50X2hleF9kdW1wKCkgaXRlcmF0ZXMgb3ZlciB0aGUgZW50aXJlIGlucHV0
IEBidWYsIGJyZWFraW5nIGl0IGludG8KLSAqICJsaW5lIHNpemUiIGNodW5rcyB0byBmb3JtYXQg
YW5kIHByaW50LgorICogbGluZXMgb2Ygcm93c2l6ZS9ncm91cHNpemUgZ3JvdXBzIG9mIGlucHV0
IGRhdGEgY29udmVydGVkIHRvIGhleCArCisgKiAob3B0aW9uYWxseSkgQVNDSUkgb3V0cHV0Lgog
ICoKICAqIEUuZy46CiAgKiAgIHByaW50X2hleF9kdW1wKEtFUk5fREVCVUcsICJyYXcgZGF0YTog
IiwgRFVNUF9QUkVGSVhfQUREUkVTUywKQEAgLTI0NiwxNyArMjQ4LDMwIEBAIHZvaWQgcHJpbnRf
aGV4X2R1bXAoY29uc3QgY2hhciAqbGV2ZWwsIGNvbnN0IGNoYXIgKnByZWZpeF9zdHIsIGludCBw
cmVmaXhfdHlwZSwKIHsKIAljb25zdCB1OCAqcHRyID0gYnVmOwogCWludCBpLCBsaW5lbGVuLCBy
ZW1haW5pbmcgPSBsZW47Ci0JdW5zaWduZWQgY2hhciBsaW5lYnVmWzMyICogMyArIDIgKyAzMiAr
IDFdOworCXVuc2lnbmVkIGNoYXIgKmxpbmVidWY7CisJdW5zaWduZWQgaW50IGxpbmVidWZfbGVu
OwogCi0JaWYgKHJvd3NpemUgIT0gMTYgJiYgcm93c2l6ZSAhPSAzMikKLQkJcm93c2l6ZSA9IDE2
OworCWlmIChyb3dzaXplICUgZ3JvdXBzaXplKQorCQlyb3dzaXplIC09IHJvd3NpemUgJSBncm91
cHNpemU7CisKKwkvKgorCSAqIFdvcnN0IGNhc2UgbGluZSBsZW5ndGg6CisJICogMiBoZXggY2hh
cnMgKyBzcGFjZSBwZXIgYnl0ZSBpbiwgMiBzcGFjZXMsIDEgY2hhciBwZXIgYnl0ZSBpbiwgTlVM
TAorCSAqLworCWxpbmVidWZfbGVuID0gcm93c2l6ZSAqIDMgKyAyICsgcm93c2l6ZSArIDE7CisJ
bGluZWJ1ZiA9IGt6YWxsb2MobGluZWJ1Zl9sZW4sIEdGUF9LRVJORUwpOworCWlmICghbGluZWJ1
ZikgeworCQlwcmludGsoIiVzJXNoZXhkdW1wOiBDb3VsZCBub3QgYWxsb2MgJXUgYnl0ZXMgZm9y
IGJ1ZmZlclxuIiwKKwkJCWxldmVsLCBwcmVmaXhfc3RyLCBsaW5lYnVmX2xlbik7CisJCXJldHVy
bjsKKwl9CiAKIAlmb3IgKGkgPSAwOyBpIDwgbGVuOyBpICs9IHJvd3NpemUpIHsKIAkJbGluZWxl
biA9IG1pbihyZW1haW5pbmcsIHJvd3NpemUpOwogCQlyZW1haW5pbmcgLT0gcm93c2l6ZTsKIAog
CQloZXhfZHVtcF90b19idWZmZXIocHRyICsgaSwgbGluZWxlbiwgcm93c2l6ZSwgZ3JvdXBzaXpl
LAotCQkJCSAgIGxpbmVidWYsIHNpemVvZihsaW5lYnVmKSwgYXNjaWkpOworCQkJCSAgIGxpbmVi
dWYsIGxpbmVidWZfbGVuLCBhc2NpaSk7CiAKIAkJc3dpdGNoIChwcmVmaXhfdHlwZSkgewogCQlj
YXNlIERVTVBfUFJFRklYX0FERFJFU1M6CkBAIC0yNzEsNiArMjg2LDggQEAgdm9pZCBwcmludF9o
ZXhfZHVtcChjb25zdCBjaGFyICpsZXZlbCwgY29uc3QgY2hhciAqcHJlZml4X3N0ciwgaW50IHBy
ZWZpeF90eXBlLAogCQkJYnJlYWs7CiAJCX0KIAl9CisKKwlrZnJlZShsaW5lYnVmKTsKIH0KIEVY
UE9SVF9TWU1CT0wocHJpbnRfaGV4X2R1bXApOwogCmRpZmYgLS1naXQgYS9saWIvdGVzdF9oZXhk
dW1wLmMgYi9saWIvdGVzdF9oZXhkdW1wLmMKaW5kZXggYmVmOTdhOTY0NTgyLi41ZTU0NTI1YTkz
N2MgMTAwNjQ0Ci0tLSBhL2xpYi90ZXN0X2hleGR1bXAuYworKysgYi9saWIvdGVzdF9oZXhkdW1w
LmMKQEAgLTE0LDE1ICsxNCwyNSBAQCBzdGF0aWMgY29uc3QgdW5zaWduZWQgY2hhciBkYXRhX2Jb
XSA9IHsKIAknXHg3MCcsICdceGJhJywgJ1x4YzQnLCAnXHgyNCcsICdceDdkJywgJ1x4ODMnLCAn
XHgzNCcsICdceDliJywJLyogMDggLSAwZiAqLwogCSdceGE2JywgJ1x4OWMnLCAnXHgzMScsICdc
eGFkJywgJ1x4OWMnLCAnXHgwZicsICdceGFjJywgJ1x4ZTknLAkvKiAxMCAtIDE3ICovCiAJJ1x4
NGMnLCAnXHhkMScsICdceDE5JywgJ1x4OTknLCAnXHg0MycsICdceGIxJywgJ1x4YWYnLCAnXHgw
YycsCS8qIDE4IC0gMWYgKi8KKwknXHgwMCcsICdceDAxJywgJ1x4MDInLCAnXHgwMycsICdceDA0
JywgJ1x4MDUnLCAnXHgwNicsICdceDA3JywgLyogMjAgLSAyNyAqLworCSdceDBmJywgJ1x4MGUn
LCAnXHgwZCcsICdceDBjJywgJ1x4MGInLCAnXHgwYScsICdceDA5JywgJ1x4MDgnLCAvKiAyOCAt
IDJmICovCisJJ1x4MTAnLCAnXHgxMScsICdceDEyJywgJ1x4MTMnLCAnXHgxNCcsICdceDE1Jywg
J1x4MTYnLCAnXHgxNycsIC8qIDMwIC0gMzcgKi8KKwknXHgxZicsICdceDFlJywgJ1x4MWQnLCAn
XHgxYycsICdceDFiJywgJ1x4MWEnLCAnXHgxOScsICdceDE4JywgLyogMzggLSAzZiAqLwogfTsK
IAotc3RhdGljIGNvbnN0IHVuc2lnbmVkIGNoYXIgZGF0YV9hW10gPSAiLjIuey4uLi5wLi4kfS40
Li4uMS4uLi4uTC4uLkMuLi4iOworc3RhdGljIGNvbnN0IHVuc2lnbmVkIGNoYXIgZGF0YV9hW10g
PSAiLjIuey4uLi5wLi4kfS40Li4uMS4uLi4uTC4uLkMuLi4iCisJCQkJICAgICAgIi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uIjsKIAogc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCB0
ZXN0X2RhdGFfMVtdIF9faW5pdGNvbnN0ID0gewogCSJiZSIsICIzMiIsICJkYiIsICI3YiIsICIw
YSIsICIxOCIsICI5MyIsICJiMiIsCiAJIjcwIiwgImJhIiwgImM0IiwgIjI0IiwgIjdkIiwgIjgz
IiwgIjM0IiwgIjliIiwKIAkiYTYiLCAiOWMiLCAiMzEiLCAiYWQiLCAiOWMiLCAiMGYiLCAiYWMi
LCAiZTkiLAogCSI0YyIsICJkMSIsICIxOSIsICI5OSIsICI0MyIsICJiMSIsICJhZiIsICIwYyIs
CisJIjAwIiwgIjAxIiwgIjAyIiwgIjAzIiwgIjA0IiwgIjA1IiwgIjA2IiwgIjA3IiwKKwkiMGYi
LCAiMGUiLCAiMGQiLCAiMGMiLCAiMGIiLCAiMGEiLCAiMDkiLCAiMDgiLAorCSIxMCIsICIxMSIs
ICIxMiIsICIxMyIsICIxNCIsICIxNSIsICIxNiIsICIxNyIsCisJIjFmIiwgIjFlIiwgIjFkIiwg
IjFjIiwgIjFiIiwgIjFhIiwgIjE5IiwgIjE4IiwKKwlOVUxMCiB9OwogCiBzdGF0aWMgY29uc3Qg
Y2hhciAqIGNvbnN0IHRlc3RfZGF0YV8yX2xlW10gX19pbml0Y29uc3QgPSB7CkBAIC0zMCw2ICs0
MCwxMSBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHRlc3RfZGF0YV8yX2xlW10gX19pbml0
Y29uc3QgPSB7CiAJImJhNzAiLCAiMjRjNCIsICI4MzdkIiwgIjliMzQiLAogCSI5Y2E2IiwgImFk
MzEiLCAiMGY5YyIsICJlOWFjIiwKIAkiZDE0YyIsICI5OTE5IiwgImIxNDMiLCAiMGNhZiIsCisJ
IjAxMDAiLCAiMDMwMiIsICIwNTA0IiwgIjA3MDYiLAorCSIwZTBmIiwgIjBjMGQiLCAiMGEwYiIs
ICIwODA5IiwKKwkiMTExMCIsICIxMzEyIiwgIjE1MTQiLCAiMTcxNiIsCisJIjFlMWYiLCAiMWMx
ZCIsICIxYTFiIiwgIjE4MTkiLAorCU5VTEwKIH07CiAKIHN0YXRpYyBjb25zdCBjaGFyICogY29u
c3QgdGVzdF9kYXRhXzJfYmVbXSBfX2luaXRjb25zdCA9IHsKQEAgLTM3LDI2ICs1Miw0MyBAQCBz
dGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHRlc3RfZGF0YV8yX2JlW10gX19pbml0Y29uc3QgPSB7
CiAJIjcwYmEiLCAiYzQyNCIsICI3ZDgzIiwgIjM0OWIiLAogCSJhNjljIiwgIjMxYWQiLCAiOWMw
ZiIsICJhY2U5IiwKIAkiNGNkMSIsICIxOTk5IiwgIjQzYjEiLCAiYWYwYyIsCisJIjAwMDEiLCAi
MDIwMyIsICIwNDA1IiwgIjA2MDciLAorCSIwZjBlIiwgIjBkMGMiLCAiMGIwYSIsICIwOTA4IiwK
KwkiMTAxMSIsICIxMjEzIiwgIjE0MTUiLCAiMTYxNyIsCisJIjFmMWUiLCAiMWQxYyIsICIxYjFh
IiwgIjE5MTgiLAorCU5VTEwKIH07CiAKIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdGVzdF9k
YXRhXzRfbGVbXSBfX2luaXRjb25zdCA9IHsKIAkiN2JkYjMyYmUiLCAiYjI5MzE4MGEiLCAiMjRj
NGJhNzAiLCAiOWIzNDgzN2QiLAogCSJhZDMxOWNhNiIsICJlOWFjMGY5YyIsICI5OTE5ZDE0YyIs
ICIwY2FmYjE0MyIsCisJIjAzMDIwMTAwIiwgIjA3MDYwNTA0IiwgIjBjMGQwZTBmIiwgIjA4MDkw
YTBiIiwKKwkiMTMxMjExMTAiLCAiMTcxNjE1MTQiLCAiMWMxZDFlMWYiLCAiMTgxOTFhMWIiLAor
CU5VTEwKIH07CiAKIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdGVzdF9kYXRhXzRfYmVbXSBf
X2luaXRjb25zdCA9IHsKIAkiYmUzMmRiN2IiLCAiMGExODkzYjIiLCAiNzBiYWM0MjQiLCAiN2Q4
MzM0OWIiLAogCSJhNjljMzFhZCIsICI5YzBmYWNlOSIsICI0Y2QxMTk5OSIsICI0M2IxYWYwYyIs
CisJIjAwMDEwMjAzIiwgIjA0MDUwNjA3IiwJIjBmMGUwZDBjIiwgIjBiMGEwOTA4IiwKKwkiMTAx
MTEyMTMiLCAiMTQxNTE2MTciLAkiMWYxZTFkMWMiLCAiMWIxYTE5MTgiLAorCU5VTEwKIH07CiAK
IHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgdGVzdF9kYXRhXzhfbGVbXSBfX2luaXRjb25zdCA9
IHsKIAkiYjI5MzE4MGE3YmRiMzJiZSIsICI5YjM0ODM3ZDI0YzRiYTcwIiwKIAkiZTlhYzBmOWNh
ZDMxOWNhNiIsICIwY2FmYjE0Mzk5MTlkMTRjIiwKKwkiMDcwNjA1MDQwMzAyMDEwMCIsICIwODA5
MGEwYjBjMGQwZTBmIiwKKwkiMTcxNjE1MTQxMzEyMTExMCIsICIxODE5MWExYjFjMWQxZTFmIiwK
KwlOVUxMCiB9OwogCiBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHRlc3RfZGF0YV84X2JlW10g
X19pbml0Y29uc3QgPSB7CiAJImJlMzJkYjdiMGExODkzYjIiLCAiNzBiYWM0MjQ3ZDgzMzQ5YiIs
CiAJImE2OWMzMWFkOWMwZmFjZTkiLCAiNGNkMTE5OTk0M2IxYWYwYyIsCisJIjAwMDEwMjAzMDQw
NTA2MDciLCAiMGYwZTBkMGMwYjBhMDkwOCIsCisJIjEwMTExMjEzMTQxNTE2MTciLCAiMWYxZTFk
MWMxYjFhMTkxOCIsCisJTlVMTAogfTsKIAogI2RlZmluZSBGSUxMX0NIQVIJJyMnCkBAIC03NSw5
ICsxMDcsNiBAQCBzdGF0aWMgdm9pZCBfX2luaXQgdGVzdF9oZXhkdW1wX3ByZXBhcmVfdGVzdChz
aXplX3QgbGVuLCBpbnQgcm93c2l6ZSwKIAl1bnNpZ25lZCBpbnQgaTsKIAljb25zdCBib29sIGlz
X2JlID0gSVNfRU5BQkxFRChDT05GSUdfQ1BVX0JJR19FTkRJQU4pOwogCi0JaWYgKHJzICE9IDE2
ICYmIHJzICE9IDMyKQotCQlycyA9IDE2OwotCiAJaWYgKGwgPiBycykKIAkJbCA9IHJzOwogCkBA
IC05Nyw3ICsxMjYsMTIgQEAgc3RhdGljIHZvaWQgX19pbml0IHRlc3RfaGV4ZHVtcF9wcmVwYXJl
X3Rlc3Qoc2l6ZV90IGxlbiwgaW50IHJvd3NpemUsCiAJcCA9IHRlc3Q7CiAJZm9yIChpID0gMDsg
aSA8IGwgLyBnczsgaSsrKSB7CiAJCWNvbnN0IGNoYXIgKnEgPSAqcmVzdWx0Kys7Ci0JCXNpemVf
dCBhbW91bnQgPSBzdHJsZW4ocSk7CisJCXNpemVfdCBhbW91bnQ7CisKKwkJaWYgKCFxKQorCQkJ
YnJlYWs7CisKKwkJYW1vdW50ID0gc3RybGVuKHEpOwogCiAJCW1lbWNweShwLCBxLCBhbW91bnQp
OwogCQlwICs9IGFtb3VudDsKQEAgLTEyMCw3ICsxNTQsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQg
dGVzdF9oZXhkdW1wX3ByZXBhcmVfdGVzdChzaXplX3QgbGVuLCBpbnQgcm93c2l6ZSwKIAkqcCA9
ICdcMCc7CiB9CiAKLSNkZWZpbmUgVEVTVF9IRVhEVU1QX0JVRl9TSVpFCQkoMzIgKiAzICsgMiAr
IDMyICsgMSkKKyNkZWZpbmUgVEVTVF9IRVhEVU1QX0JVRl9TSVpFCQkoNjQgKiAzICsgMiArIDY0
ICsgMSkKIAogc3RhdGljIHZvaWQgX19pbml0IHRlc3RfaGV4ZHVtcChzaXplX3QgbGVuLCBpbnQg
cm93c2l6ZSwgaW50IGdyb3Vwc2l6ZSwKIAkJCQlib29sIGFzY2lpKQpAQCAtMjE2LDcgKzI1MCw3
IEBAIHN0YXRpYyB2b2lkIF9faW5pdCB0ZXN0X2hleGR1bXBfb3ZlcmZsb3coc2l6ZV90IGJ1Zmxl
biwgc2l6ZV90IGxlbiwKIHN0YXRpYyB2b2lkIF9faW5pdCB0ZXN0X2hleGR1bXBfb3ZlcmZsb3df
c2V0KHNpemVfdCBidWZsZW4sIGJvb2wgYXNjaWkpCiB7CiAJdW5zaWduZWQgaW50IGkgPSAwOwot
CWludCBycyA9IChnZXRfcmFuZG9tX2ludCgpICUgMiArIDEpICogMTY7CisJaW50IHJzID0gKGdl
dF9yYW5kb21faW50KCkgJSA0ICsgMSkgKiAxNjsKIAogCWRvIHsKIAkJaW50IGdzID0gMSA8PCBp
OwpAQCAtMjMxLDExICsyNjUsMTEgQEAgc3RhdGljIGludCBfX2luaXQgdGVzdF9oZXhkdW1wX2lu
aXQodm9pZCkKIAl1bnNpZ25lZCBpbnQgaTsKIAlpbnQgcm93c2l6ZTsKIAotCXJvd3NpemUgPSAo
Z2V0X3JhbmRvbV9pbnQoKSAlIDIgKyAxKSAqIDE2OworCXJvd3NpemUgPSAoZ2V0X3JhbmRvbV9p
bnQoKSAlIDQgKyAxKSAqIDE2OwogCWZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKQogCQl0ZXN0X2hl
eGR1bXBfc2V0KHJvd3NpemUsIGZhbHNlKTsKIAotCXJvd3NpemUgPSAoZ2V0X3JhbmRvbV9pbnQo
KSAlIDIgKyAxKSAqIDE2OworCXJvd3NpemUgPSAoZ2V0X3JhbmRvbV9pbnQoKSAlIDQgKyAxKSAq
IDE2OwogCWZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKQogCQl0ZXN0X2hleGR1bXBfc2V0KHJvd3Np
emUsIHRydWUpOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
