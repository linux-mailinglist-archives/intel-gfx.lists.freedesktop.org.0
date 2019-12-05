Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B1A11491A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 23:15:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E796F917;
	Thu,  5 Dec 2019 22:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684AE6F913
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 22:15:27 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id a15so5539024wrf.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2019 14:15:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=T74LspN/Sim+aWkc3QHBB9fwPjBZNd60Uk/Nv28Du/s=;
 b=ue/IeebXJ0iRv1EUxVClne3CN+OE0mAikj56XytMPYiL97BxOeYtFSTv1SWeBmgFne
 L3UHhto9wBEzzSGJPK7f4oLFIdLQCMo3RL4ULmv191qNwMiXMbBvqKVnHrk3siKCAJFN
 ACYP7prEKwyt8bkq2wPBOyeTLOmIqi8VQfn6lHTQPEmQLDCDTz60XETCjevfrvO5fv1M
 KYBWpdAbyVh4tPGwFG4ASGlWKpKSZ4Gz/vNcJHbltPvx6M9eb/dAAVRdfvAKsI2Kvs7n
 LkTbcm1FKlMgIaE34Br5Y3UnsrAyFTkytuSu4HdbtCc6kYsmYsn8eKBp6P1A1uYbhhId
 1UjQ==
X-Gm-Message-State: APjAAAVyOPB9mtN+Uxi76kUWc3OV3cFbJoNzgSHw18WpwrS3872QFiFL
 7ElyKWc8vKvLucRX0fKr6bGDGw==
X-Google-Smtp-Source: APXvYqz2KJmQcVZo2r5BWhzFvwZPfcySceP+bjA7xkG8teU2GR/4Qey+iWFI3/WNGKhPpgOSz0qn9A==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr12955371wru.235.1575584126055; 
 Thu, 05 Dec 2019 14:15:26 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t8sm13854615wrp.69.2019.12.05.14.15.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 14:15:25 -0800 (PST)
Date: Thu, 5 Dec 2019 23:15:23 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20191205221523.GN624164@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 dri-devel@lists.freedesktop.org, robh@kernel.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Christian Koenig <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>,
 open list <linux-kernel@vger.kernel.org>
References: <20191127092523.5620-1-kraxel@redhat.com>
 <20191127092523.5620-2-kraxel@redhat.com>
 <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T74LspN/Sim+aWkc3QHBB9fwPjBZNd60Uk/Nv28Du/s=;
 b=i3jTCa8yIkbx58G3q/lJhtF3uXRMcCBgX05lrNWCZ17Wzwy1NodjGtRuyLoT4LMqKj
 k/GElPm4yaYnYMETcCdJLQArY2ISn53cMG2CyfS5HiU4a1vxFkeL8yg6b8juEIuv+rPG
 r8HQyM2HJvKduKGqrFcHTYWdMDIVchw7pgoNE=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
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
Cc: robh@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Huang Rui <ray.huang@amd.com>, dri-devel@lists.freedesktop.org,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTI6Mzk6MzBQTSArMDEwMCwgR2VyZCBIb2ZmbWFubiB3
cm90ZToKPiBPbiBXZWQsIE5vdiAyNywgMjAxOSBhdCAxMDoyNToyMkFNICswMTAwLCBHZXJkIEhv
ZmZtYW5uIHdyb3RlOgo+ID4gVGhlIGZha2Ugb2Zmc2V0IGlzIGdvaW5nIHRvIHN0YXksIHNvIGNo
YW5nZSB0aGUgY2FsbGluZyBjb252ZW50aW9uIGZvcgo+ID4gZHJtX2dlbV9vYmplY3RfZnVuY3Mu
bW1hcCB0byBpbmNsdWRlIHRoZSBmYWtlIG9mZnNldC4gIFVwZGF0ZSBhbGwgdXNlcnMKPiA+IGFj
Y29yZGluZ2x5Lgo+ID4gCj4gPiBOb3RlIHRoYXQgdGhpcyByZXZlcnRzIDgzYjhhNmYyNDJlYSAo
ImRybS9nZW06IEZpeCBtbWFwIGZha2Ugb2Zmc2V0Cj4gPiBoYW5kbGluZyBmb3IgZHJtX2dlbV9v
YmplY3RfZnVuY3MubW1hcCIpIGFuZCBvbiB0b3AgdGhlbiBhZGRzIHRoZSBmYWtlCj4gPiBvZmZz
ZXQgdG8gIGRybV9nZW1fcHJpbWVfbW1hcCB0byBtYWtlIHN1cmUgYWxsIHBhdGhzIGxlYWRpbmcg
dG8KPiA+IG9iai0+ZnVuY3MtPm1tYXAgYXJlIGNvbnNpc3RlbnQuCj4gPiAKPiA+IHYzOiBtb3Zl
IGZha2Utb2Zmc2V0IHR3ZWFrIGluIGRybV9nZW1fcHJpbWVfbW1hcCgpIHNvIHdlIGhhdmUgdGhp
cyBjb2RlCj4gPiAgICAgb25seSBvbmNlIGluIHRoZSBmdW5jdGlvbiAoUm9iIEhlcnJpbmcpLgo+
IAo+IE5vdyB0aGlzIHNlcmllcyBmYWlscyBpbiBJbnRlbCBDSS4gIENhbid0IHNlZSB3aHkgdGhv
dWdoLiAgVGhlCj4gZGlmZmVyZW5jZSBiZXR3ZWVuIHYyIGFuZCB2MyBpcyBqdXN0IHRoZSBwbGFj
ZSB3aGVyZSB2bWEtPnZtX3Bnb2ZmIGdldHMKPiB1cGRhdGVkLCBhbmQgbm8gY29kZSBiZXR3ZWVu
IHRoZSB2MiBhbmQgdjMgbG9jYXRpb24gdG91Y2hlcyB2bWEgLi4uCgpMb29rcyBsaWtlIHVucmVs
YXRlZCBmbHVrZXMsIHRoaXMgaGFwcGVucyBvY2Nhc2lvbmFsbHkuIElmIHlvdSdyZSBwYXJhbm9p
ZApoaXQgdGhlIHJldGVzdCBidXR0b24gb24gcGF0Y2h3b3JrIHRvIGRvdWJsZS1jaGVjay4KLURh
bmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRp
b24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
