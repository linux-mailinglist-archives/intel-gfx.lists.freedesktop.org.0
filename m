Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F936A1B661
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6595210E96C;
	Fri, 24 Jan 2025 12:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="SQUWwMME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B78410E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 12:55:58 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-3863494591bso1122096f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2025 04:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1737723357; x=1738328157; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=I/aZ784D05tQQsLUZsCHs3Nal6Bzs+WAZ/MZEsod7Fc=;
 b=SQUWwMMEVosKilKp7/hS90OAVCwYA+G0TZlZdL2Q2QoJZP9h520uTwT9coMXcXzl3e
 n2ugfAoHaMfYFly14oY193N3ehP6Hrpu9rObeI2lHB+pd3d5cv59t5PMx4hzRv79SVQM
 Dem6cCws8/L4X2nW7/WjqB5v4DHOO2aVHZRFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737723357; x=1738328157;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I/aZ784D05tQQsLUZsCHs3Nal6Bzs+WAZ/MZEsod7Fc=;
 b=nCmBfDoKbEc3k+m9yOFqyP+XZZbCyWy3fhSlZWV9VVlLqiPKEufsYMARdlba7Uf3eC
 +FFoPWdtS4h353G//V0jjIgvk0xv680MEq21hrHGrGFaW/njycHz5ABTuiHp5bbssUWF
 xCjHFyptAw5XXwqaZLVJj2ldp73MhhAiA8LI+6opEM1Q/qN7YzMeKk4pnwLj+cvvTlgw
 yGXqaid/L4RoUDSTDT1jVbaBijsQQnTJRXrfJnsLQ7D6Rm9qpgA2GqzqQjKzHbfjYTl8
 tCpGrdZqS2PwhgOpMH13L9hIC0QyKbzC4I/SiK4HKxesYVmKCbPrzBtz+nXhYJJAhhpT
 +Prw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlGUK+BixDb55Pjy7toqQUijynulEanhgGo3Hi7EAHjTXdrwCs52rkMja2sAKhGz1RibMTLlHMkv0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzycacxAGkzRfVbEYrz+3+DOPy/hR1dY2Txsf6I/LMI/oe/89KP
 HJeQd3d5fScjIgQxSC9U9q8jI/ewuGN0x3/tGyiGiFEi4gJfD3yctGD+pbve5KE=
X-Gm-Gg: ASbGncviQqi5xv9UGLAvZt1nsHggw4bKLK4wpGKvroo+wWUAUYuBAddQUTsqcrfm2wh
 v9WBPHfNwZxqPVvjs+AXYI3hdjIsx0olX4f8QQVjm/rhs9b/xYhJLeJ9vaFh1CP6ZHzfswLvVH2
 aRllpaeLgh/qRveH74ymKivsHcNrUKNNIze9rBom1lyiaHuBO/xcquNFVAX6rb3OJtuL37bLm01
 N/aQBfL5WMMJeokULIjbXcVKomCxBRzVSO0ZV3EWUyUr1o8uHvk5b6g38RFy/m08mTCx98SvKQI
 hoSqdO47/5OSLVWf
X-Google-Smtp-Source: AGHT+IH3iyEz09mWGXWIVduy+5NszoAXM+V3Xtk5FqHZz9JAODD5+/kc+Y35WkykXFUL8oCc1cmbLg==
X-Received: by 2002:a05:6000:4011:b0:385:de67:2269 with SMTP id
 ffacd0b85a97d-38bf59e20e0mr25242780f8f.36.1737723356711; 
 Fri, 24 Jan 2025 04:55:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c2a188689sm2619988f8f.48.2025.01.24.04.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2025 04:55:56 -0800 (PST)
Date: Fri, 24 Jan 2025 13:55:54 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/print: Include drm_device.h
Message-ID: <Z5ON2tilL0X9NHrm@phenom.ffwll.local>
References: <cover.1737644530.git.jani.nikula@intel.com>
 <11497a3e490c001f3a884acb310b4812b643a9a0.1737644530.git.jani.nikula@intel.com>
 <8734h9mujs.fsf@intel.com>
 <173764885189.34727.4688059102283695255@intel.com>
 <87jzakbfd5.fsf@intel.com>
 <173772128587.3215.14493226150879231009@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173772128587.3215.14493226150879231009@intel.com>
X-Operating-System: Linux phenom 6.12.3-amd64 
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2025 at 09:21:25AM -0300, Gustavo Sousa wrote:
> Quoting Jani Nikula (2025-01-24 08:50:14-03:00)
> >On Thu, 23 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> Quoting Jani Nikula (2025-01-23 12:14:31-03:00)
> >>>On Thu, 23 Jan 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> >>>> From: Gustavo Sousa <gustavo.sousa@intel.com>
> >>>>
> >>>> The header drm_print.h uses members of struct drm_device pointers, as
> >>>> such, it should include drm_device.h to let the compiler know the full
> >>>> type definition.
> >>>>
> >>>> Without such include, users of drm_print.h that don't explicitly need
> >>>> drm_device.h would bump into build errors and be forced to include the
> >>>> latter.
> >>>>
> >>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >>>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >>>
> >>>This posting should have had
> >>>
> >>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>>
> >>>but obviously not needed if the original [1] is merged instead.
> >>>
> >>>
> >>>[1] https://lore.kernel.org/r/20250121210935.84357-1-gustavo.sousa@intel.com
> >>
> >> Hm. Since that's in the upper drm layer, I thought I was not supposed to
> >> merge it myself.
> >>
> >> Am I? In that case, is it okay to merge it via drm-intel-next?
> >
> >It's generally not okay to merge non-i915 stuff via drm-intel-next,
> >because only i915 is under our maintenance. We'd need rationale and acks
> >for that, which we occasionally do, but there's no reason here.
> >
> >But you can apply for drm-misc commit rights, similar to drm-intel, and
> >apply the patches to drm-misc-next yourself. See the maintainer tools
> >documentation.
> 
> The first bullet point in the list of criteria for drm-misc[2] says:
> 
>   "Submitted a few (5-10 as a rule of thumb) non-trivial (not just
>   simple spelling fixes and whitespace adjustment) patches that have
>   been merged already."
> 
> I believe those patches should be targeted at drm-misc, right? (meaning
> not stuff that have their own tree (e.g. drm-xe drm-intel)).
> 
> If that's the case, since this is my first patch targeting core drm, I
> believe I would not fit into the criteria right now.

So we're generally flexible about where the patches landed, but there's
also the requirement that you plan to regularly push more patches to
drm-misc. And that's probably not so much the case here.

There should be enough drm-misc committers in the intel team to do the
occasional push to drm-misc for you.
-Sima

> Decided to ask here just to make sure I don't raise a request in vain.
> 
> [2] https://drm.pages.freedesktop.org/maintainer-tools/committer/commit-access.html#drm-misc
> 
> --
> Gustavo Sousa
> 
> >
> >
> >BR,
> >Jani.
> >
> >
> >>
> >> --
> >> Gustavo Sousa
> >>
> >>>
> >>>>
> >>>> ---
> >>>>
> >>>> Including here as a dependency. May be merged independently.
> >>>> ---
> >>>>  include/drm/drm_print.h | 1 +
> >>>>  1 file changed, 1 insertion(+)
> >>>>
> >>>> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> >>>> index f77fe1531cf8..9732f514566d 100644
> >>>> --- a/include/drm/drm_print.h
> >>>> +++ b/include/drm/drm_print.h
> >>>> @@ -32,6 +32,7 @@
> >>>>  #include <linux/dynamic_debug.h>
> >>>>  
> >>>>  #include <drm/drm.h>
> >>>> +#include <drm/drm_device.h>
> >>>>  
> >>>>  struct debugfs_regset32;
> >>>>  struct drm_device;
> >>>
> >>>-- 
> >>>Jani Nikula, Intel
> >
> >-- 
> >Jani Nikula, Intel

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
