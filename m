Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDi0L6CjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:15:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22482536E15
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EC110EF62;
	Wed, 13 May 2026 16:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFI/fIUY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D92510EF61;
 Wed, 13 May 2026 16:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688924; x=1810224924;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9y2ssJSseoAiZ5/pXIcWPaRD7ZJXvdnmxFV/sZ/3qI4=;
 b=XFI/fIUYEQENfnTvhCW4sZg8dZdsYOnN9wv2QX4zDsEGuDm4UNeEgrQ4
 onGwC4nbNdtHrMwwHV7f87gFeaADlI5PMXNpSqtSUo+AG2YE0gOl4a6iC
 dlbzCTs8d436O6GFHQtGESaPT7PVe/SnJBqgfHIq0XljYpMi15TXWut79
 ngyAlkEsdb+vLzpcIj5sbYZqdyucWEAAkXN82z9GYqgbEmO0s35JOFMJI
 IziT0Cjap35iGkQ0LsEZVFxKTAg+7xPilBuM4pvTkovBT2LaAYM0Ij3HR
 CPwku/ApqEfVupEbBPrYm9SyEdCAqHP4DFhslg47O3fo4FumRjqg7SF5g Q==;
X-CSE-ConnectionGUID: m9m4jXCAQvW2ihR+Pkdweg==
X-CSE-MsgGUID: 6nQsDqinQvC5IZsxVxcXQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79798517"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79798517"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:15:23 -0700
X-CSE-ConnectionGUID: PJHpBvoLTRK3HFy9kAtGBQ==
X-CSE-MsgGUID: b0DKqceITFOctdAAq++gTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="233679751"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:15:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 5/6] drm/i915/irq: add intel_display_irq_ack() to irq
 funcs
In-Reply-To: <agSLAz2q4ksazecu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1778666967.git.jani.nikula@intel.com>
 <cdeee940180b0009bc71753e065c02cc496ae272.1778666967.git.jani.nikula@intel.com>
 <agSLAz2q4ksazecu@intel.com>
Date: Wed, 13 May 2026 19:15:19 +0300
Message-ID: <42aec4c84127ecabc3abd30b058d9b471a38d1c6@intel.com>
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
X-Rspamd-Queue-Id: 22482536E15
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Wed, 13 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, May 13, 2026 at 01:10:10PM +0300, Jani Nikula wrote:
>> Some platforms have a separate step for acking display irqs. Call the
>> platform specific display irq ack hooks, if any, via
>> intel_display_irq_ack().
>>=20
>> Introduce struct intel_display_irq_state to group together all the data
>> the ack hooks need. In the follow-up, this state will be passed on to a
>> shared handler function.
>
> This also might be a bit cleaner done in two steps:
> 1. extract the gmch ack() funcs
> 2. add the vfunc

Sent v4 splitting patches 5-6 into two steps.

BR,
Jani.


--=20
Jani Nikula, Intel
