Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJImKsle12kCNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:09:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D38F3C784D
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5680D10E760;
	Thu,  9 Apr 2026 08:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FAMP4WVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467C210E75B;
 Thu,  9 Apr 2026 08:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722181; x=1807258181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vKvbBqDP87heWpNDUVKUHVquqx+uF6Oad/eR8x+MU8A=;
 b=FAMP4WVG0x7onnSqtncCFxKWhZ3ZnKmRNEaZp/JjcMecBI/3JKRRrITu
 nd5tWIJi3AON5dau6jH9tbNewu2gFYcEhxi/Mt2+U0CfDfzN1udEZDYHC
 sjle4r6+T+scLxBSKAbOODETkNaWEFXgA1pQI9zGmD9wsWVa99FSkdw7H
 p/vveUalfMQEgsqAiPqYrlGNNsrGm89do1v4ciQ3dq0Lf4G0Jb0/BcDn1
 N1kONzkVbYsk+BeNv0nD73FHdr/Xj3VxNTTSdVSG9PEKvVUzHY0mkGixh
 cy2t1y3N+MkX8xGYBwLWpU7cOSG5vatYNXE8RQCt8gZotZf1lqDA3lNHR g==;
X-CSE-ConnectionGUID: wq507l3wRRqEoczib9x62Q==
X-CSE-MsgGUID: nxNHlnAURPywEVrtSW5HKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75892763"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75892763"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:09:41 -0700
X-CSE-ConnectionGUID: ya6VTcyxSxanFbg1YWpwSw==
X-CSE-MsgGUID: gciFVPZsRxSnOokFCTCKUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="259148489"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:09:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Simona
 Vetter <simona.vetter@ffwll.ch>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 1/6] dma-buf: Remove old lies about
 dma_fence_wait_any_timeout() not accepting some fences
In-Reply-To: <20260408233458.22666-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-2-ville.syrjala@linux.intel.com>
Date: Thu, 09 Apr 2026 11:09:34 +0300
Message-ID: <8963fcfe824675600e932dd9020d114b190d793b@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 3D38F3C784D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> commit 796422f227ee ("dma-fence: Allow wait_any_timeout for all
> fences") made dma_fence_wait_any_timeout() accept any fence, even
> one with a custom .wait() implementation. Update the docs to match.
>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/dma-buf/dma-fence.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 1826ba73094c..2c623c0221e2 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -884,9 +884,8 @@ dma_fence_test_signaled_any(struct dma_fence **fences=
, uint32_t count,
>   * @idx: used to store the first signaled fence index, meaningful only on
>   *	positive return
>   *
> - * Returns -EINVAL on custom fence wait implementation, -ERESTARTSYS if
> - * interrupted, 0 if the wait timed out, or the remaining timeout in jif=
fies
> - * on success.
> + * Returns -ERESTARTSYS if interrupted, 0 if the wait timed out,
> + * or the remaining timeout in jiffies on success.
>   *
>   * Synchronous waits for the first fence in the array to be signaled. The
>   * caller needs to hold a reference to all fences in the array, otherwis=
e a

--=20
Jani Nikula, Intel
