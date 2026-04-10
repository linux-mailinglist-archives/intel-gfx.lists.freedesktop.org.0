Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLMPKgu52GmmhQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 10:47:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB7D3D44AA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 10:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C20C210E8F2;
	Fri, 10 Apr 2026 08:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aqmnfO+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E1B10E8F3;
 Fri, 10 Apr 2026 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775810826; x=1807346826;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HrGJ8IU+97Y6b8oMsG9+XwaEltzsxLLq3icsn0cTk0Y=;
 b=aqmnfO+Yvj6XV0IyBomP1wHf8emVp/Vmfp5eliVNZld51u7alL8DSGVi
 OM5GuywB3i2a8iMMZLlGbnNxP3tWDiZ3AsfBlq9GVZCl6p1d1EUJp0zZV
 5fDB6vwPBUNwEdPAGzR9dctemySUarKkLPNrYg6PhJRCPDQjpjj0cl6F/
 BcJwvAAkbqmyxUgB9+ezzq6FQwytH7UmZoZ6HjGaFHisXSlxP16kW75gx
 NafIb+wcIfR7OsMTb5WYeDx+EAJcqsri9ECMX5skJ9H5JFfGmJVfdOubn
 7sbVWVKApZ/DPfIZ9IucX5c6aLACk6sDbT3+qGjlXlNDuyTZrdbWjN2VE w==;
X-CSE-ConnectionGUID: gp3G59lCQciWQa5jr5+0Zg==
X-CSE-MsgGUID: pJOkO2A5SC2Z1BDXMTKq5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76545080"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76545080"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:46:24 -0700
X-CSE-ConnectionGUID: W2mPAyAQSDaKaSmJtoiyZA==
X-CSE-MsgGUID: P6mL66mFTb+y9RppLU9AcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228953936"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:46:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/reset: Add "display_reset_count" debugfs file
In-Reply-To: <aditNTEpluzhV_IE@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410073500.32308-1-ville.syrjala@linux.intel.com>
 <20260410073500.32308-5-ville.syrjala@linux.intel.com>
 <b059bb9ef0df9a2ab98ee9e4f900f8e6e3e82e57@intel.com>
 <aditNTEpluzhV_IE@intel.com>
Date: Fri, 10 Apr 2026 11:46:17 +0300
Message-ID: <00b45015161365915ff61d523acb493b1c772261@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 4DB7D3D44AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 10, 2026 at 10:42:23AM +0300, Jani Nikula wrote:
>> On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > +void intel_display_reset_debugfs_register(struct intel_display *displ=
ay)
>> > +{
>> > +	debugfs_create_u32("display_reset_count", 0400,
>> > +			   display->drm->debugfs_root,
>> > +			   &display->reset.count);
>>=20
>> I'm wondering about the names of the debugfs files. We've used the i915_
>> prefix so far, but it's obviously misleading nowadays. I've started
>> using intel_ in some places.
>>=20
>> I primarily worry about the potential clash with drm core debugfs files,
>> which leads to failures to create the file, and clash with other
>> drivers, where the files are created all right, but the contents differ
>> driver to driver.
>
> Fair point. I suppose I'll just stick an "intel_" prefix on it.

Ack.

> Another option could be use a subdirectory to separate the driver
> specific stuff from the core stuff, but dunno if we want to start
> down that path. And I guess we'd then need similar subdirectories
> inside the crtc/connector/etc. subdirectories.

All those could have a "struct dentry *driver_debugfs_entry" or similar
for the directory, and drivers would only be allowed to add stuff under
there. I.e. drivers wouldn't create the directory, the core would. That
would be pretty clean.

The problem is it takes a decade to migrate everything, and the time in
between is an unholy mess.

So maybe not?


BR,
Jani.


--=20
Jani Nikula, Intel
