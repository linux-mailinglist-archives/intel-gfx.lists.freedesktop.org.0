Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DHnKDpQPH2qRewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:15:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F45A630982
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:14:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O5GM3hWb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA38210F399;
	Tue,  2 Jun 2026 17:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B03110F394;
 Tue,  2 Jun 2026 17:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780420496; x=1811956496;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=0EAek3qOTo6R7/60SBYovYDvSKkG6nF2up41VZPhVeg=;
 b=O5GM3hWbzJqfKN+Y2BXN8hTcttNmNG1aVgKtBZK24q8OSmfTop9FeMNM
 CgHCQThYMVkrUyMAKki3TQWqUZR8GGdIkgMqoPD53636PG5cE6pv/XCzj
 tNqr5uQAWHJoyfhVFKZKf1gdmaIaDlaVhVPUF9DS3yMaRXR0jS4Oo1WiU
 58W6/+D5y1JsilTKfZ/Z1SHGbkiR+E/wl4lspois5K9YgrD/xR8hNzCDB
 Rj+HIe2gar1jW9oVYlQRINR3/5iT5dF4mm+b3XaL6438IEYCYTBuorglj
 S4u1Ouv4Grt1WBE2wWc0MVdM7y77D9Q3YN8CLMohNHHyShKn9xgO3+HIi A==;
X-CSE-ConnectionGUID: RrBiuS/RQbyLIsPlI1bB1Q==
X-CSE-MsgGUID: Azz8ODeZRD6orpFtA6husg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="80246076"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="80246076"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:14:56 -0700
X-CSE-ConnectionGUID: BU3nT3v5QvGsrAC4+xh3IA==
X-CSE-MsgGUID: MFwcYZQ9RfOrtuQNSELQMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="244052791"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:14:54 -0700
Date: Tue, 2 Jun 2026 19:14:52 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
In-Reply-To: <IA3PR11MB89376FA72BFFB178F27810B2E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
Message-ID: <598de0a0-07f3-bec4-8b04-9f90bd2e9fdd@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-8-michal.grzelak@intel.com>
 <IA3PR11MB89376FA72BFFB178F27810B2E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1157040347-1780420495=:1544314"
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F45A630982

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1157040347-1780420495=:1544314
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 2 Jun 2026, Kandpal, Suraj wrote:
>> Subject: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
>>
>> Add accessor function for LT to read requested table from VBT #57.
>> Parse the requested table and transform data into port's buffer.
>>
>> LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
>> contains fields. Warn about missing fields.
>>
>> Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th table for
>> DP.
>>
>> Warn if encoder does not support DP. In that case fallback to using default
>> VS/PE tables.
>>
>> There are no changes to intel_ddi_dp_level() since selection of correct row of
>> intel_ddi_buf_trans_entry is same as when no override request has been
>> done.
>>
>> Tables 1-4 are not used at all and are most likely to be zeroed. 5th table is
>> used for any mode below DP 2.0 (exclusive). 6th table is used for any mode
>> above DP 2.0 (inclusive).
>>
>> Indices for other tables have not yet been observed to be used as of now.
>>
>> v3->v4
>> - stick to solely changing VBT data into current structures (Jani)
>> - move iterator declaration to declaration block (Suraj)
>>
>> v2->v3
>> - remove unnecessary braces from if block (Suraj)
>> - return -EINVAL instead of -1 (Suraj)
>>
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 39 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_bios.h     |  4 ++
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 24 +++++++++++-
>>  .../drm/i915/display/intel_ddi_buf_trans.h    | 10 +++++
>>  4 files changed, 76 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index e47ac169271f..4f1a7d5101c6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3860,6 +3860,45 @@ bool intel_bios_encoder_supports_tbt(const
>> struct intel_bios_encoder_data *devda
>>  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;  }
>>
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data
>> *devdata,
>> +				int idx)
>> +{
>> +	struct intel_display *display = devdata->display;
>> +	struct intel_ddi_buf_trans *vspeo = (void *) devdata->vspeo;
>
> Unnecessary space after type casting
>
>> +	union intel_ddi_buf_trans_entry *entries = (void *) devdata->vspeo-
>>> entries;
>
> Ditto
>
>> +	const u32 *tables = display->vbt.vspeo.tables;
>> +	int num_columns = display->vbt.vspeo.num_columns;
>> +	int num_rows = display->vbt.vspeo.num_rows;
>> +	size_t offset = 0;
>> +	int level;
>> +
>> +	INTEL_DISPLAY_STATE_WARN(display, idx < _LT_unused0 || idx >
>> LT_DP2X,
>> +				 "LT requested invalid VS/PE-O table: %d\n",
>> idx);
>
> No need for a display state warn here the only value you can possibly end up with here is -EINVAL , LT_DP_14/2x
> So just do a return no need to log it here. Later the function calling this can fallback to its usual pathway. (that would mean In the previous patch you will have to check what get_phy_vspeo returns and just use default path if it returns failure)
> Also I think you do not require _LT_unused at all.
>
>
>> +
>> +	drm_WARN_ONCE(display->drm, 1,
>> +		      "setting txswing & _level to 0 on LT's VS/PE-O request\n");
>
> WARN not required
> Also Why ? Add bspec link.

Of all WARNs from the series this one is actually justified. LT's
VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans contains
fields. Thus I don't see much other solution then set some safe-ish
value and proceed, apart from rolling back from the Override. I don't
think there is any Bspec for it, since the other driver has same problem
as well.

BR,
Michał

>
>> +
>> +	offset += idx * num_rows * num_columns;
>> +
>> +	for (level = 0; level < num_rows; level++) {
>> +		u32 main_cursor = tables[offset];
>> +		u32 pre_cursor = tables[offset+1];
>
> Add blank space around operator.
>
>> +		u32 post_cursor = tables[offset+2];
>
> Same here.
>
>> +
>> +		entries[level].lt.txswing = 0;
>> +		entries[level].lt.txswing_level = 0;
>> +		entries[level].lt.main_cursor = main_cursor;
>> +		entries[level].lt.pre_cursor = pre_cursor;
>> +		entries[level].lt.post_cursor = post_cursor;
>> +
>> +		offset += num_columns;
>> +	}
>> +
>> +	vspeo->num_entries = num_rows;
>> +	return vspeo;
>> +}
>> +
>>  bool intel_bios_encoder_is_dedicated_external(const struct
>> intel_bios_encoder_data *devdata)  {
>>  	return devdata->display->vbt.version >= 264 && diff --git
>> a/drivers/gpu/drm/i915/display/intel_bios.h
>> b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 7a50a272cd27..73786832b402 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -73,6 +73,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder
>> *encoder,  const struct intel_bios_encoder_data *
>> intel_bios_encoder_data_lookup(struct intel_display *display, enum port
>> port);
>>
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data
>> *devdata,
>> +				int table);
>> +
>>  bool intel_bios_encoder_requests_vspeo(const struct
>> intel_bios_encoder_data *devdata);  bool
>> intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data
>> *devdata);  bool intel_bios_encoder_supports_hdmi(const struct
>> intel_bios_encoder_data *devdata); diff --git
>> a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index fbd5efc5ca6c..68258fbfa43e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -3,6 +3,8 @@
>>   * Copyright © 2020 Intel Corporation
>>   */
>>
>> +#include <drm/drm_print.h>
>> +
>>  #include "intel_cx0_phy.h"
>>  #include "intel_ddi.h"
>>  #include "intel_ddi_buf_trans.h"
>> @@ -1784,6 +1786,20 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder
>> *encoder,
>>  		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14,
>> n_entries);  }
>>
>> +static int
>> +xe3plpd_get_lt_vspeo_index(struct intel_encoder *encoder,
>> +			   const struct intel_crtc_state *crtc_state) {
>> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
>> +		if (intel_dp_is_uhbr(crtc_state))
>> +			return LT_DP2X;
>> +		else
>> +			return LT_DP14;
>> +	}
>> +
>> +	return -EINVAL;
>> +}
>> +
>>  static int
>>  _get_phy_vspeo_index(struct intel_encoder *encoder,
>>  		     const struct intel_crtc_state *crtc_state) @@ -1800,6
>> +1816,8 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>>
>>  	if (HAS_LT_PHY(display)) {
>>  		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
>> +		encoder->get_phy_vspeo_index =
>> xe3plpd_get_lt_vspeo_index;
>> +		encoder->get_phy_vspeo = intel_bios_encoder_get_lt_vspeo;
>>  	} else if (DISPLAY_VER(display) >= 14) {
>>  		if (intel_encoder_is_c10phy(encoder))
>>  			encoder->get_buf_trans = mtl_get_c10_buf_trans;
>> @@ -1878,9 +1896,13 @@ const struct intel_ddi_buf_trans
>> *intel_ddi_buf_trans_get(struct intel_encoder *
>>
>>  	table = encoder->get_phy_vspeo_index(encoder, crtc_state);
>>  	if (table < 0) {
>> -		drm_WARN_ONCE(display->drm, 1,
>> +		drm_WARN_ONCE(display->drm, table == EOPNOTSUPP,
>>  			      "platform does not support VS/PE-O, setting
>> default\n");
>>
>> +		drm_WARN_ONCE(display->drm, table != EOPNOTSUPP,
>> +			      "non-DP (%d) encoder asks for VS/PE-O, setting
>> default\n",
>> +			      crtc_state->output_types);
>> +
>>  		return encoder->get_buf_trans(encoder, crtc_state,
>> n_entries);
>>  	}
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> index 9698697f3917..560892b4ef8c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> @@ -74,6 +74,16 @@ struct intel_ddi_buf_trans {
>>  	u8 hdmi_default_entry;
>>  };
>>
>> +enum intel_lt_vspeo {
>> +	_LT_unused0 = 0,
>> +	_LT_unused1,
>> +	_LT_unused2,
>> +	_LT_unused3,
>> +
>> +	LT_DP14 = 4,
>> +	LT_DP2X
>> +};
>
> Just
> enum intel_lt_vspeo_index {
> 	LT_DP14 = 4,
> 	LT_DP2X
> };
>
> Regards,
> Suraj Kandpal
>
>> +
>>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
>>
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
>> --
>> 2.45.2
>
>
--8323329-1157040347-1780420495=:1544314--
