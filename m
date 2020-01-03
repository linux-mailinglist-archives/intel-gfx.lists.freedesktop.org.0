Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE112F8B4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9674F6E30F;
	Fri,  3 Jan 2020 13:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0366E30F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 13:19:27 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id z24so9254793uam.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2020 05:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3/pFVgeoTlbjl57o1sT/yC4G4+Br3TZnxTFUtguJSw=;
 b=V+JRvNm6HPLlWin2VDacqL4dRkLG99EdlD0smotHduqzViTGG1rKL+ICsrE6rUedrZ
 A77NxXKGbzRrozIEsfmY+N3nfnxgv8Tan5hHv8KIh00ULbbniPHyMc4ffx4C1eqrnA/b
 60Vi0siWWs6IM3J9THbHRrpXK4WJVQRZ6pocZLyhaYdZhps5Oq7kB9VYkFkbRXovSGqu
 MiKL99bfr+sNK5E3TZILzAjlWf0uXxmQ9kVI8yNo0nai1ecq48JaAGJY96FFFBylmCX0
 tYyGuQIqBXNrnSMYhM9eCvumtyWGX4fM/G24xHe6I/a206ygUZKVQUkyW9+i/UQEt5rC
 13MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3/pFVgeoTlbjl57o1sT/yC4G4+Br3TZnxTFUtguJSw=;
 b=SzmEqMWUjqW1c6f7Z0YCr/YG+Sf45kEIlwT9vQmHUQNg4iruY7Fdkocgc96F54jLxU
 /L5OthyU4YELU6bhkLxqPLQZ01NxXqHllSXu5rG5TSG1RGmqKg+rxC+4mFqifar+zC8+
 VCWJR9S4ZkJ5gOVUsYcUUNP2ZeGyALiAYcojAgdOll+VHu3HokyOUZxbUDuifmjPYVnB
 UEYAyQ3NtIkQ4jA8svMEPZF2JRRYn3mJrryKkAX7KIr5044jeNWQyKpUx4SnNqMhrm2I
 +KUYXd+u+3iDp6UQ1ZybFGbNvXwLvm+2WQWcziDsW1Hc3UZWPRTtxwO2A0J2lPDWxQ7n
 7Yug==
X-Gm-Message-State: APjAAAWcSFChZjYqY9hXrV7NuJW6orkukcNx7QVV+aGkUHahFQ8tA83w
 HsEEEgeMx1FWS6fMt5q+Jm1iOzVzbI3sXhVN+oc=
X-Google-Smtp-Source: APXvYqwdqezVj3fNNmnyFB5nFKWhheu0nO0Bb++vftffU9DJUjoUSK5SJxJ5CISVvr1BFu3c2qH09N1SRuTMktPMjPQ=
X-Received: by 2002:ab0:1c0e:: with SMTP id a14mr29632066uaj.141.1578057566558; 
 Fri, 03 Jan 2020 05:19:26 -0800 (PST)
MIME-Version: 1.0
References: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
 <20200103104516.1757103-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200103104516.1757103-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 3 Jan 2020 13:19:01 +0000
Message-ID: <CAM0jSHOXva_14prwqWqd-bm0mHWa76=MBc=sbN=z9DestEZipg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Make headers
 self-contained
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

On Fri, 3 Jan 2020 at 10:45, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Include the types used by the headers to they can be compiled
> standalone.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
