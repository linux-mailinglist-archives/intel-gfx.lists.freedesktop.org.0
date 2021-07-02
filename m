Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3033BA12C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 15:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9AD6E188;
	Fri,  2 Jul 2021 13:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2A06E16F;
 Fri,  2 Jul 2021 13:22:12 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id g12so6558129qtb.2;
 Fri, 02 Jul 2021 06:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Mv4J5ys30flflh2mN4ouLTrG+fC9KjOKtKl2MgOZP7k=;
 b=aHlgSvHtbsWbQUbthyuKCOzCBbdub0GZz3JTB5QWk6s7di+wEXBwWmrvvXbcgEsixx
 aoW47sITiPWMQwWrB3n9tZEyfyr69Xn2QT5ibdiCPTVCAp3x5n+4tZc4CbbwWeymVD0z
 DPQXLqkw2qedDhWJ/eE/H8UnprdwBfUduq7R8LQnu3RGn2z7HFQ5/JoDhGDRTJhDUI3Y
 Yg/pchWniMRtmeLjG/DpvwevJlbSMm5jx4HA9SbSxlir9CjqArQLzOjSMpRtogEnpIEj
 EuqJ/PzJDMbmVMSqmTIVdoYNDm4siJmF5ySMFDFw+3zMgS1hOcwt2w8pdwmNto6OkX1h
 6sDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Mv4J5ys30flflh2mN4ouLTrG+fC9KjOKtKl2MgOZP7k=;
 b=gK/OcFq4l8EpGvD3jhaI4x32dwbBs7v/6aBkpof5c6iH1eX5u1jHrdt2d5FCRMKhRw
 NXYxJm7f2+ZtDRlnnRQhVIHmY6BkAlwWwRroTgw7Q/kU+75UFUPv594LRAw7OoCvxVWg
 mfUeUmLl30TuChv2HSf3M34ZID7gBkyjc3R2gxtn3ykF7/zaGoN4VQu63DLHZSdCuQVQ
 ol7SnKhnRlvGMKfhQYl4rh9Cv8/P7wwGrggDv1gzUfWgBe6BTgfFgoqNi62bnjvSlieA
 B9A6M7GGjdybeGtlLX2vYvMPbadRXlvIR6D5wT2sZAwvCeyicYC5s01pOTxzX4y8akG8
 0M5w==
X-Gm-Message-State: AOAM532Q/Qly2gz+nEuCpYxcHQ807BaMUFkFQ9XjWlwyJGv0gc5KBLNf
 WFcu2ich3mW/LzdESGSsn9ANZXjoQYrPE5JsWAHlrFzxl7SS1g==
X-Google-Smtp-Source: ABdhPJwdQ1WbiOGCCmfH0VCB1c//Ptzt0p0kc112cythdINB9yMhPqP+3C0qVtt3ccQPVBC8JjwFeh/z3fQWVJvPLCk=
X-Received: by 2002:ac8:60d:: with SMTP id d13mr5083948qth.223.1625232131188; 
 Fri, 02 Jul 2021 06:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210701151019.1103315-1-matthew.auld@intel.com>
 <20210701151019.1103315-3-matthew.auld@intel.com>
In-Reply-To: <20210701151019.1103315-3-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 2 Jul 2021 14:21:44 +0100
Message-ID: <CAM0jSHOjukUd0gu-VE49RT3zf-Uvh6ehypR1x9r12iBcDOUUYQ@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/uapi: reject set_domain for
 discrete
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 kenneth.w.graunke@intel.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxIEp1bCAyMDIxIGF0IDE2OjEwLCBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gVGhlIENQVSBkb21haW4gc2hvdWxkIGJlIHN0YXRpYyBmb3Ig
ZGlzY3JldGUsIGFuZCBvbiBERzEgd2UgZG9uJ3QgbmVlZAo+IGFueSBmbHVzaGluZyBzaW5jZSBl
dmVyeXRoaW5nIGlzIGFscmVhZHkgY29oZXJlbnQsIHNvIHJlYWxseSBhbGwgdGhpcwo+IGRvZXMg
aXMgYW4gb2JqZWN0IHdhaXQsIGZvciB3aGljaCB3ZSBoYXZlIGFuIGlvY3RsLiBMb25nZXIgdGVy
bSB0aGUKPiBkZXNpcmVkIGNhY2hpbmcgc2hvdWxkIGJlIGFuIGltbXV0YWJsZSBjcmVhdGlvbiB0
aW1lIHByb3BlcnR5IGZvciB0aGUKPiBCTywgd2hpY2ggY2FuIGJlIHNldCB3aXRoIHNvbWV0aGlu
ZyBsaWtlIGdlbV9jcmVhdGVfZXh0Lgo+Cj4gT25lIG90aGVyIHVzZXIgaXMgaXJpcyArIHVzZXJw
dHIsIHdoaWNoIHVzZXMgdGhlIHNldF9kb21haW4gdG8gcHJvYmUgYWxsCj4gdGhlIHBhZ2VzIHRv
IGNoZWNrIGlmIHRoZSBHVVAgc3VjY2VlZHMsIGhvd2V2ZXIga2VlcGluZyB0aGUgc2V0X2RvbWFp
bgo+IGFyb3VuZCBqdXN0IGZvciB0aGF0IHNlZW1zIHJhdGhlciBzY3VmZmVkLiBXZSBjb3VsZCBl
cXVhbGx5IGp1c3Qgc3VibWl0Cj4gYSBkdW1teSBiYXRjaCwgd2hpY2ggc2hvdWxkIGhvcGVmdWxs
eSBiZSBnb29kIGVub3VnaCwgb3RoZXJ3aXNlIGFkZGluZyBhCj4gbmV3IGNyZWF0aW9uIHRpbWUg
ZmxhZyBmb3IgdXNlcnB0ciBtaWdodCBiZSBhbiBvcHRpb24uIEFsdGhvdWdoIGxvbmdlcgo+IHRl
cm0gd2Ugd2lsbCBhbHNvIGhhdmUgdm1fYmluZCwgd2hpY2ggc2hvdWxkIGFsc28gYmUgYSBuaWNl
IGZpdCBmb3IKPiB0aGlzLCBzbyBhZGRpbmcgYSB3aG9sZSBuZXcgZmxhZyBpcyBsaWtlbHkgb3Zl
cmtpbGwuCgpLZW5uZXRoLCBkbyB5b3UgaGF2ZSBhIHByZWZlcmVuY2UgZm9yIHRoZSBpcmlzICsg
dXNlcnB0ciB1c2UgY2FzZT8KQWRkaW5nIHRoZSBmbGFnIHNob3VsZG4ndCBiZSBtdWNoIHdvcmss
IGlmIHlvdSBmZWVsIHRoZSBkdW1teSBiYXRjaCBpcwp0b28gdWdseS4gSSBkb24ndCBtaW5kIGVp
dGhlciB3YXkuCgo+Cj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
Pgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IEpvcmRhbiBKdXN0ZW4gPGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+Cj4g
Q2M6IEtlbm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgo+IENjOiBKYXNvbiBF
a3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gQ2M6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
IHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwo+IGluZGV4IDQzMDA0YmVmNTVjYi4u
YjY4NGE2MmJmM2IwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kb21haW4uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYwo+IEBAIC00OTAsNiArNDkwLDkgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgICAgICAgdTMyIHdyaXRlX2Rv
bWFpbiA9IGFyZ3MtPndyaXRlX2RvbWFpbjsKPiAgICAgICAgIGludCBlcnI7Cj4KPiArICAgICAg
IGlmIChJU19ER0ZYKHRvX2k5MTUoZGV2KSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5P
REVWOwo+ICsKPiAgICAgICAgIC8qIE9ubHkgaGFuZGxlIHNldHRpbmcgZG9tYWlucyB0byB0eXBl
cyB1c2VkIGJ5IHRoZSBDUFUuICovCj4gICAgICAgICBpZiAoKHdyaXRlX2RvbWFpbiB8IHJlYWRf
ZG9tYWlucykgJiBJOTE1X0dFTV9HUFVfRE9NQUlOUykKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7Cj4gLS0KPiAyLjI2LjMKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
