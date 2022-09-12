Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A586D5B5EE7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 19:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ABD10E065;
	Mon, 12 Sep 2022 17:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A12A10E065
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 17:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663002589; x=1694538589;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tEdetczyh8osGbsNkFX/RmOyn2kQ4lIUdpiEqDp5vAU=;
 b=iZtqXuodn0FWAtL7rqEyEXl/1DyXkY+YtdRf0RQfRNIx7tu9nqgBOVQf
 xdAJOW65IRDKHs9hvqESKsZgo9ED6PCBS4QXZ6fCczlSbZ0QWg4/BpMAA
 VuRRGlkXeoW4FsnR+W6zL+uPm6dC8YK+WiHe8JLSKl7hw9rntR/bVjaBR
 UV4Y8j/1Pj/Po4oMwhTggVUetZAfI30JROqQta3pkCTmCtm6fCpXnESPs
 VkUrTw8pV/htZ/FVsEG0cy6+sZO/lPZQ8qUNfCZ79c9bwhPdzFuJcu3wi
 0KYkmMt5XcWtRtX+shhSxI+jghRgVRnitaa8mdz4LwjgH+9oAadY881rK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="277655734"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="277655734"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 10:09:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678181927"
Received: from mtabaka-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 10:09:47 -0700
Date: Mon, 12 Sep 2022 19:09:45 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yx9n2XlkOO1x05D5@alfio.lan>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <Yx8VnClBmyDHCd3C@alfio.lan> <87czc06bkq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87czc06bkq.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] i915: CAGF and RC6 changes for MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Mon, Sep 12, 2022 at 03:07:01PM +0300, Jani Nikula wrote:
> On Mon, 12 Sep 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Badal,
> >
> > you haven't Cc'ed anyone here... Please do CC the people
> > interested in the patches and dri-devel mailing list.
> >
> > If you don't mind, could you please resend the series either as a
> > V2, if you are going to change something, or as a RESEND, if you
> > will not change anything?
> 
> Anyway some of the patches have been merged already so a rebase is in
> order.

thanks... I see that some of the patches have been reviewed
previously, I missed that.

Thank you,
Andi
