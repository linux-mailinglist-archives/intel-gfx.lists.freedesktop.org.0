Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iF8dGuFhMGpXSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C467F689E39
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TybUQCo8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5D310E6BC;
	Mon, 15 Jun 2026 20:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C18C10E6BC;
 Mon, 15 Jun 2026 20:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555678; x=1813091678;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=e/B6ji1DVkHXGZy02cVsS/qw2i0spTSskAQm6qNxOSs=;
 b=TybUQCo8xqY+D1qpGyIVNdcBA3rPypAJaRnaNY94KPMfQpKNQhAgxBPD
 ow1idpXjnSb5VsMi5WKC1lLEeWSA4FDZSbU+gyM7OQOF4GOvQCyFHT56/
 SH+r2Q29+wrAPcPe8n+2FmxZcONJCewIZrvX5fv5E25QRKAs5LY3QRU5U
 LmEgsEwIprzZS+b9JW67ghAquhMZVD8c9bjGvmVXwi1JSeB+B/1xcni48
 N7EejW4O2zcfkeGlv15ECFjvkNuYTM27lW9ruFtIbnJkuFfmLLmrj49Wz
 jdq808mu2SX7ODP1yaxsB1x8r7rJ9TVa7kOY/XieOo9ptvFuPaDTJZens g==;
X-CSE-ConnectionGUID: A241j06AS4SqYQ9W7Zll8Q==
X-CSE-MsgGUID: TpGNnSa8Tf6JIvUoPdd2ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694671"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694671"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:38 -0700
X-CSE-ConnectionGUID: F1lRP4QBREGl2MHTuNZBaQ==
X-CSE-MsgGUID: NLzO2aVwToeapkBgI/IjZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="244672539"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 3/4] drm/xe/display: separate d3cold handling from
 xe_display_pm_runtime_suspend_late()
In-Reply-To: <ajBb9sgCnlh22eY_@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1781527161.git.jani.nikula@intel.com>
 <83b257cac313967d4344185669187dc7140049f4.1781527161.git.jani.nikula@intel.com>
 <ajBb9sgCnlh22eY_@intel.com>
Date: Mon, 15 Jun 2026 23:34:34 +0300
Message-ID: <9845ff6706dd137390b5474af1358dfc6bbed501@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C467F689E39

On Mon, 15 Jun 2026, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Jun 15, 2026 at 03:40:47PM +0300, Jani Nikula wrote:
>> Make the special d3cold paths completely separate from the rest of the
>> runtime pm calls.
>>=20
>> The intel_dmc_wl_flush_release_work() call right after
>> xe_display_pm_suspend_late() might be completely redundant, but this
>> avoids any functional changes.
>>=20
>> Wiggle the comment while at it. It gets duplicated for now, but this
>> will be addressed in the follow-up.
>>=20
>> v2: Update comments
>>=20
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Acked-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/xe/display/xe_display.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/x=
e/display/xe_display.c
>> index 493e9e09b6c9..bdafc010fae1 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -389,14 +389,14 @@ void xe_display_pm_runtime_suspend_late(struct xe_=
device *xe)
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	if (xe->d3cold.allowed)
>> +	if (xe->d3cold.allowed) {
>>  		xe_display_pm_suspend_late(xe);
>> +		/* Ensure the wakelock release work gets flushed */
>> +		intel_dmc_wl_flush_release_work(display);
>> +		return;
>> +	}
>>=20=20
>> -	/*
>> -	 * If xe_display_pm_suspend_late() is not called, it is likely
>> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
>> -	 * need to flush the release work in that case.
>> -	 */
>> +	/* Ensure the wakelock release work gets flushed */
>>  	intel_dmc_wl_flush_release_work(display);
>
> In the next patch you end up removing this entirely, so I'm wondering
> why this patch simply doesn't remove this and move it to the d3cold only?!
>
> I mean, I saw you replace that by the new runtime_ calls that does the
> power_disable, but I don't see that calling the flush, so why simply not
> remove now on this patch and make that next one only adding that runtime =
call
> here?

I believe the flush is *deep* down the call path there.

>
> But well, this patch itself is not wrong and it does what it tells and
> you are transparently telling this is for ne follow up work. So,
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks!

BR,
Jani.

>
>>  }
>>=20=20
>> --=20
>> 2.47.3
>>=20

--=20
Jani Nikula, Intel
