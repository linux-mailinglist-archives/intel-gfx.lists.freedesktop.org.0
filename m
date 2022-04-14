Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2B500FFF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 16:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C3110FF6C;
	Thu, 14 Apr 2022 14:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753B410FF67;
 Thu, 14 Apr 2022 14:29:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D13F661E80;
 Thu, 14 Apr 2022 14:29:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9CE6C385A1;
 Thu, 14 Apr 2022 14:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1649946592;
 bh=UPsMWquHq3IrAfXIyMTIbpV2XKwEzf42P41WLBE8r9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pdkEf94dsFHtV5L9H4k3egElvIpweK/+mY9jzCchnVfwPGaPO0XBenkIR4O8rpkzj
 X88TZVpeb+NoR78SxKTsikGVIBr6rwoSa27jNZSY9oYBnd5UNntUUcOC3T4yyebUvT
 J+XKXoUqEG76AoEnU2vAJ0AMVEtxX0WiPOT7JEo4=
Date: Thu, 14 Apr 2022 16:29:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ylgv3U4HEtpk3sis@kroah.com>
References: <20220414123033.654198-1-jani.nikula@intel.com>
 <YlgfXxjefuxiXjtC@kroah.com> <87a6cneoco.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87a6cneoco.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/1] add support for enum module parameters
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
Cc: Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 05:22:47PM +0300, Jani Nikula wrote:
> On Thu, 14 Apr 2022, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> > On Thu, Apr 14, 2022 at 03:30:32PM +0300, Jani Nikula wrote:
> >> Hey, I've sent this before, ages ago, but haven't really followed
> >> through with it. I still think it would be useful for many scenarios
> >> where a plain number is a clumsy interface for a module param.
> >> 
> >> Thoughts?
> >
> > We should not be adding new module parameters anyway (they operate on
> > code, not data/devices), so what would this be used for?
> 
> I think it's just easier to use names than random values, and this also
> gives you range check on the input.
> 
> I also keep telling people not to add new module parameters, but it's
> not like they're going away anytime soon.

Existing ones can not go away (or change), but we do not have to add new
ones.

> If there's a solution to being able to pass device specific debug
> parameters at probe time, I'm all ears. At least i915 has a bunch of
> things which can't really be changed after probe, when debugfs for the
> device is around. Module parameters aren't ideal, but debugfs doesn't
> work for this.

configfs?

