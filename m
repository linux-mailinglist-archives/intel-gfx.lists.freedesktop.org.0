Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3yi9BzKlImrBbQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:30:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A0F64756E
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 12:30:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IYUj25gq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375BF11A702;
	Fri,  5 Jun 2026 10:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30D011A6FE;
 Fri,  5 Jun 2026 10:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780655406; x=1812191406;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=s7VurJ5X5Xu2NQ/39pHpOsCz2FduqI/LV+Xf70qGwu0=;
 b=IYUj25gqPr4uNORtgAspircRdKTSV2enrifZVURS3UVLj5lsrbLNJjcp
 bIonNa2gXkscfTi+BCSlsdO9YSWTPvwyRgcx1jHaBPitOJiOfw00FEAPL
 9nK9269ggZnrEmr316vfTUJgghQR8BEmLXZFXhu8BtSDOmbYTYIoeYKhZ
 oyKhHyz0V0lsYN7WjiQV3VFUSGnyHwvtE3VB7xTAAM6a7Gh2BXlEu24XG
 vBoqhM3JF/fRweNT+xAzND/y4wWGvprHvBRPVxc69AbYaa2T6Ph4oGOXU
 ouSZ3wbWFZaNDxrMP2sZzWWlnzeyhLPAz3LRqf09RcykljyhG/legWd59 A==;
X-CSE-ConnectionGUID: fkgZgvhuTHCBoDTCqIdffA==
X-CSE-MsgGUID: JOVPkIrVSMqNlJpOBmKDEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81521225"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81521225"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:30:06 -0700
X-CSE-ConnectionGUID: UkvjYA5oTCyO9vsfiQtLOQ==
X-CSE-MsgGUID: ogIY5SM/RZKT2UbHB+3Vsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="244670644"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 03:30:04 -0700
Date: Fri, 5 Jun 2026 12:30:02 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v6 5/8] drm/i915: override LT's VS/PE when requested
In-Reply-To: <3ca0f1aa374e5aa8e860602023b0920281b8b428@intel.com>
Message-ID: <e44a7bca-56ee-65dd-132e-b7726cac9329@intel.com>
References: <20260603230544.1993439-1-michal.grzelak@intel.com>
 <20260603230544.1993439-6-michal.grzelak@intel.com>
 <3ca0f1aa374e5aa8e860602023b0920281b8b428@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-701852861-1780608084=:1544314"
Content-ID: <b43a6e83-5a92-308c-e594-31a5a46a8ee6@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1A0F64756E

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-701852861-1780608084=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <62349cfc-395f-0dfe-0819-50c255597109@intel.com>

On Thu, 4 Jun 2026, Jani Nikula wrote:
> On Thu, 04 Jun 2026, Micha³ Grzelak <michal.grzelak@intel.com> wrote:
>> Add accessor function for LT to read requested table from VBT #57.
>> Parse the requested table and transform data into port's buffer.
>>
>> Add helper for checking if devdata is safe for dereference. Proceed with
>> default values if not.
>>
>> Add helper to check if VS/PE-O buffer has been allocated during
>> allocate_vswing_preemph_override(). Proceed with default values if not.
>>
>> LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
>> contains fields. Thus copy txswing and txswing_level from default VS/PE
>> values onto VS/PE-O tables.
>>
>> Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th
>> table for DP.
>>
>> There are no changes to intel_ddi_dp_level() since selection of correct
>> row of intel_ddi_buf_trans_entry is same as when no override request has
>> been done.
>>
>> Tables 1-4 are not used at all and are most likely to be zeroed. 5th
>> table is used for any mode below DP 2.0 (exclusive). 6th table is used
>> for any mode above DP 2.0 (inclusive).
>>
>> Indices for other tables have not yet been observed to be used as of
>> now.
>>
>> v5->v6
>> - remove drm_WARN_ONCE (Suraj)
>> - pass default VS/PE tables to LT's VBT accessor (Suraj)
>> - set txswing & _level from default VS/PE tables (Suraj)
>> - add helper checking if VS/PE-O has been allocated (Suraj)
>> - check if devdata is not NULL
>>
>> v4->v5
>> - add if-ladder instead of function pointer
>> - blend index computation with table parsing
>> - remove WARN and debug messages
>> - remove enums entirely
>> - add spaces around operators (Suraj)
>> - remove spaces after type casting (Suraj)
>> - remove INTEL_DISPLAY_STATE_WARN (Suraj)
>>
>> v3->v4
>> - stick to solely changing VBT data into current structures (Jani)
>> - move iterator declaration to declaration block (Suraj)
>>
>> v2->v3
>> - remove unnecessary braces from if block (Suraj)
>> - return -EINVAL instead of -1 (Suraj)
>>
>> Signed-off-by: Micha³ Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 40 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_bios.h     |  6 +++
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 37 ++++++++++++++++-
>>  3 files changed, 82 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index bc48ed9a7cbf5..302a9465a637b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3846,6 +3846,11 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
>>  	return map_ddc_pin(devdata->display, devdata->child.ddc_pin);
>>  }
>>
>> +bool intel_bios_encoder_allocated_vspeo(const struct intel_bios_encoder_data *devdata)
>> +{
>> +	return !!devdata->vspeo;
>> +}
>> +
>>  bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata)
>>  {
>>  	return devdata->display->vbt.version >= 218 && devdata->child.use_vbt_vswing;
>> @@ -3861,6 +3866,41 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
>>  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
>>  }
>>
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
>> +			const struct intel_ddi_buf_trans *buf_trans,
>> +			int idx)
>> +{
>> +	struct intel_display *display = devdata->display;
>> +	struct intel_ddi_buf_trans *vspeo = (void *)devdata->vspeo;
>> +	union intel_ddi_buf_trans_entry *entries = (void *)vspeo->entries;
>> +	const u32 *tables = display->vbt.vspeo.tables;
>> +	int num_columns = display->vbt.vspeo.num_columns;
>> +	int num_rows = display->vbt.vspeo.num_rows;
>> +	size_t offset = 0;
>> +	int level;
>> +
>> +	offset += idx * num_rows * num_columns;
>> +
>> +	for (level = 0; level < num_rows; level++) {
>> +		u8 txswing = buf_trans->entries[level].lt.txswing;
>> +		u8 txswing_level = buf_trans->entries[level].lt.txswing_level;
>> +		u32 main_cursor = tables[offset];
>> +		u32 pre_cursor = tables[offset + 1];
>> +		u32 post_cursor = tables[offset + 2];
>> +
>> +		entries[level].lt.txswing = txswing;
>> +		entries[level].lt.txswing_level = txswing_level;
>> +		entries[level].lt.main_cursor = main_cursor;
>> +		entries[level].lt.pre_cursor = pre_cursor;
>> +		entries[level].lt.post_cursor = post_cursor;
>> +
>> +		offset += num_columns;
>> +	}
>> +
>> +	return vspeo;
>> +}
>> +
>>  bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
>>  {
>>  	return devdata->display->vbt.version >= 264 &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 7a50a272cd27d..1a9b27d8e5789 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -73,6 +73,12 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>>  const struct intel_bios_encoder_data *
>>  intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
>>
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
>> +			const struct intel_ddi_buf_trans *buf_trans,
>> +			int idx);
>> +
>> +bool intel_bios_encoder_allocated_vspeo(const struct intel_bios_encoder_data *devdata);
>>  bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
>>  bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
>>  bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index 4cd1e4d76c7af..f936868d6113a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -1784,6 +1784,24 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
>>  		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
>>  }
>>
>> +static const struct intel_ddi_buf_trans *
>> +xe3plpd_get_lt_vspeo_buf_trans(struct intel_encoder *encoder,
>> +			       const struct intel_crtc_state *crtc_state,
>> +			       int *n_entries)
>> +{
>> +	const struct intel_ddi_buf_trans *buf_trans;
>> +
>> +	buf_trans = encoder->get_buf_trans(encoder, crtc_state, n_entries);
>
> Also not fond of encoder->get_buf_trans() being called here. Really,
> there should be only *one* place where that is called.
>

Agreed. Thus LT will be temporarily excluded from patch series, since it
is a corner case.

BR,
Micha³

>> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
>> +		if (intel_dp_is_uhbr(crtc_state))
>> +			return intel_bios_get_lt_vspeo(encoder->devdata, buf_trans, 5);
>> +		else
>> +			return intel_bios_get_lt_vspeo(encoder->devdata, buf_trans, 4);
>> +	}
>> +
>> +	return buf_trans;
>> +}
>> +
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>>  {
>>  	struct intel_display *display = to_intel_display(encoder);
>> @@ -1857,5 +1875,22 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
>>  							  const struct intel_crtc_state *crtc_state,
>>  							  int *n_entries)
>>  {
>> -	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	const struct intel_ddi_buf_trans *buf_trans;
>> +
>> +	if (!encoder->devdata)
>> +		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +
>> +	if (!intel_bios_encoder_requests_vspeo(encoder->devdata))
>> +		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +
>> +	if (!intel_bios_encoder_allocated_vspeo(encoder->devdata))
>> +		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +
>> +	if (HAS_LT_PHY(display))
>> +		buf_trans = xe3plpd_get_lt_vspeo_buf_trans(encoder, crtc_state, n_entries);
>> +	else
>> +		buf_trans = encoder->get_buf_trans(encoder, crtc_state, n_entries);
>> +
>> +	return intel_get_buf_trans(buf_trans, n_entries);
>>  }
>
> -- 
> Jani Nikula, Intel
>
--8323329-701852861-1780608084=:1544314--
