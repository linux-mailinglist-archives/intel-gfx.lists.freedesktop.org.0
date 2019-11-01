Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027FEEC0A6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 10:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5046F7A5;
	Fri,  1 Nov 2019 09:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BAF36EEBF;
 Fri,  1 Nov 2019 09:37:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21B84A0138;
 Fri,  1 Nov 2019 09:37:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 Nov 2019 09:37:14 -0000
Message-ID: <20191101093714.19149.66279@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191101084940.31838-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191101084940.31838-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Start_kthreads_before_stopping?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBTdGFydCBr
dGhyZWFkcyBiZWZvcmUgc3RvcHBpbmcKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY4ODUyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOWExYmFkMDBmZTBjIGRybS9pOTE1L3NlbGZ0
ZXN0czogU3RhcnQga3RocmVhZHMgYmVmb3JlIHN0b3BwaW5nCi06MjU6IFdBUk5JTkc6WUlFTEQ6
IFVzaW5nIHlpZWxkKCkgaXMgZ2VuZXJhbGx5IHdyb25nLiBTZWUgeWllbGQoKSBrZXJuZWwtZG9j
IChzY2hlZC9jb3JlLmMpCiMyNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmM6MzQ4OgorCQl5aWVsZCgpOyAvKiBzdGFydCBhbGwgdGhy
ZWFkcyBiZWZvcmUgd2Uga3RocmVhZF9zdG9wKCkgKi8KCi06Mzg6IFdBUk5JTkc6WUlFTEQ6IFVz
aW5nIHlpZWxkKCkgaXMgZ2VuZXJhbGx5IHdyb25nLiBTZWUgeWllbGQoKSBrZXJuZWwtZG9jIChz
Y2hlZC9jb3JlLmMpCiMzODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9vYmplY3RfYmx0LmM6NDc2OgorCXlpZWxkKCk7IC8qIHN0YXJ0IGFsbCB0aHJl
YWRzIGJlZm9yZSB3ZSBrdGhyZWFkX3N0b3AoKSAqLwoKLTo1MTogV0FSTklORzpZSUVMRDogVXNp
bmcgeWllbGQoKSBpcyBnZW5lcmFsbHkgd3JvbmcuIFNlZSB5aWVsZCgpIGtlcm5lbC1kb2MgKHNj
aGVkL2NvcmUuYykKIzUxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9o
YW5nY2hlY2suYzo4Mjk6CisJCXlpZWxkKCk7IC8qIHN0YXJ0IGFsbCB0aHJlYWRzIGJlZm9yZSB3
ZSBiZWdpbiAqLwoKLTo2NDogV0FSTklORzpZSUVMRDogVXNpbmcgeWllbGQoKSBpcyBnZW5lcmFs
bHkgd3JvbmcuIFNlZSB5aWVsZCgpIGtlcm5lbC1kb2MgKHNjaGVkL2NvcmUuYykKIzY0OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYzoyMjU1OgorCXlpZWxkKCk7
IC8qIHN0YXJ0IGFsbCB0aHJlYWRzIGJlZm9yZSB3ZSBrdGhyZWFkX3N0b3AoKSAqLwoKLTo3Nzog
V0FSTklORzpZSUVMRDogVXNpbmcgeWllbGQoKSBpcyBnZW5lcmFsbHkgd3JvbmcuIFNlZSB5aWVs
ZCgpIGtlcm5lbC1kb2MgKHNjaGVkL2NvcmUuYykKIzc3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmM6NDY3OgorCXlpZWxkKCk7IC8qIHN0YXJ0IGFs
bCB0aHJlYWRzIGJlZm9yZSB3ZSBiZWdpbiAqLwoKLTo4NTogV0FSTklORzpZSUVMRDogVXNpbmcg
eWllbGQoKSBpcyBnZW5lcmFsbHkgd3JvbmcuIFNlZSB5aWVsZCgpIGtlcm5lbC1kb2MgKHNjaGVk
L2NvcmUuYykKIzg1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9y
ZXF1ZXN0LmM6MTMxODoKKwl5aWVsZCgpOyAvKiBzdGFydCBhbGwgdGhyZWFkcyBiZWZvcmUgd2Ug
YmVnaW4gKi8KCnRvdGFsOiAwIGVycm9ycywgNiB3YXJuaW5ncywgMCBjaGVja3MsIDQ2IGxpbmVz
IGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
