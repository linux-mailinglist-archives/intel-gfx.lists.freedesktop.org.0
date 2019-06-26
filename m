Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F365732F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 22:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3C56E50C;
	Wed, 26 Jun 2019 20:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2A66E50D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 20:56:17 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id p15so132622qtl.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:56:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HE409Ft4xGnYxUWHbRVNImMW3KuqdXOE50F2pPYBUVE=;
 b=r4bKORnLA0FkQ/Lv07WXEaF37fbg7uTeNpwEtmyMj5q2/PL6b9Sb0tStgu06EtxzLh
 Co2zKrvYx/4wolJypyctr2MxAEyXOkb6UzpkCgRN3aTzcD9+qDiMr49UtT81PvwAKS8h
 KkkVT54YprmxKTu7FPAtSDBgMOoV69wpkynDn5ANFhaEcFm6FAPGoMEQpaMDKo1hdnC0
 YVt9TpGHCTr45jtSi3pMPFeLdEwxoZFkkc/hMTD2XsP8x3t0ySRNWZcPGuyl8aPwoLc7
 rObgGv+fMiSwJ2WvheiBbpZ4mPK0FaM22c/rIHrlkwzicTFT59pPwWJ3g1t1Kb25n1Qg
 lhBg==
X-Gm-Message-State: APjAAAU/7uzJiexcqaI2VTs/NZ9h7Th0nNH/+iFC7LKziTa0uLbOsK9X
 2vbjpzLmctaYEhrEhYtyXmT8mw==
X-Google-Smtp-Source: APXvYqxdQ9ym2CBfDpCO7S8CKdnYr41J29uFaKBPApbSGmSX0n5iUPjiOTSAg6Dj7ChnSjtxGvLr7A==
X-Received: by 2002:ac8:27b1:: with SMTP id w46mr1523524qtw.265.1561582576943; 
 Wed, 26 Jun 2019 13:56:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k5sm9527431qkc.75.2019.06.26.13.56.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 13:56:16 -0700 (PDT)
Date: Wed, 26 Jun 2019 16:56:15 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190626205615.GA123489@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=HE409Ft4xGnYxUWHbRVNImMW3KuqdXOE50F2pPYBUVE=;
 b=B2pXe28Hf8EpfYMAkOgpsag1+8Y74jw1DPu6xuKYS6atm1R4RSPzvDK7xtyV9ypCAd
 eC+SDL85nC9bmPs5DFDoTZVXMbRcK3CAiXAZ7vMoOTPOGsFbA76DqzuALhhkAWrvCqB5
 NW2V64qFolyCGqUqhPXML7dlt2maBYEEF4RNY7EG2Zchz0tNOVXRQyO6G2Ow3FxUYxKO
 lejrjjqgsJXu0lZNDHAlM8nhBl6sv0lzwYve1VnhNm4SFmcBkLg2dwO5m04icA3TGYCg
 qzS7uAoEbGxdKpNO5KyqdaZzAIaMswtK7zlF/wvHpNIt8ZgWqPbbexSQu1jJsJCoYiYh
 C7IQ==
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

CkhpIG1haW50YWluZXJzLApPbmUgcGF0Y2ggdGhpcyB3ZWVrLCBubyBtYWdpYy4KCgpkcm0tbWlz
Yy1maXhlcy0yMDE5LTA2LTI2Ogp2aXJ0aW8tIERvbid0IGNhbGwgZHJtX2Nvbm5lY3Rvcl91cGRh
dGVfZWRpZF9wcm9wZXJ0eSgpIHdoaWxlIGhvbGRpbmcgc3BpbmxvY2sKCkNjOiBHZXJkIEhvZmZt
YW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KCkNoZWVycywgU2VhbgoKClRoZSBmb2xsb3dpbmcgY2hh
bmdlcyBzaW5jZSBjb21taXQgNWVhYjljZjg3YjZjMjYxZjRlMmY2Yzc2MjMxNzFjYzJmNWVhMWE5
YzoKCiAgTWVyZ2UgdGFnICdpbXgtZHJtLWZpeGVzLTIwMTktMDYtMjAnIG9mIGdpdDovL2dpdC5w
ZW5ndXRyb25peC5kZS9naXQvcHphL2xpbnV4IGludG8gZHJtLWZpeGVzICgyMDE5LTA2LTIxIDEx
OjQ0OjI0ICsxMDAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cgog
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYyB0YWdzL2RybS1taXNj
LWZpeGVzLTIwMTktMDYtMjYKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0MWRlNGJl
NmY2ZWZhNDEzMmIyOWFmNTExNThjZDY3MmQ5M2YyNTQzOgoKICBkcm0vdmlydGlvOiBtb3ZlIGRy
bV9jb25uZWN0b3JfdXBkYXRlX2VkaWRfcHJvcGVydHkoKSBjYWxsICgyMDE5LTA2LTI2IDExOjA1
OjA1ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQp2aXJ0aW8tIERvbid0IGNhbGwgZHJtX2Nvbm5lY3Rvcl91cGRh
dGVfZWRpZF9wcm9wZXJ0eSgpIHdoaWxlIGhvbGRpbmcgc3BpbmxvY2sKCkNjOiBHZXJkIEhvZmZt
YW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KR2VyZCBIb2ZmbWFubiAoMSk6CiAgICAg
IGRybS92aXJ0aW86IG1vdmUgZHJtX2Nvbm5lY3Rvcl91cGRhdGVfZWRpZF9wcm9wZXJ0eSgpIGNh
bGwKCiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfdnEuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKLS0gClNlYW4gUGF1bCwgU29m
dHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
