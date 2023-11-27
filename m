Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF167FA17D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 14:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB7410E294;
	Mon, 27 Nov 2023 13:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9092510E2A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 13:54:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 166DC61248;
 Mon, 27 Nov 2023 13:54:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E7F7C433BA;
 Mon, 27 Nov 2023 13:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1701093255;
 bh=K6oYquv/QpWiofrzNCT7om1oXAaFGsfKZSXmrfqobk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OUO40r4jIQ3TQfYialoyVxyxOnAh9dBMd2mIbXNXdd8rURdQspASm+bnN6FYjMggQ
 iJ37DgyK6f5O6SJDIpwc/7MejPFo5lHO3hEuTLG+MEchfPNO6+d/TE45H2CtHiwUpj
 wwTOaZiMQFUkBHHrJ/mskbLhcpPJ9C9VRlyZH10s=
Date: Mon, 27 Nov 2023 13:31:14 +0000
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <2023112703-skid-reconfirm-9f0a@gregkh>
References: <20231011110157.247552-1-tomas.winkler@intel.com>
 <20231011110157.247552-4-tomas.winkler@intel.com>
 <ZVN9e3BczixJy_1H@intel.com>
 <ade96d9edd8bce1bc63dba4e2f1a92517180d774.camel@intel.com>
 <MN2PR11MB4093E7F5490A51DED7672145E5B2A@MN2PR11MB4093.namprd11.prod.outlook.com>
 <ZVUrhGsqJ9jKNM5x@intel.com> <ZWSYFc-ltqthibb9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZWSYFc-ltqthibb9@intel.com>
Subject: Re: [Intel-gfx] [char-misc-next 3/4] mei: pxp: re-enable client on
 errors
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Winkler,
 Tomas" <tomas.winkler@intel.com>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 27, 2023 at 03:22:29PM +0200, Ville Syrjälä wrote:
> On Wed, Nov 15, 2023 at 10:35:16PM +0200, Ville Syrjälä wrote:
> > On Tue, Nov 14, 2023 at 06:40:26PM +0000, Winkler, Tomas wrote:
> > > 
> > > 
> > > > -----Original Message-----
> > > > From: Teres Alexis, Alan Previn <alan.previn.teres.alexis@intel.com>
> > > > Sent: Tuesday, November 14, 2023 5:32 PM
> > > > To: ville.syrjala@linux.intel.com; Winkler, Tomas <tomas.winkler@intel.com>
> > > > Cc: gregkh@linuxfoundation.org; Usyskin, Alexander
> > > > <alexander.usyskin@intel.com>; linux-kernel@vger.kernel.org; intel-
> > > > gfx@lists.freedesktop.org; Lubart, Vitaly <vitaly.lubart@intel.com>
> > > > Subject: Re: [char-misc-next 3/4] mei: pxp: re-enable client on errors
> > > > 
> > > > On Tue, 2023-11-14 at 16:00 +0200, Ville Syrjälä wrote:
> > > > > On Wed, Oct 11, 2023 at 02:01:56PM +0300, Tomas Winkler wrote:
> > > > > > From: Alexander Usyskin <alexander.usyskin@intel.com>
> > > > > >
> > > > > > Disable and enable mei-pxp client on errors to clean the internal state.
> > > > >
> > > > > This broke i915 on my Alderlake-P laptop.
> > > 
> > > This fix was already posted, just missed the merging window
> > > https://lkml.org/lkml/2023/10/31/636
> > 
> > Gave this a spin and it fixes the issue for me. Thanks.
> > 
> > > 
> > > Greg can you please take this fix into v6.7-rc2 run, or I can repost it with the correct subject.
> 
> We're at -rc3 already and this fix is still not in!

Ah, good point, I'll take it now, sorry, catching up on things...
