Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D262E1AC6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 11:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5F76E8DD;
	Wed, 23 Dec 2020 10:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAD46E8DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 10:13:02 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id z11so14461074qkj.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 02:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o+4miEZjVld6WNw8vFiqILVDys/3ZlceHmbIXvYbqi8=;
 b=vh5DYquHiG4e5FGxe7KXIwKyQZDZXsr9rXjmn8Z6TNOrZM9+FviL/KJEV/WnK3H4PL
 xXnFFYxRSsgIyYhORoL/TOX+rqbeL5D3Gm9qS5BluRgyQDb6QXNdJjnZVJwkqfNtVmwX
 iI6RB4fGzhNUpjOPVJXIX+GaUc42Fl390qMP3xvM1tLYv3AJIRZ64ZkwW8/s8f9Unuxb
 Xg5zGIPjm7JhIgHXklelWUJiMUi+VYJv5/v0u7jR1/cRrBx8a7eibgXLoMHCulk6Rxyy
 RAVE8sLCvcswJuTd/axjqgsPIISTwcfAG3HnHQCcCtsDGRFNpmsYkdvMD+BK5O+UPGIZ
 qrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o+4miEZjVld6WNw8vFiqILVDys/3ZlceHmbIXvYbqi8=;
 b=cELM9yZNOzHgNCK9TyMv25qRua+492EikYs4SOK2bmIfZlmoDGXZ1ucJ0INOwmduYs
 iUBoEr0vdzcHC9/oUuwQfVq+diWxM8NnPY8jFe6cTfJO2aUKdYc6pxijykTany2CX8QM
 ZU2GqCQKl5UUT/QdSsecgx5SH2VOY4w8ZvybocPRx+6o6uUbFHtMqWkt6UWwmUcduNs2
 +90kZicBhEmadFLSKJZsmLCnQmCzMbInmt/2O16oTGmvZ+GE4xEWjUssniHebO4GHXOV
 zXzXvfRFK6kWBTS/VkMHZwcJZRJnLEZFMMjkQfVmyAaeaZYM5FmNaeposJSKgs0lRz57
 Lf3g==
X-Gm-Message-State: AOAM530vINok0Y1o75DBj75LE0j7b0QyjAdazhhWmFsrswrs0CGvhr2U
 XvziAPMFW6iGj5/LPQ8u06IyPErCzr1lWnqRh0n/gnxE
X-Google-Smtp-Source: ABdhPJwoyn8rWOMdj35rc8Xj1o2FDkyZlSVDNG1Pj7x8fR8XmwSa/1RlH9shpqHB8zM/RYpJbGEpqY7gaLRxgwRGYSg=
X-Received: by 2002:a37:418d:: with SMTP id
 o135mr14212293qka.426.1608718381793; 
 Wed, 23 Dec 2020 02:13:01 -0800 (PST)
MIME-Version: 1.0
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
 <20201214100949.11387-2-chris@chris-wilson.co.uk>
In-Reply-To: <20201214100949.11387-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 23 Dec 2020 10:12:35 +0000
Message-ID: <CAM0jSHN738aeekqHc1RE3rg0_7K_WpdWxSNbccdy=yv+VeQaow@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/69] drm/i915/uc: Squelch load failure
 error message
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

On Mon, 14 Dec 2020 at 10:10, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The caller determines if the failure is an error or not, so avoid
> warning when we will try again and succeed. For example,
>
> <7> [111.319321] [drm:intel_guc_fw_upload [i915]] GuC status 0x20
> <3> [111.319340] i915 0000:00:02.0: [drm] *ERROR* GuC load failed: status = 0x00000020
> <3> [111.319606] i915 0000:00:02.0: [drm] *ERROR* GuC load failed: status: Reset = 0, BootROM = 0x10, UKernel = 0x00, MIA = 0x00, Auth = 0x00
> <7> [111.320045] [drm:__uc_init_hw [i915]] GuC fw load failed: -110; will reset and retry 2 more time(s)
> <7> [111.322978] [drm:intel_guc_fw_upload [i915]] GuC status 0x8002f0ec
>
> should not have been reported as a _test_ failure, as the GuC was
> successfully loaded on the second attempt and the system remained
> operational.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2797
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
