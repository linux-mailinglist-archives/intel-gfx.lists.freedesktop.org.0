Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 012ED25A92B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 12:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5A16E2DC;
	Wed,  2 Sep 2020 10:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB226E2DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 10:11:36 +0000 (UTC)
IronPort-SDR: Pihkj+YxnlGoCxIRUtv2mJBLHYza5ndZyNZwlEqy+2StCASlAaogGpAMXnx5csEO9YolzuQOXT
 I6hEH4ugBA8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="136875063"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="136875063"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 03:11:28 -0700
IronPort-SDR: ypILX5W7Z8gT8jxb8+ee72wNSz7FUFT2D90rkjsO8kNzUfI0C8zxPf2Q2wG0Ik2zu4ncl2omG2
 7gCSfAnrhaHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="338877889"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 02 Sep 2020 03:11:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Sep 2020 13:11:25 +0300
Date: Wed, 2 Sep 2020 13:11:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200902101125.GL6112@intel.com>
References: <20200828061941.17051-1-jani.nikula@intel.com>
 <20200831133905.GW6112@intel.com> <87imcy4qus.fsf@intel.com>
 <87ft814ov8.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ft814ov8.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add support for
 mailbox #5 EDID
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 01, 2020 at 04:18:19PM +0300, Jani Nikula wrote:
> On Mon, 31 Aug 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Mon, 31 Aug 2020, Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =
wrote:
> >> On Fri, Aug 28, 2020 at 09:19:40AM +0300, Jani Nikula wrote:
> >>> The ACPI OpRegion Mailbox #5 ASLE extension may contain an EDID to be
> >>> used for the embedded display. Add support for using it via the EDID
> >>> override mechanism.
> >>
> >> Abusing the override for this feels a bit odd.
> >
> > It's the least intrusive way to make this work across the drm and driver
> > EDID code that I could think of.
> >
> > BR,
> > Jani.
> >
> >
> >>
> >> Also I have a vague recollection that there was perhaps some
> >> linkage between the mailbox and the ACPI _DDC stuff:
> >> git://github.com/vsyrjala/linux.git acpi_edid
> =

> Only looked at this now. The patch at hand is for actually overriding
> the EDID from the panel, because the panel EDID is readable but bogus.

Do we have an actual use case for this? The commit msg doesn't say so.

> I
> have no idea how the ACPI _DDC stuff would work in this case. Would it
> return the EDID from the panel or from mailbox #5 or something
> completely different? Who knows.
> =

> Using drm_do_get_edid() would of course be doable for reading mailbox #5
> directly as well, but you'd have to make that the "primary" method and
> fall back to the usual drm_get_edid(). Note that this completely
> prevents you from ever reading the actual panel EDID. Using
> edid_override lets you get at the panel EDID too.

Might be nice to make .get_edid() a connector vfunc and let each driver
implement it however they want. That way the driver would be in total
control over the priority of different EDID sources. But haven't really
looked at what that would take. Not even sure if a vfunc is totally
required as I think most EDID reads should be in some connector specific
driver code.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
