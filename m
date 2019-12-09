Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D27D9117B44
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 00:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54976E5D5;
	Mon,  9 Dec 2019 23:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2255 seconds by postgrey-1.36 at gabe;
 Mon, 09 Dec 2019 23:13:36 UTC
Received: from 9.mo177.mail-out.ovh.net (9.mo177.mail-out.ovh.net
 [46.105.72.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6836E5D5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 23:13:35 +0000 (UTC)
Received: from player690.ha.ovh.net (unknown [10.108.35.232])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id C479E11647F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 23:35:58 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player690.ha.ovh.net (Postfix) with ESMTPSA id 5FC2BCF90D84;
 Mon,  9 Dec 2019 22:35:54 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Tue, 10 Dec 2019 00:35:54 +0200
Message-Id: <20191209223556.3897-1-andi@etezian.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14721704232799552093
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieeltddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: [Intel-gfx] [PATCH 0/2] Some debugfs enhancements
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpIaSwKCnRoaXMgdHdvIHBh
dGNoZXMgYXJlIGZldyBkZWJ1Z2ZzIGltcHJvdmVtZW50cy4gVGhlIGZpcnN0IGFkZHMKc29tZSBo
ZWxwZXJzIGZvciByZWFkaW5nIHRoZSBHVCBmcmVxdWVuY3ksIHdoaWxlIHRoZSBzZWNvbmQgcGF0
Y2gKbW92ZXMgYWxsIHRoZSBwb3dlciBtYW5hZ2VtZW50IGRlYnVmcyBmdW5jdGlvbnMgaW50byBn
dC8KClRoYW5rcywKQW5kaQoKCkFuZGkgU2h5dGkgKDIpOgogIGRybS9pOTE1L3JwczogQWRkIGZy
ZXF1ZW5jeSB0cmFuc2xhdGlvbiBoZWxwZXJzCiAgZHJtL2k5MTUvZ3Q6IE1vdmUgcG93ZXIgbWFu
YWdlbWVudCBkZWJ1Z2ZzIGZpbGVzIGludG8gZ3QKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG1fZGVidWdmcy5jIHwgNTkzICsrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9wbV9kZWJ1Z2ZzLmggfCAgMTQgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcnBzLmMgICAgICAgICAgIHwgIDIyICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jwcy5oICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCA1OTYgKy0tLS0tLS0tLS0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuaCAgICAgICAgICAgfCAgIDkgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAgICAgICAgIHwgIDE0ICstCiA4IGZpbGVz
IGNoYW5nZWQsIDY1MiBpbnNlcnRpb25zKCspLCA1OTkgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG1fZGVidWdmcy5jCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG1fZGVi
dWdmcy5oCgotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
