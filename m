Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6669F5B183D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F9B10E9EC;
	Thu,  8 Sep 2022 09:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F2A10E9EC;
 Thu,  8 Sep 2022 09:18:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0B839B81DAF;
 Thu,  8 Sep 2022 09:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46A24C433D6;
 Thu,  8 Sep 2022 09:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1662628729;
 bh=CdqCZJBl/nD8tWz9C2cg69rsNzcpvtg1+SARQijR/vI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jSSGMdJPkAvltnSIff35TEf9g68krlOpCDvgsc1OoS+k3CYikT76RqQsZ7hqnrDdt
 vgt/s6s5sJ9oxM1EzfMWpK5ml0giX3LKW8WNmtVgtcb+JixhX84V7WmTBcyenvRuv1
 U3nOO54NX0ONTRfVvm7jjfyhEhCHqNyibrj1CmwQ=
Date: Thu, 8 Sep 2022 11:19:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Hacker <hackerzheng666@gmail.com>
Message-ID: <Yxmzj2nCoTKurCY8@kroah.com>
References: <tencent_E1BBF05904DFB73C478DCD592740AAE0780A@qq.com>
 <CAJedcCxVW++iH49UFZp9ruUuTcNubWCH6Wsqe11K4COB3E8msg@mail.gmail.com>
 <CAJedcCw1eJqjSK+yR7eQMDheNtH3Mjm+viwt00xAhnmrfpq2pw@mail.gmail.com>
 <CAJedcCweHjD78F7iydiq6Xc2iH=t_3m=H9JKnaCooToUk32FvQ@mail.gmail.com>
 <YxWtfjfpNsoPUrgh@kroah.com>
 <CAJedcCzMo51aiy=Dv7zn7VmL3gwkw7JgzwAPAB2Z27C9CnhoYA@mail.gmail.com>
 <20220907030754.GU1089@zhen-hp.sh.intel.com>
 <CAJedcCxO_Rq0qMeLiHtY5+FuN1A1pDGsZd3gMtvUpm1xbAK3aA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJedcCxO_Rq0qMeLiHtY5+FuN1A1pDGsZd3gMtvUpm1xbAK3aA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: fix double-free bug in
 split_2MB_gtt_entry.
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
Cc: alex000young@gmail.com, security@kernel.org, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, xmzyshypnc <1002992920@qq.com>,
 daniel@ffwll.ch, rodrigo.vivi@intel.com, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 08, 2022 at 05:09:40PM +0800, Zheng Hacker wrote:
> Hi Zhenyu,
> 
> This issue has been open for a few days. Could you plz write a patch
> for that :) I'm not familiar with the logical code here.

As this is only able to be hit in a theoretical system, it isn't that
high of a priority, if any priority at all.  Why not try to write a
patch for it yourself to help resolve the issue faster?

thanks,

greg k-h
