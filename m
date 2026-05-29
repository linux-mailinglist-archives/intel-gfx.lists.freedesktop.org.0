Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INGSJmbpGWqFzwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:30:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27363607E50
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9184A112476;
	Fri, 29 May 2026 19:30:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPpiYysr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EFA112475;
 Fri, 29 May 2026 19:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780083043; x=1811619043;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=QV59IdoRaCDAObnmRRq6u6MJ8iAGfzmfMUqDPAXtEv0=;
 b=CPpiYysr+vmdEeYz+fZg4RR1i77QbZtzt4BkbpQlUjUbkoxqoCctaApx
 gVjJG9tXT3ddzz/sZxwiThEl4qA9tGQDSs0mMLKj3anQHv5yQV87EGuCm
 GkVFrcMYEHbir8ID6ZPgGt6O9hoR8AGjVOoLcIPbjFwF6w+URrDeISCJ1
 kaZTfo87NY7DkrFcIQQjhnXC5SYjI/roufWC14hUercXgjA0qxYpM/9ww
 oXG05qs60w32Wyyuqj6OEQBn7T/r0tRTAhe5eg6R/+MVoMkYj8S+gE/Dp
 uq/24wUSLQUR1erjAiBSNTYSb/rK0MojGNz/dTaq1WRxQeh9PDzLxIFpG g==;
X-CSE-ConnectionGUID: 0DWT2naFTuC4VriZ+/r0Nw==
X-CSE-MsgGUID: JSB5U0IMQV+6qgtB0gncZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="83520008"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="83520008"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:30:42 -0700
X-CSE-ConnectionGUID: MieCnS/vQPKqf+wrTgNJlQ==
X-CSE-MsgGUID: B6AZC0yPQwOFlYODhj6NLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="273242788"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:30:41 -0700
Date: Fri, 29 May 2026 21:30:39 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>, 
 "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 12/31] drm/i915/ddi: expose VS/PE-O buffers to
 intel_encoder
In-Reply-To: <2c9f1720aae37405b1540ebfcb0ca4fa9abbe980@intel.com>
Message-ID: <6297c231-c00c-ef7b-9f28-abdd96db4386@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-13-michal.grzelak@intel.com>
 <DM3PPF208195D8DAC7B75B4A5EC5683E025E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <2c9f1720aae37405b1540ebfcb0ca4fa9abbe980@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-307721347-1780083042=:1544314"
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
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
X-Rspamd-Queue-Id: 27363607E50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-307721347-1780083042=:1544314
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 19 May 2026, Jani Nikula wrote:
> On Tue, 19 May 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>>>
>>> Add into intel_encoder constant pointer to intel_ddi_buf_trans. Track with it
>>> VS/PE-O buffer from corresponding BIOS encoder.
>>>
>>> Add helper function into intel_bios.[ch] to extract port's intel_ddi_buf_trans
>>> pointer. Cache the pointer by default into each intel_encoder during
>>> intel_ddi_init().
>>>
>>> This is needed as devdata->buf_trans has been allocated per each port during
>>> parsing DDI ports in intel_bios.c. Meanwhile every encoder will need to know
>>> if VS/PE overriding is requested during intel_ddi_buf_trans_init().
>>>
>>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
>>>  drivers/gpu/drm/i915/display/intel_bios.h          | 2 ++
>>>  drivers/gpu/drm/i915/display/intel_ddi.c           | 1 +
>>>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>>>  4 files changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>>> b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index 1b813a3dff245..6893aa9f01aec 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -3851,6 +3851,12 @@ bool intel_bios_encoder_supports_tbt(const
>>> struct intel_bios_encoder_data *devda
>>>  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;  }
>>>
>>> +const struct intel_ddi_buf_trans *
>>> +intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data
>>> +*devdata) {
>>> +	return devdata->buf_trans;
>>> +}
>>> +
>>>  bool intel_bios_encoder_overrides_vswing(const struct
>>> intel_bios_encoder_data *devdata)  {
>>>  	return devdata->display->vbt.version >= 218 && diff --git
>>> a/drivers/gpu/drm/i915/display/intel_bios.h
>>> b/drivers/gpu/drm/i915/display/intel_bios.h
>>> index 50c8fc91fbe85..cf040b9b7915b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>>> @@ -73,6 +73,8 @@ bool intel_bios_get_dsc_params(struct intel_encoder
>>> *encoder,  const struct intel_bios_encoder_data *
>>> intel_bios_encoder_data_lookup(struct intel_display *display, enum port
>>> port);
>>>
>>> +const struct intel_ddi_buf_trans *
>>> +intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data
>>> +*devdata);
>>>  bool intel_bios_encoder_overrides_vswing(const struct
>>> intel_bios_encoder_data *devdata);  bool
>>> intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data
>>> *devdata);  bool intel_bios_encoder_supports_hdmi(const struct
>>> intel_bios_encoder_data *devdata); diff --git
>>> a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> index 2681940a5cfe3..eb188b27ec96b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> @@ -5249,6 +5249,7 @@ void intel_ddi_init(struct intel_display *display,
>>>
>>>  	encoder = &dig_port->base;
>>>  	encoder->devdata = devdata;
>>> +	encoder->vspeo = intel_bios_encoder_extract_vswing(devdata);
>>>
>>>  	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>>>  			 DRM_MODE_ENCODER_TMDS, "%s",
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 26e59110e7435..0f27bcfb69223 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -297,6 +297,7 @@ struct intel_encoder {
>>>
>>>  	/* VBT information for this encoder (may be NULL for older platforms)
>>> */
>>>  	const struct intel_bios_encoder_data *devdata;
>>> +	const struct intel_ddi_buf_trans *vspeo;
>>
>> I don’t get why this is really needed you have devdata available you can get this data on fly why the helper and caching . Even after caching it points to same table.
>
> Agreed.
>

For whatever reasons I added this, they weren't very real. Thanks for
pointing it out.

BR,
Michał

>>
>> Regards,
>> Suraj Kandpal
>>
>>>  };
>>>
>>>  struct intel_panel_bl_funcs {
>>> --
>>> 2.45.2
>>
>
> -- 
> Jani Nikula, Intel
>
--8323329-307721347-1780083042=:1544314--
