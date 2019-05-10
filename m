Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418DC19E0D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B25889D60;
	Fri, 10 May 2019 13:23:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402F189A1F;
 Fri, 10 May 2019 13:23:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 06:23:17 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.28.3])
 by FMSMGA003.fm.intel.com with ESMTP; 10 May 2019 06:23:16 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 10 May 2019 14:23:11 +0100
Message-Id: <20190510132312.11121-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t 0/1] intel_gpu_top: Per-client engine
 busyness
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkV4dGVuc2lv
biB0byBpbnRlbF9ncHVfdG9wIHdoaWNoIHVzZXMgdGhlIGNvcnJlc3BvbmRpbmcgc3lzZnMgaW50
ZXJmYWNlIHByb3Bvc2FsCnRvIGltcGxlbWVudCBwZXIgY2xpZW50IGFuZCBwZXIgY2xhc3MgZW5n
aW5lIHV0aWxpemF0aW9uIHZpZXcuIEV4YW1wbGUgb3V0cHV0OgoKPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
aW50ZWwtZ3B1LXRvcCAtICA5MzUvIDkzNSBNSHo7ICAgIDAlIFJDNjsgMTQuNzMgV2F0dHM7ICAg
ICAxMDk3IGlycXMvcwoKICAgICAgSU1DIHJlYWRzOiAgICAgMTQwMSBNaUIvcwogICAgIElNQyB3
cml0ZXM6ICAgICAgICA0IE1pQi9zCgogICAgICAgICAgRU5HSU5FICAgICAgQlVTWSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIE1JX1NFTUEgTUlfV0FJVAogICAgIFJlbmRlci8zRC8w
ICAgNjMuNzMlIHzilojilojilojilojilojilojilojilojilojilojilojilojilojilojiloji
lojilojilojiloggICAgICAgICAgIHwgICAgICAzJSAgICAgIDAlCiAgICAgICBCbGl0dGVyLzAg
ICAgOS41MyUgfOKWiOKWiOKWiiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICA2JSAg
ICAgIDAlCiAgICAgICAgIFZpZGVvLzAgICAzOS4zMiUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiiAgICAgICAgICAgICAgICAgIHwgICAgIDE2JSAgICAgIDAlCiAgICAgICAg
IFZpZGVvLzEgICAxNS42MiUgfOKWiOKWiOKWiOKWiOKWiyAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgICAgMCUgICAgICAwJQogIFZpZGVvRW5oYW5jZS8wICAgIDAuMDAlIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgMCUgICAgICAwJQoKICBQSUQgICAgICAgICAgICBO
QU1FICAgICBSQ1MgICAgICAgICAgQkNTICAgICAgICAgIFZDUyAgICAgICAgIFZFQ1MKIDQwODQg
ICAgICAgIGdlbV93c2ltIHzilojilojilojilojilojilowgICAgIHx84paIICAgICAgICAgIHx8
ICAgICAgICAgICB8fCAgICAgICAgICAgfAogNDA4NiAgICAgICAgZ2VtX3dzaW0gfOKWiOKWjCAg
ICAgICAgIHx8ICAgICAgICAgICB8fOKWiOKWiOKWiCAgICAgICAgfHwgICAgICAgICAgIHwKPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KCgpUdnJ0a28gVXJzdWxpbiAoMSk6CiAgaW50ZWwtZ3B1LXRvcDogU3Vw
cG9ydCBmb3IgY2xpZW50IHN0YXRzCgogdG9vbHMvaW50ZWxfZ3B1X3RvcC5jIHwgNTkwICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDU4
NCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
