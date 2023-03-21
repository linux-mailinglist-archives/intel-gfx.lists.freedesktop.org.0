Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99E96C2B14
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 08:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 317B910E06F;
	Tue, 21 Mar 2023 07:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4517C10E06F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 07:12:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B240EB811B9;
 Tue, 21 Mar 2023 07:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14D68C433D2;
 Tue, 21 Mar 2023 07:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1679382742;
 bh=MYHwvAecIn/MJ1cf9GJkT4Tm9G9T1Dl3igb4+UHlAY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f9QcUSt6GhD+1fJOxZrB2iOk66NTs9zVXbCpSddEqtjZiyxta6MacLvognWrs0AcR
 NnwFk+HNsVH2SU/7v4Hz3LLMDbb0r+qPLuI+EZhGvlJsZ7hGlwiy2sTIDSNxxDliGn
 dyWcuqR9cyk3s3ceFi/kLgLj5Oh6fLpvQrvgUP9U=
Date: Tue, 21 Mar 2023 08:12:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Philip =?iso-8859-1?Q?M=FCller?= <philm@manjaro.org>
Message-ID: <ZBlY0yzJsT4k7bRL@kroah.com>
References: <8a1bbe56-4463-d18d-d5a9-d249171a569d@manjaro.org>
 <a0be2b31-9e72-1254-978e-570b27abb364@manjaro.org>
 <ZBhfhJ0ylxqXPHee@kroah.com>
 <efc7e85a-a170-ba1b-8746-b00784e81e39@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <efc7e85a-a170-ba1b-8746-b00784e81e39@manjaro.org>
Subject: Re: [Intel-gfx] [Regression] drm/i915: Don't use BAR mappings for
 ring buffers with LLC alone creates issues in stable kernels
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 21, 2023 at 07:58:44AM +0700, Philip Müller wrote:
> On 20.03.23 20:28, Greg Kroah-Hartman wrote:
> > On Sun, Mar 19, 2023 at 10:01:01AM +0700, Philip Müller wrote:
> > > Have to correct the affected kernels to these: 4.14.310, 4.19.278, 5.4.237,
> > > 5.10.175
> > 
> > Please don't top-post :(
> > 
> > Anyway, should be fixed in the next round of releases in a few days, if
> > not, please let us know.
> > 
> > greg k-h
> 
> Hi Greg,
> 
> seems the RCs work out. 4.19.279-rc1 and 5.10.176-rc1 were tested by a user
> who had the issue on i915. In 5.15 series the drm patch got reverted. I only
> see "drm/i915: Don't use stolen memory for ring buffers with LLC" there as
> "drm/i915: Don't use BAR mappings for ring buffers with LLC" was reverted
> with 5.15.101.

So is 5.15.y ok or not?  Sorry, I could not parse your response here.

thanks,

greg k-h
