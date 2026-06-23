Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /+4FKo5OOmrt5gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:14:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37E6B5AC6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:14:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=j+Jxzhh+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297AC10EA2B;
	Tue, 23 Jun 2026 09:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811EF10EA2B;
 Tue, 23 Jun 2026 09:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206090; x=1813742090;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=4LxckzBwbZgQQ9lZbjIYqslsHgBM2/ZMG4bqUgw7f0U=;
 b=j+Jxzhh+k87oTPrXHx90JH57luavwfmJXT7N6ZbIjbM4AQ6Ed4cLUWln
 53PjrPJrUt47otXDX8VV1seIB45vHL0zh0G3AuCK7DvTT/+goyf+7M3Ce
 dEG6XoB1rDsaovtjv8hXGQY2I98+XcTBg93djtKdBFxvmNE3Q4JpbzNLE
 x6ToWpM4Fe8Sp/5q6sY+YkF9qPMQTBPi+zuDAPUw0jqetYRdvD5tmukEe
 24KZBXHFYTlNCOBd1xq8wiDi8iSMdaFOGPG+pdQ2NAqvKMx0aAqMHFACW
 VxKqJ3ZugysLb4pkoOhOnFz4W3GAUiMY+bvAw0zbQvSu9sD0r4HwGU7DM A==;
X-CSE-ConnectionGUID: 74AV8YiiQcKY5vVR92k09w==
X-CSE-MsgGUID: doNMLPCsRJKsn8q/hnbmbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="108486882"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="108486882"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:14:50 -0700
X-CSE-ConnectionGUID: ZJIAY5yxSxmZTqvzaryRLg==
X-CSE-MsgGUID: 7EzhgGNSQL2HmnIHJhaFTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249506464"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.35])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:14:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/4]  DSC max delta bpp support
In-Reply-To: <IA1PR11MB64672A1C0531552103C35F0AE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260619113905.1413453-1-nemesa.garg@intel.com>
 <IA1PR11MB64672A1C0531552103C35F0AE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Tue, 23 Jun 2026 12:14:45 +0300
Message-ID: <b96480cf8db4912e1ad8b8d3192e8ca9204fefaa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E37E6B5AC6

On Tue, 23 Jun 2026, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Garg, Nemesa <nemesa.garg@intel.com>
>> Sent: Friday, June 19, 2026 5:09 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Garg, Nemesa <nemesa.garg@intel.com>
>> Subject: [PATCH 0/4] DSC max delta bpp support
>> 
>>     Some sinks exposes DSC max bpp through delta based DPCD fields. To
>> support those sinks, add DP DPCD field field and logic to decode the delta
>> value in bppx16 format.
>> 
> Hi Jani Nikula,
>
> Can you please give ack for this series so as to merge via drm-misc.

Ack... but you didn't send the series to dri-devel.

>
> Thanks and Regards,
> Nemesa
>
>> Nemesa Garg (4):
>>   drm/dp: Add DP_DSC_MAX_BPP_DELTA register
>>   drm/dp: Rename YCbCr420 bpp delta mask to native
>>   drm/dp: Add max bpp delta computation constants
>>   drm/i915/dp: Decode dsc max delta bpp from sink dpcd
>> 
>>  drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
>>  include/drm/display/drm_dp.h            | 13 ++++++--
>>  2 files changed, 52 insertions(+), 4 deletions(-)
>> 
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
