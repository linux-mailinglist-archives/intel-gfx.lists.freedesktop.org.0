Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B45253D07
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 07:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3119C6E227;
	Thu, 27 Aug 2020 05:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364B66E227
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 05:05:02 +0000 (UTC)
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kBA5s-0007kl-H3
 for intel-gfx@lists.freedesktop.org; Thu, 27 Aug 2020 05:05:00 +0000
Received: by mail-pf1-f200.google.com with SMTP id b142so3202892pfb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 22:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YdElzvEEzIZMoY70IuBjuGvXpacb2hD+V+ygH2R0Kww=;
 b=fU0eMphReRARU2XeODePVXgWbjMZJM1O/mt39JfuYL/r8Bsv87fcbj3UUb9wPKU8lz
 v4m1l/hSmk+QTwGoEBejsp1wsES/RkrYSRmmlHSUuCGfNfH2i2Qie6CkJbuX/H02a0TU
 gNWV2zqCRn+lDG2fT44kHY16hmOKTRiMuW/+0ESamT+/xT0qPy/VeTLYfB+wOLpUqKLa
 nVKQ+xhHshIXSw9MXD5TjfPVvnev/6I3COTMDITtzFO+sNIE2l58ChVdk4723qvEY5Pz
 29vuk8dzJ5eBijsYFMzpg29t0o51XIjyjxdblbwTu2C1gcxiUh2NtitE08FppjvHCe6e
 LcLg==
X-Gm-Message-State: AOAM532IWFm2+ShRU8VZXog+saGknIblN/dolZFenJDtK93RJjORGP+w
 DTmSHnM34qqS5mOqF6GBGJXQvxKJ6z/z69LSPRJoiiEWZf8T5/BMSeJ1FdgtZJyimna/NQI/ZVQ
 1hIwXAoli54gc8Sh31m4fIdJjlf295ZK3oLQYGc6tBPOEZA==
X-Received: by 2002:a17:902:6901:: with SMTP id
 j1mr13760853plk.324.1598504699131; 
 Wed, 26 Aug 2020 22:04:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+UGqUliAa1+G+gZIQl310W3J/Ylr5FD4q1saGLt0R+NEWvYJ1bqF+bGNBf4XTpqrtBbJ9xg==
X-Received: by 2002:a17:902:6901:: with SMTP id
 j1mr13760821plk.324.1598504698624; 
 Wed, 26 Aug 2020 22:04:58 -0700 (PDT)
Received: from [10.101.46.234] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id e18sm706862pgr.53.2020.08.26.22.04.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Aug 2020 22:04:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200826162458.GP6112@intel.com>
Date: Thu, 27 Aug 2020 13:04:54 +0800
Message-Id: <6D40F1E0-AFF6-4D38-BB9B-C52B43F83266@canonical.com>
References: <20200826052143.17607-1-kai.heng.feng@canonical.com>
 <20200826162458.GP6112@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lspcon: Limits to 8 bpc for
 RGB/YCbCr444
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgo+IE9uIEF1ZyAyNywgMjAyMCwgYXQgMTI6MjQgQU0sIFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IAo+IE9uIFdlZCwgQXVn
IDI2LCAyMDIwIGF0IDAxOjIxOjE1UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+IExT
UENPTiBvbmx5IHN1cHBvcnRzIDggYnBjIGZvciBSR0IvWUNiQ3I0NDQuCj4+IAo+PiBTZXQgdGhl
IGNvcnJlY3QgYnBwIG90aGVyd2lzZSBpdCByZW5kZXJzIGJsYW5rIHNjcmVlbi4KPiAKPiBIbW0u
IERvZXMgCj4gZ2l0Oi8vZ2l0aHViLmNvbS92c3lyamFsYS9saW51eC5naXQgZHBfZG93bnN0cmVh
bV9wb3J0c181Cj4gd29yaz8KPiAKPiBBY3R1YWxseSBiZXR0ZXIgbWFrZSB0aGF0IGRwX2Rvd25z
dHJlYW1fcG9ydHNfNV5eXl5eXl5eXl5eIGFrYS4KPiA1NGQ4NDZjZTYyYTIgKCJkcm0vaTkxNTog
RG8gWUNiQ3IgNDQ0LT40MjAgY29udmVyc2lvbiB2aWEgRFAgcHJvdG9jb2wKPiBjb252ZXJ0ZXJz
IikgdG8gYXZvaWQgdGhlIGV4cGVyaW1lbnRzIGFuZCBoYWNrcyBJIGhhdmUgc2l0dGluZyBvbiB0
b3AuCgpDYW4geW91IHBsZWFzZSByZWJhc2UgaXQgdG8gbWFpbmxpbmUgbWFzdGVyIG9yIGRybS10
aXA/CgpJIGFtIGdldHRpbmcgZXJyb3JzIG9uIHRoZSBicmFuY2g6CgogIERFU0NFTkQgIG9ianRv
b2wKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDQUxMICAgIHNj
cmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGls
ZS5oCiAgQnVpbGRpbmcgbW9kdWxlcywgc3RhZ2UgMi4KICBNT0RQT1NUIDE2NiBtb2R1bGVzCiAg
TEQgICAgICBhcmNoL3g4Ni9ib290L2NvbXByZXNzZWQvdm1saW51eApsZDogYXJjaC94ODYvYm9v
dC9jb21wcmVzc2VkL3BndGFibGVfNjQubzooLmJzcysweDApOiBtdWx0aXBsZSBkZWZpbml0aW9u
IG9mIGBfX2ZvcmNlX29yZGVyJzsgYXJjaC94ODYvYm9vdC9jb21wcmVzc2VkL2thc2xyXzY0Lm86
KC5ic3MrMHgwKTogZmlyc3QgZGVmaW5lZCBoZXJlCmxkOiBhcmNoL3g4Ni9ib290L2NvbXByZXNz
ZWQvaGVhZF82NC5vOiB3YXJuaW5nOiByZWxvY2F0aW9uIGluIHJlYWQtb25seSBzZWN0aW9uIGAu
aGVhZC50ZXh0JwpsZDogd2FybmluZzogY3JlYXRpbmcgRFRfVEVYVFJFTCBpbiBhIFBJRQptYWtl
WzJdOiAqKiogW2FyY2gveDg2L2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZToxMTk6IGFyY2gveDg2
L2Jvb3QvY29tcHJlc3NlZC92bWxpbnV4XSBFcnJvciAxCm1ha2VbMV06ICoqKiBbYXJjaC94ODYv
Ym9vdC9NYWtlZmlsZToxMTM6IGFyY2gveDg2L2Jvb3QvY29tcHJlc3NlZC92bWxpbnV4XSBFcnJv
ciAyCm1ha2U6ICoqKiBbYXJjaC94ODYvTWFrZWZpbGU6Mjg0OiBiekltYWdlXSBFcnJvciAyCm1h
a2U6ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCgpLYWktSGVuZwoKPiAKPj4g
Cj4+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy8yMTk1Cj4+IFNpZ25lZC1vZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdA
Y2Fub25pY2FsLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHNwY29uLmMgfCAzICsrLQo+PiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9sc3Bjb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHNwY29uLmMKPj4gaW5kZXggYjc4MWJmNDY5NjQ0Li5jN2E0NGZjYWFkZTggMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwo+PiBAQCAtMTk2LDcg
KzE5Niw4IEBAIHZvaWQgbHNwY29uX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yLAo+PiAJCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgLz0gMjsKPj4gCQljcnRj
X3N0YXRlLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQ0NDsKPj4g
CQljcnRjX3N0YXRlLT5sc3Bjb25fZG93bnNhbXBsaW5nID0gdHJ1ZTsKPj4gLQl9Cj4+ICsJfSBl
bHNlCj4+ICsJCWNydGNfc3RhdGUtPnBpcGVfYnBwID0gMjQ7Cj4+IH0KPj4gCj4+IHN0YXRpYyBi
b29sIGxzcGNvbl9wcm9iZShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCj4+IC0tIAo+PiAy
LjE3LjEKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
