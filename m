Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161B17E60A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 18:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2A46E0AD;
	Mon,  9 Mar 2020 17:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B95376E0AD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 17:50:38 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53E71215A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 17:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583776238;
 bh=IqkP2cQ1tanWWBC7/FvJu2+USviXtwQlw8Gm+JaKeOU=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=YUxZgi1oCvrr318keFuhUnR6Enob3OZLj7JH2eR38tcRojNNOS4wizTUMPDYrubJi
 EumVeobF9sBGT9+kge4BiBjGgreZdQqeRY7YI81p143YugHaaXReJzhMrPyDMLLdgZ
 0xVWAiIKz57E2ML4ZV9bJc2UfBgR8ppzhIy7MIaE=
Received: by mail-io1-f48.google.com with SMTP id h131so9335662iof.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Mar 2020 10:50:38 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3xcVwVZgfJiO2Fj1ZQi8Ks1EFM1l1qpwdfnMsPWJ2Ruwuny2kq
 gCr3YlyibcstHLOpU/Hz9yRbVBPg0lXHzBj0t2U=
X-Google-Smtp-Source: ADFU+vsw9etjX+/B/69FRItZyc1hFZ5aZGJOpvbL3Rg6sjSGP5yWm/yGd+BKnzQRiynEp0kleRiyvFdHlWg3KIwg500=
X-Received: by 2002:a05:6602:2098:: with SMTP id
 a24mr12959827ioa.101.1583776237711; 
 Mon, 09 Mar 2020 10:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200304213513.2239-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200304213513.2239-1-daniele.ceraolospurio@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 9 Mar 2020 13:50:26 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5Hr0RQ5W6-fDCTUHOJoGuwebebFw8OD7Wj+1_zHYrhNQ@mail.gmail.com>
Message-ID: <CA+5PVA5Hr0RQ5W6-fDCTUHOJoGuwebebFw8OD7Wj+1_zHYrhNQ@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] PR - i915 firmware updates (TGL HuC 7.0.12 and DMC
 2.06)
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 Linux Firmware <linux-firmware@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXIgNCwgMjAyMCBhdCA0OjM2IFBNIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8KPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBLaW5kbHkg
YWRkIHRoZSBiZWxvdyBpOTE1IGNoYW5nZXMgdG8gbGludXgtZmlybXdhcmUuZ2l0Cj4KPiBUaGUg
Zm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDAxNDhjZmVmY2JmOTg4OThjYTY1YmIyNmQ5
ZDdkNjM4YjMwZTIxMWQ6Cj4KPiAgIE1lcmdlIGh0dHBzOi8vZ2l0aHViLmNvbS9yamxpYW8tcWNh
L3FjYS1idGZ3ICgyMDIwLTAzLTAyIDA4OjA4OjE1IC0wNTAwKQo+Cj4gYXJlIGF2YWlsYWJsZSBp
biB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4KPiAgIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2RybS9kcm0tZmlybXdhcmUgdGdsX2h1Y183LjAuMTJfZG1jXzIuMDYKClB1bGxlZCBhbmQg
cHVzaGVkIG91dC4KCmpvc2gKCj4KPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZmI4
MzQwMmM3NTcwMzRmZDlhZGVmMDgzMDQ3MzkwYjNiMmY1NGNiNDoKPgo+ICAgaTkxNTogQWRkIERN
QyBmaXJtd2FyZSB2Mi4wNiBmb3IgVEdMICgyMDIwLTAzLTA0IDEzOjE5OjA3IC0wODAwKQo+Cj4g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDEpOgo+ICAgICAgIGk5MTU6IGFkZCBI
dUMgZmlybXdhcmUgdjcuMC4xMiBmb3IgVEdMCj4KPiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgx
KToKPiAgICAgICBpOTE1OiBBZGQgRE1DIGZpcm13YXJlIHYyLjA2IGZvciBUR0wKPgo+ICBXSEVO
Q0UgICAgICAgICAgICAgICAgICAgfCAgIDYgKysrKysrCj4gIGk5MTUvdGdsX2RtY192ZXIyXzA2
LmJpbiB8IEJpbiAwIC0+IDE4NjYwIGJ5dGVzCj4gIGk5MTUvdGdsX2h1Y183LjAuMTIuYmluICB8
IEJpbiAwIC0+IDUzMDM2OCBieXRlcwo+ICAzIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS90Z2xfZG1jX3ZlcjJfMDYuYmluCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpOTE1L3RnbF9odWNfNy4wLjEyLmJpbgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
