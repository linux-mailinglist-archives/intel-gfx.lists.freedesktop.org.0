Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEGlEiWtqmnjVAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 11:32:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8699321EC86
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 11:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F16F10ECC7;
	Fri,  6 Mar 2026 10:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0Z8lTKQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BBA10ECC7;
 Fri,  6 Mar 2026 10:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772793121; x=1804329121;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CgIUiqoctAst7HrTIjj+1cX/4J2lpJfXl0eA3wafb4Y=;
 b=Z0Z8lTKQnWmN2n3mR4OaXF+YsXA1anU87/0NsNz1q4dareO9Ybo7TswY
 ZCqnxJVBizXJPjyEadwEdskHLI2Iz2exAHiVDp6BapG4ffwNVR+sjrzLR
 phZa6r3Oyn8abw54LdmOMPUsN4DRtVWpVswufQxBztJGHDSoXztZ0vC18
 dF8lcG+HbrPG95xghMC9rZ8LwAKtFrPwWnair/rMUuSX7T2Lwj/drB4L6
 NzuIp8mkBglys+oUE/DLazpBdt/iFWPIx4GJfj5WCTvIlJoPtEkKBRU6G
 s6TcKBRJNLMx5vIBrk6f+aW4kDtBKmg3dXCGIXtNed4xrmrL1ueyk5Meb w==;
X-CSE-ConnectionGUID: rfiDHvccShaGGr5LyenLig==
X-CSE-MsgGUID: Ou8Z2X10Qa6gqAc3R8wJCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="84608498"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="84608498"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 02:32:00 -0800
X-CSE-ConnectionGUID: OmgBK8SKQaiVRecYw+UDYw==
X-CSE-MsgGUID: EU9FzmMgRjCvKQNuiw0SXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="249446474"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 02:31:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH RESEND] iopoll: fix parameter names in kernel-doc
In-Reply-To: <20260306063829.2059375-1-rdunlap@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260306063829.2059375-1-rdunlap@infradead.org>
Date: Fri, 06 Mar 2026 12:31:54 +0200
Message-ID: <7b4ab61091b0bd032e129e46237f707d2448ca08@intel.com>
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
X-Rspamd-Queue-Id: 8699321EC86
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action

On Thu, 05 Mar 2026, Randy Dunlap <rdunlap@infradead.org> wrote:
> Correct the parameter names to avoid kernel-doc warnings:
>
> Warning: include/linux/iopoll.h:169 function parameter 'sleep_us' not
>  described in 'read_poll_timeout_atomic'
> Warning: ../include/linux/iopoll.h:169 function parameter
>  'sleep_before_read' not described in 'read_poll_timeout_atomic'

I think the right fix is to rename the parameters instead. They're
passed on to poll_timeout_us_atomic() where the parameters are called
delay_us and delay_before_op, emphasizing that this is atomic i.e. no
sleep.

BR,
Jani.

>
> Fixes: 9df8043a546d ("iopoll: Generalize read_poll_timeout() into poll_ti=
meout_us()")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> ---
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> ---
>  include/linux/iopoll.h |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> --- linux-next-20260304.orig/include/linux/iopoll.h
> +++ linux-next-20260304/include/linux/iopoll.h
> @@ -150,16 +150,16 @@
>   * @op: accessor function (takes @args as its arguments)
>   * @val: Variable to read the value into
>   * @cond: Break condition (usually involving @val)
> - * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
> + * @sleep_us: Time to udelay between reads in us (0 tight-loops). Please
>   *            read udelay() function description for details and
>   *            limitations.
>   * @timeout_us: Timeout in us, 0 means never timeout
> - * @delay_before_read: if it is true, delay @delay_us before read.
> + * @sleep_before_read: if it is true, delay @sleep_us before read.
>   * @args: arguments for @op poll
>   *
>   * This macro does not rely on timekeeping.  Hence it is safe to call ev=
en when
>   * timekeeping is suspended, at the expense of an underestimation of wal=
l clock
> - * time, which is rather minimal with a non-zero delay_us.
> + * time, which is rather minimal with a non-zero @sleep_us.
>   *
>   * When available, you'll probably want to use one of the specialized
>   * macros defined below rather than this macro directly.

--=20
Jani Nikula, Intel
