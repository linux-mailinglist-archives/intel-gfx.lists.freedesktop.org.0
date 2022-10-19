Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A514603A4F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E619210F15E;
	Wed, 19 Oct 2022 07:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4407810EA7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:06:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E2542B81F4E;
 Wed, 19 Oct 2022 07:06:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 364B7C433D6;
 Wed, 19 Oct 2022 07:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1666163198;
 bh=2hIj3mPDYaistCfLU1l8eKpPCAGL6nKuwyTSDH03Kqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x9D9ukRhqplqwhgEuxkAVqjDnVQGZQ7JLYzrV3Q9Xp5mJgWe4GqAehaA85NjeqpS/
 Zah8fWGH6lMfa3P2xABL1EqXClos9ZDFMYkK7KM9h5Mo9lxbIsf11jI814SXzYZ+8V
 p1KF0IYoDCpW7TvpEulwflyUgg1G3Woda6A1QTH0=
Date: Wed, 19 Oct 2022 09:06:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y0+h++6NReFAZhrv@kroah.com>
References: <87k04xiedr.fsf@intel.com>
 <Y0+fex0i0vmBL6QX@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0+fex0i0vmBL6QX@kroah.com>
Subject: Re: [Intel-gfx] v5.19 & v6.0 stable backport request
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
Cc: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 08:55:55AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Oct 18, 2022 at 02:02:08PM +0300, Jani Nikula wrote:
> > 
> > Hello stable team, please backport these two commits to stable kernels
> > v5.19 and v6.0:
> > 
> > 4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")
> 
> Does not apply to 5.19.y, can you provide a working backport?
> 
> > d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")
> 
> Queued up to both trees now, thanks.

No, wait, that breaks the build!

How did you test this?  I'm dropping both of these now.

Please resubmit a set of tested patches if you wish to have them applied
to the tree.  These were obviously not even attempted, which just wastes
all of our time :(

greg k-h
