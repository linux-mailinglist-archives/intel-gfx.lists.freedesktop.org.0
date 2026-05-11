Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kS48Oy6IAWpJcwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:41:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551AB509697
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53AB310E4E9;
	Mon, 11 May 2026 07:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VGCzEOEt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34CE10E0B4;
 Mon, 11 May 2026 07:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778485291; x=1810021291;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zBwSDzpx7xxdzAFVKY6dfHL9FRIKu6BdJZx+3y0v5sQ=;
 b=VGCzEOEtu8HBJkE0kOIFjdooIKECJ54bFhTiBfZDF5U8zk4/uR9Yz9my
 ZD61yEz2UmL7K+nMmjSJFkdHiQG4QyyHhvwNZUhegr/XpcQzrtoU2y/wh
 lOEGpYwDjVxGH2ch02oytglDEQgrlOuq/d0ICsfZ2oVNteAujAKL5SUxd
 f06jA+plriS+345BjFCvmwEG4sjtQmBmoum+z4IExlQBZF0XcqkVfmf5N
 E7ns8OJ3st5dU2gwxBS+rJcLHWN2erC0ziqHaUEm4+yJkirK5f1IJLEem
 qOfEh2sLchU3zE+rbcUzDv605qGiZLHrfaP+eXFbIp+f10RuOXk80rqgX A==;
X-CSE-ConnectionGUID: u7FUKUxzT3ynVkJdsy8wXA==
X-CSE-MsgGUID: uulXsGChS6i0VrVwbDLGxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90741908"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90741908"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:41:14 -0700
X-CSE-ConnectionGUID: dtEGvvG2SWC5TM1ceTz6vQ==
X-CSE-MsgGUID: L9VBZbOPTPSQmmanZOoxkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="237332137"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.253])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:41:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-doc@vger.kernel.org
Cc: rodrigo.vivi@intel.com, Matthew Brost <matthew.brost@intel.com>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Subject: Re: [PATCH 1/3] Documentation/gpu: add dedicated documentation for
 Intel display
In-Reply-To: <4aba5b5e-75a5-4800-bedb-8f7cc673c7f7@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1778235406.git.jani.nikula@intel.com>
 <21bfa7777eb0926eadd309d4c6f5c9cf48405cf0.1778235406.git.jani.nikula@intel.com>
 <4aba5b5e-75a5-4800-bedb-8f7cc673c7f7@infradead.org>
Date: Mon, 11 May 2026 10:41:06 +0300
Message-ID: <6c6e0124df2b5f13661d3d8f4f1a9b7f1fcaca85@intel.com>
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
X-Rspamd-Queue-Id: 551AB509697
X-Rspamd-Server: lfdr
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
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,infradead.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Fri, 08 May 2026, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 5/8/26 3:20 AM, Jani Nikula wrote:
>> diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/g=
pu/intel-display/index.rst
>> new file mode 100644
>> index 000000000000..8d40363b8f90
>> --- /dev/null
>> +++ b/Documentation/gpu/intel-display/index.rst
>> @@ -0,0 +1,40 @@
>> +.. SPDX-License-Identifier: MIT
>> +.. Copyright =C2=A9 2026 Intel Corporation
>> +
>> +.. _drm/intel-display:
>> +
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +Intel Display Driver
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +
>> +The Intel display driver provides the display, or :ref:`drm-kms`, suppo=
rt for
>> +both the :ref:`drm/xe <drm/xe>` and :ref:`drm/i915 <drm/i915>` Intel GPU
>> +drivers.
>> +
>> +The source code currently resides under ``drivers/gpu/drm/i915/display`=
` due to
>> +historical reasons, and it's compiled separately into both drm/xe and d=
rm/i915
>> +kernel modules.
>> +
>> +The drm/xe and drm/i915 drivers are the "core" or "parent" drivers for =
display,
>> +as they initialize and own the drm device, and pass that on to the disp=
lay
>> +driver. The display driver isn't an independent driver in that sense.
>> +
>> +.. toctree::
>> +   :maxdepth: 1
>> +   :caption: Detailed display topics
>> +
>> +   async-flip
>> +   audio
>> +   cdclk
>> +   dmc
>> +   dpio
>> +   dpll
>> +   drrs
>> +   dsb
>> +   fbc
>> +   fifo-underrun
>> +   frontbuffer
>> +   hotplug
>> +   plane
>> +   psr
>> +   vbt
>
> Is this in almost-alphabetical order or just random?  :)

The above list is alphabetical, but the generated output does seem to be
more random due to the headings. This is in need of better organization
anyway, and this is just a step in the right direction, so I'll roll
with this.

> Tested-by: Randy Dunlap <rdunlap@infradead.org>

Thanks for the reviews and acks and testing, pushed to drm-intel-next.

BR,
Jani.


--=20
Jani Nikula, Intel
