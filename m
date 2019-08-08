Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F786CC9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 23:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD1E6ECCC;
	Thu,  8 Aug 2019 21:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com
 [IPv6:2607:f8b0:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2462E6ECCC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 21:56:48 +0000 (UTC)
Received: by mail-pg1-x543.google.com with SMTP id n9so38530404pgc.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 14:56:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=G0ZFIdTmFS3mi9/id10ztks8QYGXi0cdUMK8KphwuIs=;
 b=qaoYjh6RBAudG7Lb7L1pV2lDBZGSUKGfyD5gwio0w5Me2EVqk0MM30iOcgli1dFeV1
 ZIApfgObv4QbKA+78F/8iuoI4JcEVFU2XUziwaNPfrMfDJEBnzv/GLUp4qAmuueO/ko9
 D78shsogCCkMCNmbkr7ClsJdt9EbiEq59lNKw6z7YTwu4ZIeTuwT8wlNrgkxgdMAP+A4
 DnTIgIH4bajl9YGGqu2riD8m2/y0AA4A/3zcwgGUpFt/pYIpWwCK/TIuoEFTEXVujhzM
 AeUlusErgp/C2XwHglrQdzzFZKqh28/MG7HweSkc9+MnPolrf4J1yGCf2BO103MCY1tb
 1iUA==
X-Gm-Message-State: APjAAAX0ECqoMzyPlNWmKLlejK67Ze5ss4IPlzspi++nwv34TUFXZAD3
 /h0RNl1RsutzuOkidQrq2rS1aGWu9tQ=
X-Google-Smtp-Source: APXvYqyIgWknW1PK10iRT7TxNhYG58XNbWKUWsac+7TN1a/G4yk08VvkyIfmDevHzObM0jWKnDfUBQ==
X-Received: by 2002:aa7:9298:: with SMTP id j24mr17261793pfa.58.1565301407116; 
 Thu, 08 Aug 2019 14:56:47 -0700 (PDT)
Received: from [100.112.81.118] ([104.133.9.102])
 by smtp.gmail.com with ESMTPSA id v7sm56709980pff.87.2019.08.08.14.56.46
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 14:56:46 -0700 (PDT)
Date: Thu, 8 Aug 2019 14:56:16 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@eggly.anvils
To: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190808172226.18306-1-chris@chris-wilson.co.uk>
Message-ID: <alpine.LSU.2.11.1908081447080.10003@eggly.anvils>
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
User-Agent: Alpine 2.11 (LSU 23 2013-08-11)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=G0ZFIdTmFS3mi9/id10ztks8QYGXi0cdUMK8KphwuIs=;
 b=Vcsfox7Qf4kxhjopDy8uXiVHIPVFjKjN155ZJIg7B0yZ6WMwMZN76Puje2QDjdk5ze
 1856uJlMZRVrVYl7mzNAlyEdF2pc6w+8eC0mVuXa6T1XWGo4sN80o6d91Ikr2pSEfMVO
 UE1DAv8wKLQI0m5/Bek456yUquEnueNcf/pxykXwK58taMTMx2UiuZXICTRnd3D1Uccf
 usSzGt47c/Qkbqz5HwXm5AD5ynHx52pyRqm4pBo5DH/hozwwRZ7+LS3rik2CyuTgo4mB
 3NYfPHevz6YS2T3b3wIwE6PITr+g66NU1CVIQSpuyIH95gwNrurdTKr4beyWyMIeUkSz
 KIxA==
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

T24gVGh1LCA4IEF1ZyAyMDE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gKwkgKiBCeSBjcmVhdGlu
ZyBvdXIgb3duIHNobWVtZnMgbW91bnRwb2ludCwgd2UgY2FuIHBhc3MgaW4KPiArCSAqIG1vdW50
IGZsYWdzIHRoYXQgYmV0dGVyIG1hdGNoIG91ciB1c2VjYXNlLgo+ICsJICoKPiArCSAqIE9uZSBl
eGFtcGxlLCBhbHRob3VnaCBpdCBpcyBwcm9iYWJseSBiZXR0ZXIgd2l0aCBhIHBlci1maWxlCj4g
KwkgKiBjb250cm9sLCBpcyBzZWxlY3RpbmcgaHVnZSBwYWdlIGFsbG9jYXRpb25zICgiaHVnZT13
aXRoaW4iKS4KCnMvd2l0aGluL3dpdGhpbl9zaXplLwoKTm90IHRoYXQgZWl0aGVyIG9mIHVzIGlz
IHJlY29tbWVuZGluZyB0aGF0IGRpcmVjdGlvbiwKYnV0IHNpbmNlIGl0J3MgbWVudGlvbmVkLCBi
ZXR0ZXIgdG8gZ2l2ZSB0aGUgY29ycmVjdCBuYW1lLgoKPiArCSAqIEN1cnJlbnRseSB1bnVzZWQg
ZHVlIHRvIGJhbmR3aWR0aCBpc3N1ZXMgKHNsb3cgcmVhZHMpIG9uIEJyb2Fkd2VsbCsuCgpUaGFu
a3MsCkh1Z2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
