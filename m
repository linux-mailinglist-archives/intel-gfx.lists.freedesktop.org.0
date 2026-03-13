Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABLlAzAwtGmuigAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 16:41:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66308286381
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 16:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA1210E45A;
	Fri, 13 Mar 2026 15:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YIH9SLf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A824710E45B;
 Fri, 13 Mar 2026 15:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773416492; x=1804952492;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CxVN9VlC3SWpg1TmlHV0rqFxt6d7g9UyQXojpSvD4QA=;
 b=YIH9SLf7MJp1Hx0uF9Osd/tUyADGGgQKA+WgDPmfRAUYEeGNbm0vA9tC
 dpZ/AMaxdcuOAgMHOOFfsFcjgMXNw0VS34shgmvvDkaTEgNP7sywOsnc2
 oYBduAylAT82kkJbcpiwCVzcERRgPFzd+aP0t239RrDEv0pdC+gA8cJKk
 GclK4zevbzqcrQlgJzqVuNe0hAHTY7Ba4iyiasuQL+6vLSyt6QOADMIi8
 zl/toOJdheEGCT9qYfsmfYVegJ4VkVSSgsGyCuYksFrjzTdUgi9qBm4d1
 JkRFMqEP+HTEb4i7Xml3TpN4I27/S5evtGDAgNDihkfVxUKOCZsYf6km6 g==;
X-CSE-ConnectionGUID: PVHuaNTMSdSahwp7x9MhIg==
X-CSE-MsgGUID: n1toCIjpT5qJ59ZzMz1/7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="78417456"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78417456"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 08:41:31 -0700
X-CSE-ConnectionGUID: 4/iwgC4OT/KcDRjcM8Kv3Q==
X-CSE-MsgGUID: 7ApDyu/QSg2Yjbtz69TiSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="259098318"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 08:41:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/cx0: Clear response ready & error bit
In-Reply-To: <20260122044859.753682-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260122044859.753682-1-suraj.kandpal@intel.com>
Date: Fri, 13 Mar 2026 17:41:23 +0200
Message-ID: <4246db6c7096dd089ebcd7ac0b3c7589a232e836@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 66308286381
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 22 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Clear the response ready and error bit of PORT_P2M_MESSAGE_BUS_STATUS
> before writing the transaction pending bit of
> PORT_M2P_MSGBUS_CTL as that is a hard requirement. If not done
> we find that the PHY hangs since it ends up in a weird state if left
> idle for more than 1 hour.

Should this have had a Fixes: tag or Cc: stable like Rodrigo asked way
back when [1]? Do we have some PHY hang issue in the wild?

We rely heavily on developers identifying fixes that need backports to
stable kernels.

BR,
Jani.


[1] https://lore.kernel.org/r/aWexzTR221l0F-we@intel.com




>
> Bspec: 65101
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 4f56a370102d..ff74f64eb970 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -223,6 +223,8 @@ static int __intel_cx0_read_once(struct intel_encoder=
 *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20=20
> +	intel_clear_response_ready_flag(encoder, lane);
> +
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
> @@ -294,6 +296,8 @@ static int __intel_cx0_write_once(struct intel_encode=
r *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20=20
> +	intel_clear_response_ready_flag(encoder, lane);
> +
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :

--=20
Jani Nikula, Intel
