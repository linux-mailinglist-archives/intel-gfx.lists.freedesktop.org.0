Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132691B129A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3EB89241;
	Mon, 20 Apr 2020 17:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9456E10F;
 Mon, 20 Apr 2020 05:24:23 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id t9so1947571pjw.0;
 Sun, 19 Apr 2020 22:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K1EufJhoKXAZrVxjekdMJrvgmrsL3ufW1zU9l0LvEYY=;
 b=QeKlHqPsAtrWCjI2tksKuSg+NKHe3EvKzPiEdY2oKnzpnXrrRSc/qZezgZ9oOE580l
 AyYwxnYthB8DKt7cN89Pa5PKRJ1yqRQCh1d9ceifRGfmlRyZCKzQdblPaq4fdyOFgwUJ
 SO+7tBeVm69vQ1UC6cWQ5kVquL1RwbafW3TAMj6caqam5UI/znXuo78qxgHjBkobZFuK
 mT56fqxQVCrSSbenEqcBnvYh5T4qfK9EIs86X5XADZ3yaZFlRB02YHn5fwP9ZzqPn/lf
 YCRO3wScVTN78LCjOmuqRvh0AyZbuIEanKt8SRhKsnRzbAbFHtX4WuT0gD8UxEEaaMGL
 qxfA==
X-Gm-Message-State: AGi0PuaQwgGRFBHazRO1gO8RxLLNRueDugZl+WUAlmzWgULcTSIE/SPV
 pMXWuCQJla1/DKAVAXdUQPw=
X-Google-Smtp-Source: APiQypKGL2ACEgr6lcqS/nTfLQ/3dlQmBWrZf/B68lXNXdC97qK11XT6Prr3sMiFI/6YeYSmGA8OEw==
X-Received: by 2002:a17:902:8b82:: with SMTP id
 ay2mr15735468plb.285.1587360262734; 
 Sun, 19 Apr 2020 22:24:22 -0700 (PDT)
Received: from sultan-box.localdomain ([104.200.129.62])
 by smtp.gmail.com with ESMTPSA id m3sm25197383pgt.27.2020.04.19.22.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 22:24:21 -0700 (PDT)
Date: Sun, 19 Apr 2020 22:24:19 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200420052419.GA40250@sultan-box.localdomain>
References: <20200404024156.GA10382@sultan-box.localdomain>
 <20200407064007.7599-1-sultan@kerneltoast.com>
 <20200414061312.GA90768@sultan-box.localdomain>
 <158685263618.16269.9317893477736764675@build.alporthouse.com>
 <20200414144309.GB2082@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414144309.GB2082@sultan-box.localdomain>
X-Mailman-Approved-At: Mon, 20 Apr 2020 17:06:15 +0000
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Synchronize active and retire
 callbacks
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris,

Could you please look at this in earnest? This is a real bug that crashes my
laptop without any kind of provocation. It is undeniably a bug in i915, and I've
clearly described it in my patch. If you dont like the patch, I'm open to any
suggestions you have for an alternative solution. My goal here is to make i915
better, but it's difficult when communication only goes one way.

Thanks,
Sultan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
