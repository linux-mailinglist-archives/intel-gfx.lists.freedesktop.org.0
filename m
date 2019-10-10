Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B3BD29D0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 14:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E7F6E260;
	Thu, 10 Oct 2019 12:46:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C756E260
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 12:46:09 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D5503D94D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 12:46:08 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id k5so3539324edx.13
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 05:46:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=1vg5QO20eNryQFHOh1k4PEtxmeIXUL7SHocWXp/nAgg=;
 b=BZj/O9oWiW6pVrelYMBVNIqAurh1jqW3pt8JDl0FprUqVDpjxFUgdhKdlNkZQyokYM
 1EGcYk+p8sEEVVEngW3w6kfvwYlvDmEAjM9s6Fd2PjIurwHADTHA43xKxf78x6DNT7nA
 Ok2/ra1dQz36v7Gz0PT+L4hkkAQCwK621qf0x7L0cVHa4xToDNJG6DgHAzsoJajdvaNg
 d42I/ozKYdtNhPbHBw3FwUBEy2ZfZR/XnSkAfEqL1J+OG6NZbk/Umcxa/zlftrA3BHV4
 McAixgSM1ZJs94Ccu6P8khRKq4l0WIXNSC06X2KTtu2/wgK/McotVAi8oE65jlx9KDQR
 w+YA==
X-Gm-Message-State: APjAAAUQCMcbft4sH+RQ2XrVx7UGP2kva765t5TYFCumReLkssxVYrGt
 6Ezs5EIo/wauAJNTURleZ0gT39wT6ZjcZcmaZcFjbirtxyUQ6ImQGSbbfrROGABgkvKFIPePb2y
 OkTJMeXikV4GETpx79/4rdIT7ViBp
X-Received: by 2002:a17:906:3415:: with SMTP id
 c21mr8197931ejb.190.1570711567336; 
 Thu, 10 Oct 2019 05:46:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRu15pSXc77+UwaOfDbZvFiyuISBJXHmfoqYPgNiHcB31W21RopmKnUD3pihCmzMX8vMkR5Q==
X-Received: by 2002:a17:906:3415:: with SMTP id
 c21mr8197913ejb.190.1570711567137; 
 Thu, 10 Oct 2019 05:46:07 -0700 (PDT)
Received: from shalem.localdomain
 (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c14:2800:ec23:a060:24d5:2453])
 by smtp.gmail.com with ESMTPSA id s42sm925946edm.57.2019.10.10.05.46.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 05:46:06 -0700 (PDT)
To: Jani Nikula <jani.nikula@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <6669486b-fd2d-276a-645f-ae374bf2578a@redhat.com>
Date: Thu, 10 Oct 2019 14:46:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] Does the i915 VBT tell us if a panel is an OLED panel?
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
Cc: Christian Kellner <ckellner@redhat.com>, Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwKCkR1cmluZyBwbHVtYmVycyBJIGhhZCBzb21lIGRpc2N1c3Npb25zIHdpdGggRGFu
aWVsIGFib3V0IHN1cHBvcnRpbmcKT0xFRCBzY3JlZW5zLiBVc2Vyc3BhY2UgbWF5IG5lZWQgdG8g
a25vdyB0aGF0IGEgcGFuZWwgaXMgT0xFRCBmb3IgMgpyZWFzb25zOgoKMSkgVG8gYXZvaWQgc2Ny
ZWVuIGJ1cm4taW4KMikgT0xFRCBzY3JlZW5zIGRvIG5vdCBoYXZlIGEgY2xhc3NpYyBiYWNrbGln
aHQsIHNvIGluIHNvbWUgY2FzZXMKc29tZSBzb3J0IG9mIGJyaWdodG5lc3MvY29udHJhc3QgZW11
bGF0aW9uIHRocm91Z2ggZ2FtbWEgdGFibGVzIG1heQpiZSBuZWNlc3NhcnkgdG8gc3RpbGwgYWxs
b3cgdGhlIHVzZXIgdG8gY29udHJvbCB0aGUgYnJpZ2h0bmVzcy4KClRoZSBpZGVhIHdlJ3ZlIGRp
c2N1c3NlZCBpcyB0byBhZGQgYSBwcm9wZXJ0eSBvbiB0aGUgZHJtX2Nvbm5lY3RvcgooZGV0YWls
cyB0byBiZSBmaWxsZWQgaW4pIHdoaWNoIGluZGljYXRlcyB0aGF0IHRoZSBwYW5lbCBpcyBhbiBP
TEVECnBhbmVsLgoKVGhpcyBoYXMgbGVhZCB0byB0aGUgcXVlc3Rpb246ICJob3cgZG8gd2Uga25v
dyB0aGUgcGFuZWwgaXMgT0xFRCI/CgpEbyB5b3Uga25vdyBpZiB0aGlzIGluZm8gaXMgY29kZWQg
aW50byB0aGUgVkJUIHNvbWV3aGVyZT8KClJlZ2FyZHMsCgpIYW5zCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
