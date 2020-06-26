Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D24220AB62
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 06:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E80B6E1BD;
	Fri, 26 Jun 2020 04:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53CC6E1BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 04:38:09 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id dr13so8080874ejc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 21:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=40Af8QP+5eZCi9D00S0ToSDjTtPNBp+SWhm4/lSAgUA=;
 b=ZuGHjJOImgOrdc7sNyhjMACKH49eAKq/sKyKdnQ+YX/hQlRqsQ+ipJOee7w0QJ/SbX
 dOPcsw1S47bAkyW49KKRvjNGzorMvXdPjuJ9hLcY1MuWC1jXXJ5L5tBXZLg9RDv+wsl9
 mK9Bp3FHP51YMitcFE9uNdD7BBvFJcltoVYO4GbnsTxjl0bEftjy4so2OarZH3eDUnPw
 rT2N0l5HsIwb9tFzFPTLhi1HAvB3UKU68gq8aMhR+5IRO6ptT+6Tw91LSIoej4IDnbRi
 WO5HDnwytHahBaelEND5t+p2hfhKnqB1vD1lcedilE8LnvM3bcvJG+QG9nbPVyQhV3zL
 xvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=40Af8QP+5eZCi9D00S0ToSDjTtPNBp+SWhm4/lSAgUA=;
 b=DxLBNliqgcHEAJhxL7KNo1F5iSeDrpxPxo02cK8ov0TbcqHpwJYgd3+5Qc5dSOF2Z2
 RJV6hZJv2jClSkxaA0fWePuk2ZXdCJpzWmzOd6HdT/thUlcT6WZK+Q9kwoOZzWZVUuyD
 5ELcZsotV4PlLh8Uh+VdFbTde51EdXWirxmlcNk03FylSRC4Ind//cH4b6i8WZYoD7gK
 Kra4jGH0HXGb7YOPB/MCPax0PqOOPRDRJvcoE4OlL7avGHvCejYY2SQEnFFCLIzBWnm4
 1uNVJ9Xu+qm5KP2wgvcJ+BUTnGdG+fA3qW0gz99D/WW/HRruHzu1IEGPpxTTqOIuIrqD
 h9iQ==
X-Gm-Message-State: AOAM532QK8ZSzETBgdcmB0iT9lf8KW5vja7o5FqrHRYvURXxAkfV5VP5
 jqa/3Axtf0En0EoSFcwp3dY+6E5xkbBvn29tGWjSV86K
X-Google-Smtp-Source: ABdhPJy1SK59/BA+PVTJcWPkyQ1wO+TA1EKdJCamxPiClUS57JNycJVq5vl0tzTBSk62loDhj1lfqP8L0DWJNVIzraA=
X-Received: by 2002:a17:906:4086:: with SMTP id u6mr1028510ejj.9.1593146288386; 
 Thu, 25 Jun 2020 21:38:08 -0700 (PDT)
MIME-Version: 1.0
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 26 Jun 2020 14:37:57 +1000
Message-ID: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [Intel-gfx] DG1 VRAM question
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I can't figure this out easily so I'd thought I'd just ask, but does
DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of
mappable VRAM vs non-mappable in patches, is it planned to just thrash
the aperture if userspace ever ties to map too much of it.

Are pagetables stored in the visible RAM space?

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
