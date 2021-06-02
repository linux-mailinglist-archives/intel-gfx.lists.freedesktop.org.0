Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091739812C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 08:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598186EB60;
	Wed,  2 Jun 2021 06:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A056EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 06:34:40 +0000 (UTC)
IronPort-SDR: MQaRTpROdX0d6e+FubwL4y0uRTCZRrXJaFSLBOl49PkiaGr6EJ7u4x7oha5r6YXx3MELZiIBKN
 a0E5N03vEi/Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="225000099"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="225000099"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 23:34:40 -0700
IronPort-SDR: p4SB5w02aAMip4lWJ9qW78vfEP078zQ0jwWaHBQ00ZhngPVY2hnZ692nR/tMbf86LNZQNYaq4f
 2KkzwyTbLFGg==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="416760637"
Received: from nawaskex-mobl.ger.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.3.30])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 23:34:39 -0700
Date: Tue, 1 Jun 2021 23:34:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210602063439.nrfejgmslba3hruy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210527181700.1676790-1-lucas.demarchi@intel.com>
 <20210527181700.1676790-2-lucas.demarchi@intel.com>
 <20210601165834.GA6936@mdroper-desk1.amr.corp.intel.com>
 <20210601171514.63lh3lqb2yprri73@ldmartin-desk2>
 <20210601173055.GB6936@mdroper-desk1.amr.corp.intel.com>
 <20210601191317.mn646kbpdbjw65xc@ldmartin-desk2>
 <20210601203925.GD6936@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601203925.GD6936@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gt: replace IS_GEN and friends
 with IS_GRAPHICS_VER
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 01, 2021 at 01:39:25PM -0700, Matt Roper wrote:
>On Tue, Jun 01, 2021 at 12:13:17PM -0700, Lucas De Marchi wrote:
>> On Tue, Jun 01, 2021 at 10:30:55AM -0700, Matt Roper wrote:
>> > On Tue, Jun 01, 2021 at 10:15:14AM -0700, Lucas De Marchi wrote:
>> > > On Tue, Jun 01, 2021 at 09:58:34AM -0700, Matt Roper wrote:
>> > > > On Thu, May 27, 2021 at 11:16:54AM -0700, Lucas De Marchi wrote:
>> > > > > This was done by the following semantic patch:
>> > > >
>> > > > Is the commit message here out-of-date?  The cocci doesn't appear to
>> > > > match the diff anymore.  IS_GRAPHICS_VER() is the range macro now and
>> > > > IS_GEN is being replaced with a direct "==" comparison.
>> > >
>> > > not necessarily, it's included in "and friends...". Maybe rewording to
>> > > something like "replace gen-based macros with new ver-based ones" would
>> > > make it clearer?
>> >
>> > I mean that running the coccinelle rules below through spatch won't
>> > generate the code diff here; it would generate a completely different
>> > patch (that I don't think would build properly either).
>>
>> oh, ok. I fixed the issues in the .cocci and forgot to update the commit
>> message. Thanks.
>>
>> Lucas De Marchi
>
>Aside from the commit messages needing updated Coccinelle rules, the
>code deltas look correct to me.
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

humn... is that to the series or only this commit?

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
