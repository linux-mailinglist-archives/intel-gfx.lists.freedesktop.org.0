Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE37EC0E2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 10:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7C76F7A8;
	Fri,  1 Nov 2019 09:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0986E1DE
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 09:56:20 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id 190so1459582vss.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Nov 2019 02:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y5ZVUxCUpmyvd/4fTsOKKB1I6+75xGeNKY9zQMV14uI=;
 b=dhlReuZore9n/vQnY5CKk9WV/Fn+nQFK/S2g3PbGYZPqHWeRl48pOxH5vghd+MD/73
 6+FpBmWb1VAPk0zXZdXss2lxsyr06e9xDCVPSSqGrrlTxRkQBVNMWMTMIfyKQaXkuEPI
 0XGVQwuegNzmBSL6AzLxjf+ISC0NhYEOx9WW3YJmOqB7ScBy/LikGtkAlTaaDTMmVoPR
 tWcxvM4w5njn8T/jTSQvcwaqmMBqHRWWQ2tbkJQUy545tVGxzDqBwFmXVMwZlNaJS3iN
 kPiHX17868pmRXckrDCD/dI93W+R3IML8Y0PwUduXmtCb7Sp1JeZigt/5tPS3Hz2ON23
 K/cQ==
X-Gm-Message-State: APjAAAUwMwUSMQKWzjzPgcozJzf+FikLWEaCwlfZx52JuIPgaol2iHxV
 LbB6vypS7NwtUTHlGJG0Xqf77Zrn2bkdAGhMf+M=
X-Google-Smtp-Source: APXvYqwdHbEGCghRzYlGhetwZO60n5LCV7letF3sOLrLQE0FrNe94i59ZZgmDz/JYFuDvu5OHOixxO8l6Dm+viq/jI0=
X-Received: by 2002:a05:6102:21b4:: with SMTP id
 i20mr4049932vsb.164.1572602119515; 
 Fri, 01 Nov 2019 02:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191101084940.31838-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191101084940.31838-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 1 Nov 2019 09:54:53 +0000
Message-ID: <CAM0jSHMdOOKHROKgGm0hAUP4XSL+Fp02bQL-gFuUJ2N3AaH-1A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Y5ZVUxCUpmyvd/4fTsOKKB1I6+75xGeNKY9zQMV14uI=;
 b=Zd0f1Yu/EB0RZxw8Z0EI8x/+Bkxli2CwkCs2Re4qRWQvVJoGSbDDdcFuhjhpUSjH6J
 zsQC44olzwQzscjyqAueK+yG1H1jk6oLweXQBsU9frE5w7qQrnZ8UN7nSuzMa5sjvQZS
 EUHzuHQsmlBwHFB0CQFeNCsj8Aicc8GKDVEHrd7SAkF5O3FTnIyeGM8L8OgUDf/9C4sz
 S3eFeR5IPzmZEKmVyXD3lLiE4vHOJiYglFxceSVkpbi9LPrUwPZDRtuJpR7P/vi8148R
 V89lUzXJ6irUZLTiuz2xUCPNEZJsR6/TUSZjCsftEqQWfFER8e+pkrCmP8d/iaAVpMTR
 IFXg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Start kthreads before
 stopping
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxIE5vdiAyMDE5IGF0IDA4OjUwLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBbiBpbnRlcmVzdGluZyBvYnNlcnZhdGlvbiBtYWRlIHdp
dGggb3VyIHBhcmFsbGVsIHNlbGZ0ZXN0cyB3YXMgdGhhdCBvbgo+IG91ciBzbWFsbC9zaW5nbGUg
Y3B1IHN5c3RlbXMgd2Ugd291bGQgY2FsbCBrdGhyZWFkX3N0b3AoKSBiZWZvcmUgdGhlCj4ga3Ro
cmVhZHMgd2VyZSBzcGF3bmVkLiBJZiB0aGlzIGhhcHBlbnMsIHRoZSBrdGhyZWFkIGlzIG5ldmVy
IHJ1biBhdCBhbGw7Cj4gY29tcGxldGVseSBieXBhc3NpbmcgdGhlIHRlc3QuCj4KPiBBIHNpbXBs
ZSB5aWVsZCgpIGZyb20gdGhlIHBhcmVudCB3aWxsIGVuc3VyZSB0aGF0IGFsbCBjaGlsZHJlbiBo
YXZlIHRoZQo+IG9wcG9ydHVuaXR5IHRvIHN0YXJ0IGJlZm9yZSB3ZSByZWFwIHRoZW0uCj4KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
