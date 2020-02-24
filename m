Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B0516B0D7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 21:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362416E869;
	Mon, 24 Feb 2020 20:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377766E869
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 20:18:22 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id b15so7767381lfc.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ton2dy5GNqJyLPJEEIDedKcsvitgM4YKPz9ezK/FmE0=;
 b=bc1jk6Z6X5J0gkzdttLCx6ihvZcpztqqdW5l9vvmxaZPW3vSAmMBFMQW8ztbsx2qQf
 enD1xQhjmUaaapmJ4YS+GQJxZDWSwnCjw16rQN4BIbIqI5pcEcoyRlwS4BBNoa+UuF7M
 8Yp8BcvIpPQz6RMk4VAm8jOL8DI1gTL1lm728=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ton2dy5GNqJyLPJEEIDedKcsvitgM4YKPz9ezK/FmE0=;
 b=aoAEZCrTbx8t8DixbL7jgdbgWoFinLqda2dNZI69vvc/GzKeNflAOx8/T3BKr9p/NO
 4cVctfOSoG8hlMwkxgAc3eTu5ZVqZPEX2Mh7oeL7XE/Z4AYiZ5IuSDKy7WnOXVlWFvg0
 7SVm8G8gly0G59MU2WdUSJrBQsuymjgJ2HgTCoB6xyciuK+2uE0NUk4VdHLPCrB0jUdd
 D1v/BH/wO+Dxhxz66kT7SdI63JbGRxRbxR0o6TKoDjY6qD79BKw4bxZShzmnh1GyUeGa
 TJQoOqpbXtXxlUahywObPrmgd2UqAFfw2Kb6dV+Okkq1uBR+myRuAf6imRFSw0NZALES
 tysg==
X-Gm-Message-State: APjAAAVexC3UNOdwdrfJo6BCJRrAhKhVYHNJdP8kHsQNxhMM1aCwKPBP
 DzXRKvpPXiHLT8r9xM3SpGH2gf1jfuE=
X-Google-Smtp-Source: APXvYqzdmhCl5yE0z2ZiGCYG5orTywZp+6AEWB8JOl/XdemdfhG0X/PpyBPp86MsVoKX03gKoFllOw==
X-Received: by 2002:ac2:532f:: with SMTP id f15mr5689629lfh.3.1582575500194;
 Mon, 24 Feb 2020 12:18:20 -0800 (PST)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id u22sm6245778lff.65.2020.02.24.12.18.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 12:18:19 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id o15so11570918ljg.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:18:19 -0800 (PST)
X-Received: by 2002:a2e:580c:: with SMTP id m12mr31671680ljb.150.1582575498886; 
 Mon, 24 Feb 2020 12:18:18 -0800 (PST)
MIME-Version: 1.0
References: <CADDKRnBq6oFFfVzqDRwwx2Eoc74M7f_9Z7UCdSVmS_xGMD1wdQ@mail.gmail.com>
In-Reply-To: <CADDKRnBq6oFFfVzqDRwwx2Eoc74M7f_9Z7UCdSVmS_xGMD1wdQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 24 Feb 2020 12:18:03 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh101Kcdby3UwzGWcCVELdGJoyduQ7Hwp2B6tavzx8ULw@mail.gmail.com>
Message-ID: <CAHk-=wh101Kcdby3UwzGWcCVELdGJoyduQ7Hwp2B6tavzx8ULw@mail.gmail.com>
To: =?UTF-8?Q?J=C3=B6rg_Otte?= <jrg.otte@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
Subject: Re: [Intel-gfx] i915 GPU-hang regression in v5.6-rcx
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGV0J3MgYWRkIGluIHNvbWUgb2YgdGhlIGk5MTUgcGVvcGxlIGFuZCBsaXN0LgoKRXZlcnl0aGlu
ZyBxdW90ZWQgYmVsb3cgZm9yIHRoZSBuZXcgcGFydGljaXBhbnRzLgoKICAgICAgICAgICAgICBM
aW51cwoKT24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMjo1MiBBTSBKw7ZyZyBPdHRlIDxqcmcub3R0
ZUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSW4gdjUuNi1yY3ggSSBzcG9yYWRpY2FsbHkgc2VlIGEg
aGFuZ2luZyBHUFUuCj4KPiBbICA2NDAuOTE5MzAyXSBpOTE1IDAwMDA6MDA6MDIuMDogUmVzZXR0
aW5nIGNoaXAgZm9yIHN0b3BwZWQgaGVhcnRiZWF0IG9uIHJjczAKPiBbICA2NDEuMDIxODA4XSBp
OTE1IDAwMDA6MDA6MDIuMDogWG9yZ1s3MjJdIGNvbnRleHQgcmVzZXQgZHVlIHRvIEdQVSBoYW5n
Cj4KPiBbIDIyMjkuNzY0NzA5XSBpOTE1IDAwMDA6MDA6MDIuMDogUmVzZXR0aW5nIGNoaXAgZm9y
IHN0b3BwZWQgaGVhcnRiZWF0IG9uIHJjczAKPiBbIDIyMjkuODY3NTM0XSBpOTE1IDAwMDA6MDA6
MDIuMDoga3dpbl94MTFbMTAwNV0gY29udGV4dCByZXNldCBkdWUgdG8gR1BVIGhhbmcKPgo+IFRv
IHJlY292ZXIgWG9yZyBtdXN0IGJlIGtpbGxlZCBhbmQgcmVzdGFydGVkIG9yIHJlYm9vdCBpcyBy
ZXF1aXJlZC4KPiBJJ3ZlIG5ldmVyIHNlZW4gdGhpcyBiZWZvcmUgdjUuNi1yY3guCj4KPiBCZXN0
IHdheSB0byByZXByb2R1Y2Ugc2VlbSB0byBiZSAiaGVhdmlseSBzY3JvbGxpbmcgd2l0aCB0aGUg
bW91c2Ugd2hlZWwiCj4gaW4gZ3JhcGhpYyBhcHBsaWNhdGlvbnMuIEkgYWxzbyBzYXcgdGhpcyBv
bmNlIHdoaWxlIHZpZGVvIHN0cmVhbWluZyBpbgo+IGEgYnJvd3Nlci4KPgo+Cj4gU3lzdGVtOiAg
SG9zdDogZmljaHRlIEtlcm5lbDogNS42LjAtcmMxIHg4Nl82NCBiaXRzOiA2NCBDb25zb2xlOiB0
dHkgMwo+IERpc3RybzogVWJ1bnR1IDE4LjA0LjMgTFRTCj4gTWFjaGluZTogRGV2aWNlOiBOb3Rl
Ym9vayBTeXN0ZW06IEZVSklUU1UgcHJvZHVjdDogTElGRUJPT0sgQTU0NAo+IHNlcmlhbDogPGZp
bHRlcj4KPiAgICAgICAgICBNb2JvOiBGVUpJVFNVIG1vZGVsOiBGSk5CQjM1IHNlcmlhbDogPGZp
bHRlcj4KPiAgICAgICAgICBCSU9TOiBGVUpJVFNVIC8vIFBob2VuaXggdjogVmVyc2lvbiAxLjE3
IHJ2IDEuMTcgZGF0ZTogMDUvMDkvMjAxNAo+IENQVTogICAgIER1YWwgY29yZSBJbnRlbCBDb3Jl
IGk1LTQyMDBNICgtTVQtTUNQLSkgY2FjaGU6IDMwNzIgS0IKPiAgICAgICAgICBjbG9jayBzcGVl
ZHM6IG1heDogMzEwMCBNSHogMTogMTEyNyBNSHogMjogOTY0IE1IeiAzOiAxMDM0Cj4gTUh6IDQ6
IDk4NCBNSHoKPiBHcmFwaGljczpDYXJkOiBJbnRlbCA0dGggR2VuIENvcmUgUHJvY2Vzc29yIElu
dGVncmF0ZWQgR3JhcGhpY3MgQ29udHJvbGxlcgo+ICAgICAgICAgIERpc3BsYXkgU2VydmVyOiBY
Lk9yZyAxLjE5LjYgZHJpdmVyczogbW9kZXNldHRpbmcgKHVubG9hZGVkOgo+IGZiZGV2LHZlc2Ep
IFJlc29sdXRpb246IDEzNjZ4NzY4QDYwLjAwaHoKPiAgICAgICAgICBPcGVuR0w6IHJlbmRlcmVy
OiBNZXNhIERSSSBJbnRlbCBIYXN3ZWxsIE1vYmlsZSB2ZXJzaW9uOiA0LjUKPiBNZXNhIDE5LjIu
OAo+Cj4KPiBUaGFua3MsIErDtnJnCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
