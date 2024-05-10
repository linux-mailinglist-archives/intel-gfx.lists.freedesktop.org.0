Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57868C233E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E47E10E6CD;
	Fri, 10 May 2024 11:24:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1vhT7tY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6130110E6CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340298; x=1746876298;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=k0sopvIhiy6f6+kwNT/Kt+0l33MxuXLxebeKhFV8NrU=;
 b=T1vhT7tYE11b/wTqof6ipfOdeT/gZbLqPe44FuSaTQqVdOJr5bXk3Uyu
 tqtDpvx8TvBbqHIC6DzyjGuPwX58eeXyrqQ/hY+HUm1QwVx38+AYOVDNl
 ml7nGZHravEZh9TmppQHvJNqN9BpTHuTjYfsKrMFrkb54nKYUiCNuYDco
 mn+X3zyLJH4CyiJDcrfTbxgnHWLNXxZq26S7zGG1/lttXBt+5URppSIFx
 vOpZ5vlqRX35bIFPIZwq3f7JarlI642zY9v+38WNXe3xTCMd7ekRi+Cis
 HsXAtmwjIXb0rTig89hrVoavFMllaY4druWAwf+fkB2QIdozYgBZetVux A==;
X-CSE-ConnectionGUID: +oGL8tlgSverJb4zVau7JA==
X-CSE-MsgGUID: Zu7BXy4dStmjpEc2dRCVSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="22714169"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="22714169"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:24:58 -0700
X-CSE-ConnectionGUID: 6UL5MSW7RfiydE2PeyzcuA==
X-CSE-MsgGUID: dBXpu5ifTr2Swg24+9L/Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34028111"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:24:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
In-Reply-To: <Zj34KTmYP6VNQ3CS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715086509.git.jani.nikula@intel.com>
 <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
 <Zjow5HXrXpg2cuOA@intel.com> <ZjtapMK6kadLqHCN@intel.com>
 <87o79gjznd.fsf@intel.com> <ZjtprkZVSQ-o_qch@intel.com>
 <87le4ihsmr.fsf@intel.com> <Zj34KTmYP6VNQ3CS@intel.com>
Date: Fri, 10 May 2024 14:24:52 +0300
Message-ID: <87ikzlj4e3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 10 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, May 10, 2024 at 01:24:12PM +0300, Jani Nikula wrote:
>> On Wed, 08 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Wed, May 08, 2024 at 02:45:10PM +0300, Jani Nikula wrote:
>> >> On Wed, 08 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.int=
el.com> wrote:
>> >> > On Tue, May 07, 2024 at 09:47:16AM -0400, Rodrigo Vivi wrote:
>> >> >> On Tue, May 07, 2024 at 03:56:48PM +0300, Jani Nikula wrote:
>> >> >> > It's confusing for INTEL_CFL_IDS() to include all CML PCI IDs. E=
ven if
>> >> >> > we treat them the same in a lot of places, CML is a platform of =
its own,
>> >> >> > and the lists of PCI IDs should not conflate them.
>>=20
>> [snip]
>>=20
>> >> >> Why only CML and not AML and WHL as well?
>> >> >
>> >> > Why do we even have CML as a separate platform? The only difference=
=20
>> >> > I can see is is that we do allow_read_ctx_timestamp() for CML but
>> >> > not for CFL. Does that even make sense?
>> >>=20
>> >> git blame tells me:
>> >>=20
>> >> 5f4ae2704d59 ("drm/i915: Identify Cometlake platform")
>> >> dbc7e72897a4 ("drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs")
>> >
>> > Right. That explains why we need it on CML+. But is there some reason
>> > we  can't just do it on CFL as well, even if not strictly necessary?
>> > I would assume that setting FORCE_TO_NONPRIV on an already
>> > non-privileged register should be totally fine.
>>=20
>> I have absolutely no idea.
>>=20
>> I'm somewhat thinking "CML being a separate platform" is a separate
>> problem from "CFL PCI ID macros including CML".
>>=20
>> I'm starting to think the PCI ID macros should be grouped by "does the
>> platform have a name of its own",
>
> That and/or "does bspec have a separate 'Confgurations <platform>' page?"
>
>> not by how those macros are actually
>> used by the driver. Keeping them separate at the PCI ID macro level just
>> reduces the pain in maintaining the PCI IDs, and lets us wiggle stuff
>> around in the driver how we see fit.
>
> Aye.
>
>>=20
>> And that spins back to Rodrigo's question, "Why only CML and not AML and
>> WHL as well?". Yeah, indeed.
>>=20
>> If we decide to stop treating CML as a separate platform in the
>> *driver*, that's another matter.
>
> Sure. Seeing it just got me wondering...

I sent a new series with just the PCI ID macro cleanups [1]. I meant to
Cc: you and Rodrigo, but forgot. :(

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/133444/



--=20
Jani Nikula, Intel
