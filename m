Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 867623D0772
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 06:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737EC6E48F;
	Wed, 21 Jul 2021 04:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88C96E158;
 Wed, 21 Jul 2021 04:03:45 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id bu12so1244579ejb.0;
 Tue, 20 Jul 2021 21:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eWPAOBWpUTLhpIrlxv1BnVJyH/3b0JQHSRlR/92W/kw=;
 b=LezD5m6eyB7sLKhwbtJ/l01vXI6+/FTI6RY4BSOac2VzwShdCgrHX4HkmKvzKhdj4X
 ntPOLp09ZrR7/kQhZKMYgO3KS7iOLXoxw3FtD8qBxKMf14tzsr3M/MN2iku1sWqETt9e
 2M+wzJuZwaIP/HcHCIyDPOPVWki0HlD6iSfNrPHNpAK1mPDdgYY2w9nLDrye9NwWMO6z
 /5B+MCmHqws21nw5OjpP7F4fP/0qzWdQtOTNolBAysc2L2yLxYQ58U1CNB8/+uQh1TIa
 pWfVYFfNHYEe3IgGtwfSDrBtzj3PrWCXd/QKLM19QPxIIu8hoqu4trwHFSkSC+K7e4P3
 C4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eWPAOBWpUTLhpIrlxv1BnVJyH/3b0JQHSRlR/92W/kw=;
 b=AIpHXWwimo9i/oPmXBhnvhKHwRaaoduPIRd6jGtZMcf2Tligu3H2j2uYZggaGZfUsO
 bQPnnII20rjitx/Xm/ueCQHOyrntkpLNXTD/MwuPeukLVRH/QYcNSeA87EtYZ1/Ak8uG
 kH8Qk5EZACycdQdpAOFTRvXug+/mevH1n39KAZdgjj52QSVtNKoVzE5K88j2O6xJ2iOc
 aB8u7Dm+j6LSgLorH1j6hoLr4FBwiEV8RC24by6IQ7+ulKY30RHVkyekyuIIg7jA/3ee
 d/e7aX9bt20js/fSw71RFbtA8VUC14mUpsQ8zUes9BEHeUIlQn8ICK/8gV3SyOQ6coaJ
 nUuQ==
X-Gm-Message-State: AOAM530lOCDfHd/cKKlxcaEmaAFjsoYeIW70DZVvpybHBuXDPRlDQdEz
 gu1MD3hkE2UJTE5G/Ry2CcwDaTWKMm3qZlQ5wCY=
X-Google-Smtp-Source: ABdhPJyW9w3STxOnrxLTDp3Kk+KFzu57wSzYI+Glc2THFllQQbke05fm8pmtMs246HB/mAgZRQ0cDl5Mkx6NBRDfxL0=
X-Received: by 2002:a17:906:5f99:: with SMTP id
 a25mr36960115eju.101.1626840224358; 
 Tue, 20 Jul 2021 21:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <444811c3-cbec-e9d5-9a6b-9632eda7962a@linux.intel.com>
In-Reply-To: <444811c3-cbec-e9d5-9a6b-9632eda7962a@linux.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 21 Jul 2021 14:03:33 +1000
Message-ID: <CAPM=9twumCVtr+zFvy40GKt=6zFRsAMNYV+-5cUKfwV76RfBEw@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNiBKdWwgMjAyMSBhdCAyMTowNywgTWFhcnRlbiBMYW5raG9yc3QKPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBIaSBEYXZlICYgRGFuaWVsLAo+
Cj4gTG90cyBvZiBzdHVmZiB0aGlzIHRpbWUgYXJvdW5kLgo+Cj4gRW5qb3khCgpJJ3ZlIHB1bGxl
ZCB0aGlzIGJ1dCB0aGVyZSBpcyBhbiBvdXRzdGFuZGluZyB3YXJuaW5nCgovaG9tZS9haXJsaWVk
L2RldmVsL2tlcm5lbC9kaW0vc3JjL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMvaGli
bWNfZHJtX2Rydi5jOgpJbiBmdW5jdGlvbiDigJhoaWJtY191bmxvYWTigJk6Ci9ob21lL2Fpcmxp
ZWQvZGV2ZWwva2VybmVsL2RpbS9zcmMvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9o
aWJtY19kcm1fZHJ2LmM6MjUyOjI4Ogp3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYcHJpduKA
mSBbLVd1bnVzZWQtdmFyaWFibGVdCiAgMjUyIHwgIHN0cnVjdCBoaWJtY19kcm1fcHJpdmF0ZSAq
cHJpdiA9IHRvX2hpYm1jX2RybV9wcml2YXRlKGRldik7CiAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXn5+fgoKUHJvYmFibHkgZHVlIHRvIFRob21hcyBpcnEgcGF0Y2hlcy4KCkRh
dmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
