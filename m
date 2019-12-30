Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFA712D119
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 15:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AD089E33;
	Mon, 30 Dec 2019 14:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7211889E33
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 14:46:31 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id 59so11192759uap.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 06:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kqX1Q9txnSm8AqRnhtnA9rbp5weZpWHWS12gY9gLoFs=;
 b=VLD2o5w31UNci6unb5labGlwi4yCT9e8Ji7iM3b7uDxdSnwpxXv4YrEnKUDJB2gr/B
 gA71vHDUQmjnMPVcUPYtuOBz1MeXe1VtBIgVf4bLVQqCz8fBUXMn+/ruKjzaBOGd4s/h
 fw/2a/v8/jdFcyBajLRdqfkW0fA2a/uqHCANpE+nAzLfEjbswvOEPxn1DXPXiHlH7ali
 q6ANR9joZVTrP74UjoEuiNNYG58z8GVSLqKik+wUx5pc5vuu85iOsLGf+a2Pyl2IWiS8
 1DUfc13/i7OAoxWxj2wZHAR0h9H5SgAtNCNVskqXlnmExa3oh0ZvAL9dxad2x6I6dV6A
 xY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kqX1Q9txnSm8AqRnhtnA9rbp5weZpWHWS12gY9gLoFs=;
 b=m7tml3XiLyPU5S6oZB1u159ZqkFaT2rpbufqmKpilMr3g18v8l5XblrYBYOUBWil17
 bZaPqY4RaHe2e0zrYqYolFiKQPYTSeSRMmM0l4yBayzyFzK2+u1vUxsWjm+HaTm2l9EX
 b1WgIHFQW6OPoMQTipQlzgCJ+1nn1E8y5cuMdOC7P+u5aHiCO8GzGygmnNcL6qIVe0ya
 b1r/T/uwaGaj9Rbd/Pet+ixwZ0b2buMBqUC5o6a8h6pueRieG1DtMtTrlykIDy3Qv8+B
 f4cPFsOHFtrOwnqe75RJ0madJu/qG0vmJ89F0GN5H1HfNlhg3bbsuZoaMY6p3ZGgpHD0
 t9Rg==
X-Gm-Message-State: APjAAAXR8R1ce3LjWeRghrJpaRRm6RRmMsohdXHqbxo02PjUnm9xNWmz
 ITLWA3hgvUjgErRNdWwiX31jNQB/roU8yxr9Asw=
X-Google-Smtp-Source: APXvYqxGi8ueFuFpk7aouTHEF9X6KqcWYzkmrp7EPsQoNniozq5aNKE4CjQziiZkYn9sryYJ1tlhrJ/lILsjnUn+zOI=
X-Received: by 2002:ab0:1c0e:: with SMTP id a14mr17736763uaj.141.1577717190540; 
 Mon, 30 Dec 2019 06:46:30 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-4-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 14:46:04 +0000
Message-ID: <CAM0jSHOZ-u9KRGPj546Th8Bcbp1hoWAPUoxN1qxoq9oz=As3DQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Do not restore invalid RS
 state
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
> Only restore valid resource streamer state from the context image, i.e.
> avoid restoring if we know the image is invalid.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/446
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
