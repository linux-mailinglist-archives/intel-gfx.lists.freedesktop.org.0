Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B40DB12D06A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B03D89D9B;
	Mon, 30 Dec 2019 13:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A759289D9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:43:44 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id c7so8176806uaf.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 05:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U8pdI/JuuT9jA9YcB8YgYPBXyoq2NDtc8o4MfTWI9pE=;
 b=c+Ne0HpVTFxCzhh8ScLn4p5bIREVVsSesWI9M0gr+Fx+DNkvA/8Q8mVSMOrkDGEj2m
 /5lMiF9/Xc1qNUFMKyQWpEIHP0wRK5ysJNKxJGMDbkv3BiE/g57GNPVqfOR9iG+ktH3y
 dNdQ/W9uTAR/2ZliL4GY23Ht9eP7gohqyW+D8CMn/QFBfT1/T76u7PjgkAaQHwGlNq9+
 umCDZArBYEvnfp1sBQg5j/u+CaRFSreDeOdl0ECsA1Zab8vQQhsE2YZxLujEtX1Okvyf
 zkN0lUaxpDfEZgYN0YSalI0/1VpHziRexc7ySGELt30I4HvYeNBe2ifKjz+cFyWdgFor
 37Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U8pdI/JuuT9jA9YcB8YgYPBXyoq2NDtc8o4MfTWI9pE=;
 b=cU6JYiGAq+pmyA2otr+ytvtLXW7deWvO0NZffjonUeHGuL8Rr8O+GXnYY/L07SzHqU
 eXZ7WPJSYMol9glJyqA+TjaKpQ7+NxZxG43Ti6+sPhtMLZIEyg4JzHGmSyPYMKXJp2xi
 BTYxvGbcXx4IzIgXzI+FdolDXC6hZzT0QD3eIvNJihC++6XUT5XnqRPbhwijxiqQlMHd
 Mr5pmU/Mf405YwZ/A/Symi6SigzfPqfbrAKOOfkxQq1eN01R3p0AyR0FluhvVHMpddgC
 Y0wbzbsnnKbNsSlefIBFEcUlBBrgsSkllcHFHuEbYVzF/V4UdXHqQi7EwqfnTrGmv4+l
 8vVg==
X-Gm-Message-State: APjAAAV/DFPFEF+dGPbezprwFhWKSdKvoKuhaqNsZe58eHw+V4J3uFKw
 PKIl3EDLVEO4InAruCa3mnZSPqW7K5gyVf/xaSTfDg==
X-Google-Smtp-Source: APXvYqzRKd1BsrKr+V5AW3Bqt4YlrX5L5frIJZ4hGictYkJm7TVH54oouzmhMH+ZGJGZTmSo864Z1I/ArLn0CcrfePM=
X-Received: by 2002:ab0:740e:: with SMTP id r14mr34855262uap.104.1577713423838; 
 Mon, 30 Dec 2019 05:43:43 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 13:43:17 +0000
Message-ID: <CAM0jSHOT9T3UGqBhYayBy6SokxkVPtdfYgG6f21VBFRy4y2dUA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Avoid using tag 0 for the
 very first submission
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Assume that the HW starts off with tag 0 "active" and so avoid using tag
> 0 for our own first ELSP submission.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
