Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E74E2E2770
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 14:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F3489BB0;
	Thu, 24 Dec 2020 13:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF4889BB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:52:29 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id l14so1208468qvh.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 05:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5XL5ca/4qfMbTwJpSUN8Cgg2wIaWqofATICXeTpLfQQ=;
 b=Yq4WczjoY0ghRYVesNOD09VDHlAGN3qtno/QViip16wj9nDzQfrrZYyHyVq4RN/okw
 AtnCQLk4pE2W5mcSrK4F44XqrDxVd3Zd6Nv/nbOG5zdZgnBxtriN0DVTjc9k+z53sxML
 iFePrFTjNpMKM2Qd5g3g0o/xisPtIaF1cUUYOEO+GuZMJVIwy0/OVXDJrq9UU8FBmTeM
 kP/DYRm7/1F1LhE0eDH29+5EUqER+GSTmIhPS6yS0dsO2lzn4rj48LMcjQ5yVsMRV/KK
 CanVHa4fSLIE0lZ0UcV8k4mhtV/sgOzntIS5uykcI+WxSS2ckiuR4u/Sygr0r7KWwaLh
 C+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5XL5ca/4qfMbTwJpSUN8Cgg2wIaWqofATICXeTpLfQQ=;
 b=o7Hvr/elo7bfNoBVJsChsJBlL01niApJSb0ThFp4npMQdHi+aZu1h9gHb/qi0w4bHw
 dQkUukf+kNUVy+Zi/VfDhqdq3ABB7sxo/4pxfPj2eLaK9f6njEUn2aHmGoOgBFLl1o+I
 mEQmLODxHpjHQHnojJycQMEjpTGZVKGsUSeJz1GD5FB5/qc6vq5rC1vyKNm+QGskQlEg
 5nIPvZpG+NRzMF4yK2oqaoiGTEYEqHK8nuzghxCaDcAiw2z/oQ3gNBsn5zmUok1WE+t2
 i2sVRI3If6zox1KfpXYGzutHdM1+o9mjKHo2SlqU7lGQZk0MrJpWrV/PyN/7qWwkE3a0
 kFZQ==
X-Gm-Message-State: AOAM530W7KiaK86XyaomqhAbB5iQ+xN403Bat5F01wcdcUE/ZtYHY+bx
 BYqFeIePDPooQz7R7tEx5Ff/JlEo1rPP5ZQQFWHaora2
X-Google-Smtp-Source: ABdhPJza7WmlboKRUFr43bufmkGmiUpB/ldEjLg4L4O8T8at3Pn52jRtwdsxOE75OxMO1xSQtIOXN7yHazKIHwNbK+g=
X-Received: by 2002:ad4:5be1:: with SMTP id k1mr31552071qvc.48.1608817948658; 
 Thu, 24 Dec 2020 05:52:28 -0800 (PST)
MIME-Version: 1.0
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
 <20201223111126.3338-8-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 13:52:03 +0000
Message-ID: <CAM0jSHMsGSBL1UE8-w9kzq81cTkwgjeD=D_e-Wpe3v6DV82T9A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 08/62] drm/i915/gt: Simplify virtual engine
 handling for execlists_hold()
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

On Wed, 23 Dec 2020 at 11:12, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Now that the tasklet completely controls scheduling of the requests, and
> we postpone scheduling out the old requests, we can keep a hanging
> virtual request bound to the engine on which it hung, and remove it from
> te queue. On release, it will be returned to the same engine and remain
> in its queue until it is scheduled; after which point it will become
> eligible for transfer to a sibling. Instead, we could opt to resubmit the
> request along the virtual engine on unhold, making it eligible for load
> balancing immediately -- but that seems like a pointless optimisation
> for a hanging context.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
