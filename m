Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3826778
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B45189BB3;
	Wed, 22 May 2019 15:57:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E5389911;
 Wed, 22 May 2019 15:57:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:57:28 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2019 08:57:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 16:57:05 +0100
Message-Id: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 00/15] Remaining bits of Virtual Engine
 tooling
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCllldCB1bm1l
cmdlZCB3b3JrIHdpdGggZml2ZSB1bnJldmlld2VkIHBhdGNoZXMuCgpUdnJ0a28gVXJzdWxpbiAo
MTUpOgogIGdlbV93c2ltOiBFbmdpbmUgbWFwIHN1cHBvcnQKICBnZW1fd3NpbTogU2F2ZSBzb21l
IGxpbmVzIGJ5IGNoYW5naW5nIHRvIGltcGxpY2l0IE5VTEwgY2hlY2tpbmcKICBnZW1fd3NpbTog
Q29tcGFjdCBpbnQgY29tbWFuZCBwYXJzaW5nIHdpdGggYSBtYWNybwogIGdlbV93c2ltOiBFbmdp
bmUgbWFwIGxvYWQgYmFsYW5jZSBjb21tYW5kCiAgZ2VtX3dzaW06IEVuZ2luZSBib25kIGNvbW1h
bmQKICBnZW1fd3NpbTogU29tZSBtb3JlIGV4YW1wbGUgd29ya2xvYWRzCiAgZ2VtX3dzaW06IElu
ZmluaXRlIGJhdGNoIHN1cHBvcnQKICBnZW1fd3NpbTogQ29tbWFuZCBsaW5lIHN3aXRjaCBmb3Ig
c3BlY2lmeWluZyBsb3cgc2xpY2UgY291bnQgd29ya2xvYWRzCiAgZ2VtX3dzaW06IFBlciBjb250
ZXh0IFNTRVUgY29udHJvbAogIGdlbV93c2ltOiBBbGxvdyBSQ1MgdmlydHVhbCBlbmdpbmUgd2l0
aCBTU0VVIGNvbnRyb2wKICBnZW1fd3NpbTogQ29uc29saWRhdGUgZW5naW5lIGFzc2lnbm1lbnRz
IGludG8gaGVscGVycwogIGdlbV93c2ltOiBEaXNjb3ZlciBlbmdpbmVzCiAgZ2VtX3dzaW06IFN1
cHBvcnQgSWNlbGFrZSBwYXJ0cwogIGdlbV93c2ltOiBGaXggcHJuZyB1c2FnZQogIGdlbV93c2lt
OiBBbGxvdyByYW5kb20gc2VlZCBjb250cm9sCgogYmVuY2htYXJrcy9nZW1fd3NpbS5jICAgICAg
ICAgICAgICAgICAgICAgICB8IDEwMjAgKysrKysrKysrKysrKysrKy0tLQogYmVuY2htYXJrcy93
c2ltL1JFQURNRSAgICAgICAgICAgICAgICAgICAgICB8ICAxMjIgKystCiBiZW5jaG1hcmtzL3dz
aW0vZnJhbWUtc3BsaXQtNjBmcHMud3NpbSAgICAgIHwgICAxOCArCiBiZW5jaG1hcmtzL3dzaW0v
aGlnaC1jb21wb3NpdGVkLWdhbWUud3NpbSAgIHwgICAxMSArCiBiZW5jaG1hcmtzL3dzaW0vbWVk
aWEtMTA4MHAtcGxheWVyLndzaW0gICAgIHwgICAgNSArCiBiZW5jaG1hcmtzL3dzaW0vbWVkaXVt
LWNvbXBvc2l0ZWQtZ2FtZS53c2ltIHwgICAgOSArCiA2IGZpbGVzIGNoYW5nZWQsIDEwMjIgaW5z
ZXJ0aW9ucygrKSwgMTYzIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGJlbmNobWFy
a3Mvd3NpbS9mcmFtZS1zcGxpdC02MGZwcy53c2ltCiBjcmVhdGUgbW9kZSAxMDA2NDQgYmVuY2ht
YXJrcy93c2ltL2hpZ2gtY29tcG9zaXRlZC1nYW1lLndzaW0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBi
ZW5jaG1hcmtzL3dzaW0vbWVkaWEtMTA4MHAtcGxheWVyLndzaW0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBiZW5jaG1hcmtzL3dzaW0vbWVkaXVtLWNvbXBvc2l0ZWQtZ2FtZS53c2ltCgotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
