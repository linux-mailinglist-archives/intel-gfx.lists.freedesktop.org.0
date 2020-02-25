Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C406E16BF87
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A030C6EA9A;
	Tue, 25 Feb 2020 11:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C3C6EA9A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 11:24:09 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id m195so3383795vkh.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 03:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QL2jq62Wk0TqWIcLb3cfHQx/DvMipWUUn1fKyPyGw5A=;
 b=You/ooR1ZrOB7jfRGDUo1W90itf8dxX5RKs58zr1cwmimhgi34KfG4KCuhhj3wuS/Z
 VV9exoJGhi7iQPH3F3rLZH73l9v48HuVI3BJyual24uavxCOz74YxNBV43IZWqc+YuOr
 K0AMkcz3D4ZAyCY17aLKKk0/y6IPPphNiNYkz0z1TT4i3udaquFyhcTD0Wf5QjefGk1E
 9EqCHArD8Ruom9wEc01YJIc6QhuZ+yBGwwnKdG/EBPCri3sTKqRWfTFiwRBiWdw0xi5C
 etfoKI339HglboqEae2fa22CCc08sYA1D+OWrwJUDff0zkMzU5HUlb7oCzx1WMhIHuCS
 U+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QL2jq62Wk0TqWIcLb3cfHQx/DvMipWUUn1fKyPyGw5A=;
 b=hrRo0BASmSy9uTXkMtjFdxtajxrQbopQHwfP2MGuAzAbfStMRAHPdSSTsaL1PTqgMX
 IZC7i+P+IvOyEZdUY42xoaz333qn9pNPx1bbvF4Mmtt4aPTzqYloBzg8LJlhmwVtcVzk
 OV3rlfg6UxUM42TNIT3m6++dowV0PuaEpXRZVYgAEvOww8dp3XbW0FiPb4eFyI5PnvGl
 2qga4dQh4M+y85I/y0R6BnPikH4PDc+DYNJho3tFcVWqJyehBNbpPNFncqP4eBTRCffr
 VAuC8VM11A5XGsx8sQMpl77qcVWJazyONOycDGWwyeT9W/6F01leFbunEoWDT+DUKcpF
 HrZg==
X-Gm-Message-State: APjAAAXSe5tm2CwWXklygz17YeXN8BmH2IFrkbzmHlF7piTmJ1UvQJlM
 Ax//T0rak+pT7jK6ck1OCXU7NGBxPZgzK2GiDbY0LA==
X-Google-Smtp-Source: APXvYqz8qWHoPtR0c/nE+Y4BoSOIUx7V4mH7jjNuV4+5NOIYAmDzfUPRdfW2OaUiNFhslR/aXjjmAyNTsUwfT2vD8O0=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr25274486vkc.12.1582629848732; 
 Tue, 25 Feb 2020 03:24:08 -0800 (PST)
MIME-Version: 1.0
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Feb 2020 11:23:42 +0000
Message-ID: <CAM0jSHNruaBnmzKHPbukRPe_0FPwDtM07fBsW502eVSh_e8b_A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Drop assertion that
 active->fence is unchanged
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

On Tue, 25 Feb 2020 at 08:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We cannot assert the fence is not yet changed as the next thread may
> change it prior to acquiring our lock.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
