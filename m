Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H9zKJGtpmnNSwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 10:44:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2344D1EC0C6
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 10:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5945810E16A;
	Tue,  3 Mar 2026 09:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adkkWctP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9010C10E16A;
 Tue,  3 Mar 2026 09:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772531081; x=1804067081;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ENM68047xPDieAI2ZYo9VTtRyFyahU4meJlMgy8he5c=;
 b=adkkWctPDEEPtsgzSnUsVRETCQY7jynT8pxJWTzhAUbVG0tTkktFA5Iz
 +oE9WuIxpAJarvGJV88k19gVO4lCJcEamFcNd05lFg8F7N1MXn1VGRIE/
 LNULwvA4V4LHwB4GWx0GQM8ZdEpMZYps/AbFZT+Wdt5Ei+v8eI6wawQk1
 s548it9FL4G8v7UNi5DczkXb8VtnODprlTBSLalKR9zKq/vfrPbqk0I6n
 9EQT0ym6VCFI5vfPIKZPyzxBM2gaW8EwI3S7D+1NsEaQafQvQMWFpPjiA
 M/ouaxwy367jcf+gPUhtYnjhKfX39XXd6F1loqrRTi8xiYGWZRJEWv59s A==;
X-CSE-ConnectionGUID: 8axJxt/aQhC26Q2SkQki1Q==
X-CSE-MsgGUID: L3Zb/rz+Q2WsQ5RBxkp/2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73624654"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="73624654"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 01:44:39 -0800
X-CSE-ConnectionGUID: PQ4SssOcQEedhZosiRP2uw==
X-CSE-MsgGUID: xJzCfTENQr6EqtosnOhFQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="217930880"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 01:44:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <navaremanasi@google.com>
Cc: Juasheem Sultan <jdsultan@google.com>, intel-gfx@lists.freedesktop.org,
 intel_xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>,
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>,
 ville.syrjala@linux.intel.com
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
In-Reply-To: <CAMNLLoSf4gyiQpi7D=yGwcGkR7X9EZqXmP+CJKrFcgjkDhPXQA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
 <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
 <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
 <f8096b857e6c0a24f32c1eb6479d95b0dbb4adad@intel.com>
 <CAMNLLoS2Yg+2EssW-ykXcKSfV7v2sYq-zcwFUYhKM+ErLTVc8w@mail.gmail.com>
 <CAMNLLoSf4gyiQpi7D=yGwcGkR7X9EZqXmP+CJKrFcgjkDhPXQA@mail.gmail.com>
Date: Tue, 03 Mar 2026 11:44:32 +0200
Message-ID: <bc56a6bc956aaef264946d6fe68296a564ba231d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: 2344D1EC0C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_SPAM(0.00)[0.986];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : SPF/DKIM temp error,none];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Action: no action

On Mon, 02 Mar 2026, Manasi Navare <navaremanasi@google.com> wrote:
> Hi @Jani Nikula <jani.nikula@intel.com> :
>
> Before we file a fdo issue with complete debug logs to understand what the
> FW is setting up the HW at, I wanted to understand a few more things in
> terms of the final solution:
>
> -  Ideally if the FW is setting up the initial state or programming the HW
> registers for the initial splashscreen, for the initial commit when we do
> the HW state readout, it should have the HW values programmed to some mode
> parameters
> -  Then like you suggested, we would need to read out the HW state
> - Could you elaborate on "1) reading out the hw state to sw
> state? - Does that mean do the HW state readout and compute
> pipe_config/crtc_state for that?
>
> - Then add some sanitization to have this computed pipe_config that will be
> programmed to the HW
> - Then ensure that both are same so that the intel fastset logic can apply
> fastset?

Let's start with the regular modesets, ignoring the probe for a bit.

For every modeset, we have the old (current) state and the new
state. These are both software states. We compare the states to
determine whether a full modeset is required or not. This is mostly
dependent on what the hardware can change on the fly. If we can bypass a
full modeset, we call it a fastset.

We write either the full new state (modeset) or just the changes
(fastset) to the hardware, and the new state becomes the old (current)
state.

After that, we read back the hardware state to verify we did everything
right. This is the state checker. The comparison is done using the same
functions as for determining whether a full modeset is required.

Rinse and repeat.

At probe, we obviously don't have the old (current) software state. We
create it by reading out the hardware state, using the same mechanisms
as in the state checker. We call it the inherited state. We do the
initial commit with that.

Then we arrive at the first userspace/client initiated modeset. It goes
through the same paths as the regular modeset. If we can get away with a
fastset, we call it fastboot i.e. no full modeset at boot.

That's the basic idea, anyway. Now the caveats.

Sometimes GOP (or whatever pre-os) ends up using slightly different
parameters for the same mode than the driver. Or we might not be able to
read out everything. Or we lose accuracy in the sw->hw->sw changes. Or
the pre-os enables stuff that it doesn't even use or care about. We
wiggle around those issues using sanitization or ignoring small
differences or simply bypassing some parts on the first modeset.

Obviously, if there are gaps in the state readout in the first place,
the inherited state will be incomplete, and likely leads to a full
modeset. (And we also miss out on the state verification of those
parts.)

If the GOP (or pre-os) sets a mode, and the first modeset requests a
completely different mode, you can't have fastboot either.

The thing we absolutely can't do is what patch 2 here does. We can't
simply copy over stuff from one state to another, and hope it works. It
might appear to work by coincidence in some cases, but it is all
wrong. It ignores the computed modeset parameters for the new state,
even if userspace tries a completely different mode. It bypasses the
comparison for whether a full modeset is needed or not. It's not
discretional, it depends on what the hardware can change on the fly, and
it's undocumented at best what happens when you try to change such
things without a modeset.

You can do a lot of debugging based on just looking at the debug output
for the state comparison where we decide a fastset (and in this case
fastboot) is not possible. Where does the differing info come from? Is
there a readout in place? Is something completely zero in the readout,
or are there minor differences? Do you get fastsets on the second and
subsequent regular modesets? Etc. Etc.


HTH,
Jani.


-- 
Jani Nikula, Intel
