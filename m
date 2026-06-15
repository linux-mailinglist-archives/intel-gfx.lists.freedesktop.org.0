Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gY+gJ53eL2rQIAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 13:14:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5098C685A12
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 13:14:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hc6VJmRd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9501210E381;
	Mon, 15 Jun 2026 11:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A6610E353;
 Mon, 15 Jun 2026 11:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781522072; x=1813058072;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LibXhyMWEbKvNHjik8IFLmy2/nZh6PunuZu7k3YS+z0=;
 b=hc6VJmRdPgj8TN5o6bc4r215ASX+04hSiGNOp5loTH1DXg9ifOokqmjT
 ez+sjMRL5ugzzBr9oGrWdtAhd3foLPRQXXeUeTBQguT4wJ9bmfue3zmoG
 b16YbO+fMO8YBUJPoBRJkU2v0yOSguuR3Z2iNTwLAkF7sy7odF4NVw4IF
 OQOZTwXIJWy6RtORL0xkKfTbflidVgFPjTTnvT1JmmOMNTYfRbIdXNauk
 pwb5rEnKd6z8m/4Il6uNOnHK8NsvMUKLZSoK0LhGKYL5RY1LNNbRIQx7y
 IylYCnhx7X5yL0Q8xrCFmcbuNjLaF8U1tqN7XSFxdzx7BtWhcJ6Kh8sdV Q==;
X-CSE-ConnectionGUID: oK3BTEeiSFCG6OY+0dzzpw==
X-CSE-MsgGUID: HY8n2NHrRGKbdByZ4cBgsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82158850"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82158850"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 04:14:32 -0700
X-CSE-ConnectionGUID: iKcVKx5yR8+DuAT4tOIruQ==
X-CSE-MsgGUID: htb7nWH5SkSRTdP0bB6xIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="251363199"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 04:14:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: David Airlie <airlied@redhat.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH] drm/displayid: fix Tiled Display Topology ID size
In-Reply-To: <CAMwc25ow-MehYN8u0EFkEW-JB2CYL+od9xja0WBK0-msWMHOww@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610141549.555605-1-jani.nikula@intel.com>
 <CAMwc25ow-MehYN8u0EFkEW-JB2CYL+od9xja0WBK0-msWMHOww@mail.gmail.com>
Date: Mon, 15 Jun 2026 14:14:27 +0300
Message-ID: <dcce02bcee216f44cbbd4e597a2a0b3e4e9977e4@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5098C685A12

On Thu, 11 Jun 2026, David Airlie <airlied@redhat.com> wrote:
> On Thu, Jun 11, 2026 at 12:16=E2=80=AFAM Jani Nikula <jani.nikula@intel.c=
om> wrote:
>>
>> The Tiled Display Topology ID of a DisplayID Tiled Display Topology Data
>> Block consists of three fields:
>>
>> - Tiled Display Manufacturer/Vendor ID Field (3 bytes)
>> - Tiled Display Product ID Code Field (2 bytes)
>> - Tiled Display Serial Number Field (4 bytes)
>>
>> i.e. a total of 9 bytes, not 8.
>>
>> The DisplayID Tiled Display Topology ID is used as the tile group
>> identifier.
>>
>> Update both struct displayid_tiled_block topology_id member and struct
>> drm_tile_group group_data member to full 9 bytes.
>>
>> The group data was missing the last byte of the serial number. I don't
>> know whether there are known bug reports that might be linked to this,
>> but it's plausible the last byte could be the differentiating part for
>> the tile groups, and fewer tile groups might have been created than
>> intended.
>
> I pulled out my spec, and indeed I can confirm this is the correct readin=
g!
>
> Reviewed-by: Dave Airlie <airlied@redhat.com>

Thanks for the review, pushed to drm-misc-fixes.

BR,
Jani.


--=20
Jani Nikula, Intel
