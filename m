Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJx7F9V7uWmxHAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 17:05:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E90AC2AD967
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 17:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C6E10E6F1;
	Tue, 17 Mar 2026 16:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8FybXjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE6510E6DB;
 Tue, 17 Mar 2026 16:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773763538; x=1805299538;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kuYeu248OOgNpQ1t4bfhjzK/W5jcpAmeRc7zICAmPyY=;
 b=b8FybXjNx/HCqjJV91yRLFEAKdAhmPValigHqi0tGGqu1XM8DelOceiG
 mxIuMpqOwnOtRGe8TeNevNpNXiBIDuThnXfsKj2HDauztkHcoml7L24LP
 lnK8yhq3Ik4eDKkOoPKPuSXt6gLoh3+GtHzfAc7MsPTf0qyHMAnKUQqMX
 coDvHM90XXFdV3bKGl2kBuhgdq+9TzDDCyJuO/WdSyFsxbXCctknCyd/m
 wRhOYL9IjgpdscQ6ysmnGpJxTQBuhnzP9MDGJ3nBJO9VAHD9HrrKKPQCh
 6d/oXvS8hYiTk+yPAU2SIT0CUv0vAZ9/bGmyCBlpP/4JD/hDpuWxDka8c A==;
X-CSE-ConnectionGUID: k8r6IAkFSy+eO2kSvGwxWw==
X-CSE-MsgGUID: aVn0peQRRxCcSQsr1Q5/Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="97408945"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="97408945"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 09:05:15 -0700
X-CSE-ConnectionGUID: AdJO+271S+aXDUO0SP7SpA==
X-CSE-MsgGUID: GEZ3es0WSz2Li2HJDtIVuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; d="scan'208";a="217991639"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 09:05:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Ankit
 Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 02/19] drm/dp: Clean up DPRX feature enumeration macros
In-Reply-To: <abP4vUF0YH2uA3-P@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-3-ankit.k.nautiyal@intel.com>
 <abP4vUF0YH2uA3-P@intel.com>
Date: Tue, 17 Mar 2026 18:05:09 +0200
Message-ID: <789bea1d1c00fc95782adcfe1ff0a85129b206a8@intel.com>
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E90AC2AD967
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 11, 2026 at 05:05:54PM +0530, Ankit Nautiyal wrote:
>> Align the DP_DPRX feature enumeration macros for better readability and
>> consistency, and use the BIT() macro instead of open-coded shifts.
>>=20
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> If we really want to go for BIT() someone should do a full pass
> over the whole file...

Should also use BIT_U8() and GENMASK_U8().

>
> In the meantime
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> ---
>>  include/drm/display/drm_dp.h | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
>> index 4ea3b5b08a12..49f0154eb93c 100644
>> --- a/include/drm/display/drm_dp.h
>> +++ b/include/drm/display/drm_dp.h
>> @@ -1202,10 +1202,10 @@
>>  # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS	0x04
>>  # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS	0x05
>>=20=20
>> -#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1         0x2214 /* 2.0 E=
11 */
>> -# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED    (1 << 0)
>> -# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPO=
RTED (1 << 1)
>> -# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED  (1 << 4)
>> +#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1					0x2214 /* 2.0 E11 */
>> +# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED						BIT(0)
>> +# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPO=
RTED	BIT(1)
>> +# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED				BIT(4)
>>=20=20
>>  #define DP_128B132B_SUPPORTED_LINK_RATES       0x2215 /* 2.0 */
>>  # define DP_UHBR10                             (1 << 0)
>> --=20
>> 2.45.2

--=20
Jani Nikula, Intel
