Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FB1370EE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7943A897C5;
	Thu,  6 Jun 2019 09:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51EA897C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:54:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7E01CC1EB1EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:54:50 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-180.str.redhat.com
 [10.33.192.180])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 096DA53B06
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:54:49 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Jun 2019 11:54:48 +0200
Message-ID: <87y32fqbrr.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 06 Jun 2019 09:54:50 +0000 (UTC)
Subject: [Intel-gfx] GEM shrinker and vm.overcommit_memory=2
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

SW4gZmFpcmx5IHJlY2VudCBwYXN0LCBpdCB3YXMgbm90IHBvc3NpYmxlIHRvIHJ1biBkZXNrdG9w
IHN5c3RlbXMgdXNpbmcKdm0ub3ZlcmNvbW1pdF9tZW1vcnk9MiBpZiB0aGV5IHVzZWQgSW50ZWwg
Z3JhcGhpY3MgYmVjYXVzZSB3aXRob3V0IHRoZQpPT00ga2lsbGVyLCB0aGUgc2hyaW5rZXIgd291
bGQgbmV2ZXIgcnVuLiAgSW5zdGVhZCwgcmVndWxhciBtZW1vcnkKYWxsb2NhdGlvbnMgd291bGQg
ZmFpbCBldmVudHVhbGx5LgoKSW4gYWRkaXRpb24sIHRoZSBpOTE1IE1lc2EgZHJpdmVyIGFzc3Vt
ZWQgbWFsbG9jIHdvdWxkIG5ldmVyIGZhaWwuICBTbwpldmVudHVhbGx5LCB0aGUgd2hvbGUgZGVz
a3RvcCBpbmZyYXN0cnVjdHVyZSB3b3VsZCBjcmFzaCB3aXRoIGEgTlVMTApwb2ludGVyIGRlcmVm
ZXJlbmNlIHNvbWV3aGVyZSBpbiBNZXNhLgoKSXMgcnVubmluZyB3aXRoIHZtLm92ZXJjb21taXRf
bWVtb3J5PTIgYSBzdXBwb3J0ZWQgY29uZmlndXJhdGlvbj8gIEkKZXhwZWN0IHRoYXQgdm0ub3Zl
cmNvbW1pdF9tZW1vcnk9MiBtb2RlIGNvdWxkIGJlIGFuIGludGVyZXN0aW5nCm9wZXJhdGluZyBt
b2RlIGZvciBPcGVuQ0wgd29ya2xvYWRzLgoKVGhhbmtzLApGbG9yaWFuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
