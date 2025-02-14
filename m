Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8381BA359B1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 10:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCFF10EC0D;
	Fri, 14 Feb 2025 09:08:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="XOy6Lj3J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF1310EC0C;
 Fri, 14 Feb 2025 09:08:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D665DA41BC1;
 Fri, 14 Feb 2025 09:06:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77D00C4CED1;
 Fri, 14 Feb 2025 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1739524115;
 bh=ojSn0mjAgBimdmow5FyRjsh5a9qTNrqfUR4LV3XpBY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XOy6Lj3JZbOchmltrIBbEusLXFTd46dyWb2Iy5AS2jdUzVHduGiq23Nxn6de2wD5v
 729V8Q3XP//DOZZqEAXMGWby5AtXVZNuyjFAXQkVoclg9fSZ5RMBgF2pZBJMmFfQ5P
 eYe9uex2+sBy1AJ5cgWZbMxTdRJAE6E4BSd8vM9gLHeZus8u+ECK3GnOqPppp3+tub
 ygeBOZC+WJZOBFxUx9+LcO1kCBOS1+DWOgTegXHqaSvpZ3VjaLne8ak9NYQTnIKmgN
 1peaoQWHnqzIP/4bpxapf/rq1VfWMSJYqrgJEEU3QircCUOBQiVctqXkUS17J2TX5r
 /acHsgZYbxdRg==
Date: Fri, 14 Feb 2025 11:08:25 +0200
From: Mike Rapoport <rppt@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: Re: Regression on linux-next (next-20250205)
Message-ID: <Z68ICeBI0_S9TEvl@kernel.org>
References: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z6sBX-tPotgS2ARh@kernel.org>
 <DM4PR11MB61417F2A11D08FE2DD7826CCB9FD2@DM4PR11MB6141.namprd11.prod.outlook.com>
 <Z6xDcBnw9KB5IqMl@kernel.org>
 <SJ1PR11MB6129E21DBF1CA47BF29390D8B9FF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129E21DBF1CA47BF29390D8B9FF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Thu, Feb 13, 2025 at 05:30:24PM +0000, Borah, Chaitanya Kumar wrote:
> 
> > -----Original Message-----
> > From: Mike Rapoport <rppt@kernel.org>
> > > Thank you for your reply.
> > >
> > > Unfortunately, the change makes it worse. Our local system seems to be in
> > continuous reboot.
> > 
> > Are there any logs available?
> 
> False alarm! The cyclic resets we are seeing may not be related to your
> change. Our systems are facing this even with the latest vanilla
> linux-next. We are looking into it.
> 
> Good news is that if we take your change over the version which first
> detected the issue(next-20250205), it seems to resolve it. Can we expect
> a formal patch soon?

Here it is:
https://lore.kernel.org/all/20250214084531.3299390-1-rppt@kernel.org 

> Regards
> 
> Chaitanya

-- 
Sincerely yours,
Mike.
