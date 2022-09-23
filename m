Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C36FC5E7819
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 12:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C8210E4DC;
	Fri, 23 Sep 2022 10:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E021D10E4DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 10:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663928287; x=1695464287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=p5AQzimex235uI9cFr9RaoU9mB6+GoUNl6Y/RL7TWUk=;
 b=itSrCsn5iju9/76IjxrSD5bAiuobruvGOWY6awQKhp3B8RnWBHo5sJHt
 5crGqLMiitc++vR/U8IH6PT1vjELHng0f4gZ3Ko2m8D0b5SgA14LRLLPm
 yUD2RoijIe7Q3jNf94g+Vv35S1VISBjf/KznhmnyTZwuhINvwI6T9kFVS
 pR1+I2hFM+RonoC6tAEL8lo1A4SW6gWhKP1TP5Yvw2xF3xb9l/Pt5DKhW
 SoUwhf+QpG7clci0CBfzKiAXNRwNdwVfvbhy6U2YUswa+qBZRjx1tbBhe
 tcECvx0y3VLFQTO8BMMoYdzlYDkvCzgyqvUm/lhLE5ei+9GHUomMd1S1L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362373486"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362373486"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 03:18:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="724078293"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 23 Sep 2022 03:18:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Sep 2022 13:18:01 +0300
Date: Fri, 23 Sep 2022 13:18:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yy2H2bG07Vqf8H6D@intel.com>
References: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
 <87bkr64du7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bkr64du7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't use port enum as
 register offset
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

On Fri, Sep 23, 2022 at 12:52:48PM +0300, Jani Nikula wrote:
> On Wed, 21 Sep 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> > Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
> > also used as an index to access the DDI_BUF_CTL register for the port.
> >
> > With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
> > added starting from enum value 4 to match the index position of the
> > DDI_BUF_CTL register of those ports. Because those early platforms had
> > only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
> > So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
> > values.
> >
> > Driver also used the condition `if (port > PORT_TC1)` to identify if a
> > port is a TypeC port or non-TypeC.
> >
> > From XELPD, additional non-TypeC ports were added in the platform
> > calling them as PORT D, PORT E and the DDI registers for those ports
> > were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
> > be used as their values do not match with register position. It led to
> > creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.
> >
> > The condition `if (port > PORT_TC1)` was no more valid for XELPD to
> > identify a TypeC port. Also it led to many additional special checks for
> > ports PORT_D_XELPD/PORT_E_XELPD.
> >
> > With new platforms indicating that the DDI register positions of ports
> > can vary across platforms it makes no more feasible to maintain the port
> > enum values to match the DDI register position.
> >
> > Port DDI register position is now maintained in a separate datastructure
> > part of the  platform device info and ports are enumerated independently.
> > With enums for TypeC ports defined at the bottom, driver can easily
> > identify the TypeC ports.
> >
> > Removed a WARN_ON as it is no longer valid. The WARN was added in
> > commit - "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
> > The ddi_io_power_domain calculation has changed completely since the
> > commit and doesn't need this WARN_ON anymore.
> >
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> I agree with the premise that defining platform specific port enums such
> as PORT_D_XELPD to tackle differences in register offsets is handling
> the problem at the wrong abstraction level.
> 
> I am not (at least not yet) convinced with the approach of adding
> platform specific mappings in .display.ddi_offsets. The main problem I
> have with that is adding yet another way to deal with different register
> offsets. We already have many, and adding a new one isn't appealing.
> 
> Not that this *is* different from .display.pipe_offsets and
> .display.trans_offsets which are actual *offsets*. The solution here is
> actually misnamed; it's about indexes, not offsets.
> 
> Finally, even if we were to choose this approach, this should be split
> to at least three separate patches. First, pass i915 to the register
> macro, no other changes, totally non-functional. Second, use the
> indexes. Third, remove PORT_D_XELPD etc.
> 
> I'm still considering alternatives. In the mean time, please find some
> random comments on the details inline.

One of the earlier alternatives proposed was some kind of declarative
struct to describe each port, which would include separate indexes needed
for different things (among information on the type of DDI/PHY/etc.)
I think there was some attempt at something like that, but IIRC it
tried to do a bunch of other stuff too so it got bikeshedded to death.

I guess one key question is: Do we need to freestanding DDI/AUX/etc.
register accesses or can we assume the encoder struct is always there?
That would dictate whether we need any magic in the register macros at
all, or whether we can just trust the caller to pass in the right
index.

Oh, and the other key question is: Is an index enough, or are the
register offsets going to get really random at some point?

So far I'm not aware of any changes the status-quo in the forseeable
future, so not really seeing this part as super urgent compared to
the whole PHY mess, which has been much more volatile in recent
times.

-- 
Ville Syrjälä
Intel
