Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD95289791
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 09:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE07C6E4AE;
	Mon, 12 Aug 2019 07:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A1C6E4AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 07:11:51 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id x18so916569ljh.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 00:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NZ1OizWcpbP6noxx8/xg2mgm7Hx581BOepTaovkOMgw=;
 b=lv/r35M1oeFMhPoeD0VN9Jo+TN9iNu2xyDRTYRsIxaMt2ymTUkCI/aViukZRdGPeD7
 UxJ/xcVUz5EYWlfTvWzlMauR04xGNjO8qyNIuwnvts3GoCXSKFP5CqKSNNETprSPxGdO
 GFhyc056OtdtSuUoMzDx5XQc46nZPpHBry6ywUBgii+VRowgg1y/vkHC7iy8svPbJAWy
 ymuzdARqsxEy1mRtyAvn/4eI2AxGMtoST0lzkgmCyLhGuRE2sJ3/xD1SbVTn8JkKb1ga
 uCl/PdpulzLgxFKGJLAE9zeqjRZidbcm+DgbVFcOngfiEdfhxKlxCDkLbAXT0J64igeY
 D4/w==
X-Gm-Message-State: APjAAAXoipDnxvHQYzFFtxsl7/q45Bv0vV2N4o/sD/hfNQrSXSmZS852
 D7VzeFE60usJnthZ1TaceuI=
X-Google-Smtp-Source: APXvYqwabjEsn2E3ceEjQ9qSbaZX7inxaXw2629zc8ft8lSOSSxYH6TAfvapsKTSz14ZdoaWJLtPkQ==
X-Received: by 2002:a2e:9045:: with SMTP id n5mr18442876ljg.66.1565593910060; 
 Mon, 12 Aug 2019 00:11:50 -0700 (PDT)
Received: from localhost ([178.127.242.45])
 by smtp.gmail.com with ESMTPSA id w4sm5327361lfk.4.2019.08.12.00.11.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 00:11:49 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Mon, 12 Aug 2019 16:11:48 +0900
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190812071148.GA696@tigerII.localdomain>
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808172226.18306-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NZ1OizWcpbP6noxx8/xg2mgm7Hx581BOepTaovkOMgw=;
 b=Yf2WF8S9ApkFHjD4UxCouGHKiT3fooxvqPfGFdBww+sjt9fCTswOp/+dBgV7Rc+aV2
 NJAzLQW8hpgJgmCfrUuCv+BQ/VQtPSg7SCm3C+tld/fSjxcjGOFx1Kpp1erKFQJgq4P4
 KylSf+K35x0U+fBVxRtmGXi6a6Qj+Gly+k/CtTuoGQrnQpK++KU15mz7lTnMlxVhF2ic
 gKNFO1qMpZbeTX1woqJzdQ4yc63UB50yQRpfteFCY1OTWMQxPOf2sYYvXm8UOvvdgPff
 u6dUPEvsUHa0KUjVxbgKcEaSPvastu3RBhhbqkXfifVQbmwy49SAaTYT8GAcQ478vwOk
 fc0Q==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
Cc: Sedat Dilek <sedat.dilek@gmail.com>, intel-gfx@lists.freedesktop.org,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gKDA4LzA4LzE5IDE4OjIyKSwgQ2hyaXMgV2lsc29uIHdyb3RlOgpbLi5dCj4gQEAgLTIwLDMx
ICsyMCwxOCBAQCBpbnQgaTkxNV9nZW1mc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+ICAJaWYgKCF0eXBlKQo+ICAJCXJldHVybiAtRU5PREVWOwpbLi5dCj4gKwlnZW1mcyA9
IGtlcm5fbW91bnQodHlwZSk7Cj4gKwlpZiAoSVNfRVJSKGdlbWZzKSkKPiArCQlyZXR1cm4gUFRS
X0VSUihnZW1mcyk7Cj4gIAo+ICAJaTkxNS0+bW0uZ2VtZnMgPSBnZW1mczsKCldlIHN0aWxsIGhh
dmUgdG8gcHV0X2ZpbGVzeXN0ZW0oKS4gUmlnaHQ/CgoJLXNzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
