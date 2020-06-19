Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C20F201A6C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 20:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE8E6E420;
	Fri, 19 Jun 2020 18:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A934A6E420
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 18:34:48 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id r9so3525108ual.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 11:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cOKOZeDJfH009KDlelHIed2UopTk9vGEdSKsmbmgi94=;
 b=SNXdbeT9Rg+ciTaPvE56hNtXO8Qd4Q6epcFnBZFQFbydm7mzSi1vYa/Mr9dHit/w9v
 VscV1GWuvp+mkjRHgxqNTMNwukYEIMtQt+1S9mu6iy4vQ9/IjAcd07+2uXsPEmTporC9
 I/6JlpNArcHj0zaHXe1127vPzly+axHlynaOYwVpi3OBuvWmL9KorE4FLqZjxglMufxF
 ls2Oek3wA3hkMRxeJF3KxIHXY2BUu+fneWeomRbMJ7dFO6x4rjN66Y90Bh9sY8kbukk1
 kMbXBlY5UQ9JsOJlhs4+RV2VV2UuSyL90IoCIywMshC+jrW9xxaSs6reQAWxxF0inMP7
 hF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cOKOZeDJfH009KDlelHIed2UopTk9vGEdSKsmbmgi94=;
 b=ZnLeAGQYEwyaTBShFsc7XkARNRhuOgnOljm4UDW5SKTX167MbWG5nxh8253+gj7ToD
 +jPgoDyHqoaqf67CkfQSdxJUtkpR0goxJlQJ1ogIueCyUn7OQeH9yiFC0ACSymF4qMUV
 XBio/ZsXrzFC1KGsZLR1TqLRjTaOww+Bv6C3z2ipTjBCGXQflBoEUryUbqavEtAgUsBq
 AffKbUmjPnBvbqd4L9ZZ0pyQ8Al1HdPobhH9Zy9zosvsY1jqAY79A4s8qs3+55Xs7QbX
 4IeNIcLGk467z7eeFPDrp2i4ja/hCVKCBe33uZoC2qDw9aUPEi7ba9MwPNZU2gi0VtWt
 E79g==
X-Gm-Message-State: AOAM532x3JNgFKp/AXqWd3I3rA2eqkuBFVWvpngmNPocXblznPhFNRvt
 I0pv6GH1cy9bxAZSv8NNIr4eLmxgF5O2fnbXBB1Ay8zB
X-Google-Smtp-Source: ABdhPJwFVKIV7GIn49EgxqCmUDFRgXem3MY+Z8/h1yLehqbLqKYH37CxI0XemaB0i7dLg6xoi+vDQCnULSBPhtFp+Bk=
X-Received: by 2002:a9f:2b03:: with SMTP id p3mr3623820uaj.141.1592591687807; 
 Fri, 19 Jun 2020 11:34:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200619151938.21740-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200619151938.21740-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 19 Jun 2020 19:34:21 +0100
Message-ID: <CAM0jSHM=7bTJr=f-sMuRN+2LhBFWDO4qrtXOmw3jg1xFrry5XA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Initialise rps timestamp
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

On Fri, 19 Jun 2020 at 16:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Smatch warns that we may iterate over an empty array of gt->engines[].
> One hopes that this is impossible, but nevertheless we can simply
> appease smatch by initialising the timestamp to zero before we starting
> probing the engines.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
