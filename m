Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25840426877
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 13:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BD36F466;
	Fri,  8 Oct 2021 11:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6BB6F465;
 Fri,  8 Oct 2021 11:07:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2BA1660F22;
 Fri,  8 Oct 2021 11:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633691241;
 bh=fwL/+Wf3Yvr0e4Qxv4IsBFIHfj1Pc6s9Bmqx3YmguZo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KYnCPrELS9UOCwN64yLRj4yj/r737jvGmmK3mkpdsVgKC0P/hCj+YtCxXycj4pFH8
 LkZ2Z16gXhWhrG53D7T1l5xwfjKwU1hTbqFaFJW7Ti5xHoqZVPxu5CELzRpve3OKJs
 WcrBlYmrvI7K2He2ZpRdtv4SFHHNFeEQYT09VDi0=
Date: Fri, 8 Oct 2021 13:07:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@amd.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YWAmZdRwnAt6wh9B@kroah.com>
References: <20211008091704.27094-1-nirmoy.das@amd.com>
 <87a6jjyhuo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87a6jjyhuo.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] dri: cleanup debugfs error handling
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

On Fri, Oct 08, 2021 at 12:40:47PM +0300, Jani Nikula wrote:
> On Fri, 08 Oct 2021, Nirmoy Das <nirmoy.das@amd.com> wrote:
> > Debugfs API returns encoded error instead of NULL.
> > This patch cleanups drm debugfs error handling to
> > properly set dri and its minor's root dentry to NULL.
> >
> > Also do not error out if dri/minor debugfs directory
> > creation fails as a debugfs error is not a fatal error.
> 
> Cc: Greg
> 
> I thought this is the opposite of what Greg's been telling everyone to
> do with debugfs.

Yes, that is not good.

You should never care about the result of a debugfs_create* call.  Just
take the result, and if it is a directory, save it off to use it for
creating a file, no need to check anything.

And then throw it away, later, when you want to remove the directory,
look it up with a call to debugfs_lookup() and pass that to
debugfs_remove() (which does so recursively).

There should never be a need to save, or check, the result of any
debugfs call.  If so, odds are it is being used incorrectly.

thanks,

greg k-h
