Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4202F3708
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6304689DBD;
	Tue, 12 Jan 2021 17:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60E089DBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:27:07 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id az16so1246908qvb.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 09:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cJyvTL2pPkzpyssWJKYb/9zpxbsMLeZKPYeucbZVBYI=;
 b=bh37hmhAJpsTnnAEmBl2yN1R2n4zAyKfwFUPk+4GQ7I35RKAGxu6feWZkDpRgOWOI5
 O1Jdzwn2PF+RHr35N8ar3SFkwWfXZYV+oSb6MaPwSrmPvildmnoGNWdwJKGQNwA8pGHb
 aw7LE2MjyaXNWG4gSFvO0Wge7fqkBhEMLWBL6YwqtMaQgMejFbmi/RsoOWD9I8FQKPBx
 BsFo1gZ15/kW1tPMcDJwF6nSmI8Dw5aMdsxmghRAtpRaVDqHQ7pXLx6UViQO9HExS7TH
 sHSM3IhDDdH1Oeyv/b/AEHVON3Dw+USVqHIdl+Qcdc11eEIBwPfom+p3TchU/n1LJI//
 TRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cJyvTL2pPkzpyssWJKYb/9zpxbsMLeZKPYeucbZVBYI=;
 b=Kp1cJplxAcrEfpBERrBOrdJvaQe7Zstm/Hmn+Da3GQxO46+Slb/ruqhYxexwHdMMap
 uWri9j/But3nAeBMedpM7JmLaawuEfiX7/I1regT8KWkh6WqWFgF41p7toIHlsa5AvEA
 CtQnroBzHOs/MYKSnR4FAiGAllghvFRj57dBZAtXeZXl/g2Ubgv3VFhRmYDuFboKGn6X
 8s+8RSWSUZQrQa1sldv7gQw84hlG90tmTQrqCQ/Wlm9Z5N5rPmtJFfmaxPX+hmomOC85
 SaQcVKLfu5QPdpZNn/ifuuKvn0JPNy/K+VRVjzC+tWoPI6otC+BOmWCT1PBN+xhufQj0
 RGjw==
X-Gm-Message-State: AOAM531HL0y41oPF3nqpTrpzGRhQimnthTK6NLlAgEenUQ9LM2fvZ5Ev
 zZsZt+n4XSldnrpHD2SZU+O7g3oHQFsJxgYN59M=
X-Google-Smtp-Source: ABdhPJydK6ExF/7Xt/eU3wtcHM11cNyb/M2rpwj74MydG5Nul1ShHah+lcsUqVVtuZtW/Y0RMREUwJt640sjtJxuHVM=
X-Received: by 2002:a05:6214:1583:: with SMTP id m3mr15858qvw.48.1610472427160; 
 Tue, 12 Jan 2021 09:27:07 -0800 (PST)
MIME-Version: 1.0
References: <20210112172246.11933-1-jani.nikula@intel.com>
In-Reply-To: <20210112172246.11933-1-jani.nikula@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 12 Jan 2021 17:26:41 +0000
Message-ID: <CAM0jSHOwHpxPsTYmh6i=wbwacNj9CE6_oVaPYmEXdkBOzMoB0A@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: make intel_region_lmem_ops
 static
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Jan 2021 at 17:23, Jani Nikula <jani.nikula@intel.com> wrote:
>
> There are no users outside of intel_region_lmem.c.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
