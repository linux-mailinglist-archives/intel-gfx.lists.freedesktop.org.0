Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FyzHbu2+WmNBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:22:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057884C983E
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FCD10E0F4;
	Tue,  5 May 2026 09:22:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZFJiJSm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7BC10E0F4;
 Tue,  5 May 2026 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777972920; x=1809508920;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=OAUN8ugJP4ov/kTY2VBfWxaW8j+TtRr6qgWIR4/WKi8=;
 b=LZFJiJSmTqqUKKqdzkBjjHTcDw0gjjXDPXVQpQuIitkf0TLJ98lBRJzz
 HLMVXPEWrq6ZpaqIpWPML3kL4+8Y6ZMghXdtv4dcOiUmV/mGvOo06YVmf
 cGp29XKDZn6eYRw5q+jCfD/sPTSqSyuD+f2qjPKxCjQ7xO+HL3NqUyBlF
 E1Bq0vuNkyc53Y15sZqBSK2WnjsYjrrQPPVNhvmQynWF/O9Hwvt12HICK
 QW4sTSgIWkj6rQkP5r+7KP1cRKNkVR1LYnSDPbvH/GTTYm1b8qs1AWmf5
 +Jv58Eq2N4IH0CLTf750z8apTmPJaw+xKaxmiNtBqvssCJZ5KEf/nd0V5 Q==;
X-CSE-ConnectionGUID: b0iLDin0TtCT+02cQEHB0g==
X-CSE-MsgGUID: 0Hpnj5ocR3KqaPzq1vi32A==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="96406307"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="96406307"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 02:21:59 -0700
X-CSE-ConnectionGUID: SyFQ3g/5RBiATO//HgNDbg==
X-CSE-MsgGUID: 5i2HFoxzRbyNglnrHGY4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234890965"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 02:21:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/4] drm/i915/display: add typedef for intel_reg_t and
 use it
In-Reply-To: <8d34455b-8156-76c3-97a3-29f943650230@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1775653994.git.jani.nikula@intel.com>
 <7f662cd4cc7dc8c40410fb67ea7ecaff406bb036.1775653994.git.jani.nikula@intel.com>
 <8d34455b-8156-76c3-97a3-29f943650230@intel.com>
Date: Tue, 05 May 2026 12:21:55 +0300
Message-ID: <09d18b0e3beae5c89a9bfd1b3f32a36507cb45d3@intel.com>
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
X-Rspamd-Queue-Id: 057884C983E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]

On Tue, 05 May 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Wed, 8 Apr 2026, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/dri=
vers/gpu/drm/i915/display/intel_display_reg_defs.h
>> index 175334b41bba..cb46863693cd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
>> @@ -8,6 +8,8 @@
>>
>> #include "i915_reg_defs.h"
>>
>> +typedef i915_reg_t intel_reg_t;
>> +
>
> Is there any reason why checkpatch encourages to refrain from adding new
> typedefs? This seems like a well justified case.

Typedefs are overall discouraged in the kernel per coding style. The
original was added for type safety, as we had mistakes with plain
integer register offsets. Could've been struct i915_reg too, but here we
are.

> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks,
Jani.


--=20
Jani Nikula, Intel
