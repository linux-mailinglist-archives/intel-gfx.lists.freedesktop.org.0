Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E122FCF37
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 12:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150146E188;
	Wed, 20 Jan 2021 11:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172456E17F;
 Wed, 20 Jan 2021 11:58:47 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id e15so16008440qte.9;
 Wed, 20 Jan 2021 03:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BdSsy3AC8oj1eSD4FbYrE128SKuK4jH8JyJEBmTslVk=;
 b=jsgxfxZIPH4Lhr30S9iRayex+9rIfhGfoc4ZJUSj0OknHdqu8vP3oEHVOOwp76J2pf
 s3om/LzrUCkRSHEDtyOUhgAor23BUdtKnP7194kMUIvGr+F+jO54KFvBaASOd9GJgS97
 cJNj3zUFav7IqPBDHssM0hzYbQEtmDW+eiU26uPs2a9upzH9uwHC1TMWWhkG2u24agUJ
 rZh+Kxw1shukqgFTM32C2TvlfnVLdZWu/5X7Youmbua1S7rbpUSEPvMzQwFwxrRpPYs0
 AwB01BaXRBT5VHqcMcifAoRGN7mF26Phj9MS2ihZ4VYWLPbMEVdSooxWedoU/xPuTEfT
 vNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BdSsy3AC8oj1eSD4FbYrE128SKuK4jH8JyJEBmTslVk=;
 b=uaeaHFjOUvezpZVHNdP7IMfB1u3e/x1GAqei2zHo4zfECgRR72fsTeWi4PR/gEAvSY
 BH7zy9Do5dc0wDACVlcfCI4xU0tcQlBbuuZlurg4HUpUl0FtNiAFVHfuFSEUN3l+F9xe
 hdHwcD6yNgP+81qrx91vMUEdu7dPPaEoA/H5uZkNNvfLIRDVuSJDY1eMN88sWsXNCgOm
 Von0AQEGgQG9kc7ObPlFbpSidtObAiFNj+T4DdJibB8z13a6m2Pdu04GuzLS4ulgDKr8
 JZC0rcV3TzSZWZ+FCMabXgtrPIlRAiDVr93mT3csy65DwLFS/pESPdjR6c35GcuUoZbT
 XgIQ==
X-Gm-Message-State: AOAM530ehhP4vOIr973hI/nwzxrt5KkOPVMEdh4oCWyK88XdQP65OwOB
 jmq52gDXq4K5V3fRy+eg9iBasvO3FFYP38OUOe0=
X-Google-Smtp-Source: ABdhPJwZGje64pHKZWNTcnPDbOdrDdy7dgkP+/YdH8BsrHU5GnrREdRrKZ7y/V/A1xnU99D7vvNCTzQTxjx/cmsRPuo=
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr8249876qti.339.1611143926299; 
 Wed, 20 Jan 2021 03:58:46 -0800 (PST)
MIME-Version: 1.0
References: <20210120111115.846341-1-chris@chris-wilson.co.uk>
 <20210120111115.846341-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210120111115.846341-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Jan 2021 11:58:18 +0000
Message-ID: <CAM0jSHPqTXnnJEhOLjkFMWKwSc6Y1Fq8YugR51gWQ3PXXXoLcQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_create: Exercise an
 impossible allocation
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Jan 2021 at 11:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The largest processor in the works can support 57b of address space, far
> more memory than we can afford to use in CI! It is safe to assume that
> we will not have 64b processors for some time, so we can use the top bit
> to exercise our oversized object detection.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
