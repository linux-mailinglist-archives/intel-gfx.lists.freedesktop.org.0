Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E58101F15D9
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 11:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8C789D4B;
	Mon,  8 Jun 2020 09:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3802F89D4B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 09:48:04 +0000 (UTC)
IronPort-SDR: 2z9QCbjgdhyQ6mbVu0LyGb2o4YZInkhX/XNBW83eomp3/Oj78/17zkdkopwPFhx61/Kj59IR7W
 4smtr+x4VEwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:48:02 -0700
IronPort-SDR: lV1t6uChF4qG8dIPwmxJAia5o7yOBkJvfS+7f1/fLTDBV5OEA3d6ysDWt0DMMl9eR2c04EAXoB
 4EL8n9ovIN7Q==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="446675653"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.13.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:48:00 -0700
MIME-Version: 1.0
In-Reply-To: <87eequpla6.fsf@riseup.net>
References: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
 <87eequpla6.fsf@riseup.net>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Francisco Jerez <currojerez@riseup.net>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 08 Jun 2020 12:47:57 +0300
Message-ID: <159160967766.60481.16392357667625923690@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Jason and Ken

Quoting Francisco Jerez (2020-06-05 00:34:57)
> Ayaz A Siddiqui <ayaz.siddiqui@intel.com> writes:
> 
> > In order to avoid functional breakage of mis-programmed applications that
> > have grown to depend on unused MOCS entries, we are programming
> > those entries to be equal to fully cached ("L3 + LLC") entry as per the
> > recommendation from architecture team.
> >
> > These reserved and unspecified entries should not be used as they may be
> > changed to less performant variants with better coherency in the future
> > if more entries are needed.

This patch message needs reworking. It should just standalone describe
the technical reasoning behind the patch completely, without referring
to elsewhere or to some other decision.

The patch should also Cc: relevant developers who have previously been
working on the MOCS code and the userspace driver folks (Mesa, compute
and media).

> This change seems highly questionable to me...  If a future kernel
> release introduces a new MOCS entry with more strict coherency
> semantics, and an application starts relying on it, that application
> won't work when run on an older kernel version with this patch is
> applied.  IOW setting uninitialized entries to the most strict caching
> setting available (UC) ensures forwards compatibility with future
> userspace, which seems like a more important design principle than
> giving full caching to broken userspace that accidentally makes use of
> an undefined MOCS entry not part of the kernel ABI.

Both choices were considered, and ultimately Ken and Jason were more in
favor of 'worst coherency' if using reserved MOCS entry.

Your concern about newer software on older kernel is valid. But the
starting point of the decision is the no-regression policy of Linux.

If we have some application developed on an older kernel where the MOCS
entry is unused and would be UC (best coherency), we would have no
choice but to keep that entry unused indefinitely not to break the
mis-programmed application.

Now we have the worst coherency by default if an application is using
reserved entry, making it more likely to be noticed at develop time. And
even if it would not be noticed, modifying the entry for better
coherency should not functionally break the application.

Regards, Joonas

> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 93 ++++++++++++++++++++++++++--
> >  1 file changed, 89 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 632e08a4592b..1089bd5fdba2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -234,10 +234,6 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
> >                  L3_1_UC)
> >  
> >  static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> > -     /* Base - Error (Reserved for Non-Use) */
> > -     MOCS_ENTRY(0, 0x0, 0x0),
> > -     /* Base - Reserved */
> > -     MOCS_ENTRY(1, 0x0, 0x0),
> >  
> >       GEN11_MOCS_ENTRIES,
> >  
> > @@ -265,6 +261,95 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> >       MOCS_ENTRY(61,
> >                  LE_1_UC | LE_TC_1_LLC,
> >                  L3_3_WB),
> > +
> > +     /* NOTE:
> > +      * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
> > +      * These reserved entry should never be used, they may be chanaged
> > +      * to low performant variants with better coherency in the future if
> > +      * more entries are needed.
> > +      */
> > +
> > +     /* Reserved index 0 and 1 */
> > +     MOCS_ENTRY(0, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +
> > +     /* Reserved index 16 and 17 */
> > +     MOCS_ENTRY(16, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(17, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +
> > +     /* Reserved index 24 and 25 */
> > +     MOCS_ENTRY(24, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(25, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +
> > +     /* Unspecified indices 26 to 47 */
> > +     MOCS_ENTRY(26, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(27, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(28, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(29, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(30, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(31, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(32, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(33, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(34, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(35, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(36, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(37, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(38, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(39, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(40, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(41, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(42, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(43, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(44, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(45, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(46, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(47, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +
> > +     /* Unspecified indices 52 to 59 */
> > +     MOCS_ENTRY(52, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(53, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(54, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(55, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(56, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(57, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(58, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB),
> > +     MOCS_ENTRY(59, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > +                L3_3_WB)
> >  };
> >  
> >  static const struct drm_i915_mocs_entry icl_mocs_table[] = {
> > -- 
> > 2.26.2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
