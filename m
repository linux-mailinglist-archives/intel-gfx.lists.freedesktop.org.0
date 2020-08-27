Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8232545B2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 15:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992836E07D;
	Thu, 27 Aug 2020 13:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FCB6E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 13:09:22 +0000 (UTC)
IronPort-SDR: ruGGIoDMQytfYXJiWXhRYDGHtKIrbT2Z/zzsy7B+eDNOyI/9amimk/44GqnSTZMcrHKiVXc00V
 6BdsoM7WY2/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="144152161"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="144152161"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 06:09:22 -0700
IronPort-SDR: KETtsR9ux/MR+pq4wKhyy5rL0khs6VONj5d+N1HbW/LSea2jf0uIDumit0J7b3AcEEIZE8R+ZO
 A5jCLUHFvvLQ==
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="475201177"
Received: from jhaapako-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.249.33.115])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 06:09:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vincent Guenat <vincent.guenat@orange.fr>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com
In-Reply-To: <0bfcc9dd-942e-d9c7-dc23-f69998740419@orange.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <0bfcc9dd-942e-d9c7-dc23-f69998740419@orange.fr>
Date: Thu, 27 Aug 2020 16:09:17 +0300
Message-ID: <87ft885j7m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [i915] flip_done timed out errors with i7-1065G7 on
 kernel > 4.19
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Aug 2020, Vincent Guenat <vincent.guenat@orange.fr> wrote:
> Hello there,
>
> I am seeing this error after recently installing Archlinux on my Razer 
> Blade Stealth with the kernel version 5.7.12. I have seen it as well on 
> 4.19, 5.4.55 and 5.8.0.
>
> The error happens during boot time where it significantly increases boot 
> time. It starts with a time out in |drm_atomic_helper_wait_for_flip_done 
> followed by more time out in |||drm_atomic_helper_wait_for_dependencies 
> and |||||drm_atomic_helper_wait_for_flip_done, each of them taking about 
> 10 seconds (which is the value in the source code as far as I can see). 
> There are 11-12 time out at each boot.|||
> ||||||
> |||A similar issue was already discovered in previous version of the 
> kernel, but the selected solution of adding video=SVIDEO-1:d to the 
> kernel parameters has proved unsuccessful so far.|||
> Note that Xorg also fails to launch, but this may be due to a 
> misconfiguration from my side, as I start it with startx.
>
> There is more details (including a dmesg output for the kernel version 
> 5.8.0) in my post on the Archlinux forums: 
> https://bbs.archlinux.org/viewtopic.php?id=258051

Please file an issue at [1].

Please add drm.debug=14 module parameter, remove video=SVIDEO-1:d
(because it doesn't matter on your hardware), and attach to the bug the
full dmesg from boot. If you can, please try the drm-tip branch,
otherwise latest release or -rc kernel available.

BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs





-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
