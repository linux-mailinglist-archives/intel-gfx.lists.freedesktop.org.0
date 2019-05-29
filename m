Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9541C2E74D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 23:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D406E127;
	Wed, 29 May 2019 21:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212C86E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 21:18:35 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id b18so2462841qkc.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 14:18:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5fNozO3bwwzX6wXm+puxeZDwgkkGojQ7a7fZzhpnV5Y=;
 b=Mrf665CTcVxnhSaVXngwa6ljiKMlgS6WDEnX6blNrzmUr3BnGIdwu/KtGVUheUgpAq
 HFykQF1JipoztH2PXx1rVvVhS5jMY3L8ZjfKANXs0lOcqNXEkeNxK7coIltnz8wwyEy5
 nmm/cGJF7UT6fMn9nXZUC0pmR81+MYHtLxvmWdN8Yb89vVYVpnyWo3MTOq0dNn7XkdSq
 SC/6E0AOxCdaqeFoLz+FcPfdCjKqMBvtrzsoMgldRT3cUJy3mkbh7VeB4YjhDrhUZDb2
 BbNAFhVkE6UXaguqNbW9MSvel4rt62e7TKQWQHfBWGckXiX7BLayk1PIx2GJK/cPyaJU
 hCUA==
X-Gm-Message-State: APjAAAWWQaPMVUHRsPkONlLgr/Q/4SJAWrRrs4kUjUjfFgPZPcCUWVH4
 +lnJZor3KyyPU4phD1c/1s/rEg==
X-Google-Smtp-Source: APXvYqwtfiAzESHby2OuVfBs15loPuuROecBbjF5kbk0UyyrJooGQptOSu/cdLt1Yerabpg0GoXAPA==
X-Received: by 2002:a05:620a:3:: with SMTP id j3mr77599698qki.95.1559164714180; 
 Wed, 29 May 2019 14:18:34 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w143sm363919qka.22.2019.05.29.14.18.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 14:18:33 -0700 (PDT)
Date: Wed, 29 May 2019 17:18:33 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190529211833.GA195708@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=5fNozO3bwwzX6wXm+puxeZDwgkkGojQ7a7fZzhpnV5Y=;
 b=K2N04qjY3JMxlYEUHC1v+e51c09smLZprV1GfOWb1lmhS9VRZdEaqZBTzPI5SH4d8r
 Fwsp5sNkChDD6HAOMnIDs1zMU5f6/ZxNC+EwAdnSfOJdI0iz5H3Qrs7UEyST4MXTquyh
 9dRquH25hNn2Jm8V3u78c6ZPPe1sliGKnzSc6wVtFOMF9KquLjEwX3pscUeKC+jO1qkj
 AFtu+Z/fPRABFu/kmQD28IuBBdBZJ0Oh9AalY06XBOK9bLprfH3l9+Xr5w9ElRDUhjcl
 G9vkxSO4fzTn/PK1pNzeVVhJQs8t2H5rgov1JtAppq/2kUCHkfxnn2lcWaH27bJzxkQA
 njCw==
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhLiosCk9uZSBsaW5lIHB1bGwtcmVxdWVzdCwgb25lLWxpbmUgc3VtbWFyeS4gUGxlYXNl
IHB1bGwgOikKCmRybS1taXNjLWZpeGVzLTIwMTktMDUtMjk6CnF4bDogRHJvcCBXQVJOIHdoZW4g
dS9zIHRyaWVzIHRvIG1tYXAgYSBwcmltZSBidWZmZXIgKEdlcmQpCgpDYzogR2VyZCBIb2ZmbWFu
biA8a3JheGVsQHJlZGhhdC5jb20+CgpDaGVlcnMsIFNlYW4KCgpUaGUgZm9sbG93aW5nIGNoYW5n
ZXMgc2luY2UgY29tbWl0IGYzNjE3YjQ0OWQwYmNmM2I1ZDgwYTk3ZjUxNDk4ZGNmNzQ2M2NmN2U6
CgogIGRybS9wYW5mcm9zdDogU2VsZWN0IGRldmZyZXEgKDIwMTktMDUtMjIgMTM6MDU6MTMgLTA1
MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNjIHRhZ3MvZHJtLW1pc2MtZml4ZXMtMjAx
OS0wNS0yOQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDk1Yjc0Y2U4ODk0Mzc0N2Zm
ZjBhM2E4YTZmMDRlZWNiZTdiMWMzY2U6CgogIGRybS9xeGw6IGRyb3AgV0FSTl9PTkNFKCkgKDIw
MTktMDUtMjcgMTM6MTc6MDMgKzAyMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCnF4bDogRHJvcCBXQVJOIHdoZW4gdS9z
IHRyaWVzIHRvIG1tYXAgYSBwcmltZSBidWZmZXIgKEdlcmQpCgpDYzogR2VyZCBIb2ZmbWFubiA8
a3JheGVsQHJlZGhhdC5jb20+CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkdlcmQgSG9mZm1hbm4gKDEpOgogICAgICBkcm0v
cXhsOiBkcm9wIFdBUk5fT05DRSgpCgogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcHJpbWUuYyB8
IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCi0tIApTZWFuIFBhdWwsIFNvZnR3
YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
