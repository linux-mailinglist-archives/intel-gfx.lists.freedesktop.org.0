Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF44307B49
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE92889F1B;
	Thu, 28 Jan 2021 16:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7516789F1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:49:39 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id rv9so8728792ejb.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 08:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j5c5IN7ihY4U5GhQ6L4fTr25tAwQy5hiHAW9tndVLn0=;
 b=vD5Eu5tp+uhtqgs8d3AoB/g5ejTCJGEynDBxwhuaTl8ssiBPdtOGxnnFhq98eLSySC
 euf2ZMrp+p2En+IJk0b83HJ5L9f8mu55Nh6rOfQNOwZ38qma/yN7yilpF/yHfSifFYzO
 k1OflkuHbPTuX+qaaPOAY1lcu9/eJzhOAkB435wbz+yE4D3kyYAimX2V+DyWMV7oa/zC
 Bd/czDziigATaX266RbroBqqMJZaWf64byb5Q+7eerkn3yqxiT7Qrlf858faAQJl2wJF
 EXI0Z/CzCUSYA2oKCzVSb1EFY2+824zXzeFz4UpbpgimrbaJSrR1g2bjyoCzYRyghEcL
 OSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j5c5IN7ihY4U5GhQ6L4fTr25tAwQy5hiHAW9tndVLn0=;
 b=cZD2SyO8r1soOHHhrptfmzZFnYo0tXrgaJdsH4Jdtpjcs/jLBXZ4kZJz6b/afuaody
 hm/XZRu+h8gxrKKBxxTL0NUaOYIToZanz2Fp+6jmrMTpzpRabGI6JZ6sGtDh5ULt1x2L
 Oo+gbc+95ZuoFCe8Py8jQBAZstCLPNXi0i/zYWKL2CR9N84zJd/hA/XBKcEnpoZORe2R
 Ya/MCxfj0Anji+0HLVy9pvpEumYL6tw06wOl9e/AnMYTtG6fHJZMRYqh3S4z4TaiJQZi
 Tn7jUe8cDlI1Fs+sWOomwvO2dMtb25yk7h7rHe40abJQyA4lrhK1+sLzhf/aHX2KO6kj
 Aopw==
X-Gm-Message-State: AOAM531ajKZNsvo1b/QV3IXhyW2b90SV94LWgzAGB2CacbjqVCCfL73j
 ywLBiFA/UdKJ55+C40xj0zJQS+VZ20f65ozNOnYE4g==
X-Google-Smtp-Source: ABdhPJx9G84lJHbLydt+jlV2HjN9GL78htLGRO+cLagGGb0BnQ2eI0aCwCzZoLVnrMzz3a+aggkR4F2eeM9a9XLRCQc=
X-Received: by 2002:a17:906:dfce:: with SMTP id
 jt14mr226955ejc.435.1611852578108; 
 Thu, 28 Jan 2021 08:49:38 -0800 (PST)
MIME-Version: 1.0
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
 <20210128162612.927917-15-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210128162612.927917-15-maarten.lankhorst@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 28 Jan 2021 10:49:27 -0600
Message-ID: <CAOFGe95g6KKBZ=j+OcdNz3nbbrEbfJwvPsxCwJJH0jaqfFOWog@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 14/63] drm/i915: Reject UNSYNCHRONIZED
 for userptr, v2.
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UndmUgbmV2ZXIgdXNlZCB0aGlzIGJpdCBpbiBtZXNhLgoKQWNrZWQtYnk6IEphc29uIEVrc3Ry
YW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KCk9uIFRodSwgSmFuIDI4LCAyMDIxIGF0IDEwOjI2
IEFNIE1hYXJ0ZW4gTGFua2hvcnN0CjxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
IHdyb3RlOgo+Cj4gV2Ugc2hvdWxkIG5vdCBhbGxvdyB0aGlzIGFueSBtb3JlLCBhcyBpdCB3aWxs
IGJyZWFrIHdpdGggdGhlIG5ldyB1c2VycHRyCj4gaW1wbGVtZW50YXRpb24sIGl0IGNvdWxkIHN0
aWxsIGJlIG1hZGUgdG8gd29yaywgYnV0IHRoZXJlJ3Mgbm8gcG9pbnQgaW4KPiBkb2luZyBzby4K
Pgo+IEluc3BlY3Rpb24gb2YgdGhlIGJlaWduZXQgb3BlbmNsIGRyaXZlciBzaG93cyB0aGF0IGl0
J3Mgb25seSB1c2VkCj4gd2hlbiBub3JtYWwgdXNlcnB0ciBpcyBub3QgYXZhaWxhYmxlLCB3aGlj
aCBtZWFucyBmb3IgbmV3IGtlcm5lbHMKPiB5b3Ugd2lsbCBuZWVkIENPTkZJR19JOTE1X1VTRVJQ
VFIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRo
YXQuY29tPgo+IFJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5k
Lm5ldD4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIu
YyB8IDEwICsrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJw
dHIuYwo+IGluZGV4IGM4OWNmOTExZmIyOS4uODBiYzEwYjRhYzc0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gQEAgLTIyNCw3ICsyMjQsNyBA
QCBpOTE1X2dlbV91c2VycHRyX2luaXRfX21tdV9ub3RpZmllcihzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAo+ICAgICAgICAgc3RydWN0IGk5MTVfbW11X29iamVjdCAqbW87Cj4KPiAg
ICAgICAgIGlmIChmbGFncyAmIEk5MTVfVVNFUlBUUl9VTlNZTkNIUk9OSVpFRCkKPiAtICAgICAg
ICAgICAgICAgcmV0dXJuIGNhcGFibGUoQ0FQX1NZU19BRE1JTikgPyAwIDogLUVQRVJNOwo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPgo+ICAgICAgICAgaWYgKEdFTV9XQVJOX09O
KCFvYmotPnVzZXJwdHIubW0pKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiBA
QCAtMjc0LDEzICsyNzQsNyBAQCBzdGF0aWMgaW50Cj4gIGk5MTVfZ2VtX3VzZXJwdHJfaW5pdF9f
bW11X25vdGlmaWVyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgZmxhZ3MpCj4gIHsKPiAtICAgICAg
IGlmICgoZmxhZ3MgJiBJOTE1X1VTRVJQVFJfVU5TWU5DSFJPTklaRUQpID09IDApCj4gLSAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+IC0KPiAtICAgICAgIGlmICghY2FwYWJsZShDQVBf
U1lTX0FETUlOKSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKPiAtCj4gLSAgICAg
ICByZXR1cm4gMDsKPiArICAgICAgIHJldHVybiAtRU5PREVWOwo+ICB9Cj4KPiAgc3RhdGljIHZv
aWQKPiAtLQo+IDIuMzAuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
