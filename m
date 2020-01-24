Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F122C148CA0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 17:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C82E72B35;
	Fri, 24 Jan 2020 16:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E34172B35
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 16:59:12 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id g7so728747vkl.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 08:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SH0yZTXEgxjnLxN5oxgkHzlUbaowhxJI5l3NpBHRj60=;
 b=cVCbR1oAJslo8VzYIELVD4honGqg+bUXqo+H4Nog5KoeRq4/JleeLsYDHHT67nOsdM
 vu/Q+BVqDvwGfoAKW/3z3P+Zl6Cn8H7JNBZbXUTLYME8K0pBShdlZAOxKtvGyujpJ3Rc
 nyqofwC6fhia0UJ+DUO/6EeJAJtnzD928UOHW7TGsZw0qZSRI70oF3MdrhAAS1u79JDP
 4mOiHIWQqUs5ybB/cVl1oPu6QCn19QVXZqglgi8VsjH6vufj/rCuWtpVUcQRAsg8i90c
 2mowtlV+UREdOe0PsS+8ks6E67XnAa+FIH5XEW4Cfh8Mzjnp9RWTF7X+rGfOE5NoeWSy
 x3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SH0yZTXEgxjnLxN5oxgkHzlUbaowhxJI5l3NpBHRj60=;
 b=qPLTXLhxaSs5CPRqZ9GTEu/MRxAmhS633dsnx6DR+C7Z4TcUobDwxmHldaY7V9gPEC
 RX8UzhIR0FflItaTDkgGhb9+YRoJKl8bj0jAIqvF6kUwYL9S9u3cAOw/+fCDkMXNdUY9
 soiYhEWocyrDNQlC2ALXMwF7M+hYYYwEkm4lzYf5vIHlmoNeP6pU0/rm+79UWNR1N1vA
 fCoeT+0CNyf1Q99zKz4IWatwu/kGLF45QRhQ04hj7WCvqhSnG8X7PWy8JrNyEZYTLqLP
 tG7ZdsdjXPHrGRhhrZo4VzsSceqg+0XqaoRdp5iXcTgI14Jl45o7UeHXryNJBdSFL4U7
 wzig==
X-Gm-Message-State: APjAAAWSgtOGMXssPGKE13QRElwyoxgrb5pwIdBOVvUxmo27uGyNrQL6
 KxVCWdspIBLvr1itD9z7ujCcMZfEzAD097mHdeLiFVJk
X-Google-Smtp-Source: APXvYqyiQVnOFUBoAZ9JAPI1R1AIXS+HsSrSdUQErmPfoqo/BodJVlZRvcKTiYd3X71jyVyupuD8VTcRPr6BrOdoAIM=
X-Received: by 2002:a05:6122:1065:: with SMTP id
 k5mr2527261vko.14.1579885150580; 
 Fri, 24 Jan 2020 08:59:10 -0800 (PST)
MIME-Version: 1.0
References: <20200124143339.140988-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124143339.140988-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 24 Jan 2020 16:58:42 +0000
Message-ID: <CAM0jSHPzo8dvQ7Vn-D8jPBKnmMa-4TYJbyq-G09NyPsg+oP1yA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush engine parking before
 release
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

On Fri, 24 Jan 2020 at 14:33, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Due to the asynchronous nature of releasing our wakerefs, we can signal
> the main GT wakeref as complete before the individual engines have
> cleared their own wakerefs. During shutdown we assert that the engines
> are indeed parked before we release them, but for this to be always true
> we need to flush their workers as well.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
