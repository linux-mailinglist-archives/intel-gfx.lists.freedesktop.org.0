Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wJHOJM0gMWpUcAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:09:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8419968DE97
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:09:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cRcPexGX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4413410E9D4;
	Tue, 16 Jun 2026 10:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F7F10E0F8;
 Tue, 16 Jun 2026 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781604553; x=1813140553;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=X95W886IKC1ZJXTGxjRG9lXw61kd5dUvElhQTwaAF40=;
 b=cRcPexGXvh0MpbLxS+LUiYL8y1MHZJOuYLVwQYbUHIvFJeBPqPNwCMFr
 v3IQEKUgkxHXENPTm24tHVC5UOVTGQhTim/YV/vB1sEkFRJ1W94lEN7WR
 Ct9A1V/LIXfAO6HspxmMg8nksoFyakDqYCFS39xF5Ll5FwAELEFl+65YW
 msDgosb5TBWI/t7757Qg6pMgM8yz1EQbEIA/nwBH0Ctb5PzAFcvBsxT5W
 b9Hf/v0RIpP49m2IGA+wwFO4b6OB5nizisSx0xB2uW+b3E2FjuEpi7I0I
 WMkgwPbAh/WaKRc1wAbWIAiiBsIBE9MpHVOL9IVz6LVu54QcLaYqT7W5m A==;
X-CSE-ConnectionGUID: SxjrfjLbSmm3r5qgt4ekKA==
X-CSE-MsgGUID: vSZqG7uwRNKyLlu+TJgVkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93482915"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93482915"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:09:13 -0700
X-CSE-ConnectionGUID: 3/3oUf4aRmqBbHGU42f8ww==
X-CSE-MsgGUID: iHysU9uGS1SSET28l5N7Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247599681"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.167])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:09:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 4/4] drm/xe/display: unify runtime suspend/resume with
 i915 for non-d3cold
In-Reply-To: <9495bbd32c47e67de43d984382cdc0303073e068.1781527161.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1781527161.git.jani.nikula@intel.com>
 <9495bbd32c47e67de43d984382cdc0303073e068.1781527161.git.jani.nikula@intel.com>
Date: Tue, 16 Jun 2026 13:09:07 +0300
Message-ID: <cd885709333b5b91b29e9999133000aab3f725c4@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8419968DE97

On Mon, 15 Jun 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> With the special d3cold handling in xe runtime suspend/resume separated,
> unify the non-d3cold paths with i915. There are multiple changes here at
> once that probably wouldn't make much sense to split out further.
>
> Add the call to intel_display_driver_pm_runtime_suspend(), which in turn
> starts calling intel_display_power_runtime_suspend(). Deep down, this
> should take care of intel_dmc_wl_flush_release_work(), allowing us to
> drop the extra call in xe_display_pm_runtime_suspend_late().
>
> Add the call to intel_display_driver_pm_runtime_suspend_late(), which
> starts calling intel_opregion_notify_adapter(). The
> intel_hpd_poll_enable() call is also done here, postponed from the
> previous location in xe_display_pm_runtime_suspend().
>
> Add the call to intel_display_driver_pm_runtime_resume_early(), which
> contains the intel_display_power_runtime_resume() and
> intel_opregion_notify_adapter() counterparts found in
> intel_display_power_runtime_suspend() and
> intel_display_power_runtime_suspend_late(). (They are not symmetric.)
>
> Finally, intel_display_driver_pm_runtime_resume() replaces the direct
> calls to intel_hpd_init(), intel_hpd_poll_disable(), and
> skl_watermark_ipc_update().

So this whole thing doesn't work, because both
intel_display_power_runtime_suspend() and
intel_display_power_runtime_resume() need to be called with irqs
disabled.

More shuffling is needed in xe, probably also i915.

BR,
Jani.


>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index bdafc010fae1..8c147610f721 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -379,7 +379,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *=
xe)
>  		return;
>  	}
>=20=20
> -	intel_hpd_poll_enable(display);
> +	intel_display_driver_pm_runtime_suspend(display);
>  }
>=20=20
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> @@ -396,8 +396,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_dev=
ice *xe)
>  		return;
>  	}
>=20=20
> -	/* Ensure the wakelock release work gets flushed */
> -	intel_dmc_wl_flush_release_work(display);
> +	intel_display_driver_pm_runtime_suspend_late(display);
>  }
>=20=20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> @@ -412,9 +411,8 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
>  		return;
>  	}
>=20=20
> -	intel_hpd_init(display);
> -	intel_hpd_poll_disable(display);
> -	skl_watermark_ipc_update(display);
> +	intel_display_driver_pm_runtime_resume_early(display);
> +	intel_display_driver_pm_runtime_resume(display);
>  }

--=20
Jani Nikula, Intel
