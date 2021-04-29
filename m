Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F48C36EB3E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 15:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1A96E21C;
	Thu, 29 Apr 2021 13:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BFE6E21C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 13:21:47 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id o21so20949259qtp.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 06:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=36DZtgnAe7hB6cDIW+FqWZIa4FFOXuuesllIq02h3QY=;
 b=vJVKsoPyAHx4lv970KpqJcKceCxCEMHfnb7xmjqABHWKfWT503HsjJN78vtPmboXOP
 Qn0hhq+t8Pwq3oapGyrwBUADz5pO2+zK7cqVDbBFU/cCgb0zjtghEpTaJqNo9t4vy0lf
 0TTH5xciI80LdwnYZk1R9dp1GNPMyxp1EsWYx49s+CVP6+wjVBMtHh8MJGZf+AeHwJ2+
 UVphDrgwzxzI+H8+bQNgZrtlJ+ilNgLmcbu/o9FI56YuoqP7vzbXN/KS/2a2AIDhYVPa
 xhP2T8RjUkIuJ2nvq0BqOK2+1UD9m9YDKFsYDw8gEL7pKCbHTt49sXmSp85PE9by7fYV
 Nv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=36DZtgnAe7hB6cDIW+FqWZIa4FFOXuuesllIq02h3QY=;
 b=tZTiz+rnbLeSzUJRa0/Fxv4abk4d/6xirPxuDWB25yk8dFyclk9bWCrVynruhjOs4e
 JyXSQACpFiLO8yfjfBVnGLYcxGazU5eQ0G8lMbPdDVu80q3/A2GE+ncQi8UR6Tg9FWvm
 EtQ4dPzxonXEnY6QzDhKCFW0pP3fkULcmTncU76LREr5o1Tqp4Oge2uxQZyBjo9ca2+y
 ItquMnNWvxS9JcmF3VfMgs2Qp58WQcI9oQe9SadsYAnBSVybktsMblMHxRqVzORKynRR
 T2uFati9oG8KyRDvwOXhIYzs1E0aTiqkUDvQ+tf+t3mOmcmT5LxEzIbEXO2IeP05yjYA
 BpOA==
X-Gm-Message-State: AOAM5304zWUANNhgWuigX3rjO7/LbaPrCRcAg4kqTefdm9Z3RjV2msMV
 aLY3xW0daRRsba20do/ZaBf32We0xsEaz0sf4WfDU25wg6U=
X-Google-Smtp-Source: ABdhPJygwYaIgacw8lreo+NrxWx7J51LG9ZHze4195pUMSNXwyYLbCcQQCrH/g6HzdexTEdBx3YsvHtH4hzPN1L2MSY=
X-Received: by 2002:ac8:7f14:: with SMTP id f20mr30936937qtk.339.1619702506959; 
 Thu, 29 Apr 2021 06:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210429101036.1086461-1-maarten.lankhorst@linux.intel.com>
 <20210429101036.1086461-2-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210429101036.1086461-2-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 29 Apr 2021 14:21:20 +0100
Message-ID: <CAM0jSHP9qXd4gXdD+u+8dxQhrnDWqCP-GFJimUO8DSQMc9sVHA@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Add ww parameter to
 get_pages() callback
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

On Thu, 29 Apr 2021 at 11:10, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> We will need this to support eviction with lmem, so
> explicitly pass ww as a parameter.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Should be Cc: dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
