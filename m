Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C5B2658E9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 07:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F333E6E2CA;
	Fri, 11 Sep 2020 05:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4C26E2CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 05:42:35 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id n13so8650631edo.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 22:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=zIWi03gn1XKnz5At3291xLapwiRskEI9EP1bzOYRhd4=;
 b=KC1tlJjeyLhYHamDI5USvhSVUxB6UWMQ0zdu1QQrPOA7FFLDkxMmoPYKqPaC2lfc9t
 XOGUeR7cDGrn9X2MEOqISpW3rruoTxFix/CvEYYRzXSvEByu/a7bjkyxv16uI/p0Ywcd
 fT/KyYqGgwVnvunzQgQ7y6GBPI3S0RcNiSSD0p+6sHH5X1vPZ4jrct7Q3xuttTgpnM0T
 O7DJtHdVCluxRsL3uM1lZ/H1AAdGGPgRSmkxdRmlrC2Eh0PwAxqHLPy1uRcjDOBk2M8k
 s2vQBj06R5E8jpQ5t2c9M6WAp6FnqP4fhkGjaee3QBZiAxeBKApQYzRrN/RYxbedKdWz
 1dOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zIWi03gn1XKnz5At3291xLapwiRskEI9EP1bzOYRhd4=;
 b=R5CCto10R4f8ZS/W6pDtTdNplpfuZjpqkL6XkKLw1pQxZTCKLhfzrYmCrMoglw+q8P
 uxAh1gMlCan1AGHTNOZa1gaqXGg3mcIIbsuzZS0u54ETh8RjAoHOPo2d8EDKUL58p2Mp
 vWQsL3OH3YrDv0QQTpbBPRS/kZFBdfoK24ePuoajyejDA3Z+kLX9aK/6Yik0sIBrF1mh
 M0XTLI5uIL5Vq3O68BCYRaUNmqnMEcWfQbRLr162g7bUuB1yFeROCwaFIKZ1eErI4cJG
 vT0ckYX26B8K05ookpX8wHpWpaeluRqXyNRff7/OBQninKtZWYGuoP0ajPiIJ2rQovLn
 IJag==
X-Gm-Message-State: AOAM531mI9dRYd91wmOqn1ilesNgyHiJy00fGuNceEQc9sU8tva3EpdZ
 ZY8+8J6TGZac3GXPSNWuyAyHIJdQsPXK4ZRtbek+TrIr
X-Google-Smtp-Source: ABdhPJxDYd8RTdESS15kZYjYyW7e07xKv5CnF5Q1ui2o1QC013CQ/P+T8R3kjexuOZF1Ty8du5ecTOHGBpYp+dnnqOQ=
X-Received: by 2002:aa7:d959:: with SMTP id l25mr254447eds.383.1599802954264; 
 Thu, 10 Sep 2020 22:42:34 -0700 (PDT)
MIME-Version: 1.0
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 11 Sep 2020 15:42:23 +1000
Message-ID: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [Intel-gfx] dg1 flag for userspace to allocate contig resources
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

I've just been looking at the current DG1 uapi, and I can't see any
flag to allow userspace to upfront say it was a contiguous vram BO.

I think you'd really want this for scanout, since otherwise you'll
have to migrate any non-contig to contig when it transitions to
scanout, and cause an extra set of copies.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
