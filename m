Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBlYBsb8HWqNgQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 23:42:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EC62598D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 23:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BDA10E9DA;
	Mon,  1 Jun 2026 21:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FILESLmv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D8310E9DA;
 Mon,  1 Jun 2026 21:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780350145; x=1811886145;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=+PXfDZknvvELSVF9dMITMq/WdFQOJB/tlKwlccKqPpo=;
 b=FILESLmvDJwV0P3D5NNGzsGPT0KhP5YG/Asc8YP4CXrwHhlAaMnHA6cX
 4QuVWd9G4ymyqCZrgThjioNOfwoHRRCIgOdDvYgA2hWApE+zW5qveRj34
 h1dWj6ckYOJjSpLt0z3J8h5R6lGmR+oQuZ0GBXSDzl9eXSmkP9i6/ZxXG
 oUZKx4rwi7RmFL5+LdhlPIEnpzdJkMESUEV0wwt0LaH/y5x1dwY80hodd
 TZirCKNvvx8KouW2Dk02TjHYLBsDAf7rWhY4pF2s/VtTqPi4GnF9qZxuV
 wxv/NhU6UVg8VRCiwA/U7IlpF4kkpAwhCVFuHqgkIGo4GEdrQguhzGhZY Q==;
X-CSE-ConnectionGUID: VOlMF7mBSmmBJGxGxwQ2rw==
X-CSE-MsgGUID: p2Vt+Jd1TqeM+7VwxGs0bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="92596419"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="92596419"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 14:42:25 -0700
X-CSE-ConnectionGUID: +F71jvh9SWyYUYfJhhdADg==
X-CSE-MsgGUID: sckO5kqvRcqLjCyOqtILew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245518440"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 14:42:23 -0700
Date: Mon, 1 Jun 2026 23:42:21 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access
 and index computation
In-Reply-To: <DM3PPF208195D8D087EB21BFEED67636E7FE3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
Message-ID: <b8c17f36-9bcb-e634-2386-491a4d08efab@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-7-michal.grzelak@intel.com>
 <DM3PPF208195D8D087EB21BFEED67636E7FE3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-866376847-1780333497=:1544314"
Content-ID: <1e3ebfb0-da3e-a692-0025-c89bf0afcf13@intel.com>
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
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 6C2EC62598D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-866376847-1780333497=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <35182e82-211d-2ec4-24bd-e4f7b4336ed2@intel.com>

On Mon, 1 Jun 2026, Kandpal, Suraj wrote:
>> Subject: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
>> index computation
>>
>> Lay into intel_ddi_buf_trans_get() infrastructure for VS/PE-O.
>>
>> Add (*get_phy_vspeo_index)() function hook into struct intel_encoder.
>> This function pointer is responsible for computing index of requested table
>> from VBT #57.
>>
>> Add also (*get_phy_vspeo)() function hook into struct intel_encoder.
>> This function pointer will be the accessor which parses and sets port's buffer
>> basing on VBT #57's data.
>>
>> Note that these two pointer need to be separate since they are taking place
>> during two different abstraction layers: (*get_phy_vspeo_index()) operates on
>> crtc_state, while (*get_phy_vspeo)() consumes devdata.
>>
>> Add generic function pointer indicating lack of VS/PE-O's support.
>>
>> Signed-off-by: Micha³ Grzelak <michal.grzelak@intel.com>
>> ---
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 30 ++++++++++++++++++-
>>  .../drm/i915/display/intel_display_types.h    |  5 ++++
>>  2 files changed, 34 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index 4cd1e4d76c7a..fbd5efc5ca6c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -1784,10 +1784,20 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder
>> *encoder,
>>  		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14,
>> n_entries);  }
>>
>> +static int
>> +_get_phy_vspeo_index(struct intel_encoder *encoder,
>> +		     const struct intel_crtc_state *crtc_state) {
>> +	return -EOPNOTSUPP;
>> +}
>> +
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)  {
>>  	struct intel_display *display = to_intel_display(encoder);
>>
>> +	encoder->get_phy_vspeo_index = _get_phy_vspeo_index;
>> +	encoder->get_phy_vspeo = NULL;
>> +
>>  	if (HAS_LT_PHY(display)) {
>>  		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
>>  	} else if (DISPLAY_VER(display) >= 14) { @@ -1857,5 +1867,23 @@
>> const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct
>> intel_encoder *
>>  							  const struct
>> intel_crtc_state *crtc_state,
>>  							  int *n_entries)
>>  {
>> -	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	const struct intel_ddi_buf_trans *buf_trans;
>> +	bool vspeo;
>> +	int table;
>> +
>> +	vspeo = intel_bios_encoder_requests_vspeo(encoder->devdata);
>> +	if (!vspeo)
>> +		return encoder->get_buf_trans(encoder, crtc_state,
>> n_entries);
>> +
>> +	table = encoder->get_phy_vspeo_index(encoder, crtc_state);
>> +	if (table < 0) {
>> +		drm_WARN_ONCE(display->drm, 1,
>> +			      "platform does not support VS/PE-O, setting
>> default\n");
>> +
>
> WARN does not belong here maybe a drm_dbg_kms() saying "VBT requests vspeo but does not provide index table"
> The reason being panel vendors may have broken VBT requesting for VS/PE but not providing a table.
> This will just cause Alarms to go off in CI, where you will be debugging broken VBTs which wont be fixed specially for the older
> Generations.

I agree that drm_dbg_kms() would suffice. I'm not sure on the phrasing
though. Current patch series does not support DKL nor MG PHY, and this
message was targeted to be shown when eg. TGL's DKL requests Override
when there is no code to handle it.

Now I think that probably it would be better to do what you have already
said [1], that the debug message should be issued only when VS/PE-O would
successfully take place, instead of spamming it all along the way.

BR,
Micha³

[1] https://lore.kernel.org/intel-gfx/DM3PPF208195D8D13E4ABB86F46CCE9999BE3002@DM3PPF208195D8D.namprd11.prod.outlook.com/

>
> Regards,
> Suraj Kandpal
>
>> +		return encoder->get_buf_trans(encoder, crtc_state,
>> n_entries);
>> +	}
>> +
>> +	buf_trans = encoder->get_phy_vspeo(encoder->devdata, table);
>> +	return intel_get_buf_trans(buf_trans, n_entries);
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index c21e0c0ef0b1..829e17fbfb0a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -292,6 +292,11 @@ struct intel_encoder {
>>  	void (*set_signal_levels)(struct intel_encoder *encoder,
>>  				  const struct intel_crtc_state *crtc_state);
>>
>> +	int (*get_phy_vspeo_index)(struct intel_encoder *encoder,
>> +				   const struct intel_crtc_state *crtc_state);
>> +	const struct intel_ddi_buf_trans *(*get_phy_vspeo)(const struct
>> intel_bios_encoder_data *devdata,
>> +							   int idx);
>> +
>>  	enum hpd_pin hpd_pin;
>>  	enum intel_display_power_domain power_domain;
>>
>> --
>> 2.45.2
>
>
--8323329-866376847-1780333497=:1544314--
