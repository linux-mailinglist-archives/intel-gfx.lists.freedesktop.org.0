Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F39135097
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 01:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E5E6E365;
	Thu,  9 Jan 2020 00:42:43 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4A26E365
 for <Intel-GFX@lists.freedesktop.org>; Thu,  9 Jan 2020 00:42:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 16:42:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="395925639"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.252.139.119])
 ([10.252.139.119])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 08 Jan 2020 16:42:40 -0800
To: Intel-GFX@Lists.FreeDesktop.Org
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <102948c5-f625-387a-46a8-c66272f998c2@Intel.com>
Date: Wed, 8 Jan 2020 16:42:39 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] [CI] PR for v40 GuC binaries
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA2N2Q0ZmY1OWJmMzMzNDg5NTYyNmNm
MTY1ZTUwOGU5ZWIxODQ2ZTI0OgoKIMKgIE1lbGxhbm94OiBBZGQgbmV3IG1seHN3X3NwZWN0cnVt
IGZpcm13YXJlIHh4LjIwMDAuMjcxNCAoMjAyMC0wMS0wNyAKMDk6MDg6MjUgLTA1MDApCgphcmUg
YXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiDCoCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZpcm13YXJlIGd1Y192NDAKCmZvciB5b3UgdG8gZmV0Y2gg
Y2hhbmdlcyB1cCB0byBhMDk0ZTI0OWE0NmY2NTUzNDZiNmE2MzkxNGU2ZDM1MjAyN2FkNjRjOgoK
IMKgIGk5MTU6IEFkZCBHdUMgdjQwLjAuMCBmb3IgVEdMICgyMDIwLTAxLTA4IDE2OjE5OjA1IC0w
ODAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQpKb2huIEhhcnJpc29uICg4KToKIMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1
QyB2NDAuMC4wIGZvciBCWFQKIMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1QyB2NDAuMC4wIGZvciBT
S0wKIMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1QyB2NDAuMC4wIGZvciBLQkwKIMKgwqDCoMKgwqAg
aTkxNTogQWRkIEd1QyB2NDAuMC4wIGZvciBJQ0wKIMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1QyB2
NDAuMC4wIGZvciBHTEsKIMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1QyB2NDAuMC4wIGZvciBDTUwK
IMKgwqDCoMKgwqAgaTkxNTogQWRkIEd1QyB2NDAuMC4wIGZvciBFSEwKIMKgwqDCoMKgwqAgaTkx
NTogQWRkIEd1QyB2NDAuMC4wIGZvciBUR0wKCiDCoFdIRU5DRcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwogwqBpOTE1L2J4
dF9ndWNfNDAuMC4wLmJpbiB8IEJpbiAwIC0+IDE4MzgwOCBieXRlcwogwqBpOTE1L2NtbF9ndWNf
NDAuMC4wLmJpbiB8IEJpbiAwIC0+IDE4NDY0MCBieXRlcwogwqBpOTE1L2VobF9ndWNfNDAuMC4w
LmJpbiB8IEJpbiAwIC0+IDMwNTAyNCBieXRlcwogwqBpOTE1L2dsa19ndWNfNDAuMC4wLmJpbiB8
IEJpbiAwIC0+IDE4NDI1NiBieXRlcwogwqBpOTE1L2ljbF9ndWNfNDAuMC4wLmJpbiB8IEJpbiAw
IC0+IDMwNTAyNCBieXRlcwogwqBpOTE1L2tibF9ndWNfNDAuMC4wLmJpbiB8IEJpbiAwIC0+IDE4
NDY0MCBieXRlcwogwqBpOTE1L3NrbF9ndWNfNDAuMC4wLmJpbiB8IEJpbiAwIC0+IDE4Mzc0NCBi
eXRlcwogwqBpOTE1L3RnbF9ndWNfNDAuMC4wLmJpbiB8IEJpbiAwIC0+IDMxOTE2OCBieXRlcwog
wqA5IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKIMKgY3JlYXRlIG1vZGUgMTAwNjQ0
IGk5MTUvYnh0X2d1Y180MC4wLjAuYmluCiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2NtbF9n
dWNfNDAuMC4wLmJpbgogwqBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9laGxfZ3VjXzQwLjAuMC5i
aW4KIMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvZ2xrX2d1Y180MC4wLjAuYmluCiDCoGNyZWF0
ZSBtb2RlIDEwMDY0NCBpOTE1L2ljbF9ndWNfNDAuMC4wLmJpbgogwqBjcmVhdGUgbW9kZSAxMDA2
NDQgaTkxNS9rYmxfZ3VjXzQwLjAuMC5iaW4KIMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvc2ts
X2d1Y180MC4wLjAuYmluCiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L3RnbF9ndWNfNDAuMC4w
LmJpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
