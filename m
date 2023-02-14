Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E869617B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D158E10E0EB;
	Tue, 14 Feb 2023 10:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF3310E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676371972; x=1707907972;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/eP1XKAZ/abk4JCCdT5fquJBGXS67HTdrP+WcjO953A=;
 b=Lu2spg8ZZ5SkRAvYKDjytT3AknPtN8JvaVle3jkQvbChSi/R34GUhLNZ
 pc4PmZzoRghY3RBmP8jVuXz7OPrwvuqEpZh9rZPzIwk/t6zOt3EdbZBKE
 q1inFTpfh7weRxaPUo4RV3XVe4o8s3cir9qjY0pwIEGjHNTRVbsmbFD9Y
 PDLZ2VBFE1V8f+XAILx23ygP2kNVkxf7niwtbYRDJnkB9tH/c2apU5au3
 UE8/Sb9v2sC5jXb6CTVnHJ1Qg964EqoUSXX4T8kboWmoV/b42xk/WWYY9
 WpfZ92ArNszXuLIg9xbekUAqWlLjpGIU2oEEoHyg5A660iXjXf1LJt3xN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417351701"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417351701"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:52:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="778277979"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="778277979"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:52:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+tjL+PVFpITLIuj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-5-ville.syrjala@linux.intel.com>
 <878rh0tvde.fsf@intel.com> <Y+tjL+PVFpITLIuj@intel.com>
Date: Tue, 14 Feb 2023 12:52:46 +0200
Message-ID: <87r0ussem9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: s/PIPECONF/TRANSCONF/
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

On Tue, 14 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Feb 14, 2023 at 12:05:33PM +0200, Jani Nikula wrote:
>> On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Rename PIPECONF to TRANSCONF to make it clear what it actually
>> > applies to.
>> >
>> > While the usual convention is to pick the earliers name I think
>> > in this case it's more clear to use the later name. Especially
>> > as even the register offset is in the wrong range (0x70000 vs.
>> > 0x60000) and thus makes it look like this is per-pipe.
>> >
>> > There is one place in gvt that's doing something with TRANSCONF
>> > while iterating with for_each_pipe(). So that might not be doing
>> > the right thing for TRANSCODER_EDP, dunno. Not knowing what it
>> > does I left it as is to avoid breakage.
>>=20
>> I recently looked at _PIPE_EDP usage, and thought all of it looked a bit
>> suspect, but didn't bother to dig deeper. Maybe after this it could be
>> removed?
>
> I think it needs to stay due to the pipe_offsets[] stuff
> and hw making a mess of pipe vs. transcoder registers.
> But no one should really use it anywhere else.

I wonder how many underscores more we need to add to keep it that
way. :p

--=20
Jani Nikula, Intel Open Source Graphics Center
