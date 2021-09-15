Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543D440C622
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 15:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A2F89FD3;
	Wed, 15 Sep 2021 13:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4247289FD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:17:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="201817330"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="201817330"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 06:17:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544923427"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 06:17:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YUHufiA3nPvmYFP6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-6-ville.syrjala@linux.intel.com>
 <87ee9qywh1.fsf@intel.com> <YUHufiA3nPvmYFP6@intel.com>
Date: Wed, 15 Sep 2021 16:17:47 +0300
Message-ID: <87czpax9j8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/16] drm/i915: s/pipe/transcoder/ when
 dealing with PIPECONF/TRANSCONF
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

On Wed, 15 Sep 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 15, 2021 at 01:16:58PM +0300, Jani Nikula wrote:
>> On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > PIPECONF becamse TRANSCONF when HSW introduced the EDP transcoder.
>> > Bigjoiner is making life even more confusing by introducing
>> > a N:1 relationship between pipes and transcoders. In that case
>> > we only enable/configure the transcoder corresponding to the
>> > master pipe. Let's do some renames to make it clear we're dealing
>> > with the transcoder rather than pipe when it comes to
>> > PIPECONF/TRANSCONF.
>> >
>> > I decided to leave the _cpu_ part out from the function/macro
>> > names since the PCH transcoder related stuff already has a
>> > _pch_ in their name. So shouldn't be possible to confuse them.
>>=20
>> Wondering about flipping the names to intel_transcoder_enable and
>> intel_transcoder_disable, with a potential move to a separate file.
>
> If you're thinking about intel_transcoder.c then I doubts
> about it making much sense. Seems a bit too specific,
> and the transcoder vs. pipe split has been a rather fluid
> over the years so not all platforms may even fit into the
> same mold.
>
> I think what we want to do to the modeset code in
> intel_display.c is mainly just split on the high level vs.
> low level boundary somewhere. But splitting the low level
> code further is probably going to require more thought.

Yeah, just throwing ideas around, really.

We could start with a new intel_modeset.[ch] and start moving the high
level modeset functions there? Because moving everything else out from
intel_display.c is going to take forever, so it's perhaps easier to move
the high level stuff instead. *shrug*

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
