Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIUlOB3sw2kAvAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 15:07:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D573266E5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 15:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE5D10E1EE;
	Wed, 25 Mar 2026 14:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rpc9lH3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9BB10E1EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 14:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774447643; x=1805983643;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=SZ4wKAeJUqnDQ2xM+kITY88aWgSGUcqT0jjqoOMxY7A=;
 b=Rpc9lH3zKlah7Pz9g1PhkV9rGcfBCZak3dt73k+mSr7AMVUE7w6gx5zM
 PiGrYXf5v+6ozOeUeRp4sIe2riGn1iImCHsUiGE07oPj3bl5AeWjNVc/8
 sq2zXuWtlEk2I94CSz3d97e1UdsVREnRk+rQW/Id47Dt+Bl5lZnteYX55
 DT8e+q1mozf6G2hB/A0AOR/8RlFdxpB757LqThToYhvs02h58/pGwpaFq
 RGBjx4yJZ1mN98SYjYDAUwaiqyMDV/9m4LrAqdVwh9YNBJv9quWoI2Fe3
 9U1B1RNpWSqTVSMRXAC79g1PFyQJ3cp6S1e1E8ZIABpmIN7vGz4A7ElR3 Q==;
X-CSE-ConnectionGUID: RFijgUE1TamFIIo86jsB/Q==
X-CSE-MsgGUID: I7MxwhyjSmWt6Doy7FFBPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86858222"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86858222"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 07:07:22 -0700
X-CSE-ConnectionGUID: 6AD7/YEiQSWKnrVO5pherw==
X-CSE-MsgGUID: v3MwKrCCRR+Ar8bNVsuoXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="229465845"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.44])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 07:07:21 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 16:07:17 +0200
Message-ID: <177444763778.66558.14341959485998155867@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:sosohero200@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 62D573266E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Yassine Mounir (2026-03-25 10:20:58)
> Hi Joonas,
> Thank you for the detailed feedback. I apologize for the double tag and t=
he
> direct submission to Greg; I'm still refining my workflow.

Ok, then to level set some expectations:

Have you actually confirmed that the code you have submitted compiles
and does fix the bug you reported?

Expectation is that you run the reproducer on top of drm-tip and see a
crash where you pick the dmesg/KASAN splat from, then you run drm-tip
with the patch you have prepared and there is no crash.

Regards, Joonas
