Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D101D6A5A94
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 15:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DD110E201;
	Tue, 28 Feb 2023 14:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EB210E1FC;
 Tue, 28 Feb 2023 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677593307; x=1709129307;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tOQmms2GUz82HWTfshF6FjkJB4k4O9vsHa9VO6BVGt4=;
 b=UwnFYgYSHg4RRSXx8VaXJSgjyqJ0uTjJ/B5BttungKlZDOcf2wkKw6tu
 08qWl06jYTvNIfMvjhGZiCwTkz7aKjYNaKRY1xvVQFUsp5BJ4W6oBFJgk
 ESxSMjLv6aGz4PlEqhZj3VJirlfwJLu7NRqJk1SvkEcP/8hql1jimfdSP
 W3wm8pBLcBL9jTHTje/jcIAMxZjxwrFdeqYWMLq8Q4caH6AVHYf3OBPGL
 M0se4Qmgj6nhPhyZRuzOHOTQl0ne5bdNzh2DzBV6swE4ERNwqRNjwiBBj
 RyGnzUpmRCJsdqRyYA5WDtZTAzi5adScxA5d1z156wylCXAO6tfSvnkA0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="335627076"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="335627076"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 06:08:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="624038160"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="624038160"
Received: from barumuga-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.26])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 06:08:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Dmitry Osipenko
 <dmitry.osipenko@collabora.com>
In-Reply-To: <Y/4AMJ/+3BhTa+FF@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230228125054.1952657-1-andi.shyti@linux.intel.com>
 <71dee5cf-3c12-8d5f-5d2a-be0a39647d8c@collabora.com>
 <Y/4AMJ/+3BhTa+FF@ashyti-mobl2.lan>
Date: Tue, 28 Feb 2023 16:08:18 +0200
Message-ID: <87bkldzxv1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/shmem-helper: Fix compile error
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
Cc: Asahi Lina <lina@asahilina.net>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Feb 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Dmitry,
>
> On Tue, Feb 28, 2023 at 04:15:28PM +0300, Dmitry Osipenko wrote:
>> Hi,
>> 
>> On 2/28/23 15:50, Andi Shyti wrote:
>> > Commit 67b7836d4458 ("drm/shmem-helper: Switch to reservation
>> > lock") removes the drm_gem_shmem_get_pages_locked() and
>> > drm_gem_shmem_put_pages_locked().
>> > 
>> > But then commit ddddedaa0db9 ("drm/shmem-helper: Fix locking for
>> > drm_gem_shmem_get_pages_sgt()") reintroduces it.
>> > 
>> > Somehow these two commits got mixed up and produce the following
>> > compile error:
>> 
>> The 67b7836d4458 goes after ddddedaa0db9 in misc-next. It was a bad
>> merge conflict resolution in drm-tip that was fixed yesterday, there is
>> no problem in misc-next. Where do you see this error?
>
> yes, indeed! I was indeed surprised to see this mismatch.
>
> I see it in the Intel's drm-tip branch[*]

To set the record straight, drm-tip isn't Intel's, it's an integration
branch shared by the drm community.

Looks like the same bad merge resolution has resurrected itself somehow,
maybe Thomas'

commit 418ce969b4c8533c7c76cc0b7adeb432ccdc137e
Author: Thomas Zimmermann <tzimmermann@suse.de>
Date:   Tue Feb 28 10:03:24 2023 +0100

    2023y-02m-28d-09h-02m-44s UTC: drm-tip rerere cache update
    
    git version 2.39.2

in drm-rerere brought it back.

And the build is indeed currently broken.

Moreover, when the build was fine for a while, apparently the changes in
shmem broke a bunch of machines in Intel CI. And due to this, we aren't
getting any CI results for incoming patches right now.



BR,
Jani.





>
> Cc'ing the Intel's mailing list and maintainers, as well.
>
> Tnanks,
> Andi
>
> [*] git.freedesktop.org/git/drm-tip

-- 
Jani Nikula, Intel Open Source Graphics Center
