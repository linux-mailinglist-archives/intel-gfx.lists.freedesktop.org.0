Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643FB6BCBC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F78789F89;
	Wed, 17 Jul 2019 13:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A73289F89
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:07:48 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C435A20880
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:07:47 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id r6so17425245qkc.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 06:07:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWr8PtVjLWRolcRMggsF7L9NRHNsCJQg64xSjyvQnPUTpuD3ruz
 JQ8NP+wh/xdiyapBmjBojV8uhA3w2fWPyesDyg4=
X-Google-Smtp-Source: APXvYqz85Kw92csWXL9MwuG8i6Sg0f4sp8CFRkhz6BEQKHJZvCLtA/IiWjcQULwEIBpDZhPw74o9BIh1Pc/9PQm9jsw=
X-Received: by 2002:a05:620a:125b:: with SMTP id
 a27mr6440915qkl.112.1563368867069; 
 Wed, 17 Jul 2019 06:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <83F5C7385F545743AD4FB2A62F75B073480FBB3B@ORSMSX108.amr.corp.intel.com>
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B073480FBB3B@ORSMSX108.amr.corp.intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Wed, 17 Jul 2019 09:07:35 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5G_+Zkk2KEmi27oJEy-eu7LVXhDpoa7_jRoUmzV4428g@mail.gmail.com>
Message-ID: <CA+5PVA5G_+Zkk2KEmi27oJEy-eu7LVXhDpoa7_jRoUmzV4428g@mail.gmail.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1563368867;
 bh=tsvAg+Rib7FSrv4GHOR+h379uY/uQznos7k583p7gFk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Zs/n6XDkz8LlwWt3rr97nOytT5f1w/jTrWZtgOS6HiV1h8w6Zmm8XpA823Res4oyq
 xkJaTd6cXAJLe51VUXPPyMwTOY2/pCQR5RYlGP6azF0g6kJDJIRDfSK3GRxXazKIPO
 JJlr1PLF5WKhYKBcWaDNvujz+dAhpYOKbLhBLYHU=
Subject: Re: [Intel-gfx] PR- GUC v33 (BXT,SKL,GLK.KBL,ICL)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgOCwgMjAxOSBhdCA1OjUzIFBNIFNyaXZhdHNhLCBBbnVzaGEKPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBDYW4gdGhlc2UgaTkxNSBjaGFu
Z2VzIGJlIG1lcmdlZCB0byB0aGUgbGludXgtZmlybXdhcmUuZ2l0Pwo+Cj4gVGhlIGZvbGxvd2lu
ZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA3MGU0Mzk0MGIwNWU4ZDZlMGM1ZjE1YjVlMmQ2Nzc2MGYx
NTgxZWNlOgo+Cj4gICBsaW51eC1maXJtd2FyZTogcnNpOiBhZGQgZmlybXdhcmUgaW1hZ2UgZm9y
IHJlZHBpbmUgOTExNiBjaGlwc2V0ICgyMDE5LTA2LTI4IDA3OjQxOjIwIC0wNDAwKQo+Cj4gYXJl
IGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4KPiAgIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tZmlybXdhcmUgZ3VjX3YzMwo+Cj4gZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIDA1ZGJhZTY2MzlmMDljM2UwYTAyZTkzZGU1ZjgwM2RiOWFhZGVk
ZDE6Cj4KPiAgIGRybS9pOTE1L2Zpcm13YXJlOiBBZGQgdjMzIG9mIEd1QyBmb3IgSUNMICgyMDE5
LTA3LTA4IDE0OjQwOjU1IC0wNzAwKQo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IEFudXNoYSBTcml2YXRzYSAoNSk6
Cj4gICAgICAgZHJtL2k5MTUvZmlybXdhcmU6IEFkZCB2MzMgb2YgR3VDIGZvciBCWFQKPiAgICAg
ICBkcm0vaTkxNS9maXJtd2FyZTogQWRkIHYzMyBvZiBHdUMgZm9yIEdMSwo+ICAgICAgIGRybS9p
OTE1L2Zpcm13YXJlOiBBZGQgdjMzIG9mIEd1QyBmb3IgU0tMCj4gICAgICAgZHJtL2k5MTUvZmly
bXdhcmU6IEFkZCB2MzMgb2YgR3VDIGZvciBLQkwKPiAgICAgICBkcm0vaTkxNS9maXJtd2FyZTog
QWRkIHYzMyBvZiBHdUMgZm9yIElDTAoKUHVsbGVkIGFuZCBwdXNoZWQgb3V0LgoKam9zaAoKPgo+
ICBXSEVOQ0UgICAgICAgICAgICAgICAgICB8ICAxNSArKysrKysrKysrKysrKysKPiAgaTkxNS9i
eHRfZ3VjXzMzLjAuMC5iaW4gfCBCaW4gMCAtPiAxODE4ODggYnl0ZXMKPiAgaTkxNS9nbGtfZ3Vj
XzMzLjAuMC5iaW4gfCBCaW4gMCAtPiAxODIzMzYgYnl0ZXMKPiAgaTkxNS9pY2xfZ3VjXzMzLjAu
MC5iaW4gfCBCaW4gMCAtPiAzODUyODAgYnl0ZXMKPiAgaTkxNS9rYmxfZ3VjXzMzLjAuMC5iaW4g
fCBCaW4gMCAtPiAxODI5MTIgYnl0ZXMKPiAgaTkxNS9za2xfZ3VjXzMzLjAuMC5iaW4gfCBCaW4g
MCAtPiAxODIwODAgYnl0ZXMKPiAgNiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2J4dF9ndWNfMzMuMC4wLmJpbgo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgaTkxNS9nbGtfZ3VjXzMzLjAuMC5iaW4KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGk5
MTUvaWNsX2d1Y18zMy4wLjAuYmluCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2tibF9ndWNf
MzMuMC4wLmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9za2xfZ3VjXzMzLjAuMC5iaW4K
Pgo+IFRoYW5rcywKPiBBbnVzaGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
