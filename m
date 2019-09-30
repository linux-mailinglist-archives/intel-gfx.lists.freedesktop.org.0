Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A67C260B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 20:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D01288843;
	Mon, 30 Sep 2019 18:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2622A88843
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 18:37:51 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id x10so7853206pgi.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 11:37:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4+MKTWWRmg84K7WieKH6YGNmlrmkbRqXldRrmLwVnKU=;
 b=F3tMA2ZGGo9PMmTg9IWj4cfYY3dG/I2kdIffkZFB7OfdmZkR2DRieQ5xMtNju59XJY
 byV2lTQgnA/bz4ffVxnL51RqeVashqXdHqxpDi+T+Zvc6dolKiWtd/8xUNV6ynH2FWwz
 NK0Ud5L1hUKNTBWZCB/+xKe5iyaglr06OShGPMa/69z/+YXAx3yi6xceuZzn+192nOzI
 +euaxB6WTND7I46atRJAMfRDyHxWKeFkIZp2Uha37oIi4C61Ng+SxX6F704NEsSqrIkb
 Odcd1vCSAl51M3+3z6k+Cp/zoKonW4sqDqvss6oKXT0BOV0DqCedIcJYLVcoQZJQfgHd
 jbqg==
X-Gm-Message-State: APjAAAXx1EnPkhNZzH/roTi+oi59FZmpZlS0wl9sgKhIDqJk+zuLMkks
 11yZ6SZJA7IRQBAzlNQRxKPVNM7G
X-Google-Smtp-Source: APXvYqztTRDVsGOQ2gKva1hhTFp9sEvbcbzhhTVmu+LSeVM4QULy7CD5Obb3etNOG4KpnpRELG6zaA==
X-Received: by 2002:a17:90a:28a5:: with SMTP id
 f34mr667905pjd.93.1569868670561; 
 Mon, 30 Sep 2019 11:37:50 -0700 (PDT)
Received: from ldmartin-desk1 ([192.55.54.42])
 by smtp.gmail.com with ESMTPSA id d6sm15732615pgj.22.2019.09.30.11.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 11:37:48 -0700 (PDT)
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
X-Google-Original-From: Lucas De Marchi <lucas.demarchi@gmail.com>
Date: Mon, 30 Sep 2019 11:37:41 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190930183741.GA2967@ldmartin-desk1>
References: <20190922170807.12436-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190922170807.12436-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=4+MKTWWRmg84K7WieKH6YGNmlrmkbRqXldRrmLwVnKU=;
 b=IaBOHsvu47n6178x9vC8z0d4XVDpKSWDJzdQ8ks7vcOJFY3no0J6s002331Apv5hTO
 ZAqdi/ixJr4Pl21hbQq6soJCKqgt41ADvp9Ibssp8+mbl3PVEefMf3KNTWwxNe48T/NM
 vUai8Mjkc7BDVk2uzI6AcFaySQJ+uP+mBnvCQW2Y1n/YezCqvfEy2luTfXWm2PZQNSpq
 5cC+vrxw/hoFa5UNKGH3XO9lop7zw/DH0ONkeND+V1VWqEfClrnoFoYAkxbUQpbuCZvB
 AtRA81b9am+YTUhlDuJouL/BU3GTE5MtNdkEbEuoZt5OaS8PQ5VyaCVsDwRoRKb064Of
 8k9Q==
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/display/icl: Save Master
 transcoder in slave's crtc_state for Transcoder Port Sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBTZXAgMjIsIDIwMTkgYXQgMTA6MDg6MDJBTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPkluIGNhc2Ugb2YgdGlsZWQgZGlzcGxheXMgd2hlbiB0aGUgdHdvIHRpbGVzIGFyZSBz
ZW50IGFjcm9zcyB0d28gQ1JUQ3MKPm92ZXIgdHdvIHNlcGFyYXRlIERQIFNTVCBjb25uZWN0b3Jz
LCB3ZSBuZWVkIGEgbWVjaGFuaXNtIHRvIHN5bmNocm9uaXplCj50aGUgdHdvIENSVENzIGFuZCB0
aGVpciBjb3JyZXNwb25kaW5nIHRyYW5zY29kZXJzLgo+U28gdXNlIHRoZSBtYXN0ZXItc2xhdmUg
bW9kZSB3aGVyZSB0aGVyZSBpcyBvbmUgbWFzdGVyIGNvcnJlc3BvbmRpbmcKPnRvIGxhc3QgaG9y
aXpvbnRhbCBhbmQgdmVydGljYWwgdGlsZSB0aGF0IG5lZWRzIHRvIGJlIGdlbmxvY2tlZCB3aXRo
Cj5hbGwgb3RoZXIgc2xhdmUgdGlsZXMuCj5UaGlzIHBhdGNoIGlkZW50aWZpZXMgc2F2ZXMgdGhl
IG1hc3RlciB0cmFuc2NvZGVyIGluIGFsbCB0aGUgc2xhdmUKPkNSVEMgc3RhdGVzLiBUaGlzIGlz
IG5lZWRlZCB0byBzZWxlY3QgdGhlIG1hc3RlciBDUlRDL3RyYW5zY29kZXIKPndoaWxlIGNvbmZp
Z3VyaW5nIHRyYW5zY29kZXIgcG9ydCBzeW5jIGZvciB0aGUgY29ycmVzcG9uZGluZyBzbGF2ZXMu
Cj4KPnY0Ogo+KiBSZWJhc2UKPnYzOgo+KiBVc2UgbWFzdGVyX3RyYW1zY29kZXIgaW5zdGVhZCBv
ZiBtYXN0ZXJfY3J0YyBmb3IgdmFsaWQKPkhXIHN0YXRlIHJlYWRvdXRzIChWaWxsZSkKPnYyOgo+
KiBNb3ZlIHRoaXMgdG8gaW50ZWxfbW9kZV9zZXRfcGlwZV9jb25maWcoSmFuaSBOLCBWaWxsZSkK
PiogVXNlIHNsYXZlX2JpdG1hc2sgdG8gc2F2ZSBhc3NvY2lhdGVkIHNsYXZlcyBpbiBtYXN0ZXIg
Y3J0YyBzdGF0ZSAoVmlsbGUpCj4KPkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgo+Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj5DYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+U2lnbmVk
LW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPlJldmll
d2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
IHwgMTIzICsrKysrKysrKysrKysrKysrKwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oICB8ICAgMyArCj4gLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgICA2ICsKPiAzIGZpbGVzIGNoYW5nZWQsIDEzMiBpbnNlcnRpb25z
KCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj5p
bmRleCBjMDViYTZhZjYyMjYuLjRmZjM3NWQ1ODUyZCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+QEAgLTUyMSw2ICs1MjEsMjQgQEAgbmVlZHNf
bW9kZXNldChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqc3RhdGUpCj4gCXJldHVybiBk
cm1fYXRvbWljX2NydGNfbmVlZHNfbW9kZXNldCgmc3RhdGUtPmJhc2UpOwo+IH0KPgo+K2Jvb2wK
Pitpc190cmFuc19wb3J0X3N5bmNfbW9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4rCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnN0YXRlKQoKb24gVEdMIHdl
IG5vdyBhbHNvIG5lZWQgYSBtYXN0ZXIgdHJhbnNjb2RlciBmb3IgRFAtTVNULiBJJ20gd29uZGVy
aW5nIGlmCndlIGNvdWxkbid0IHJldXNlIHRoZSBzYW1lIG1lY2hhbmlzbSBzbyB3ZSB3b3VsZCBk
aXNzb2NpYXRlIGEgbGl0dGxlIGJpdAp0aGUgcG9ydF9zeW5jX21vZGUgZnJvbSBzYXZpbmcgb3Ig
c2VhcmNoaW5nIGZvciBhIG1hc3RlciB0cmFuc2NvZGVyCmluIGNydGNfc3RhdGUuCgo+QEAgLTEy
MzY5LDYgKzEyNDc4LDE1IEBAIGludGVsX21vZGVzZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQo+IAlkcm1fbW9kZV9zZXRfY3J0Y2luZm8oJnBpcGVf
Y29uZmlnLT5iYXNlLmFkanVzdGVkX21vZGUsCj4gCQkJICAgICAgQ1JUQ19TVEVSRU9fRE9VQkxF
KTsKPgo+KwkvKiBTZXQgdGhlIGNydGNfc3RhdGUgZGVmYXVsdHMgZm9yIHRyYW5zX3BvcnRfc3lu
YyAqLwo+KwlwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09E
RVI7Cgpjb3VsZCB3ZSBnZXQgYXdheSB3aXRoIHRoZSBJTlZBTElEX1RSQU5TQ09ERVIgYnkgc2lt
cGx5IG1ha2luZwpwaXBlX2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBwaXBlX2NvbmZpZy0+
Y3B1X3RyYW5zY29kZXI/Cgp0aGVuIHdlIGNhbiBhbHdheXMgbWFrZSBzdXJlIGl0J3MgYXNzaWdu
ZWQgdG8gc29tZXRoaW5nIHZhbGlkCmFuZCB1c2UgaXQgaW4gdGhlIGNhc2VzIGl0IG1ha2VzIHNl
bnNlIChwb3J0IHN5bmMgbW9kZSBhbmQgZHAtbXN0KS4KCkx1Y2FzIERlIE1hcmNoaQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
