Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B47BE3F88
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 00:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83756E83F;
	Thu, 24 Oct 2019 22:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA486E5C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 18:19:13 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id y127so19963368lfc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S5ShztUsALeRW4hPr8zQcQKBfUT2jnGLKEuha25W6v0=;
 b=fzgptBOngrYsD0+lyJPdAdsPqvMN92iVBZmzMEtIpGNNuBx4dC/oYWKylgT1TKrXwF
 JmEfWO3yzwatiGn7bVXe2f7JeMBi+I2aQRkx5ciSHF1jM6XU3v8gufoO0MC6wVs2Qt+p
 2NlYP/pUigN8Xw3L7UVO+QWxBKrR4GElh+XV1d7f2caOmtmycXKaEscsQ6roA/fDgRMO
 +Y/2kdLhWC29uFnMZhRFdhE2j7mzAu8+kbllEIdZ8YxizOVjON7LAQATdBhUif9oYEOt
 i9fbrHp9UeBI64QxIh2dWh29bFR2ovVX/n6ABj/Y4lB1xv6UbXz20VrMr+JK5hqXa9pe
 Qf3Q==
X-Gm-Message-State: APjAAAWLCI67e0dIx2gKufn8qdL7xbFr8Tfe1eEmuUnjKYtppa8K/yOV
 W8foPbDMvPU9ifX+mPX1euibrEp4/NKc/cNL0Tl4eVTyU44=
X-Google-Smtp-Source: APXvYqyh7nLRdxI8lQoBuFHtLduEGM+WhWquiMc1W+yKM/pw5NWeG+izqf6kB4IZ/TOoAMkH0TOZJMtv49DorV/Mk4I=
X-Received: by 2002:ac2:5604:: with SMTP id v4mr21191966lfd.148.1571941150866; 
 Thu, 24 Oct 2019 11:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191023001206.15741-1-rajatja@google.com>
 <20191024014832.27072.65879@emeril.freedesktop.org>
 <87blu6eif9.fsf@intel.com>
In-Reply-To: <87blu6eif9.fsf@intel.com>
From: Rajat Jain <rajatja@google.com>
Date: Thu, 24 Oct 2019 11:18:34 -0700
Message-ID: <CACK8Z6H9D2Hqr4pb-9K4Y-Z2VJzXVDiDv_Pg2tP-Qn3LZ3XhzQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
X-Mailman-Approved-At: Thu, 24 Oct 2019 22:51:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=S5ShztUsALeRW4hPr8zQcQKBfUT2jnGLKEuha25W6v0=;
 b=KrJcpNPfSqnCSUuC7A79v0mqls8z45P3PfF8nkeGFXKg7WZAQS53hGAk2fskfcVUmi
 T0+9HVM2jMd3dhn7cD0EZnbAjorwUSXGe8cJzGza52wFSLbi4g1hpcleNRtk3TukJ5zf
 o1ZsgMbfD8B3RDHnD+Xahoq8gznz+SPpcHcW8uT+/+Cmh3jyr7n/pvwFErCLS8/M+3WD
 4gADSpOmBcyAcI5V+GzwHNJdVTMqzyYK71u3NpRIDoPgkeA521oSmdUCoU5oc/D6hjDW
 9InOKPaxZkovATygmi6eVn0GT7NTsHB4Rg7oY3B72DumEKR5DMh1wrIG2lBDrtFUirEY
 nCrg==
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
	=?utf-8?q?rm=3A_Add_support_for_integrated_privacy_screens?=
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

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMTI6MDEgQU0gSmFuaSBOaWt1bGEKPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDI0IE9jdCAyMDE5LCBQYXRjaHdv
cmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToKPiA+ID09IFNlcmll
cyBEZXRhaWxzID09Cj4gPgo+ID4gU2VyaWVzOiBkcm06IEFkZCBzdXBwb3J0IGZvciBpbnRlZ3Jh
dGVkIHByaXZhY3kgc2NyZWVucwo+ID4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY4NDcyLwo+ID4gU3RhdGUgOiBmYWlsdXJlCj4gPgo+ID4gPT0gU3Vt
bWFyeSA9PQo+ID4KPiA+IENBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCj4gPiAgIENB
TEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAo+ID4gICBERVNDRU5EICBvYmp0
b29sCj4gPiAgIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCj4gPiBLZXJuZWw6
IGFyY2gveDg2L2Jvb3QvYnpJbWFnZSBpcyByZWFkeSAgKCMxKQo+ID4gICBCdWlsZGluZyBtb2R1
bGVzLCBzdGFnZSAyLgo+ID4gICBNT0RQT1NUIDEyMiBtb2R1bGVzCj4gPiBFUlJPUjogImRybV9w
cml2YWN5X3NjcmVlbl9wcmVzZW50IiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNS5rb10gdW5k
ZWZpbmVkIQo+Cj4gVGhpcyBtZWFucyB5b3UgbmVlZCB0byBFWFBPUlRfU1lNQk9MKGRybV9wcml2
YWN5X3NjcmVlbl9wcmVzZW50KS4KClNvcnJ5LCB3aWxsIGRvLgoKPgo+IEJSLAo+IEphbmkuCj4K
PiA+IHNjcmlwdHMvTWFrZWZpbGUubW9kcG9zdDo5MzogcmVjaXBlIGZvciB0YXJnZXQgJ19fbW9k
cG9zdCcgZmFpbGVkCj4gPiBtYWtlWzFdOiAqKiogW19fbW9kcG9zdF0gRXJyb3IgMQo+ID4gTWFr
ZWZpbGU6MTI4MjogcmVjaXBlIGZvciB0YXJnZXQgJ21vZHVsZXMnIGZhaWxlZAo+ID4gbWFrZTog
KioqIFttb2R1bGVzXSBFcnJvciAyCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4KPiAtLQo+IEphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
