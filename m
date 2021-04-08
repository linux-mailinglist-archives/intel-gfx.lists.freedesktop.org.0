Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC1A358CF3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 20:51:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 300D76E321;
	Thu,  8 Apr 2021 18:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A116E311
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 18:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617907906;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BD/3IJ//4IbIiQsBvvArASrfK6cu+iAAJOBJpUvbC/A=;
 b=DWxm99yvMg88z4vNMmAGSjpJTcxX4/vqK2NBFBIiwz0bPtjvLKdskHKDfAcST8qUNLvcM0
 mQM/NZG0e7BUtB9c0c27OLn6GTlaKNztKhxp8faNtibH9lEjnidHiOJ+N6o5X6/NUxRtd8
 1Qv6nynZedB61kgDdwj7t5Ti0kf+wLI=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-UaW25uhmOTa9um4tXWzJJg-1; Thu, 08 Apr 2021 14:51:45 -0400
X-MC-Unique: UaW25uhmOTa9um4tXWzJJg-1
Received: by mail-qv1-f69.google.com with SMTP id e10so1704163qvr.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Apr 2021 11:51:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=BD/3IJ//4IbIiQsBvvArASrfK6cu+iAAJOBJpUvbC/A=;
 b=SMnyCd80YagUt8OLUPSc8d+QjvGWe5sOH6Ezoze+3q48fBXIh/gmWVfsaDGVY3GmCh
 7JHR8QeDJhRmzJB0VQbqmlGbdWTMJpiXGB0Osw7GbxWLxiq2iTRm0A4km9vlXBYxk845
 OOKzoWkBIYfNAHqksXOM5mPQ9P+kwdhgEC6q+v5fbQo5zD3E6UbEnBgCouFwUlbAVdJn
 hFyZyLJfChLp8MsqYexMrV4Q8YSBev6r1rZr4vd8GvKoOFV86AYX0mx/Puyu2jtjbdi0
 TK7pwAMgFkCMbeeklndmYZpjDUIdaq2E4ig0fOakSnZtGzrLOGxC6pPNsS5/MPbY1dsk
 HBgQ==
X-Gm-Message-State: AOAM530kKNkwbgquEQxwfrtEtDwtSttJK6o+VG+Bx8ZMirqzUmeGIwA5
 o+AMLn425fDvYN+LYMWZU9GxXatdsIFluGG/PiZ35Mt2icvGw+JQ77qXq1dZypN96tyTwuVY+/Y
 zIzQqIbP3ZE7h7uLxa6C+Bqe7wm9v
X-Received: by 2002:a05:6214:204:: with SMTP id
 i4mr10502070qvt.47.1617907904540; 
 Thu, 08 Apr 2021 11:51:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrMnVVlxnhuJ6a9rN/xNvll03hc+4P139kmw6bFat7NGytQIf28KfBPqtGSmUXky694Mxo+A==
X-Received: by 2002:a05:6214:204:: with SMTP id
 i4mr10502051qvt.47.1617907904388; 
 Thu, 08 Apr 2021 11:51:44 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id y9sm235018qtf.58.2021.04.08.11.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 11:51:43 -0700 (PDT)
Message-ID: <893131fcec2cd4d85d840439ddc2f2899f412f1c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 08 Apr 2021 14:51:43 -0400
In-Reply-To: <87zgy9hvvv.fsf@intel.com>
References: <20210326203807.105754-1-lyude@redhat.com>
 <87blaym8by.fsf@intel.com> <YG7fz5UmK/SaoY/U@phenom.ffwll.local>
 <87zgy9hvvv.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 00/20] drm: Use new DRM printk funcs
 (like drm_dbg_*()) in DP helpers
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
Reply-To: lyude@redhat.com
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

JFYI too - there was a legitimate looking CI failure on intel with this series,
so don't be surprised if I have to respin a patch or two (I should be able to
get it asap as I finally just cleared most of the stuff on my plate off for a
while)

On Thu, 2021-04-08 at 14:13 +0300, Jani Nikula wrote:
> On Thu, 08 Apr 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> > I think Dave caught up on pulls to drm-next, so after a backmerge of that
> > to drm-misc-next I think should be all fine to apply directly, no need for
> > topic branch.
> 
> Yup. We've done the backmerges to drm-intel-next and drm-intel-gt-next,
> and are all in sync, it's only the drm-next -> drm-misc-next backmerge
> that's still needed.
> 
> BR,
> Jani.
> 

-- 
Sincerely,
   Lyude Paul (she/her)
   Software Engineer at Red Hat
   
Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
asked me a question, are waiting for a review/merge on a patch, etc. and I
haven't responded in a while, please feel free to send me another email to check
on my status. I don't bite!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
