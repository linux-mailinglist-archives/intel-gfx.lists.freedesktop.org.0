Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E781E88BB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 22:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FABC6E969;
	Fri, 29 May 2020 20:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4406E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 20:15:49 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id d22so983450vkf.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 13:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+sE+q6yzyeeKXKEWzcsN3Cwl8BEvivEloeRYVISCgyI=;
 b=Xkrf+xrstiAtWfpq/D427GEOP3eqZDDF2SOCtbJFM7kTYewe0PUvvlPLQ5Tctlt511
 sSiCyVBUXV+NKfP3ImecD3PiVIPo/HJk8n/9fOwwDbA3k1WpRRXwVR0KmYAHaH4udJK/
 twD0Z1TDhiqSwMD08yOMqgTvIk48/rodyhwQlyVN6O2sO0Zw3zavUeIpoRJoHCbHeEKY
 uvLuz0PocrE+a03Ul8a1aRm1S/r95C+HMuKcrYPoI9CbJCMmwDeo449ZNpyTgdqWhbjL
 PCDfThZcCXhkO8xqoE3x/aQxihhRD6OSzimAJzQKSQX/bM592+udjBvx8oBxkF8BO3vN
 1fng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sE+q6yzyeeKXKEWzcsN3Cwl8BEvivEloeRYVISCgyI=;
 b=m271cmlPnvsP0KqzMI11Pa7/qkBmPhXVh4Qdww5pdgwQzDkLUN32gCkxHnO3jOdYCg
 q5ytjz5kngHcTvDekRD9xPL5YhZ5ZI88XQPfJCrU0djJt85Ap5rK8znVXkAzmfijIkIn
 CdtW1NPAhTNUJTMJa2CM52qtTDTeixBZVkQK1Z9w4OmACwUpAcW4WS/p87fa1Tx+slSi
 cbzWQiPxsKthT854SAqspOWU3nnvVtYwwBUT9DD68CSAKdxGjgr9D86mEE11UG44uQs8
 nfGk2I2iLjTmPwcUZ56KnQzLL4+nrmEid0vJHML9w6iGvERZReyVIZM/wUHlMfXDC9ea
 xKTA==
X-Gm-Message-State: AOAM5305IrMSXmh/jmZDYzCDmypmJAxSEGxEmp41mblAY5DfB8fUnAAQ
 JgA8QMbVBSg+TOoOhuZ2CKIyImDTS8mBsd69aN7DyZy+
X-Google-Smtp-Source: ABdhPJyhLSIQ4+RHnDxJfxaABoZAqM26/G8JYA7KS50Sia5WSgxojlC+l3iCq+7x+hULWeGb3uWqJCZlrwLaETtDmvo=
X-Received: by 2002:a1f:1c81:: with SMTP id c123mr7102710vkc.14.1590783349105; 
 Fri, 29 May 2020 13:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200529183204.16850-1-chris@chris-wilson.co.uk>
 <20200529183204.16850-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200529183204.16850-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 May 2020 21:15:22 +0100
Message-ID: <CAM0jSHObQh+p2Ebj84ER0mOCbTFoCVd7KHsVPcA8CGs79XH=_w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Give each object class a
 friendly name
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 May 2020 at 19:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Name the object classes and their offspring for easier lockdep
> debugging.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
