Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A83257A8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 20:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EC08961E;
	Tue, 21 May 2019 18:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE8B8961E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 18:38:54 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id m4so30828291edd.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 11:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=TqFMN/8wT73PSNJYdtdbrDZ3QbpaP88fZbuaFP3tkXo=;
 b=nmjW7E5RpEsqh+4s7/SIAxAzfAyymkixUvFtK4tojukQ+P7sP8pbm5Ag+QddLuwJty
 P+kkXgfPYkVEW/hhBT/I0VS8fEKmOYf41Lc6nNUMwKzdlaTJtDQU4iKDPpyPs/sw2Z5r
 9/5by4ORSCRaj/PmiqhjPxyKWS7rp9zmTNxvbD6Fgl4KALJyJz57FAf/CS4lR6Iu+ZAe
 sclFvYMTcljKxUBFoPpATRw3TnEHR03lHW7Lj8pXIO6+XYhLOzAUgT63DlbOms2cGsPk
 I65/KqUrCsjMCI796hV0bL1FbhYq1oJWcVUGVbucnIk/O36OqK1Gn0t1R/S1SXO4KQPE
 skwA==
X-Gm-Message-State: APjAAAVCu5cAIOkHKewNv2Hykpl68/skdNvHExMCwYf5nPq5v4trM63D
 Js6z7p7HON59uE2tE5wupVGCNGwcst8=
X-Google-Smtp-Source: APXvYqxt6ctza6bvmO/13OnsMujfiK3SCqcjR/bKVvjYknaxcBmZ2tPmc6i23hHlFyclzzui+N38TA==
X-Received: by 2002:a05:6402:1710:: with SMTP id
 y16mr83820147edu.275.1558463933445; 
 Tue, 21 May 2019 11:38:53 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id d24sm6525030edb.5.2019.05.21.11.38.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 11:38:52 -0700 (PDT)
Date: Tue, 21 May 2019 11:38:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190521183850.GA9157@archlinux-epyc>
References: <87904259868782c1ad664d852b27a50c1597cfaa.1556540890.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87904259868782c1ad664d852b27a50c1597cfaa.1556540890.git.jani.nikula@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=TqFMN/8wT73PSNJYdtdbrDZ3QbpaP88fZbuaFP3tkXo=;
 b=YNcfuKDobrhgDUGMzmCkQhLOMvXABfGneYr8IGVT2xohWEAH3Xal4uEnknXZS7/qSx
 XlUDiCfvbYCIVDutsw/eZPJEh5gfBv0tws/yzkDwFK2MR76Iaz/6stdia9aEkYenHuaX
 kYQdJ7avoxaHcbQoaM1/sq2KuM4IYBAa61SGKIkAuyMdmhjp8x1oxgtTOxehJoQpUcEP
 6UCxPf68FgHf8BCBmYJ4Fvg4DkEnWc6c48KOkxS65X2qfrxFSdtdVz2z+oWqcTiEDb/b
 ZmIkxTOU6NlaaexGP9Rjte5cEDGg3a6SaD9k1q+uwpgUaglKQ2zq/9aRicVjBXtheAdX
 VJiA==
Subject: Re: [Intel-gfx] [18/21] drm/i915: extract intel_runtime_pm.h from
 intel_drv.h
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwKCk9uIE1vbiwgQXByIDI5LCAyMDE5IGF0IDAzOjI5OjM2UE0gKzAzMDAsIEphbmkg
TmlrdWxhIHdyb3RlOgo+IEl0IHVzZWQgdG8gYmUgaGFuZHkgdGhhdCB3ZSBvbmx5IGhhZCBhIGNv
dXBsZSBvZiBoZWFkZXJzLCBidXQgb3ZlciB0aW1lCj4gaW50ZWxfZHJ2LmggaGFzIGJlY29tZSB1
bndpZWxkeS4gRXh0cmFjdCBkZWNsYXJhdGlvbnMgdG8gYSBzZXBhcmF0ZQo+IGhlYWRlciBmaWxl
IGNvcnJlc3BvbmRpbmcgdG8gdGhlIGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0
aGUKPiBtb2R1bGFyaXR5IG9mIHRoZSBkcml2ZXIuCj4gCj4gRW5zdXJlIHRoZSBuZXcgaGVhZGVy
IGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8gc28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKPiBpbmNs
dWRlcywgdXNpbmcgZm9yd2FyZCBkZWNsYXJhdGlvbnMgYXMgbmVlZGVkLiBJbmNsdWRlIHRoZSBu
ZXcgaGVhZGVyCj4gb25seSB3aGVyZSBuZWVkZWQsIGFuZCBzb3J0IHRoZSBtb2RpZmllZCBpbmNs
dWRlIGRpcmVjdGl2ZXMgd2hpbGUgYXQgaXQKPiBhbmQgYXMgbmVlZGVkLgo+IAo+IE5vIGZ1bmN0
aW9uYWwgY2hhbmdlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IC0tLQoKPHNuaXA+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMC4uNjkyMjc3
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uaAo+IEBAIC0wLDAgKzEsMTA1IEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQgKi8KPiArLyoKPiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24K
PiArICovCj4gKwo+ICsjaWZuZGVmIF9fSU5URUxfUlVOVElNRV9QTV9IX18KPiArI2RlZmluZSBf
X0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiArCj4gK3N0cnVjdCBkcm1faTkxNV9wcml2
YXRlOwo+ICsKPiArdHlwZWRlZiBkZXBvdF9zdGFja19oYW5kbGVfdCBpbnRlbF93YWtlcmVmX3Q7
CgpKdXN0IGFzIGFuIEZZSSwgdGhpcyBwYXJ0aWN1bGFyIGNoYW5nZSBjYXVzZXMgYSBzbGV3IG9m
IGNsYW5nIHdhcm5pbmdzOgpodHRwczovL3RyYXZpcy1jaS5jb20vQ2xhbmdCdWlsdExpbnV4L2Nv
bnRpbnVvdXMtaW50ZWdyYXRpb24vam9icy8yMDE3NTQ0MjAjTDI0MzUKCkkgYW0gbm90IHN1cmUg
aG93IGV4YWN0bHkgeW91J2QgbGlrZSB0aGlzIHJlc29sdmVkIHNvIEkgZGlkbid0IHdhbnQgdG8K
cHJvdmlkZSBhIHVzZWxlc3MgcGF0Y2guIEkgZmlndXJlZCBJIHdvdWxkIGxldCB5b3Uga25vdyBh
Ym91dCBpdCBhbmQKbGVhdmUgaXQgdXAgdG8geW91LgoKQ2hlZXJzLApOYXRoYW4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
