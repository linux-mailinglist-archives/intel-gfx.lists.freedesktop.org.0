Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB63BA1D1E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 00:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F48510E2F6;
	Thu, 25 Sep 2025 22:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="aCiMqVny";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 357B910E2F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Sep 2025 22:36:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DEE2D40247;
 Thu, 25 Sep 2025 22:36:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E2E8C4CEF0;
 Thu, 25 Sep 2025 22:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758839805;
 bh=3TlSksVR41bW7acZ620/aXXn0gpVBf7GuSUrhHmo6H0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aCiMqVnyxBn456sMU8PwEraCbJsni9gpq3QKRfMx3pATtfSNom/DDsn8DH2bDZN1T
 KXTognLEbp0XmMg/MqfBh+8F65U2xJ+9eKwbmABW0u5nZyNC5XRlbFjUm2aSwSKiWd
 k9syAjPYXQCvTOV224Gbt8+gyvm11t3efwRQGWkQkvzsPtbciqdHzARWaDUKd4j3+9
 paNf1QYYclp6EefX/OLc1o/0x8Q2ZyPW5jNHgZyqx8H6VinNd0CnGKDv7AEmEhPypF
 VvR9UqAHdswc+tJY+Dcn2LMDu/cJtpO3A7xDsteAv8IqZw8d6fj2QppU43zsZ6y604
 pXBM+aMLtIZWQ==
Date: Fri, 26 Sep 2025 00:36:42 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Madhur Kumar <madhurkumar004@gmail.com>
Subject: Re: [CI] drm/i915: i915_pmu: Use sysfs_emit() instead of sprintf()
Message-ID: <6vrwfvkmabyysapvjzkin3ysef7lnhrojndi6rr5sgfdleq42m@7ngkv2aubxip>
References: <20250924204141.1199857-1-andi.shyti@linux.intel.com>
 <aNWvBGyPXCJnv8oV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNWvBGyPXCJnv8oV@intel.com>
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

Hi Ville,

On Fri, Sep 26, 2025 at 12:07:16AM +0300, Ville Syrjälä wrote:
> On Wed, Sep 24, 2025 at 10:41:41PM +0200, Andi Shyti wrote:
> > From: Madhur Kumar <madhurkumar004@gmail.com>
> > 
> > Follow the advice in Documentation/filesystems/sysfs.rst:
> > show() should only use sysfs_emit() or sysfs_emit_at() when formatting
> > the value to be returned to user space.
> > 
> > Signed-off-by: Madhur Kumar <madhurkumar004@gmail.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Link: https://lore.kernel.org/r/20250923195051.1277855-1-madhurkumar004@gmail.com
> > ---
> > Hi,
> > 
> > I'm resending this patch because unfortunately CI doesn't test
> > patches from non allowed users. Although trivial, we need all the
> > patches to be tested.
> 
> FYI you can just bounce the original mail to intel-gfx and CI will
> pick it up.

if I bounce, doesn't the email preserve the header and the
sender? Besides, the mailing list would see another resend and
someone might complain why a patch has been sent twice.

Anyway, thanks for the hint, I will try it next time.

Thanks,
Andi
