Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68527246639
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 14:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74FD66E0AC;
	Mon, 17 Aug 2020 12:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 814E46E069
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:21:32 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E6B920658
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597666892;
 bh=jN4qmxfky1tB51+vlOAf0lr2hMEzb7uRNK8Gkm+KmhQ=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=XvpwItJwUH9J65SVv59B7eLdzWcenny9uLrfh0iHbKMmUoHfg1bvSqTon9twnNfCN
 /8LqUGw3xUK9i+pfEKChvmJhdbA05GisT3zReMDyZ59j/7Pn35mw0QG0nZa5A23Ebp
 BbYvvFcHTSfgY8K+4ZnpXmrBpKFVO+U6gku3gKB0=
Received: by mail-io1-f49.google.com with SMTP id s1so4268768iot.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 05:21:32 -0700 (PDT)
X-Gm-Message-State: AOAM530tst0PT4n1bS7dyMyYHXP7VSRJ3hcJHC7RDr0wRspK/WbZgMoT
 037bqQrY/KBDkQul59gb2udtQ5MJXtiXUhoI2eA=
X-Google-Smtp-Source: ABdhPJxIJn+vxkz31SjOj+S2Z/Tzr+DhmDvHK456hUhzk6UJOwbwiGkFbJ9VE0XQfr6JRionUNTUvq2micD4fJMT7J8=
X-Received: by 2002:a02:84c1:: with SMTP id f59mr14474441jai.106.1597666891789; 
 Mon, 17 Aug 2020 05:21:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200815004802.25787-1-jose.souza@intel.com>
In-Reply-To: <20200815004802.25787-1-jose.souza@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 17 Aug 2020 08:21:20 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5_tHd3BuNEc1tV-JpNNe-pJ3FaAugQmJ_pJyrGp8HMtA@mail.gmail.com>
Message-ID: <CA+5PVA5_tHd3BuNEc1tV-JpNNe-pJ3FaAugQmJ_pJyrGp8HMtA@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Subject: Re: [Intel-gfx] PR for new i915 firmware files
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

T24gRnJpLCBBdWcgMTQsIDIwMjAgYXQgODo0NSBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2lu
Y2UgY29tbWl0IGMzMzFhYTljNDljZTUwN2Q0ZTVhOWE0ZjJmMTkxMTVkYjhlMTU1MzY6Cj4KPiAg
IGFtZGdwdTogdXBkYXRlIHZlZ2EyMCBmaXJtd2FyZSBmb3IgMjAuMzAgKDIwMjAtMDgtMDcgMDg6
MTY6MjEgLTA0MDApCj4KPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
Pgo+ICAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1maXJtd2FyZSBpOTE1
LWZpcm13YXJlLXVwZGF0ZXMtMDgtMjAyMAoKUHVsbGVkIGFuZCBwdXNoZWQgb3V0LgoKam9zaAoK
Cj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDFiODEzNzNiNTJhODZkYWRjZmU3MGQ0
Mzg1ZTYyYmM2YWZjMzk2M2E6Cj4KPiAgIGk5MTU6IEFkZCBETUMgZmlybXdhcmUgMi4wMiBmb3Ig
UktMICgyMDIwLTA4LTEzIDExOjA0OjA4IC0wNzAwKQo+Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgKDMpOgo+ICAgICAgIGk5MTU6IEFkZCBIdUMgZmlyd21hcmUgdjcuNS4wIGZv
ciBUR0wKPiAgICAgICBpOTE1OiBBZGQgRE1DIGZpcm13YXJlIDIuMDggZm9yIFRHTAo+ICAgICAg
IGk5MTU6IEFkZCBETUMgZmlybXdhcmUgMi4wMiBmb3IgUktMCj4KPiAgV0hFTkNFICAgICAgICAg
ICAgICAgICAgIHwgICA5ICsrKysrKysrKwo+ICBpOTE1L3JrbF9kbWNfdmVyMl8wMi5iaW4gfCBC
aW4gMCAtPiAxODIwNCBieXRlcwo+ICBpOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4gfCBCaW4gMCAt
PiAxODkzMiBieXRlcwo+ICBpOTE1L3RnbF9odWNfNy41LjAuYmluICAgfCBCaW4gMCAtPiA1ODA3
MzYgYnl0ZXMKPiAgNCBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGk5MTUvcmtsX2RtY192ZXIyXzAyLmJpbgo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
aTkxNS90Z2xfZG1jX3ZlcjJfMDguYmluCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L3RnbF9o
dWNfNy41LjAuYmluCj4KPiBkaWZmIC0tZ2l0IGEvV0hFTkNFIGIvV0hFTkNFCj4gaW5kZXggYmU4
YzM5MC4uNTRjMzcxNCAxMDA2NDQKPiAtLS0gYS9XSEVOQ0UKPiArKysgYi9XSEVOQ0UKPiBAQCAt
NDEyNCw2ICs0MTI0LDkgQEAgVmVyc2lvbjogRE1DIEFQSS9BUEIgdmVyIDIgcmVsZWFzZSA0IGZv
ciBUaWdlcmxha2UKPiAgRmlsZTogaTkxNS90Z2xfZG1jX3ZlcjJfMDYuYmluCj4gIFZlcnNpb246
IERNQyBBUEkvQVBCIHZlciAyIHJlbGVhc2UgNiBmb3IgVGlnZXJsYWtlCj4KPiArRmlsZTogaTkx
NS90Z2xfZG1jX3ZlcjJfMDguYmluCj4gK1ZlcnNpb246IERNQyBBUEkvQVBCIHZlciAyIHJlbGVh
c2UgOCBmb3IgVGlnZXJsYWtlCj4gKwo+ICBGaWxlOiBpOTE1L2ljbF9odWNfOS4wLjAuYmluCj4g
IFZlcnNpb246IEh1YyBBUEkvQVBCIHZlciA5IHJlbGVhc2UgMCBmb3IgSWNlbGFrZQo+Cj4gQEAg
LTQxNDIsNiArNDE0NSwxMiBAQCBWZXJzaW9uOiBIdWMgQVBJL0FQQiB2ZXIgNyByZWxlYXNlIDAg
Zm9yIFRpZ2VybGFrZQo+ICBGaWxlOiBpOTE1L3RnbF9odWNfNy4wLjEyLmJpbgo+ICBWZXJzaW9u
OiBIdWMgQVBJL0FQQiB2ZXIgNyByZWxlYXNlIDAgZm9yIFRpZ2VybGFrZQo+Cj4gK0ZpbGU6IGk5
MTUvdGdsX2h1Y183LjUuMC5iaW4KPiArVmVyc2lvbjogSHVjIEFQSS9BUEIgdmVyIDcgcmVsZWFz
ZSA1IGZvciBUaWdlcmxha2UKPiArCj4gK0ZpbGU6IGk5MTUvcmtsX2RtY192ZXIyXzAyLmJpbgo+
ICtWZXJzaW9uOiBETUMgQVBJL0FQQiB2ZXIgMiByZWxlYXNlIDIgZm9yIFJvY2tldGxha2UKPiAr
Cj4gIExpY2Vuc2U6IFJlZGlzdHJpYnV0YWJsZS4gU2VlIExJQ0VOU0UuaTkxNSBmb3IgZGV0YWls
cwo+Cj4gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gZGlmZiAtLWdpdCBhL2k5MTUvcmtsX2RtY192ZXIy
XzAyLmJpbiBiL2k5MTUvcmtsX2RtY192ZXIyXzAyLmJpbgo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMC4uZTU1M2ZiYwo+IEJpbmFyeSBmaWxlcyAvZGV2L251bGwgYW5kIGIv
aTkxNS9ya2xfZG1jX3ZlcjJfMDIuYmluIGRpZmZlcgo+IGRpZmYgLS1naXQgYS9pOTE1L3RnbF9k
bWNfdmVyMl8wOC5iaW4gYi9pOTE1L3RnbF9kbWNfdmVyMl8wOC5iaW4KPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjlkYjM3OWMKPiBCaW5hcnkgZmlsZXMgL2Rldi9udWxs
IGFuZCBiL2k5MTUvdGdsX2RtY192ZXIyXzA4LmJpbiBkaWZmZXIKPiBkaWZmIC0tZ2l0IGEvaTkx
NS90Z2xfaHVjXzcuNS4wLmJpbiBiL2k5MTUvdGdsX2h1Y183LjUuMC5iaW4KPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLmJlZDEwZjMKPiBCaW5hcnkgZmlsZXMgL2Rldi9u
dWxsIGFuZCBiL2k5MTUvdGdsX2h1Y183LjUuMC5iaW4gZGlmZmVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
