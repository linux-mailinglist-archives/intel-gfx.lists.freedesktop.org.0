Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MbatGE/nGWpDzwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:21:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF6F607C7B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F7E112449;
	Fri, 29 May 2026 19:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RJo7daR5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550FE112447;
 Fri, 29 May 2026 19:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082506; x=1811618506;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=Uuy5y4YPfDJyB9lGKTTaK5TfpPRie90pxHJDkv+1dmQ=;
 b=RJo7daR544uk3m6zKKpA23aYoI7lHE2/8fp9sS88IsWtc/JgX33Gs9gl
 97QBCfHNQOK0r/KQ8YHn8BoNbzz1+W4H2uG20FilnUGkE80K7Po3JJFgf
 IWDObnAVIK3k5jO0/TwHrRAt0JAbZYGSwU7dNnMme3hfFTG+hfNpxiTwO
 GPmIol4RiT4JEvYylnQL/OTTWFFHmC0PoaW2BtSw6LS7VSWX3EuZ/ALco
 7JJ/JvMvCs7eoxfjbfa40hXQlV6ohpd00njfria0/zSqnDYHzUnPER+jj
 hCw1TVlLqbt6tn1nbARXngoyDNDubCaDY9EDMX35PqU2dVyAoLMS9haR7 g==;
X-CSE-ConnectionGUID: eygrlk6+ROW7Jl+11HDF7g==
X-CSE-MsgGUID: T7k+mpwmQpG2b/U7EyfH3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="91516566"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91516566"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:21:46 -0700
X-CSE-ConnectionGUID: JeXPe95YS+qivxfFYO6JKg==
X-CSE-MsgGUID: /GmIMAAIRWKiUrxrKKq6zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242797427"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:21:45 -0700
Date: Fri, 29 May 2026 21:21:42 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Nikula, Jani" <jani.nikula@intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 04/31] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
In-Reply-To: <DM3PPF208195D8D19839A5B3145823CC4FAE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
Message-ID: <9baeee92-487a-75aa-3600-2981d70a0ec8@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-5-michal.grzelak@intel.com>
 <DM3PPF208195D8D19839A5B3145823CC4FAE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-453198143-1780082505=:1544314"
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 7FF6F607C7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-453198143-1780082505=:1544314
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 19 May 2026, Kandpal, Suraj wrote:
>> -----Original Message-----
>> From: Grzelak, Michal <michal.grzelak@intel.com>
>> Sent: Thursday, May 7, 2026 7:01 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>; Grzelak, Michal <michal.grzelak@intel.com>
>> Subject: [PATCH v3 04/31] drm/i915/bios: store VBT #57's metadata in
>> intel_vbt_data
>>
>> Store number of rows and number of tables in intel_vbt_data when search for
>> the VBT #57 succeeded.
>>
>> Display version determines number of rows present in each table. pre-MTL
>> platforms should have 10 rows while MTL+ should have 16 rows.
>>
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c         | 7 +++++++
>>  drivers/gpu/drm/i915/display/intel_display_core.h | 3 +++
>>  2 files changed, 10 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 3f9e4d31c7375..d64668c1022a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2200,6 +2200,9 @@ parse_vswing_preemph_override(struct
>> intel_display *display)
>>  		return;
>>
>>  	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
>> +
>> +	display->vbt.num_tables = block->num_tables;
>> +	display->vbt.num_rows = DISPLAY_VER(display) >= 14 ? 16 : 10;
>
> Where did you get these numbers from. Bspec reference maybe.

Bspec here is out of sync, eg. 32063. But 74227 implicitly assumes
16 entries. So I got this from the other driver.

BR,
Michał

> I also see you harcoding this in the next patches maybe you need a helper that can be used.
> Also DG2 also uses 16 rows from what I can see
>
>>  }
>>
>>  static u8 translate_iboost(struct intel_display *display, u8 val) @@ -2997,6
>> +3000,10 @@ init_vbt_defaults(struct intel_display *display)
>>
>> !HAS_PCH_SPLIT(display));
>>  	drm_dbg_kms(display->drm, "Set default to SSC at %d kHz\n",
>>  		    display->vbt.lvds_ssc_freq);
>> +
>> +	/* Vswing / Preemphasis Override */
>> +	display->vbt.num_tables = 0;
>> +	display->vbt.num_rows = 0;
>
> Why expilicitly make the 0 now vbt gets initialized with everything 0'd out. As intel_display is kazalloc'd
>
>>  }
>>
>>  /* Common defaults which may be overridden by VBT. */ diff --git
>> a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 76745ce6a716e..36ea4873deeb0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -242,6 +242,9 @@ struct intel_vbt_data {
>>  	struct list_head display_devices;
>>  	struct list_head bdb_blocks;
>>
>> +	int num_tables;
>> +	int num_rows;
>
> Lets keep this u8 here too for consistency
> Also maybe num_vswing_tables,
> num_vswing_rows_per_table.
>
> Regards,
> Suraj Kandpal
>
>> +
>>  	struct sdvo_device_mapping {
>>  		u8 initialized;
>>  		u8 dvo_port;
>> --
>> 2.45.2
>
>
--8323329-453198143-1780082505=:1544314--
