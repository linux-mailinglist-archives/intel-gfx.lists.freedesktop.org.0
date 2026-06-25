Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y/azMJsSPWqRwggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:35:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C6E6C5290
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:35:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=egYic50c;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2A510F262;
	Thu, 25 Jun 2026 11:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAB210F284;
 Thu, 25 Jun 2026 11:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782387352; x=1813923352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=47/dcQ6wavSFZrePzlAU2cwsL3F8aKfK7gV3XWxMs2U=;
 b=egYic50ckcSH1VnknA5LbkjAPb96Df3lckhqvhIjZ7XQrRm8Yh9HY9qj
 g7GtOg/Y2rc0l3I9eJgKTv3fCI78HQ3pLlDTX1YeuXknjje1XBjRE1a18
 17S6jugW2iSLN9lkyb7Qu2Efoko96hlbcnZAdT+GZvEG90Wdtl1Pc800R
 kPjPOm4NW4XhIHcWW5q09IKVHwmTzGQ6E/a8TZXhJXsippIahZiJH8cb9
 poh+1IWIiNCzYSn1XqFe7ayTGFQ5BbleG0WYGMxYuDAdFHYwtmI+eJ5+l
 uco60jeEkB/QfopDxEnhdwiSX0XdIRwholoZXIuWeF7ar55m9fHrEw3cC g==;
X-CSE-ConnectionGUID: lMdHkBkCS0i1QHPrbshYhA==
X-CSE-MsgGUID: jKGCdTAtQ3axVHOs6CdE1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="87067407"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="87067407"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 04:35:47 -0700
X-CSE-ConnectionGUID: K3EYKZUzQ++AStJWLwLwhA==
X-CSE-MsgGUID: YTKAXRfvSnWc3POMhV9UwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254357336"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 04:35:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 1/8] drm/i915: call intel_uncore_runtime_resume() for
 each gt
In-Reply-To: <aj0JHRZyHH2CVgd1@zenone.zhora.eu>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1782311749.git.jani.nikula@intel.com>
 <59d87d12e535aa1a587a9c6884b8a43471ff3131.1782311749.git.jani.nikula@intel.com>
 <aj0JHRZyHH2CVgd1@zenone.zhora.eu>
Date: Thu, 25 Jun 2026 14:35:43 +0300
Message-ID: <e3dd09a4ec8882a8d97a26d7192beaf8bff480ba@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7C6E6C5290

On Thu, 25 Jun 2026, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Jani,
>
> On Wed, Jun 24, 2026 at 05:36:48PM +0300, Jani Nikula wrote:
>> All uncore suspend/resume calls are done on each gt. Follow suit in
>> vlv_suspend_complete() error path purely for completeness, even if
>> VLV/CHV only have one.
>>=20
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 43f747c3c31f..f6c7270300c9 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1545,7 +1545,9 @@ static int i915_pm_runtime_suspend(struct device *=
kdev)
>>  	if (ret) {
>>  		drm_err(&dev_priv->drm,
>>  			"Runtime suspend failed, disabling it (%d)\n", ret);
>> -		intel_uncore_runtime_resume(&dev_priv->uncore);
>> +
>> +		for_each_gt(gt, dev_priv, i)
>> +			intel_uncore_runtime_resume(gt->uncore);
>
> I wonder how we got until now with this. This is on the border
> line for a Fixes kind of patches.

We end up here only on VLV/CHV, and on the error path at that. And for
VLV/CHV i915->uncore is the only one anyway, so no big deal. I just
think doing it the same way everywhere is better.

BR,
Jani.


>
> Andi
>
>>  		intel_irq_resume(dev_priv);
>>=20=20
>> --=20
>> 2.47.3
>>=20

--=20
Jani Nikula, Intel
