Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA263217A1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882B8891C1;
	Fri, 17 May 2019 11:25:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687DD891C1;
 Fri, 17 May 2019 11:25:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:25:29 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.11.159])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 04:25:28 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 May 2019 12:25:01 +0100
Message-Id: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 00/25] Media scalability tooling
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJldmlldyBm
ZWVkYmFjayBhbmQgc29tZSBuZXcgc3R1ZmYgLSBtb3N0IG5vdGFibHkgcmVtb3ZhbCBvZiBhIGxv
dCBvZiBoYXJkY29kZWQKYXNzdW1wdGlvbnMgYnkgYWRkaW5nIGVuZ2luZSBkaXNjb3ZlcnkgYW5k
IHNwZWN1bGF0aXZlIHN1cHBvcnQgdG8gcnVuIG9uCkljZWxha2UuCgpUdnJ0a28gVXJzdWxpbiAo
MjUpOgogIHNjcmlwdHMvdHJhY2UucGw6IEZpeCBhZnRlciBpbnRlbF9lbmdpbmVfbm90aWZ5IHJl
bW92YWwKICB0cmFjZS5wbDogSWdub3JlIHNpZ25hbGluZyBvbiBub24gaTkxNSBmZW5jZXMKICBo
ZWFkZXJzOiBidW1wCiAgdHJhY2UucGw6IFZpcnR1YWwgZW5naW5lIHN1cHBvcnQKICB0cmFjZS5w
bDogVmlydHVhbCBlbmdpbmUgcHJlZW1wdGlvbiBzdXBwb3J0CiAgd3NpbS9tZWRpYS1iZW5jaDog
aTkxNSBiYWxhbmNpbmcKICBnZW1fd3NpbTogVXNlIElHVCB1YXBpIGhlYWRlcnMKICBnZW1fd3Np
bTogRmFjdG9yIG91dCBjb21tb24gZXJyb3IgaGFuZGxpbmcKICBnZW1fd3NpbTogTW9yZSB3c2lt
X2VycgogIGdlbV93c2ltOiBTdWJtaXQgZmVuY2Ugc3VwcG9ydAogIGdlbV93c2ltOiBFeHRyYWN0
IHN0ciB0byBlbmdpbmUgbG9va3VwCiAgZ2VtX3dzaW06IEVuZ2luZSBtYXAgc3VwcG9ydAogIGdl
bV93c2ltOiBTYXZlIHNvbWUgbGluZXMgYnkgY2hhbmdpbmcgdG8gaW1wbGljaXQgTlVMTCBjaGVj
a2luZwogIGdlbV93c2ltOiBDb21wYWN0IGludCBjb21tYW5kIHBhcnNpbmcgd2l0aCBhIG1hY3Jv
CiAgZ2VtX3dzaW06IEVuZ2luZSBtYXAgbG9hZCBiYWxhbmNlIGNvbW1hbmQKICBnZW1fd3NpbTog
RW5naW5lIGJvbmQgY29tbWFuZAogIGdlbV93c2ltOiBTb21lIG1vcmUgZXhhbXBsZSB3b3JrbG9h
ZHMKICBnZW1fd3NpbTogSW5maW5pdGUgYmF0Y2ggc3VwcG9ydAogIGdlbV93c2ltOiBDb21tYW5k
IGxpbmUgc3dpdGNoIGZvciBzcGVjaWZ5aW5nIGxvdyBzbGljZSBjb3VudCB3b3JrbG9hZHMKICBn
ZW1fd3NpbTogUGVyIGNvbnRleHQgU1NFVSBjb250cm9sCiAgZ2VtX3dzaW06IEFsbG93IFJDUyB2
aXJ0dWFsIGVuZ2luZSB3aXRoIFNTRVUgY29udHJvbAogIHRlc3RzL2k5MTVfcXVlcnk6IEVuZ2lu
ZSBkaXNjb3ZlcnkgdGVzdHMKICBnZW1fd3NpbTogQ29uc29saWRhdGUgZW5naW5lIGFzc2lnbm1l
bnRzIGludG8gaGVscGVycwogIGdlbV93c2ltOiBEaXNjb3ZlciBlbmdpbmVzCiAgZ2VtX3dzaW06
IFN1cHBvcnQgSWNlbGFrZSBwYXJ0cwoKIGJlbmNobWFya3MvZ2VtX3dzaW0uYyAgICAgICAgICAg
ICAgICAgICAgICAgfCAxNTIzICsrKysrKysrKysrKysrKy0tLS0KIGJlbmNobWFya3Mvd3NpbS9S
RUFETUUgICAgICAgICAgICAgICAgICAgICAgfCAgMTQyICstCiBiZW5jaG1hcmtzL3dzaW0vZnJh
bWUtc3BsaXQtNjBmcHMud3NpbSAgICAgIHwgICAxOCArCiBiZW5jaG1hcmtzL3dzaW0vaGlnaC1j
b21wb3NpdGVkLWdhbWUud3NpbSAgIHwgICAxMSArCiBiZW5jaG1hcmtzL3dzaW0vbWVkaWEtMTA4
MHAtcGxheWVyLndzaW0gICAgIHwgICAgNSArCiBiZW5jaG1hcmtzL3dzaW0vbWVkaXVtLWNvbXBv
c2l0ZWQtZ2FtZS53c2ltIHwgICAgOSArCiBpbmNsdWRlL2RybS11YXBpL2FtZGdwdV9kcm0uaCAg
ICAgICAgICAgICAgIHwgICA1MiArLQogaW5jbHVkZS9kcm0tdWFwaS9kcm0uaCAgICAgICAgICAg
ICAgICAgICAgICB8ICAgMzYgKwogaW5jbHVkZS9kcm0tdWFwaS9kcm1fbW9kZS5oICAgICAgICAg
ICAgICAgICB8ICAgIDQgKy0KIGluY2x1ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaCAgICAgICAgICAg
ICAgICAgfCAgMjA5ICsrLQogaW5jbHVkZS9kcm0tdWFwaS9saW1hX2RybS5oICAgICAgICAgICAg
ICAgICB8ICAxNjkgKysKIGluY2x1ZGUvZHJtLXVhcGkvbXNtX2RybS5oICAgICAgICAgICAgICAg
ICAgfCAgIDE0ICsKIGluY2x1ZGUvZHJtLXVhcGkvbm91dmVhdV9kcm0uaCAgICAgICAgICAgICAg
fCAgIDUxICsKIGluY2x1ZGUvZHJtLXVhcGkvdjNkX2RybS5oICAgICAgICAgICAgICAgICAgfCAg
IDI4ICsKIHNjcmlwdHMvbWVkaWEtYmVuY2gucGwgICAgICAgICAgICAgICAgICAgICAgfCAgICA5
ICstCiBzY3JpcHRzL3RyYWNlLnBsICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMxOSAr
KystCiB0ZXN0cy9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgICAgICAgICAgIHwgIDI0NyAr
KysKIDE3IGZpbGVzIGNoYW5nZWQsIDI0MjUgaW5zZXJ0aW9ucygrKSwgNDIxIGRlbGV0aW9ucygt
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IGJlbmNobWFya3Mvd3NpbS9mcmFtZS1zcGxpdC02MGZwcy53
c2ltCiBjcmVhdGUgbW9kZSAxMDA2NDQgYmVuY2htYXJrcy93c2ltL2hpZ2gtY29tcG9zaXRlZC1n
YW1lLndzaW0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBiZW5jaG1hcmtzL3dzaW0vbWVkaWEtMTA4MHAt
cGxheWVyLndzaW0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBiZW5jaG1hcmtzL3dzaW0vbWVkaXVtLWNv
bXBvc2l0ZWQtZ2FtZS53c2ltCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kcm0tdWFwaS9s
aW1hX2RybS5oCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
