Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AB97D825D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91B010E7BF;
	Thu, 26 Oct 2023 12:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB7C10E7BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:16:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 06B1ACE3EA1;
 Thu, 26 Oct 2023 12:16:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0212AC433C8;
 Thu, 26 Oct 2023 12:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698322577;
 bh=LX8PNdOl705w1KrULo8nTRL4NiuX+51wFwempmD/sso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p+eaGzRd8csgdt8UBBYbNJVtNYkx5akrlrhOEcAWKBPaBZq1mAgeGTxTNX+9c4QPG
 zMW/O0TArHmXlbiLlonQFeCeGErPp6ICZae3L2gQQGGpYx3erQZlpW2GYHWVxYR0jy
 nRJmGfy+SwMczouEf9gum9h5RkHn7kz81/orCUAXL5YefFE70g1YzYyXwAK80tJrYm
 dXR1XW5U6a8iyeyNkWyAXVDiavm4c4ycijsrfoAJNDB7aMQWuDxxPSbF0u11bXXB4I
 g6PIeEDnMqtPcJP+l8J/eZA50HOql1n+mTCyJNGGjm8kvG/52VQeRX8LZZ4qExW4cu
 q7+zQp4RZqy7g==
Date: Thu, 26 Oct 2023 14:16:13 +0200
From: Christian Brauner <brauner@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Message-ID: <20231026-ohnedies-endmontage-9592e293c728@brauner>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231025-zubetoniert-estrich-398e12164835@brauner>
 <SJ1PR11MB6129D4C000D5AC82E4C69710B9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61291333B84FB20B3A910177B9DDA@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61291333B84FB20B3A910177B9DDA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231013)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 26, 2023 at 10:14:23AM +0000, Borah, Chaitanya Kumar wrote:
> Hello Christian,
> 
> > -----Original Message-----
> > From: Borah, Chaitanya Kumar
> > Sent: Wednesday, October 25, 2023 7:15 PM
> > To: Christian Brauner <brauner@kernel.org>
> > Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> > <Suresh.Kumar.Kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> > Subject: RE: Regression on linux-next (next-20231013)
> > 
> > Hello Christian,
> > 
> > > -----Original Message-----
> > > From: Christian Brauner <brauner@kernel.org>
> > > Sent: Wednesday, October 25, 2023 1:02 PM
> > > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> > > <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
> > > <jani.saarinen@intel.com>
> > > Subject: Re: Regression on linux-next (next-20231013)
> > >
> > > On Wed, Oct 25, 2023 at 06:32:01AM +0000, Borah, Chaitanya Kumar wrote:
> > > >  Hello Christian,
> > > >
> > > >  Hope you are doing well. I am Chaitanya from the linux graphics
> > > > team in
> > > Intel.
> > > >
> > > >  This mail is regarding a regression we are seeing in our CI runs[1]
> > > > on linux-next  repository.
> > >
> > > Any chance I can reproduce this locally?
> > 
> > Thank you for your response.
> > 
> > I see that you have already floated a patch [1] to fix the issue. We will test it
> > and get back to you ASAP.
> 
> The solution is working for us.
> 
> Also, linux-next turned green.

Great! That already has the final version of the patch.

> http://gfx-ci.igk.intel.com/tree/linux-next/igt@i915_selftest@live@mman.html
> 
> Thank you.

Thanks for the report!
