Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ld8Ndu4+WmNBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:31:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950A34C9BDB
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D60B10E126;
	Tue,  5 May 2026 09:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mbeya/LZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D3710E126;
 Tue,  5 May 2026 09:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777973465; x=1809509465;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/a2EnyDPn05RZMnVKtZjEzUUAwivOVJjxFP2yX4qmSo=;
 b=mbeya/LZozYZDOtq4TQGTfKKj4z6LOMAV3QtnJ2bPdnXeIP+UaIYBMhK
 Ugj7btQcO3zdjkFKaNYdU9zE5QPFarm8OSuIqSNfrgE5aVrNIvQZaEVaw
 t16pUJPdrdcC/ypIQSRrGYgEpmor7ydHjKpBFqlNZipedJj60mftQ2zMj
 SR5IozmLY1GvyleQOIsGmyJrg3XQxImeF/84Xc3N/9p1roFJf+0BtK1wX
 OvTUsS94pCUrlzKzV45PCtsCIV9lnB84xbTkLEfb70Xi2pTMQ1Ok1Otbk
 1ncXhsryXVfMLO1ZcxQNUYxIk5+MNk8RieuczMnyN3Z3wJm0t70+nTZA8 g==;
X-CSE-ConnectionGUID: 8rAFBFgKRxuYarXprJyFSA==
X-CSE-MsgGUID: m9HuOovrQtOKAJgJtvtczw==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78830887"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="78830887"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 02:31:05 -0700
X-CSE-ConnectionGUID: ngBDru85SB+aoPE5DSDNrA==
X-CSE-MsgGUID: 2DZoElVIRIeHcuWReF61Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="231392203"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 02:31:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/4] drm/i915/display: add struct intel_irq_regs and use it
In-Reply-To: <4467f546-984f-0367-1356-38374c6ae2b9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1775653994.git.jani.nikula@intel.com>
 <ed3401c39890fd02fb01510fc194f02e2dda4ebc.1775653994.git.jani.nikula@intel.com>
 <4467f546-984f-0367-1356-38374c6ae2b9@intel.com>
Date: Tue, 05 May 2026 12:31:00 +0300
Message-ID: <123c1c11c24a2d52f57f07589320ddd1a30e97fb@intel.com>
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
X-Rspamd-Queue-Id: 950A34C9BDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Tue, 05 May 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Wed, 8 Apr 2026, Jani Nikula wrote:
>> -#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe=
), \
>> -						      GEN8_DE_PIPE_IER(pipe), \
>> -						      GEN8_DE_PIPE_IIR(pipe))
>> +#define GEN8_DE_PIPE_IRQ_REGS(pipe)	INTEL_IRQ_REGS(GEN8_DE_PIPE_IMR(pip=
e), \
>> +						       GEN8_DE_PIPE_IER(pipe), \
>> +						       GEN8_DE_PIPE_IIR(pipe))
>
> Should I send a patch with s/pipe/_pipe applied to
> GEN8_DE_PIPE_IRQ_REGS()? In case it is just a nit from checkpatch:

s/pipe/_pipe/ doesn't help with the checkpatch complaint about macro
argument reuse.

Basically this means something like

	GEN8_DE_PIPE_IRQ_REGS(foo())

leads to foo() being called three times, in unspecified order.

For the register macros we generally don't care, and they're only used
in a fairly limited manner. To make them safe against macro argument
reuse requires a code block like ({ enum pipe _pipe =3D (pipe); ... }) and
that'll never be a constant expression.

> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks,
Jani.

--=20
Jani Nikula, Intel
