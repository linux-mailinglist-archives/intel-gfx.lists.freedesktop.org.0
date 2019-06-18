Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92CF4A1A7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129626E0C4;
	Tue, 18 Jun 2019 13:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AAA56E0C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:06:24 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id a97so5797787uaa.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 06:06:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fag61c3s9hLT5o5vd4plNrk2mnB5o3m+kwt8HVqBggU=;
 b=WYVTibDQzijYOIUB9kN8+GQK+Gn6fsCrT4GE18BzCYql1dwleFROrfgnSZtLBypR42
 Gn04J/gcohwVB0zgUBaiKd76OCulCe0xVPWSVzLVlghMx6AMAjsBv+nLVSDU3VCJhqPp
 rZSQQ+5WNCTHSeppJmq0siy2MKwK7Nb62s4Uq3q6+AtADFKk8vzb/lBhVOFoC5pp3SxD
 E5ZVqjQGheiXYVV7SlElR3pPLAKNrBy5ytMLO58ozLp+7Bv1IjZqRrLWlpuUFKeEIVyJ
 B0vJ3NGg8pYZ+OnL5H3Ul378+Hk2G6wv/QizS92fWD0xj8mqEjIqNebbOpOPb+wCjNlU
 e4JA==
X-Gm-Message-State: APjAAAUtQs0Vov4j1f4TC7/WI4s4MysHCCJD5V91lHNHWLsJ0EjeWzQv
 hXm8bhaSA7F7+yWnkjL6lQPEUebibdX3dUy7VFhMq9+V
X-Google-Smtp-Source: APXvYqxeVcvs0bfOWblXYodfbonwpZK2MGohYXt9pJjoAv0YmuR/QWd21Ju/xvrOpHBtCLK2w8Lx+mDT3wxha354dY8=
X-Received: by 2002:a67:3254:: with SMTP id y81mr24395857vsy.34.1560863183198; 
 Tue, 18 Jun 2019 06:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125858.7295-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190618125858.7295-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Jun 2019 14:05:56 +0100
Message-ID: <CAM0jSHNkfT+-F=NpWJX-p-SAVfffWp=CiAJhzhyjuHZ9Dk=c_w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Fag61c3s9hLT5o5vd4plNrk2mnB5o3m+kwt8HVqBggU=;
 b=Fc1cnsR+5m1Nnbw6woBIc3JS82CeHCU105Lj3I5GKvgKuZBUXHHn3XjnN5aOOFtgxN
 CgfGNESToLjYUgQdLba9gXRUUT4cH1LNHbTaBkNs4gPMEXRvyjyyqu5LDDhSU62RAbWS
 SJ6tT6AJSSIFwB2OoMYT3fmIUzwoBWjSoncLIRXrIESe27vXOcZ0FUqqFbexi7vFCwBJ
 /StaWiypouxR8HyWL6Nda4l9KneFBHmgMvj+EvCI+K+4GGZObW1Ka/p02FzM6qhQUsN9
 PZCtFDYZNOLgogAhcZYtNyiSzzT/cFy24jatqvRMSa8YRKx/Hy8teGwI79SdI9amDDMg
 RxkA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_gem_object.resv
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
 Matthew Auld <matthew.auld@intel.com>, Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBKdW4gMjAxOSBhdCAxMzo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgY29tbWl0IDFiYTYyNzE0OGVmNSAoImRybTog
QWRkIHJlc2VydmF0aW9uX29iamVjdCB0bwo+IGRybV9nZW1fb2JqZWN0IiksIHN0cnVjdCBkcm1f
Z2VtX29iamVjdCBncmV3IGl0cyBvd24gYnVpbHRpbgo+IHJlc2VydmF0aW9uX29iamVjdCByZW5k
ZXJpbmcgb3VyIG93biBwcml2YXRlIG93biBibG9hdC4gUmVtb3ZlIG91cgo+IHJlZHVuZGFudCBy
ZXNlcnZhdGlvbl9vYmplY3QgYW5kIHBvaW50IGludG8gb2JqLT5iYXNlLnJlc3YgaW5zdGVhZC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
